-------------------------------------------------------------------------------
-- Memory controller
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.conv_integer;
use IEEE.numeric_std.all;

entity memory is
port (
   -- bus clock
	CLK 		: in std_logic;

   -- loader interface
	LOADER_ACT 	: in std_logic := '0';
	LOADER_A    : in std_logic_vector(20 downto 0);
	LOADER_D    : in std_logic_vector(7 downto 0);
	LOADER_WR   : in std_logic := '0';
	
   -- phy sram interface
	MA 			: buffer std_logic_vector(20 downto 0);
	MD 			: inout std_logic_vector(7 downto 0) := "ZZZZZZZZ";
	N_MRD 		: buffer std_logic;
	N_MWR 		: buffer std_logic;	
	N_CE1 		: buffer std_logic := '1';
	N_CE2 		: buffer std_logic := '1';
	N_CE3 		: buffer std_logic := '1';

   -- virtual ram interface
   RAM_A       : in std_logic_vector(22 downto 0);
   RAM_DI      : in std_logic_vector(7 downto 0); 
   RAM_DO      : out std_logic_vector(7 downto 0);
   RAM_NRD     : in std_logic := '1';
   RAM_NWR     : in std_logic := '1'
);
end memory;

architecture RTL of memory is

begin
	
		N_MRD <= '1' when LOADER_ACT = '1' else RAM_NRD;
		N_MWR <= not LOADER_WR when loader_act = '1' else RAM_NWR;

		N_CE1 <= '1' when LOADER_ACT = '1' else RAM_A(21) when (RAM_NRD = '0' or RAM_NWR = '0') and RAM_A(22) = '0' else '1';
		N_CE2 <= '1' when LOADER_ACT = '1' else not(RAM_A(21)) when (RAM_NRD = '0' or RAM_NWR = '0') and RAM_A(22) = '0' else '1';
		N_CE3 <= '0' when LOADER_ACT = '1' else '0' when RAM_NRD = '0' and RAM_A(22) = '1' else '1';
		
      MA <= LOADER_A when LOADER_ACT = '1' else 
				RAM_A(20 downto 0);

		MD <= LOADER_D when LOADER_ACT = '1' else 
			   RAM_DI when N_MWR = '0' else 
			   (others => 'Z');

		RAM_DO <= MD;
			
end RTL;

