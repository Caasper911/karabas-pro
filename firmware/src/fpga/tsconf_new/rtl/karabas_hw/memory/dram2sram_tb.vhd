library ieee;
use ieee.std_logic_1164.all;
--use IEEE.numeric_std.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity dram2sram_tb is
end dram2sram_tb;

architecture behavior of dram2sram_tb is

    component dram2sram is
	port(
		    CLK			: in std_logic;
		    CLK2X		: in std_logic;
            C0          : in std_logic;
            C1          : in std_logic;
            C2          : in std_logic;
            C3          : in std_logic;
		      
		      -- dram ctl
            REQ         : in std_logic;
            RNW         : in std_logic;
            ADDR        : in std_logic_vector(21 downto 0);
            DI          : in std_logic_vector(15 downto 0);
            BSEL        : in std_logic_vector(1 downto 0); -- bsel[0] - wrdata[7:0], bsel[1] - wrdata[15:8]
            DO          : buffer std_logic_vector(15 downto 0);        
		      
		      -- ram to ic
            RAM_A       : buffer std_logic_vector(22 downto 0);
            RAM_DO      : buffer std_logic_vector(7 downto 0);
            RAM_DI      : in std_logic_vector(7 downto 0);
            RAM_NWR     : buffer std_logic;
            RAM_NRD     : buffer std_logic
        );
    end component;

    signal clk56  : std_logic := '1';
    signal clk28  : std_logic := '1';
    signal c0 : std_logic := '0';
    signal c1 : std_logic := '0';
    signal c2 : std_logic := '0';
    signal c3 : std_logic := '0';
    signal reset : std_logic := '0';
    signal cnt : std_logic_vector(7 downto 0) := (others => '0');

    signal dram_req : std_logic := '0';
    signal dram_rnw : std_logic := '0';
    signal dram_addr : std_logic_vector(21 downto 0) := (others => '1');
    signal dram_bsel : std_logic_vector (1 downto 0) := "00";
    signal dram_wrdata : std_logic_vector(15 downto 0) := (others => '0');
    signal dram_rddata : std_logic_vector(15 downto 0) := (others => '0');

    signal ram_a : std_logic_vector(22 downto 0);
    signal ram_di : std_logic_vector(7 downto 0);
    signal ram_do : std_logic_vector(7 downto 0);
    signal ram_nrd : std_logic := '1';
    signal ram_nwr : std_logic := '1';

    signal f : std_logic_vector(1 downto 0) := "01";
    signal h : std_logic_vector(1 downto 0) := "01";
    signal c : std_logic_vector(3 downto 0) := "0001";

begin
    uut: dram2sram
    port map (
        clk => clk28,
        clk2x => clk56,
        c0  => c0,
        c1  => c1,
        c2  => c2,
        c3  => c3,

        req => dram_req,
        rnw => dram_rnw,
        addr => dram_addr,
        bsel => dram_bsel,
        di => dram_wrdata,
        do => dram_rddata,

        ram_a => ram_a,
        ram_do => ram_di,
        ram_di => ram_do,
        ram_nrd => ram_nrd,
        ram_nwr => ram_nwr
    );

    -- simulate reset
    reset <=
        '0' after 0 ns,
        '1' after 300 ns,
        '0' after 1000 ns;

    -- simulate clk
    clk56 <= '1' after 17 ns when clk56 = '0' else '0' after 17 ns when clk56 = '1';

    process (clk56)
    begin
        if rising_edge(clk56) then
            clk28 <= not clk28;
        end if;
    end process;

--    clk28 <=  '1' after 35 ns when clk28 = '0' else '0' after 35 ns when clk28 = '1';

    process(clk28)
    begin 
        if rising_edge(clk28) then
            f <= not f;
            if (f(1) = '1') then 
                h <= not h;
            end if;
            c <= c(2 downto 0) & c(3);
        end if;
    end process;

    c0 <= c(0);
    c1 <= c(1);
    c2 <= c(2);
    c3 <= c(3);

    process(clk28)
    begin 
        if rising_edge(clk28) then 
            cnt <= cnt + '1';
        end if;
    end process;

    -- simulate cpu dram raw signals
    dram_req <= '1' when c3='1' else '0';
    process (clk28)
    begin
        if rising_edge(clk28) then
            if (c3 = '1') then
                dram_rnw <= cnt(2);
                dram_bsel <= cnt(4 downto 3);
                dram_addr <= "0000000000000000000000";
            else 
                --dram_rnw <= 'Z';
                --dram_bsel <= "ZZ";
                --dram_addr <= (others=>'Z');
            end if;
        end if;
    end process;

    process (clk28)
    begin
        if rising_edge(clk28) then
            if (c3 = '1') then
                if cnt(3) = '0' then         
                    dram_wrdata <= "1010101011110000";
                else 
                    dram_wrdata <= "1100110011100011";
                end if;
            else 
               dram_wrdata <= "ZZZZZZZZZZZZZZZZ";
            end if;
        end if;
    end process;

    ram_do <= ram_a(7 downto 0);

    -- simulate adc_data
    -- "11111111" / "00000000"
    --adc_data <= '0' when cnt='0' and adc_cs_n='0' and adc_clk='0' else 
     --           '1' when cnt='1' and adc_cs_n='0' and adc_clk='0' else 
       --         'Z';

    -- calculate test date to output (FF or 00)
   -- process (adc_cs_n) 
   -- begin
   --     if falling_edge(adc_cs_n) then 
   --         if (cnt = '1') then cnt <= '0'; else cnt <= '1'; end if;
   --     end if;
   -- end process;

end;
