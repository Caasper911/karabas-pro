library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity dram2sram is
	port(
		CLK			: in std_logic;
        C0          : in std_logic;
        C1          : in std_logic;
        C2          : in std_logic;
        C3          : in std_logic;
        REQ         : in std_logic;
        RNW         : in std_logic;
        ADDR        : in std_logic_vector(20 downto 0);
        DI          : in std_logic_vector(15 downto 0);
        BSEL        : in std_logic_vector(1 downto 0); -- bsel[0] - wrdata[7:0], bsel[1] - wrdata[15:8]
        DO          : buffer std_logic_vector(15 downto 0);        
		  
		  -- rom to cpu
		  RADDR       : in std_logic_vector(20 downto 0);
		  CSROM       : in std_logic;
		  RDO         : buffer std_logic_vector(7 downto 0);
        
		  -- ram to ic
        RAM_A       : buffer std_logic_vector(21 downto 0);
        RAM_DO      : buffer std_logic_vector(7 downto 0);
        RAM_DI      : in std_logic_vector(7 downto 0);
        RAM_NWR     : buffer std_logic;
        RAM_NRD     : buffer std_logic;
		  
		  -- rom to ic
		  ROM_A       : buffer std_logic_vector(20 downto 0);
		  ROM_DI      : in std_logic_vector(7 downto 0);
		  ROM_NRD     : buffer std_logic
);
end dram2sram;

architecture rtl of dram2sram is

signal sram_wrdata  : std_logic_vector(7 downto 0);
signal sram_rddata  : std_logic_vector(15 downto 0);

signal int_addr     : std_logic_vector(20 downto 0);  
signal int_bsel     : std_logic_vector(1 downto 0);
signal dram_wd      : std_logic_vector(15 downto 0);

signal rd : std_logic;
signal wr : std_logic;

signal int_raddr     : std_logic_vector(20 downto 0);  
signal int_csrom     : std_logic;

begin

   -- incoming data latch
   process (CLK, C0)
	begin 
		if rising_edge(CLK) then 
			if (C0 = '1') then 
				dram_wd <= DI;
			end if;
		end if;
	end process;
	
   -- incoming addr and bsel latch
	process (CLK, C3)
	begin 
		if rising_edge(CLK) then 
			if (C3 = '1') then 
				int_bsel <= BSEL;
				int_addr <= ADDR;
			end if;
		end if;
	end process;
	
	-- state
	process (CLK, C3)
	begin 
		if rising_edge(CLK) then 
			if (C3 = '1') then 
				if REQ = '1' then 
					rd <= RNW;
					wr <= not RNW;
				else
					rd <= '0';
					wr <= '0';
				end if;
			end if;
		end if;
	end process;
	
	-- we control
	process (CLK, C0, C1)
	begin 
		if rising_edge(CLK) then 
			if (C0 = '1') then 
				RAM_NWR <= not (wr or int_bsel(0));
				RAM_NRD <= not rd;
			elsif (C1 = '1') then 
				RAM_NWR <= not (wr or int_bsel(1));
				RAM_NRD <= not rd;				
			else
				RAM_NWR <= '1';
				RAM_NRD <= '1';
			end if;
		end if;
	end process;
	
	-- address latch 
	process (CLK, C0, C1)
	begin 
		if rising_edge(CLK) then 
			if (C0 = '1') then 
				RAM_A <= '0' & int_addr;
			elsif (C1 = '1') then 
				RAM_A <= '1' & int_addr;
			end if;
		end if;
	end process;
	
	-- read data
	process (CLK, C1, C2)
	begin 
		if rising_edge(CLK) then 
			if (C1 = '1' and rd = '1') then 
				sram_rddata(7 downto 0) <= RAM_DI;
			elsif (C2 = '1' and rd = '1') then 
				sram_rddata(15 downto 8) <= RAM_DI;
			end if;
		end if;
	end process;
	
	-- write data 
	process (CLK, C0, C1)
	begin 
		if rising_edge(CLK) then 
			if (C0 = '1' and (wr = '1' or int_bsel(0) = '1')) then --todo
				sram_wrdata <= dram_wd(7 downto 0);
			elsif (C1 = '1' and (wr = '1' or int_bsel(1) = '1')) then 
				sram_wrdata <= dram_wd(15 downto 8);
			end if;
		end if;
	end process;

	-- rom read control
	process (CLK, C2)
	begin 
		if rising_edge(CLK) then 
			if (C2 = '1') then 
				int_raddr <= RADDR;
				int_csrom <= CSROM;
				ROM_A <= RADDR; --int_addr;
				ROM_NRD <= not CSROM; --not int_csrom;
			else 
				ROM_NRD <= '1';
			end if;
			
			if (C3 = '1' and int_csrom = '1') then 
				int_csrom <= '0';
				RDO <= ROM_DI;
			end if;
			
		end if;
	end process;
	
	RAM_DO  <= sram_wrdata when RAM_NWR = '0' else RAM_DO;
	DO <= sram_rddata;

end rtl;
