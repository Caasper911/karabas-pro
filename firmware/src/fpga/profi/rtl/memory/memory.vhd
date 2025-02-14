-------------------------------------------------------------------------------
-- Memory controller
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.conv_integer;
use IEEE.numeric_std.all;

entity memory is
port (
	CLK2X 		: in std_logic;
	CLKX	   	: in std_logic;
	CLK_CPU 		: in std_logic;

	A           : in std_logic_vector(15 downto 0); -- address bus
	D 				: in std_logic_vector(7 downto 0);
	N_MREQ		: in std_logic;
	N_IORQ 		: in std_logic;
	N_WR 			: in std_logic;
	N_RD 			: in std_logic;
	N_M1 			: in std_logic;
	
	RAM_6MB		: in std_logic := '0';
	
	loader_act 	: in std_logic := '0';
	loader_ram_a: in std_logic_vector(20 downto 0);
	loader_ram_do: in std_logic_vector(7 downto 0);
	loader_ram_wr: in std_logic := '0';
	
	DO 			: out std_logic_vector(7 downto 0);
	N_OE 			: out std_logic;
	
	MA 			: out std_logic_vector(20 downto 0);
	MD 			: inout std_logic_vector(7 downto 0) := "ZZZZZZZZ";
	N_MRD 		: out std_logic;
	N_MWR 		: out std_logic;
	
	N_CE1 		: out std_logic;
	N_CE2 		: out std_logic;
	N_CE3 		: out std_logic;
	
	RAM_BANK		: in std_logic_vector(2 downto 0);
	RAM_EXT 		: in std_logic_vector(4 downto 0);
	
	TRDOS 		: in std_logic;
	
	VA				: in std_logic_vector(13 downto 0);
	VID_PAGE 	: in std_logic := '0';
	VID_DO 		: out std_logic_vector(7 downto 0);
	
	-- sram as vram signals
	VBUS_MODE_O : out std_logic;
	VID_RD_O 	: out std_logic;
	
	DS80			: in std_logic := '0';
	CPM 			: in std_logic := '0';
	SCO			: in std_logic := '0';
	SCR 			: in std_logic := '0';
	WOROM 		: in std_logic := '0';
	
	ROM_BANK : in std_logic := '0';
	EXT_ROM_BANK : in std_logic_vector(1 downto 0) := "00";
	
	COUNT_BLOCK : in std_logic := '0'; -- paper = '0' and (not (chr_col_cnt(2) and hor_cnt(0)));
	CONTENDED   : out std_logic := '0';
	
	-- DIVMMC
	DIVMMC_EN	: in std_logic;
	AUTOMAP		: in std_logic;
	REG_E3		: in std_logic_vector(7 downto 0)
);
end memory;

architecture RTL of memory is

	signal buf_md		: std_logic_vector(7 downto 0) := "11111111";
	signal is_buf_wr	: std_logic := '0';

	signal is_rom : std_logic := '0';
	signal is_ram : std_logic := '0';
	
	signal rom_page : std_logic_vector(1 downto 0) := "00";
	signal ram_page : std_logic_vector(8 downto 0) := "000000000";

	signal vbus_req	: std_logic := '1';
	signal vbus_mode	: std_logic := '1';	
	signal vbus_rdy	: std_logic := '1';
	signal vbus_ack 	: std_logic := '1';
	signal vid_rd 		: std_logic;
	
	-- 2port vram signals
	signal vid_wr 		: std_logic;
	signal vid_scr 	: std_logic;
	signal vid_bank 	: std_logic := '0';
	signal vid_aw_bus	: std_logic_vector(14 downto 0);
	signal vid_ar_bus	: std_logic_vector(14 downto 0);
	
	signal mux : std_logic_vector(1 downto 0);
	
	signal block_reg : std_logic := '0';
	signal page_cont : std_logic := '0';
	
	-- DIVMMC
	signal is_romDIVMMC : std_logic;
	signal is_ramDIVMMC : std_logic;
	--signal tmp_divmmc_en : std_logic := '1';

begin
   
	vbus_req <= '0' when N_MREQ = '0' and ( N_WR = '0' or N_RD = '0' ) else '1';
	vbus_rdy <= '0' when (CLKX = '0' or CLK_CPU = '0')  else '1';

	VBUS_MODE_O <= vbus_mode;
	VID_RD_O <= vid_rd;
	
	N_MRD <= '1' when loader_act = '1' else 
			'0' when (is_rom = '1' and N_RD = '0') or
						(vbus_mode = '1' and vbus_rdy = '0') or 
						(vbus_mode = '0' and N_RD = '0' and N_MREQ = '0') 
			else '1';

	N_MWR <= not loader_ram_wr when loader_act = '1' else 
				'0' when vbus_mode = '0' and (is_ram = '1' or is_ramDIVMMC = '1') and N_WR = '0' and CLK_CPU = '0' 
				else '1';
				
	-- селектор чипов
	-- 3 чипа = 6МБ, из которых 2МБ под ПЗУ, остальные 4МБ под ОЗУ
	-- 1 чип = 2МБ, из которых 1МБ под ПЗУ, 1 МБ под ОЗУ
	process(RAM_6MB, loader_act, is_rom, vbus_mode, is_ram, ram_page)
	begin 
		-- в режиме 2МБ всегда активен только первый чип
		if (RAM_6MB = '0') then 
			N_CE1 <= '0';
			N_CE2 <= '1';
			N_CE3 <= '1';
		-- 6МБ в режиме работы загрузчика или когда идет обращение к ПЗУ - всегда активен третий чип
		-- 09.07.2023:OCH: DIVMMC work with chip #3
		elsif (loader_act = '1' or ((is_rom = '1' or is_romDIVMMC = '1' or is_ramDIVMMC = '1') and vbus_mode = '0')) then
			N_CE1 <= '1';
			N_CE2 <= '1';
			N_CE3 <= '0';
		-- 6МБ в режиме чтения видеоконтроллером всегда активен первый чип
		elsif (vbus_mode = '1') then 
			N_CE1 <= '0';
			N_CE2 <= '1';
			N_CE3 <= '1';
		-- 6МБ в режиме доступа к памяти идет выбор первого или второго чипа
		elsif (vbus_mode = '0' and is_ram = '1') then
			N_CE1 <= ram_page(7);
			N_CE2 <= not ram_page(7);
			N_CE3 <= '1';
		end if;
		
	end process;					

	is_buf_wr <= '1' when vbus_mode = '0' and CLK_CPU = '0' else '0';	
	DO <= buf_md;	
	VID_DO <= MD;
	
	MA(13 downto 0) <= 
		loader_ram_a(13 downto 0) when loader_act = '1' else -- loader ram
--- 08.07.2023:OCH: set DIVMMC low adress
		REG_E3(0) & A(12 downto 0) when vbus_mode = '0' and is_ramDIVMMC = '1' else -- DIVMMC ram
		A(13 downto 0) when vbus_mode = '0' else -- spectrum ram or DIVMMC rom
		VA; -- video ram (read by video controller)

	MA(20 downto 14) <= 
		loader_ram_a(20 downto 14) when loader_act = '1' else -- loader ram
--- 08.07.2023:OCH: set DIVMMC high adress
		"1010000" when is_romDIVMMC = '1' and vbus_mode = '0' else -- DIVMMC rom
		"11" & REG_E3(5 downto 1) when is_ramDIVMMC = '1' and vbus_mode = '0' else -- DIVMMC ram 512 kB from #X180000 SRAM
---
		"100" & EXT_ROM_BANK(1 downto 0) & rom_page(1 downto 0) when is_rom = '1' and vbus_mode = '0' else -- rom from sram high bank 
		ram_page(6 downto 0) when vbus_mode = '0' else 
		"00001" & VID_PAGE & '1' when vbus_mode = '1' and DS80 = '0' else -- spectrum screen
		"00001" & VID_PAGE & '0' when vbus_mode = '1' and DS80 = '1' and vid_rd = '0' else -- profi bitmap 
		"01110" & VID_PAGE & '0' when vbus_mode = '1' and DS80 = '1' and vid_rd = '1' else -- profi attributes
		"0000000";
	
	MD(7 downto 0) <= 
		loader_ram_do when loader_act = '1' else -- loader DO
		D(7 downto 0) when vbus_mode = '0' and ((is_ram = '1' or is_ramDIVMMC = '1' or (N_IORQ = '0' and N_M1 = '1')) and N_WR = '0') else  -- OCH: why (N_IORQ = '0' and N_M1 = '1') this used in memory controller? and in write mode
		(others => 'Z');
		
	-- fill memory buf
	process(is_buf_wr)
	begin 
		if (is_buf_wr'event and is_buf_wr = '0') then  -- high to low transition to lattch the MD into BUF
			buf_md(7 downto 0) <= MD(7 downto 0);
		end if;
	end process;	
	
	process( CLK2X, CLKX, vbus_mode, vbus_req, vbus_ack )
	begin
		-- lower edge of 14 mhz clock
		if CLK2X'event and CLK2X = '1' then 
			if (CLKX = '0') then
				if vbus_req = '0' and vbus_ack = '1' then
					vbus_mode <= '0';
				else
					vbus_mode <= '1';
					vid_rd <= not vid_rd;
				end if;	
				vbus_ack <= vbus_req;
			end if;		
		end if;		
	end process;

		---08.07.2023:OCH: DIVMMC signaling when we must map rom or ram of DIVMMC interface to Z80 adress space
	---maybe it not necessary A(15 downto 13) ? Only check for A(13)?
	is_romDIVMMC <= '1' when N_MREQ = '0' and (AUTOMAP ='1' or REG_E3(7) = '1') and A(15 downto 13) = "000" else '0';
	is_ramDIVMMC <= '1' when N_MREQ = '0' and (AUTOMAP ='1' or REG_E3(7) = '1') and A(15 downto 13) = "001" else '0';
	
	is_rom <= '1' when N_MREQ = '0' and A(15 downto 14)  = "00"  and WOROM = '0' else '0';
	is_ram <= '1' when N_MREQ = '0' and is_rom = '0' else '0';	
	
	-- 00 - bank 0, CPM
	-- 01 - bank 1, TRDOS
	-- 10 - bank 2, Basic-128
	-- 11 - bank 3, Basic-48

	rom_page <= (not(TRDOS)) & ROM_BANK when DIVMMC_EN = '0' else "11";
			
	N_OE <= '0' when (is_ram = '1' or is_rom = '1') and N_RD = '0' else '1';
		
	mux <= A(15 downto 14);
		
	process (mux, RAM_EXT, RAM_BANK, SCR, SCO, RAM_6MB)
	begin
		case mux is
			when "00" => ram_page <= "000000000";                 -- Seg0 ROM 0000-3FFF or Seg0 RAM 0000-3FFF				
			when "01" => if SCO='0' then 
								ram_page <= "000000101";
							 else 
								if RAM_6MB = '1' then 
									ram_page <= "0"   & RAM_EXT(4 downto 0) & RAM_BANK(2 downto 0); 
								else 
									ram_page <= "000" & RAM_EXT(2 downto 0) & RAM_BANK(2 downto 0); 
								end if;
							 end if;	                               -- Seg1 RAM 4000-7FFF	
			when "10" => if SCR='0' then 
								ram_page <= "000000010"; 	
							 else 
								ram_page <= "000000110"; 
							 end if;                                -- Seg2 RAM 8000-BFFF
			when "11" => if SCO='0' then 
								if RAM_6MB = '1' then 
									ram_page <= "0"   & RAM_EXT(4 downto 0) & RAM_BANK(2 downto 0);	
								else 
									ram_page <= "000" & RAM_EXT(2 downto 0) & RAM_BANK(2 downto 0);	
								end if;
							 else 
								ram_page <= "000000111";               -- Seg3 RAM C000-FFFF	
							 end if;
			when others => null;
		end case;
	end process;
	
	process( clk_cpu )
	begin
		if clk_cpu'event and clk_cpu = '1' then
			if N_MREQ = '0' or (A(0) = '0' and N_IORQ = '0')then
				block_reg <='0';
			else
				block_reg <= '1';
			end if;
		end if;
	end process;
	
	page_cont <= '1' when (A(0) = '0' and N_IORQ = '0') or mux="01" else '0';
	
	process (clk2x)
	begin 
		if rising_edge(clk2x) then 
			if (page_cont = '1' and block_reg = '1' and count_block = '1' and DS80 = '0') then 
				contended <= '1';
			else 
				contended <= '0';
			end if;
		end if;
	end process;
			
end RTL;

