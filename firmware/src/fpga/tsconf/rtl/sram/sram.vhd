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
        DO          : out std_logic_vector(15 downto 0);        
        
        RAM_A       : out std_logic_vector(21 downto 0);
        RAM_DI      : out std_logic_vector(7 downto 0);
        RAM_DO      : in std_logic_vector(7 downto 0);
        RAM_NWR     : out std_logic;
        RAM_NRD     : out std_logic
);
end sdram;

architecture rtl of dram2sram is

signal int_sram_nwr;
signal sram_wrdata : std_logic_vector(7 downto 0);

begin

	process (CLK, REQ, RNW, C3, C0)
	begin 
        if riding_edge(CLK) then
            -- address
            if (C3 = '1') then 
                RAM_A <= '0' & ADDR;
            else if (C0 = '1') then 
                RAM_A <= '1' & ADDR;
            end if;

            -- read data
            if (C0 = '1') then 
                dram_rddata(7 downto 0) <= RAM_DO;
            else if (C1 = '1') then
                dram_rddata(15 downto 8) <= RAM_DO; 
            end if;

            -- write data
            if (C3 = '1') then
                sram_wrdata <= DI(7 downto 0);
            else if (C0 = '1') then
                sram_wrdata <= DI(15 downto 8);
            end if;

            -- write enable
            if (C3 = '1') then
                if (RNW = '1' or BSEL(0) = '0') then 
                    RAM_NWR <= REQ;
                else 
                    RAM_NWR <= '1';
                end if;
                if (RNW = '1' or BSEL(1) = '0') then 
                    int_sram_nwr <= REQ;
                else 
                    int_sram_nwr <= '1';
                end if;
            else if (C0 = '1') then 
                RAM_NWR <= int_sram_nwr;
            else if (C1 = '1') then 
                RAM_NWR <= '1';
            end if;
        end if;		
	end process;
	
	RAM_DI <= sram_wrdata;
    RAM_NRD <= not(RAM_NWR);

end rtl;
