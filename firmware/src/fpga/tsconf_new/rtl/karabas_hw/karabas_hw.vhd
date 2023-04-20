library IEEE; 
use IEEE.std_logic_1164.all; 
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all; 

entity karabas_hw is
    generic (
        enable_osd_overlay : boolean := true;  -- osd overlay (enabled by default)
		  enable_osd_icons   : boolean := false
    );
port (
    -- Clock (50MHz)
    CLK_50MHZ   : in std_logic;

    -- SRAM (2MB 2x8bit)
    SRAM_D      : inout std_logic_vector(7 downto 0);
    SRAM_A      : buffer std_logic_vector(20 downto 0);
    SRAM_NWR    : buffer std_logic;
    SRAM_NRD    : buffer std_logic;
    SRAM_NCE1   : out std_logic := '0'; -- /ramce1
    SRAM_NCE2   : out std_logic := '1'; -- /ramce2
    SRAM_NCE3   : out std_logic := '1'; -- /ramce3
    
    -- SPI FLASH (M25P16) / SD
    SPI_MISO    : in std_logic;  -- MISO (common for Flash and SD)
    SPI_SCK     : out std_logic; -- SCK (shared clock for Flash and SD)
    FLASH_MOSI  : out std_logic; -- MOSI (flash SI)
    FLASH_NCS   : out std_logic; -- /CS  (flash CS)
    
    -- SD/MMC Card
    SD_SCK      : in std_logic; -- input from SD SCK (will be shared to SPI_SCK)
    -- other SD signals, like SD_MOSI, SD_NCS should be used directly from the top level, as well as ASDO as MISO
    
    -- VGA 
    VGA_R       : out std_logic_vector(2 downto 0);
    VGA_G       : out std_logic_vector(2 downto 0);
    VGA_B       : out std_logic_vector(2 downto 0);
    VGA_HS      : out std_logic;
    VGA_VS      : out std_logic;
        
    -- AVR SPI slave
    AVR_SCK     : in std_logic;
    AVR_MOSI    : in std_logic;
    AVR_MISO    : out std_logic := 'Z';
    AVR_NCS     : in std_logic;
    
    -- Parallel bus for CPLD
    BUS_NRESET  : out std_logic;
    BUS_CLK     : out std_logic;
    BUS_CLK2    : out std_logic;
    BUS_SDIR    : out std_logic;
    BUS_SA      : out std_logic_vector(1 downto 0);
    BUS_SD      : inout std_logic_vector(15 downto 0) := "ZZZZZZZZZZZZZZZZ";
    
    -- I2S Sound TDA1543
    SND_BS      : out std_logic;
    SND_WS      : out std_logic;
    SND_DAT     : out std_logic;    
    
    -- Clock interface
    CLK_28      : out std_logic;
    CLK_14      : out std_logic;
    CLK_84      : out std_logic;
    CLK_8       : out std_logic;

    -- RAM 4MB interface
    RAM_A       : in std_logic_vector(21 downto 0);
    RAM_DI      : in std_logic_vector(7 downto 0);
    RAM_DO      : out std_logic_vector(7 downto 0);
    RAM_NRD     : in std_logic := '1';
    RAM_NWR     : in std_logic := '1';

    -- ROM 2MB interface
    ROM_A       : in std_logic_vector(20 downto 0);
    ROM_DO      : out std_logic_vector(7 downto 0);
    ROM_NRD     : in std_logic := '1';

    -- KB interface
    KB_A        : in std_logic_vector(15 downto 8);
    KB_DO       : out std_logic_vector(5 downto 0);
    KB_SCANCODE : out std_logic_vector(9 downto 0);

    -- JOY interface
    JOY_DO      : out std_logic_vector(7 downto 0);

    -- Mouse interface
    MS_X        : out std_logic_vector(7 downto 0); 
    MS_Y        : out std_logic_vector(7 downto 0); 
    MS_Z        : out std_logic_vector(3 downto 0); 
    MS_B        : out std_logic_vector(2 downto 0); 
--    MS_PRESENT  : out std_logic;
--    MS_EVENT    : out std_logic;
--    MS_DELTA_X  : out signed(7 downto 0) := "00000000";
--    MS_DELTA_Y  : out signed(7 downto 0) := "00000000";
    
    -- RTC interface
    RTC_A       : in std_logic_vector(7 downto 0);
    RTC_DI      : in std_logic_vector(7 downto 0);
    RTC_DO      : out std_logic_vector(7 downto 0);
    RTC_NRD     : in std_logic;
    RTC_NWR     : in std_logic;

    -- Audio interface
    AUDIO_L     : in std_logic_vector(15 downto 0);
    AUDIO_R     : in std_logic_vector(15 downto 0);

    -- Video interface
    VIDEO_R     : in std_logic_vector(2 downto 0);
    VIDEO_G     : in std_logic_vector(2 downto 0);
    VIDEO_B     : in std_logic_vector(2 downto 0);
    VIDEO_HS    : in std_logic;
    VIDEO_VS    : in std_logic;

    VIDEO_HCNT  : in std_logic_vector(9 downto 0);
    VIDEO_VCNT  : in std_logic_vector(8 downto 0);
    VIDEO_PAPER : in std_logic;
    VIDEO_BLINK : in std_logic;

    -- Misc interface
    ARESET      : buffer std_logic := '0';
    KB_RESET    : buffer std_logic := '0';
    KB_WAIT     : out std_logic := '0';
    KB_MAGIC    : out std_logic := '0';
    KB_TURBO    : out std_logic_vector(1 downto 0) := "00";
    KB_LOADED   : out std_logic := '0';
    LOADER_ACT  : buffer std_logic := '1';
    LOADER_RESET: buffer std_logic := '0';
    SOFT_SW     : buffer std_logic_vector(1 to 10);
     
     -- Bus interface (HDD/FDD)
     CPU_A_BUS  : in std_logic_vector(15 downto 0);
     CPU_DO_BUS : in std_logic_vector(7 downto 0);
    CPU_RD_N    : in std_logic;
    CPU_WR_N    : in std_logic;
    HDD_CS_N    : in std_logic;
     HDD_WWC    : in std_logic;
     HDD_WWE    : in std_logic;
    HDD_RWW     : in std_logic;
    HDD_RWE     : in std_logic;
    HDD_CS3FX   : in std_logic;
     FDC_STEP   : in std_logic;
     FDC_CSFF   : in std_logic;
     FDC_NCS    : in std_logic;
    CPLD_DO     : out std_logic_vector(7 downto 0);
     ICON_SD    : in std_logic;
     ICON_CF    : in std_logic;
     ICON_FDD   : in std_logic
);
end karabas_hw;

architecture rtl of karabas_hw is

-- Board config 
signal cfg              : std_logic_vector(7 downto 0);

-- Keyboard interconnects
signal kb_mode          : std_logic := '1'; -- 1 - profi, 0 - classic zx spectrum
signal joy_type         : std_logic := '0'; -- 0 - atari, 1 - sega
signal kb_screen_mode   : std_logic_vector(1 downto 0) := "00"; 


-- OSD overlay interconnects
signal osd_overlay      : std_logic := '0';
signal osd_popup        : std_logic := '0';
signal osd_command      : std_logic_vector(15 downto 0);

-- CLOCK
signal locked           : std_logic := '0';
signal clk84            : std_logic := '0';
signal clk28            : std_logic := '0';
signal clk8             : std_logic := '0';
signal clk_bus          : std_logic := '0';
signal clk_bus_port     : std_logic := '0';
signal clk_div2         : std_logic := '0';

-- System
signal reset            : std_logic;
signal locked_tri       : std_logic := '0';
signal max_turbo        : std_logic_vector(1 downto 0) := "11";

-- Loader
signal loader_ram_a     : std_logic_vector(20 downto 0);
signal loader_ram_do    : std_logic_vector(7 downto 0);
signal loader_ram_wr    : std_logic;

-- Parallel flash interface
signal flash_a_bus      : std_logic_vector(23 downto 0);
signal flash_di_bus     : std_logic_vector(7 downto 0);
signal flash_do_bus     : std_logic_vector(7 downto 0);
signal flash_wr_n       : std_logic := '1';
signal flash_rd_n       : std_logic := '1';
signal flash_er_n       : std_logic := '1';
signal flash_busy       : std_logic := '1';
signal flash_rdy        : std_logic := '0';

-- SPI flash / SD
signal flash_clk        : std_logic;

signal vid_rgb_osd      : std_logic_vector(8 downto 0);

begin

-- PLL1
U01: entity work.altpll0
port map (
    inclk0        => CLK_50MHZ, -- 50Mhz
    locked        => locked,
    c0            => clk28,
    c1            => clk8,
    c2            => clk84
);

-- SPI flash parallel interface
U02: entity work.flash
port map(
    CLK           => clk_bus,
    RESET         => areset,
    
    A             => flash_a_bus,
    DO            => flash_do_bus,
    DI            => (others => '0'),
    WR_N          => '1',
    RD_N          => flash_rd_n,
    ER_N          => '1',

    DATA0         => SPI_MISO,
    NCSO          => FLASH_NCS,
    DCLK          => flash_clk,
    ASDO          => FLASH_MOSI,

    BUSY          => flash_busy,
    DATA_READY    => flash_rdy
);

-- Loader
U03: entity work.loader
port map(
    CLK           => clk_bus,
    RESET         => areset,
    
    RAM_A         => loader_ram_a,
    RAM_DO        => loader_ram_do,
    RAM_WR        => loader_ram_wr,
    
    CFG           => cfg,

    FLASH_A       => flash_a_bus,
    FLASH_DO      => flash_do_bus,
    FLASH_RD_N    => flash_rd_n,    
    FLASH_BUSY    => flash_busy,
    FLASH_READY   => flash_rdy,
    
    LOADER_ACTIVE => loader_act,
    LOADER_RESET  => loader_reset
);    

-- memory manager
U04: entity work.memory 
port map ( 
    -- clock
    CLK           => clk_bus,
    
    -- loader signals
    LOADER_ACT    => loader_act,
    LOADER_A      => loader_ram_a,
    LOADER_D      => loader_ram_do,
    LOADER_WR     => loader_ram_wr,

    -- physical ram 
    MA            => SRAM_A,
    MD            => SRAM_D,
    N_MRD         => SRAM_NRD,
    N_MWR         => SRAM_NWR,
    N_CE1         => SRAM_NCE1,
    N_CE2         => SRAM_NCE2,
    N_CE3         => SRAM_NCE3,

    -- interface ram
    RAM_A         => RAM_A,
    RAM_DI        => RAM_DI, 
    RAM_DO        => RAM_DO,
    RAM_NRD       => RAM_NRD,
    RAM_NWR       => RAM_NWR,

    -- interface rom
    ROM_A         => ROM_A,
    ROM_DO        => ROM_DO,
    ROM_NRD       => ROM_NRD
);    

-- osd overlay
G_OVERLAY: if enable_osd_overlay generate
U05: entity work.overlay
generic map (
	enable_osd_icons => enable_osd_icons
)
port map (
    CLK           => clk_bus,
    CLK2          => clk_div2,

    RGB_I         => VIDEO_R & VIDEO_G & VIDEO_B,
    RGB_O         => vid_rgb_osd,
    HCNT_I        => VIDEO_HCNT,
    VCNT_I        => VIDEO_VCNT,
    PAPER_I       => VIDEO_PAPER,
    BLINK         => VIDEO_BLINK,

    -- icons
    STATUS_FD     => ICON_FDD,
    STATUS_SD     => ICON_SD,
    STATUS_CF     => ICON_CF,
    OSD_ICONS     => '0',
    
    -- osd overlay
    OSD_OVERLAY   => osd_overlay,
    OSD_POPUP     => osd_popup,
    OSD_COMMAND   => osd_command
);
end generate G_OVERLAY;

G_NO_OVERLAY: if not enable_osd_overlay generate 
    -- заглушка на OSD
    vid_rgb_osd <= VIDEO_R & VIDEO_G & VIDEO_B;
end generate G_NO_OVERLAY;

---- Scandoubler    
--U06: entity work.vga_pal 
--port map (
--    RGB_IN        => vid_rgb_osd,
--    KSI_IN        => VIDEO_VS,
--    SSI_IN        => VIDEO_HS,
--    CLK           => clk_div2,
--    CLK2          => clk_bus,
--    EN            => '1', --not(soft_sw(1));
--    RGB_O(8 downto 6)    => VGA_R,
--    RGB_O(5 downto 3)    => VGA_G,
--    RGB_O(2 downto 0)    => VGA_B,
--    VSYNC_VGA     => VGA_VS,
--    HSYNC_VGA     => VGA_HS
--);

-- заглушка на скандаблер
VGA_R  <= vid_rgb_osd(8 downto 6);
VGA_G  <= vid_rgb_osd(5 downto 3);
VGA_B  <= vid_rgb_osd(2 downto 0);
VGA_VS <= VIDEO_VS;
VGA_HS <= VIDEO_HS;

-- AVR Keyboard / mouse / rtc
U07: entity work.avr
port map (
     CLK          => clk_bus,
     N_RESET      => not areset,

     AVR_MOSI     => AVR_MOSI,
     AVR_MISO     => AVR_MISO,
     AVR_SCK      => AVR_SCK,
     AVR_SS       => AVR_NCS,    

     A            => KB_A,
     KB           => KB_DO,
    
     
     MS_X         => MS_X,
     MS_Y         => MS_Y,
     MS_BTNS      => MS_B,
     MS_Z         => MS_Z,
     MS_PRESET    => open, --MS_PRESENT,
     MS_EVENT     => open, -- MS_EVENT,
     MS_DELTA_X   => open, --MS_DELTA_X,
     MS_DELTA_Y   => open, --MS_DELTA_Y,
     
     RTC_A        => RTC_A,
     RTC_DI       => RTC_DI,
     RTC_DO       => RTC_DO,
     RTC_CS       => '1',
     RTC_WR_N     => RTC_NWR,
     
     LOADER_DONE  => not loader_act,
     
     LED1         => '0',
     LED2         => '0',
     LED1_OWR     => '0',
     LED2_OWR     => '0',
     
     CFG          => cfg,
     
     SOFT_SW      => SOFT_SW,
     
     KB_MODE      => kb_mode,     
     KB_SCANCODE  => KB_SCANCODE,

     RESET        => KB_RESET,
     TURBO        => KB_TURBO,
     MAGICK       => KB_MAGIC,
     WAIT_CPU     => KB_WAIT,
     JOY_TYPE     => joy_type,
     OSD_OVERLAY  => osd_overlay,
     OSD_POPUP    => osd_popup,
     OSD_COMMAND  => osd_command,
     MAX_TURBO    => max_turbo,
     SCREEN_MODE  => kb_screen_mode,     
     LOADED       => KB_LOADED,
     
     JOY          => JOY_DO
);
    
-- TDA1543
U08: entity work.tda1543
port map (
    RESET         => areset,
    CLK_BUS       => clk8,
    DAC_TYPE      => cfg(0), -- 0 = TDA1543, 1 = TDA1543A
    CS            => '1',
    DATA_L        => AUDIO_L,
    DATA_R        => AUDIO_R,
    BCK           => SND_BS,
    WS            => SND_WS,
    DATA          => SND_DAT
);

-- FDD / HDD controllers
U09: entity work.bus_port
port map (
    CLK           => clk_bus_port,
    CLK2          => clk8,
    CLK_BUS       => clk_bus,
    RESET         => reset,
    
    SD            => BUS_SD,
    SA            => BUS_SA,
    CPLD_CLK      => BUS_CLK,
    CPLD_CLK2     => BUS_CLK2,
    NRESET        => BUS_NRESET,

    BUS_A         => cpu_a_bus(10 downto 8) & cpu_a_bus(6 downto 5),
    BUS_DI        => cpu_do_bus,
    BUS_DO        => CPLD_DO,
    BUS_RD_N      => CPU_RD_N,
    BUS_WR_N      => CPU_WR_N,
    BUS_HDD_CS_N  => HDD_CS_N,
    BUS_WWC       => HDD_WWC,
    BUS_WWE       => HDD_WWE,
    BUS_RWW       => HDD_RWW,
    BUS_RWE       => HDD_RWE,
    BUS_CS3FX     => HDD_CS3FX,
    BUS_FDC_STEP  => FDC_STEP,
    BUS_CSFF      => FDC_CSFF,
    BUS_FDC_NCS   => FDC_NCS
);

--------------------------------------------------------------------------------------------------
    
clk_bus <= clk28;
clk_bus_port <= clk84;
CLK_28 <= clk28;
CLK_14 <= clk_div2;
CLK_84 <= clk84;
CLK_8  <= clk8;

SPI_SCK <= flash_clk when loader_act = '1' else SD_SCK;
reset <= areset or kb_reset or loader_reset or loader_act;
--areset <= locked;

process (clk_bus)
begin 
    if (clk_bus'event and clk_bus = '1') then 
        clk_div2 <= not(clk_div2);
    end if;
end process;

-- areset signal
process(clk_bus)
begin
    if rising_edge(clk_bus) then
        if (locked_tri = '0') then 
            locked_tri <= '1';
            areset <= '1';
        else 
            areset <= '0';
        end if;            
    end if;
end process;
    
end rtl;
