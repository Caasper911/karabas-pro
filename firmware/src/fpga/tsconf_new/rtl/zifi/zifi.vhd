--------------------------------------------------------------------------------
-- ZiFi module
-- https://github.com/HackerVBI/ZiFi/blob/master/_esp/upd1/README!!__eRS232.txt
--
-- @author Andy Karpov <andy.karpov@gmail.com>
-- Ukraine, 2023
--------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity zifi is
port(
    CLK         : in std_logic;
    RESET       : in std_logic;

    A           : in std_logic_vector(15 downto 0);
    DI          : in std_logic_vector(7 downto 0);
    DO          : out std_logic_vector(7 downto 0);
    IORQ_N      : in std_logic;
    RD_N        : in std_logic;
    WR_N        : in std_logic;

    ZIFI_OE_N   : out std_logic;

    UART_RX     : in std_logic;
    UART_TX     : out std_logic;
    UART_CTS    : out std_logic        
);
end zifi;

architecture rtl of zifi is

component uart 
port ( 
    clk_bus     : in std_logic;
    txdata      : in std_logic_vector(7 downto 0);
    txbegin     : in std_logic;
    txbusy      : out std_logic;
    rxdata      : out std_logic_vector(7 downto 0);
    rxrecv      : out std_logic;
    data_read   : in std_logic;
    rx          : in std_logic;
    tx          : out std_logic;
    rts         : out std_logic);
end component;

constant zifi_command_port  : std_logic_vector(15 downto 0) := x"C7EF";
constant zifi_error_port    : std_logic_vector(15 downto 0) := x"C7EF";
constant zifi_data_port     : std_logic_vector(15 downto 0) := x"BFEF";
constant zifi_in_fifo_port  : std_logic_vector(15 downto 0) := x"C0EF";
constant zifi_out_fifo_port : std_logic_vector(15 downto 0) := x"C1EF";
constant zifi_fifo_size     : std_logic_vector(7 downto 0) := x"FF";

signal command_reg          : std_logic_vector(7 downto 0);
signal err_reg              : std_logic_vector(7 downto 0);
signal di_reg               : std_logic_vector(7 downto 0);
signal do_reg               : std_logic_vector(7 downto 0);
signal api_enabled          : std_logic := '1';

signal fifo_in_di           : std_logic_vector(7 downto 0);
signal fifo_in_do           : std_logic_vector(7 downto 0);
signal fifo_in_rd_req       : std_logic := '0';
signal fifo_in_wr_req       : std_logic := '0';
signal fifo_in_clr_req      : std_logic := '0';
signal fifo_in_used         : std_logic_vector(7 downto 0) := (others => '0');

signal fifo_out_di          : std_logic_vector(7 downto 0);
signal fifo_out_do          : std_logic_vector(7 downto 0);
signal fifo_out_rd_req      : std_logic := '0';
signal fifo_out_wr_req      : std_logic := '0';
signal fifo_out_clr_req     : std_logic := '0';
signal fifo_out_used        : std_logic_vector(7 downto 0) := (others => '0');
signal fifo_out_free        : std_logic_vector(7 downto 0) := (others => '1');

signal tx_begin_req         : std_logic := '0';
signal txbusy               : std_logic := '0';
signal data_received        : std_logic;
signal data_read            : std_logic;

begin

FIFO_IN: entity work.fifo
port map(
    clock => CLK,
    data  => fifo_in_di,
    rdreq => fifo_in_rd_req,
    wrreq => fifo_in_wr_req,
    sclr  => fifo_in_clr_req,
    q     => fifo_in_do,
    usedw => fifo_in_used
);

FIFO_OUT: entity work.fifo
port map(
    clock => CLK,
    data  => fifo_out_di,
    rdreq => fifo_out_rd_req,
    wrreq => fifo_out_wr_req,
    sclr  => fifo_out_clr_req,
    q     => fifo_out_do,
    usedw => fifo_out_used
);

UART_RXTX: uart
port map (
    clk_bus   => CLK,
    txdata    => fifo_in_do,
    txbegin   => tx_begin_req,
    txbusy    => txbusy,
    rxdata    => fifo_out_di,
    rxrecv    => data_received,
    data_read => data_read,
    rx        => UART_RX,
    tx        => UART_TX,
    rts       => UART_CTS    
);

fifo_in_di <= di_reg;
do_reg <= fifo_out_do;

-- todo: подтверждение чтения полученного байта
-- data_read <= '1' when fifo_out_used /= zifi_fifo_size else '0';

process (CLK)
begin
    if rising_edge(CLK) then
        -- uart tx 
        if (tx_begin_req = '0' and txbusy = '0' and fifo_in_used /= "00000000") then 
            tx_begin_req <= '1';
            fifo_in_rd_req <= '1';
        end if;
        if (tx_begin_req = '1' and txbusy = '1') then
            tx_begin_req <= '0';
        end if;
        if (fifo_in_rd_req = '1') then
            fifo_in_rd_req <= '0';
        end if;

        -- uart rx
        data_read <= '0';
        if (data_received = '1') then
            fifo_out_wr_req <= '1';
        end if; 
        if (fifo_out_wr_req = '1') then 
            data_read <= '1';
            fifo_out_wr_req <= '0';
        end if;
    end if;
end process;

process (CLK) 
begin
    if (RESET = '1') then
        command_reg <= (others => '0');
        di_reg <= (others => '0');
    elsif (rising_edge(CLK)) then
        -- запись данных в порт данных инициирует fifo_in write request
        if IORQ_N = '0' and WR_N = '0' then 
            case (A) is
                when zifi_command_port => command_reg <= DI;
                when zifi_data_port    => di_reg <= DI; fifo_in_wr_req <= '1';
                when others => null;
            end case;
        end if;
        if (fifo_in_wr_req = '1') then 
            fifo_in_wr_req <= '0';
        end if;

        -- чтение данных из порта данных инициирует fifo_out read request
        if IORQ_N = '0' and RD_N = '0' and A = zifi_data_port then
            fifo_out_rd_req <= '1';
        end if;
        if (fifo_out_rd_req = '1') then
            fifo_out_rd_req <= '0';
        end if;
    end if;
end process;

process (CLK)
begin
    if (rising_edge(CLK)) then
        case (command_reg) is
            when "00000001" => fifo_in_clr_req  <= '1'; err_reg <= (others => '0');  -- clear in fifo
            when "00000010" => fifo_out_clr_req <= '1'; err_reg <= (others => '0'); -- clear out fifo
            when "00000011" => fifo_in_clr_req  <= '1'; err_reg <= (others => '0'); fifo_out_clr_req <= '1'; -- clear both in/out fifo
            when "11110000" => api_enabled      <= '0'; err_reg <= (others => '0'); -- api disabled
            when "11110001" => api_enabled      <= '1'; err_reg <= (others => '0'); -- api transparent
            when "11111111" => -- get API version
                               if (api_enabled = '1') then 
                                   err_reg <= "00000001"; 
                               else 
                                   err_reg <= "11111111"; 
                               end if;
            when others => err_reg <= "11111111";
        end case;
        if fifo_in_clr_req = '1' then 
            fifo_in_clr_req <= '0';
        end if;
        if fifo_out_clr_req = '1' then
            fifo_out_clr_req <= '0';
        end if;
    end if;
end process;

DO <= fifo_in_used  when IORQ_N = '0' and RD_N = '0' and A = zifi_in_fifo_port  else 
      fifo_out_free when IORQ_N = '0' and RD_N = '0' and A = zifi_out_fifo_port else 
      err_reg       when IORQ_N = '0' and RD_N = '0' and A = zifi_error_port    else 
      do_reg        when IORQ_N = '0' and RD_N = '0' and A = zifi_data_port     else 
      "11111111";

fifo_out_free <= std_logic_vector(unsigned(zifi_fifo_size) - unsigned(fifo_out_used));
        
ZIFI_OE_N <= '0' when IORQ_N = '0' and RD_N = '0' and (A = zifi_in_fifo_port or A = zifi_out_fifo_port or A = zifi_error_port or A = zifi_data_port) else '1';

end rtl;
