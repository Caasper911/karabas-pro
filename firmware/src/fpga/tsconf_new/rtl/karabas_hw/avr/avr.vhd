-------------------------------------------------------------------------------
-- AVR SPI comm module
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.conv_integer;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity avr is
	port
	(
	 CLK			 : in std_logic;
	 N_RESET 	 : in std_logic := '1';
    A           : in std_logic_vector(15 downto 8);     -- address bus for kbd
    KB          : out std_logic_vector(5 downto 0) := "111111";     -- data bus for kbd + extended bit (b6)
    AVR_MOSI    : in std_logic;
    AVR_MISO    : out std_logic := 'Z';
    AVR_SCK     : in std_logic;
	 AVR_SS 		 : in std_logic;
	 
	 MS_X 	 	: out std_logic_vector(7 downto 0) := "00000000";
	 MS_Y 	 	: out std_logic_vector(7 downto 0) := "00000000";
	 MS_BTNS 	 	: out std_logic_vector(2 downto 0) := "000";
	 MS_Z 		: out std_logic_vector(3 downto 0) := "0000";
	 MS_PRESET  : out std_logic := '0';
	 MS_EVENT 	: out std_logic;
	 MS_DELTA_X : out signed(7 downto 0) := "00000000";
	 MS_DELTA_Y : out signed(7 downto 0) := "00000000";
	 
	 RTC_A 		: in std_logic_vector(7 downto 0);
	 RTC_DI 		: in std_logic_vector(7 downto 0);
	 RTC_DO 		: out std_logic_vector(7 downto 0);
	 RTC_CS 		: in std_logic := '0';
	 RTC_WR_N 	: in std_logic := '1';
	 
	 LOADER_DONE : in std_logic := '0';
	 
	 LED1			: in std_logic := '0';
	 LED2 		: in std_logic := '0';
	 LED1_OWR	: in std_logic := '0';
	 LED2_OWR 	: in std_logic := '0';
	 
	 CFG 			: in std_logic_vector(7 downto 0);
	 
	 SOFT_SW 	: out std_logic_vector(1 to 10) := (others => '0'); 
																							-- 1   = video. 1=rgb 15kHz, 0=vga 30kHz
 																							-- 2   = vsync. 1=60hz, 0=50Hz
																							-- 3,4 = rombank. 00, 01, 10, 11 
																							-- 5   = turbofdc. 1=on, 2=off
																							-- 6   = covox. 1=on, 2=off
																							-- 7,9 = stereo mode. 00=acb, 01=abc, 10,11=mono
																							-- 8   = ssg. 1=ay, 0=yamaha
																							-- 10  = swap a-b. 1=on, 0=off
	 
	 KB_MODE 	: out std_logic := '0';
	 
	 KB_SCANCODE: buffer std_logic_vector(9 downto 0);
	 
	 RESET		: out std_logic := '0';
	 TURBO		: out std_logic_vector(1 downto 0) := "00";
	 MAGICK		: out std_logic := '0';
	 WAIT_CPU 	: out std_logic := '0';
	 JOY_TYPE 	: out std_logic := '0';
	 OSD_OVERLAY: out std_logic := '0';
	 OSD_POPUP 	: out std_logic := '0';
	 OSD_COMMAND: out std_logic_vector(15 downto 0);
	 MAX_TURBO  : in std_logic_vector(1 downto 0) := "11";
	 SCREEN_MODE : out std_logic_vector(1 downto 0) := "00"; -- 00 - pentagon, 01 - 128 classic, 10, 11 - reserved yet
	 
	 LOADED 		: buffer std_logic := '0';
	 	 
	 JOY			: out std_logic_vector(7 downto 0) := "00000000"
	 
	);
    end avr;
architecture RTL of avr is

	-- spi commands
	constant CMD_KBD			: std_logic_vector(7 downto 0) := x"01";
	constant CMD_MOUSE 		: std_logic_vector(7 downto 0) := x"0A";
	constant CMD_JOY 			: std_logic_vector(7 downto 0) := x"0D";
	constant CMD_LED 			: std_logic_vector(7 downto 0) := x"0E";
	constant CMD_OSD 			: std_logic_vector(7 downto 0) := x"20";
	constant CMD_BUILD		: std_logic_vector(7 downto 0) := x"F0";
	constant CMD_RTC 			: std_logic_vector(7 downto 0) := x"FA";
	constant CMD_INIT 		: std_logic_vector(7 downto 0) := x"FD";
	constant CMD_NOPE			: std_logic_vector(7 downto 0) := x"FF";

	 -- keyboard state
	 signal kb_data_tmp 		: std_logic_vector(39 downto 0) := (others => '0');
	 signal kb_data 			: std_logic_vector(40 downto 0) := (others => '0'); -- 40 keys + bit6
	 signal ms_flag 			: std_logic := '0';
	 
	 -- mouse
	 signal mouse_x 			: signed(7 downto 0) := "00000000";
	 signal mouse_y 			: signed(7 downto 0) := "00000000";
	 signal mouse_z 			: signed(3 downto 0) := "0000";
	 signal buttons   		: std_logic_vector(2 downto 0) := "000";
	 signal newPacket 		: std_logic := '0';

	 signal currentX 			: unsigned(7 downto 0);
	 signal currentY 			: unsigned(7 downto 0);
	 signal cursorX 			: signed(7 downto 0) := X"7F";
	 signal cursorY 			: signed(7 downto 0) := X"7F";
	 signal deltaX				: signed(8 downto 0);
	 signal deltaY				: signed(8 downto 0);
	 signal deltaZ				: signed(3 downto 0);
	 signal trigger 			: std_logic := '0';
	 
	 -- spi
	 signal spi_do_valid 	: std_logic := '0';
	 signal spi_di 			: std_logic_vector(23 downto 0);
	 signal spi_do 			: std_logic_vector(23 downto 0);
	 signal spi_di_req 		: std_logic;
	 signal spi_miso 		 	: std_logic;
	 
	 -- rtc 2-port ram signals
	 signal rtcw_di 			: std_logic_vector(7 downto 0);
	 signal rtcw_a 			: std_logic_vector(7 downto 0);
	 signal rtcw_wr 			: std_logic := '0';
	 signal rtcr_do 			: std_logic_vector(7 downto 0);

	-- rtc data from atmega
	 signal rtcr_a 			: std_logic_vector(7 downto 0);
	 signal rtcr_d 			: std_logic_vector(7 downto 0);
	 signal last_rtcr_a 		: std_logic_vector(7 downto 0);
	 signal last_rtcr_d 		: std_logic_vector(7 downto 0);
	 
	-- spi fifo 
	signal queue_di			: std_logic_vector(23 downto 0);
	signal queue_wr_req		: std_logic := '0';
	signal queue_wr_full		: std_logic;
		
	signal queue_rd_req		: std_logic := '0';
	signal queue_do			: std_logic_vector(23 downto 0);
	signal queue_rd_empty   : std_logic;
	
	signal queue_wr_size    : std_logic_vector(8 downto 0) := (others => '0');
	signal queue_rd_size 	: std_logic_vector(8 downto 0) := (others => '0');
	
	signal scancode_tmp		: std_logic_vector(7 downto 0) := (others => '0');
	signal is_up 				: std_logic := '0';
	
	signal rtc_scancode 		: std_logic_vector(7 downto 0) := (others => '1');
	
	--state machine for queue writes
	type qmachine IS(
		wait_loader_done, wait_init, init_ack, 
		idle, 
		build_req, build_data, build_ack, 
		rtc_wr_req, rtc_wr_ack,
		led_req, led_ack);
	signal qstate : qmachine := wait_loader_done;
	
	signal tx_build 			: std_logic := '0';
	signal tx_build_pos 		: std_logic_vector(2 downto 0) := "000";
	signal tx_build_data		: std_logic_vector(7 downto 0) := "00000000";
	signal build_read_addr 	: std_logic_vector(2 downto 0) := "000";
	signal build_byte			: std_logic_vector(7 downto 0) := "00000000";
	
	signal fpga_init_req 	: std_logic := '0';
	signal avr_ready 			: std_logic := '0';
		 
begin
	
	--------------------------------------------------------------------------
	-- AVR SPI communication
	--------------------------------------------------------------------------		  
	
	U_SPI: entity work.spi_slave
	generic map(
			N             => 24 -- 3 bytes (cmd + addr + data)       
	 )
	port map(
		  clk_i          => CLK,
		  spi_sck_i      => AVR_SCK,
		  spi_ssel_i     => AVR_SS,
		  spi_mosi_i     => AVR_MOSI,
		  spi_miso_o     => spi_miso,

		  di_req_o       => spi_di_req,
		  di_i           => spi_di,
		  wren_i         => not queue_rd_empty,
		  
		  do_valid_o     => spi_do_valid,
		  do_o           => spi_do,

		  do_transfer_o  => open,
		  wren_o         => open,
		  wren_ack_o     => open,
		  rx_bit_reg_o   => open,
		  state_dbg_o    => open
	);

	spi_di <= queue_do when queue_rd_empty = '0' else x"FFFFFF";
	queue_rd_req <= spi_di_req;
	AVR_MISO	<= spi_miso when AVR_SS = '0' else 'Z';

	process (CLK, spi_do_valid, spi_do)
	begin
		if (rising_edge(CLK)) then
			if spi_do_valid = '1' then
				fpga_init_req <= '0';
				tx_build <= '0';
				case spi_do(23 downto 16) is 
					-- keyboard
					when CMD_KBD => 
						case spi_do(15 downto 8) is 
							when X"01" => kb_data_tmp(7 downto 0) <= spi_do (7 downto 0);
							when X"02" => kb_data_tmp(15 downto 8) <= spi_do (7 downto 0);
							when X"03" => kb_data_tmp(23 downto 16) <= spi_do (7 downto 0);
							when X"04" => kb_data_tmp(31 downto 24) <= spi_do (7 downto 0);
							when X"05" => kb_data_tmp(39 downto 32) <= spi_do (7 downto 0);
							-- misc signals
							when X"06" => kb_data(40 downto 0) <= spi_do (0) & kb_data_tmp(39 downto 0); -- kbd 5th bit + the rest 
											  -- misc signals
											  RESET <= spi_do(1); -- reset signal
											  TURBO(0) <= spi_do(2); -- turbo signal
											  MAGICK <= spi_do(3); -- magick signal 
											  is_up <= spi_do(4); -- keyboard key is up
											  WAIT_CPU <= spi_do(5); -- cpu wait signal 
											  SOFT_SW(1) <= spi_do(6); -- soft switch 1
											  SOFT_SW(2) <= spi_do(7); -- soft switch 2
							-- keyboard scancode mixed vector
							when X"07" => 
											  scancode_tmp <= spi_do(7 downto 0);
							when X"08" => 
											  KB_SCANCODE <= is_up & spi_do(0) & scancode_tmp;
											  SOFT_SW(3) <= spi_do(1); -- soft switch 3
											  SOFT_SW(4) <= spi_do(2); -- soft switch 4
											  SOFT_SW(5) <= spi_do(3); -- soft switch 5
											  KB_MODE <= spi_do(4); -- profi / standard kbd layout
											  SOFT_SW(6) <= spi_do(5); -- soft switch 6
											  SOFT_SW(7) <= spi_do(6); -- soft switch 7
											  SOFT_SW(8) <= spi_do(7); -- soft switch 8
							when X"09" => 
											  SOFT_SW(9) <= spi_do(0);
											  SOFT_SW(10) <= spi_do(1);
											  JOY_TYPE <= spi_do(2);
											  OSD_OVERLAY <= spi_do(3);
											  LOADED <= '1'; -- loaded
											  TURBO(1) <= spi_do(4);
											  SCREEN_MODE(1 downto 0) <= spi_do(6 downto 5);
											  OSD_POPUP <= spi_do(7);
							when others => null;
						end case;
					-- mouse data
					when CMD_MOUSE => 
						case spi_do(15 downto 8) is
							-- X
							when X"0A" => mouse_x(7 downto 0) <= signed(spi_do(7 downto 0));
							-- Y
							when X"0B" => mouse_y(7 downto 0) <= signed(spi_do(7 downto 0));
							-- Z
							when X"0C" => mouse_z(3 downto 0) <= signed(spi_do(3 downto 0)); buttons(2 downto 0) <= spi_do(6 downto 4); newPacket <= spi_do(7);	
							when others => null;
						end case;
					-- joy data
					when CMD_JOY => 
									  joy(0) <= spi_do(5); -- right 
									  joy(1) <= spi_do(4); -- left 
									  joy(2) <= spi_do(3); -- down 
									  joy(3) <= spi_do(2); -- up
									  joy(4) <= spi_do(0); -- fire
									  joy(5) <= spi_do(1); -- fire2
									  joy(6) <= spi_do(6); -- A
									  joy(7) <= spi_do(7); -- B
					-- led write
					when CMD_LED => null;
					-- osd commands					
					when CMD_OSD => OSD_COMMAND <= spi_do(15 downto 0);
							
					-- build num request
					when CMD_BUILD => 
						tx_build <= '1';
						tx_build_pos <= spi_do(10 downto 8);
						
					-- rtc 
					when CMD_RTC =>						
						rtcr_a <= spi_do(15 downto 8);
						rtcr_d <= spi_do(7 downto 0);

					-- init
					when CMD_INIT => 
						fpga_init_req <= '1';
						avr_ready <= '1';
						
					-- nope
					when CMD_NOPE =>
						avr_ready <= '1';
					
					when others => null;
				end case;
			end if;
		end if;
	end process;		  
		      
	--------------------------------------------------------------------------
	-- Keyboard
	--------------------------------------------------------------------------
				
	process( kb_data, A)
	begin

	--    -- if an address line is low then set the databus to the bit value for that column
	--    -- so if multiple address lines are low
	--    -- the up/down status of MULTIPLE 'keybits' will be passeds

			--if (rising_edge(CLK)) then
					KB(0) <=	not(( kb_data(0)  and not(A(8)  ) ) 
								or 	( kb_data(1)  and not(A(9)  ) ) 
								or 	( kb_data(2) and not(A(10) ) ) 
								or 	( kb_data(3) and not(A(11) ) ) 
								or 	( kb_data(4) and not(A(12) ) ) 
								or 	( kb_data(5) and not(A(13) ) ) 
								or 	( kb_data(6) and not(A(14) ) ) 
								or 	( kb_data(7) and not(A(15) ) )  );

					KB(1) <=	not( ( kb_data(8)  and not(A(8) ) ) 
								or   ( kb_data(9)  and not(A(9) ) ) 
								or   ( kb_data(10) and not(A(10)) ) 
								or   ( kb_data(11) and not(A(11)) ) 
								or   ( kb_data(12) and not(A(12)) ) 
								or   ( kb_data(13) and not(A(13)) ) 
								or   ( kb_data(14) and not(A(14)) ) 
								or   ( kb_data(15) and not(A(15)) ) );

					KB(2) <=		not( ( kb_data(16) and not( A(8)) ) 
								or   ( kb_data(17) and not( A(9)) ) 
								or   ( kb_data(18) and not(A(10)) ) 
								or   ( kb_data(19) and not(A(11)) ) 
								or   ( kb_data(20) and not(A(12)) ) 
								or   ( kb_data(21) and not(A(13)) ) 
								or   ( kb_data(22) and not(A(14)) ) 
								or   ( kb_data(23) and not(A(15)) ) );

					KB(3) <=		not( ( kb_data(24) and not( A(8)) ) 
								or   ( kb_data(25) and not( A(9)) ) 
								or   ( kb_data(26) and not(A(10)) ) 
								or   ( kb_data(27) and not(A(11)) ) 
								or   ( kb_data(28) and not(A(12)) ) 
								or   ( kb_data(29) and not(A(13)) ) 
								or   ( kb_data(30) and not(A(14)) ) 
								or   ( kb_data(31) and not(A(15)) ) );

					KB(4) <=		not( ( kb_data(32) and not( A(8)) ) 
								or   ( kb_data(33) and not( A(9)) ) 
								or   ( kb_data(34) and not(A(10)) ) 
								or   ( kb_data(35) and not(A(11)) ) 
								or   ( kb_data(36) and not(A(12)) ) 
								or   ( kb_data(37) and not(A(13)) ) 
								or   ( kb_data(38) and not(A(14)) ) 
								or   ( kb_data(39) and not(A(15)) ) );

					KB(5) <= not(kb_data(40));
			--end if;

	end process;

	--------------------------------------------------------------------------
	-- Mouse 
	--------------------------------------------------------------------------
	
	process (CLK, kb_data) 
	begin
			if (rising_edge(CLK)) then
				trigger <= '0';
				-- update mouse only on ms flag changed
				if (ms_flag /= newPacket) then 
					deltaX(7 downto 0) <= mouse_x(7 downto 0);
					deltaY(7 downto 0) <= mouse_y(7 downto 0);
					deltaZ(3 downto 0) <= mouse_z(3 downto 0);
					MS_BTNS(2) <= buttons(2);
					MS_BTNS(1) <= buttons(1);
					MS_BTNS(0) <= buttons(0);
					MS_DELTA_X <= mouse_x;
					MS_DELTA_Y <= mouse_y; 
					MS_PRESET <= '1';
					ms_flag <= newPacket;
					MS_EVENT <= newPacket;
					trigger <= '1';
				end if;
			end if;
	end process;

	process (CLK)
		variable newX : signed(7 downto 0);
		variable newY : signed(7 downto 0);
	begin
		if rising_edge (CLK) then

			newX := cursorX + deltaX(7 downto 0);
			newY := cursorY + deltaY(7 downto 0);

			if trigger = '1' then
				cursorX <= newX;
				cursorY <= newY;
			end if;
		end if;
	end process;
	
	MS_X 		<= std_logic_vector(cursorX);
	MS_Y 		<= std_logic_vector(cursorY);
	MS_Z		<= std_logic_vector(deltaZ);	

	--------------------------------------------------------------------------
	-- mc146818a emulation	
	-- http://web.stanford.edu/class/cs140/projects/pintos/specs/mc146818a.pdf
	--------------------------------------------------------------------------
	-- 
	-- 000000 = 00 = Seconds       bin/bcd (0-59)
	-- 000001 = 01 = Seconds Alarm bin/bcd (0-59)
	-- 000010 = 02 = Minutes       bin/bcd (0-59)
	-- 000011 = 03 = Minutes Alarm bin/bcd (0-59)
	-- 000100 = 04 = Hours         bin/bcd (1-12 or 0-23)
   -- 000101 = 05 = Hours Alarm   bin/bcd (1-12 or 0-23)
   -- 000110 = 06 = Day of Week   bin/bcd (1-7, sunday = 1)
   -- 000111 = 07 = Date of Month bin/bcd (1-31)
   -- 001000 = 08 = Month         bin/bcd (1-12)
	-- 001001 = 09 = Year          bin/bcd (0-99)
	-- 001010 = 0A = Register A RW 7-UIP, 6-DV2, 5-DV1, 4-DV0, 3-RS3, 2-RS2, 1-RS1, 0-RS0. (uip = update in progress, dv-dividers, rs-rate selection)
	-- 001011 = 0B = Register B RW 7-SET, 6-PIE, 5-AIE, 4-UIE, 3-SQWE, 2-DM, 1-24/12. 0-DSE (SET=update mode,PIE=int en,AIE=alarm int en,UIE=update int en, SQWE, DM 1=bcd, 0=bin, 24/12 1=24,0=12, DSE=daylight saving mode 1/0)
	-- 001100 = 0C = Register C RO 7-IRFQ, 6-PF, 5-AF, 4-UF, 0000
	-- 001101 = 0D = Register D RO 7-VRT, 0000000 (VRT = valid ram and time)
	-- 001110 = 0E = Register E - memory, 50 bytes
	-- ...
	-- 011111 = 3F = Register 3F
	
	-- memory for rtc registers
	URTC: entity work.rtc 
	port map (
		wrclock	 => CLK,
		data		 => rtcw_di,
		wraddress => rtcw_a,
		wren 		 => rtcw_wr,
		
		rdclock 	 => CLK,
		rdaddress => RTC_A,
		q			 => rtcr_do
	);
	RTC_DO <= rtc_scancode when RTC_A = x"F0" else 
				 "10000000" when RTC_A = x"0D" else 
				 rtcr_do;
	
	-- fifo for write commands to send them on avr side 
	UFIFO: entity work.queue 
	port map (
		data 		=> queue_di,
		wrreq 	=> queue_wr_req,
		wrclk 	=> CLK,
		wrfull 	=> queue_wr_full,
		wrusedw	=> queue_wr_size,
		
		rdreq 	=> queue_rd_req,
		rdclk 	=> CLK,
		q 			=> queue_do,
		rdempty 	=> queue_rd_empty,
		rdusedw 	=> queue_rd_size
	);
	
	-- messages rom (to get a build num)
	U_MESSAGES: entity work.message_rom 
	port map (
		address 		=> build_read_addr, -- build version starts from 504
		clock   		=> CLK,
		q       		=> build_byte
	);	
		
	-- fifo handling / queue commands to avr side
	process(CLK, N_RESET, LOADER_DONE, CFG, RTC_WR_N, RTC_CS, queue_wr_full, RTC_A, RTC_DI, LED1, LED2, LED1_OWR, LED2_OWR, queue_wr_req, queue_rd_empty)
	begin
		if N_RESET = '0' then 
			queue_wr_req <= '0';
			qstate <= wait_loader_done;
			
		elsif CLK'event and CLK = '1' then
		
			queue_wr_req <= '0';
		
			case qstate is

				-- waiting for loader done
				when wait_loader_done =>
					queue_wr_req <= '0';
					if LOADER_DONE = '1' then 
						qstate <= idle;
					end if;
				
				-- waiting for init request
				when wait_init => 
					queue_wr_req <= '0';
					if fpga_init_req = '1' then 
						qstate <= init_ack;
					end if;
					
				-- response to init request
				when init_ack => 
					queue_wr_req <= '1';
					queue_di <= CMD_INIT & x"00" & max_turbo & CFG(5 downto 0);
					qstate <= idle;
					
				-- waiting for other events from avr
				when idle => 
					queue_wr_req <= '0';
					-- req for send FPGA build num
					if (fpga_init_req = '1') then 
						qstate <= init_ack;
					elsif (tx_build = '1') then 
						qstate <= build_req;
					-- req to write RTC
					elsif (avr_ready = '1' and RTC_WR_N = '0' AND RTC_CS = '1') then 
						qstate <= rtc_wr_req;
					-- req to send LED state (only if fifo is less then half full)
					elsif (queue_wr_full = '0' and queue_wr_size(8) = '0') then 
						qstate <= led_req;
					-- idle
					else 
						qstate <= idle;
					end if;
	
				-- requesting build byte from rom
				when build_req =>
					queue_wr_req <= '0';	
					build_read_addr <= tx_build_pos;
					qstate <= build_data;
					
				-- read byte from ROM, send it via queue 
				when build_data => 
					queue_wr_req <= '1';	
					queue_di <= CMD_BUILD & "00000" & build_read_addr & build_byte;
					qstate <= build_ack;
				
				-- queue wr complete, going to idle state
				when build_ack => 
					queue_wr_req <= '0';	
					qstate <= idle;
					
				-- RTC write request (sending a bank, then address + data)
				when rtc_wr_req => 
					queue_wr_req <= '1';
					queue_di <= CMD_RTC & RTC_A & RTC_DI;
					qstate <= rtc_wr_ack;
				
				-- RTC write request end
				when rtc_wr_ack => 
					queue_wr_req <= '0';
					qstate <= idle;
					
				-- LED write request
				when led_req => 
					queue_wr_req <= '1';
					queue_di <= CMD_LED & x"00" & "0000" & LED2_OWR & LED1_OWR & LED2 & LED1;
					qstate <= led_ack;
					
				-- LED write request end
				when led_ack =>
					queue_wr_req <= '0';
					qstate <= idle;
					
				when others => 
					qstate <= idle;
	
			end case;
						
		end if;
	end process;
	
	-- write RTC registers into ram from host / atmega
	process (N_RESET, CLK, RTC_WR_N, RTC_CS, RTC_A, RTC_DI, rtcr_a, last_rtcr_a, rtcr_d, last_rtcr_d) 
	begin 
		if N_RESET = '0' then 
			rtcw_wr <= '0';
		elsif rising_edge(CLK) then
			rtcw_wr <= '0';
			if avr_ready = '1' and RTC_WR_N = '0' AND RTC_CS = '1' then
				-- rtc mem write by host
				rtcw_wr <= '1';
				rtcw_a <= RTC_A;
				rtcw_di <= RTC_DI;
			else 
				-- rtc mem write by avr
				rtcw_wr <= '1';
				rtcw_a <= rtcr_a;
				rtcw_di <= rtcr_d;
			end if;
		end if;
	end process;
	
	-- rtc scancode 
	process (CLK, KB_SCANCODE, rtc_scancode)
	begin 
		if (rising_edge(CLK)) then 
			if (kb_scancode(9) = '1') then 
				rtc_scancode <= x"FF";
			else 
				-- map kb_scancode(7 downto 0) to ps/2 scancodes
				case (kb_scancode(7 downto 0)) is
					when x"01" => rtc_scancode <= x"77"; -- num lock
					when x"02" => rtc_scancode <= x"7e"; -- scroll lock
					when x"03" => rtc_scancode <= x"58"; -- caps lock
					when x"04" => rtc_scancode <= x"7C"; -- PRTSCR
					when x"05" => rtc_scancode <= x"FF"; -- Pause					
					when x"06" => rtc_scancode <= x"12"; -- L shift
					when x"07" => rtc_scancode <= x"59"; -- R shift
					when x"08" => rtc_scancode <= x"14"; -- L ctrl
					when x"09" => rtc_scancode <= x"14"; -- R ctrl
					when x"0A" => rtc_scancode <= x"11"; -- L alt
					when x"0B" => rtc_scancode <= x"11"; -- R alt					
					when x"0C" => rtc_scancode <= x"1F"; -- L WIN
					when x"0D" => rtc_scancode <= x"27"; -- R WIN
					when x"0E" => rtc_scancode <= x"2F"; -- Menu					
					when x"0F" => rtc_scancode <= x"7E"; -- Break = Ctrl + Pause
					
					when x"10" => rtc_scancode <= x"84"; -- sysrq (alt+prtscr)
					when x"11" => rtc_scancode <= x"6C"; -- Home
					when x"12" => rtc_scancode <= x"69"; -- End
					when x"13" => rtc_scancode <= x"7D"; -- PgUp
					when x"14" => rtc_scancode <= x"0A"; -- PgDown
					when x"15" => rtc_scancode <= x"6B"; -- Left Arrow
					when x"16" => rtc_scancode <= x"74"; -- Right Arrow
					when x"17" => rtc_scancode <= x"75"; -- Up Arrow
					when x"18" => rtc_scancode <= x"72"; -- Down Arrow					
					when x"19" => rtc_scancode <= x"70"; -- Insert
					when x"1A" => rtc_scancode <= x"71"; -- Delete
					when x"1B" => rtc_scancode <= x"76"; -- esc
					when x"1C" => rtc_scancode <= x"66"; -- Backspace
					when x"1D" => rtc_scancode <= x"0D"; -- tab
					when x"1E" => rtc_scancode <= x"5A"; -- enter
					when x"1F" => rtc_scancode <= x"28"; -- space

					when x"20" => rtc_scancode <= x"70"; -- KP0
					when x"21" => rtc_scancode <= x"69"; -- KP1
					when x"22" => rtc_scancode <= x"72"; -- KP2
					when x"23" => rtc_scancode <= x"7A"; -- KP3
					when x"24" => rtc_scancode <= x"6B"; -- KP4
					when x"25" => rtc_scancode <= x"73"; -- KP5
					when x"26" => rtc_scancode <= x"74"; -- KP6
					when x"27" => rtc_scancode <= x"6C"; -- KP7
					when x"28" => rtc_scancode <= x"75"; -- KP8
					when x"29" => rtc_scancode <= x"7D"; -- KP9
					when x"2A" => rtc_scancode <= x"71"; -- KP dot
					when x"2B" => rtc_scancode <= x"5A"; -- KP Enter					
					when x"2C" => rtc_scancode <= x"79"; -- KP +
					when x"2D" => rtc_scancode <= x"7B"; -- KP -
					when x"2E" => rtc_scancode <= x"7C"; -- KP *
					when x"2F" => rtc_scancode <= x"4A"; -- KP Div		

					when x"30" => rtc_scancode <= x"45"; -- 0
					when x"31" => rtc_scancode <= x"16"; -- 1
					when x"32" => rtc_scancode <= x"1E"; -- 2
					when x"33" => rtc_scancode <= x"26"; -- 3
					when x"34" => rtc_scancode <= x"25"; -- 4
					when x"35" => rtc_scancode <= x"2E"; -- 5
					when x"36" => rtc_scancode <= x"36"; -- 6
					when x"37" => rtc_scancode <= x"3D"; -- 7
					when x"38" => rtc_scancode <= x"3E"; -- 8
					when x"39" => rtc_scancode <= x"46"; -- 9
					when x"3A" => rtc_scancode <= x"52"; -- apos
					when x"3B" => rtc_scancode <= x"41"; -- comma
					when x"3C" => rtc_scancode <= x"4E"; -- minus
					when x"3D" => rtc_scancode <= x"49"; -- dot
					when x"3E" => rtc_scancode <= x"4A"; -- div (slash)
					when x"3F" => rtc_scancode <= x"0F"; -- KP =

					when x"40" => rtc_scancode <= x"0E"; -- single quote or back apostrophe
					when x"41" => rtc_scancode <= x"1C"; -- A
					when x"42" => rtc_scancode <= x"32"; -- B
					when x"43" => rtc_scancode <= x"21"; -- C
					when x"44" => rtc_scancode <= x"23"; -- D
					when x"45" => rtc_scancode <= x"24"; -- E
					when x"46" => rtc_scancode <= x"2B"; -- F
					when x"47" => rtc_scancode <= x"34"; -- G
					when x"48" => rtc_scancode <= x"33"; -- H
					when x"49" => rtc_scancode <= x"43"; -- I
					when x"4A" => rtc_scancode <= x"3B"; -- J
					when x"4B" => rtc_scancode <= x"42"; -- K
					when x"4C" => rtc_scancode <= x"4B"; -- L
					when x"4D" => rtc_scancode <= x"3A"; -- M
					when x"4E" => rtc_scancode <= x"31"; -- N
					when x"4F" => rtc_scancode <= x"44"; -- O
					
					when x"50" => rtc_scancode <= x"4D"; -- P
					when x"51" => rtc_scancode <= x"15"; -- Q
					when x"52" => rtc_scancode <= x"2D"; -- R
					when x"53" => rtc_scancode <= x"1B"; -- S
					when x"54" => rtc_scancode <= x"2C"; -- T
					when x"55" => rtc_scancode <= x"3C"; -- U
					when x"56" => rtc_scancode <= x"2A"; -- V
					when x"57" => rtc_scancode <= x"1D"; -- W
					when x"58" => rtc_scancode <= x"22"; -- X
					when x"59" => rtc_scancode <= x"35"; -- Y
					when x"5A" => rtc_scancode <= x"1A"; -- Z
					when x"5B" => rtc_scancode <= x"4C"; -- semicolon
					when x"5C" => rtc_scancode <= x"5D"; -- back
					when x"5D" => rtc_scancode <= x"54"; -- [
					when x"5E" => rtc_scancode <= x"5B"; -- ]
					when x"5F" => rtc_scancode <= x"55"; -- =
					
					when x"60" => rtc_scancode <= x"6D"; -- KP comma
					when x"61" => rtc_scancode <= x"05"; -- F1
					when x"62" => rtc_scancode <= x"06"; -- F2
					when x"63" => rtc_scancode <= x"04"; -- F3
					when x"64" => rtc_scancode <= x"0C"; -- F4
					when x"65" => rtc_scancode <= x"03"; -- F5
					when x"66" => rtc_scancode <= x"0B"; -- F6
					when x"67" => rtc_scancode <= x"83"; -- F7
					when x"68" => rtc_scancode <= x"0A"; -- F8
					when x"69" => rtc_scancode <= x"01"; -- F9
					when x"6A" => rtc_scancode <= x"09"; -- F10
					when x"6B" => rtc_scancode <= x"78"; -- F11
					when x"6C" => rtc_scancode <= x"07"; -- F12

					when others => rtc_scancode <= x"FF";
				end case;
				--rtc_scancode <= kb_scancode(7 downto 0);
			end if;
		end if;
	end process;

end RTL;

