library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity dram2sram is
	port(
		  CLK			  : in std_logic;
		  CLK2X		  : in std_logic;
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
end dram2sram;

architecture rtl of dram2sram is

signal sram_wrdata  : std_logic_vector(7 downto 0);
signal sram_rddata  : std_logic_vector(15 downto 0);

signal int_addr     : std_logic_vector(21 downto 0);  
signal int_bsel     : std_logic_vector(1 downto 0);
signal dram_wd      : std_logic_vector(15 downto 0);

signal wr : std_logic;
signal rd : std_logic;

signal int_nwr : std_logic := '1';

type qmachine IS(idle, data_latch, 
                 rd_l, rd_l2, rd_l_ack, rd_l_ack2, 
                 rd_h, rd_h2, rd_h_ack, rd_h_ack2, 
                 wr_l, wr_l2, wr_l_ack, wr_l_ack2, 
                 wr_h, wr_h2, wr_h_ack, wr_h_ack2);
signal qstate : qmachine := idle;
--signal cnt56: std_logic_vector(2 downto 0) := "000";

begin

    process (CLK2X, CLK, C0, C1, C2, C3)
    begin 
        if rising_edge(CLK2X) then 

            case qstate is

                -- защелка адреса, селектора банка, типа операции r/w в C3
                when idle => 
                    if (c3 = '1') then
                        int_bsel <= BSEL;
                        int_addr <= ADDR;
                        if (REQ = '1') then
                            rd <= RNW;
                            wr <= not RNW;
                            if (RNW = '0') then 
                                qstate <= data_latch;
                            else 
                                qstate <= rd_l;
                            end if;
                        else 
                            rd <= '0';
                            wr <= '0';
                            qstate <= idle;
                        end if;
                    end if;

                -- защелка данных для записи в C0
                when data_latch =>
                    if (c0 = '1') then 
                        dram_wd <= DI;
                        if (int_bsel(0) = '1') then                         
                            qstate <= wr_l;
                        elsif (int_bsel(1) = '1') then 
                            qstate <= wr_h;
                        else 
                            qstate <= idle;
                        end if;
                    end if;

                -- цикл чтения младшего байта
                when rd_l =>
                    RAM_A <= int_addr(21 downto 0) & '0';
                    RAM_NRD <= '0';
                    qstate <= rd_l2;

                when rd_l2 =>
                    qstate <= rd_l_ack;

                when rd_l_ack =>
                    RAM_NRD <= '1';
                    qstate <= rd_l_ack2;

                when rd_l_ack2 =>
                    sram_rddata(7 downto 0) <= RAM_DI; 
                    qstate <= rd_h;

                -- цикл чтения старшего байта
                when rd_h =>
                    RAM_A <= int_addr(21 downto 0) & '1';
                    RAM_NRD <= '0';
                    qstate <= rd_h2;

                when rd_h2 =>
                    qstate <= rd_h_ack;

                when rd_h_ack =>
                    RAM_NRD <= '1';
                    qstate <= rd_h_ack2;

                when rd_h_ack2 =>
                    sram_rddata(15 downto 8) <= RAM_DI; 
                    qstate <= idle;

                -- цикл записи младшего байта
                when wr_l =>
                    RAM_A <= int_addr(21 downto 0) & '0';
                    sram_wrdata <= dram_wd(7 downto 0);
                    RAM_NWR <= '0';
                    qstate <= wr_l2;

                when wr_l2 =>
                    qstate <= wr_l_ack;

                when wr_l_ack =>
                    RAM_NWR <= '1';
                    qstate <= wr_l_ack2;

                when wr_l_ack2 => 
                    if (int_bsel(1) = '1') then 
                        qstate <= wr_h;
                    else 
                        qstate <= idle;
                    end if;

                -- цикл записи старшего байта
                when wr_h =>
                    RAM_A <= int_addr(21 downto 0) & '1';
                    sram_wrdata <= dram_wd(15 downto 8);
                    RAM_NWR <= '0';
                    qstate <= wr_h2;

                when wr_h2 =>
                    qstate <= wr_h_ack;

                when wr_h_ack =>
                    RAM_NWR <= '1';
                    qstate <= wr_h_ack2;

                when wr_h_ack2 => 
                    qstate <= idle;                    
                    
                when others => qstate <= idle;
            end case;
        end if;
    end process;

	-- incoming dram addr and bsel latch
--	process (CLK, C3, BSEL, ADDR)
--	begin 
--		if rising_edge(CLK) then 
--			if (C3 = '1') then 
--				int_bsel <= BSEL;
--				int_addr <= ADDR;
--			end if;
--		end if;
--	end process;
	
	-- incoming dram data latch for write
--   process (CLK, C0, DI)
--	begin 
--		if rising_edge(CLK) then 
--			if (C0 = '1') then 
--				dram_wd <= DI;
--			end if;
--		end if;
--	end process;
	
	-- state
--	process (CLK, C3, REQ, RNW)
--	begin 
--		if rising_edge(CLK) then 
--			if (C3 = '1') then 
--				if REQ = '1' then 
--					wr <= not RNW;
--					rd <= RNW;
--				else
--					wr <= '0';
--					rd <= '0';
--				end if;
--			end if;
--		end if;
--	end process;

	-- new r/w cycle
--	process (CLK, CLK2X, C0, C1, C2, C3)
--	begin 
--		if rising_edge(CLK2X) then 
--			if (C3 = '1') then 
--				if (REQ = '1' and RNW = '1') then -- read request low
--					RAM_A <= ADDR(21 downto 0) & '0';
--					RAM_NRD <= '0';
--					RAM_NWR <= '1';
--				else
--					RAM_NRD <= '1';
--					RAM_NWR <= '1';
--				end if;
--			elsif (C0 = '1') then 
--				RAM_NRD <= '1';
--				if (wr = '1') then 
--					RAM_A <= int_addr(21 downto 0) & '0'; -- write request low
--					sram_wrdata <= DI(7 downto 0);
--					RAM_NWR <= not int_bsel(0);
--					int_nwr <= not int_bsel(1);
--				else 
--					RAM_NWR <= '1';
--					int_nwr <= '1';
--				end if;
--			elsif (C1 = '1') then
--				RAM_NWR <= '1';
--				if (rd = '1') then 
--					RAM_A <= int_addr(21 downto 0) & '1'; -- read request high
--					RAM_NRD <= '0';
--					RAM_NWR <= '1';
--				end if;
--			elsif (C2 = '1') then 
--				RAM_NRD <= '1';
--				RAM_NWR <= int_nwr; -- write request high
--				if (wr = '1') then 
--					RAM_A <= int_addr(21 downto 0) & '1';
--					sram_wrdata <= dram_wd(15 downto 8);
--				end if;
--			end if;
--		end if;
--	end process;
--	
	-- read data
--	process (CLK, C1, C2, RAM_DI)
--	begin 
--		if rising_edge(CLK) then
--			if (C0 = '1') then
--				sram_rddata(7 downto 0) <= RAM_DI; 
--			elsif (C2 = '1') then
--				sram_rddata(15 downto 8) <= RAM_DI;
--			end if;
--		end if;
--	end process;
	
	RAM_DO  <= sram_wrdata;
	DO <= sram_rddata;

end rtl;
