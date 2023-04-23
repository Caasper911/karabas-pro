-------------------------------------------------------------------------------------------------------------------
-- 
-- 
-- #       #######                                                 #                                               
-- #                                                               #                                               
-- #                                                               #                                               
-- ############### ############### ############### ############### ############### ############### ############### 
-- #             #               # #                             # #             #               # #               
-- #             # ############### #               ############### #             # ############### ############### 
-- #             # #             # #               #             # #             # #             #               # 
-- #             # ############### #               ############### ############### ############### ############### 
--                                                                                                                 
--         ####### ####### ####### #######                         ############### ############### ############### 
--                                                                 #             # #               #             # 
--                                                                 ############### #               #             # 
--                                                                 #               #               #             # 
-- https://github.com/andykarpov/karabas-pro                       #               #               ############### 
--
-- TS-Conf FPGA firmware for Karabas-Pro
--
-- @author Andy Karpov <andy.karpov@gmail.com>
-- @author Oleh Starychenko <solegstar@gmail.com>
-- Ukraine, 2023
-------------------------------------------------------------------------------------------------------------------

library IEEE; 
use IEEE.std_logic_1164.all; 
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all; 

entity karabas_pro is
    generic (
        enable_saa1099     : boolean := true; -- saa1099
        enable_zifi        : boolean := true; -- zifi
        enable_osd_overlay : boolean := true   -- osd overlay
    );
port (
    -- Clock (50MHz)
    CLK_50MHZ    : in std_logic;

    -- SRAM (3 x 2MB x 8bit)
    SRAM_D       : inout std_logic_vector(7 downto 0);
    SRAM_A       : buffer std_logic_vector(20 downto 0);
    SRAM_NWR     : buffer std_logic;
    SRAM_NRD     : buffer std_logic;
    SRAM_NCE1    : out std_logic := '0'; -- /ramce1
    SRAM_NCE2    : out std_logic := '1'; -- /ramce2
    SRAM_NCE3    : out std_logic := '1'; -- /ramce3
    
    -- SPI FLASH (M25P16)
    DATA0        : in std_logic;     -- SPI MISO
    NCSO         : out std_logic;    -- FLASH /CS 
    DCLK         : out std_logic;    -- SPI SCK
    ASDO         : out std_logic;    -- FLASH MOSI
    
    -- SD/MMC Card
    SD_NCS       : buffer std_logic; -- SD /CS
    SD_NDET      : in std_logic;     -- SD /DET
    SD_MOSI      : inout std_logic;  -- SD MOSI PIN_115
    
    -- VGA 
    VGA_R        : out std_logic_vector(2 downto 0);
    VGA_G        : out std_logic_vector(2 downto 0);
    VGA_B        : out std_logic_vector(2 downto 0);
    VGA_HS       : out std_logic;
    VGA_VS       : out std_logic;
        
    -- AVR SPI slave
    AVR_SCK      : in std_logic;
    AVR_MOSI     : in std_logic;
    AVR_MISO     : out std_logic := 'Z';
    AVR_NCS      : in std_logic;
    
    -- Parallel bus for CPLD
    NRESET       : out std_logic;
    CPLD_CLK     : out std_logic;
    CPLD_CLK2    : out std_logic;
    SDIR         : out std_logic;
    SA           : out std_logic_vector(1 downto 0);
    SD           : inout std_logic_vector(15 downto 0) := "ZZZZZZZZZZZZZZZZ";
    
    -- I2S Sound TDA1543
    SND_BS       : out std_logic;
    SND_WS       : out std_logic;
    SND_DAT      : out std_logic;

    -- UART / ESP8266
    UART_RX      : in std_logic;
    UART_TX      : out std_logic;
    UART_CTS     : out std_logic;
    
    -- UART2 / header
    UART2_TX     : out std_logic;
    UART2_CTS    : out std_logic;
    UART2_RX     : in std_logic;
    
    -- MISC signals
    FDC_STEP     : in std_logic;
    TAPE_IN      : in std_logic := '1';
    TAPE_OUT     : out std_logic;
    BUZZER       : out std_logic
    
);
end karabas_pro;

architecture rtl of karabas_pro is

signal areset       : std_logic := '0';
signal reset        : std_logic := '0';
signal loader_act   : std_logic := '1';
signal loader_reset : std_logic := '0';

signal clk_28       : std_logic;
signal clk_8        : std_logic;
signal clk_84       : std_logic;
signal clk_56       : std_logic;
signal ena_div2     : std_logic := '0';
signal ena_div4     : std_logic := '0';
signal ena_div8     : std_logic := '0';
signal ena_div16    : std_logic := '0';
signal ena_cnt      : std_logic_vector(5 downto 0) := "000000";

signal sd_sck       : std_logic;

signal ram_a_bus    : std_logic_vector(22 downto 0);
signal ram_di_bus   : std_logic_vector(7 downto 0);
signal ram_do_bus   : std_logic_vector(7 downto 0);
signal ram_rd_n     : std_logic := '1';
signal ram_wr_n     : std_logic := '1';

--signal rom_a_bus    : std_logic_vector(20 downto 0);
--signal rom_do_bus   : std_logic_vector(7 downto 0);
--signal rom2_do_bus   : std_logic_vector(7 downto 0);
--signal rom_rd_n     : std_logic := '1';
signal rom_rddata   : std_logic_vector(7 downto 0);

signal cpu_reset_n  : std_logic;
signal cpu_clk      : std_logic;
signal cpu_a_bus    : std_logic_vector(15 downto 0);
signal cpu_do_bus   : std_logic_vector(7 downto 0);
signal cpu_di_bus   : std_logic_vector(7 downto 0);
signal cpu_mreq_n   : std_logic;
signal cpu_iorq_n   : std_logic;
signal cpu_wr_n     : std_logic;
signal cpu_rd_n     : std_logic;
signal cpu_int_n    : std_logic;
signal cpu_m1_n     : std_logic;
signal cpu_rfsh_n   : std_logic;
signal cpu_halt_n   : std_logic;
signal cpu_ena      : std_logic;
signal cpu_mult     : std_logic_vector(1 downto 0);
signal cpu_mem_wr   : std_logic;
signal cpu_mem_rd   : std_logic;
signal cpu_nmi_n    : std_logic;
signal cpu_wait_n   : std_logic := '1';

signal kb_do_bus    : std_logic_vector(5 downto 0);
signal kb_scancode  : std_logic_vector(9 downto 0);
signal kb_reset     : std_logic := '0';
signal kb_wait      : std_logic;
signal kb_magic     : std_logic;
signal kb_turbo     : std_logic_vector(1 downto 0);
signal kb_loaded    : std_logic;

signal joy_do_bus   : std_logic_vector(7 downto 0);

signal ms_x         : std_logic_vector(7 downto 0);
signal ms_y         : std_logic_vector(7 downto 0);
signal ms_z         : std_logic_vector(3 downto 0);
signal ms_b         : std_logic_vector(2 downto 0);

signal rtc_a_bus    : std_logic_vector(7 downto 0);
signal rtc_di_bus   : std_logic_vector(7 downto 0);
signal rtc_do_bus   : std_logic_vector(7 downto 0);
signal rtc_rd_n     : std_logic;
signal rtc_wr_n     : std_logic;

signal audio_l      : std_logic_vector(15 downto 0);
signal audio_r      : std_logic_vector(15 downto 0);

signal video_r      : std_logic_vector(2 downto 0);
signal video_g      : std_logic_vector(2 downto 0);
signal video_b      : std_logic_vector(2 downto 0);
signal video_hs     : std_logic;
signal video_vs     : std_logic;
signal video_hcnt   : std_logic_vector(9 downto 0);
signal video_vcnt   : std_logic_vector(8 downto 0);
signal video_paper  : std_logic;
signal video_blink  : std_logic;

signal audio_mono   : std_logic_vector(15 downto 0);

signal soft_sw      : std_logic_vector(1 to 10) := "0000001000";

signal covox_a      : std_logic_vector(7 downto 0);
signal covox_b      : std_logic_vector(7 downto 0);
signal covox_c      : std_logic_vector(7 downto 0);
signal covox_d      : std_logic_vector(7 downto 0);
signal covox_fb     : std_logic_vector(7 downto 0);

signal ssg_sel      : std_logic;
signal ssg_cn0_bus  : std_logic_vector(7 downto 0);
signal ssg_cn0_a    : std_logic_vector(7 downto 0);
signal ssg_cn0_b    : std_logic_vector(7 downto 0);
signal ssg_cn0_c    : std_logic_vector(7 downto 0);
signal ssg_cn1_bus  : std_logic_vector(7 downto 0);
signal ssg_cn1_a    : std_logic_vector(7 downto 0);
signal ssg_cn1_b    : std_logic_vector(7 downto 0);
signal ssg_cn1_c    : std_logic_vector(7 downto 0);

signal saa_out_l    : std_logic_vector(7 downto 0);
signal saa_out_r    : std_logic_vector(7 downto 0);
signal saa_wr_n     : std_logic;

signal speaker      : std_logic;
signal tape_in_monitor : std_logic;

signal zifi_do_bus  : std_logic_vector(7 downto 0);
signal zifi_oe_n    : std_logic;

signal cpld_do      : std_logic_vector(7 downto 0);
signal dos_act      : std_logic;
signal rom14        : std_logic;

signal hdd_profi_ebl_n : std_logic := '1';
signal hdd_wwc_n       : std_logic := '1'; -- Write High byte from Data bus to "Write register"
signal hdd_wwe_n       : std_logic := '1'; -- Read High byte from "Write register" to HDD bus
signal hdd_rww_n       : std_logic := '1'; -- Selector Low byte Data bus Buffer Direction: 1 - to HDD bus, 0 - to Data bus
signal hdd_rwe_n       : std_logic := '1'; -- Read High byte from "Read register" to Data bus
signal hdd_cs3fx_n     : std_logic := '1';
signal hdd_active      : std_logic;

signal RT_F2_1         : std_logic;
signal RT_F2_2         : std_logic;
signal RT_F2_3         : std_logic;
signal fdd_cs_pff_n    : std_logic;
signal RT_F1_1         : std_logic;
signal RT_F1_2         : std_logic;
signal RT_F1           : std_logic;
signal P0              : std_logic;
signal fdd_cs_n        : std_logic := '1';

-- ts related
signal im2vect      : std_logic_vector(7 downto 0);
signal turbo        : std_logic_vector(1 downto 0);
signal regs_we      : std_logic;
signal rst_n        : std_logic;
signal rst          : std_logic;
signal iordwr       : std_logic;
signal iordwr_s     : std_logic;
signal spi_mode     : std_logic;
signal cfg_floppy_swap : std_logic;
signal dmawpdev     : std_logic_vector(1 downto 0);
signal dma_wtp_req  : std_logic;
signal dma_wtp_stb  : std_logic;
signal mus_data     : std_logic_vector(7 downto 0);
signal wait_n       : std_logic := '1';
signal int_start_wtp: std_logic;
signal wait_start_gluclock : std_logic;
signal wait_start_comport : std_logic;
signal beeper_wr : std_logic;
signal covox_wr : std_logic;
signal wait_addr : std_logic_vector(7 downto 0);
signal wait_write : std_logic_vector(7 downto 0);
signal porthit : std_logic;
signal external_port :std_logic;
signal debug_rgb : std_logic_vector(8 downto 0);
signal debug_ram : std_logic_vector(7 downto 0);
signal debug_rom : std_logic_vector(7 downto 0);

-- zsignal
signal cpu_stall    : std_logic; -- zmem -> zclock
signal cpu_req      : std_logic; -- zmem -> arbiter
signal cpu_wrbsel   : std_logic; -- zmem -> arbiter
signal cpu_next     : std_logic; -- arbiter -> zmem
signal cpu_current  : std_logic; -- arbiter -> zmem
signal cpu_strobe   : std_logic; -- arbiter -> zmem
signal cpu_latch    : std_logic; -- arbiter -> zmem
signal cpu_addr     : std_logic_vector(21 downto 0);
signal csvrom       : std_logic;
signal curr_cpu     : std_logic;

signal cacheconf    : std_logic_vector(3 downto 0);

signal req          : std_logic;
signal rnw          : std_logic;
signal dram_addr    : std_logic_vector(21 downto 0);
signal dram_bsel    : std_logic_vector(1 downto 0);
signal dram_rddata  : std_logic_vector(15 downto 0);
signal dram_wrdata  : std_logic_vector(15 downto 0);
signal dram_req     : std_logic;
signal dram_rnw     : std_logic;
signal dout_ram     : std_logic_vector(7 downto 0);
signal ena_ram      : std_logic;
signal rompg        : std_logic_vector(4 downto 0);
signal csrom        : std_logic;
signal romoe_n      : std_logic;
signal romwe_n      : std_logic;


signal port_xxfe_reg : std_logic_vector(7 downto 0);
signal dos           : std_logic := '1';
signal port_bff7     : std_logic;
signal port_eff7_reg : std_logic_vector(7 downto 0);
signal gluclock_addr : std_logic_vector(7 downto 0);

-- clock
signal f0           : std_logic;
signal f1           : std_logic;
signal h0           : std_logic;
signal h1           : std_logic;
signal c0           : std_logic;
signal c1           : std_logic;
signal c2           : std_logic;
signal c3           : std_logic;
signal ay_clk       : std_logic;
signal zclk         : std_logic;
signal zclkn        : std_logic;
signal zpos         : std_logic;
signal zneg         : std_logic;
signal dos_on     : std_logic;
signal dos_off    : std_logic;
signal vdos         : std_logic;
signal pre_vdos     : std_logic;
signal vdos_off     : std_logic;
signal vdos_on      : std_logic;
signal dos_change   : std_logic;
signal dos_stall  : std_logic;
-- out zsignals
signal m1           : std_logic;
signal rfsh       : std_logic;
signal rd           : std_logic;
signal wr           : std_logic;
signal iorq         : std_logic;
signal mreq         : std_logic;
signal rdwr         : std_logic;
signal iord         : std_logic;
signal iowr         : std_logic;
signal iorw         : std_logic;
signal memrd        : std_logic;
signal memwr        : std_logic;
signal memrw      : std_logic;
signal opfetch      : std_logic;
signal intack       : std_logic;
-- strobre
signal iorq_s       : std_logic;
signal mreq_s     : std_logic;
signal iord_s       : std_logic;
signal iowr_s       : std_logic;
signal iorw_s       : std_logic;
signal memrd_s    : std_logic;
signal memwr_s      : std_logic;
signal memrw_s    : std_logic;
signal opfetch_s    : std_logic;
-- zports OUT
signal dout_ports   : std_logic_vector(7 downto 0);
signal ena_ports    : std_logic;
signal xt_page      : std_logic_vector(31 downto 0);
signal fmaddr       : std_logic_vector(4 downto 0);
signal sysconf      : std_logic_vector(7 downto 0);
signal memconf      : std_logic_vector(7 downto 0);
--signal fddvirt    : std_logic_vector(3 downto 0);
signal im2v_frm   : std_logic_vector(2 downto 0);
signal im2v_lin   : std_logic_vector(2 downto 0);
signal im2v_dma   : std_logic_vector(2 downto 0);
signal intmask      : std_logic_vector(7 downto 0);
signal dmaport_wr   : std_logic_vector(8 downto 0);
--signal mus_in_TS  : std_logic_vector(7 downto 0);
-- VIDEO_TS
signal go           : std_logic;
signal go_arbiter   : std_logic;
-- z80
signal zmd          : std_logic_vector(15 downto 0);
signal zma          : std_logic_vector(7 downto 0);
signal cram_we      : std_logic;
signal sfile_we     : std_logic;
signal zborder_wr   : std_logic; 
signal border_wr    : std_logic;
signal zvpage_wr    : std_logic;
signal vpage_wr     : std_logic;
signal vconf_wr     : std_logic;
signal gx_offsl_wr  : std_logic;
signal gx_offsh_wr  : std_logic;
signal gy_offsl_wr  : std_logic;
signal gy_offsh_wr  : std_logic;
signal t0x_offsl_wr : std_logic;
signal t0x_offsh_wr : std_logic;
signal t0y_offsl_wr : std_logic;
signal t0y_offsh_wr : std_logic;
signal t1x_offsl_wr : std_logic;
signal t1x_offsh_wr : std_logic;
signal t1y_offsl_wr : std_logic;
signal t1y_offsh_wr : std_logic;
signal tsconf_wr    : std_logic;
signal palsel_wr    : std_logic;
signal tmpage_wr    : std_logic;
signal t0gpage_wr   : std_logic;
signal t1gpage_wr   : std_logic;
signal sgpage_wr    : std_logic;
signal hint_beg_wr  : std_logic;
signal vint_begl_wr : std_logic;
signal vint_begh_wr : std_logic;
-- ZX controls
signal res          : std_logic;
signal int_start_frm: std_logic;
signal int_start_lin: std_logic;
-- DRAM interface
signal video_addr   : std_logic_vector(20 downto 0);
signal video_bw     : std_logic_vector(4 downto 0);
signal video_go     : std_logic;
--signal dram_rdata   : std_logic_vector(15 downto 0);  -- raw, should be latched by c2 (video_next)
signal video_next   : std_logic;
signal video_pre_next : std_logic; 
signal next_video   : std_logic;
signal video_strobe : std_logic;
signal video_next_strobe : std_logic;
-- TS
signal ts_addr      : std_logic_vector(20 downto 0);
signal ts_req       : std_logic;
signal ts_z80_lp    : std_logic;
-- IN
signal ts_pre_next  : std_logic;
signal ts_next      : std_logic;
-- TM
signal tm_addr      : std_logic_vector(20 downto 0);
signal tm_req       : std_logic;
-- Video
signal tm_next      : std_logic;
signal vred         : std_logic_vector(1 downto 0);
signal vgrn         : std_logic_vector(1 downto 0);
signal vblu         : std_logic_vector(1 downto 0); 
signal vred_raw     : std_logic_vector(4 downto 0);
signal vgrn_raw     : std_logic_vector(4 downto 0);
signal vblu_raw     : std_logic_vector(4 downto 0); 
signal vdac_mode    : std_logic;
   
signal hsync_ts     : std_logic;
signal vsync_ts     : std_logic;
-- DMA
signal dma_rnw      : std_logic;
signal dma_req      : std_logic;
signal dma_z80_lp   : std_logic;
signal dma_wrdata   : std_logic_vector(15 downto 0);
signal dma_addr     : std_logic_vector(21 downto 0);    
signal dma_next     : std_logic;
signal dma_act      : std_logic;
signal dma_cram_we  : std_logic;
signal dma_sfile_we : std_logic;
-- zmap
signal dma_data     : std_logic_vector(15 downto 0);
signal dma_wraddr   : std_logic_vector(7 downto 0);
signal int_start_dma: std_logic;
-- SPI
signal spi_stb      : std_logic;
signal spi_start    : std_logic;
signal dma_spi_req  : std_logic;
signal dma_spi_din  : std_logic_vector(7 downto 0);    
signal cpu_spi_req  : std_logic;
signal cpu_spi_din  : std_logic_vector(7 downto 0);
signal spi_dout     : std_logic_vector(7 downto 0);
signal spi_wr       : std_logic;
signal spi_do_bus   : std_logic_vector(7 downto 0);
signal spi_busy     : std_logic;
signal spi_cs_n     : std_logic;
signal sd_cs_n      : std_logic;
signal spi_sdo      : std_logic;
signal spi_sck      : std_logic;
signal spi_sclk     : std_logic;
signal spi_mosi     : std_logic;
signal csync_ts     : std_logic;
signal hdmi_d1_sig  : std_logic;

-- debug
signal debug_mc146818a_wr		: std_logic;
signal debug_mc146818a_do_bus		: std_logic_vector(7 downto 0);

-------------------------------------------------------------------------------
-- COMPONENTS TS Lab
-------------------------------------------------------------------------------
component clock is
port (
    clk             : in std_logic;
    ay_mod          : in std_logic_vector(1 downto 0);
	 
    f0              : out std_logic; 
    f1              : out std_logic; 
    h0              : out std_logic; 
    h1              : out std_logic;

    c0              : out std_logic;
    c1              : out std_logic; 
    c2              : out std_logic; 
    c3              : out std_logic;

    ay_clk          : out std_logic
);
end component;

component zclock is
port (
    clk             : in std_logic;
    zclk_out        : out std_logic;
    c0              : in std_logic;
    c2              : in std_logic; 

    iorq_s          : in std_logic;
    external_port   : in std_logic;

    zpos            : out std_logic;
    zneg            : out std_logic;

    cpu_stall       : in std_logic;
    ide_stall       : in std_logic;
    dos_on          : in std_logic;
    vdos_off        : in std_logic;

    turbo           : in std_logic_vector(1 downto 0) -- input [1:0] turbo  2'b00 -  3.5 MHz, 2'b01 -  7.0 MHz, 2'b1x - 14.0 MHz
);    
end component;

component zsignals is
port (
    clk             : in std_logic;
    zpos            : in std_logic;

	 rst_n           : in std_logic;
    iorq_n          : in std_logic;
    mreq_n          : in std_logic;
    m1_n            : in std_logic;
    rfsh_n          : in std_logic;
    rd_n            : in std_logic;
    wr_n            : in std_logic;

	 rst             : out std_logic;
    m1              : out std_logic;
    rfsh            : out std_logic;
    rd              : out std_logic;
    wr              : out std_logic;
    iorq            : out std_logic;
    mreq            : out std_logic;
    rdwr            : out std_logic;
    iord            : out std_logic;
    iowr            : out std_logic;
--    iorw            : out std_logic;
	 iordwr			  : out std_logic;
	 
    memrd           : out std_logic;
    memwr           : out std_logic;
    memrw           : out std_logic;
    opfetch         : out std_logic;
    intack          : out std_logic;

    iorq_s          : out std_logic;
    mreq_s          : out std_logic;
    iord_s          : out std_logic;
    iowr_s          : out std_logic;
    iordwr_s        : out std_logic;

    memrd_s         : out std_logic;
    memwr_s         : out std_logic;
    memrw_s         : out std_logic;
    opfetch_s       : out std_logic);
end component;

component zports is
port (
    zclk            : in std_logic;
    clk             : in std_logic;

    din             : in std_logic_vector(7 downto 0);
    dout            : out std_logic_vector(7 downto 0);
    dataout         : out std_logic;
    a               : in std_logic_vector(15 downto 0);

    rst             : in std_logic;
    opfetch         : in std_logic;

    rd              : in std_logic;
    wr              : in std_logic;
    rdwr            : in std_logic;

    iorq            : in std_logic;
    iorq_s          : in std_logic;
    iord            : in std_logic;
    iord_s          : in std_logic;
    iowr            : in std_logic;
    iowr_s          : in std_logic;
    iordwr          : in std_logic;
    iordwr_s        : in std_logic;

    porthit         : out std_logic; -- when internal port hit occurs, this is 1, else 0; used for iorq1_n iorq2_n on zxbus
    external_port   : out std_logic; -- asserts for AY and VG93 accesses

    zborder_wr      : out std_logic;
    border_wr       : out std_logic;
    zvpage_wr       : out std_logic;
    vpage_wr        : out std_logic;
    vconf_wr        : out std_logic;    
    gx_offsl_wr     : out std_logic;    
    gx_offsh_wr     : out std_logic;    
    gy_offsl_wr     : out std_logic;    
    gy_offsh_wr     : out std_logic;    
    t0x_offsl_wr    : out std_logic;
    t0x_offsh_wr    : out std_logic;
    t0y_offsl_wr    : out std_logic;
    t0y_offsh_wr    : out std_logic;
    t1x_offsl_wr    : out std_logic;
    t1x_offsh_wr    : out std_logic;
    t1y_offsl_wr    : out std_logic;
    t1y_offsh_wr    : out std_logic;
    tsconf_wr       : out std_logic;    
    palsel_wr       : out std_logic;    
    tmpage_wr       : out std_logic;    
    t0gpage_wr      : out std_logic;    
    t1gpage_wr      : out std_logic;    
    sgpage_wr       : out std_logic;    
    hint_beg_wr     : out std_logic; 
    vint_begl_wr    : out std_logic;
    vint_begh_wr    : out std_logic;
	 
    xt_page         : out std_logic_vector(31 downto 0);

    fmaddr          : out std_logic_vector(4 downto 0);
	 regs_we         : in std_logic;
	 
    sysconf         : out std_logic_vector(7 downto 0);
    memconf         : out std_logic_vector(7 downto 0);
    cacheconf       : out std_logic_vector(3 downto 0);
	 cfg_floppy_swap : in std_logic;	 
    fddvirt         : out std_logic_vector(7 downto 0);

    dmaport_wr      : out std_logic_vector(8 downto 0);
    dma_act         : in std_logic;
	 dmawpdev        : out std_logic_vector(1 downto 0);
	 
	 intmask         : out std_logic_vector(7 downto 0);
	 
    dos             : in std_logic;
    vdos            : in std_logic;
    vdos_on         : out std_logic;
    vdos_off        : out std_logic;

    ay_bdir         : out std_logic;
    ay_bc1          : out std_logic;
    covox_wr        : out std_logic;
    beeper_wr       : out std_logic; 
    tape_read       : in std_logic;

--    ide_in        : in std_logic_vector(15 downto 0);
--    ide_out       : out std_logic_vector(15 downto 0);
--    ide_cs0_n     : out std_logic;
--    ide_cs1_n     : out std_logic;
--    ide_req       : out std_logic;
--    ide_stb       : in std_logic;
--    ide_ready     : in std_logic;
--    ide_stall     : out std_logic;

    keys_in         : in std_logic_vector(4 downto 0);     -- keys (port FE)
    mus_in          : in std_logic_vector(7 downto 0);     -- mouse (xxDF)
    kj_in           : in std_logic_vector(7 downto 0);     -- kempston joy

    vg_intrq        : in std_logic;
    vg_drq          : in std_logic;              -- from vg93 module - drq + irq read
    vg_cs_n         : out std_logic;
    vg_wrFF         : out std_logic;
    drive_sel       : out std_logic_vector(1 downto 0);     -- disk drive selection
	 
    sdcs_n          : out std_logic;
	 sd2cs_n         : out std_logic;
	 
    spi_mode        : out std_logic;
    sd_start        : out std_logic;
    sd_datain       : out std_logic_vector(7 downto 0);
    sd_dataout      : in std_logic_vector(7 downto 0);
	 
    wait_addr       : out std_logic_vector(7 downto 0);
    wait_start_gluclock : out std_logic;             -- begin wait from some ports
    wait_start_comport  : out std_logic;  
    wait_write      : out std_logic_vector(7 downto 0);
    wait_read       : in std_logic_vector(7 downto 0)
);
end component;

component zmem is
port (
    clk             : in std_logic;
    c1              : in std_logic;
    c2              : in std_logic;
    c3              : in std_logic;
    zneg            : in std_logic;

    rst             : in std_logic;
    za              : in std_logic_vector(15 downto 0);
    zd_out          : out std_logic_vector(7 downto 0);     -- output to Z80 bus
    zd_ena          : out std_logic;             -- output to Z80 bus enable

    opfetch         : in std_logic;
    opfetch_s       : in std_logic; 
    memrd           : in std_logic; 
    memwr           : in std_logic; 
    memwr_s         : in std_logic; 

    turbo           : in std_logic_vector(1 downto 0);

    cache_en        : in std_logic_vector(3 downto 0);        
    memconf         : in std_logic_vector(3 downto 0);
    xt_page         : in std_logic_vector(31 downto 0);
	 
    rompg           : out std_logic_vector(4 downto 0);    -- 32page = 512kB
    csrom           : out std_logic;
    romoe_n         : out std_logic;
    romwe_n         : out std_logic;

    dos             : out std_logic;             -- DOS
    dos_on          : out std_logic;
    dos_off         : out std_logic;
    vdos            : out std_logic;             -- Virtual DOS
    pre_vdos        : out std_logic;
    vdos_on         : in std_logic;
    vdos_off        : in std_logic;

    cpu_req         : out std_logic; 
    cpu_addr        : out std_logic_vector(21 downto 0);
    cpu_wrbsel      : out std_logic;             -- for 16bit data
    cpu_rddata      : in std_logic_vector(15 downto 0);     -- RD
    cpu_next        : in std_logic;
    cpu_strobe      : in std_logic;                -- from ARBITER
    cpu_latch       : in std_logic;                -- from ARBITER
    cpu_stall       : out std_logic                -- for Zclock if HI-> SRALL (ZCLK)
);
end component;

component arbiter is
port (
    clk             : in std_logic;
    c1              : in std_logic;
    c2              : in std_logic;
    c3              : in std_logic;
    
	 dram_addr       : out std_logic_vector(21 downto 0);     -- address for dram access
    dram_req        : out std_logic;             -- dram request
    dram_rnw        : out std_logic;             -- Read-NotWrite
    dram_bsel       : out std_logic_vector(1 downto 0);     -- byte select: bsel[1] for wrdata[15:8], bsel[0] for wrdata[7:0]
    dram_wrdata     : out std_logic_vector(15 downto 0);     -- data to be written
	 
    video_addr      : in std_logic_vector(20 downto 0);     -- during access block, only when video_strobe==1
    video_go        : in std_logic;             				-- start video access blocks
    video_bw        : in std_logic_vector(4 downto 0);      -- [4:3] -total cycles: 11 = 8 / 01 = 4 / 00 = 2
	 
    video_pre_next  : out std_logic;             -- (c1)
    video_next      : out std_logic;             -- (c2) at this signal video_addr may be changed; it is one clock leading the video_strobe
    video_strobe    : out std_logic;             -- (c3) one-cycle strobe meaning that video_data is available
    next_vid        : out std_logic;             -- used for TM prefetch
	 
    cpu_addr        : in std_logic_vector(21 downto 0);
    cpu_wrdata      : in std_logic_vector(7 downto 0);
    cpu_req         : in std_logic;
    cpu_rnw         : in std_logic;
    cpu_wrbsel      : in std_logic;
    cpu_next        : out std_logic;             -- next cycle is allowed to be used by CPU
    cpu_strobe      : out std_logic;             -- c2 strobe
    cpu_latch       : out std_logic;             -- c2-c3 strobe
	 
    dma_addr        : in std_logic_vector(21 downto 0);
    dma_wrdata      : in std_logic_vector(15 downto 0);
    dma_req         : in std_logic;
    dma_rnw         : in std_logic;
    dma_next        : out std_logic;

    ts_addr         : in std_logic_vector(20 downto 0);
    ts_req          : in std_logic; 
    ts_pre_next     : out std_logic;
    ts_next         : out std_logic;
	 
    tm_addr         : in std_logic_vector(20 downto 0); 
    tm_req          : in std_logic; 
    tm_next         : out std_logic
    );
end component;

component video_top is
port (
    clk             : in std_logic;
    f0              : in std_logic;
    f1              : in std_logic;
    h1              : in std_logic;
    c0              : in std_logic;
    c1              : in std_logic;
    c3              : in std_logic;
	 
    vred            : out std_logic_vector(1 downto 0); 
    vgrn            : out std_logic_vector(1 downto 0);
    vblu            : out std_logic_vector(1 downto 0);

    vred_raw        : out std_logic_vector(4 downto 0); 
    vgrn_raw        : out std_logic_vector(4 downto 0);
    vblu_raw        : out std_logic_vector(4 downto 0);	 

    vdac_mode       : out std_logic;
	 
    hsync           : out std_logic;
    vsync           : out std_logic;
    csync           : out std_logic;

    d               : in std_logic_vector(7 downto 0);        
    zmd             : in std_logic_vector(15 downto 0);
    zma             : in std_logic_vector(7 downto 0);
    cram_we         : in std_logic;
    sfile_we        : in std_logic;
	 
    zborder_wr      : in std_logic; 
    border_wr       : in std_logic;
    zvpage_wr       : in std_logic;
    vpage_wr        : in std_logic;
    vconf_wr        : in std_logic;
    gx_offsl_wr     : in std_logic;
    gx_offsh_wr     : in std_logic;
    gy_offsl_wr     : in std_logic;
    gy_offsh_wr     : in std_logic;
    t0x_offsl_wr    : in std_logic;
    t0x_offsh_wr    : in std_logic;
    t0y_offsl_wr    : in std_logic;
    t0y_offsh_wr    : in std_logic;
    t1x_offsl_wr    : in std_logic;
    t1x_offsh_wr    : in std_logic;
    t1y_offsl_wr    : in std_logic;
    t1y_offsh_wr    : in std_logic;
    tsconf_wr       : in std_logic;
    palsel_wr       : in std_logic;
    tmpage_wr       : in std_logic;
    t0gpage_wr      : in std_logic;
    t1gpage_wr      : in std_logic;
    sgpage_wr       : in std_logic;
    hint_beg_wr     : in std_logic;
    vint_begl_wr    : in std_logic;
    vint_begh_wr    : in std_logic;
	 
    res             : in std_logic;
    int_start       : out std_logic;
    line_start_s    : out std_logic;
	 
    video_addr      : out std_logic_vector(20 downto 0);
    video_bw        : out std_logic_vector(4 downto 0);
    video_go        : out std_logic;
    dram_rdata      : in std_logic_vector(15 downto 0);  -- raw, should be latched by c2 (video_next)
    video_pre_next  : in std_logic; 
    video_strobe    : in std_logic;

    ts_addr         : out std_logic_vector(20 downto 0);
    ts_req          : out std_logic;
    ts_pre_next     : in std_logic;
    ts_next         : in std_logic;

    tm_addr         : out std_logic_vector(20 downto 0);
    tm_req          : out std_logic;
    tm_next         : in std_logic;

    cfg_60hz        : in std_logic;
    vga_on          : in std_logic;
	 
    osd_hcnt        : out std_logic_vector(9 downto 0);
    osd_vcnt        : out std_logic_vector(8 downto 0);
    osd_paper       : out std_logic;
    osd_blink       : out std_logic

);
end component;

component dma is
port (
    clk             : in std_logic;
    c2              : in std_logic;
    rst_n           : in std_logic;
	 
    dmaport_wr      : in std_logic_vector(8 downto 0);
    dma_act         : out std_logic;
    data            : out std_logic_vector(15 downto 0);
    wraddr          : out std_logic_vector(7 downto 0);
    int_start       : out std_logic;
	 
    zdata           : in std_logic_vector(7 downto 0);
    
	 dram_addr       : out std_logic_vector(21 downto 0);
    dram_rddata     : in std_logic_vector(15 downto 0);
    dram_wrdata     : out std_logic_vector(15 downto 0);
    dram_req        : out std_logic;
    dram_rnw        : out std_logic;
    dram_next       : in std_logic;
	 
    spi_rddata      : in std_logic_vector(7 downto 0);
    spi_wrdata      : out std_logic_vector(7 downto 0);
    spi_req         : out std_logic;
    spi_stb         : in std_logic;

    wtp_rddata	     : in std_logic_vector(7 downto 0);
    wtp_req         : out std_logic;
    wtp_stb         : in std_logic;
	 
--    ide_in          : in std_logic_vector(15 downto 0);
--    ide_out         : out std_logic_vector(15 downto 0);
--    ide_req         : out std_logic;
--    ide_rnw         : out std_logic;
--    ide_stb         : in std_logic;
	 
    cram_we         : out std_logic;
    sfile_we        : out std_logic
    );
end component;

component zmaps is
port (
    clk             : in std_logic;
    memwr_s         : in std_logic;
    a               : in std_logic_vector(15 downto 0);
    d               : in std_logic_vector(7 downto 0);
	 
    fmaddr          : in std_logic_vector(4 downto 0);
	 
    zmd             : out std_logic_vector(15 downto 0);
    zma             : out std_logic_vector(7 downto 0);
    
	 dma_data        : in std_logic_vector(15 downto 0);
    dma_wraddr      : in std_logic_vector(7 downto 0);
    dma_cram_we     : in std_logic;
    dma_sfile_we    : in std_logic;
    
	 cram_we         : out std_logic;
    sfile_we        : out std_logic;
	 regs_we         : out std_logic
);
end component;

component spi is
port (
    clk             : in std_logic; -- system clk
    sck             : out std_logic; -- SPI bus pins...
    sdo             : out std_logic; 
    sdi             : in std_logic; 
    mode            : in std_logic; 
	 
    dma_req         : in std_logic; 
    dma_din         : in std_logic_vector(7 downto 0);

    cpu_req         : in std_logic; 
    cpu_din         : in std_logic_vector(7 downto 0);

    start           : out std_logic; 
    dout            : out std_logic_vector(7 downto 0)
);
end component;

component zint is
port (
    clk             : in std_logic; 
    zpos            : in std_logic; 
    res             : in std_logic; 
    wait_n          : in std_logic; 

    int_start_frm   : in std_logic;
    int_start_lin   : in std_logic;
    int_start_dma   : in std_logic;
	 int_start_wtp   : in std_logic;
	 
    vdos            : in std_logic; 
    intack          : in std_logic; 
	 
    intmask         : in std_logic_vector(7 downto 0);  
    im2vect         : out std_logic_vector(7 downto 0);     
    int_n           : out std_logic
);
end component;

component saa1099
port (
    clk_sys         : in std_logic;
    ce              : in std_logic;        --8 MHz
    rst_n           : in std_logic;
    cs_n            : in std_logic;
    a0              : in std_logic;        --0=data, 1=address
    wr_n            : in std_logic;
    din             : in std_logic_vector(7 downto 0);
    out_l           : out std_logic_vector(7 downto 0);
    out_r           : out std_logic_vector(7 downto 0));
end component;

begin

U1: entity work.karabas_hw
generic map (
    enable_osd_overlay => enable_osd_overlay
)
port map (
    CLK_50MHZ   => CLK_50MHZ,

    SRAM_D      => SRAM_D,
    SRAM_A      => SRAM_A,
    SRAM_NWR    => SRAM_NWR,
    SRAM_NRD    => SRAM_NRD,
    SRAM_NCE1   => SRAM_NCE1,
    SRAM_NCE2   => SRAM_NCE2,
    SRAM_NCE3   => SRAM_NCE3,
    
    SPI_MISO    => DATA0,
    SPI_SCK     => DCLK,
    FLASH_MOSI  => ASDO,
    FLASH_NCS   => NCSO,

    SD_SCK      => sd_sck,
    
    VGA_R       => VGA_R,
    VGA_G       => VGA_G,
    VGA_B       => VGA_B,
    VGA_HS      => VGA_HS,
    VGA_VS      => VGA_VS,
        
    AVR_SCK     => AVR_SCK,
    AVR_MOSI    => AVR_MOSI,
    AVR_MISO    => AVR_MISO,
    AVR_NCS     => AVR_NCS,
    
    BUS_NRESET  => NRESET,
    BUS_CLK     => CPLD_CLK,
    BUS_CLK2    => CPLD_CLK2,
    BUS_SDIR    => SDIR,
    BUS_SA      => SA,
    BUS_SD      => SD,
    
    SND_BS      => SND_BS,
    SND_WS      => SND_WS,
    SND_DAT     => SND_DAT,
    
    CLK_28      => clk_28,
    CLK_8       => clk_8,
	 CLK_84      => clk_84,
	 CLK_56      => clk_56,

    RAM_A       => ram_a_bus,
    RAM_DI      => ram_di_bus,
    RAM_DO      => ram_do_bus,
    RAM_NRD     => ram_rd_n,
    RAM_NWR     => ram_wr_n,

    KB_A        => cpu_a_bus(15 downto 8),
    KB_DO       => kb_do_bus,
    KB_SCANCODE => kb_scancode,

    JOY_DO      => joy_do_bus,

    MS_X        => ms_x, 
    MS_Y        => ms_y, 
    MS_Z        => ms_z, 
    MS_B        => ms_b, 
    
    RTC_A       => rtc_a_bus,
    RTC_DI      => rtc_di_bus,
    RTC_DO      => rtc_do_bus,
    RTC_NRD     => rtc_rd_n,
    RTC_NWR     => rtc_wr_n,

    AUDIO_L     => audio_l,
    AUDIO_R     => audio_r,

    VIDEO_R     => video_r,
    VIDEO_G     => video_g,
    VIDEO_B     => video_b,
    VIDEO_HS    => video_hs,
    VIDEO_VS    => video_vs,
     
    VIDEO_HCNT  => video_hcnt,
    VIDEO_VCNT  => video_vcnt,
    VIDEO_PAPER => video_paper,
    VIDEO_BLINK => video_blink,

    ARESET      => areset,
    KB_RESET    => kb_reset,
    KB_WAIT     => kb_wait,
    KB_MAGIC    => kb_magic,
    KB_TURBO    => kb_turbo,
    KB_LOADED   => kb_loaded,
    LOADER_ACT  => loader_act,
    LOADER_RESET=> loader_reset,
    SOFT_SW     => soft_sw,
     
    CPU_A_BUS   => cpu_a_bus,
    CPU_DO_BUS  => cpu_do_bus,
    CPU_RD_N    => cpu_rd_n,
    CPU_WR_N    => cpu_wr_n,

    -- todo: implement hdd/fdd signals     
    HDD_CS_N    => hdd_profi_ebl_n,
    HDD_WWC     => hdd_wwc_n,
    HDD_WWE     => hdd_wwe_n,
    HDD_RWW     => hdd_rww_n,
    HDD_RWE     => hdd_rwe_n,
    HDD_CS3FX   => hdd_cs3fx_n,
    FDC_STEP    => FDC_STEP,-- and turbo_fdc_off,
    FDC_CSFF    => fdd_cs_pff_n,
    FDC_NCS     => fdd_cs_n,

     -- todo: implement statuses
    ICON_SD     => '0', -- TODO
    ICON_CF     => '0', -- hdd_active,
    ICON_FDD    => '0', -- not(fdd_cs_n) and (not(cpu_rd_n) or not(cpu_wr_n)),
     
    CPLD_DO     => cpld_do
);

-- Zilog Z80A CPU
--U2: entity work.T80pa
--port map (
--    RESET_n     => cpu_reset_n,
--    CLK         => clk_28, 
--    CEN_p       => zpos,
--	 CEN_n       => zneg,
--
--    A           => cpu_a_bus,
--    DI          => cpu_di_bus,
--    DO          => cpu_do_bus,
--
--    WAIT_n      => cpu_wait_n,
--    INT_n       => cpu_int_n,
--    NMI_n       => cpu_nmi_n,
--    M1_n        => cpu_m1_n,
--    MREQ_n      => cpu_mreq_n,
--    IORQ_n      => cpu_iorq_n,
--    RD_n        => cpu_rd_n,
--    WR_n        => cpu_wr_n,
--    RFSH_n      => cpu_rfsh_n,
--    HALT_n      => cpu_halt_n,
--    BUSRQ_n     => '1',
--    BUSAK_n     => open,
--	 OUT0        => '1', -- 0 = OUT(C),0, 1 = OUT(C),255
--	 DIRset      => '0',
--	 REG         => open
--);

U2: entity work.T80a
port map (
    RESET_n     => cpu_reset_n,
    CLK_n       => zclk, 
    CEN         => '1',

    A           => cpu_a_bus,
    DIN         => cpu_di_bus,
    DOUT        => cpu_do_bus,

    WAIT_n      => cpu_wait_n,
    INT_n       => cpu_int_n,
    NMI_n       => cpu_nmi_n,
    M1_n        => cpu_m1_n,
    MREQ_n      => cpu_mreq_n,
    IORQ_n      => cpu_iorq_n,
    RD_n        => cpu_rd_n,
    WR_n        => cpu_wr_n,
    RFSH_n      => cpu_rfsh_n,
    HALT_n      => cpu_halt_n,
    BUSRQ_n     => '1',
    BUSAK_n     => open
);

-- Zilog Z80A CPU
U3: entity work.dram2sram
port map (
    CLK         => clk_28,
	 CLK2X 		 => clk_56,
    C0          => c0,
    C1          => c1,
    C2          => c2,
    C3          => c3,
    REQ         => dram_req,
    RNW         => dram_rnw,
    ADDR        => dram_addr,
    DI          => dram_wrdata,
    BSEL        => dram_bsel, -- bsel[0] - wrdata[7:0], bsel[1] - wrdata[15:8]
    DO          => dram_rddata,

    RAM_A       => ram_a_bus,
    RAM_DI      => ram_do_bus,
    RAM_DO      => ram_di_bus,
    RAM_NWR     => ram_wr_n,
    RAM_NRD     => ram_rd_n
);

TS01: clock
port map (
    clk         => clk_28,
    ay_mod      => "00",
    f0          => f0,
    f1          => f1,
    h0          => h0,
    h1          => h1,
    c0          => c0,
    c1          => c1,
    c2          => c2,
    c3          => c3,
    ay_clk      => open);    

TS02: zclock
port map (
    clk         => clk_28,
    c0          => c0,
    c2          => c2,
    iorq_s      => iorq_s,
	 zclk_out    => zclkn,
    zpos        => zpos,
    zneg        => zneg,
	 turbo       => turbo,
    dos_on      => dos_on,
    vdos_off    => vdos_off,
    cpu_stall   => cpu_stall,
    ide_stall   => '0', -- ide_stall
    external_port => '0' --external_port
    );
	 
zclk <= not zclkn;
	 
TS03: zmem
port map (
    clk         => clk_28,
    c1          => c1,
    c2          => c2,
    c3          => c3,

    rst         => rst,             -- PLL locked
    zneg        => zneg,
    za          => cpu_a_bus,        -- from CPU
    zd_out      => dout_ram,        -- output to Z80 bus 8bit ==>
    zd_ena      => ena_ram,              -- output to Z80 bus enable

    opfetch     => opfetch,           -- from zsignals
    opfetch_s   => opfetch_s,         -- from zsignals

    memrd       => memrd,             -- from zsignals
    memwr       => memwr,             -- from zsignals
    memwr_s     => memwr_s,           -- from zsignals 
    memconf     => memconf(3 downto 0),
	 xt_page     => xt_page,
	 rompg       => rompg,         -- 32page = 512kB
    cache_en    => cacheconf(3 downto 0),          -- from zport

    romoe_n     => romoe_n,
    romwe_n     => romwe_n,
    csrom       => csrom,

    dos         => dos,
    dos_on      => dos_on,
    dos_off     => dos_off,
    vdos        => vdos,
	 pre_vdos    => pre_vdos,
    vdos_on     => vdos_on,
    vdos_off    => vdos_off,

    cpu_req     => cpu_req,
    cpu_wrbsel  => cpu_wrbsel,        -- for 16bit data
    cpu_strobe  => cpu_strobe,        -- from ARBITER ACTIVE=HI     
    cpu_latch   => cpu_latch,
    cpu_addr    => cpu_addr,
    cpu_rddata  => dram_rddata,
    cpu_stall   => cpu_stall,         -- for Zclock if HI-> STALL (ZCLK)
    cpu_next    => cpu_next,
    turbo       => turbo
);

TS04: arbiter
port map (
    clk         => clk_28,
    c1          => c1,
    c2          => c2,
    c3          => c3,

    dram_addr   => dram_addr,
    dram_req    => dram_req,
    dram_rnw    => dram_rnw,
    dram_bsel   => dram_bsel,
    dram_wrdata => dram_wrdata,        -- data to be written

    cpu_addr    => cpu_addr,
    cpu_wrdata  => cpu_do_bus,
    cpu_req     => cpu_req,
    cpu_rnw     => rd,
    cpu_wrbsel  => cpu_wrbsel,
    cpu_next    => cpu_next,         -- next cycle is allowed to be used by CPU
    cpu_strobe  => cpu_strobe,         -- c2 strobe
    cpu_latch   => cpu_latch,         -- c2-c3 strobe

    video_go    => go_arbiter,        -- start video access blocks	 
    video_bw    => video_bw,         -- ZX="11001", [4:3] -total cycles: 11 = 8 / 01 = 4 / 00 = 2
    video_addr  => video_addr,    -- during access block, only when video_strobe==1
    video_strobe      => video_strobe,     -- (c3) one-cycle strobe meaning that video_data is available
    video_pre_next    => video_pre_next,
    video_next        => video_next,         -- (c2) at this signal video_addr may be changed; it is one clock leading the video_strobe
    next_vid          => next_video,         -- used for TM prefetch

    dma_addr    => dma_addr,
    dma_wrdata  => dma_wrdata,
    dma_req     => dma_req,
    dma_rnw     => dma_rnw,
    dma_next    => dma_next,
	 
    ts_addr     => ts_addr,
    ts_req      => ts_req,
    ts_pre_next => ts_pre_next,
    ts_next     => ts_next,

    tm_addr     => tm_addr,
    tm_req      => tm_req,
    tm_next     => tm_next
);

TS05: video_top
port map (
    clk         => clk_28,
    res         => reset,	 
    f0          => f0,
    f1          => f1,
    h1          => h1,
    c0          => c0,
    c1          => c1,
    c3          => c3,

    vred        => vred,
    vgrn        => vgrn,
    vblu        => vblu,

    vred_raw    => vred_raw,
    vgrn_raw    => vgrn_raw,
    vblu_raw    => vblu_raw, 
	 
	 vdac_mode   => vdac_mode,
	 
    hsync       => hsync_ts,
    vsync       => vsync_ts,
    csync       => open,

    cfg_60hz    => '1', -- not soft_sw(2), -- 0-60Hz, 1-48Hz 
    vga_on      => '1', -- not soft_sw(1), -- 1-31kHZ	 
	 
    border_wr   => border_wr,
    zborder_wr  => zborder_wr,
    zvpage_wr   => zvpage_wr,
    vpage_wr    => vpage_wr,
    vconf_wr    => vconf_wr,
	 
    gx_offsl_wr => gx_offsl_wr,
    gx_offsh_wr => gx_offsh_wr,
    gy_offsl_wr => gy_offsl_wr,
    gy_offsh_wr => gy_offsh_wr,
    t0x_offsl_wr => t0x_offsl_wr,
    t0x_offsh_wr => t0x_offsh_wr,
    t0y_offsl_wr => t0y_offsl_wr,
    t0y_offsh_wr => t0y_offsh_wr,
    t1x_offsl_wr => t1x_offsl_wr,
    t1x_offsh_wr => t1x_offsh_wr,
    t1y_offsl_wr => t1y_offsl_wr,
    t1y_offsh_wr => t1y_offsh_wr,
	 
    tsconf_wr   => tsconf_wr,
    palsel_wr   => palsel_wr,
    tmpage_wr   => tmpage_wr,
    t0gpage_wr  => t0gpage_wr,
    t1gpage_wr  => t1gpage_wr,
    sgpage_wr   => sgpage_wr,
    hint_beg_wr => hint_beg_wr,
    vint_begl_wr=> vint_begl_wr,
    vint_begh_wr=> vint_begh_wr,

    video_addr  => video_addr,
    video_bw    => video_bw,
    video_go    => go,
    dram_rdata  => dram_rddata,  -- raw, should be latched by c2 (video_next)
    video_strobe      => video_strobe,
    video_pre_next    => video_pre_next, 

    ts_addr     => ts_addr,
    ts_req      => ts_req,
    ts_pre_next => ts_pre_next,
    ts_next     => ts_next,

    tm_addr     => tm_addr,
    tm_req      => tm_req,
    tm_next     => tm_next, 

	 d           => cpu_do_bus,
    zmd         => zmd,
    zma         => zma,
    cram_we     => cram_we,
    sfile_we    => sfile_we,

    int_start   => int_start_frm,
    line_start_s=> int_start_lin,
	 
    osd_hcnt    => video_hcnt,
    osd_vcnt    => video_vcnt,
    osd_paper   => video_paper,
    osd_blink   => video_blink
);

TS06: zmaps
port map (
    clk         => clk_28,
    memwr_s     => memwr_s,
    a           => cpu_a_bus,
    d           => cpu_do_bus,
    fmaddr      => fmaddr,
    zmd         => zmd,
    zma         => zma,
    dma_data    => dma_data,
    dma_wraddr  => dma_wraddr,
    dma_cram_we => dma_cram_we,
    dma_sfile_we=> dma_sfile_we,
    cram_we     => cram_we,
    sfile_we    => sfile_we,
	 regs_we     => regs_we
);

	 
TS07: zsignals
port map (
    clk         => clk_28,
    zpos        => zpos,
	 rst_n       => rst_n,
    iorq_n      => cpu_iorq_n,
    mreq_n      => cpu_mreq_n,
    m1_n        => cpu_m1_n,
    rfsh_n      => cpu_rfsh_n,
	 
	 rst         => rst,
    rd_n        => cpu_rd_n,
    wr_n        => cpu_wr_n,
    m1          => m1,
    rfsh        => rfsh,
    rd          => rd,
    wr          => wr,
    iorq        => iorq,
	 iorq_s      => iorq_s,
    mreq        => mreq,
	 mreq_s      => mreq_s,
	 
    rdwr        => rdwr,
    iord        => iord,
    iowr        => iowr,
    iordwr        => iordwr,
	 iord_s      => iord_s,
    iowr_s      => iowr_s,
    iordwr_s      => iordwr_s,

    memrd       => memrd,
    memwr       => memwr,
    memrw       => memrw,
    memrd_s     => memrd_s,
    memwr_s     => memwr_s,
    memrw_s     => memrw_s,

    opfetch     => opfetch,
    opfetch_s   => opfetch_s,
	 intack      => intack    
    );

TS08: zports
port map (
    zclk        => zclk,
    clk         => clk_28,
    din         => cpu_do_bus,
    dout        => dout_ports,
    dataout     => ena_ports,
	 
    a           => cpu_a_bus,
    rst         => rst,
    opfetch     => opfetch,         -- from zsignals
    rd          => rd,
    wr          => wr,
    rdwr        => rdwr,
    
	 iorq        => iorq,
    iord        => iord,
    iowr        => iowr,
    iordwr        => iordwr,
    iorq_s      => iorq_s,
    iord_s      => iord_s,
    iowr_s      => iowr_s,
    iordwr_s      => iordwr_s,
	 
    ay_bdir     => open,
    ay_bc1      => open,
	 
	 vg_intrq    => '0',
    vg_drq      => '0',            -- from vg93 module - drq + irq read
    vg_cs_n     => open,
    vg_wrFF     => open,
	 
	 sdcs_n      => sd_cs_n,           -- to SD card
    sd_start    => cpu_spi_req,     -- to SPI
    sd_datain   => cpu_spi_din,         -- to SPI(7 downto 0);
    sd_dataout  => spi_dout,         -- from SPI(7 downto 0); 
	 spi_mode    => spi_mode,
	 
--	 ide_in    => "0000000000000000",
--    ide_out   => open,
--    ide_cs0_n => open,
--    ide_cs1_n => open,
--    ide_req   => open,
--    ide_stb   => '0',
--    ide_ready => '0',
--    ide_stall => open,
	 
    border_wr   => border_wr,   
    zborder_wr  => zborder_wr,  
    zvpage_wr   => zvpage_wr,   
    vpage_wr    => vpage_wr,    
    vconf_wr    => vconf_wr,    
	 
    gx_offsl_wr => gx_offsl_wr, 
    gx_offsh_wr => gx_offsh_wr, 
    gy_offsl_wr => gy_offsl_wr, 
    gy_offsh_wr => gy_offsh_wr,  
    t0x_offsl_wr=> t0x_offsl_wr, 
    t0x_offsh_wr=> t0x_offsh_wr, 
    t0y_offsl_wr=> t0y_offsl_wr, 
    t0y_offsh_wr=> t0y_offsh_wr, 
    t1x_offsl_wr=> t1x_offsl_wr, 
    t1x_offsh_wr=> t1x_offsh_wr, 
    t1y_offsl_wr=> t1y_offsl_wr, 
    t1y_offsh_wr=> t1y_offsh_wr, 
    palsel_wr   => palsel_wr, 
    hint_beg_wr => hint_beg_wr, 
    vint_begl_wr=> vint_begl_wr, 
    vint_begh_wr=> vint_begh_wr, 	 
    tsconf_wr   => tsconf_wr, 
    tmpage_wr   => tmpage_wr, 
    t0gpage_wr  => t0gpage_wr, 
    t1gpage_wr  => t1gpage_wr, 
    sgpage_wr   => sgpage_wr, 
    xt_page     => xt_page,
    fmaddr      => fmaddr,
	 regs_we     => regs_we,

    sysconf     => sysconf,
    cacheconf   => cacheconf,
    memconf     => memconf,

    intmask     => intmask,
    fddvirt     => open,

	 cfg_floppy_swap => cfg_floppy_swap,
	 drive_sel   => open,        -- disk drive selection
    dos         => dos,
    vdos        => vdos,
    vdos_on     => vdos_on,
    vdos_off    => vdos_off,
	 
    dmaport_wr  => dmaport_wr,         -- dmaport_wr
    dma_act     => dma_act,         -- from DMA (status of DMA) 
	 dmawpdev    => dmawpdev,

    keys_in     => kb_do_bus(4 downto 0),          -- keys (port FE)
    mus_in      => "11111111",        -- mouse (xxDF)
    kj_in       => joy_do_bus(7 downto 0),
    tape_read   => TAPE_IN,

    beeper_wr   => beeper_wr,	 
    covox_wr    => covox_wr,

	 wait_addr   => wait_addr,
    wait_start_gluclock => wait_start_gluclock,         -- begin wait from some ports
    wait_start_comport  => wait_start_comport,
    wait_read   => rtc_do_bus,
    wait_write  => wait_write,
	 
	 porthit     => porthit,        -- when internal port hit occurs, this is 1, else 0; used for iorq1_n iorq2_n on zxbus
    external_port => external_port       -- asserts for AY and VG93 accesses    
);

TS09: dma
port map (
    clk         => clk_28, 
    c2          => c2,
    rst_n       => rst_n,

    int_start   => int_start_dma,
    zdata       => cpu_do_bus,	 

    dmaport_wr  => dmaport_wr,
    dma_act     => dma_act,

    dram_addr   => dma_addr,
    dram_rddata => dram_rddata,
    dram_wrdata => dma_wrdata,
    dram_req    => dma_req,
    dram_rnw    => dma_rnw,
    dram_next   => dma_next,
	 
    data        => dma_data,
    wraddr      => dma_wraddr,
    cram_we     => dma_cram_we,
    sfile_we    => dma_sfile_we,

--    ide_in      => "0000000000000000",
--    ide_out     => open,
--    ide_req     => open,
--    ide_rnw     => open,
--    ide_stb     => '0',
	 
    spi_req     => dma_spi_req,
    spi_stb     => spi_stb,
    spi_rddata  => spi_dout,
    spi_wrdata  => dma_spi_din,
	 
	 wtp_req     => dma_wtp_req,
    wtp_stb     => dma_wtp_stb,
    wtp_rddata  => mus_data -- data must be available 1 clk earlier than wait_data (mus_data = shift_in in slavespi.v)
);

TS10: zint
port map (
    clk              => clk_28,
	 zpos             => zpos,
    res              => reset,
    wait_n           => '1', --wait_n,

    im2vect          => im2vect,          --> CPU Din (2 downto 0);     
    intmask          => intmask,          --< ZPORT (7 downto 0);

    int_start_lin    => int_start_lin,    --< N2 VIDEO
    int_start_frm    => int_start_frm,    --< N1 VIDEO
    int_start_dma    => int_start_dma,    --< N3 DMA
    int_start_wtp    => '0', --int_start_wtp,    --< N4 DMA
	 
	 vdos             => pre_vdos,
	 
    intack           => intack,           --< zsignals  === (intack ? im2vect : 8'hFF)));
    int_n            => cpu_int_n
);

TS11: spi
port map (
    clk         => clk_28,
    sck         => spi_sck,
    sdo         => spi_sdo,
    sdi         => DATA0,
	 mode        => spi_mode,

    dma_req     => dma_spi_req,
    dma_din     => dma_spi_din,

    cpu_req     => cpu_spi_req,
    cpu_din     => cpu_spi_din,

    start       => spi_start,
    dout        => spi_dout	 
);
        
-- TurboSound
U12: entity work.turbosound
port map (
    I_CLK            => clk_28,
    I_ENA            => ena_div16,
    I_ADDR           => cpu_a_bus,
    I_DATA           => cpu_do_bus,
    I_WR_N           => cpu_wr_n,
    I_IORQ_N         => cpu_iorq_n,
    I_M1_N           => cpu_m1_n,
    I_RESET_N        => cpu_reset_n,
    I_BDIR           => '1',
    I_BC1            => '1',
    O_SEL            => ssg_sel,
    I_MODE           => soft_sw(8),
    O_SSG0_DA        => ssg_cn0_bus,
    O_SSG0_AUDIO_A   => ssg_cn0_a,
    O_SSG0_AUDIO_B   => ssg_cn0_b,
    O_SSG0_AUDIO_C   => ssg_cn0_c,
    O_SSG1_DA        => ssg_cn1_bus,
    O_SSG1_AUDIO_A   => ssg_cn1_a,
    O_SSG1_AUDIO_B   => ssg_cn1_b,
    O_SSG1_AUDIO_C   => ssg_cn1_c);

-- Covox
U13: entity work.covox
port map (
    I_RESET          => reset,
    I_CLK            => clk_28,
    I_CS             => soft_sw(6),
    I_WR_N           => cpu_wr_n,-- 
    I_ADDR           => cpu_a_bus(7 downto 0),
    I_DATA           => cpu_do_bus,
    I_IORQ_N         => cpu_iorq_n,
    I_DOS            => dos, -- TODO
    I_CPM            => '0', -- TODO
    I_ROM14          => '0', -- TODO
    O_A              => covox_a,
    O_B              => covox_b,
    O_C              => covox_c,
    O_D              => covox_d,
    O_FB             => covox_fb
);

G_SAA1099: if enable_saa1099 generate
U14: saa1099
port map(
    clk_sys          => clk_8,
    ce               => '1',
    rst_n            => not reset,
    cs_n             => '0',
    a0               => cpu_a_bus(8), -- 0=data, 1=address
    wr_n             => saa_wr_n,
    din              => cpu_do_bus,
    out_l            => saa_out_l,
    out_r            => saa_out_r);
end generate G_SAA1099;

G_ZIFI: if enable_zifi generate
U15: entity work.zifi 
port map (
    CLK              => clk_28,
    RESET            => reset,
    A                => cpu_a_bus,
    DI               => cpu_do_bus,
    DO               => zifi_do_bus,
    IORQ_N           => cpu_iorq_n,
    RD_N             => cpu_rd_n,
    WR_N             => cpu_wr_n,
    ZIFI_OE_N        => zifi_oe_n,
    UART_RX          => UART_RX,
    UART_TX          => UART_TX,
    UART_CTS         => UART_CTS
);
end generate G_ZIFI;

--U_ROM: entity work.rom 
--port map (
--	clock => clk_28,
--	address => cpu_a_bus(13 downto 0),
--	q => rom2_do_bus
--);

U_DEBUG: entity work.mc146818a
port map (
	RESET			=> reset,
	CLK			=> clk_28,
	ENA			=> '1',
	CS			=> '1',
	KEYSCANCODE 		=> x"FF",
	WR			=> debug_mc146818a_wr,
	A			=> rtc_a_bus(7 downto 0),
	DI			=> cpu_do_bus,
	DO			=> debug_mc146818a_do_bus);
	
U_DEBUG_OSD: entity work.debug_osd 
port map (
		CLK	=> clk_28,
		
		RGB_I => vred(1) & vred(0) & vred(0) & vgrn(1) & vgrn(0) & vgrn(0) & vblu(1) & vblu(0) & vblu(0),
		RGB_O => debug_rgb,

		-- debug ports to display
		PORT_1 => csrom & ena_ram & rompg & cpu_halt_n,
		PORT_2 => areset & kb_reset & loader_reset & loader_act & sd_cs_n & spi_sck & spi_sdo & DATA0,
		PORT_3 => "00000000", --debug_rom,
		PORT_4 => "00000000", --debug_ram,
		
		EN 	 => '1',
		
		HCNT_I => video_hcnt(8 downto 0),
		VCNT_I => video_vcnt(8 downto 0)
);
    
-------------------------------------------------------------------------------
-- Global signals

reset <= areset or kb_reset or loader_reset or loader_act; -- hot reset
rst_n <= not reset;
cfg_floppy_swap <= soft_sw(10);

cpu_reset_n <= not(reset); -- CPU reset
cpu_nmi_n   <= '1'; --'0' when kb_magic = '1' and ((cpu_m1_n = '0' and cpu_mreq_n = '0' and cpu_a_bus(15 downto 14) /= "00")) else '1'; -- NMI
cpu_wait_n  <= '1';
wait_n <= '1';

process (clk_28)
begin
    if clk_28'event and clk_28 = '0' then
        ena_cnt <= ena_cnt + 1;
    end if;
end process;

ena_div2  <= ena_cnt(0);
ena_div4  <= ena_cnt(1) and ena_cnt(0);
ena_div8  <= ena_cnt(2) and ena_cnt(1) and ena_cnt(0);
ena_div16 <= ena_cnt(3) and ena_cnt(2) and ena_cnt(1) and ena_cnt(0);

-------------------------------------------------------------------------------
-- SD_NCS, SD_NDET, SD_SCK, SD_MOSI, DATA0
-------------------------------------------------------------------------------
SD_NCS  <= '1' when loader_act = '1' else sd_cs_n;
SD_SCK  <= '1' when loader_act = '1' else spi_sck;
sd_MOSI <= '1' when loader_act = '1' else spi_sdo;

-- tsconf
go_arbiter <= go;

process (CLK_28) 
begin 
	if (rising_edge(CLK_28)) then 
		if csrom = '1' then 
			debug_rom <= dout_ram;
		end if;
		if ena_ram = '1' then 
			debug_ram <= dout_ram;
		end if;
	end if;
end process;

cpu_di_bus <= 
	 dout_ram    when ena_ram = '1' else -- ram 
	 debug_mc146818a_do_bus  when (cpu_iorq_n = '0' and cpu_rd_n = '0' and port_bff7 = '1' and port_eff7_reg(7) = '1') else        -- MC146818A
--    rtc_do_bus  when (cpu_iorq_n = '0' and cpu_rd_n = '0' and port_bff7 = '1' and port_eff7_reg(7) = '1') else        -- MC146818A
--    ssg_cn0_bus when (cpu_iorq_n = '0' and cpu_rd_n = '0' and cpu_a_bus = X"FFFD" and ssg_sel = '0') else    -- TurboSound
--    ssg_cn1_bus when (cpu_iorq_n = '0' and cpu_rd_n = '0' and cpu_a_bus = X"FFFD" and ssg_sel = '1') else
--    ms_z(3 downto 0) & '1' & not ms_b(2) & not ms_b(0) & not ms_b(1) when (cpu_iorq_n = '0' and cpu_rd_n = '0' and cpu_a_bus = x"FADF")  else
--    ms_x when (cpu_iorq_n = '0' and cpu_rd_n = '0' and cpu_a_bus = x"FBDF")  else
--    ms_y when (cpu_iorq_n = '0' and cpu_rd_n = '0' and cpu_a_bus = x"FFDF") else
--    zifi_do_bus when zifi_oe_n = '0' else
    dout_ports when ena_ports = '1' else
--    cpld_do when cpu_iorq_n = '0' and cpu_rd_n = '0' and cpu_m1_n = '1' else -- HDD / FDD
	 im2vect     when intack = '1' else	 
    "11111111";

process (reset, clk_28)
begin
    if reset = '1' then
        port_xxfe_reg <= "00000000";
        port_eff7_reg <= "00000000";
    elsif clk_28'event and clk_28 = '1' then
        if cpu_iorq_n = '0' and cpu_wr_n = '0' and cpu_a_bus(7 downto 0) = "11111110" then port_xxfe_reg <= cpu_do_bus; end if;
        if cpu_iorq_n = '0' and cpu_wr_n = '0' and cpu_a_bus = "1110111111110111" then port_eff7_reg <= cpu_do_bus; end if; --for RTC
    end if;    
end process;

rtc_a_bus  <= wait_addr;
rtc_di_bus <= wait_write; --cpu_do_bus;
debug_mc146818a_wr <= '1' when (port_bff7 = '1' and cpu_wr_n = '0') else '0';
rtc_wr_n   <= wait_start_gluclock and not (cpu_wr_n); -- '0' when (port_bff7 = '1' and cpu_wr_n = '0') else '1';
rtc_rd_n   <= '0' when (port_bff7 = '1' and cpu_rd_n = '0') else '1';
port_bff7  <= '1' when (cpu_iorq_n = '0' and cpu_a_bus = X"BFF7" and cpu_m1_n = '1' and port_eff7_reg(7) = '1') else '0';
                
turbo      <= "00"; --sysconf(1 downto 0); 

speaker    <= port_xxfe_reg(4);
tape_in_monitor <= TAPE_IN;
TAPE_OUT   <= port_xxfe_reg(3);
BUZZER     <= speaker;
saa_wr_n   <= '0' when (cpu_iorq_n = '0' and cpu_wr_n = '0' and cpu_a_bus(7 downto 0) = "11111111") else '1';

audio_mono <=     
                ("0000" & speaker & "00000000000") +
                ("00000" & tape_in_monitor & "0000000000") +                
                ("0000"  & ssg_cn0_a &     "0000") + 
                ("0000"  & ssg_cn0_b &     "0000") + 
                ("0000"  & ssg_cn0_c &     "0000") + 
                ("0000"  & ssg_cn1_a &     "0000") + 
                ("0000"  & ssg_cn1_b &     "0000") + 
                ("0000"  & ssg_cn1_c &     "0000") + 
                ("0000"  & covox_a &       "0000") + 
                ("0000"  & covox_b &       "0000") + 
                ("0000"  & covox_c &       "0000") + 
                ("0000"  & covox_d &       "0000") + 
                ("0000"  & covox_fb &      "0000") + 
                ("0000"  & saa_out_l &     "0000") +                 
                ("0000"  & saa_out_r &     "0000");

audio_l <= "0000000000000000" when loader_act = '1' or kb_wait = '1' else 
                audio_mono when soft_sw(9) = '1' else
                ("000" & speaker & "000000000000") + -- ACB: L = A + C/2
                ("00000" & tape_in_monitor & "0000000000") +    
                ("000"  & ssg_cn0_a &     "00000") + 
                ("0000"  & ssg_cn0_c &     "0000") + 
                ("000"  & ssg_cn1_a &     "00000") + 
                ("0000"  & ssg_cn1_c &     "0000") + 
                ("000"  & covox_a &       "00000") + 
                ("000"  & covox_b &       "00000") + 
                ("000"  & covox_fb &      "00000") + 
                ("000"  & saa_out_l  &    "00000") when soft_sw(7) = '0' else 
                ("000" & speaker & "000000000000") +  -- ABC: L = A + B/2
                ("00000" & tape_in_monitor & "0000000000") +    
                ("000"  & ssg_cn0_a &     "00000") + 
                ("0000"  & ssg_cn0_b &     "0000") + 
                ("000"  & ssg_cn1_a &     "00000") + 
                ("0000"  & ssg_cn1_b &     "0000") + 
                ("000"  & covox_a &       "00000") + 
                ("000"  & covox_b &       "00000") + 
                ("000"  & covox_fb &      "00000") + 
                ("000"  & saa_out_l  &    "00000");
                
audio_r <= "0000000000000000" when loader_act = '1' or kb_wait = '1' else 
                audio_mono when soft_sw(9) = '1' else
                ("000" & speaker & "000000000000") + -- ACB: R = B + C/2
                ("00000" & tape_in_monitor & "0000000000") +    
                ("000"  & ssg_cn0_b &     "00000") + 
                ("0000"  & ssg_cn0_c &     "0000") + 
                ("000"  & ssg_cn1_b &     "00000") + 
                ("0000"  & ssg_cn1_c &     "0000") + 
                ("000"  & covox_c &       "00000") + 
                ("000"  & covox_d &       "00000") + 
                ("000"  & covox_fb &      "00000") + 
                ("000"  & saa_out_r &     "00000") when soft_sw(7) = '0' else
                ("000" & speaker & "000000000000") + -- ABC: R = C + B/2
                ("00000" & tape_in_monitor & "0000000000") +    
                ("000"  & ssg_cn0_c &     "00000") + 
                ("0000"  & ssg_cn0_b &     "0000") + 
                ("000"  & ssg_cn1_c &     "00000") + 
                ("0000"  & ssg_cn1_b &     "0000") + 
                ("000"  & covox_c &       "00000") + 
                ("000"  & covox_d &       "00000") + 
                ("000"  & covox_fb &      "00000") + 
                ("000"  & saa_out_r &     "00000");

-- mixed lower bits 555 -> 333
--video_r  <= vred(1) & vred(0) & vred(0);
--video_g  <= vgrn(1) & vgrn(0) & vgrn(0);
--video_b  <= vblu(1) & vblu(0) & vblu(0);

--video_r <= vred_raw(4) & (vred_raw(3) or vred_raw(2)) & (vred_raw(1) or vred_raw(0));
--video_g <= vgrn_raw(4) & (vgrn_raw(3) or vgrn_raw(2)) & (vgrn_raw(1) or vgrn_raw(0));
--video_b <= vblu_raw(4) & (vblu_raw(3) or vblu_raw(2)) & (vblu_raw(1) or vblu_raw(0));

video_r <= debug_rgb(8 downto 6);
video_g <= debug_rgb(5 downto 3);
video_b <= debug_rgb(2 downto 0);

video_hs <= hsync_ts;
video_vs <= vsync_ts;

-- TODO
-- порты Profi HDD
--hdd_profi_ebl_n	<='0' when (cpu_a_bus(7)='1' and cpu_a_bus(4 downto 0)="01011" and cpu_iorq_n='0') else '1';
--hdd_wwc_n 	<='0' when (cpu_wr_n='0' and cpu_a_bus(7 downto 0)=x"CB" and cpu_iorq_n='0') else '1'; -- Write High byte from Data bus to "Write register"
--hdd_wwe_n 	<='0' when (cpu_wr_n='0' and cpu_a_bus(7 downto 0)=x"EB" and cpu_iorq_n='0') else '1'; -- Read High byte from "Write register" to HDD bus
--hdd_rww_n 	<='0' when (cpu_wr_n='1' and cpu_a_bus(7 downto 0)=x"CB" and cpu_iorq_n='0') else '1'; -- Selector Low byte Data bus Buffer Direction: 1 - to HDD bus, 0 - to Data bus
--hdd_rwe_n 	<='0' when (cpu_wr_n='1' and cpu_a_bus(7 downto 0)="EB" and cpu_iorq_n='0') else '1'; -- Read High byte from "Read register" to Data bus
--hdd_cs3fx_n <='0' when (cpu_wr_n='0' and cpu_a_bus(7 downto 0)="AB" and cpu_iorq_n='0') else '1';
--hdd_active <= not(hdd_wwc_n and hdd_wwe_n and hdd_rww_n and hdd_rwe_n);

-- FDD
RT_F2_1      <='0' when (cpu_a_bus(7 downto 5)="001" and cpu_a_bus(1 downto 0)="11" and cpu_iorq_n='0') and dos_act='1' and rom14='0' else '1'; --6D
RT_F2_2      <='1'; --75
RT_F2_3      <='0' when cpu_a_bus(7 downto 5)="111" and cpu_a_bus(1 downto 0)="11" and cpu_iorq_n='0' and dos_act='1' and rom14='1' else '1'; --F3 and FB
fdd_cs_pff_n <= RT_F2_1 and RT_F2_2 and RT_F2_3;

RT_F1_1      <= '1';
RT_F1_2      <= '0' when cpu_a_bus(7)='0' and cpu_a_bus(1 downto 0)="11" and cpu_iorq_n='0' and dos_act='1' and rom14='1' else '1';
RT_F1        <= RT_F1_1 and RT_F1_2;
P0           <='0' when (cpu_a_bus(7)='1' and cpu_a_bus(4 downto 0)="00011" and cpu_iorq_n='0') and dos_act='1' and rom14='0' else '1';
fdd_cs_n     <= RT_F1 and P0;
     
dos_act      <= dos; -- TODO
rom14        <= memconf(0); -- TODO

end rtl;
