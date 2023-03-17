// Verilog netlist created by TD v4.6.18154
// Mon Jan 16 12:35:55 2023

`timescale 1ns / 1ps
module karabas_pro  // ../../rtl/karabas_pro.vhd(31)
  (
  AVR_MOSI,
  AVR_NCS,
  AVR_SCK,
  CLK_50MHZ,
  DATA0,
  FDC_STEP,
  PIN_25,
  SD_NDET,
  TAPE_IN,
  UART_RX,
  ASDO,
  AVR_MISO,
  BUZZER,
  CPLD_CLK,
  CPLD_CLK2,
  DCLK,
  NCSO,
  NRESET,
  PIN_120,
  PIN_121,
  PIN_138,
  PIN_141,
  PIN_7,
  SA,
  SDIR,
  SD_NCS,
  SND_BS,
  SND_DAT,
  SND_WS,
  SRAM_A,
  SRAM_NRD,
  SRAM_NWR,
  TAPE_OUT,
  UART_CTS,
  UART_TX,
  VGA_B,
  VGA_G,
  VGA_HS,
  VGA_R,
  VGA_VS,
  SD,
  SD_MOSI,
  SRAM_D
  );

  input AVR_MOSI;  // ../../rtl/karabas_pro.vhd(68)
  input AVR_NCS;  // ../../rtl/karabas_pro.vhd(70)
  input AVR_SCK;  // ../../rtl/karabas_pro.vhd(67)
  input CLK_50MHZ;  // ../../rtl/karabas_pro.vhd(41)
  input DATA0;  // ../../rtl/karabas_pro.vhd(50)
  input FDC_STEP;  // ../../rtl/karabas_pro.vhd(95)
  input PIN_25;  // ../../rtl/karabas_pro.vhd(88)
  input SD_NDET;  // ../../rtl/karabas_pro.vhd(57)
  input TAPE_IN;  // ../../rtl/karabas_pro.vhd(97)
  input UART_RX;  // ../../rtl/karabas_pro.vhd(102)
  output ASDO;  // ../../rtl/karabas_pro.vhd(53)
  output AVR_MISO;  // ../../rtl/karabas_pro.vhd(69)
  output BUZZER;  // ../../rtl/karabas_pro.vhd(99)
  output CPLD_CLK;  // ../../rtl/karabas_pro.vhd(74)
  output CPLD_CLK2;  // ../../rtl/karabas_pro.vhd(75)
  output DCLK;  // ../../rtl/karabas_pro.vhd(52)
  output NCSO;  // ../../rtl/karabas_pro.vhd(51)
  output NRESET;  // ../../rtl/karabas_pro.vhd(73)
  output PIN_120;  // ../../rtl/karabas_pro.vhd(92)
  output PIN_121;  // ../../rtl/karabas_pro.vhd(91)
  output PIN_138;  // ../../rtl/karabas_pro.vhd(87)
  output PIN_141;  // ../../rtl/karabas_pro.vhd(86)
  output PIN_7;  // ../../rtl/karabas_pro.vhd(93)
  output [1:0] SA;  // ../../rtl/karabas_pro.vhd(77)
  output SDIR;  // ../../rtl/karabas_pro.vhd(76)
  output SD_NCS;  // ../../rtl/karabas_pro.vhd(56)
  output SND_BS;  // ../../rtl/karabas_pro.vhd(81)
  output SND_DAT;  // ../../rtl/karabas_pro.vhd(83)
  output SND_WS;  // ../../rtl/karabas_pro.vhd(82)
  output [20:0] SRAM_A;  // ../../rtl/karabas_pro.vhd(45)
  output SRAM_NRD;  // ../../rtl/karabas_pro.vhd(47)
  output SRAM_NWR;  // ../../rtl/karabas_pro.vhd(46)
  output TAPE_OUT;  // ../../rtl/karabas_pro.vhd(98)
  output UART_CTS;  // ../../rtl/karabas_pro.vhd(104)
  output UART_TX;  // ../../rtl/karabas_pro.vhd(103)
  output [2:0] VGA_B;  // ../../rtl/karabas_pro.vhd(62)
  output [2:0] VGA_G;  // ../../rtl/karabas_pro.vhd(61)
  output VGA_HS;  // ../../rtl/karabas_pro.vhd(63)
  output [2:0] VGA_R;  // ../../rtl/karabas_pro.vhd(60)
  output VGA_VS;  // ../../rtl/karabas_pro.vhd(64)
  inout [15:0] SD;  // ../../rtl/karabas_pro.vhd(78)
  inout SD_MOSI;  // ../../rtl/karabas_pro.vhd(96)
  inout [7:0] SRAM_D;  // ../../rtl/karabas_pro.vhd(44)

  parameter enable_2port_vram = false;
  parameter enable_osd_overlay = true;
  parameter enable_saa1099 = false;
  parameter enable_zxuno_uart = true;
  parameter enable_zxuno_uart2 = false;
  wire [1:0] WAIT_C;  // ../../rtl/karabas_pro.vhd(463)
  wire [15:0] audio_l;  // ../../rtl/karabas_pro.vhd(304)
  wire [15:0] audio_mono;  // ../../rtl/karabas_pro.vhd(306)
  wire [15:0] audio_r;  // ../../rtl/karabas_pro.vhd(305)
  wire [7:0] board_revision;  // ../../rtl/karabas_pro.vhd(112)
  wire [7:0] covox_a;  // ../../rtl/karabas_pro.vhd(297)
  wire [7:0] covox_b;  // ../../rtl/karabas_pro.vhd(298)
  wire [7:0] covox_c;  // ../../rtl/karabas_pro.vhd(299)
  wire [7:0] covox_d;  // ../../rtl/karabas_pro.vhd(300)
  wire [7:0] covox_fb;  // ../../rtl/karabas_pro.vhd(301)
  wire [7:0] cpld_do;  // ../../rtl/karabas_pro.vhd(421)
  wire [15:0] cpu_a_bus;  // ../../rtl/karabas_pro.vhd(117)
  wire [7:0] cpu_di_bus;  // ../../rtl/karabas_pro.vhd(119)
  wire [7:0] cpu_do_bus;  // ../../rtl/karabas_pro.vhd(118)
  wire [3:0] ena_cnt;  // ../../rtl/karabas_pro.vhd(334)
  wire [1:0] ext_rom_bank;  // ../../rtl/karabas_pro.vhd(355)
  wire [1:0] ext_rom_bank_pq;  // ../../rtl/karabas_pro.vhd(356)
  wire [23:0] flash_a_bus;  // ../../rtl/karabas_pro.vhd(373)
  wire [7:0] flash_di_bus;  // ../../rtl/karabas_pro.vhd(374)
  wire [7:0] flash_do_bus;  // ../../rtl/karabas_pro.vhd(375)
  wire [23:0] host_flash_a_bus;  // ../../rtl/karabas_pro.vhd(383)
  wire [7:0] host_flash_di_bus;  // ../../rtl/karabas_pro.vhd(384)
  wire [7:0] joy_bus;  // ../../rtl/karabas_pro.vhd(185)
  wire [5:0] kb_do_bus;  // ../../rtl/karabas_pro.vhd(172)
  wire [1:0] kb_screen_mode;  // ../../rtl/karabas_pro.vhd(182)
  wire [1:0] kb_turbo;  // ../../rtl/karabas_pro.vhd(176)
  wire [1:0] kb_turbo_old;  // ../../rtl/karabas_pro.vhd(177)
  wire [23:0] loader_flash_a;  // ../../rtl/karabas_pro.vhd(366)
  wire [20:0] loader_ram_a;  // ../../rtl/karabas_pro.vhd(362)
  wire [7:0] loader_ram_do;  // ../../rtl/karabas_pro.vhd(361)
  wire [1:0] max_turbo;  // ../../rtl/karabas_pro.vhd(357)
  wire [7:0] mc146818_a_bus;  // ../../rtl/karabas_pro.vhd(234)
  wire [7:0] mc146818_do_bus;  // ../../rtl/karabas_pro.vhd(235)
  wire [2:0] ms_b;  // ../../rtl/karabas_pro.vhd(191)
  wire [7:0] ms_delta_x;  // ../../rtl/karabas_pro.vhd(194)
  wire [7:0] ms_delta_y;  // ../../rtl/karabas_pro.vhd(195)
  wire [7:0] ms_x;  // ../../rtl/karabas_pro.vhd(188)
  wire [7:0] ms_y;  // ../../rtl/karabas_pro.vhd(189)
  wire [3:0] ms_z;  // ../../rtl/karabas_pro.vhd(190)
  wire [8:0] n13;
  wire [7:0] n134;
  wire [3:0] n17;
  wire [7:0] n200;
  wire [7:0] n202;
  wire [5:0] n207;
  wire [1:0] n210;
  wire [7:0] n212;
  wire [7:0] n214;
  wire [7:0] n216;
  wire [7:0] n218;
  wire [7:0] n220;
  wire [7:0] n222;
  wire [7:0] n224;
  wire [1:0] n227;
  wire [7:0] n228;
  wire [1:0] n229;
  wire [1:0] n230;
  wire [7:0] n243;
  wire [1:0] n245;
  wire [8:0] n247;
  wire [9:0] n249;
  wire [10:0] n251;
  wire [11:0] n252;
  wire [11:0] n253;
  wire [11:0] n254;
  wire [11:0] n255;
  wire [11:0] n256;
  wire [11:0] n257;
  wire [11:0] n258;
  wire [11:0] n259;
  wire [2:0] n263;
  wire [8:0] n265;
  wire [9:0] n267;
  wire [11:0] n268;
  wire [10:0] n269;
  wire [10:0] n270;
  wire [10:0] n271;
  wire [10:0] n272;
  wire [8:0] n274;
  wire [9:0] n276;
  wire [11:0] n277;
  wire [10:0] n278;
  wire [10:0] n279;
  wire [10:0] n280;
  wire [10:0] n281;
  wire [15:0] n282;
  wire [15:0] n283;
  wire [2:0] n285;
  wire [8:0] n287;
  wire [9:0] n289;
  wire [11:0] n290;
  wire [10:0] n291;
  wire [10:0] n292;
  wire [10:0] n293;
  wire [10:0] n294;
  wire [2:0] n296;
  wire [8:0] n298;
  wire [9:0] n300;
  wire [11:0] n301;
  wire [10:0] n302;
  wire [10:0] n303;
  wire [10:0] n304;
  wire [10:0] n305;
  wire [15:0] n306;
  wire [15:0] n307;
  wire [2:0] n327;
  wire [7:0] n423;
  wire [7:0] n424;
  wire [7:0] n425;
  wire [7:0] n426;
  wire [7:0] n427;
  wire [7:0] n428;
  wire [7:0] n429;
  wire [7:0] n430;
  wire [7:0] n431;
  wire [7:0] n432;
  wire [7:0] n433;
  wire [7:0] n434;
  wire [7:0] n435;
  wire [7:0] n436;
  wire [7:0] n437;
  wire [7:0] n438;
  wire [7:0] n439;
  wire [7:0] n440;
  wire [7:0] n441;
  wire [7:0] n442;
  wire [7:0] n443;
  wire [7:0] n444;
  wire [7:0] n445;
  wire [1:0] n57;
  wire [1:0] n58;
  wire [1:0] n59;
  wire [1:0] n60;
  wire [15:0] osd_command;  // ../../rtl/karabas_pro.vhd(218)
  wire [7:0] port_008b_reg;  // ../../rtl/karabas_pro.vhd(142)
  wire [7:0] port_018b_reg;  // ../../rtl/karabas_pro.vhd(143)
  wire [7:0] port_028b_reg;  // ../../rtl/karabas_pro.vhd(144)
  wire [7:0] port_7ffd_reg;  // ../../rtl/karabas_pro.vhd(137)
  wire [7:0] port_dffd_reg;  // ../../rtl/karabas_pro.vhd(138)
  wire [7:0] port_xx67_reg;  // ../../rtl/karabas_pro.vhd(393)
  wire [7:0] port_xx87_reg;  // ../../rtl/karabas_pro.vhd(389)
  wire [7:0] port_xxA7_reg;  // ../../rtl/karabas_pro.vhd(390)
  wire [7:0] port_xxC7_reg;  // ../../rtl/karabas_pro.vhd(391)
  wire [7:0] port_xxE7_reg;  // ../../rtl/karabas_pro.vhd(392)
  wire [7:0] port_xxfe_reg;  // ../../rtl/karabas_pro.vhd(136)
  wire [7:0] ram_do_bus;  // ../../rtl/karabas_pro.vhd(350)
  wire [4:0] ram_ext;  // ../../rtl/karabas_pro.vhd(349)
  wire [7:0] saa_out_l;  // ../../rtl/karabas_pro.vhd(311)
  wire [7:0] saa_out_r;  // ../../rtl/karabas_pro.vhd(312)
  wire [7:0] selector;  // ../../rtl/karabas_pro.vhd(346)
  wire [7:0] serial_ms_do_bus;  // ../../rtl/karabas_pro.vhd(424)
  wire [1:10] soft_sw;  // ../../rtl/karabas_pro.vhd(447)
  wire [7:0] ssg_cn0_a;  // ../../rtl/karabas_pro.vhd(283)
  wire [7:0] ssg_cn0_b;  // ../../rtl/karabas_pro.vhd(284)
  wire [7:0] ssg_cn0_bus;  // ../../rtl/karabas_pro.vhd(282)
  wire [7:0] ssg_cn0_c;  // ../../rtl/karabas_pro.vhd(285)
  wire [7:0] ssg_cn1_a;  // ../../rtl/karabas_pro.vhd(287)
  wire [7:0] ssg_cn1_b;  // ../../rtl/karabas_pro.vhd(288)
  wire [7:0] ssg_cn1_bus;  // ../../rtl/karabas_pro.vhd(286)
  wire [7:0] ssg_cn1_c;  // ../../rtl/karabas_pro.vhd(289)
  wire [1:0] turbo_mode;  // ../../rtl/karabas_pro.vhd(163)
  wire [13:0] vid_a_bus;  // ../../rtl/karabas_pro.vhd(198)
  wire [7:0] vid_attr;  // ../../rtl/karabas_pro.vhd(205)
  wire [7:0] vid_do_bus;  // ../../rtl/karabas_pro.vhd(200)
  wire [9:0] vid_hcnt;  // ../../rtl/karabas_pro.vhd(209)
  wire [8:0] vid_rgb;  // ../../rtl/karabas_pro.vhd(206)
  wire [8:0] vid_rgb_osd;  // ../../rtl/karabas_pro.vhd(207)
  wire [8:0] vid_vcnt;  // ../../rtl/karabas_pro.vhd(210)
  wire [7:0] zc_do_bus;  // ../../rtl/karabas_pro.vhd(221)
  wire [7:0] zxuno_addr;  // ../../rtl/karabas_pro.vhd(408)
  wire [7:0] zxuno_addr_to_cpu;  // ../../rtl/karabas_pro.vhd(411)
  wire [7:0] zxuno_uart2_do_bus;  // ../../rtl/karabas_pro.vhd(414)
  wire [7:0] zxuno_uart_do_bus;  // ../../rtl/karabas_pro.vhd(412)
  wire P0;  // ../../rtl/karabas_pro.vhd(277)
  wire RT_F1;  // ../../rtl/karabas_pro.vhd(276)
  wire RT_F1_1;  // ../../rtl/karabas_pro.vhd(274)
  wire RT_F1_2;  // ../../rtl/karabas_pro.vhd(275)
  wire RT_F2_1;  // ../../rtl/karabas_pro.vhd(270)
  wire RT_F2_2;  // ../../rtl/karabas_pro.vhd(271)
  wire RT_F2_3;  // ../../rtl/karabas_pro.vhd(272)
  wire WAIT_C_STOP;  // ../../rtl/karabas_pro.vhd(466)
  wire WAIT_EN;  // ../../rtl/karabas_pro.vhd(465)
  wire WAIT_IO;  // ../../rtl/karabas_pro.vhd(464)
  wire areset;  // ../../rtl/karabas_pro.vhd(338)
  wire audio_dac_type;  // ../../rtl/karabas_pro.vhd(307)
  wire blink;  // ../../rtl/karabas_pro.vhd(213)
  wire board_reset;  // ../../rtl/karabas_pro.vhd(449)
  wire clk_112;  // ../../rtl/karabas_pro.vhd(315)
  wire clk_24;  // ../../rtl/karabas_pro.vhd(319)
  wire clk_28;  // ../../rtl/karabas_pro.vhd(318)
  wire clk_72;  // ../../rtl/karabas_pro.vhd(317)
  wire clk_8;  // ../../rtl/karabas_pro.vhd(320)
  wire clk_84;  // ../../rtl/karabas_pro.vhd(316)
  wire clk_bus;  // ../../rtl/karabas_pro.vhd(321)
  wire clk_bus_port;  // ../../rtl/karabas_pro.vhd(322)
  wire clk_cpu;  // ../../rtl/karabas_pro.vhd(345)
  wire clk_div2;  // ../../rtl/karabas_pro.vhd(323)
  wire clk_div4;  // ../../rtl/karabas_pro.vhd(324)
  wire count_block;  // ../../rtl/karabas_pro.vhd(454)
  wire cpm;  // ../../rtl/karabas_pro.vhd(432)
  wire cpu_int_n;  // ../../rtl/karabas_pro.vhd(124)
  wire cpu_inta_n;  // ../../rtl/karabas_pro.vhd(125)
  wire cpu_iorq_n;  // ../../rtl/karabas_pro.vhd(121)
  wire cpu_m1_n;  // ../../rtl/karabas_pro.vhd(126)
  wire cpu_mreq_n;  // ../../rtl/karabas_pro.vhd(120)
  wire cpu_nmi_n;  // ../../rtl/karabas_pro.vhd(132)
  wire cpu_rd_n;  // ../../rtl/karabas_pro.vhd(123)
  wire cpu_reset_n;  // ../../rtl/karabas_pro.vhd(115)
  wire cpu_wait_n;  // ../../rtl/karabas_pro.vhd(133)
  wire cpu_wr_n;  // ../../rtl/karabas_pro.vhd(122)
  wire cs_008b;  // ../../rtl/karabas_pro.vhd(256)
  wire cs_018b;  // ../../rtl/karabas_pro.vhd(257)
  wire cs_028b;  // ../../rtl/karabas_pro.vhd(258)
  wire cs_7ffd;  // ../../rtl/karabas_pro.vhd(244)
  wire cs_dffd;  // ../../rtl/karabas_pro.vhd(245)
  wire cs_fffd;  // ../../rtl/karabas_pro.vhd(246)
  wire cs_rtc_as;  // ../../rtl/karabas_pro.vhd(255)
  wire cs_rtc_ds;  // ../../rtl/karabas_pro.vhd(254)
  wire cs_xx67;  // ../../rtl/karabas_pro.vhd(253)
  wire cs_xx7e;  // ../../rtl/karabas_pro.vhd(248)
  wire cs_xx87;  // ../../rtl/karabas_pro.vhd(249)
  wire cs_xxA7;  // ../../rtl/karabas_pro.vhd(250)
  wire cs_xxC7;  // ../../rtl/karabas_pro.vhd(251)
  wire cs_xxE7;  // ../../rtl/karabas_pro.vhd(252)
  wire cs_xxfd;  // ../../rtl/karabas_pro.vhd(247)
  wire cs_xxfe;  // ../../rtl/karabas_pro.vhd(242)
  wire dos_act;  // ../../rtl/karabas_pro.vhd(344)
  wire ds80;  // ../../rtl/karabas_pro.vhd(434)
  wire ena_div16;  // ../../rtl/karabas_pro.vhd(332)
  wire ena_div2;  // ../../rtl/karabas_pro.vhd(329)
  wire ena_div4;  // ../../rtl/karabas_pro.vhd(330)
  wire ena_div8;  // ../../rtl/karabas_pro.vhd(331)
  wire fd_port;  // ../../rtl/karabas_pro.vhd(240)
  wire fd_sel;  // ../../rtl/karabas_pro.vhd(241)
  wire fdc_swap;  // ../../rtl/karabas_pro.vhd(167)
  wire fdd_cs_n;  // ../../rtl/karabas_pro.vhd(278)
  wire fdd_cs_pff_n;  // ../../rtl/karabas_pro.vhd(273)
  wire flash_busy;  // ../../rtl/karabas_pro.vhd(379)
  wire flash_clk;  // ../../rtl/karabas_pro.vhd(400)
  wire flash_do;  // ../../rtl/karabas_pro.vhd(401)
  wire flash_er_n;  // ../../rtl/karabas_pro.vhd(378)
  wire flash_ncs;  // ../../rtl/karabas_pro.vhd(399)
  wire flash_rd_n;  // ../../rtl/karabas_pro.vhd(377)
  wire flash_rdy;  // ../../rtl/karabas_pro.vhd(380)
  wire flash_wr_n;  // ../../rtl/karabas_pro.vhd(376)
  wire fw_update_mode;  // ../../rtl/karabas_pro.vhd(381)
  wire gx0;  // ../../rtl/karabas_pro.vhd(438)
  wire hdd_active;  // ../../rtl/karabas_pro.vhd(267)
  wire hdd_cs3fx_n;  // ../../rtl/karabas_pro.vhd(266)
  wire hdd_off;  // ../../rtl/karabas_pro.vhd(169)
  wire hdd_profi_ebl_n;  // ../../rtl/karabas_pro.vhd(261)
  wire hdd_rwe_n;  // ../../rtl/karabas_pro.vhd(265)
  wire hdd_rww_n;  // ../../rtl/karabas_pro.vhd(264)
  wire hdd_wwc_n;  // ../../rtl/karabas_pro.vhd(262)
  wire hdd_wwe_n;  // ../../rtl/karabas_pro.vhd(263)
  wire host_flash_er_n;  // ../../rtl/karabas_pro.vhd(387)
  wire host_flash_rd_n;  // ../../rtl/karabas_pro.vhd(385)
  wire host_flash_wr_n;  // ../../rtl/karabas_pro.vhd(386)
  wire is_flash_not_sd;  // ../../rtl/karabas_pro.vhd(396)
  wire kb_magic;  // ../../rtl/karabas_pro.vhd(174)
  wire kb_reset;  // ../../rtl/karabas_pro.vhd(173)
  wire kb_wait;  // ../../rtl/karabas_pro.vhd(178)
  wire led1;  // ../../rtl/karabas_pro.vhd(441)
  wire led2;  // ../../rtl/karabas_pro.vhd(442)
  wire loader_act;  // ../../rtl/karabas_pro.vhd(341)
  wire loader_flash_rd_n;  // ../../rtl/karabas_pro.vhd(367)
  wire loader_ram_wr;  // ../../rtl/karabas_pro.vhd(363)
  wire loader_reset;  // ../../rtl/karabas_pro.vhd(342)
  wire lock_dffd;  // ../../rtl/karabas_pro.vhd(164)
  wire locked_tri;  // ../../rtl/karabas_pro.vhd(340)
  wire mc146818_wr;  // ../../rtl/karabas_pro.vhd(232)
  wire memory_contention;  // ../../rtl/karabas_pro.vhd(455)
  wire ms_event;  // ../../rtl/karabas_pro.vhd(193)
  wire ms_present;  // ../../rtl/karabas_pro.vhd(192)
  wire n0;
  wire n1;
  wire n10;
  wire n100;
  wire n101;
  wire n102;
  wire n103;
  wire n104;
  wire n105;
  wire n106;
  wire n107;
  wire n108;
  wire n109;
  wire n11;
  wire n110;
  wire n111;
  wire n112;
  wire n113;
  wire n114;
  wire n115;
  wire n116;
  wire n117;
  wire n118;
  wire n119;
  wire n12;
  wire n120;
  wire n121;
  wire n122;
  wire n123;
  wire n124;
  wire n125;
  wire n126;
  wire n127;
  wire n128;
  wire n129;
  wire n130;
  wire n131;
  wire n132;
  wire n133;
  wire n135;
  wire n136;
  wire n137;
  wire n138;
  wire n139;
  wire n14;
  wire n140;
  wire n141;
  wire n142;
  wire n143;
  wire n144;
  wire n145;
  wire n146;
  wire n147;
  wire n148;
  wire n149;
  wire n15;
  wire n150;
  wire n151;
  wire n152;
  wire n153;
  wire n154;
  wire n155;
  wire n156;
  wire n157;
  wire n158;
  wire n159;
  wire n16;
  wire n160;
  wire n161;
  wire n162;
  wire n163;
  wire n164;
  wire n165;
  wire n166;
  wire n167;
  wire n168;
  wire n169;
  wire n170;
  wire n171;
  wire n172;
  wire n173;
  wire n174;
  wire n175;
  wire n176;
  wire n177;
  wire n178;
  wire n179;
  wire n18;
  wire n180;
  wire n181;
  wire n182;
  wire n183;
  wire n184;
  wire n185;
  wire n186;
  wire n187;
  wire n188;
  wire n189;
  wire n19;
  wire n190;
  wire n191;
  wire n192;
  wire n193;
  wire n194;
  wire n195;
  wire n196;
  wire n197;
  wire n198;
  wire n199;
  wire n2;
  wire n20;
  wire n201;
  wire n203;
  wire n204;
  wire n205;
  wire n206;
  wire n208;
  wire n209;
  wire n21;
  wire n211;
  wire n213;
  wire n215;
  wire n217;
  wire n219;
  wire n22;
  wire n221;
  wire n223;
  wire n225;
  wire n226;
  wire n23;
  wire n231;
  wire n232;
  wire n233;
  wire n234;
  wire n235;
  wire n236;
  wire n237;
  wire n238;
  wire n239;
  wire n24;
  wire n240;
  wire n241;
  wire n242;
  wire n244;
  wire n246;
  wire n248;
  wire n25;
  wire n250;
  wire n26;
  wire n260;
  wire n261;
  wire n262;
  wire n264;
  wire n266;
  wire n27;
  wire n273;
  wire n275;
  wire n28;
  wire n284;
  wire n286;
  wire n288;
  wire n29;
  wire n295;
  wire n297;
  wire n299;
  wire n3;
  wire n30;
  wire n308;
  wire n309;
  wire n31;
  wire n310;
  wire n311;
  wire n312;
  wire n313;
  wire n314;
  wire n315;
  wire n316;
  wire n317;
  wire n318;
  wire n319;
  wire n32;
  wire n320;
  wire n321;
  wire n322;
  wire n323;
  wire n324;
  wire n325;
  wire n326;
  wire n328;
  wire n329;
  wire n33;
  wire n330;
  wire n331;
  wire n332;
  wire n333;
  wire n334;
  wire n335;
  wire n336;
  wire n337;
  wire n338;
  wire n339;
  wire n34;
  wire n340;
  wire n341;
  wire n342;
  wire n343;
  wire n344;
  wire n345;
  wire n346;
  wire n347;
  wire n348;
  wire n349;
  wire n35;
  wire n350;
  wire n351;
  wire n352;
  wire n353;
  wire n354;
  wire n355;
  wire n356;
  wire n357;
  wire n358;
  wire n359;
  wire n36;
  wire n360;
  wire n361;
  wire n362;
  wire n363;
  wire n364;
  wire n365;
  wire n366;
  wire n367;
  wire n368;
  wire n369;
  wire n37;
  wire n370;
  wire n371;
  wire n372;
  wire n373;
  wire n374;
  wire n375;
  wire n376;
  wire n377;
  wire n378;
  wire n379;
  wire n38;
  wire n380;
  wire n381;
  wire n382;
  wire n383;
  wire n384;
  wire n385;
  wire n386;
  wire n387;
  wire n388;
  wire n389;
  wire n39;
  wire n390;
  wire n391;
  wire n392;
  wire n393;
  wire n394;
  wire n395;
  wire n396;
  wire n397;
  wire n398;
  wire n399;
  wire n4;
  wire n40;
  wire n400;
  wire n401;
  wire n402;
  wire n403;
  wire n404;
  wire n405;
  wire n406;
  wire n407;
  wire n408;
  wire n409;
  wire n41;
  wire n410;
  wire n411;
  wire n412;
  wire n413;
  wire n414;
  wire n415;
  wire n416;
  wire n417;
  wire n418;
  wire n419;
  wire n42;
  wire n420;
  wire n421;
  wire n422;
  wire n43;
  wire n44;
  wire n45;
  wire n46;
  wire n47;
  wire n48;
  wire n49;
  wire n5;
  wire n50;
  wire n51;
  wire n52;
  wire n53;
  wire n54;
  wire n55;
  wire n56;
  wire n6;
  wire n61;
  wire n62;
  wire n63;
  wire n64;
  wire n65;
  wire n66;
  wire n67;
  wire n68;
  wire n69;
  wire n7;
  wire n70;
  wire n71;
  wire n72;
  wire n73;
  wire n74;
  wire n75;
  wire n76;
  wire n77;
  wire n78;
  wire n79;
  wire n8;
  wire n80;
  wire n81;
  wire n82;
  wire n83;
  wire n84;
  wire n85;
  wire n86;
  wire n87;
  wire n88;
  wire n89;
  wire n9;
  wire n90;
  wire n91;
  wire n92;
  wire n93;
  wire n94;
  wire n95;
  wire n96;
  wire n97;
  wire n98;
  wire n99;
  wire onrom;  // ../../rtl/karabas_pro.vhd(161)
  wire osd_overlay;  // ../../rtl/karabas_pro.vhd(216)
  wire osd_popup;  // ../../rtl/karabas_pro.vhd(217)
  wire port77_wr;  // ../../rtl/karabas_pro.vhd(224)
  wire ram_oe_n;  // ../../rtl/karabas_pro.vhd(351)
  wire reset;  // ../../rtl/karabas_pro.vhd(337)
  wire rom0;  // ../../rtl/karabas_pro.vhd(147)
  wire rom14;  // ../../rtl/karabas_pro.vhd(437)
  wire sco;  // ../../rtl/karabas_pro.vhd(436)
  wire scr;  // ../../rtl/karabas_pro.vhd(435)
  wire sd_clk;  // ../../rtl/karabas_pro.vhd(402)
  wire sd_si;  // ../../rtl/karabas_pro.vhd(403)
  wire serial_ms_int;  // ../../rtl/karabas_pro.vhd(426)
  wire serial_ms_oe_n;  // ../../rtl/karabas_pro.vhd(425)
  wire sound_off;  // ../../rtl/karabas_pro.vhd(165)
  wire speaker;  // ../../rtl/karabas_pro.vhd(348)
  wire ssg_sel;  // ../../rtl/karabas_pro.vhd(281)
  wire tape_in_monitor;  // ../../rtl/karabas_pro.vhd(451)
  wire tape_in_out_enable;  // ../../rtl/karabas_pro.vhd(450)
  wire turbo_fdc_off;  // ../../rtl/karabas_pro.vhd(168)
  wire unlock_128;  // ../../rtl/karabas_pro.vhd(162)
  wire vbus_mode;  // ../../rtl/karabas_pro.vhd(352)
  wire vid_hsync;  // ../../rtl/karabas_pro.vhd(201)
  wire vid_ispaper;  // ../../rtl/karabas_pro.vhd(211)
  wire vid_pff_cs;  // ../../rtl/karabas_pro.vhd(204)
  wire vid_rd;  // ../../rtl/karabas_pro.vhd(353)
  wire vid_rd2;  // ../../rtl/karabas_pro.vhd(354)
  wire vid_scandoubler_enable;  // ../../rtl/karabas_pro.vhd(212)
  wire vid_vsync;  // ../../rtl/karabas_pro.vhd(202)
  wire worom;  // ../../rtl/karabas_pro.vhd(433)
  wire zc_cs_n;  // ../../rtl/karabas_pro.vhd(226)
  wire zc_mosi;  // ../../rtl/karabas_pro.vhd(228)
  wire zc_sclk;  // ../../rtl/karabas_pro.vhd(227)
  wire zc_spi_start;  // ../../rtl/karabas_pro.vhd(222)
  wire zc_wr_en;  // ../../rtl/karabas_pro.vhd(223)
  wire zxuno_addr_oe_n;  // ../../rtl/karabas_pro.vhd(410)
  wire zxuno_regrd;  // ../../rtl/karabas_pro.vhd(406)
  wire zxuno_regwr;  // ../../rtl/karabas_pro.vhd(407)
  wire zxuno_uart_oe_n;  // ../../rtl/karabas_pro.vhd(413)

  zxunoregs G_UNO_UART$U21 (
    .a(cpu_a_bus),
    .clk(clk_bus),
    .din(cpu_do_bus),
    .iorq_n(cpu_iorq_n),
    .rd_n(cpu_rd_n),
    .rst_n(n12),
    .wr_n(cpu_wr_n),
    .addr(zxuno_addr),
    .dout(zxuno_addr_to_cpu),
    .oe_n(zxuno_addr_oe_n),
    .read_from_reg(zxuno_regrd),
    .write_to_reg(zxuno_regwr));  // ../../rtl/karabas_pro.vhd(991)
  zxunouart G_UNO_UART$U22 (
    .clk_bus(clk_bus),
    .din(cpu_do_bus),
    .ds80(ds80),
    .uart_rx(UART_RX),
    .zxuno_addr(zxuno_addr),
    .zxuno_regrd(zxuno_regrd),
    .zxuno_regwr(zxuno_regwr),
    .dout(zxuno_uart_do_bus),
    .oe_n(zxuno_uart_oe_n),
    .uart_rts(UART_CTS),
    .uart_tx(UART_TX));  // ../../rtl/karabas_pro.vhd(1008)
  altpll0 U1 (
    .refclk(CLK_50MHZ),
    .reset(1'b0),
    .clk0_out(clk_112));  // ../../rtl/karabas_pro.vhd(534)
  flash U10 (
    .A(flash_a_bus),
    .CLK(clk_bus),
    .DATA0(DATA0),
    .DI(flash_di_bus),
    .ER_N(flash_er_n),
    .RD_N(flash_rd_n),
    .RESET(areset),
    .WR_N(flash_wr_n),
    .ASDO(flash_do),
    .BUSY(flash_busy),
    .DATA_READY(flash_rdy),
    .DCLK(flash_clk),
    .DO(flash_do_bus),
    .NCSO(flash_ncs));  // ../../rtl/karabas_pro.vhd(754)
  loader U11 (
    .CLK(clk_bus),
    .FLASH_BUSY(flash_busy),
    .FLASH_DO(flash_do_bus),
    .FLASH_READY(flash_rdy),
    .RESET(areset),
    .CFG(board_revision),
    .FLASH_A(loader_flash_a),
    .FLASH_RD_N(loader_flash_rd_n),
    .LOADER_ACTIVE(loader_act),
    .LOADER_RESET(loader_reset),
    .RAM_A(loader_ram_a),
    .RAM_DO(loader_ram_do),
    .RAM_WR(loader_ram_wr));  // ../../rtl/karabas_pro.vhd(776)
  turbosound U12 (
    .I_ADDR(cpu_a_bus),
    .I_BC1(1'b1),
    .I_BDIR(1'b1),
    .I_CLK(clk_bus),
    .I_DATA(cpu_do_bus),
    .I_ENA(ena_div16),
    .I_IORQ_N(cpu_iorq_n),
    .I_M1_N(cpu_m1_n),
    .I_MODE(soft_sw[8]),
    .I_RESET_N(cpu_reset_n),
    .I_WR_N(cpu_wr_n),
    .O_SEL(ssg_sel),
    .O_SSG0_AUDIO_A(ssg_cn0_a),
    .O_SSG0_AUDIO_B(ssg_cn0_b),
    .O_SSG0_AUDIO_C(ssg_cn0_c),
    .O_SSG0_DA(ssg_cn0_bus),
    .O_SSG1_AUDIO_A(ssg_cn1_a),
    .O_SSG1_AUDIO_B(ssg_cn1_b),
    .O_SSG1_AUDIO_C(ssg_cn1_c),
    .O_SSG1_DA(ssg_cn1_bus));  // ../../rtl/karabas_pro.vhd(798)
  covox U13 (
    .I_ADDR(cpu_a_bus[7:0]),
    .I_CLK(clk_bus),
    .I_CPM(cpm),
    .I_CS(soft_sw[6]),
    .I_DATA(cpu_do_bus),
    .I_DOS(dos_act),
    .I_IORQ_N(cpu_iorq_n),
    .I_RESET(reset),
    .I_ROM14(rom14),
    .I_WR_N(cpu_wr_n),
    .O_A(covox_a),
    .O_B(covox_b),
    .O_C(covox_c),
    .O_D(covox_d),
    .O_FB(covox_fb));  // ../../rtl/karabas_pro.vhd(824)
  avr U15 (
    .A(cpu_a_bus[15:8]),
    .AVR_MOSI(AVR_MOSI),
    .AVR_SCK(AVR_SCK),
    .AVR_SS(AVR_NCS),
    .CFG(board_revision),
    .CLK(clk_bus),
    .CLKEN(clk_cpu),
    .LED1(led1),
    .LED1_OWR(cpu_wait_n),
    .LED2(led2),
    .LED2_OWR(cpu_wait_n),
    .LOADER_DONE(n10),
    .MAX_TURBO(max_turbo),
    .N_RESET(n8),
    .RTC_A(mc146818_a_bus),
    .RTC_CS(1'b1),
    .RTC_DI(cpu_do_bus),
    .RTC_WR_N(n9),
    .AVR_MISO(AVR_MISO),
    .JOY(joy_bus),
    .KB(kb_do_bus),
    .MAGICK(kb_magic),
    .MS_BTNS(ms_b),
    .MS_DELTA_X(ms_delta_x),
    .MS_DELTA_Y(ms_delta_y),
    .MS_EVENT(ms_event),
    .MS_PRESET(ms_present),
    .MS_X(ms_x),
    .MS_Y(ms_y),
    .MS_Z(ms_z),
    .OSD_COMMAND(osd_command),
    .OSD_OVERLAY(osd_overlay),
    .OSD_POPUP(osd_popup),
    .RESET(kb_reset),
    .RTC_DO(mc146818_do_bus),
    .SCREEN_MODE(kb_screen_mode),
    .SOFT_SW(soft_sw),
    .TURBO(kb_turbo),
    .WAIT_CPU(kb_wait));  // ../../rtl/karabas_pro.vhd(858)
  tda1543 U16 (
    .CLK_BUS(clk_bus),
    .CS(1'b1),
    .DAC_TYPE(audio_dac_type),
    .DATA_L(audio_l),
    .DATA_R(audio_r),
    .RESET(reset),
    .BCK(SND_BS),
    .DATA(SND_DAT),
    .WS(SND_WS));  // ../../rtl/karabas_pro.vhd(917)
  bus_port U17 (
    .BUS_A({cpu_a_bus[10:8],cpu_a_bus[6:5]}),
    .BUS_CS3FX(hdd_cs3fx_n),
    .BUS_CSFF(fdd_cs_pff_n),
    .BUS_DI(cpu_do_bus),
    .BUS_FDC_NCS(fdd_cs_n),
    .BUS_FDC_STEP(n11),
    .BUS_HDD_CS_N(hdd_profi_ebl_n),
    .BUS_RD_N(cpu_rd_n),
    .BUS_RWE(hdd_rwe_n),
    .BUS_RWW(hdd_rww_n),
    .BUS_WR_N(cpu_wr_n),
    .BUS_WWC(hdd_wwc_n),
    .BUS_WWE(hdd_wwe_n),
    .CLK(clk_bus_port),
    .CLK2(clk_8),
    .CLK_BUS(clk_bus),
    .CLK_CPU(clk_cpu),
    .RESET(reset),
    .BUS_DO(cpld_do),
    .CPLD_CLK(CPLD_CLK),
    .CPLD_CLK2(CPLD_CLK2),
    .NRESET(NRESET),
    .SA(SA),
    .SD(SD));  // ../../rtl/karabas_pro.vhd(931)
  altpll1 U2 (
    .refclk(clk_112),
    .reset(1'b0),
    .clk0_out(clk_84),
    .clk1_out(clk_72),
    .clk2_out(clk_28),
    .clk3_out(clk_24),
    .clk4_out(clk_8));  // ../../rtl/karabas_pro.vhd(543)
  serial_mouse U20 (
    .A(cpu_a_bus),
    .CLK(clk_bus),
    .CLKEN(clk_cpu),
    .CPM(cpm),
    .DI(cpu_do_bus),
    .DOS(dos_act),
    .IORQ_N(cpu_iorq_n),
    .M1_N(cpu_m1_n),
    .MS_BTNS(ms_b),
    .MS_EVENT(ms_event),
    .MS_PRESET(ms_present),
    .MS_X(ms_delta_x),
    .MS_Y(n13[7:0]),
    .N_RESET(n12),
    .RD_N(cpu_rd_n),
    .ROM14(rom14),
    .WR_N(cpu_wr_n),
    .DO(serial_ms_do_bus),
    .INT_N(serial_ms_int),
    .OE_N(serial_ms_oe_n));  // ../../rtl/karabas_pro.vhd(963)
  board U23 (
    .CFG(board_revision),
    .CLK(clk_bus),
    .SOFT_SW1(soft_sw[1]),
    .SOFT_SW2(soft_sw[2]),
    .SOFT_SW3(soft_sw[3]),
    .SOFT_SW4(soft_sw[4]),
    .AUDIO_DAC_TYPE(audio_dac_type),
    .BOARD_RESET(board_reset),
    .ROM_BANK(ext_rom_bank),
    .SCANDOUBLER_EN(vid_scandoubler_enable),
    .TAPE_IN_OUT_EN(tape_in_out_enable));  // ../../rtl/karabas_pro.vhd(1054)
  T80a U5 (
    .BUSRQ_n(1'b1),
    .CEN(1'b1),
    .CLK_n(n0),
    .DIN(cpu_di_bus),
    .INT_n(n1),
    .NMI_n(cpu_nmi_n),
    .RESET_n(cpu_reset_n),
    .WAIT_n(cpu_wait_n),
    .A(cpu_a_bus),
    .DOUT(cpu_do_bus),
    .IORQ_n(cpu_iorq_n),
    .M1_n(cpu_m1_n),
    .MREQ_n(cpu_mreq_n),
    .RD_n(cpu_rd_n),
    .WR_n(cpu_wr_n));  // ../../rtl/karabas_pro.vhd(576)
  memory U6 (
    .A(cpu_a_bus),
    .CLK2X(clk_bus),
    .CLKX(clk_div2),
    .CLK_CPU(clk_cpu),
    .COUNT_BLOCK(count_block),
    .CPM(cpm),
    .D(cpu_do_bus),
    .DS80(ds80),
    .EXT_ROM_BANK(ext_rom_bank_pq),
    .N_IORQ(cpu_iorq_n),
    .N_M1(cpu_m1_n),
    .N_MREQ(cpu_mreq_n),
    .N_RD(cpu_rd_n),
    .N_WR(cpu_wr_n),
    .RAM_6MB(board_revision[5]),
    .RAM_BANK(port_7ffd_reg[2:0]),
    .RAM_EXT(ram_ext),
    .ROM_BANK(rom14),
    .SCO(sco),
    .SCR(scr),
    .TRDOS(dos_act),
    .VA(vid_a_bus),
    .VID_PAGE(port_7ffd_reg[3]),
    .VID_RD2(vid_rd2),
    .WOROM(worom),
    .loader_act(loader_act),
    .loader_ram_a(loader_ram_a),
    .loader_ram_do(loader_ram_do),
    .loader_ram_wr(loader_ram_wr),
    .CONTENDED(memory_contention),
    .DO(ram_do_bus),
    .MA(SRAM_A),
    .N_CE1(PIN_121),
    .N_CE2(PIN_120),
    .N_CE3(PIN_7),
    .N_MRD(SRAM_NRD),
    .N_MWR(SRAM_NWR),
    .N_OE(ram_oe_n),
    .VBUS_MODE_O(vbus_mode),
    .VID_DO(vid_do_bus),
    .VID_RD_O(vid_rd),
    .MD(SRAM_D));  // ../../rtl/karabas_pro.vhd(599)
  \video(enable_2port_vram=false)(1,0)  U7 (
    .BORDER(port_xxfe_reg),
    .BUS_A(cpu_a_bus[15:8]),
    .BUS_D(cpu_do_bus),
    .BUS_WR_N(cpu_wr_n),
    .CLK(clk_div2),
    .CLK2X(clk_bus),
    .CS7E(cs_xx7e),
    .DI(vid_do_bus),
    .DS80(ds80),
    .ENA(clk_div4),
    .INTA(cpu_inta_n),
    .MODE60(soft_sw[2]),
    .RESET(reset),
    .SCREEN_MODE(kb_screen_mode),
    .TURBO(turbo_mode),
    .VBUS_MODE(vbus_mode),
    .VID_RD(vid_rd),
    .A(vid_a_bus),
    .ATTR_O(vid_attr),
    .BLINK(blink),
    .COUNT_BLOCK(count_block),
    .GX0(gx0),
    .HCNT(vid_hcnt),
    .HSYNC(vid_hsync),
    .INT(cpu_int_n),
    .ISPAPER(vid_ispaper),
    .VCNT(vid_vcnt),
    .VIDEO_B(vid_rgb[2:0]),
    .VIDEO_G(vid_rgb[5:3]),
    .VIDEO_R(vid_rgb[8:6]),
    .VID_RD2(vid_rd2),
    .VSYNC(vid_vsync),
    .pFF_CS(vid_pff_cs));  // ../../rtl/karabas_pro.vhd(670)
  overlay U8 (
    .BLINK(blink),
    .CLK(clk_bus),
    .CLK2(clk_div2),
    .CLK4(clk_div4),
    .DS80(ds80),
    .HCNT_I(vid_hcnt),
    .OSD_COMMAND(osd_command),
    .OSD_ICONS(1'b1),
    .OSD_OVERLAY(osd_overlay),
    .OSD_POPUP(osd_popup),
    .PAPER_I(vid_ispaper),
    .RGB_I(vid_rgb),
    .STATUS_CF(hdd_active),
    .STATUS_FD(n6),
    .STATUS_SD(n7),
    .VCNT_I(vid_vcnt),
    .RGB_O(vid_rgb_osd));  // ../../rtl/karabas_pro.vhd(711)
  VGA_PAL U9 (
    .CLK(clk_div2),
    .CLK2(clk_bus),
    .DS80(ds80),
    .EN(vid_scandoubler_enable),
    .KSI_IN(vid_vsync),
    .RGB_IN(vid_rgb_osd),
    .SSI_IN(vid_hsync),
    .HSYNC_VGA(VGA_HS),
    .RGB_O({VGA_R,VGA_G,VGA_B}),
    .VSYNC_VGA(VGA_VS));  // ../../rtl/karabas_pro.vhd(737)
  zc_spi U_ZC_SPI (
    .CLC(clk_bus),
    .DI(cpu_do_bus),
    .MISO(DATA0),
    .START(zc_spi_start),
    .WR_EN(zc_wr_en),
    .DO(zc_do_bus),
    .MOSI(zc_mosi),
    .SCK(zc_sclk));  // ../../rtl/karabas_pro.vhd(1572)
  add_pu4_pu4_o4 add0 (
    .i0(ena_cnt),
    .i1(4'b0001),
    .o(n17));
  add_pu2_pu2_o2 add1 (
    .i0(WAIT_C),
    .i1(2'b01),
    .o(n57));
  add_pu12_pu12_o12 add10 (
    .i0(n255),
    .i1({4'b0000,covox_c}),
    .o(n256));
  add_pu12_pu12_o12 add11 (
    .i0(n256),
    .i1({4'b0000,covox_d}),
    .o(n257));
  add_pu12_pu12_o12 add12 (
    .i0(n257),
    .i1({4'b0000,covox_fb}),
    .o(n258));
  add_pu12_pu12_o12 add13 (
    .i0(n258),
    .i1(12'b0000xxxxxxxx),
    .o(n259));
  add_pu12_pu12_o12 add14 (
    .i0(n259),
    .i1(12'b0000xxxxxxxx),
    .o(audio_mono[15:4]));
  add_pu3_pu3_o4 add15 (
    .i0({speaker,1'b0,tape_in_monitor}),
    .i1(ssg_cn0_a[7:5]),
    .o({n262,n263}));
  add_pu9_pu9_o10 add16 (
    .i0({n262,n263,ssg_cn0_a[4:0]}),
    .i1({2'b00,ssg_cn0_b[7:1]}),
    .o({n264,n265}));
  add_pu10_pu10_o11 add17 (
    .i0({n264,n265}),
    .i1({2'b00,ssg_cn1_a}),
    .o({n266,n267}));
  add_pu12_pu12_o12 add18 (
    .i0({n266,n267,ssg_cn0_b[0]}),
    .i1({4'b0000,ssg_cn1_b}),
    .o(n268));
  add_pu11_pu11_o11 add19 (
    .i0(n268[11:1]),
    .i1({3'b000,covox_a}),
    .o(n269));
  add_pu2_pu2_o3 add2 (
    .i0({speaker,tape_in_monitor}),
    .i1(ssg_cn0_a[7:6]),
    .o({n244,n245}));
  add_pu11_pu11_o11 add20 (
    .i0(n269),
    .i1({3'b000,covox_b}),
    .o(n270));
  add_pu11_pu11_o11 add21 (
    .i0(n270),
    .i1({3'b000,covox_fb}),
    .o(n271));
  add_pu11_pu11_o11 add22 (
    .i0(n271),
    .i1(11'b000xxxxxxxx),
    .o(n272));
  add_pu9_pu9_o10 add23 (
    .i0({n262,n263,ssg_cn0_a[4:0]}),
    .i1({2'b00,ssg_cn0_c[7:1]}),
    .o({n273,n274}));
  add_pu10_pu10_o11 add24 (
    .i0({n273,n274}),
    .i1({2'b00,ssg_cn1_a}),
    .o({n275,n276}));
  add_pu12_pu12_o12 add25 (
    .i0({n275,n276,ssg_cn0_c[0]}),
    .i1({4'b0000,ssg_cn1_c}),
    .o(n277));
  add_pu11_pu11_o11 add26 (
    .i0(n277[11:1]),
    .i1({3'b000,covox_a}),
    .o(n278));
  add_pu11_pu11_o11 add27 (
    .i0(n278),
    .i1({3'b000,covox_b}),
    .o(n279));
  add_pu11_pu11_o11 add28 (
    .i0(n279),
    .i1({3'b000,covox_fb}),
    .o(n280));
  add_pu11_pu11_o11 add29 (
    .i0(n280),
    .i1(11'b000xxxxxxxx),
    .o(n281));
  add_pu9_pu9_o10 add3 (
    .i0({n244,n245,ssg_cn0_a[5:0]}),
    .i1({1'b0,ssg_cn0_b}),
    .o({n246,n247}));
  add_pu3_pu3_o4 add30 (
    .i0({speaker,1'b0,tape_in_monitor}),
    .i1(ssg_cn0_c[7:5]),
    .o({n284,n285}));
  add_pu9_pu9_o10 add31 (
    .i0({n284,n285,ssg_cn0_c[4:0]}),
    .i1({2'b00,ssg_cn0_b[7:1]}),
    .o({n286,n287}));
  add_pu10_pu10_o11 add32 (
    .i0({n286,n287}),
    .i1({2'b00,ssg_cn1_c}),
    .o({n288,n289}));
  add_pu12_pu12_o12 add33 (
    .i0({n288,n289,ssg_cn0_b[0]}),
    .i1({4'b0000,ssg_cn1_b}),
    .o(n290));
  add_pu11_pu11_o11 add34 (
    .i0(n290[11:1]),
    .i1({3'b000,covox_c}),
    .o(n291));
  add_pu11_pu11_o11 add35 (
    .i0(n291),
    .i1({3'b000,covox_d}),
    .o(n292));
  add_pu11_pu11_o11 add36 (
    .i0(n292),
    .i1({3'b000,covox_fb}),
    .o(n293));
  add_pu11_pu11_o11 add37 (
    .i0(n293),
    .i1(11'b000xxxxxxxx),
    .o(n294));
  add_pu3_pu3_o4 add38 (
    .i0({speaker,1'b0,tape_in_monitor}),
    .i1(ssg_cn0_b[7:5]),
    .o({n295,n296}));
  add_pu9_pu9_o10 add39 (
    .i0({n295,n296,ssg_cn0_b[4:0]}),
    .i1({2'b00,ssg_cn0_c[7:1]}),
    .o({n297,n298}));
  add_pu10_pu10_o11 add4 (
    .i0({n246,n247}),
    .i1({2'b00,ssg_cn0_c}),
    .o({n248,n249}));
  add_pu10_pu10_o11 add40 (
    .i0({n297,n298}),
    .i1({2'b00,ssg_cn1_b}),
    .o({n299,n300}));
  add_pu12_pu12_o12 add41 (
    .i0({n299,n300,ssg_cn0_c[0]}),
    .i1({4'b0000,ssg_cn1_c}),
    .o(n301));
  add_pu11_pu11_o11 add42 (
    .i0(n301[11:1]),
    .i1({3'b000,covox_c}),
    .o(n302));
  add_pu11_pu11_o11 add43 (
    .i0(n302),
    .i1({3'b000,covox_d}),
    .o(n303));
  add_pu11_pu11_o11 add44 (
    .i0(n303),
    .i1({3'b000,covox_fb}),
    .o(n304));
  add_pu11_pu11_o11 add45 (
    .i0(n304),
    .i1(11'b000xxxxxxxx),
    .o(n305));
  add_pu11_pu11_o12 add5 (
    .i0({n248,n249}),
    .i1({3'b000,ssg_cn1_a}),
    .o({n250,n251}));
  add_pu12_pu12_o12 add6 (
    .i0({n250,n251}),
    .i1({4'b0000,ssg_cn1_b}),
    .o(n252));
  add_pu12_pu12_o12 add7 (
    .i0(n252),
    .i1({4'b0000,ssg_cn1_c}),
    .o(n253));
  add_pu12_pu12_o12 add8 (
    .i0(n253),
    .i1({4'b0000,covox_a}),
    .o(n254));
  add_pu12_pu12_o12 add9 (
    .i0(n254),
    .i1({4'b0000,covox_b}),
    .o(n255));
  AL_DFF areset_reg (
    .clk(clk_bus),
    .d(n21),
    .reset(1'b0),
    .set(1'b0),
    .q(areset));  // ../../rtl/karabas_pro.vhd(1128)
  AL_DFF clk_div2_reg (
    .clk(clk_bus),
    .d(n14),
    .reset(1'b0),
    .set(1'b0),
    .q(clk_div2));  // ../../rtl/karabas_pro.vhd(1079)
  AL_DFF clk_div4_reg (
    .clk(clk_div2),
    .d(n15),
    .reset(1'b0),
    .set(1'b0),
    .q(clk_div4));  // ../../rtl/karabas_pro.vhd(1086)
  AL_DFF dos_act_reg (
    .clk(clk_bus),
    .d(n242),
    .reset(1'b0),
    .set(reset),
    .q(dos_act));  // ../../rtl/karabas_pro.vhd(1472)
  eq_w2 eq0 (
    .i0(kb_screen_mode),
    .i1(2'b01),
    .o(n34));
  eq_w2 eq1 (
    .i0(turbo_mode),
    .i1(2'b11),
    .o(n41));
  eq_w16 eq10 (
    .i0(cpu_a_bus),
    .i1(16'b0000001010001011),
    .o(n85));
  eq_w16 eq11 (
    .i0(cpu_a_bus),
    .i1(16'b1111111111111101),
    .o(n90));
  eq_w16 eq12 (
    .i0(cpu_a_bus),
    .i1(16'b1101111111111101),
    .o(n93));
  eq_w16 eq13 (
    .i0(cpu_a_bus),
    .i1(16'b0111111111111101),
    .o(n97));
  eq_w8 eq14 (
    .i0(cpu_a_bus[7:0]),
    .i1(8'b11000111),
    .o(n102));
  eq_w8 eq15 (
    .i0(cpu_a_bus[7:0]),
    .i1(8'b10000111),
    .o(n106));
  eq_w8 eq16 (
    .i0(cpu_a_bus[7:0]),
    .i1(8'b10100111),
    .o(n111));
  eq_w8 eq17 (
    .i0(cpu_a_bus[7:0]),
    .i1(8'b11100111),
    .o(n116));
  eq_w8 eq18 (
    .i0(cpu_a_bus[7:0]),
    .i1(8'b01100111),
    .o(n121));
  eq_w8 eq19 (
    .i0(cpu_a_bus[7:0]),
    .i1(8'b11111111),
    .o(n126));
  eq_w2 eq2 (
    .i0(turbo_mode),
    .i1(2'b10),
    .o(n44));
  eq_w8 eq20 (
    .i0(cpu_a_bus[7:0]),
    .i1(8'b10111111),
    .o(n127));
  eq_w8 eq21 (
    .i0(cpu_a_bus[7:0]),
    .i1(8'b11011111),
    .o(n130));
  eq_w8 eq22 (
    .i0(cpu_a_bus[7:0]),
    .i1(8'b10011111),
    .o(n131));
  eq_w5 eq23 (
    .i0(cpu_a_bus[4:0]),
    .i1(5'b01011),
    .o(n135));
  eq_w8 eq24 (
    .i0(cpu_a_bus[7:0]),
    .i1(8'b11001011),
    .o(n141));
  eq_w8 eq25 (
    .i0(cpu_a_bus[7:0]),
    .i1(8'b11101011),
    .o(n146));
  eq_w8 eq26 (
    .i0(cpu_a_bus[7:0]),
    .i1(8'b10101011),
    .o(n159));
  eq_w3 eq27 (
    .i0(cpu_a_bus[7:5]),
    .i1(3'b001),
    .o(n167));
  eq_w2 eq28 (
    .i0(cpu_a_bus[1:0]),
    .i1(2'b11),
    .o(n168));
  eq_w3 eq29 (
    .i0(cpu_a_bus[7:5]),
    .i1(3'b101),
    .o(n172));
  eq_w2 eq3 (
    .i0(turbo_mode),
    .i1(2'b01),
    .o(n46));
  eq_w3 eq30 (
    .i0(cpu_a_bus[7:5]),
    .i1(3'b111),
    .o(n179));
  eq_w5 eq31 (
    .i0(cpu_a_bus[4:0]),
    .i1(5'b00011),
    .o(n195));
  eq_w8 eq32 (
    .i0(cpu_a_bus[15:8]),
    .i1(8'b00111101),
    .o(n231));
  eq_w8 eq33 (
    .i0(cpu_a_bus[7:0]),
    .i1(8'b01010111),
    .o(n313));
  eq_w8 eq34 (
    .i0(cpu_a_bus[7:0]),
    .i1(8'b01110111),
    .o(n320));
  eq_w8 eq35 (
    .i0(8'b00000000),
    .i1(selector),
    .o(n328));  // ../../rtl/karabas_pro.vhd(1596)
  eq_w8 eq36 (
    .i0(8'b00000001),
    .i1(selector),
    .o(n329));  // ../../rtl/karabas_pro.vhd(1597)
  eq_w8 eq37 (
    .i0(8'b00000010),
    .i1(selector),
    .o(n330));  // ../../rtl/karabas_pro.vhd(1598)
  eq_w8 eq38 (
    .i0(8'b00000011),
    .i1(selector),
    .o(n331));  // ../../rtl/karabas_pro.vhd(1599)
  eq_w8 eq39 (
    .i0(8'b00000100),
    .i1(selector),
    .o(n332));  // ../../rtl/karabas_pro.vhd(1600)
  eq_w4 eq4 (
    .i0(cpu_do_bus[7:4]),
    .i1(4'b1101),
    .o(n67));
  eq_w8 eq40 (
    .i0(8'b00000101),
    .i1(selector),
    .o(n333));  // ../../rtl/karabas_pro.vhd(1601)
  eq_w8 eq41 (
    .i0(8'b00000110),
    .i1(selector),
    .o(n334));  // ../../rtl/karabas_pro.vhd(1602)
  eq_w8 eq42 (
    .i0(8'b00000111),
    .i1(selector),
    .o(n335));  // ../../rtl/karabas_pro.vhd(1603)
  eq_w8 eq43 (
    .i0(8'b00001000),
    .i1(selector),
    .o(n336));  // ../../rtl/karabas_pro.vhd(1604)
  eq_w8 eq44 (
    .i0(8'b00001001),
    .i1(selector),
    .o(n337));  // ../../rtl/karabas_pro.vhd(1605)
  eq_w8 eq45 (
    .i0(8'b00001010),
    .i1(selector),
    .o(n338));  // ../../rtl/karabas_pro.vhd(1606)
  eq_w8 eq46 (
    .i0(8'b00001011),
    .i1(selector),
    .o(n339));  // ../../rtl/karabas_pro.vhd(1607)
  eq_w8 eq47 (
    .i0(8'b00001100),
    .i1(selector),
    .o(n340));  // ../../rtl/karabas_pro.vhd(1608)
  eq_w8 eq48 (
    .i0(8'b00001101),
    .i1(selector),
    .o(n341));  // ../../rtl/karabas_pro.vhd(1609)
  eq_w8 eq49 (
    .i0(8'b00001110),
    .i1(selector),
    .o(n342));  // ../../rtl/karabas_pro.vhd(1610)
  eq_w3 eq5 (
    .i0(cpu_do_bus[2:0]),
    .i1(3'b011),
    .o(n68));
  eq_w8 eq50 (
    .i0(8'b00001111),
    .i1(selector),
    .o(n343));  // ../../rtl/karabas_pro.vhd(1611)
  eq_w8 eq51 (
    .i0(8'b00010000),
    .i1(selector),
    .o(n344));  // ../../rtl/karabas_pro.vhd(1612)
  eq_w8 eq52 (
    .i0(8'b00010001),
    .i1(selector),
    .o(n345));  // ../../rtl/karabas_pro.vhd(1613)
  eq_w8 eq53 (
    .i0(8'b00010010),
    .i1(selector),
    .o(n346));  // ../../rtl/karabas_pro.vhd(1614)
  eq_w8 eq54 (
    .i0(8'b00010011),
    .i1(selector),
    .o(n347));  // ../../rtl/karabas_pro.vhd(1615)
  eq_w8 eq55 (
    .i0(8'b00010100),
    .i1(selector),
    .o(n348));  // ../../rtl/karabas_pro.vhd(1616)
  eq_w8 eq56 (
    .i0(8'b00010101),
    .i1(selector),
    .o(n349));  // ../../rtl/karabas_pro.vhd(1617)
  eq_w8 eq57 (
    .i0(8'b00010110),
    .i1(selector),
    .o(n350));  // ../../rtl/karabas_pro.vhd(1618)
  eq_w8 eq58 (
    .i0(8'b00010111),
    .i1(selector),
    .o(n351));  // ../../rtl/karabas_pro.vhd(1619)
  eq_w8 eq59 (
    .i0(cpu_a_bus[7:0]),
    .i1(8'b00011111),
    .o(n361));
  eq_w4 eq6 (
    .i0(cpu_di_bus[7:4]),
    .i1(4'b1101),
    .o(n70));
  eq_w16 eq60 (
    .i0(cpu_a_bus),
    .i1(16'b1111101011011111),
    .o(n371));
  eq_w16 eq61 (
    .i0(cpu_a_bus),
    .i1(16'b1111101111011111),
    .o(n375));
  eq_w16 eq62 (
    .i0(cpu_a_bus),
    .i1(16'b1111111111011111),
    .o(n379));
  eq_w3 eq7 (
    .i0(cpu_di_bus[2:0]),
    .i1(3'b011),
    .o(n71));
  eq_w16 eq8 (
    .i0(cpu_a_bus),
    .i1(16'b0000000010001011),
    .o(n74));
  eq_w16 eq9 (
    .i0(cpu_a_bus),
    .i1(16'b0000000110001011),
    .o(n82));
  AL_DFF fd_port_reg (
    .clk(cpu_m1_n),
    .d(fd_sel),
    .reset(1'b0),
    .set(reset),
    .q(fd_port));  // ../../rtl/karabas_pro.vhd(1271)
  AL_DFF led1_reg (
    .clk(clk_bus),
    .d(n63),
    .reset(1'b0),
    .set(1'b0),
    .q(led1));  // ../../rtl/karabas_pro.vhd(1187)
  AL_DFF led2_reg (
    .clk(clk_bus),
    .d(n65),
    .reset(1'b0),
    .set(1'b0),
    .q(led2));  // ../../rtl/karabas_pro.vhd(1202)
  AL_DFF locked_tri_reg (
    .clk(clk_bus),
    .d(n22),
    .reset(1'b0),
    .set(1'b0),
    .q(locked_tri));  // ../../rtl/karabas_pro.vhd(1128)
  lt_u2_u2 lt0 (
    .ci(1'b1),
    .i0(turbo_mode),
    .i1(max_turbo),
    .o(n42));
  binary_mux_s1_w2 mux0 (
    .i0(n57),
    .i1(WAIT_C),
    .sel(WAIT_C_STOP),
    .o(n58));  // ../../rtl/karabas_pro.vhd(1173)
  binary_mux_s1_w2 mux1 (
    .i0(n58),
    .i1(2'b11),
    .sel(cpu_mreq_n),
    .o(n59));  // ../../rtl/karabas_pro.vhd(1173)
  binary_mux_s1_w6 mux10 (
    .i0(port_7ffd_reg[5:0]),
    .i1(cpu_do_bus[5:0]),
    .sel(n206),
    .o(n207));  // ../../rtl/karabas_pro.vhd(1419)
  binary_mux_s1_w8 mux11 (
    .i0(port_xxC7_reg),
    .i1(cpu_do_bus),
    .sel(n211),
    .o(n212));  // ../../rtl/karabas_pro.vhd(1428)
  binary_mux_s1_w8 mux12 (
    .i0(port_xx87_reg),
    .i1(cpu_do_bus),
    .sel(n213),
    .o(n214));  // ../../rtl/karabas_pro.vhd(1433)
  binary_mux_s1_w8 mux13 (
    .i0(port_xxA7_reg),
    .i1(cpu_do_bus),
    .sel(n215),
    .o(n216));  // ../../rtl/karabas_pro.vhd(1438)
  binary_mux_s1_w8 mux14 (
    .i0(port_xxE7_reg),
    .i1(cpu_do_bus),
    .sel(n217),
    .o(n218));  // ../../rtl/karabas_pro.vhd(1443)
  binary_mux_s1_w8 mux15 (
    .i0(port_xx67_reg),
    .i1(cpu_do_bus),
    .sel(n219),
    .o(n220));  // ../../rtl/karabas_pro.vhd(1448)
  binary_mux_s1_w8 mux16 (
    .i0(port_008b_reg),
    .i1(cpu_do_bus),
    .sel(n221),
    .o(n222));  // ../../rtl/karabas_pro.vhd(1453)
  binary_mux_s1_w8 mux17 (
    .i0(port_018b_reg),
    .i1(cpu_do_bus),
    .sel(n223),
    .o(n224));  // ../../rtl/karabas_pro.vhd(1458)
  binary_mux_s1_w8 mux18 (
    .i0({port_028b_reg[7],n227,port_028b_reg[4:0]}),
    .i1(cpu_do_bus),
    .sel(n225),
    .o(n228));  // ../../rtl/karabas_pro.vhd(1466)
  binary_mux_s1_w2 mux19 (
    .i0(kb_turbo_old),
    .i1(kb_turbo),
    .sel(n226),
    .o(n229));  // ../../rtl/karabas_pro.vhd(1466)
  binary_mux_s1_w2 mux2 (
    .i0(n59),
    .i1(2'b11),
    .sel(WAIT_EN),
    .o(n60));  // ../../rtl/karabas_pro.vhd(1173)
  binary_mux_s1_w2 mux20 (
    .i0(n229),
    .i1(kb_turbo_old),
    .sel(n225),
    .o(n230));  // ../../rtl/karabas_pro.vhd(1466)
  binary_mux_s1_w8 mux21 (
    .i0(n200),
    .i1(mc146818_a_bus),
    .sel(reset),
    .o(n243));  // ../../rtl/karabas_pro.vhd(1472)
  binary_mux_s1_w16 mux22 (
    .i0({n281,n277[0],4'b0000}),
    .i1({n272,n268[0],4'b0000}),
    .sel(soft_sw[7]),
    .o(n282));  // ../../rtl/karabas_pro.vhd(1510)
  binary_mux_s1_w16 mux23 (
    .i0(n282),
    .i1(audio_mono),
    .sel(soft_sw[9]),
    .o(n283));  // ../../rtl/karabas_pro.vhd(1500)
  binary_mux_s1_w16 mux24 (
    .i0(n283),
    .i1(16'b0000000000000000),
    .sel(n261),
    .o(audio_l));  // ../../rtl/karabas_pro.vhd(1520)
  binary_mux_s1_w16 mux25 (
    .i0({n305,n301[0],4'b0000}),
    .i1({n294,n290[0],4'b0000}),
    .sel(soft_sw[7]),
    .o(n306));  // ../../rtl/karabas_pro.vhd(1533)
  binary_mux_s1_w16 mux26 (
    .i0(n306),
    .i1(audio_mono),
    .sel(soft_sw[9]),
    .o(n307));  // ../../rtl/karabas_pro.vhd(1523)
  binary_mux_s1_w16 mux27 (
    .i0(n307),
    .i1(16'b0000000000000000),
    .sel(n261),
    .o(audio_r));  // ../../rtl/karabas_pro.vhd(1543)
  binary_mux_s1_w2 mux28 (
    .i0(port_7ffd_reg[7:6]),
    .i1(cpu_do_bus[7:6]),
    .sel(n209),
    .o(n210));  // ../../rtl/karabas_pro.vhd(1423)
  binary_mux_s1_w8 mux29 (
    .i0({n423[3],n423[3],n423[3],1'b1,n423[3],3'b111}),
    .i1(8'b00010110),
    .sel(n418),
    .o(n424));  // ../../rtl/karabas_pro.vhd(1647)
  binary_mux_s1_w24 mux3 (
    .i0(host_flash_a_bus),
    .i1(loader_flash_a),
    .sel(loader_act),
    .o(flash_a_bus));  // ../../rtl/karabas_pro.vhd(1219)
  binary_mux_s1_w8 mux30 (
    .i0(n424),
    .i1(8'b00010101),
    .sel(n406),
    .o(n425));  // ../../rtl/karabas_pro.vhd(1646)
  binary_mux_s1_w8 mux31 (
    .i0(n425),
    .i1(8'b00010100),
    .sel(n404),
    .o(n426));  // ../../rtl/karabas_pro.vhd(1645)
  binary_mux_s1_w8 mux32 (
    .i0(n426),
    .i1(8'b00010011),
    .sel(n402),
    .o(n427));  // ../../rtl/karabas_pro.vhd(1644)
  binary_mux_s1_w8 mux33 (
    .i0(n427),
    .i1(8'b00010010),
    .sel(n400),
    .o(n428));  // ../../rtl/karabas_pro.vhd(1643)
  binary_mux_s1_w8 mux34 (
    .i0(n428),
    .i1(8'b00010001),
    .sel(n398),
    .o(n429));  // ../../rtl/karabas_pro.vhd(1642)
  binary_mux_s1_w8 mux35 (
    .i0(n429),
    .i1(8'b00010000),
    .sel(n396),
    .o(n430));  // ../../rtl/karabas_pro.vhd(1641)
  binary_mux_s1_w8 mux36 (
    .i0(n430),
    .i1(8'b00001111),
    .sel(n391),
    .o(n431));  // ../../rtl/karabas_pro.vhd(1640)
  binary_mux_s1_w8 mux37 (
    .i0(8'b00001110),
    .i1(n431),
    .sel(serial_ms_oe_n),
    .o(n432));  // ../../rtl/karabas_pro.vhd(1639)
  binary_mux_s1_w8 mux38 (
    .i0(n432),
    .i1(8'b00001101),
    .sel(n386),
    .o(n433));  // ../../rtl/karabas_pro.vhd(1638)
  binary_mux_s1_w8 mux39 (
    .i0(n433),
    .i1(8'b00001100),
    .sel(n382),
    .o(n434));  // ../../rtl/karabas_pro.vhd(1637)
  binary_mux_s1_w8 mux4 (
    .i0(host_flash_di_bus),
    .i1(8'b00000000),
    .sel(loader_act),
    .o(flash_di_bus));  // ../../rtl/karabas_pro.vhd(1220)
  binary_mux_s1_w8 mux40 (
    .i0(n434),
    .i1(8'b00001011),
    .sel(n378),
    .o(n435));  // ../../rtl/karabas_pro.vhd(1636)
  binary_mux_s1_w8 mux41 (
    .i0(n435),
    .i1(8'b00001010),
    .sel(n374),
    .o(n436));  // ../../rtl/karabas_pro.vhd(1635)
  binary_mux_s1_w8 mux42 (
    .i0(n436),
    .i1(8'b00001001),
    .sel(n370),
    .o(n437));  // ../../rtl/karabas_pro.vhd(1634)
  binary_mux_s1_w8 mux43 (
    .i0(n437),
    .i1(8'b00001000),
    .sel(n369),
    .o(n438));  // ../../rtl/karabas_pro.vhd(1633)
  binary_mux_s1_w8 mux44 (
    .i0(n438),
    .i1(8'b00000111),
    .sel(n368),
    .o(n439));  // ../../rtl/karabas_pro.vhd(1632)
  binary_mux_s1_w8 mux45 (
    .i0(n439),
    .i1(8'b00000110),
    .sel(n367),
    .o(n440));  // ../../rtl/karabas_pro.vhd(1631)
  binary_mux_s1_w8 mux46 (
    .i0(n440),
    .i1(8'b00000101),
    .sel(n364),
    .o(n441));  // ../../rtl/karabas_pro.vhd(1630)
  binary_mux_s1_w8 mux47 (
    .i0(n441),
    .i1(8'b00000100),
    .sel(n360),
    .o(n442));  // ../../rtl/karabas_pro.vhd(1629)
  binary_mux_s1_w8 mux48 (
    .i0(n442),
    .i1(8'b00000011),
    .sel(n358),
    .o(n443));  // ../../rtl/karabas_pro.vhd(1628)
  binary_mux_s1_w8 mux49 (
    .i0(n443),
    .i1(8'b00000010),
    .sel(n356),
    .o(n444));  // ../../rtl/karabas_pro.vhd(1627)
  binary_mux_s1_w2 mux5 (
    .i0(ext_rom_bank),
    .i1(2'b01),
    .sel(rom0),
    .o(ext_rom_bank_pq));  // ../../rtl/karabas_pro.vhd(1311)
  binary_mux_s1_w8 mux50 (
    .i0(n444),
    .i1(8'b00000001),
    .sel(n355),
    .o(n445));  // ../../rtl/karabas_pro.vhd(1626)
  binary_mux_s1_w8 mux51 (
    .i0(8'b00000000),
    .i1(n445),
    .sel(ram_oe_n),
    .o(selector));  // ../../rtl/karabas_pro.vhd(1649)
  binary_mux_s1_w8 mux6 (
    .i0(port_xxfe_reg),
    .i1(cpu_do_bus),
    .sel(cs_xxfe),
    .o(n134));  // ../../rtl/karabas_pro.vhd(1350)
  binary_mux_s1_w8 mux7 (
    .i0(mc146818_a_bus),
    .i1(cpu_do_bus),
    .sel(n199),
    .o(n200));  // ../../rtl/karabas_pro.vhd(1409)
  binary_mux_s1_w8 mux8 (
    .i0(port_dffd_reg),
    .i1(cpu_do_bus),
    .sel(n201),
    .o(n202));  // ../../rtl/karabas_pro.vhd(1414)
  binary_mux_s1_w2 mux9 (
    .i0(port_028b_reg[6:5]),
    .i1(kb_turbo),
    .sel(n226),
    .o(n227));  // ../../rtl/karabas_pro.vhd(1466)
  add_mu9_o9 neg0 (
    .i0({ms_delta_y[7],ms_delta_y}),
    .o({open_n19,n13[7:0]}));  // ../../rtl/karabas_pro.vhd(979)
  ne_w2 neq0 (
    .i0(cpu_a_bus[15:14]),
    .i1(2'b00),
    .o(n29));
  ne_w2 neq1 (
    .i0(kb_turbo),
    .i1(kb_turbo_old),
    .o(n226));
  reg_ar_as_w4 reg0 (
    .clk(n16),
    .d(n17),
    .reset(4'b0000),
    .set(4'b0000),
    .q(ena_cnt));  // ../../rtl/karabas_pro.vhd(1107)
  reg_ar_as_w2 reg1 (
    .clk(n56),
    .d(n60),
    .reset(2'b00),
    .set(2'b00),
    .q(WAIT_C));  // ../../rtl/karabas_pro.vhd(1174)
  reg_ar_as_w8 reg10 (
    .clk(clk_bus),
    .d(n222),
    .reset({reset,reset,reset,reset,reset,reset,reset,reset}),
    .set(8'b00000000),
    .q(port_008b_reg));  // ../../rtl/karabas_pro.vhd(1472)
  reg_ar_as_w8 reg11 (
    .clk(clk_bus),
    .d(n224),
    .reset({reset,reset,reset,reset,reset,reset,reset,reset}),
    .set(8'b00000000),
    .q(port_018b_reg));  // ../../rtl/karabas_pro.vhd(1472)
  reg_ar_as_w8 reg12 (
    .clk(clk_bus),
    .d(n228),
    .reset({reset,reset,reset,reset,reset,reset,reset,reset}),
    .set(8'b00000000),
    .q(port_028b_reg));  // ../../rtl/karabas_pro.vhd(1472)
  reg_ar_as_w2 reg13 (
    .clk(clk_bus),
    .d(n230),
    .reset({reset,reset}),
    .set(2'b00),
    .q(kb_turbo_old));  // ../../rtl/karabas_pro.vhd(1472)
  reg_ar_as_w8 reg14 (
    .clk(clk_bus),
    .d(n243),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(mc146818_a_bus));  // ../../rtl/karabas_pro.vhd(1472)
  reg_ar_as_w8 reg2 (
    .clk(cpu_wr_n),
    .d(n134),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(port_xxfe_reg));  // ../../rtl/karabas_pro.vhd(1350)
  reg_ar_as_w8 reg3 (
    .clk(clk_bus),
    .d({n210,n207}),
    .reset({reset,reset,reset,reset,reset,reset,reset,reset}),
    .set(8'b00000000),
    .q(port_7ffd_reg));  // ../../rtl/karabas_pro.vhd(1472)
  reg_ar_as_w8 reg4 (
    .clk(clk_bus),
    .d(n202),
    .reset({reset,reset,reset,reset,reset,reset,reset,reset}),
    .set(8'b00000000),
    .q(port_dffd_reg));  // ../../rtl/karabas_pro.vhd(1472)
  reg_ar_as_w8 reg5 (
    .clk(clk_bus),
    .d(n212),
    .reset({reset,reset,reset,reset,reset,reset,reset,reset}),
    .set(8'b00000000),
    .q(port_xxC7_reg));  // ../../rtl/karabas_pro.vhd(1472)
  reg_ar_as_w8 reg6 (
    .clk(clk_bus),
    .d(n214),
    .reset({reset,reset,reset,reset,reset,reset,reset,reset}),
    .set(8'b00000000),
    .q(port_xx87_reg));  // ../../rtl/karabas_pro.vhd(1472)
  reg_ar_as_w8 reg7 (
    .clk(clk_bus),
    .d(n216),
    .reset({reset,reset,reset,reset,reset,reset,reset,reset}),
    .set(8'b00000000),
    .q(port_xxA7_reg));  // ../../rtl/karabas_pro.vhd(1472)
  reg_ar_as_w8 reg8 (
    .clk(clk_bus),
    .d(n218),
    .reset({reset,reset,reset,reset,reset,reset,reset,reset}),
    .set(8'b00000000),
    .q(port_xxE7_reg));  // ../../rtl/karabas_pro.vhd(1472)
  reg_ar_as_w8 reg9 (
    .clk(clk_bus),
    .d(n220),
    .reset({reset,reset,reset,reset,reset,reset,reset,reset}),
    .set(8'b00000000),
    .q(port_xx67_reg));  // ../../rtl/karabas_pro.vhd(1472)
  onehot_mux_s25_w8 sel0 (
    .i0(8'b11111111),
    .i1(cpld_do),
    .i10(serial_ms_do_bus),
    .i11(8'bxxxxxxxx),
    .i12(ms_y),
    .i13(ms_x),
    .i14({ms_z,1'b1,n327}),
    .i15(port_7ffd_reg),
    .i16(port_dffd_reg),
    .i17(ssg_cn1_bus),
    .i18(ssg_cn0_bus),
    .i19(joy_bus),
    .i2(vid_attr),
    .i20(8'b11111100),
    .i21(zc_do_bus),
    .i22({gx0,TAPE_IN,kb_do_bus}),
    .i23(mc146818_do_bus),
    .i24(ram_do_bus),
    .i3(port_028b_reg),
    .i4(port_018b_reg),
    .i5(port_008b_reg),
    .i6(flash_do_bus),
    .i7({4'b0000,port_xxC7_reg[3:2],flash_rdy,flash_busy}),
    .i8(zxuno_uart_do_bus),
    .i9(zxuno_addr_to_cpu),
    .sel({n328,n329,n330,n331,n332,n333,n334,n335,n336,n337,n338,n339,n340,n341,n342,n343,n344,n345,n346,n347,n348,n349,n350,n351,n352}),
    .o(cpu_di_bus));  // ../../rtl/karabas_pro.vhd(1621)
  and u10 (n6, n2, n5);  // ../../rtl/karabas_pro.vhd(725)
  and u100 (n81, n80, cpu_m1_n);  // ../../rtl/karabas_pro.vhd(1275)
  and u101 (cs_008b, n81, n79);  // ../../rtl/karabas_pro.vhd(1275)
  buf u102 (rom0, port_008b_reg[0]);  // ../../rtl/karabas_pro.vhd(1277)
  buf u103 (onrom, port_008b_reg[6]);  // ../../rtl/karabas_pro.vhd(1283)
  buf u104 (unlock_128, port_008b_reg[7]);  // ../../rtl/karabas_pro.vhd(1284)
  and u105 (n83, n82, n75);  // ../../rtl/karabas_pro.vhd(1287)
  and u106 (n84, n83, cpu_m1_n);  // ../../rtl/karabas_pro.vhd(1287)
  and u107 (cs_018b, n84, n79);  // ../../rtl/karabas_pro.vhd(1287)
  and u108 (n86, n85, n75);  // ../../rtl/karabas_pro.vhd(1299)
  and u109 (cs_028b, n86, cpu_m1_n);  // ../../rtl/karabas_pro.vhd(1299)
  and u11 (n7, zc_spi_start, zc_wr_en);  // ../../rtl/karabas_pro.vhd(726)
  buf u110 (hdd_off, port_028b_reg[0]);  // ../../rtl/karabas_pro.vhd(1301)
  not u111 (n87, port_028b_reg[2]);  // ../../rtl/karabas_pro.vhd(1303)
  and u112 (turbo_fdc_off, n87, soft_sw[5]);  // ../../rtl/karabas_pro.vhd(1303)
  or u113 (fdc_swap, port_028b_reg[3], soft_sw[10]);  // ../../rtl/karabas_pro.vhd(1304)
  buf u114 (sound_off, port_028b_reg[4]);  // ../../rtl/karabas_pro.vhd(1305)
  buf u115 (host_flash_a_bus[0], port_xx67_reg[0]);  // ../../rtl/karabas_pro.vhd(1231)
  buf u116 (lock_dffd, port_028b_reg[7]);  // ../../rtl/karabas_pro.vhd(1307)
  buf u117 (SDIR, fdc_swap);  // ../../rtl/karabas_pro.vhd(1309)
  buf u118 (rom14, port_7ffd_reg[4]);  // ../../rtl/karabas_pro.vhd(1313)
  buf u119 (cpm, port_dffd_reg[5]);  // ../../rtl/karabas_pro.vhd(1314)
  not u12 (n8, areset);  // ../../rtl/karabas_pro.vhd(862)
  buf u120 (worom, port_dffd_reg[4]);  // ../../rtl/karabas_pro.vhd(1315)
  buf u121 (ds80, port_dffd_reg[7]);  // ../../rtl/karabas_pro.vhd(1316)
  buf u122 (scr, port_dffd_reg[6]);  // ../../rtl/karabas_pro.vhd(1317)
  buf u123 (sco, port_dffd_reg[3]);  // ../../rtl/karabas_pro.vhd(1318)
  buf u124 (turbo_mode[0], port_028b_reg[5]);  // ../../rtl/karabas_pro.vhd(1306)
  not u125 (n88, cpu_a_bus[0]);  // ../../rtl/karabas_pro.vhd(1324)
  and u126 (cs_xxfe, n75, n88);  // ../../rtl/karabas_pro.vhd(1324)
  not u127 (n89, cpu_a_bus[7]);  // ../../rtl/karabas_pro.vhd(1325)
  and u128 (cs_xx7e, cs_xxfe, n89);  // ../../rtl/karabas_pro.vhd(1325)
  and u129 (n91, n75, cpu_m1_n);  // ../../rtl/karabas_pro.vhd(1327)
  not u13 (n9, mc146818_wr);  // ../../rtl/karabas_pro.vhd(883)
  and u130 (n92, n91, n90);  // ../../rtl/karabas_pro.vhd(1327)
  and u131 (cs_fffd, n92, fd_port);  // ../../rtl/karabas_pro.vhd(1327)
  not u132 (n94, lock_dffd);  // ../../rtl/karabas_pro.vhd(1328)
  and u133 (n95, n91, n93);  // ../../rtl/karabas_pro.vhd(1328)
  and u134 (n96, n95, fd_port);  // ../../rtl/karabas_pro.vhd(1328)
  and u135 (cs_dffd, n96, n94);  // ../../rtl/karabas_pro.vhd(1328)
  and u136 (n98, n91, n97);  // ../../rtl/karabas_pro.vhd(1329)
  and u137 (cs_7ffd, n98, fd_port);  // ../../rtl/karabas_pro.vhd(1329)
  not u138 (n99, cpu_a_bus[15]);  // ../../rtl/karabas_pro.vhd(1330)
  not u139 (n100, cpu_a_bus[1]);  // ../../rtl/karabas_pro.vhd(1330)
  not u14 (n10, loader_act);  // ../../rtl/karabas_pro.vhd(885)
  and u140 (n101, n91, n99);  // ../../rtl/karabas_pro.vhd(1330)
  and u141 (cs_xxfd, n101, n100);  // ../../rtl/karabas_pro.vhd(1330)
  and u142 (n103, n75, n102);  // ../../rtl/karabas_pro.vhd(1333)
  and u143 (n104, n103, cpm);  // ../../rtl/karabas_pro.vhd(1333)
  and u144 (n105, n104, rom14);  // ../../rtl/karabas_pro.vhd(1333)
  and u145 (cs_xxC7, n105, ds80);  // ../../rtl/karabas_pro.vhd(1333)
  and u146 (n107, n75, n106);  // ../../rtl/karabas_pro.vhd(1334)
  and u147 (n108, n107, cpm);  // ../../rtl/karabas_pro.vhd(1334)
  and u148 (n109, n108, rom14);  // ../../rtl/karabas_pro.vhd(1334)
  and u149 (n110, n109, ds80);  // ../../rtl/karabas_pro.vhd(1334)
  and u15 (n11, FDC_STEP, turbo_fdc_off);  // ../../rtl/karabas_pro.vhd(956)
  and u150 (cs_xx87, n110, fw_update_mode);  // ../../rtl/karabas_pro.vhd(1334)
  and u151 (n112, n75, n111);  // ../../rtl/karabas_pro.vhd(1335)
  and u152 (n113, n112, cpm);  // ../../rtl/karabas_pro.vhd(1335)
  and u153 (n114, n113, rom14);  // ../../rtl/karabas_pro.vhd(1335)
  and u154 (n115, n114, ds80);  // ../../rtl/karabas_pro.vhd(1335)
  and u155 (cs_xxA7, n115, fw_update_mode);  // ../../rtl/karabas_pro.vhd(1335)
  and u156 (n117, n75, n116);  // ../../rtl/karabas_pro.vhd(1336)
  and u157 (n118, n117, cpm);  // ../../rtl/karabas_pro.vhd(1336)
  and u158 (n119, n118, rom14);  // ../../rtl/karabas_pro.vhd(1336)
  and u159 (n120, n119, ds80);  // ../../rtl/karabas_pro.vhd(1336)
  not u16 (n12, reset);  // ../../rtl/karabas_pro.vhd(967)
  and u160 (cs_xxE7, n120, fw_update_mode);  // ../../rtl/karabas_pro.vhd(1336)
  and u161 (n122, n75, n121);  // ../../rtl/karabas_pro.vhd(1337)
  and u162 (n123, n122, cpm);  // ../../rtl/karabas_pro.vhd(1337)
  and u163 (n124, n123, rom14);  // ../../rtl/karabas_pro.vhd(1337)
  and u164 (n125, n124, ds80);  // ../../rtl/karabas_pro.vhd(1337)
  and u165 (cs_xx67, n125, fw_update_mode);  // ../../rtl/karabas_pro.vhd(1337)
  or u166 (n128, n126, n127);  // ../../rtl/karabas_pro.vhd(1341)
  and u167 (n129, n91, n128);  // ../../rtl/karabas_pro.vhd(1341)
  and u168 (cs_rtc_as, n129, n79);  // ../../rtl/karabas_pro.vhd(1341)
  or u169 (n132, n130, n131);  // ../../rtl/karabas_pro.vhd(1346)
  not u17 (n14, clk_div2);  // ../../rtl/karabas_pro.vhd(1078)
  and u170 (n133, n91, n132);  // ../../rtl/karabas_pro.vhd(1346)
  and u171 (cs_rtc_ds, n133, n79);  // ../../rtl/karabas_pro.vhd(1346)
  not u172 (n136, hdd_off);  // ../../rtl/karabas_pro.vhd(1353)
  and u173 (n137, cpu_a_bus[7], n135);  // ../../rtl/karabas_pro.vhd(1353)
  and u174 (n138, n137, n75);  // ../../rtl/karabas_pro.vhd(1353)
  and u175 (n139, n138, n79);  // ../../rtl/karabas_pro.vhd(1353)
  and u176 (n140, n139, n136);  // ../../rtl/karabas_pro.vhd(1353)
  not u177 (hdd_profi_ebl_n, n140);  // ../../rtl/karabas_pro.vhd(1353)
  and u178 (n142, n4, n141);  // ../../rtl/karabas_pro.vhd(1354)
  and u179 (n143, n142, n75);  // ../../rtl/karabas_pro.vhd(1354)
  not u18 (n15, clk_div4);  // ../../rtl/karabas_pro.vhd(1085)
  and u180 (n144, n143, n79);  // ../../rtl/karabas_pro.vhd(1354)
  and u181 (n145, n144, n136);  // ../../rtl/karabas_pro.vhd(1354)
  not u182 (hdd_wwc_n, n145);  // ../../rtl/karabas_pro.vhd(1354)
  and u183 (n147, n4, n146);  // ../../rtl/karabas_pro.vhd(1355)
  and u184 (n148, n147, n75);  // ../../rtl/karabas_pro.vhd(1355)
  and u185 (n149, n148, n79);  // ../../rtl/karabas_pro.vhd(1355)
  and u186 (n150, n149, n136);  // ../../rtl/karabas_pro.vhd(1355)
  not u187 (hdd_wwe_n, n150);  // ../../rtl/karabas_pro.vhd(1355)
  and u188 (n151, cpu_wr_n, n141);  // ../../rtl/karabas_pro.vhd(1356)
  and u189 (n152, n151, n75);  // ../../rtl/karabas_pro.vhd(1356)
  not u19 (n16, clk_bus);  // ../../rtl/karabas_pro.vhd(1105)
  and u190 (n153, n152, n79);  // ../../rtl/karabas_pro.vhd(1356)
  and u191 (n154, n153, n136);  // ../../rtl/karabas_pro.vhd(1356)
  not u192 (hdd_rww_n, n154);  // ../../rtl/karabas_pro.vhd(1356)
  and u193 (n155, cpu_wr_n, n146);  // ../../rtl/karabas_pro.vhd(1357)
  and u194 (n156, n155, n75);  // ../../rtl/karabas_pro.vhd(1357)
  and u195 (n157, n156, n79);  // ../../rtl/karabas_pro.vhd(1357)
  and u196 (n158, n157, n136);  // ../../rtl/karabas_pro.vhd(1357)
  not u197 (hdd_rwe_n, n158);  // ../../rtl/karabas_pro.vhd(1357)
  and u198 (n160, n4, n159);  // ../../rtl/karabas_pro.vhd(1358)
  and u199 (n161, n160, n75);  // ../../rtl/karabas_pro.vhd(1358)
  AL_MUX u2 (
    .i0(clk_28),
    .i1(clk_24),
    .sel(ds80),
    .o(clk_bus));  // ../../rtl/karabas_pro.vhd(554)
  buf u20 (ena_div2, ena_cnt[0]);  // ../../rtl/karabas_pro.vhd(1110)
  and u200 (n162, n161, n79);  // ../../rtl/karabas_pro.vhd(1358)
  and u201 (n163, n162, n136);  // ../../rtl/karabas_pro.vhd(1358)
  not u202 (hdd_cs3fx_n, n163);  // ../../rtl/karabas_pro.vhd(1358)
  and u203 (n164, hdd_wwc_n, hdd_wwe_n);  // ../../rtl/karabas_pro.vhd(1359)
  and u204 (n165, n164, hdd_rww_n);  // ../../rtl/karabas_pro.vhd(1359)
  and u205 (n166, n165, hdd_rwe_n);  // ../../rtl/karabas_pro.vhd(1359)
  not u206 (hdd_active, n166);  // ../../rtl/karabas_pro.vhd(1359)
  and u207 (n169, n167, n168);  // ../../rtl/karabas_pro.vhd(1362)
  and u208 (n170, n169, n75);  // ../../rtl/karabas_pro.vhd(1362)
  and u209 (n171, n170, n79);  // ../../rtl/karabas_pro.vhd(1362)
  and u21 (ena_div4, ena_cnt[1], ena_cnt[0]);  // ../../rtl/karabas_pro.vhd(1111)
  not u210 (RT_F2_1, n171);  // ../../rtl/karabas_pro.vhd(1362)
  not u211 (n173, dos_act);  // ../../rtl/karabas_pro.vhd(1363)
  and u212 (n174, n172, n168);  // ../../rtl/karabas_pro.vhd(1363)
  and u213 (n175, n174, n75);  // ../../rtl/karabas_pro.vhd(1363)
  and u214 (n176, n175, cpm);  // ../../rtl/karabas_pro.vhd(1363)
  and u215 (n177, n176, n173);  // ../../rtl/karabas_pro.vhd(1363)
  and u216 (n178, n177, n77);  // ../../rtl/karabas_pro.vhd(1363)
  not u217 (RT_F2_2, n178);  // ../../rtl/karabas_pro.vhd(1363)
  not u218 (n180, cpm);  // ../../rtl/karabas_pro.vhd(1364)
  and u219 (n181, n179, n168);  // ../../rtl/karabas_pro.vhd(1364)
  and u22 (n18, ena_cnt[2], ena_cnt[1]);  // ../../rtl/karabas_pro.vhd(1112)
  and u220 (n182, n181, n75);  // ../../rtl/karabas_pro.vhd(1364)
  and u221 (n183, n182, n180);  // ../../rtl/karabas_pro.vhd(1364)
  and u222 (n184, n183, dos_act);  // ../../rtl/karabas_pro.vhd(1364)
  and u223 (n185, n184, rom14);  // ../../rtl/karabas_pro.vhd(1364)
  not u224 (RT_F2_3, n185);  // ../../rtl/karabas_pro.vhd(1364)
  and u225 (n186, RT_F2_1, RT_F2_2);  // ../../rtl/karabas_pro.vhd(1365)
  and u226 (fdd_cs_pff_n, n186, RT_F2_3);  // ../../rtl/karabas_pro.vhd(1365)
  and u227 (n187, n89, n168);  // ../../rtl/karabas_pro.vhd(1367)
  and u228 (n188, n187, n75);  // ../../rtl/karabas_pro.vhd(1367)
  and u229 (n189, n188, cpm);  // ../../rtl/karabas_pro.vhd(1367)
  and u23 (ena_div8, n18, ena_cnt[0]);  // ../../rtl/karabas_pro.vhd(1112)
  and u230 (n190, n189, n173);  // ../../rtl/karabas_pro.vhd(1367)
  and u231 (n191, n190, n77);  // ../../rtl/karabas_pro.vhd(1367)
  not u232 (RT_F1_1, n191);  // ../../rtl/karabas_pro.vhd(1367)
  and u233 (n192, n188, n180);  // ../../rtl/karabas_pro.vhd(1368)
  and u234 (n193, n192, dos_act);  // ../../rtl/karabas_pro.vhd(1368)
  and u235 (n194, n193, rom14);  // ../../rtl/karabas_pro.vhd(1368)
  not u236 (RT_F1_2, n194);  // ../../rtl/karabas_pro.vhd(1368)
  and u237 (RT_F1, RT_F1_1, RT_F1_2);  // ../../rtl/karabas_pro.vhd(1369)
  and u238 (n196, cpu_a_bus[7], n195);  // ../../rtl/karabas_pro.vhd(1370)
  and u239 (n197, n196, n75);  // ../../rtl/karabas_pro.vhd(1370)
  and u24 (n19, ena_cnt[3], ena_cnt[2]);  // ../../rtl/karabas_pro.vhd(1113)
  and u240 (n198, n197, n79);  // ../../rtl/karabas_pro.vhd(1370)
  not u241 (P0, n198);  // ../../rtl/karabas_pro.vhd(1370)
  and u242 (fdd_cs_n, RT_F1, P0);  // ../../rtl/karabas_pro.vhd(1371)
  and u243 (n199, cs_rtc_as, n4);  // ../../rtl/karabas_pro.vhd(1407)
  and u244 (n201, cs_dffd, n4);  // ../../rtl/karabas_pro.vhd(1412)
  not u245 (n203, port_7ffd_reg[5]);  // ../../rtl/karabas_pro.vhd(1417)
  or u246 (n204, n203, port_dffd_reg[4]);  // ../../rtl/karabas_pro.vhd(1417)
  and u247 (n205, cs_xxfd, n4);  // ../../rtl/karabas_pro.vhd(1417)
  and u248 (n206, n205, n204);  // ../../rtl/karabas_pro.vhd(1417)
  and u249 (n208, cs_7ffd, n4);  // ../../rtl/karabas_pro.vhd(1421)
  and u25 (n20, n19, ena_cnt[1]);  // ../../rtl/karabas_pro.vhd(1113)
  and u250 (n209, n208, n204);  // ../../rtl/karabas_pro.vhd(1421)
  and u251 (n211, cs_xxC7, n4);  // ../../rtl/karabas_pro.vhd(1426)
  and u252 (n213, cs_xx87, n4);  // ../../rtl/karabas_pro.vhd(1431)
  and u253 (n215, cs_xxA7, n4);  // ../../rtl/karabas_pro.vhd(1436)
  and u254 (n217, cs_xxE7, n4);  // ../../rtl/karabas_pro.vhd(1441)
  and u255 (n219, cs_xx67, n4);  // ../../rtl/karabas_pro.vhd(1446)
  and u256 (n221, cs_008b, n4);  // ../../rtl/karabas_pro.vhd(1451)
  and u257 (n223, cs_018b, n4);  // ../../rtl/karabas_pro.vhd(1456)
  and u258 (n225, cs_028b, n4);  // ../../rtl/karabas_pro.vhd(1461)
  buf u259 (ram_ext[0], port_dffd_reg[0]);  // ../../rtl/karabas_pro.vhd(1322)
  and u26 (ena_div16, n20, ena_cnt[0]);  // ../../rtl/karabas_pro.vhd(1113)
  or u260 (n232, rom14, unlock_128);  // ../../rtl/karabas_pro.vhd(1469)
  and u261 (n233, n30, n231);  // ../../rtl/karabas_pro.vhd(1469)
  and u262 (n234, n233, n232);  // ../../rtl/karabas_pro.vhd(1469)
  and u263 (n235, n33, n35);  // ../../rtl/karabas_pro.vhd(1469)
  or u264 (n236, n234, n235);  // ../../rtl/karabas_pro.vhd(1469)
  not u265 (n237, port_dffd_reg[4]);  // ../../rtl/karabas_pro.vhd(1469)
  and u266 (n238, n236, n237);  // ../../rtl/karabas_pro.vhd(1469)
  or u267 (n239, n238, onrom);  // ../../rtl/karabas_pro.vhd(1469)
  or u268 (n240, n31, port_dffd_reg[4]);  // ../../rtl/karabas_pro.vhd(1470)
  AL_MUX u269 (
    .i0(dos_act),
    .i1(1'b0),
    .sel(n240),
    .o(n241));  // ../../rtl/karabas_pro.vhd(1470)
  not u27 (n21, locked_tri);  // ../../rtl/karabas_pro.vhd(1122)
  AL_MUX u270 (
    .i0(n241),
    .i1(1'b1),
    .sel(n239),
    .o(n242));  // ../../rtl/karabas_pro.vhd(1470)
  buf u271 (speaker, port_xxfe_reg[4]);  // ../../rtl/karabas_pro.vhd(1478)
  buf u272 (BUZZER, speaker);  // ../../rtl/karabas_pro.vhd(1479)
  AL_MUX u273 (
    .i0(1'b0),
    .i1(TAPE_IN),
    .sel(tape_in_out_enable),
    .o(tape_in_monitor));  // ../../rtl/karabas_pro.vhd(1480)
  or u274 (n260, loader_act, kb_wait);  // ../../rtl/karabas_pro.vhd(1499)
  or u275 (n261, n260, sound_off);  // ../../rtl/karabas_pro.vhd(1499)
  not u276 (n308, port_xxfe_reg[3]);  // ../../rtl/karabas_pro.vhd(1546)
  AL_MUX u277 (
    .i0(1'b0),
    .i1(port_xxfe_reg[3]),
    .sel(tape_in_out_enable),
    .o(n309));  // ../../rtl/karabas_pro.vhd(1546)
  or u278 (n310, tape_in_out_enable, n308);  // ../../rtl/karabas_pro.vhd(1546)
  bufif1 u279 (TAPE_OUT, n309, n310);  // ../../rtl/karabas_pro.vhd(1546)
  AL_MUX u28 (
    .i0(locked_tri),
    .i1(1'b1),
    .sel(n21),
    .o(n22));  // ../../rtl/karabas_pro.vhd(1127)
  and u280 (n311, cs_rtc_ds, n75);  // ../../rtl/karabas_pro.vhd(1554)
  and u281 (n312, n311, n4);  // ../../rtl/karabas_pro.vhd(1554)
  and u282 (mc146818_wr, n312, cpu_m1_n);  // ../../rtl/karabas_pro.vhd(1554)
  not u283 (n314, is_flash_not_sd);  // ../../rtl/karabas_pro.vhd(1557)
  and u284 (n315, n313, n75);  // ../../rtl/karabas_pro.vhd(1557)
  and u285 (n316, n315, cpu_m1_n);  // ../../rtl/karabas_pro.vhd(1557)
  and u286 (n317, n316, n10);  // ../../rtl/karabas_pro.vhd(1557)
  and u287 (zc_spi_start, n317, n314);  // ../../rtl/karabas_pro.vhd(1557)
  and u288 (n318, n316, n4);  // ../../rtl/karabas_pro.vhd(1558)
  and u289 (n319, n318, n10);  // ../../rtl/karabas_pro.vhd(1558)
  or u29 (n23, areset, kb_reset);  // ../../rtl/karabas_pro.vhd(1132)
  and u290 (zc_wr_en, n319, n314);  // ../../rtl/karabas_pro.vhd(1558)
  buf u291 (max_turbo[1], 1'b1);  // ../../rtl/karabas_pro.vhd(1141)
  buf u292 (host_flash_di_bus[7], port_xxE7_reg[7]);  // ../../rtl/karabas_pro.vhd(1230)
  buf u293 (host_flash_di_bus[6], port_xxE7_reg[6]);  // ../../rtl/karabas_pro.vhd(1230)
  and u294 (n321, n320, n75);  // ../../rtl/karabas_pro.vhd(1559)
  and u295 (n322, n321, cpu_m1_n);  // ../../rtl/karabas_pro.vhd(1559)
  and u296 (n323, n322, n4);  // ../../rtl/karabas_pro.vhd(1559)
  and u297 (n324, n323, n10);  // ../../rtl/karabas_pro.vhd(1559)
  and u298 (port77_wr, n324, n314);  // ../../rtl/karabas_pro.vhd(1559)
  or u299 (n325, loader_act, reset);  // ../../rtl/karabas_pro.vhd(1563)
  AL_MUX u3 (
    .i0(clk_84),
    .i1(clk_72),
    .sel(ds80),
    .o(clk_bus_port));  // ../../rtl/karabas_pro.vhd(555)
  or u30 (n24, n23, loader_reset);  // ../../rtl/karabas_pro.vhd(1132)
  AL_MUX u300 (
    .i0(zc_cs_n),
    .i1(cpu_do_bus[1]),
    .sel(port77_wr),
    .o(n326));  // ../../rtl/karabas_pro.vhd(1568)
  buf u301 (audio_mono[0], 1'b0);  // ../../rtl/karabas_pro.vhd(1482)
  not u302 (n327[0], ms_b[1]);  // ../../rtl/karabas_pro.vhd(1606)
  buf u303 (host_flash_di_bus[5], port_xxE7_reg[5]);  // ../../rtl/karabas_pro.vhd(1230)
  buf u304 (host_flash_di_bus[4], port_xxE7_reg[4]);  // ../../rtl/karabas_pro.vhd(1230)
  and u305 (n353, n75, n3);  // ../../rtl/karabas_pro.vhd(1626)
  and u306 (n354, n353, cpu_m1_n);  // ../../rtl/karabas_pro.vhd(1626)
  and u307 (n355, n354, cs_rtc_ds);  // ../../rtl/karabas_pro.vhd(1626)
  buf u308 (host_flash_di_bus[3], port_xxE7_reg[3]);  // ../../rtl/karabas_pro.vhd(1230)
  and u309 (n356, cs_xxfe, n3);  // ../../rtl/karabas_pro.vhd(1627)
  or u31 (n25, n24, loader_act);  // ../../rtl/karabas_pro.vhd(1132)
  buf u310 (host_flash_di_bus[2], port_xxE7_reg[2]);  // ../../rtl/karabas_pro.vhd(1230)
  buf u311 (host_flash_di_bus[1], port_xxE7_reg[1]);  // ../../rtl/karabas_pro.vhd(1230)
  buf u312 (host_flash_a_bus[23], port_xxA7_reg[7]);  // ../../rtl/karabas_pro.vhd(1231)
  buf u313 (host_flash_a_bus[22], port_xxA7_reg[6]);  // ../../rtl/karabas_pro.vhd(1231)
  buf u314 (host_flash_a_bus[21], port_xxA7_reg[5]);  // ../../rtl/karabas_pro.vhd(1231)
  buf u315 (host_flash_a_bus[20], port_xxA7_reg[4]);  // ../../rtl/karabas_pro.vhd(1231)
  and u316 (n357, n354, n313);  // ../../rtl/karabas_pro.vhd(1628)
  and u317 (n358, n357, n314);  // ../../rtl/karabas_pro.vhd(1628)
  buf u318 (host_flash_a_bus[19], port_xxA7_reg[3]);  // ../../rtl/karabas_pro.vhd(1231)
  buf u319 (host_flash_a_bus[18], port_xxA7_reg[2]);  // ../../rtl/karabas_pro.vhd(1231)
  or u32 (reset, n25, board_reset);  // ../../rtl/karabas_pro.vhd(1132)
  buf u320 (host_flash_a_bus[17], port_xxA7_reg[1]);  // ../../rtl/karabas_pro.vhd(1231)
  buf u321 (host_flash_a_bus[16], port_xxA7_reg[0]);  // ../../rtl/karabas_pro.vhd(1231)
  buf u322 (host_flash_a_bus[15], port_xx87_reg[7]);  // ../../rtl/karabas_pro.vhd(1231)
  buf u323 (host_flash_a_bus[14], port_xx87_reg[6]);  // ../../rtl/karabas_pro.vhd(1231)
  and u324 (n359, n354, n320);  // ../../rtl/karabas_pro.vhd(1629)
  and u325 (n360, n359, n314);  // ../../rtl/karabas_pro.vhd(1629)
  buf u326 (host_flash_a_bus[13], port_xx87_reg[5]);  // ../../rtl/karabas_pro.vhd(1231)
  buf u327 (host_flash_a_bus[12], port_xx87_reg[4]);  // ../../rtl/karabas_pro.vhd(1231)
  buf u328 (host_flash_a_bus[11], port_xx87_reg[3]);  // ../../rtl/karabas_pro.vhd(1231)
  buf u329 (host_flash_a_bus[10], port_xx87_reg[2]);  // ../../rtl/karabas_pro.vhd(1231)
  not u33 (n26, loader_reset);  // ../../rtl/karabas_pro.vhd(1134)
  buf u330 (host_flash_a_bus[9], port_xx87_reg[1]);  // ../../rtl/karabas_pro.vhd(1231)
  buf u331 (host_flash_a_bus[8], port_xx87_reg[0]);  // ../../rtl/karabas_pro.vhd(1231)
  and u332 (n362, n354, n361);  // ../../rtl/karabas_pro.vhd(1630)
  and u333 (n363, n362, n173);  // ../../rtl/karabas_pro.vhd(1630)
  and u334 (n364, n363, n180);  // ../../rtl/karabas_pro.vhd(1630)
  buf u335 (host_flash_a_bus[7], port_xx67_reg[7]);  // ../../rtl/karabas_pro.vhd(1231)
  not u336 (n365, ssg_sel);  // ../../rtl/karabas_pro.vhd(1631)
  and u337 (n366, cs_fffd, n3);  // ../../rtl/karabas_pro.vhd(1631)
  and u338 (n367, n366, n365);  // ../../rtl/karabas_pro.vhd(1631)
  buf u339 (host_flash_a_bus[6], port_xx67_reg[6]);  // ../../rtl/karabas_pro.vhd(1231)
  and u34 (cpu_reset_n, n12, n26);  // ../../rtl/karabas_pro.vhd(1134)
  buf u340 (host_flash_a_bus[5], port_xx67_reg[5]);  // ../../rtl/karabas_pro.vhd(1231)
  and u341 (n368, n366, ssg_sel);  // ../../rtl/karabas_pro.vhd(1632)
  buf u342 (host_flash_a_bus[4], port_xx67_reg[4]);  // ../../rtl/karabas_pro.vhd(1231)
  and u343 (n369, cs_dffd, n3);  // ../../rtl/karabas_pro.vhd(1633)
  buf u344 (host_flash_a_bus[3], port_xx67_reg[3]);  // ../../rtl/karabas_pro.vhd(1231)
  and u345 (n370, cs_7ffd, n3);  // ../../rtl/karabas_pro.vhd(1634)
  buf u346 (host_flash_a_bus[2], port_xx67_reg[2]);  // ../../rtl/karabas_pro.vhd(1231)
  buf u347 (host_flash_a_bus[1], port_xx67_reg[1]);  // ../../rtl/karabas_pro.vhd(1231)
  buf u348 (turbo_mode[1], port_028b_reg[6]);  // ../../rtl/karabas_pro.vhd(1306)
  buf u349 (ram_ext[4], port_7ffd_reg[7]);  // ../../rtl/karabas_pro.vhd(1322)
  or u35 (cpu_inta_n, cpu_iorq_n, cpu_m1_n);  // ../../rtl/karabas_pro.vhd(1135)
  and u350 (n372, n353, n371);  // ../../rtl/karabas_pro.vhd(1635)
  and u351 (n373, n372, ms_present);  // ../../rtl/karabas_pro.vhd(1635)
  and u352 (n374, n373, n180);  // ../../rtl/karabas_pro.vhd(1635)
  buf u353 (ram_ext[3], port_7ffd_reg[6]);  // ../../rtl/karabas_pro.vhd(1322)
  buf u354 (ram_ext[2], port_dffd_reg[2]);  // ../../rtl/karabas_pro.vhd(1322)
  buf u355 (ram_ext[1], port_dffd_reg[1]);  // ../../rtl/karabas_pro.vhd(1322)
  buf u356 (audio_mono[3], 1'b0);  // ../../rtl/karabas_pro.vhd(1482)
  and u357 (n376, n353, n375);  // ../../rtl/karabas_pro.vhd(1636)
  and u358 (n377, n376, ms_present);  // ../../rtl/karabas_pro.vhd(1636)
  and u359 (n378, n377, n180);  // ../../rtl/karabas_pro.vhd(1636)
  not u36 (n27, cpu_m1_n);  // ../../rtl/karabas_pro.vhd(1136)
  buf u360 (audio_mono[2], 1'b0);  // ../../rtl/karabas_pro.vhd(1482)
  buf u361 (audio_mono[1], 1'b0);  // ../../rtl/karabas_pro.vhd(1482)
  not u362 (n327[2], ms_b[2]);  // ../../rtl/karabas_pro.vhd(1606)
  not u363 (n327[1], ms_b[0]);  // ../../rtl/karabas_pro.vhd(1606)
  and u364 (n380, n353, n379);  // ../../rtl/karabas_pro.vhd(1637)
  and u365 (n381, n380, ms_present);  // ../../rtl/karabas_pro.vhd(1637)
  and u366 (n382, n381, n180);  // ../../rtl/karabas_pro.vhd(1637)
  not u367 (n352, n383);  // ../../rtl/karabas_pro.vhd(1621)
  or u368 (n383, n405, n385);  // ../../rtl/karabas_pro.vhd(1621)
  not u369 (n384, 1'bx);  // ../../rtl/karabas_pro.vhd(1638)
  not u37 (n28, cpu_mreq_n);  // ../../rtl/karabas_pro.vhd(1136)
  or u370 (n385, n395, n387);  // ../../rtl/karabas_pro.vhd(1621)
  and u371 (n386, n353, n384);  // ../../rtl/karabas_pro.vhd(1638)
  or u372 (n387, n392, n388);  // ../../rtl/karabas_pro.vhd(1621)
  or u373 (n388, n330, n390);  // ../../rtl/karabas_pro.vhd(1621)
  not u374 (n389, zxuno_addr_oe_n);  // ../../rtl/karabas_pro.vhd(1640)
  or u375 (n390, n329, n328);  // ../../rtl/karabas_pro.vhd(1621)
  and u376 (n391, n353, n389);  // ../../rtl/karabas_pro.vhd(1640)
  or u377 (n392, n333, n393);  // ../../rtl/karabas_pro.vhd(1621)
  or u378 (n393, n332, n331);  // ../../rtl/karabas_pro.vhd(1621)
  not u379 (n394, zxuno_uart_oe_n);  // ../../rtl/karabas_pro.vhd(1641)
  and u38 (n30, n27, n28);  // ../../rtl/karabas_pro.vhd(1136)
  or u380 (n395, n401, n397);  // ../../rtl/karabas_pro.vhd(1621)
  and u381 (n396, n353, n394);  // ../../rtl/karabas_pro.vhd(1641)
  or u382 (n397, n336, n399);  // ../../rtl/karabas_pro.vhd(1621)
  and u383 (n398, cs_xxC7, n3);  // ../../rtl/karabas_pro.vhd(1642)
  or u384 (n399, n335, n334);  // ../../rtl/karabas_pro.vhd(1621)
  and u385 (n400, cs_xxE7, n3);  // ../../rtl/karabas_pro.vhd(1643)
  or u386 (n401, n339, n403);  // ../../rtl/karabas_pro.vhd(1621)
  and u387 (n402, cs_008b, n3);  // ../../rtl/karabas_pro.vhd(1644)
  or u388 (n403, n338, n337);  // ../../rtl/karabas_pro.vhd(1621)
  and u389 (n404, cs_018b, n3);  // ../../rtl/karabas_pro.vhd(1645)
  and u39 (n31, n30, n29);  // ../../rtl/karabas_pro.vhd(1136)
  or u390 (n405, n412, n407);  // ../../rtl/karabas_pro.vhd(1621)
  and u391 (n406, cs_028b, n3);  // ../../rtl/karabas_pro.vhd(1646)
  or u392 (n407, n410, n408);  // ../../rtl/karabas_pro.vhd(1621)
  or u393 (n408, n342, n409);  // ../../rtl/karabas_pro.vhd(1621)
  or u394 (n409, n341, n340);  // ../../rtl/karabas_pro.vhd(1621)
  or u395 (n410, n345, n411);  // ../../rtl/karabas_pro.vhd(1621)
  or u396 (n411, n344, n343);  // ../../rtl/karabas_pro.vhd(1621)
  or u397 (n412, n421, n419);  // ../../rtl/karabas_pro.vhd(1621)
  and u398 (n413, vid_pff_cs, n75);  // ../../rtl/karabas_pro.vhd(1647)
  and u399 (n414, n413, n3);  // ../../rtl/karabas_pro.vhd(1647)
  not u4 (n0, clk_cpu);  // ../../rtl/karabas_pro.vhd(579)
  or u40 (n32, n31, ds80);  // ../../rtl/karabas_pro.vhd(1136)
  and u400 (n415, n414, n126);  // ../../rtl/karabas_pro.vhd(1647)
  and u401 (n416, n415, n173);  // ../../rtl/karabas_pro.vhd(1647)
  and u402 (n417, n416, n180);  // ../../rtl/karabas_pro.vhd(1647)
  and u403 (n418, n417, n35);  // ../../rtl/karabas_pro.vhd(1647)
  or u404 (n419, n348, n420);  // ../../rtl/karabas_pro.vhd(1621)
  or u405 (n420, n347, n346);  // ../../rtl/karabas_pro.vhd(1621)
  or u406 (n421, n351, n422);  // ../../rtl/karabas_pro.vhd(1621)
  or u407 (n422, n350, n349);  // ../../rtl/karabas_pro.vhd(1621)
  and u41 (n33, kb_magic, n32);  // ../../rtl/karabas_pro.vhd(1136)
  not u42 (cpu_nmi_n, n33);  // ../../rtl/karabas_pro.vhd(1136)
  buf u43 (cpu_wait_n, 1'b1);  // ../../rtl/karabas_pro.vhd(1137)
  not u44 (n35, ds80);  // ../../rtl/karabas_pro.vhd(1149)
  and u45 (n36, n34, memory_contention);  // ../../rtl/karabas_pro.vhd(1149)
  and u46 (n37, n36, n35);  // ../../rtl/karabas_pro.vhd(1149)
  not u47 (n38, WAIT_IO);  // ../../rtl/karabas_pro.vhd(1149)
  or u48 (n39, kb_wait, n37);  // ../../rtl/karabas_pro.vhd(1149)
  or u49 (n40, n39, n38);  // ../../rtl/karabas_pro.vhd(1149)
  and u5 (n1, cpu_int_n, serial_ms_int);  // ../../rtl/karabas_pro.vhd(582)
  and u50 (n43, n41, n42);  // ../../rtl/karabas_pro.vhd(1150)
  and u51 (n45, n44, n42);  // ../../rtl/karabas_pro.vhd(1151)
  and u52 (n47, n46, n42);  // ../../rtl/karabas_pro.vhd(1152)
  and u53 (n48, clk_bus, ena_div8);  // ../../rtl/karabas_pro.vhd(1153)
  and u54 (n49, clk_bus, ena_div4);  // ../../rtl/karabas_pro.vhd(1152)
  AL_MUX u55 (
    .i0(n48),
    .i1(n49),
    .sel(n47),
    .o(n50));  // ../../rtl/karabas_pro.vhd(1152)
  and u56 (n51, clk_bus, ena_div2);  // ../../rtl/karabas_pro.vhd(1151)
  AL_MUX u57 (
    .i0(n50),
    .i1(n51),
    .sel(n45),
    .o(n52));  // ../../rtl/karabas_pro.vhd(1151)
  AL_MUX u58 (
    .i0(n52),
    .i1(clk_bus),
    .sel(n43),
    .o(n53));  // ../../rtl/karabas_pro.vhd(1150)
  AL_MUX u59 (
    .i0(n53),
    .i1(1'b0),
    .sel(n40),
    .o(clk_cpu));  // ../../rtl/karabas_pro.vhd(1153)
  not u6 (n2, fdd_cs_n);  // ../../rtl/karabas_pro.vhd(725)
  buf u60 (WAIT_IO, WAIT_C[1]);  // ../../rtl/karabas_pro.vhd(1159)
  not u61 (n54, WAIT_C[0]);  // ../../rtl/karabas_pro.vhd(1160)
  and u62 (WAIT_C_STOP, WAIT_C[1], n54);  // ../../rtl/karabas_pro.vhd(1160)
  not u63 (n55, turbo_mode[1]);  // ../../rtl/karabas_pro.vhd(1161)
  or u64 (WAIT_EN, reset, n55);  // ../../rtl/karabas_pro.vhd(1161)
  not u65 (n56, ena_div2);  // ../../rtl/karabas_pro.vhd(1164)
  not u66 (n61, SD_NCS);  // ../../rtl/karabas_pro.vhd(1182)
  or u67 (n62, n150, n154);  // ../../rtl/karabas_pro.vhd(1182)
  or u68 (n63, n62, n61);  // ../../rtl/karabas_pro.vhd(1182)
  not u69 (n423[3], n354);  // ../../rtl/karabas_pro.vhd(1648)
  not u7 (n3, cpu_rd_n);  // ../../rtl/karabas_pro.vhd(725)
  AL_MUX u70 (
    .i0(1'b1),
    .i1(blink),
    .sel(kb_wait),
    .o(n64));  // ../../rtl/karabas_pro.vhd(1201)
  AL_MUX u71 (
    .i0(n64),
    .i1(1'b0),
    .sel(loader_act),
    .o(n65));  // ../../rtl/karabas_pro.vhd(1201)
  or u72 (n66, loader_act, is_flash_not_sd);  // ../../rtl/karabas_pro.vhd(1208)
  AL_MUX u73 (
    .i0(zc_cs_n),
    .i1(1'b1),
    .sel(n66),
    .o(SD_NCS));  // ../../rtl/karabas_pro.vhd(1208)
  AL_MUX u74 (
    .i0(zc_sclk),
    .i1(1'b1),
    .sel(n66),
    .o(sd_clk));  // ../../rtl/karabas_pro.vhd(1209)
  AL_MUX u75 (
    .i0(zc_mosi),
    .i1(1'b1),
    .sel(n66),
    .o(sd_si));  // ../../rtl/karabas_pro.vhd(1210)
  AL_MUX u76 (
    .i0(sd_clk),
    .i1(flash_clk),
    .sel(n66),
    .o(DCLK));  // ../../rtl/karabas_pro.vhd(1213)
  AL_MUX u77 (
    .i0(sd_si),
    .i1(flash_do),
    .sel(n66),
    .o(ASDO));  // ../../rtl/karabas_pro.vhd(1214)
  AL_MUX u78 (
    .i0(1'b1),
    .i1(flash_ncs),
    .sel(n66),
    .o(NCSO));  // ../../rtl/karabas_pro.vhd(1215)
  buf u79 (SD_MOSI, sd_si);  // ../../rtl/karabas_pro.vhd(1216)
  not u8 (n4, cpu_wr_n);  // ../../rtl/karabas_pro.vhd(725)
  AL_MUX u80 (
    .i0(host_flash_wr_n),
    .i1(1'b1),
    .sel(loader_act),
    .o(flash_wr_n));  // ../../rtl/karabas_pro.vhd(1221)
  AL_MUX u81 (
    .i0(host_flash_rd_n),
    .i1(loader_flash_rd_n),
    .sel(loader_act),
    .o(flash_rd_n));  // ../../rtl/karabas_pro.vhd(1222)
  AL_MUX u82 (
    .i0(host_flash_er_n),
    .i1(1'b1),
    .sel(loader_act),
    .o(flash_er_n));  // ../../rtl/karabas_pro.vhd(1223)
  not u83 (host_flash_rd_n, port_xxC7_reg[0]);  // ../../rtl/karabas_pro.vhd(1225)
  not u84 (host_flash_wr_n, port_xxC7_reg[1]);  // ../../rtl/karabas_pro.vhd(1226)
  not u85 (host_flash_er_n, port_xxC7_reg[4]);  // ../../rtl/karabas_pro.vhd(1227)
  buf u86 (is_flash_not_sd, port_xxC7_reg[2]);  // ../../rtl/karabas_pro.vhd(1228)
  buf u87 (fw_update_mode, port_xxC7_reg[3]);  // ../../rtl/karabas_pro.vhd(1229)
  buf u88 (max_turbo[0], 1'b0);  // ../../rtl/karabas_pro.vhd(1141)
  buf u89 (host_flash_di_bus[0], port_xxE7_reg[0]);  // ../../rtl/karabas_pro.vhd(1230)
  or u9 (n5, n3, n4);  // ../../rtl/karabas_pro.vhd(725)
  and u90 (n69, n67, n68);  // ../../rtl/karabas_pro.vhd(1262)
  and u91 (n72, n70, n71);  // ../../rtl/karabas_pro.vhd(1263)
  or u92 (n73, n69, n72);  // ../../rtl/karabas_pro.vhd(1263)
  not u93 (fd_sel, n73);  // ../../rtl/karabas_pro.vhd(1263)
  not u94 (n75, cpu_iorq_n);  // ../../rtl/karabas_pro.vhd(1275)
  and u95 (n76, cpm, rom14);  // ../../rtl/karabas_pro.vhd(1275)
  not u96 (n77, rom14);  // ../../rtl/karabas_pro.vhd(1275)
  and u97 (n78, dos_act, n77);  // ../../rtl/karabas_pro.vhd(1275)
  or u98 (n79, n76, n78);  // ../../rtl/karabas_pro.vhd(1275)
  and u99 (n80, n74, n75);  // ../../rtl/karabas_pro.vhd(1275)
  AL_DFF zc_cs_n_reg (
    .clk(clk_bus),
    .d(n326),
    .reset(1'b0),
    .set(n325),
    .q(zc_cs_n));  // ../../rtl/karabas_pro.vhd(1569)

endmodule 

module zxunoregs  // ../../rtl/uart/zxunoregs.v(23)
  (
  a,
  clk,
  din,
  iorq_n,
  rd_n,
  rst_n,
  wr_n,
  addr,
  dout,
  oe_n,
  read_from_reg,
  regaddr_changed,
  write_to_reg
  );

  input [15:0] a;  // ../../rtl/uart/zxunoregs.v(26)
  input clk;  // ../../rtl/uart/zxunoregs.v(24)
  input [7:0] din;  // ../../rtl/uart/zxunoregs.v(30)
  input iorq_n;  // ../../rtl/uart/zxunoregs.v(27)
  input rd_n;  // ../../rtl/uart/zxunoregs.v(28)
  input rst_n;  // ../../rtl/uart/zxunoregs.v(25)
  input wr_n;  // ../../rtl/uart/zxunoregs.v(29)
  output [7:0] addr;  // ../../rtl/uart/zxunoregs.v(33)
  output [7:0] dout;  // ../../rtl/uart/zxunoregs.v(31)
  output oe_n;  // ../../rtl/uart/zxunoregs.v(32)
  output read_from_reg;  // ../../rtl/uart/zxunoregs.v(34)
  output regaddr_changed;  // ../../rtl/uart/zxunoregs.v(36)
  output write_to_reg;  // ../../rtl/uart/zxunoregs.v(35)

  parameter IOADDR = 16'b1111110000111011;
  parameter IODATA = 16'b1111110100111011;
  wire [7:0] n6;
  wire [7:0] n7;
  wire [7:0] raddr;  // ../../rtl/uart/zxunoregs.v(44)
  wire n0;
  wire n1;
  wire n10;
  wire n11;
  wire n12;
  wire n2;
  wire n3;
  wire n4;
  wire n5;
  wire n8;
  wire n9;
  wire rregaddr_changed;  // ../../rtl/uart/zxunoregs.v(46)

  eq_w16 eq0 (
    .i0(a),
    .i1(16'b1111110000111011),
    .o(n2));  // ../../rtl/uart/zxunoregs.v(54)
  eq_w16 eq1 (
    .i0(a),
    .i1(16'b1111110100111011),
    .o(n11));  // ../../rtl/uart/zxunoregs.v(73)
  binary_mux_s1_w8 mux0 (
    .i0(raddr),
    .i1(din),
    .sel(n5),
    .o(n6));  // ../../rtl/uart/zxunoregs.v(59)
  binary_mux_s1_w8 mux1 (
    .i0(n6),
    .i1(8'b00000000),
    .sel(n0),
    .o(n7));  // ../../rtl/uart/zxunoregs.v(59)
  reg_ar_as_w8 reg0 (
    .clk(clk),
    .d(n7),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(raddr));  // ../../rtl/uart/zxunoregs.v(60)
  AL_DFF rregaddr_changed_reg (
    .clk(clk),
    .d(n8),
    .reset(1'b0),
    .set(1'b0),
    .q(rregaddr_changed));  // ../../rtl/uart/zxunoregs.v(60)
  buf u10 (addr[1], raddr[1]);  // ../../rtl/uart/zxunoregs.v(45)
  bufif1 u11 (dout[7], raddr[7], n10);  // ../../rtl/uart/zxunoregs.v(71)
  bufif1 u12 (dout[6], raddr[6], n10);  // ../../rtl/uart/zxunoregs.v(71)
  not u13 (n9, rd_n);  // ../../rtl/uart/zxunoregs.v(63)
  and u14 (n10, n3, n9);  // ../../rtl/uart/zxunoregs.v(63)
  not u15 (oe_n, n10);  // ../../rtl/uart/zxunoregs.v(70)
  buf u16 (addr[7], raddr[7]);  // ../../rtl/uart/zxunoregs.v(45)
  buf u17 (addr[6], raddr[6]);  // ../../rtl/uart/zxunoregs.v(45)
  buf u18 (addr[5], raddr[5]);  // ../../rtl/uart/zxunoregs.v(45)
  buf u19 (addr[4], raddr[4]);  // ../../rtl/uart/zxunoregs.v(45)
  buf u2 (regaddr_changed, rregaddr_changed);  // ../../rtl/uart/zxunoregs.v(47)
  buf u20 (addr[3], raddr[3]);  // ../../rtl/uart/zxunoregs.v(45)
  buf u21 (addr[2], raddr[2]);  // ../../rtl/uart/zxunoregs.v(45)
  bufif1 u22 (dout[5], raddr[5], n10);  // ../../rtl/uart/zxunoregs.v(71)
  and u23 (n12, n11, n1);  // ../../rtl/uart/zxunoregs.v(73)
  bufif1 u24 (dout[4], raddr[4], n10);  // ../../rtl/uart/zxunoregs.v(71)
  and u25 (read_from_reg, n12, n9);  // ../../rtl/uart/zxunoregs.v(73)
  bufif1 u26 (dout[3], raddr[3], n10);  // ../../rtl/uart/zxunoregs.v(71)
  bufif1 u27 (dout[2], raddr[2], n10);  // ../../rtl/uart/zxunoregs.v(71)
  bufif1 u28 (dout[1], raddr[1], n10);  // ../../rtl/uart/zxunoregs.v(71)
  bufif1 u29 (dout[0], raddr[0], n10);  // ../../rtl/uart/zxunoregs.v(71)
  not u3 (n0, rst_n);  // ../../rtl/uart/zxunoregs.v(50)
  and u30 (write_to_reg, n12, n4);  // ../../rtl/uart/zxunoregs.v(74)
  not u4 (n1, iorq_n);  // ../../rtl/uart/zxunoregs.v(54)
  and u5 (n3, n1, n2);  // ../../rtl/uart/zxunoregs.v(54)
  not u6 (n4, wr_n);  // ../../rtl/uart/zxunoregs.v(54)
  and u7 (n5, n3, n4);  // ../../rtl/uart/zxunoregs.v(54)
  AL_MUX u8 (
    .i0(n5),
    .i1(1'b1),
    .sel(n0),
    .o(n8));  // ../../rtl/uart/zxunoregs.v(59)
  buf u9 (addr[0], raddr[0]);  // ../../rtl/uart/zxunoregs.v(45)

endmodule 

module zxunouart  // ../../rtl/uart/zxunouart.v(24)
  (
  clk_bus,
  din,
  ds80,
  uart_rx,
  zxuno_addr,
  zxuno_regrd,
  zxuno_regwr,
  dout,
  oe_n,
  uart_rts,
  uart_tx
  );

  input clk_bus;  // ../../rtl/uart/zxunouart.v(25)
  input [7:0] din;  // ../../rtl/uart/zxunouart.v(30)
  input ds80;  // ../../rtl/uart/zxunouart.v(26)
  input uart_rx;  // ../../rtl/uart/zxunouart.v(34)
  input [7:0] zxuno_addr;  // ../../rtl/uart/zxunouart.v(27)
  input zxuno_regrd;  // ../../rtl/uart/zxunouart.v(28)
  input zxuno_regwr;  // ../../rtl/uart/zxunouart.v(29)
  output [7:0] dout;  // ../../rtl/uart/zxunouart.v(31)
  output oe_n;  // ../../rtl/uart/zxunouart.v(32)
  output uart_rts;  // ../../rtl/uart/zxunouart.v(35)
  output uart_tx;  // ../../rtl/uart/zxunouart.v(33)

  parameter UARTDATA = 8'b11000110;
  parameter UARTSTAT = 8'b11000111;
  wire [7:0] rxdata;  // ../../rtl/uart/zxunouart.v(43)
  wire comenzar_trans;  // ../../rtl/uart/zxunouart.v(45)
  wire data_read;  // ../../rtl/uart/zxunouart.v(49)
  wire data_received;  // ../../rtl/uart/zxunouart.v(42)
  wire leyendo_estado;  // ../../rtl/uart/zxunouart.v(47)
  wire n0;
  wire n1;
  wire n10;
  wire n11;
  wire n12;
  wire n13;
  wire n14;
  wire n15;
  wire n16;
  wire n17;
  wire n18;
  wire n19;
  wire n2;
  wire n20;
  wire n21;
  wire n22;
  wire n23;
  wire n24;
  wire n25;
  wire n26;
  wire n27;
  wire n28;
  wire n29;
  wire n3;
  wire n30;
  wire n31;
  wire n4;
  wire n5;
  wire n6;
  wire n7;
  wire n8;
  wire n9;
  wire rxrecv;  // ../../rtl/uart/zxunouart.v(46)
  wire txbusy;  // ../../rtl/uart/zxunouart.v(41)

  AL_DFF comenzar_trans_reg (
    .clk(clk_bus),
    .d(n20),
    .reset(1'b0),
    .set(1'b0),
    .q(comenzar_trans));  // ../../rtl/uart/zxunouart.v(99)
  eq_w8 eq0 (
    .i0(zxuno_addr),
    .i1(8'b11000110),
    .o(n0));  // ../../rtl/uart/zxunouart.v(65)
  eq_w8 eq1 (
    .i0(zxuno_addr),
    .i1(8'b11000111),
    .o(n1));  // ../../rtl/uart/zxunouart.v(74)
  AL_DFF leyendo_estado_reg (
    .clk(clk_bus),
    .d(n30),
    .reset(1'b0),
    .set(1'b0),
    .q(leyendo_estado));  // ../../rtl/uart/zxunouart.v(99)
  ne_w8 neq0 (
    .i0(zxuno_addr),
    .i1(8'b11000111),
    .o(n24));  // ../../rtl/uart/zxunouart.v(94)
  AL_DFF rxrecv_reg (
    .clk(clk_bus),
    .d(n31),
    .reset(1'b0),
    .set(1'b0),
    .q(rxrecv));  // ../../rtl/uart/zxunouart.v(99)
  bufif1 u10 (dout[1], n11, n5);  // ../../rtl/uart/zxunouart.v(78)
  AL_MUX u11 (
    .i0(1'b0),
    .i1(rxdata[5]),
    .sel(data_read),
    .o(n7));  // ../../rtl/uart/zxunouart.v(77)
  bufif1 u12 (dout[2], n10, n5);  // ../../rtl/uart/zxunouart.v(78)
  AL_MUX u13 (
    .i0(1'b0),
    .i1(rxdata[4]),
    .sel(data_read),
    .o(n8));  // ../../rtl/uart/zxunouart.v(77)
  bufif1 u14 (dout[3], n9, n5);  // ../../rtl/uart/zxunouart.v(78)
  AL_MUX u15 (
    .i0(1'b0),
    .i1(rxdata[3]),
    .sel(data_read),
    .o(n9));  // ../../rtl/uart/zxunouart.v(77)
  bufif1 u16 (dout[4], n8, n5);  // ../../rtl/uart/zxunouart.v(78)
  AL_MUX u17 (
    .i0(1'b0),
    .i1(rxdata[2]),
    .sel(data_read),
    .o(n10));  // ../../rtl/uart/zxunouart.v(77)
  bufif1 u18 (dout[5], n7, n5);  // ../../rtl/uart/zxunouart.v(78)
  AL_MUX u19 (
    .i0(1'b0),
    .i1(rxdata[1]),
    .sel(data_read),
    .o(n11));  // ../../rtl/uart/zxunouart.v(77)
  and u2 (data_read, n0, zxuno_regrd);  // ../../rtl/uart/zxunouart.v(65)
  bufif1 u20 (dout[6], n6, n5);  // ../../rtl/uart/zxunouart.v(78)
  AL_MUX u21 (
    .i0(1'b0),
    .i1(rxdata[0]),
    .sel(data_read),
    .o(n12));  // ../../rtl/uart/zxunouart.v(77)
  bufif1 u22 (dout[7], n4, n5);  // ../../rtl/uart/zxunouart.v(78)
  and u23 (n13, n0, zxuno_regwr);  // ../../rtl/uart/zxunouart.v(81)
  not u24 (n14, comenzar_trans);  // ../../rtl/uart/zxunouart.v(81)
  and u25 (n15, n13, n14);  // ../../rtl/uart/zxunouart.v(81)
  not u26 (n16, txbusy);  // ../../rtl/uart/zxunouart.v(81)
  and u27 (n17, n15, n16);  // ../../rtl/uart/zxunouart.v(81)
  AL_MUX u28 (
    .i0(comenzar_trans),
    .i1(1'b1),
    .sel(n17),
    .o(n18));  // ../../rtl/uart/zxunouart.v(83)
  and u29 (n19, comenzar_trans, txbusy);  // ../../rtl/uart/zxunouart.v(84)
  and u3 (n2, n1, zxuno_regrd);  // ../../rtl/uart/zxunouart.v(74)
  AL_MUX u30 (
    .i0(n18),
    .i1(1'b0),
    .sel(n19),
    .o(n20));  // ../../rtl/uart/zxunouart.v(86)
  AL_MUX u31 (
    .i0(rxrecv),
    .i1(1'b1),
    .sel(data_received),
    .o(n21));  // ../../rtl/uart/zxunouart.v(89)
  not u32 (n22, data_received);  // ../../rtl/uart/zxunouart.v(91)
  AL_MUX u33 (
    .i0(leyendo_estado),
    .i1(1'b1),
    .sel(n2),
    .o(n23));  // ../../rtl/uart/zxunouart.v(93)
  not u34 (n25, zxuno_regrd);  // ../../rtl/uart/zxunouart.v(94)
  or u35 (n26, n24, n25);  // ../../rtl/uart/zxunouart.v(94)
  and u36 (n27, leyendo_estado, n26);  // ../../rtl/uart/zxunouart.v(94)
  AL_MUX u37 (
    .i0(n23),
    .i1(1'b0),
    .sel(n27),
    .o(n28));  // ../../rtl/uart/zxunouart.v(97)
  AL_MUX u38 (
    .i0(n21),
    .i1(1'b0),
    .sel(n27),
    .o(n29));  // ../../rtl/uart/zxunouart.v(97)
  AL_MUX u39 (
    .i0(leyendo_estado),
    .i1(n28),
    .sel(n22),
    .o(n30));  // ../../rtl/uart/zxunouart.v(98)
  not u4 (n3, n2);  // ../../rtl/uart/zxunouart.v(77)
  AL_MUX u40 (
    .i0(n21),
    .i1(n29),
    .sel(n22),
    .o(n31));  // ../../rtl/uart/zxunouart.v(98)
  AL_MUX u5 (
    .i0(n3),
    .i1(1'b0),
    .sel(data_read),
    .o(oe_n));  // ../../rtl/uart/zxunouart.v(77)
  AL_MUX u6 (
    .i0(rxrecv),
    .i1(rxdata[7]),
    .sel(data_read),
    .o(n4));  // ../../rtl/uart/zxunouart.v(77)
  or u7 (n5, data_read, n2);  // ../../rtl/uart/zxunouart.v(77)
  bufif1 u8 (dout[0], n12, n5);  // ../../rtl/uart/zxunouart.v(78)
  AL_MUX u9 (
    .i0(txbusy),
    .i1(rxdata[6]),
    .sel(data_read),
    .o(n6));  // ../../rtl/uart/zxunouart.v(77)
  uart uartchip (
    .clk_bus(clk_bus),
    .data_read(data_read),
    .ds80(ds80),
    .rx(uart_rx),
    .txbegin(comenzar_trans),
    .txdata(din),
    .rts(uart_rts),
    .rxdata(rxdata),
    .rxrecv(data_received),
    .tx(uart_tx),
    .txbusy(txbusy));  // ../../rtl/uart/zxunouart.v(51)

endmodule 

module altpll0  // al_ip/altpll0.vhd(28)
  (
  refclk,
  reset,
  clk0_out,
  extlock
  );

  input refclk;  // al_ip/altpll0.vhd(29)
  input reset;  // al_ip/altpll0.vhd(30)
  output clk0_out;  // al_ip/altpll0.vhd(32)
  output extlock;  // al_ip/altpll0.vhd(31)

  wire [4:0] clkc_wire;  // al_ip/altpll0.vhd(38)
  wire clk0_buf;  // al_ip/altpll0.vhd(36)
  wire fbk_wire;  // al_ip/altpll0.vhd(37)

  AL_LOGIC_BUFG bufg_feedback (
    .i(clk0_buf),
    .o(fbk_wire));  // al_ip/altpll0.vhd(40)
  AL_PHY_PLL #(
    .CLKC0_CPHASE(8),
    .CLKC0_DIV(9),
    .CLKC0_ENABLE("ENABLE"),
    .CLKC0_FPHASE("0"),
    .CLKC1_CPHASE(1),
    .CLKC1_DIV(1),
    .CLKC1_ENABLE("DISABLE"),
    .CLKC1_FPHASE("0"),
    .CLKC2_CPHASE(1),
    .CLKC2_DIV(1),
    .CLKC2_ENABLE("DISABLE"),
    .CLKC2_FPHASE("0"),
    .CLKC3_CPHASE(1),
    .CLKC3_DIV(1),
    .CLKC3_ENABLE("DISABLE"),
    .CLKC3_FPHASE("0"),
    .CLKC4_CPHASE(1),
    .CLKC4_DIV(1),
    .CLKC4_ENABLE("DISABLE"),
    .CLKC4_FPHASE("0"),
    .DERIVE_PLL_CLOCKS("DISABLE"),
    .DPHASE_SOURCE("DISABLE"),
    .FBCLK_DIV(9),
    .FEEDBK_MODE("NORMAL"),
    .FEEDBK_PATH("CLKC0_EXT"),
    .FIN("50.000"),
    .FREQ_LOCK_ACCURACY("2"),
    .GEN_BASIC_CLOCK("DISABLE"),
    .GMC_GAIN("0"),
    .GMC_TEST("14"),
    .ICP_CURRENT(9),
    .INTFB_WAKE("DISABLE"),
    .INT_FEEDBK_PATH("VCO_PHASE_0"),
    .KVCO("2"),
    .LPF_CAPACITOR("2"),
    .LPF_RESISTOR(8),
    .NORESET("DISABLE"),
    .ODIV_MUXC0("DIV"),
    .ODIV_MUXC1("DIV"),
    .ODIV_MUXC2("DIV"),
    .ODIV_MUXC3("DIV"),
    .ODIV_MUXC4("DIV"),
    .PLLC2RST_ENA("DISABLE"),
    .PLLC34RST_ENA("DISABLE"),
    .PLLMRST_ENA("DISABLE"),
    .PLLRST_ENA("ENABLE"),
    .PLL_LOCK_MODE("0"),
    .PREDIV_MUXC0("VCO"),
    .PREDIV_MUXC1("VCO"),
    .PREDIV_MUXC2("VCO"),
    .PREDIV_MUXC3("VCO"),
    .PREDIV_MUXC4("VCO"),
    .REFCLK_DIV(4),
    .REFCLK_SEL("INTERNAL"),
    .STDBY_ENABLE("DISABLE"),
    .STDBY_VCO_ENA("DISABLE"),
    .SYNC_ENABLE("DISABLE"),
    .VCO_NORESET("DISABLE"))
    pll_inst (
    .fbclk(fbk_wire),
    .phasestep(1'b0),
    .phaseupdown(1'b0),
    .phcntsel(3'b000),
    .pllreset(reset),
    .refclk(refclk),
    .scanclk(1'b0),
    .stdby(1'b0),
    .clkc({open_n0,open_n1,open_n2,open_n3,clkc_wire[0]}),
    .ext_lock(extlock));  // al_ip/altpll0.vhd(43)
  buf u1 (clk0_buf, clkc_wire[0]);  // al_ip/altpll0.vhd(74)
  buf u2 (clk0_out, fbk_wire);  // al_ip/altpll0.vhd(75)

endmodule 

module flash  // ../../rtl/flash/flash.vhd(17)
  (
  A,
  CLK,
  DATA0,
  DI,
  ER_N,
  RD_N,
  RESET,
  WR_N,
  ASDO,
  BUSY,
  DATA_READY,
  DCLK,
  DO,
  NCSO
  );

  input [23:0] A;  // ../../rtl/flash/flash.vhd(36)
  input CLK;  // ../../rtl/flash/flash.vhd(30)
  input DATA0;  // ../../rtl/flash/flash.vhd(44)
  input [7:0] DI;  // ../../rtl/flash/flash.vhd(37)
  input ER_N;  // ../../rtl/flash/flash.vhd(41)
  input RD_N;  // ../../rtl/flash/flash.vhd(40)
  input RESET;  // ../../rtl/flash/flash.vhd(33)
  input WR_N;  // ../../rtl/flash/flash.vhd(39)
  output ASDO;  // ../../rtl/flash/flash.vhd(47)
  output BUSY;  // ../../rtl/flash/flash.vhd(50)
  output DATA_READY;  // ../../rtl/flash/flash.vhd(51)
  output DCLK;  // ../../rtl/flash/flash.vhd(46)
  output [7:0] DO;  // ../../rtl/flash/flash.vhd(38)
  output NCSO;  // ../../rtl/flash/flash.vhd(45)

  parameter SPI_CMD_BLOCK_ERASE = "11011000";
  parameter SPI_CMD_PAGEPRG = "00000010";
  parameter SPI_CMD_POWERON = "10101011";
  parameter SPI_CMD_READ = "00000011";
  parameter SPI_CMD_SETSTATUS = "00000001";
  parameter SPI_CMD_STATUSREG = "00000101";
  parameter SPI_CMD_WRITE_DIS = "00000100";
  parameter SPI_CMD_WRITE_EN = "00000110";
  wire [31:0] count;  // ../../rtl/flash/flash.vhd(131)
  wire [31:0] n1;
  wire [7:0] n100;
  wire [3:0] n17;
  wire [3:0] n23;
  wire [3:0] n24;
  wire [3:0] n25;
  wire [3:0] n26;
  wire [3:0] n27;
  wire [3:0] n28;
  wire [7:0] n3;
  wire [7:0] n33;
  wire [7:0] n40;
  wire [31:0] n41;
  wire [7:0] n42;
  wire [3:0] n43;
  wire [7:0] n47;
  wire [3:0] n48;
  wire [31:0] n49;
  wire [7:0] n50;
  wire [7:0] n60;
  wire [31:0] n61;
  wire [3:0] n62;
  wire [3:0] n63;
  wire [7:0] n64;
  wire [7:0] n66;
  wire [3:0] n67;
  wire [3:0] n68;
  wire [3:0] n69;
  wire [7:0] n75;
  wire [31:0] n76;
  wire [3:0] n77;
  wire [7:0] n79;
  wire [31:0] n85;
  wire [7:0] n87;
  wire [3:0] n88;
  wire [3:0] n93;
  wire [7:0] n95;
  wire [3:0] n99;
  wire [3:0] next_state;  // ../../rtl/flash/flash.vhd(91)
  wire [7:0] spi_di_bus;  // ../../rtl/flash/flash.vhd(58)
  wire [7:0] spi_do_bus;  // ../../rtl/flash/flash.vhd(59)
  wire [0:0] spi_ss_n;  // ../../rtl/flash/flash.vhd(69)
  wire [3:0] state;  // ../../rtl/flash/flash.vhd(90)
  wire is_busy;  // ../../rtl/flash/flash.vhd(93)
  wire is_ready;  // ../../rtl/flash/flash.vhd(94)
  wire n0;
  wire n10;
  wire n11;
  wire n12;
  wire n13;
  wire n14;
  wire n15;
  wire n16;
  wire n18;
  wire n19;
  wire n2;
  wire n20;
  wire n21;
  wire n22;
  wire n29;
  wire n30;
  wire n31;
  wire n32;
  wire n34;
  wire n35;
  wire n36;
  wire n37;
  wire n38;
  wire n39;
  wire n4;
  wire n44;
  wire n45;
  wire n46;
  wire n5;
  wire n51;
  wire n52;
  wire n53;
  wire n54;
  wire n55;
  wire n56;
  wire n57;
  wire n58;
  wire n59;
  wire n6;
  wire n65;
  wire n7;
  wire n70;
  wire n71;
  wire n72;
  wire n73;
  wire n74;
  wire n78;
  wire n8;
  wire n80;
  wire n81;
  wire n82;
  wire n83;
  wire n84;
  wire n86;
  wire n89;
  wire n9;
  wire n90;
  wire n91;
  wire n92;
  wire n94;
  wire n96;
  wire n97;
  wire n98;
  wire prev_er_n;  // ../../rtl/flash/flash.vhd(73)
  wire prev_wr_n;  // ../../rtl/flash/flash.vhd(72)
  wire spi_busy;  // ../../rtl/flash/flash.vhd(61)
  wire spi_busy_prev;  // ../../rtl/flash/flash.vhd(62)
  wire spi_clk;  // ../../rtl/flash/flash.vhd(68)
  wire spi_cont;  // ../../rtl/flash/flash.vhd(64)
  wire spi_ena;  // ../../rtl/flash/flash.vhd(63)
  wire spi_si;  // ../../rtl/flash/flash.vhd(66)
  wire spi_so;  // ../../rtl/flash/flash.vhd(67)

  \spi_master(slaves=1,d_width=8)  U1 (
    .addr(32'b00000000000000000000000000000000),
    .clk_div(32'b00000000000000000000000000000001),
    .clock(CLK),
    .cont(spi_cont),
    .cpha(1'b0),
    .cpol(1'b0),
    .enable(spi_ena),
    .miso(spi_so),
    .reset_n(n0),
    .tx_data(spi_di_bus),
    .busy(spi_busy),
    .mosi(spi_si),
    .rx_data(spi_do_bus),
    .sclk(spi_clk),
    .ss_n(spi_ss_n));  // ../../rtl/flash/flash.vhd(99)
  add_pu32_pu32_o32 add0 (
    .i0(count),
    .i1(32'b00000000000000000000000000000001),
    .o(n1));  // ../../rtl/flash/flash.vhd(149)
  eq_w32 eq0 (
    .i0(32'b00000000000000000000000000000000),
    .i1(n49),
    .o(n51));  // ../../rtl/flash/flash.vhd(242)
  eq_w32 eq1 (
    .i0(32'b00000000000000000000000000000001),
    .i1(n49),
    .o(n52));  // ../../rtl/flash/flash.vhd(250)
  eq_w32 eq2 (
    .i0(32'b00000000000000000000000000000010),
    .i1(n49),
    .o(n53));  // ../../rtl/flash/flash.vhd(252)
  eq_w32 eq3 (
    .i0(32'b00000000000000000000000000000011),
    .i1(n49),
    .o(n54));  // ../../rtl/flash/flash.vhd(254)
  eq_w32 eq4 (
    .i0(32'b00000000000000000000000000000100),
    .i1(n49),
    .o(n55));  // ../../rtl/flash/flash.vhd(257)
  eq_w32 eq5 (
    .i0(32'b00000000000000000000000000000101),
    .i1(n49),
    .o(n65));  // ../../rtl/flash/flash.vhd(287)
  AL_DFF is_busy_reg (
    .clk(CLK),
    .d(n89),
    .reset(1'b0),
    .set(RESET),
    .q(is_busy));  // ../../rtl/flash/flash.vhd(344)
  AL_DFF is_ready_reg (
    .clk(CLK),
    .d(n94),
    .reset(RESET),
    .set(1'b0),
    .q(is_ready));  // ../../rtl/flash/flash.vhd(344)
  binary_mux_s1_w32 mux0 (
    .i0(count),
    .i1(n1),
    .sel(n44),
    .o(n49));  // ../../rtl/flash/flash.vhd(150)
  binary_mux_s1_w4 mux1 (
    .i0(state),
    .i1(4'b0100),
    .sel(n22),
    .o(n23));  // ../../rtl/flash/flash.vhd(181)
  binary_mux_s4_w1 mux10 (
    .i0(spi_busy),
    .i1(1'b0),
    .i10(spi_busy_prev),
    .i11(spi_busy_prev),
    .i12(spi_busy_prev),
    .i13(spi_busy_prev),
    .i14(spi_busy_prev),
    .i15(spi_busy_prev),
    .i2(spi_busy),
    .i3(spi_busy_prev),
    .i4(spi_busy),
    .i5(spi_busy),
    .i6(spi_busy),
    .i7(spi_busy),
    .i8(spi_busy),
    .i9(spi_busy_prev),
    .sel(state),
    .o(n84));  // ../../rtl/flash/flash.vhd(342)
  binary_mux_s4_w32 mux11 (
    .i0(n76),
    .i1(32'b00000000000000000000000000000000),
    .i10(count),
    .i11(count),
    .i12(count),
    .i13(count),
    .i14(count),
    .i15(count),
    .i2(n41),
    .i3(count),
    .i4(n76),
    .i5(n61),
    .i6(n41),
    .i7(n76),
    .i8(n76),
    .i9(count),
    .sel(state),
    .o(n85));  // ../../rtl/flash/flash.vhd(342)
  binary_mux_s4_w1 mux12 (
    .i0(n45),
    .i1(1'b0),
    .i10(spi_ena),
    .i11(spi_ena),
    .i12(spi_ena),
    .i13(spi_ena),
    .i14(spi_ena),
    .i15(spi_ena),
    .i2(n37),
    .i3(spi_ena),
    .i4(n45),
    .i5(n59),
    .i6(n37),
    .i7(n73),
    .i8(n45),
    .i9(spi_ena),
    .sel(state),
    .o(n86));  // ../../rtl/flash/flash.vhd(342)
  binary_mux_s4_w8 mux13 (
    .i0(n3),
    .i1(spi_di_bus),
    .i10(spi_di_bus),
    .i11(spi_di_bus),
    .i12(spi_di_bus),
    .i13(spi_di_bus),
    .i14(spi_di_bus),
    .i15(spi_di_bus),
    .i2(n40),
    .i3(spi_di_bus),
    .i4(n47),
    .i5(n60),
    .i6(n66),
    .i7(n75),
    .i8(n79),
    .i9(spi_di_bus),
    .sel(state),
    .o(n87));  // ../../rtl/flash/flash.vhd(342)
  binary_mux_s4_w4 mux14 (
    .i0(n17),
    .i1(n25),
    .i10(state),
    .i11(state),
    .i12(state),
    .i13(state),
    .i14(state),
    .i15(state),
    .i2(n43),
    .i3(state),
    .i4(n48),
    .i5(n62),
    .i6(n67),
    .i7(n77),
    .i8(n17),
    .i9(state),
    .sel(state),
    .o(n88));  // ../../rtl/flash/flash.vhd(342)
  binary_mux_s4_w1 mux15 (
    .i0(is_busy),
    .i1(1'b0),
    .i10(is_busy),
    .i11(is_busy),
    .i12(is_busy),
    .i13(is_busy),
    .i14(is_busy),
    .i15(is_busy),
    .i2(1'b1),
    .i3(is_busy),
    .i4(1'b1),
    .i5(is_busy),
    .i6(is_busy),
    .i7(is_busy),
    .i8(is_busy),
    .i9(is_busy),
    .sel(state),
    .o(n89));  // ../../rtl/flash/flash.vhd(342)
  binary_mux_s4_w1 mux16 (
    .i0(spi_cont),
    .i1(1'b0),
    .i10(spi_cont),
    .i11(spi_cont),
    .i12(spi_cont),
    .i13(spi_cont),
    .i14(spi_cont),
    .i15(spi_cont),
    .i2(n36),
    .i3(spi_cont),
    .i4(n46),
    .i5(n58),
    .i6(n36),
    .i7(n72),
    .i8(n46),
    .i9(spi_cont),
    .sel(state),
    .o(n90));  // ../../rtl/flash/flash.vhd(342)
  binary_mux_s4_w1 mux17 (
    .i0(prev_wr_n),
    .i1(WR_N),
    .i10(prev_wr_n),
    .i11(prev_wr_n),
    .i12(prev_wr_n),
    .i13(prev_wr_n),
    .i14(prev_wr_n),
    .i15(prev_wr_n),
    .i2(prev_wr_n),
    .i3(prev_wr_n),
    .i4(prev_wr_n),
    .i5(prev_wr_n),
    .i6(prev_wr_n),
    .i7(prev_wr_n),
    .i8(prev_wr_n),
    .i9(prev_wr_n),
    .sel(state),
    .o(n91));  // ../../rtl/flash/flash.vhd(342)
  binary_mux_s4_w1 mux18 (
    .i0(prev_er_n),
    .i1(ER_N),
    .i10(prev_er_n),
    .i11(prev_er_n),
    .i12(prev_er_n),
    .i13(prev_er_n),
    .i14(prev_er_n),
    .i15(prev_er_n),
    .i2(prev_er_n),
    .i3(prev_er_n),
    .i4(prev_er_n),
    .i5(prev_er_n),
    .i6(prev_er_n),
    .i7(prev_er_n),
    .i8(prev_er_n),
    .i9(prev_er_n),
    .sel(state),
    .o(n92));  // ../../rtl/flash/flash.vhd(342)
  binary_mux_s4_w4 mux19 (
    .i0(next_state),
    .i1(n28),
    .i10(next_state),
    .i11(next_state),
    .i12(next_state),
    .i13(next_state),
    .i14(next_state),
    .i15(next_state),
    .i2(next_state),
    .i3(next_state),
    .i4(next_state),
    .i5(n63),
    .i6(n68),
    .i7(next_state),
    .i8(next_state),
    .i9(next_state),
    .sel(state),
    .o(n93));  // ../../rtl/flash/flash.vhd(342)
  binary_mux_s1_w4 mux2 (
    .i0(n23),
    .i1(4'b0100),
    .sel(n20),
    .o(n24));  // ../../rtl/flash/flash.vhd(181)
  binary_mux_s4_w1 mux20 (
    .i0(is_ready),
    .i1(is_ready),
    .i10(is_ready),
    .i11(is_ready),
    .i12(is_ready),
    .i13(is_ready),
    .i14(is_ready),
    .i15(is_ready),
    .i2(n39),
    .i3(is_ready),
    .i4(1'b0),
    .i5(is_ready),
    .i6(is_ready),
    .i7(n74),
    .i8(is_ready),
    .i9(is_ready),
    .sel(state),
    .o(n94));  // ../../rtl/flash/flash.vhd(342)
  binary_mux_s4_w8 mux21 (
    .i0(DO),
    .i1(DO),
    .i10(DO),
    .i11(DO),
    .i12(DO),
    .i13(DO),
    .i14(DO),
    .i15(DO),
    .i2(n42),
    .i3(DO),
    .i4(DO),
    .i5(DO),
    .i6(DO),
    .i7(DO),
    .i8(DO),
    .i9(DO),
    .sel(state),
    .o(n95));  // ../../rtl/flash/flash.vhd(342)
  binary_mux_s1_w4 mux22 (
    .i0(n93),
    .i1(next_state),
    .sel(RESET),
    .o(n99));  // ../../rtl/flash/flash.vhd(344)
  binary_mux_s1_w8 mux23 (
    .i0(n95),
    .i1(DO),
    .sel(RESET),
    .o(n100));  // ../../rtl/flash/flash.vhd(344)
  binary_mux_s1_w4 mux3 (
    .i0(n24),
    .i1(4'b0010),
    .sel(n18),
    .o(n25));  // ../../rtl/flash/flash.vhd(181)
  binary_mux_s1_w4 mux4 (
    .i0(next_state),
    .i1(4'b0101),
    .sel(n22),
    .o(n26));  // ../../rtl/flash/flash.vhd(181)
  binary_mux_s1_w4 mux5 (
    .i0(n26),
    .i1(4'b0110),
    .sel(n20),
    .o(n27));  // ../../rtl/flash/flash.vhd(181)
  binary_mux_s1_w4 mux6 (
    .i0(n27),
    .i1(next_state),
    .sel(n18),
    .o(n28));  // ../../rtl/flash/flash.vhd(181)
  binary_mux_s1_w8 mux7 (
    .i0(A[23:16]),
    .i1(8'b11011000),
    .sel(n29),
    .o(n50));  // ../../rtl/flash/flash.vhd(249)
  binary_mux_s1_w16 mux8 (
    .i0({A[23:16],A[23:16]}),
    .i1(16'b0000001000000011),
    .sel(n29),
    .o({n64,n33}));  // ../../rtl/flash/flash.vhd(277)
  binary_mux_s1_w4 mux9 (
    .i0(next_state),
    .i1(4'b0111),
    .sel(spi_do_bus[0]),
    .o(n69));  // ../../rtl/flash/flash.vhd(318)
  AL_DFF prev_er_n_reg (
    .clk(CLK),
    .d(n98),
    .reset(1'b0),
    .set(1'b0),
    .q(prev_er_n));  // ../../rtl/flash/flash.vhd(344)
  AL_DFF prev_wr_n_reg (
    .clk(CLK),
    .d(n97),
    .reset(1'b0),
    .set(1'b0),
    .q(prev_wr_n));  // ../../rtl/flash/flash.vhd(344)
  reg_ar_as_w8 reg0 (
    .clk(CLK),
    .d(n87),
    .reset({RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET}),
    .set(8'b00000000),
    .q(spi_di_bus));  // ../../rtl/flash/flash.vhd(344)
  reg_ar_as_w32 reg1 (
    .clk(CLK),
    .d(n85),
    .reset({RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET}),
    .set(32'b00000000000000000000000000000000),
    .q(count));  // ../../rtl/flash/flash.vhd(344)
  reg_ar_as_w4 reg2 (
    .clk(CLK),
    .d(n88),
    .reset({RESET,RESET,RESET,RESET}),
    .set(4'b0000),
    .q(state));  // ../../rtl/flash/flash.vhd(344)
  reg_ar_as_w4 reg3 (
    .clk(CLK),
    .d(n99),
    .reset(4'b0000),
    .set(4'b0000),
    .q(next_state));  // ../../rtl/flash/flash.vhd(344)
  reg_ar_as_w8 reg4 (
    .clk(CLK),
    .d(n100),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(DO));  // ../../rtl/flash/flash.vhd(344)
  onehot_mux_s4_w32 sel0 (
    .i0({spi_di_bus,spi_di_bus,spi_di_bus,spi_di_bus}),
    .i1({spi_di_bus,spi_di_bus,spi_di_bus,spi_di_bus}),
    .i2({spi_di_bus,spi_di_bus,spi_di_bus,spi_di_bus}),
    .i3({13'b0000010000000,n29,1'b0,n29,16'b0000011010101011}),
    .sel({n51,n52,n53,n70}),
    .o({n79,n75,n47,n3}));  // ../../rtl/flash/flash.vhd(338)
  onehot_mux_s4_w32 sel1 (
    .i0(n49),
    .i1(32'b00000000000000000000000000000000),
    .i2(n49),
    .i3(n49),
    .sel({n51,n52,n53,n70}),
    .o(n76));  // ../../rtl/flash/flash.vhd(161)
  onehot_mux_s3_w1 sel10 (
    .i0(1'b0),
    .i1(spi_ena),
    .i2(n31),
    .sel({n51,n57,n54}),
    .o(n59));  // ../../rtl/flash/flash.vhd(262)
  onehot_mux_s6_w8 sel11 (
    .i0(spi_di_bus),
    .i1(spi_di_bus),
    .i2(spi_di_bus),
    .i3(A[7:0]),
    .i4(A[15:8]),
    .i5(n50),
    .sel({n51,n52,n53,n54,n55,n56}),
    .o(n60));  // ../../rtl/flash/flash.vhd(262)
  onehot_mux_s6_w32 sel12 (
    .i0(n49),
    .i1(32'b00000000000000000000000000000000),
    .i2(n49),
    .i3(n49),
    .i4(n49),
    .i5(n49),
    .sel({n51,n52,n53,n54,n55,n56}),
    .o(n61));  // ../../rtl/flash/flash.vhd(262)
  onehot_mux_s6_w4 sel13 (
    .i0(state),
    .i1(4'b0111),
    .i2(state),
    .i3(state),
    .i4(state),
    .i5(state),
    .sel({n51,n52,n53,n54,n55,n56}),
    .o(n62));  // ../../rtl/flash/flash.vhd(262)
  onehot_mux_s6_w4 sel14 (
    .i0(next_state),
    .i1(4'b1000),
    .i2(next_state),
    .i3(next_state),
    .i4(next_state),
    .i5(next_state),
    .sel({n51,n52,n53,n54,n55,n56}),
    .o(n63));  // ../../rtl/flash/flash.vhd(262)
  onehot_mux_s4_w12 sel15 (
    .i0({state,state,state}),
    .i1({4'b0001,n69,next_state}),
    .i2({state,state,state}),
    .i3({state,state,state}),
    .sel({n51,n52,n53,n70}),
    .o({n17,n77,n48}));  // ../../rtl/flash/flash.vhd(161)
  onehot_mux_s7_w4 sel16 (
    .i0(next_state),
    .i1(4'b1000),
    .i2(next_state),
    .i3(next_state),
    .i4(next_state),
    .i5(next_state),
    .i6(next_state),
    .sel({n51,n52,n53,n54,n55,n65,n34}),
    .o(n68));  // ../../rtl/flash/flash.vhd(292)
  onehot_mux_s3_w1 sel17 (
    .i0(spi_cont),
    .i1(1'b0),
    .i2(n30),
    .sel({n51,n52,n71}),
    .o(n72));  // ../../rtl/flash/flash.vhd(320)
  onehot_mux_s3_w1 sel18 (
    .i0(spi_ena),
    .i1(1'b0),
    .i2(n31),
    .sel({n51,n52,n71}),
    .o(n73));  // ../../rtl/flash/flash.vhd(320)
  onehot_mux_s7_w16 sel19 (
    .i0({spi_di_bus,spi_di_bus}),
    .i1({spi_di_bus,spi_di_bus}),
    .i2({spi_di_bus,spi_di_bus}),
    .i3({DI,8'b00000000}),
    .i4({A[7:0],A[7:0]}),
    .i5({A[15:8],A[15:8]}),
    .i6({n64,n33}),
    .sel({n51,n52,n53,n54,n55,n65,n34}),
    .o({n66,n40}));  // ../../rtl/flash/flash.vhd(292)
  onehot_mux_s7_w8 sel2 (
    .i0({state,state}),
    .i1(8'b01110001),
    .i2({state,state}),
    .i3({state,state}),
    .i4({state,state}),
    .i5({state,state}),
    .i6({state,state}),
    .sel({n51,n52,n53,n54,n55,n65,n34}),
    .o({n67,n43}));  // ../../rtl/flash/flash.vhd(292)
  onehot_mux_s3_w1 sel3 (
    .i0(1'b0),
    .i1(spi_cont),
    .i2(n30),
    .sel({n51,n35,n55}),
    .o(n36));  // ../../rtl/flash/flash.vhd(214)
  onehot_mux_s3_w1 sel4 (
    .i0(1'b0),
    .i1(spi_ena),
    .i2(n31),
    .sel({n51,n35,n55}),
    .o(n37));  // ../../rtl/flash/flash.vhd(214)
  onehot_mux_s3_w1 sel5 (
    .i0(1'b1),
    .i1(is_ready),
    .i2(n32),
    .sel({n51,n38,n65}),
    .o(n39));  // ../../rtl/flash/flash.vhd(214)
  onehot_mux_s7_w32 sel6 (
    .i0(n49),
    .i1(32'b00000000000000000000000000000000),
    .i2(n49),
    .i3(n49),
    .i4(n49),
    .i5(n49),
    .i6(n49),
    .sel({n51,n52,n53,n54,n55,n65,n34}),
    .o(n41));  // ../../rtl/flash/flash.vhd(214)
  onehot_mux_s7_w8 sel7 (
    .i0(DO),
    .i1(spi_do_bus),
    .i2(DO),
    .i3(DO),
    .i4(DO),
    .i5(DO),
    .i6(DO),
    .sel({n51,n52,n53,n54,n55,n65,n34}),
    .o(n42));  // ../../rtl/flash/flash.vhd(214)
  onehot_mux_s3_w1 sel8 (
    .i0(spi_ena),
    .i1(1'b0),
    .i2(1'b1),
    .sel({n51,n52,n71}),
    .o(n45));  // ../../rtl/flash/flash.vhd(234)
  onehot_mux_s3_w1 sel9 (
    .i0(1'b0),
    .i1(spi_cont),
    .i2(n30),
    .sel({n51,n57,n54}),
    .o(n58));  // ../../rtl/flash/flash.vhd(262)
  AL_DFF spi_busy_prev_reg (
    .clk(CLK),
    .d(n96),
    .reset(1'b0),
    .set(1'b0),
    .q(spi_busy_prev));  // ../../rtl/flash/flash.vhd(344)
  AL_DFF spi_cont_reg (
    .clk(CLK),
    .d(n90),
    .reset(RESET),
    .set(1'b0),
    .q(spi_cont));  // ../../rtl/flash/flash.vhd(344)
  AL_DFF spi_ena_reg (
    .clk(CLK),
    .d(n86),
    .reset(RESET),
    .set(1'b0),
    .q(spi_ena));  // ../../rtl/flash/flash.vhd(344)
  not u10 (n70, n15);  // ../../rtl/flash/flash.vhd(234)
  not u11 (n18, RD_N);  // ../../rtl/flash/flash.vhd(173)
  not u12 (n19, WR_N);  // ../../rtl/flash/flash.vhd(175)
  and u13 (n20, n19, prev_wr_n);  // ../../rtl/flash/flash.vhd(175)
  not u14 (n21, ER_N);  // ../../rtl/flash/flash.vhd(178)
  and u15 (n22, n21, prev_er_n);  // ../../rtl/flash/flash.vhd(178)
  AL_MUX u16 (
    .i0(spi_cont),
    .i1(1'b1),
    .sel(n29),
    .o(n30));  // ../../rtl/flash/flash.vhd(198)
  AL_MUX u17 (
    .i0(spi_ena),
    .i1(1'b1),
    .sel(n29),
    .o(n31));  // ../../rtl/flash/flash.vhd(198)
  AL_MUX u18 (
    .i0(is_ready),
    .i1(1'b0),
    .sel(n29),
    .o(n32));  // ../../rtl/flash/flash.vhd(198)
  or u19 (n80, n53, n81);  // ../../rtl/flash/flash.vhd(262)
  not u2 (n0, RESET);  // ../../rtl/flash/flash.vhd(106)
  not u20 (n34, n4);  // ../../rtl/flash/flash.vhd(214)
  or u21 (n8, n55, n54);  // ../../rtl/flash/flash.vhd(214)
  or u22 (n11, n34, n65);  // ../../rtl/flash/flash.vhd(214)
  or u23 (n78, n82, n80);  // ../../rtl/flash/flash.vhd(262)
  or u24 (n83, n53, n52);  // ../../rtl/flash/flash.vhd(262)
  and u25 (n44, spi_busy_prev, n29);  // ../../rtl/flash/flash.vhd(220)
  or u26 (n14, n34, n55);  // ../../rtl/flash/flash.vhd(214)
  AL_MUX u27 (
    .i0(spi_cont),
    .i1(1'b0),
    .sel(n51),
    .o(n46));  // ../../rtl/flash/flash.vhd(234)
  or u28 (n15, n53, n16);  // ../../rtl/flash/flash.vhd(234)
  or u29 (n81, n52, n51);  // ../../rtl/flash/flash.vhd(262)
  buf u3 (NCSO, spi_ss_n[0]);  // ../../rtl/flash/flash.vhd(122)
  or u30 (n16, n52, n51);  // ../../rtl/flash/flash.vhd(234)
  or u31 (n82, n55, n54);  // ../../rtl/flash/flash.vhd(262)
  or u32 (n5, n53, n6);  // ../../rtl/flash/flash.vhd(214)
  or u33 (n6, n52, n51);  // ../../rtl/flash/flash.vhd(214)
  or u34 (n7, n65, n8);  // ../../rtl/flash/flash.vhd(214)
  or u35 (n35, n11, n9);  // ../../rtl/flash/flash.vhd(214)
  or u36 (n9, n54, n10);  // ../../rtl/flash/flash.vhd(214)
  or u37 (n2, n56, n55);  // ../../rtl/flash/flash.vhd(262)
  or u38 (n10, n53, n52);  // ../../rtl/flash/flash.vhd(214)
  AL_MUX u39 (
    .i0(is_ready),
    .i1(n32),
    .sel(n51),
    .o(n74));  // ../../rtl/flash/flash.vhd(320)
  buf u4 (spi_so, DATA0);  // ../../rtl/flash/flash.vhd(123)
  not u40 (n56, n78);  // ../../rtl/flash/flash.vhd(262)
  or u41 (n38, n14, n12);  // ../../rtl/flash/flash.vhd(214)
  or u42 (n57, n2, n83);  // ../../rtl/flash/flash.vhd(262)
  or u43 (n12, n54, n13);  // ../../rtl/flash/flash.vhd(214)
  or u44 (n13, n53, n52);  // ../../rtl/flash/flash.vhd(214)
  AL_MUX u45 (
    .i0(n84),
    .i1(spi_busy_prev),
    .sel(RESET),
    .o(n96));  // ../../rtl/flash/flash.vhd(344)
  AL_MUX u46 (
    .i0(n91),
    .i1(prev_wr_n),
    .sel(RESET),
    .o(n97));  // ../../rtl/flash/flash.vhd(344)
  AL_MUX u47 (
    .i0(n92),
    .i1(prev_er_n),
    .sel(RESET),
    .o(n98));  // ../../rtl/flash/flash.vhd(344)
  buf u48 (BUSY, is_busy);  // ../../rtl/flash/flash.vhd(347)
  buf u49 (DATA_READY, is_ready);  // ../../rtl/flash/flash.vhd(348)
  buf u5 (ASDO, spi_si);  // ../../rtl/flash/flash.vhd(124)
  buf u6 (DCLK, spi_clk);  // ../../rtl/flash/flash.vhd(125)
  not u7 (n29, spi_busy);  // ../../rtl/flash/flash.vhd(148)
  or u8 (n4, n7, n5);  // ../../rtl/flash/flash.vhd(214)
  or u9 (n71, n53, n70);  // ../../rtl/flash/flash.vhd(161)

endmodule 

module loader  // ../../rtl/loader/loader.vhd(21)
  (
  CLK,
  FLASH_BUSY,
  FLASH_DO,
  FLASH_READY,
  RESET,
  CFG,
  FLASH_A,
  FLASH_RD_N,
  LOADER_ACTIVE,
  LOADER_RESET,
  RAM_A,
  RAM_DO,
  RAM_WR
  );

  input CLK;  // ../../rtl/loader/loader.vhd(33)
  input FLASH_BUSY;  // ../../rtl/loader/loader.vhd(50)
  input [7:0] FLASH_DO;  // ../../rtl/loader/loader.vhd(48)
  input FLASH_READY;  // ../../rtl/loader/loader.vhd(51)
  input RESET;  // ../../rtl/loader/loader.vhd(36)
  output [7:0] CFG;  // ../../rtl/loader/loader.vhd(44)
  output [23:0] FLASH_A;  // ../../rtl/loader/loader.vhd(47)
  output FLASH_RD_N;  // ../../rtl/loader/loader.vhd(49)
  output LOADER_ACTIVE;  // ../../rtl/loader/loader.vhd(54)
  output LOADER_RESET;  // ../../rtl/loader/loader.vhd(55)
  output [20:0] RAM_A;  // ../../rtl/loader/loader.vhd(39)
  output [7:0] RAM_DO;  // ../../rtl/loader/loader.vhd(40)
  output RAM_WR;  // ../../rtl/loader/loader.vhd(41)

  parameter CFG_ADDR = "000111110000000000000000";
  parameter FLASH_ADDR_START = "000100000000000000000000";
  parameter RAM_ADDR_START = "100000000000000000000";
  parameter SIZE_TO_READ = 262144;
  parameter SPI_CMD_POWERON = "10101011";
  parameter SPI_CMD_READ = "00000011";
  wire [3:0] n1;
  wire [3:0] n10;
  wire [20:0] n11;
  wire [15:0] n13;
  wire [15:0] n14;
  wire [7:0] n15;
  wire [20:0] n16;
  wire [3:0] n17;
  wire [15:0] n19;
  wire [3:0] n2;
  wire [7:0] n20;
  wire [7:0] n21;
  wire [20:0] n23;
  wire [7:0] n25;
  wire [20:0] n26;
  wire [7:0] n29;
  wire [3:0] n3;
  wire [7:0] n31;
  wire [3:0] n35;
  wire [3:0] n36;
  wire [3:0] n4;
  wire [7:0] n5;
  wire [3:0] n7;
  wire [7:0] n9;
  wire [20:0] ram_a_bus;  // ../../rtl/loader/loader.vhd(66)
  wire [20:0] read_cnt;  // ../../rtl/loader/loader.vhd(71)
  wire [3:0] reset_cnt;  // ../../rtl/loader/loader.vhd(70)
  wire [7:0] spi_a_bus;  // ../../rtl/loader/loader.vhd(63)
  wire [15:0] spi_page_bus;  // ../../rtl/loader/loader.vhd(62)
  wire [3:0] state;  // ../../rtl/loader/loader.vhd(81)
  wire cfg_read;  // ../../rtl/loader/loader.vhd(73)
  wire loader_act;  // ../../rtl/loader/loader.vhd(69)
  wire n0;
  wire n12;
  wire n18;
  wire n22;
  wire n24;
  wire n27;
  wire n28;
  wire n30;
  wire n32;
  wire n33;
  wire n34;
  wire n6;
  wire n8;

  AL_DFF FLASH_RD_N_reg (
    .clk(CLK),
    .d(n28),
    .reset(1'b0),
    .set(1'b0),
    .q(FLASH_RD_N));  // ../../rtl/loader/loader.vhd(171)
  AL_DFF RAM_WR_reg (
    .clk(CLK),
    .d(n30),
    .reset(1'b0),
    .set(1'b0),
    .q(RAM_WR));  // ../../rtl/loader/loader.vhd(171)
  add_pu21_pu21_o21 add0 (
    .i0(read_cnt),
    .i1(21'b000000000000000000001),
    .o(n11));
  add_pu16_pu16_o16 add1 (
    .i0(spi_page_bus),
    .i1(16'b0000000000000001),
    .o(n13));
  add_pu8_pu8_o8 add2 (
    .i0(spi_a_bus),
    .i1(8'b00000001),
    .o(n15));
  add_pu21_pu21_o21 add3 (
    .i0(ram_a_bus),
    .i1(21'b000000000000000000001),
    .o(n16));
  add_pu4_pu4_o4 add4 (
    .i0(reset_cnt),
    .i1(4'b0001),
    .o(n35));
  AL_DFF cfg_read_reg (
    .clk(CLK),
    .d(n22),
    .reset(RESET),
    .set(1'b0),
    .q(cfg_read));  // ../../rtl/loader/loader.vhd(171)
  eq_w8 eq0 (
    .i0(spi_a_bus),
    .i1(8'b11111111),
    .o(n12));
  AL_DFF loader_act_reg (
    .clk(CLK),
    .d(n27),
    .reset(1'b0),
    .set(RESET),
    .q(loader_act));  // ../../rtl/loader/loader.vhd(171)
  lt_u21_u21 lt0 (
    .ci(1'b0),
    .i0(read_cnt),
    .i1(21'b001000000000000000000),
    .o(n0));
  binary_mux_s1_w4 mux0 (
    .i0(4'b0001),
    .i1({2'b01,n1[1],n1[1]}),
    .sel(cfg_read),
    .o(n2));  // ../../rtl/loader/loader.vhd(112)
  binary_mux_s1_w8 mux1 (
    .i0(CFG),
    .i1(FLASH_DO),
    .sel(FLASH_READY),
    .o(n5));  // ../../rtl/loader/loader.vhd(130)
  binary_mux_s3_w1 mux10 (
    .i0(cfg_read),
    .i1(cfg_read),
    .i2(n6),
    .i3(cfg_read),
    .i4(cfg_read),
    .i5(cfg_read),
    .i6(cfg_read),
    .i7(cfg_read),
    .sel(state[2:0]),
    .o(n22));  // ../../rtl/loader/loader.vhd(169)
  binary_mux_s4_w21 mux11 (
    .i0(ram_a_bus),
    .i1(ram_a_bus),
    .i10(21'bxxxxxxxxxxxxxxxxxxxxx),
    .i11(21'bxxxxxxxxxxxxxxxxxxxxx),
    .i12(21'bxxxxxxxxxxxxxxxxxxxxx),
    .i13(21'bxxxxxxxxxxxxxxxxxxxxx),
    .i14(21'bxxxxxxxxxxxxxxxxxxxxx),
    .i15(21'bxxxxxxxxxxxxxxxxxxxxx),
    .i2(ram_a_bus),
    .i3(21'b100000000000000000000),
    .i4(ram_a_bus),
    .i5(ram_a_bus),
    .i6(n16),
    .i7(ram_a_bus),
    .i8(ram_a_bus),
    .i9(21'bxxxxxxxxxxxxxxxxxxxxx),
    .sel(state),
    .o(n23));  // ../../rtl/loader/loader.vhd(169)
  binary_mux_s3_w1 mux12 (
    .i0(RAM_WR),
    .i1(RAM_WR),
    .i2(RAM_WR),
    .i3(RAM_WR),
    .i4(RAM_WR),
    .i5(n8),
    .i6(1'b0),
    .i7(RAM_WR),
    .sel(state[2:0]),
    .o(n24));  // ../../rtl/loader/loader.vhd(169)
  binary_mux_s4_w8 mux13 (
    .i0(RAM_DO),
    .i1(RAM_DO),
    .i10(8'bxxxxxxxx),
    .i11(8'bxxxxxxxx),
    .i12(8'bxxxxxxxx),
    .i13(8'bxxxxxxxx),
    .i14(8'bxxxxxxxx),
    .i15(8'bxxxxxxxx),
    .i2(RAM_DO),
    .i3(RAM_DO),
    .i4(RAM_DO),
    .i5(n9),
    .i6(RAM_DO),
    .i7(RAM_DO),
    .i8(RAM_DO),
    .i9(8'bxxxxxxxx),
    .sel(state),
    .o(n25));  // ../../rtl/loader/loader.vhd(169)
  binary_mux_s4_w21 mux14 (
    .i0(read_cnt),
    .i1(read_cnt),
    .i10(21'bxxxxxxxxxxxxxxxxxxxxx),
    .i11(21'bxxxxxxxxxxxxxxxxxxxxx),
    .i12(21'bxxxxxxxxxxxxxxxxxxxxx),
    .i13(21'bxxxxxxxxxxxxxxxxxxxxx),
    .i14(21'bxxxxxxxxxxxxxxxxxxxxx),
    .i15(21'bxxxxxxxxxxxxxxxxxxxxx),
    .i2(read_cnt),
    .i3(read_cnt),
    .i4(read_cnt),
    .i5(read_cnt),
    .i6(n11),
    .i7(read_cnt),
    .i8(read_cnt),
    .i9(21'bxxxxxxxxxxxxxxxxxxxxx),
    .sel(state),
    .o(n26));  // ../../rtl/loader/loader.vhd(169)
  binary_mux_s1_w8 mux15 (
    .i0(n21),
    .i1(CFG),
    .sel(RESET),
    .o(n29));  // ../../rtl/loader/loader.vhd(171)
  binary_mux_s1_w8 mux16 (
    .i0(n25),
    .i1(RAM_DO),
    .sel(RESET),
    .o(n31));  // ../../rtl/loader/loader.vhd(171)
  binary_mux_s1_w4 mux17 (
    .i0(reset_cnt),
    .i1(n35),
    .sel(n34),
    .o(n36));  // ../../rtl/loader/loader.vhd(182)
  binary_mux_s1_w8 mux2 (
    .i0(RAM_DO),
    .i1(FLASH_DO),
    .sel(FLASH_READY),
    .o(n9));  // ../../rtl/loader/loader.vhd(151)
  binary_mux_s1_w12 mux3 (
    .i0({state,state,n2}),
    .i1(12'b010100100000),
    .sel(FLASH_BUSY),
    .o({n7,n4,n3}));  // ../../rtl/loader/loader.vhd(141)
  binary_mux_s1_w16 mux4 (
    .i0(spi_page_bus),
    .i1(n13),
    .sel(n12),
    .o(n14));  // ../../rtl/loader/loader.vhd(158)
  binary_mux_s4_w4 mux5 (
    .i0(n3),
    .i1(n4),
    .i10(4'bxxxx),
    .i11(4'bxxxx),
    .i12(4'bxxxx),
    .i13(4'bxxxx),
    .i14(4'bxxxx),
    .i15(4'bxxxx),
    .i2({3'b001,FLASH_READY}),
    .i3(4'b0000),
    .i4(n7),
    .i5({2'b01,FLASH_READY,n10[0]}),
    .i6(4'b0000),
    .i7(4'b1000),
    .i8(4'b1000),
    .i9(4'bxxxx),
    .sel(state),
    .o(n17));  // ../../rtl/loader/loader.vhd(169)
  binary_mux_s3_w1 mux6 (
    .i0(FLASH_RD_N),
    .i1(1'b0),
    .i2(1'b1),
    .i3(FLASH_RD_N),
    .i4(1'b0),
    .i5(1'b1),
    .i6(FLASH_RD_N),
    .i7(FLASH_RD_N),
    .sel(state[2:0]),
    .o(n18));  // ../../rtl/loader/loader.vhd(169)
  binary_mux_s4_w16 mux7 (
    .i0(spi_page_bus),
    .i1(16'b0001111100000000),
    .i10(16'bxxxxxxxxxxxxxxxx),
    .i11(16'bxxxxxxxxxxxxxxxx),
    .i12(16'bxxxxxxxxxxxxxxxx),
    .i13(16'bxxxxxxxxxxxxxxxx),
    .i14(16'bxxxxxxxxxxxxxxxx),
    .i15(16'bxxxxxxxxxxxxxxxx),
    .i2(spi_page_bus),
    .i3(16'b0001000000000000),
    .i4(spi_page_bus),
    .i5(spi_page_bus),
    .i6(n14),
    .i7(spi_page_bus),
    .i8(spi_page_bus),
    .i9(16'bxxxxxxxxxxxxxxxx),
    .sel(state),
    .o(n19));  // ../../rtl/loader/loader.vhd(169)
  binary_mux_s4_w8 mux8 (
    .i0(spi_a_bus),
    .i1(8'b00000000),
    .i10(8'bxxxxxxxx),
    .i11(8'bxxxxxxxx),
    .i12(8'bxxxxxxxx),
    .i13(8'bxxxxxxxx),
    .i14(8'bxxxxxxxx),
    .i15(8'bxxxxxxxx),
    .i2(spi_a_bus),
    .i3(8'b00000000),
    .i4(spi_a_bus),
    .i5(spi_a_bus),
    .i6(n15),
    .i7(spi_a_bus),
    .i8(spi_a_bus),
    .i9(8'bxxxxxxxx),
    .sel(state),
    .o(n20));  // ../../rtl/loader/loader.vhd(169)
  binary_mux_s4_w8 mux9 (
    .i0(CFG),
    .i1(CFG),
    .i10(8'bxxxxxxxx),
    .i11(8'bxxxxxxxx),
    .i12(8'bxxxxxxxx),
    .i13(8'bxxxxxxxx),
    .i14(8'bxxxxxxxx),
    .i15(8'bxxxxxxxx),
    .i2(n5),
    .i3(CFG),
    .i4(CFG),
    .i5(CFG),
    .i6(CFG),
    .i7(CFG),
    .i8(CFG),
    .i9(8'bxxxxxxxx),
    .sel(state),
    .o(n21));  // ../../rtl/loader/loader.vhd(169)
  ne_w4 neq0 (
    .i0(reset_cnt),
    .i1(4'b1000),
    .o(n33));
  reg_ar_as_w16 reg0 (
    .clk(CLK),
    .d(n19),
    .reset({RESET,RESET,RESET,1'b0,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET}),
    .set({3'b000,RESET,12'b000000000000}),
    .q(spi_page_bus));  // ../../rtl/loader/loader.vhd(171)
  reg_ar_as_w8 reg1 (
    .clk(CLK),
    .d(n20),
    .reset({RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET}),
    .set(8'b00000000),
    .q(spi_a_bus));  // ../../rtl/loader/loader.vhd(171)
  reg_ar_as_w21 reg2 (
    .clk(CLK),
    .d(n23),
    .reset({1'b0,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET}),
    .set({RESET,20'b00000000000000000000}),
    .q(ram_a_bus));  // ../../rtl/loader/loader.vhd(171)
  reg_ar_as_w4 reg3 (
    .clk(CLK),
    .d(n17),
    .reset({RESET,RESET,RESET,RESET}),
    .set(4'b0000),
    .q(state));  // ../../rtl/loader/loader.vhd(171)
  reg_ar_as_w21 reg4 (
    .clk(CLK),
    .d(n26),
    .reset({RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET}),
    .set(21'b000000000000000000000),
    .q(read_cnt));  // ../../rtl/loader/loader.vhd(171)
  reg_ar_as_w8 reg5 (
    .clk(CLK),
    .d(n29),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(CFG));  // ../../rtl/loader/loader.vhd(171)
  reg_ar_as_w8 reg6 (
    .clk(CLK),
    .d(n31),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(RAM_DO));  // ../../rtl/loader/loader.vhd(171)
  reg_ar_as_w4 reg7 (
    .clk(CLK),
    .d(n36),
    .reset({RESET,RESET,RESET,RESET}),
    .set(4'b0000),
    .q(reset_cnt));  // ../../rtl/loader/loader.vhd(183)
  buf u10 (RAM_A[1], ram_a_bus[1]);  // ../../rtl/loader/loader.vhd(191)
  AL_MUX u11 (
    .i0(RAM_WR),
    .i1(1'b1),
    .sel(FLASH_READY),
    .o(n8));  // ../../rtl/loader/loader.vhd(151)
  AL_MUX u12 (
    .i0(loader_act),
    .i1(1'b0),
    .sel(state[3]),
    .o(n27));  // ../../rtl/loader/loader.vhd(169)
  AL_MUX u13 (
    .i0(n18),
    .i1(FLASH_RD_N),
    .sel(RESET),
    .o(n28));  // ../../rtl/loader/loader.vhd(171)
  AL_MUX u14 (
    .i0(n24),
    .i1(RAM_WR),
    .sel(RESET),
    .o(n30));  // ../../rtl/loader/loader.vhd(171)
  not u15 (n32, loader_act);  // ../../rtl/loader/loader.vhd(180)
  and u16 (n34, n32, n33);  // ../../rtl/loader/loader.vhd(180)
  buf u17 (RAM_A[3], ram_a_bus[3]);  // ../../rtl/loader/loader.vhd(191)
  buf u18 (LOADER_ACTIVE, loader_act);  // ../../rtl/loader/loader.vhd(188)
  buf u19 (LOADER_RESET, reset_cnt[2]);  // ../../rtl/loader/loader.vhd(189)
  buf u20 (FLASH_A[0], spi_a_bus[0]);  // ../../rtl/loader/loader.vhd(190)
  buf u21 (RAM_A[0], ram_a_bus[0]);  // ../../rtl/loader/loader.vhd(191)
  buf u22 (RAM_A[7], ram_a_bus[7]);  // ../../rtl/loader/loader.vhd(191)
  buf u23 (RAM_A[8], ram_a_bus[8]);  // ../../rtl/loader/loader.vhd(191)
  buf u24 (RAM_A[9], ram_a_bus[9]);  // ../../rtl/loader/loader.vhd(191)
  buf u25 (RAM_A[10], ram_a_bus[10]);  // ../../rtl/loader/loader.vhd(191)
  buf u26 (RAM_A[11], ram_a_bus[11]);  // ../../rtl/loader/loader.vhd(191)
  buf u27 (RAM_A[12], ram_a_bus[12]);  // ../../rtl/loader/loader.vhd(191)
  buf u28 (RAM_A[13], ram_a_bus[13]);  // ../../rtl/loader/loader.vhd(191)
  buf u29 (RAM_A[14], ram_a_bus[14]);  // ../../rtl/loader/loader.vhd(191)
  not u3 (n1[1], n0);  // ../../rtl/loader/loader.vhd(112)
  buf u30 (RAM_A[15], ram_a_bus[15]);  // ../../rtl/loader/loader.vhd(191)
  buf u31 (RAM_A[16], ram_a_bus[16]);  // ../../rtl/loader/loader.vhd(191)
  buf u32 (RAM_A[17], ram_a_bus[17]);  // ../../rtl/loader/loader.vhd(191)
  buf u33 (RAM_A[18], ram_a_bus[18]);  // ../../rtl/loader/loader.vhd(191)
  buf u34 (RAM_A[19], ram_a_bus[19]);  // ../../rtl/loader/loader.vhd(191)
  buf u35 (RAM_A[20], ram_a_bus[20]);  // ../../rtl/loader/loader.vhd(191)
  buf u36 (FLASH_A[1], spi_a_bus[1]);  // ../../rtl/loader/loader.vhd(190)
  buf u37 (FLASH_A[2], spi_a_bus[2]);  // ../../rtl/loader/loader.vhd(190)
  buf u38 (FLASH_A[3], spi_a_bus[3]);  // ../../rtl/loader/loader.vhd(190)
  buf u39 (FLASH_A[4], spi_a_bus[4]);  // ../../rtl/loader/loader.vhd(190)
  buf u4 (RAM_A[2], ram_a_bus[2]);  // ../../rtl/loader/loader.vhd(191)
  buf u40 (FLASH_A[5], spi_a_bus[5]);  // ../../rtl/loader/loader.vhd(190)
  buf u41 (FLASH_A[6], spi_a_bus[6]);  // ../../rtl/loader/loader.vhd(190)
  buf u42 (FLASH_A[7], spi_a_bus[7]);  // ../../rtl/loader/loader.vhd(190)
  buf u43 (FLASH_A[8], spi_page_bus[0]);  // ../../rtl/loader/loader.vhd(190)
  buf u44 (FLASH_A[9], spi_page_bus[1]);  // ../../rtl/loader/loader.vhd(190)
  buf u45 (FLASH_A[10], spi_page_bus[2]);  // ../../rtl/loader/loader.vhd(190)
  buf u46 (FLASH_A[11], spi_page_bus[3]);  // ../../rtl/loader/loader.vhd(190)
  buf u47 (FLASH_A[12], spi_page_bus[4]);  // ../../rtl/loader/loader.vhd(190)
  buf u48 (FLASH_A[13], spi_page_bus[5]);  // ../../rtl/loader/loader.vhd(190)
  buf u49 (FLASH_A[14], spi_page_bus[6]);  // ../../rtl/loader/loader.vhd(190)
  not u5 (n10[0], FLASH_READY);  // ../../rtl/loader/loader.vhd(151)
  buf u50 (FLASH_A[15], spi_page_bus[7]);  // ../../rtl/loader/loader.vhd(190)
  buf u51 (FLASH_A[16], spi_page_bus[8]);  // ../../rtl/loader/loader.vhd(190)
  buf u52 (FLASH_A[17], spi_page_bus[9]);  // ../../rtl/loader/loader.vhd(190)
  buf u53 (FLASH_A[18], spi_page_bus[10]);  // ../../rtl/loader/loader.vhd(190)
  buf u54 (FLASH_A[19], spi_page_bus[11]);  // ../../rtl/loader/loader.vhd(190)
  buf u55 (FLASH_A[20], spi_page_bus[12]);  // ../../rtl/loader/loader.vhd(190)
  buf u56 (FLASH_A[21], spi_page_bus[13]);  // ../../rtl/loader/loader.vhd(190)
  buf u57 (FLASH_A[22], spi_page_bus[14]);  // ../../rtl/loader/loader.vhd(190)
  buf u58 (FLASH_A[23], spi_page_bus[15]);  // ../../rtl/loader/loader.vhd(190)
  buf u6 (RAM_A[5], ram_a_bus[5]);  // ../../rtl/loader/loader.vhd(191)
  buf u7 (RAM_A[4], ram_a_bus[4]);  // ../../rtl/loader/loader.vhd(191)
  AL_MUX u8 (
    .i0(cfg_read),
    .i1(1'b1),
    .sel(FLASH_READY),
    .o(n6));  // ../../rtl/loader/loader.vhd(130)
  buf u9 (RAM_A[6], ram_a_bus[6]);  // ../../rtl/loader/loader.vhd(191)

endmodule 

module turbosound  // ../../rtl/sound/turbosound/turbosound.vhd(10)
  (
  I_ADDR,
  I_BC1,
  I_BDIR,
  I_CLK,
  I_DATA,
  I_ENA,
  I_IORQ_N,
  I_M1_N,
  I_MODE,
  I_RESET_N,
  I_WR_N,
  O_SEL,
  O_SSG0_AUDIO_A,
  O_SSG0_AUDIO_B,
  O_SSG0_AUDIO_C,
  O_SSG0_DA,
  O_SSG1_AUDIO_A,
  O_SSG1_AUDIO_B,
  O_SSG1_AUDIO_C,
  O_SSG1_DA
  );

  input [15:0] I_ADDR;  // ../../rtl/sound/turbosound/turbosound.vhd(14)
  input I_BC1;  // ../../rtl/sound/turbosound/turbosound.vhd(21)
  input I_BDIR;  // ../../rtl/sound/turbosound/turbosound.vhd(20)
  input I_CLK;  // ../../rtl/sound/turbosound/turbosound.vhd(12)
  input [7:0] I_DATA;  // ../../rtl/sound/turbosound/turbosound.vhd(15)
  input I_ENA;  // ../../rtl/sound/turbosound/turbosound.vhd(13)
  input I_IORQ_N;  // ../../rtl/sound/turbosound/turbosound.vhd(17)
  input I_M1_N;  // ../../rtl/sound/turbosound/turbosound.vhd(18)
  input I_MODE;  // ../../rtl/sound/turbosound/turbosound.vhd(23)
  input I_RESET_N;  // ../../rtl/sound/turbosound/turbosound.vhd(19)
  input I_WR_N;  // ../../rtl/sound/turbosound/turbosound.vhd(16)
  output O_SEL;  // ../../rtl/sound/turbosound/turbosound.vhd(22)
  output [7:0] O_SSG0_AUDIO_A;  // ../../rtl/sound/turbosound/turbosound.vhd(26)
  output [7:0] O_SSG0_AUDIO_B;  // ../../rtl/sound/turbosound/turbosound.vhd(27)
  output [7:0] O_SSG0_AUDIO_C;  // ../../rtl/sound/turbosound/turbosound.vhd(28)
  output [7:0] O_SSG0_DA;  // ../../rtl/sound/turbosound/turbosound.vhd(25)
  output [7:0] O_SSG1_AUDIO_A;  // ../../rtl/sound/turbosound/turbosound.vhd(31)
  output [7:0] O_SSG1_AUDIO_B;  // ../../rtl/sound/turbosound/turbosound.vhd(32)
  output [7:0] O_SSG1_AUDIO_C;  // ../../rtl/sound/turbosound/turbosound.vhd(33)
  output [7:0] O_SSG1_DA;  // ../../rtl/sound/turbosound/turbosound.vhd(30)

  wire bc1;  // ../../rtl/sound/turbosound/turbosound.vhd(38)
  wire bdir;  // ../../rtl/sound/turbosound/turbosound.vhd(39)
  wire n0;
  wire n1;
  wire n10;
  wire n11;
  wire n12;
  wire n13;
  wire n2;
  wire n3;
  wire n4;
  wire n5;
  wire n6;
  wire n7;
  wire n8;
  wire n9;
  wire ssg;  // ../../rtl/sound/turbosound/turbosound.vhd(40)

  eq_w7 eq0 (
    .i0(7'b1111111),
    .i1(I_DATA[7:1]),
    .o(n9));  // ../../rtl/sound/turbosound/turbosound.vhd(80)
  ym2149 ssg0 (
    .BC(bc1),
    .BDIR(bdir),
    .CE(I_ENA),
    .CLK(I_CLK),
    .DI(I_DATA),
    .IOA_in(8'b00000000),
    .IOB_in(8'b00000000),
    .MODE(I_MODE),
    .RESET(n8),
    .SEL(n13),
    .CHANNEL_A(O_SSG0_AUDIO_A),
    .CHANNEL_B(O_SSG0_AUDIO_B),
    .CHANNEL_C(O_SSG0_AUDIO_C),
    .DO(O_SSG0_DA));  // ../../rtl/sound/turbosound/turbosound.vhd(86)
  ym2149 ssg1 (
    .BC(bc1),
    .BDIR(bdir),
    .CE(I_ENA),
    .CLK(I_CLK),
    .DI(I_DATA),
    .IOA_in(8'b00000000),
    .IOB_in(8'b00000000),
    .MODE(I_MODE),
    .RESET(n8),
    .SEL(ssg),
    .CHANNEL_A(O_SSG1_AUDIO_A),
    .CHANNEL_B(O_SSG1_AUDIO_B),
    .CHANNEL_C(O_SSG1_AUDIO_C),
    .DO(O_SSG1_DA));  // ../../rtl/sound/turbosound/turbosound.vhd(108)
  AL_DFF ssg_reg (
    .clk(I_CLK),
    .d(n12),
    .reset(n8),
    .set(1'b0),
    .q(ssg));  // ../../rtl/sound/turbosound/turbosound.vhd(83)
  and u10 (n7, n6, I_ADDR[14]);  // ../../rtl/sound/turbosound/turbosound.vhd(69)
  and u11 (bc1, n7, n2);  // ../../rtl/sound/turbosound/turbosound.vhd(69)
  buf u12 (O_SEL, ssg);  // ../../rtl/sound/turbosound/turbosound.vhd(73)
  not u13 (n8, I_RESET_N);  // ../../rtl/sound/turbosound/turbosound.vhd(77)
  and u14 (n10, n9, bdir);  // ../../rtl/sound/turbosound/turbosound.vhd(80)
  and u15 (n11, n10, bc1);  // ../../rtl/sound/turbosound/turbosound.vhd(80)
  AL_MUX u16 (
    .i0(ssg),
    .i1(I_DATA[0]),
    .sel(n11),
    .o(n12));  // ../../rtl/sound/turbosound/turbosound.vhd(82)
  not u17 (n13, ssg);  // ../../rtl/sound/turbosound/turbosound.vhd(99)
  not u2 (n0, I_IORQ_N);  // ../../rtl/sound/turbosound/turbosound.vhd(68)
  not u3 (n1, I_WR_N);  // ../../rtl/sound/turbosound/turbosound.vhd(68)
  not u4 (n2, I_ADDR[1]);  // ../../rtl/sound/turbosound/turbosound.vhd(68)
  and u5 (n3, I_M1_N, n0);  // ../../rtl/sound/turbosound/turbosound.vhd(68)
  and u6 (n4, n3, n1);  // ../../rtl/sound/turbosound/turbosound.vhd(68)
  and u7 (n5, n4, I_ADDR[15]);  // ../../rtl/sound/turbosound/turbosound.vhd(68)
  and u8 (bdir, n5, n2);  // ../../rtl/sound/turbosound/turbosound.vhd(68)
  and u9 (n6, n3, I_ADDR[15]);  // ../../rtl/sound/turbosound/turbosound.vhd(69)

endmodule 

module covox  // ../../rtl/sound/covox/covox.vhd(14)
  (
  I_ADDR,
  I_CLK,
  I_CPM,
  I_CS,
  I_DATA,
  I_DOS,
  I_IORQ_N,
  I_RESET,
  I_ROM14,
  I_WR_N,
  O_A,
  O_B,
  O_C,
  O_D,
  O_FB
  );

  input [7:0] I_ADDR;  // ../../rtl/sound/covox/covox.vhd(19)
  input I_CLK;  // ../../rtl/sound/covox/covox.vhd(17)
  input I_CPM;  // ../../rtl/sound/covox/covox.vhd(25)
  input I_CS;  // ../../rtl/sound/covox/covox.vhd(18)
  input [7:0] I_DATA;  // ../../rtl/sound/covox/covox.vhd(20)
  input I_DOS;  // ../../rtl/sound/covox/covox.vhd(24)
  input I_IORQ_N;  // ../../rtl/sound/covox/covox.vhd(22)
  input I_RESET;  // ../../rtl/sound/covox/covox.vhd(16)
  input I_ROM14;  // ../../rtl/sound/covox/covox.vhd(26)
  input I_WR_N;  // ../../rtl/sound/covox/covox.vhd(21)
  output [7:0] O_A;  // ../../rtl/sound/covox/covox.vhd(28)
  output [7:0] O_B;  // ../../rtl/sound/covox/covox.vhd(29)
  output [7:0] O_C;  // ../../rtl/sound/covox/covox.vhd(30)
  output [7:0] O_D;  // ../../rtl/sound/covox/covox.vhd(31)
  output [7:0] O_FB;  // ../../rtl/sound/covox/covox.vhd(32)

  wire [7:0] n19;
  wire [7:0] n20;
  wire [7:0] n21;
  wire [7:0] n22;
  wire [7:0] n23;
  wire [7:0] n24;
  wire [7:0] n25;
  wire [7:0] n26;
  wire [7:0] n27;
  wire [7:0] n28;
  wire [7:0] outa_reg;  // ../../rtl/sound/covox/covox.vhd(38)
  wire [7:0] outb_reg;  // ../../rtl/sound/covox/covox.vhd(39)
  wire [7:0] outc_reg;  // ../../rtl/sound/covox/covox.vhd(40)
  wire [7:0] outd_reg;  // ../../rtl/sound/covox/covox.vhd(41)
  wire [7:0] outfb_reg;  // ../../rtl/sound/covox/covox.vhd(42)
  wire n0;
  wire n1;
  wire n10;
  wire n11;
  wire n12;
  wire n13;
  wire n14;
  wire n15;
  wire n16;
  wire n17;
  wire n18;
  wire n2;
  wire n29;
  wire n3;
  wire n30;
  wire n31;
  wire n4;
  wire n5;
  wire n6;
  wire n7;
  wire n8;
  wire n9;

  eq_w8 eq0 (
    .i0(8'b00001111),
    .i1(I_ADDR),
    .o(n12));  // ../../rtl/sound/covox/covox.vhd(56)
  eq_w8 eq1 (
    .i0(8'b00011111),
    .i1(I_ADDR),
    .o(n13));  // ../../rtl/sound/covox/covox.vhd(57)
  eq_w8 eq2 (
    .i0(8'b00111111),
    .i1(I_ADDR),
    .o(n14));  // ../../rtl/sound/covox/covox.vhd(58)
  eq_w8 eq3 (
    .i0(8'b01001111),
    .i1(I_ADDR),
    .o(n15));  // ../../rtl/sound/covox/covox.vhd(59)
  eq_w8 eq4 (
    .i0(8'b01011111),
    .i1(I_ADDR),
    .o(n16));  // ../../rtl/sound/covox/covox.vhd(60)
  eq_w8 eq5 (
    .i0(8'b11111011),
    .i1(I_ADDR),
    .o(n17));  // ../../rtl/sound/covox/covox.vhd(61)
  binary_mux_s1_w8 mux0 (
    .i0(outa_reg),
    .i1(n19),
    .sel(n11),
    .o(n24));  // ../../rtl/sound/covox/covox.vhd(64)
  binary_mux_s1_w8 mux1 (
    .i0(outb_reg),
    .i1(n20),
    .sel(n11),
    .o(n25));  // ../../rtl/sound/covox/covox.vhd(64)
  binary_mux_s1_w8 mux2 (
    .i0(outc_reg),
    .i1(n21),
    .sel(n11),
    .o(n26));  // ../../rtl/sound/covox/covox.vhd(64)
  binary_mux_s1_w8 mux3 (
    .i0(outd_reg),
    .i1(n22),
    .sel(n11),
    .o(n27));  // ../../rtl/sound/covox/covox.vhd(64)
  binary_mux_s1_w8 mux4 (
    .i0(outfb_reg),
    .i1(n23),
    .sel(n11),
    .o(n28));  // ../../rtl/sound/covox/covox.vhd(64)
  reg_ar_as_w8 reg0 (
    .clk(I_CLK),
    .d(n25),
    .reset({n3,n3,n3,n3,n3,n3,n3,n3}),
    .set(8'b00000000),
    .q(outb_reg));  // ../../rtl/sound/covox/covox.vhd(64)
  reg_ar_as_w8 reg1 (
    .clk(I_CLK),
    .d(n26),
    .reset({n3,n3,n3,n3,n3,n3,n3,n3}),
    .set(8'b00000000),
    .q(outc_reg));  // ../../rtl/sound/covox/covox.vhd(64)
  reg_ar_as_w8 reg2 (
    .clk(I_CLK),
    .d(n27),
    .reset({n3,n3,n3,n3,n3,n3,n3,n3}),
    .set(8'b00000000),
    .q(outd_reg));  // ../../rtl/sound/covox/covox.vhd(64)
  reg_ar_as_w8 reg3 (
    .clk(I_CLK),
    .d(n28),
    .reset({n3,n3,n3,n3,n3,n3,n3,n3}),
    .set(8'b00000000),
    .q(outfb_reg));  // ../../rtl/sound/covox/covox.vhd(64)
  reg_ar_as_w8 reg4 (
    .clk(I_CLK),
    .d(n24),
    .reset({n3,n3,n3,n3,n3,n3,n3,n3}),
    .set(8'b00000000),
    .q(outa_reg));  // ../../rtl/sound/covox/covox.vhd(64)
  onehot_mux_s7_w8 sel0 (
    .i0(outa_reg),
    .i1(outa_reg),
    .i2(outa_reg),
    .i3(outa_reg),
    .i4(outa_reg),
    .i5(outa_reg),
    .i6(I_DATA),
    .sel({n12,n13,n14,n15,n16,n17,n18}),
    .o(n19));  // ../../rtl/sound/covox/covox.vhd(63)
  onehot_mux_s7_w8 sel1 (
    .i0(outb_reg),
    .i1(outb_reg),
    .i2(outb_reg),
    .i3(outb_reg),
    .i4(I_DATA),
    .i5(I_DATA),
    .i6(outb_reg),
    .sel({n12,n13,n14,n15,n16,n17,n18}),
    .o(n20));  // ../../rtl/sound/covox/covox.vhd(63)
  onehot_mux_s7_w8 sel2 (
    .i0(outc_reg),
    .i1(outc_reg),
    .i2(outc_reg),
    .i3(I_DATA),
    .i4(outc_reg),
    .i5(outc_reg),
    .i6(outc_reg),
    .sel({n12,n13,n14,n15,n16,n17,n18}),
    .o(n21));  // ../../rtl/sound/covox/covox.vhd(63)
  onehot_mux_s7_w8 sel3 (
    .i0(outd_reg),
    .i1(outd_reg),
    .i2(I_DATA),
    .i3(outd_reg),
    .i4(outd_reg),
    .i5(outd_reg),
    .i6(outd_reg),
    .sel({n12,n13,n14,n15,n16,n17,n18}),
    .o(n22));  // ../../rtl/sound/covox/covox.vhd(63)
  onehot_mux_s7_w8 sel4 (
    .i0(outfb_reg),
    .i1(I_DATA),
    .i2(outfb_reg),
    .i3(outfb_reg),
    .i4(outfb_reg),
    .i5(outfb_reg),
    .i6(outfb_reg),
    .sel({n12,n13,n14,n15,n16,n17,n18}),
    .o(n23));  // ../../rtl/sound/covox/covox.vhd(63)
  and u10 (n8, n4, n5);  // ../../rtl/sound/covox/covox.vhd(54)
  and u11 (n9, n8, I_CS);  // ../../rtl/sound/covox/covox.vhd(54)
  and u12 (n10, n9, n6);  // ../../rtl/sound/covox/covox.vhd(54)
  and u13 (n11, n10, n7);  // ../../rtl/sound/covox/covox.vhd(54)
  buf u14 (O_FB[2], outfb_reg[2]);  // ../../rtl/sound/covox/covox.vhd(71)
  or u15 (n1, n16, n15);  // ../../rtl/sound/covox/covox.vhd(63)
  buf u16 (O_A[0], outa_reg[0]);  // ../../rtl/sound/covox/covox.vhd(67)
  buf u17 (O_B[0], outb_reg[0]);  // ../../rtl/sound/covox/covox.vhd(68)
  buf u18 (O_C[0], outc_reg[0]);  // ../../rtl/sound/covox/covox.vhd(69)
  buf u19 (O_D[0], outd_reg[0]);  // ../../rtl/sound/covox/covox.vhd(70)
  buf u2 (O_FB[1], outfb_reg[1]);  // ../../rtl/sound/covox/covox.vhd(71)
  buf u20 (O_FB[3], outfb_reg[3]);  // ../../rtl/sound/covox/covox.vhd(71)
  buf u21 (O_FB[4], outfb_reg[4]);  // ../../rtl/sound/covox/covox.vhd(71)
  buf u22 (O_FB[5], outfb_reg[5]);  // ../../rtl/sound/covox/covox.vhd(71)
  buf u23 (O_FB[6], outfb_reg[6]);  // ../../rtl/sound/covox/covox.vhd(71)
  buf u24 (O_FB[7], outfb_reg[7]);  // ../../rtl/sound/covox/covox.vhd(71)
  buf u25 (O_D[1], outd_reg[1]);  // ../../rtl/sound/covox/covox.vhd(70)
  buf u26 (O_D[2], outd_reg[2]);  // ../../rtl/sound/covox/covox.vhd(70)
  buf u27 (O_D[3], outd_reg[3]);  // ../../rtl/sound/covox/covox.vhd(70)
  buf u28 (O_D[4], outd_reg[4]);  // ../../rtl/sound/covox/covox.vhd(70)
  buf u29 (O_D[5], outd_reg[5]);  // ../../rtl/sound/covox/covox.vhd(70)
  buf u3 (O_FB[0], outfb_reg[0]);  // ../../rtl/sound/covox/covox.vhd(71)
  buf u30 (O_D[6], outd_reg[6]);  // ../../rtl/sound/covox/covox.vhd(70)
  buf u31 (O_D[7], outd_reg[7]);  // ../../rtl/sound/covox/covox.vhd(70)
  buf u32 (O_C[1], outc_reg[1]);  // ../../rtl/sound/covox/covox.vhd(69)
  buf u33 (O_C[2], outc_reg[2]);  // ../../rtl/sound/covox/covox.vhd(69)
  buf u34 (O_C[3], outc_reg[3]);  // ../../rtl/sound/covox/covox.vhd(69)
  buf u35 (O_C[4], outc_reg[4]);  // ../../rtl/sound/covox/covox.vhd(69)
  buf u36 (O_C[5], outc_reg[5]);  // ../../rtl/sound/covox/covox.vhd(69)
  buf u37 (O_C[6], outc_reg[6]);  // ../../rtl/sound/covox/covox.vhd(69)
  buf u38 (O_C[7], outc_reg[7]);  // ../../rtl/sound/covox/covox.vhd(69)
  buf u39 (O_B[1], outb_reg[1]);  // ../../rtl/sound/covox/covox.vhd(68)
  not u4 (n2, I_CS);  // ../../rtl/sound/covox/covox.vhd(48)
  buf u40 (O_B[2], outb_reg[2]);  // ../../rtl/sound/covox/covox.vhd(68)
  buf u41 (O_B[3], outb_reg[3]);  // ../../rtl/sound/covox/covox.vhd(68)
  buf u42 (O_B[4], outb_reg[4]);  // ../../rtl/sound/covox/covox.vhd(68)
  buf u43 (O_B[5], outb_reg[5]);  // ../../rtl/sound/covox/covox.vhd(68)
  buf u44 (O_B[6], outb_reg[6]);  // ../../rtl/sound/covox/covox.vhd(68)
  buf u45 (O_B[7], outb_reg[7]);  // ../../rtl/sound/covox/covox.vhd(68)
  buf u46 (O_A[1], outa_reg[1]);  // ../../rtl/sound/covox/covox.vhd(67)
  buf u47 (O_A[2], outa_reg[2]);  // ../../rtl/sound/covox/covox.vhd(67)
  buf u48 (O_A[3], outa_reg[3]);  // ../../rtl/sound/covox/covox.vhd(67)
  buf u49 (O_A[4], outa_reg[4]);  // ../../rtl/sound/covox/covox.vhd(67)
  or u5 (n3, I_RESET, n2);  // ../../rtl/sound/covox/covox.vhd(48)
  buf u50 (O_A[5], outa_reg[5]);  // ../../rtl/sound/covox/covox.vhd(67)
  buf u51 (O_A[6], outa_reg[6]);  // ../../rtl/sound/covox/covox.vhd(67)
  buf u52 (O_A[7], outa_reg[7]);  // ../../rtl/sound/covox/covox.vhd(67)
  or u53 (n0, n17, n1);  // ../../rtl/sound/covox/covox.vhd(63)
  or u54 (n29, n13, n12);  // ../../rtl/sound/covox/covox.vhd(63)
  or u55 (n30, n14, n29);  // ../../rtl/sound/covox/covox.vhd(63)
  or u56 (n31, n0, n30);  // ../../rtl/sound/covox/covox.vhd(63)
  not u57 (n18, n31);  // ../../rtl/sound/covox/covox.vhd(63)
  not u6 (n4, I_DOS);  // ../../rtl/sound/covox/covox.vhd(54)
  not u7 (n5, I_CPM);  // ../../rtl/sound/covox/covox.vhd(54)
  not u8 (n6, I_IORQ_N);  // ../../rtl/sound/covox/covox.vhd(54)
  not u9 (n7, I_WR_N);  // ../../rtl/sound/covox/covox.vhd(54)

endmodule 

module avr  // ../../rtl/avr/avr.vhd(11)
  (
  A,
  AVR_MOSI,
  AVR_SCK,
  AVR_SS,
  CFG,
  CLK,
  CLKEN,
  LED1,
  LED1_OWR,
  LED2,
  LED2_OWR,
  LOADER_DONE,
  MAX_TURBO,
  N_RESET,
  RTC_A,
  RTC_CS,
  RTC_DI,
  RTC_WR_N,
  AVR_MISO,
  JOY,
  JOY_TYPE,
  KB,
  KB_MODE,
  KB_SCANCODE,
  LOADED,
  MAGICK,
  MS_BTNS,
  MS_DELTA_X,
  MS_DELTA_Y,
  MS_EVENT,
  MS_PRESET,
  MS_X,
  MS_Y,
  MS_Z,
  OSD_COMMAND,
  OSD_OVERLAY,
  OSD_POPUP,
  RESET,
  RTC_DO,
  SCREEN_MODE,
  SOFT_SW,
  TURBO,
  WAIT_CPU
  );

  input [15:8] A;  // ../../rtl/avr/avr.vhd(17)
  input AVR_MOSI;  // ../../rtl/avr/avr.vhd(19)
  input AVR_SCK;  // ../../rtl/avr/avr.vhd(21)
  input AVR_SS;  // ../../rtl/avr/avr.vhd(22)
  input [7:0] CFG;  // ../../rtl/avr/avr.vhd(46)
  input CLK;  // ../../rtl/avr/avr.vhd(14)
  input CLKEN;  // ../../rtl/avr/avr.vhd(15)
  input LED1;  // ../../rtl/avr/avr.vhd(41)
  input LED1_OWR;  // ../../rtl/avr/avr.vhd(43)
  input LED2;  // ../../rtl/avr/avr.vhd(42)
  input LED2_OWR;  // ../../rtl/avr/avr.vhd(44)
  input LOADER_DONE;  // ../../rtl/avr/avr.vhd(39)
  input [1:0] MAX_TURBO;  // ../../rtl/avr/avr.vhd(62)
  input N_RESET;  // ../../rtl/avr/avr.vhd(16)
  input [7:0] RTC_A;  // ../../rtl/avr/avr.vhd(33)
  input RTC_CS;  // ../../rtl/avr/avr.vhd(36)
  input [7:0] RTC_DI;  // ../../rtl/avr/avr.vhd(34)
  input RTC_WR_N;  // ../../rtl/avr/avr.vhd(37)
  output AVR_MISO;  // ../../rtl/avr/avr.vhd(20)
  output [7:0] JOY;  // ../../rtl/avr/avr.vhd(67)
  output JOY_TYPE;  // ../../rtl/avr/avr.vhd(58)
  output [5:0] KB;  // ../../rtl/avr/avr.vhd(18)
  output KB_MODE;  // ../../rtl/avr/avr.vhd(50)
  output [9:0] KB_SCANCODE;  // ../../rtl/avr/avr.vhd(52)
  output LOADED;  // ../../rtl/avr/avr.vhd(65)
  output MAGICK;  // ../../rtl/avr/avr.vhd(56)
  output [2:0] MS_BTNS;  // ../../rtl/avr/avr.vhd(26)
  output [7:0] MS_DELTA_X;  // ../../rtl/avr/avr.vhd(30)
  output [7:0] MS_DELTA_Y;  // ../../rtl/avr/avr.vhd(31)
  output MS_EVENT;  // ../../rtl/avr/avr.vhd(29)
  output MS_PRESET;  // ../../rtl/avr/avr.vhd(28)
  output [7:0] MS_X;  // ../../rtl/avr/avr.vhd(24)
  output [7:0] MS_Y;  // ../../rtl/avr/avr.vhd(25)
  output [3:0] MS_Z;  // ../../rtl/avr/avr.vhd(27)
  output [15:0] OSD_COMMAND;  // ../../rtl/avr/avr.vhd(61)
  output OSD_OVERLAY;  // ../../rtl/avr/avr.vhd(59)
  output OSD_POPUP;  // ../../rtl/avr/avr.vhd(60)
  output RESET;  // ../../rtl/avr/avr.vhd(54)
  output [7:0] RTC_DO;  // ../../rtl/avr/avr.vhd(35)
  output [1:0] SCREEN_MODE;  // ../../rtl/avr/avr.vhd(63)
  output [1:10] SOFT_SW;  // ../../rtl/avr/avr.vhd(48)
  output [1:0] TURBO;  // ../../rtl/avr/avr.vhd(55)
  output WAIT_CPU;  // ../../rtl/avr/avr.vhd(57)

  wire [7:0] build_byte;  // ../../rtl/avr/avr.vhd(152)
  wire [2:0] build_read_addr;  // ../../rtl/avr/avr.vhd(151)
  wire [2:0] buttons;  // ../../rtl/avr/avr.vhd(93)
  wire [7:0] cursorX;  // ../../rtl/avr/avr.vhd(98)
  wire [7:0] cursorY;  // ../../rtl/avr/avr.vhd(99)
  wire [8:0] deltaX;  // ../../rtl/avr/avr.vhd(100)
  wire [8:0] deltaY;  // ../../rtl/avr/avr.vhd(101)
  wire [3:0] deltaZ;  // ../../rtl/avr/avr.vhd(102)
  wire [40:0] kb_data;  // ../../rtl/avr/avr.vhd(86)
  wire [39:0] kb_data_tmp;  // ../../rtl/avr/avr.vhd(85)
  wire [7:0] mouse_x;  // ../../rtl/avr/avr.vhd(90)
  wire [7:0] mouse_y;  // ../../rtl/avr/avr.vhd(91)
  wire [3:0] mouse_z;  // ../../rtl/avr/avr.vhd(92)
  wire [2:0] n100;
  wire [7:0] n101;
  wire [7:0] n102;
  wire [39:0] n12;
  wire [40:0] n13;
  wire [1:0] n15;
  wire [9:0] n19;
  wire [7:0] n20;
  wire [7:0] n200;
  wire [7:0] n201;
  wire [3:0] n202;
  wire [2:0] n203;
  wire [7:0] n204;
  wire [7:0] n205;
  wire [7:0] n209;
  wire [9:0] n21;
  wire [7:0] n210;
  wire [7:0] n211;
  wire [7:0] n212;
  wire [3:0] n216;
  wire [3:0] n217;
  wire [3:0] n224;
  wire [3:0] n225;
  wire [3:0] n226;
  wire [3:0] n227;
  wire [3:0] n229;
  wire [23:0] n230;
  wire [2:0] n231;
  wire [23:0] n232;
  wire [2:0] n233;
  wire [7:0] n238;
  wire [7:0] n239;
  wire [7:0] n240;
  wire [7:0] n241;
  wire [1:0] n26;
  wire [7:0] n32;
  wire [7:0] n33;
  wire [3:0] n34;
  wire [2:0] n35;
  wire [39:0] n47;
  wire [40:0] n48;
  wire [1:0] n50;
  wire [9:0] n54;
  wire [7:0] n55;
  wire [9:0] n56;
  wire [1:0] n61;
  wire [7:0] n63;
  wire [7:0] n64;
  wire [3:0] n65;
  wire [2:0] n66;
  wire [7:0] n68;
  wire [15:0] n69;
  wire [2:0] n70;
  wire [7:0] n71;
  wire [7:0] n72;
  wire [39:0] n77;
  wire [40:0] n78;
  wire [1:0] n80;
  wire [9:0] n84;
  wire [7:0] n85;
  wire [9:0] n86;
  wire [1:0] n91;
  wire [7:0] n93;
  wire [7:0] n94;
  wire [3:0] n95;
  wire [2:0] n96;
  wire [7:0] n98;
  wire [15:0] n99;
  wire [3:0] qstate;  // ../../rtl/avr/avr.vhd(146)
  wire [23:0] queue_di;  // ../../rtl/avr/avr.vhd(125)
  wire [23:0] queue_do;  // ../../rtl/avr/avr.vhd(130)
  wire [8:0] queue_wr_size;  // ../../rtl/avr/avr.vhd(133)
  wire [7:0] rtcr_a;  // ../../rtl/avr/avr.vhd(119)
  wire [7:0] rtcr_d;  // ../../rtl/avr/avr.vhd(120)
  wire [7:0] rtcr_do;  // ../../rtl/avr/avr.vhd(116)
  wire [7:0] rtcw_a;  // ../../rtl/avr/avr.vhd(114)
  wire [7:0] rtcw_di;  // ../../rtl/avr/avr.vhd(113)
  wire [7:0] scancode_tmp;  // ../../rtl/avr/avr.vhd(136)
  wire [23:0] spi_di;  // ../../rtl/avr/avr.vhd(107)
  wire [23:0] spi_do;  // ../../rtl/avr/avr.vhd(108)
  wire [2:0] tx_build_pos;  // ../../rtl/avr/avr.vhd(149)
  wire avr_ready;  // ../../rtl/avr/avr.vhd(155)
  wire fpga_init_req;  // ../../rtl/avr/avr.vhd(154)
  wire is_up;  // ../../rtl/avr/avr.vhd(137)
  wire ms_flag;  // ../../rtl/avr/avr.vhd(87)
  wire n0;
  wire n1;
  wire n10;
  wire n103;
  wire n104;
  wire n105;
  wire n106;
  wire n107;
  wire n108;
  wire n109;
  wire n11;
  wire n110;
  wire n111;
  wire n112;
  wire n113;
  wire n114;
  wire n115;
  wire n116;
  wire n117;
  wire n118;
  wire n119;
  wire n120;
  wire n121;
  wire n122;
  wire n123;
  wire n124;
  wire n125;
  wire n126;
  wire n127;
  wire n128;
  wire n129;
  wire n130;
  wire n131;
  wire n132;
  wire n133;
  wire n134;
  wire n135;
  wire n136;
  wire n137;
  wire n138;
  wire n139;
  wire n14;
  wire n140;
  wire n141;
  wire n142;
  wire n143;
  wire n144;
  wire n145;
  wire n146;
  wire n147;
  wire n148;
  wire n149;
  wire n150;
  wire n151;
  wire n152;
  wire n153;
  wire n154;
  wire n155;
  wire n156;
  wire n157;
  wire n158;
  wire n159;
  wire n16;
  wire n160;
  wire n161;
  wire n162;
  wire n163;
  wire n164;
  wire n165;
  wire n166;
  wire n167;
  wire n168;
  wire n169;
  wire n17;
  wire n170;
  wire n171;
  wire n172;
  wire n173;
  wire n174;
  wire n175;
  wire n176;
  wire n177;
  wire n178;
  wire n179;
  wire n18;
  wire n180;
  wire n181;
  wire n182;
  wire n183;
  wire n184;
  wire n185;
  wire n186;
  wire n187;
  wire n188;
  wire n189;
  wire n190;
  wire n191;
  wire n192;
  wire n193;
  wire n194;
  wire n195;
  wire n196;
  wire n197;
  wire n198;
  wire n199;
  wire n2;
  wire n206;
  wire n207;
  wire n208;
  wire n213;
  wire n214;
  wire n215;
  wire n218;
  wire n219;
  wire n22;
  wire n220;
  wire n221;
  wire n222;
  wire n223;
  wire n228;
  wire n23;
  wire n234;
  wire n235;
  wire n236;
  wire n237;
  wire n24;
  wire n25;
  wire n27;
  wire n28;
  wire n29;
  wire n3;
  wire n30;
  wire n31;
  wire n36;
  wire n37;
  wire n38;
  wire n39;
  wire n4;
  wire n40;
  wire n41;
  wire n42;
  wire n43;
  wire n44;
  wire n45;
  wire n46;
  wire n49;
  wire n5;
  wire n51;
  wire n52;
  wire n53;
  wire n57;
  wire n58;
  wire n59;
  wire n6;
  wire n60;
  wire n62;
  wire n67;
  wire n7;
  wire n73;
  wire n74;
  wire n75;
  wire n76;
  wire n79;
  wire n8;
  wire n81;
  wire n82;
  wire n83;
  wire n87;
  wire n88;
  wire n89;
  wire n9;
  wire n90;
  wire n92;
  wire n97;
  wire newPacket;  // ../../rtl/avr/avr.vhd(94)
  wire queue_rd_empty;  // ../../rtl/avr/avr.vhd(131)
  wire queue_rd_req;  // ../../rtl/avr/avr.vhd(129)
  wire queue_wr_full;  // ../../rtl/avr/avr.vhd(127)
  wire queue_wr_req;  // ../../rtl/avr/avr.vhd(126)
  wire rtcw_wr;  // ../../rtl/avr/avr.vhd(115)
  wire spi_di_req;  // ../../rtl/avr/avr.vhd(109)
  wire spi_do_valid;  // ../../rtl/avr/avr.vhd(106)
  wire spi_miso;  // ../../rtl/avr/avr.vhd(110)
  wire trigger;  // ../../rtl/avr/avr.vhd(103)
  wire tx_build;  // ../../rtl/avr/avr.vhd(148)

  AL_DFF JOY_TYPE_reg (
    .clk(CLK),
    .d(n88),
    .reset(1'b0),
    .set(1'b0),
    .q(JOY_TYPE));  // ../../rtl/avr/avr.vhd(288)
  AL_DFF KB_MODE_reg (
    .clk(CLK),
    .d(n87),
    .reset(1'b0),
    .set(1'b0),
    .q(KB_MODE));  // ../../rtl/avr/avr.vhd(288)
  AL_DFF LOADED_reg (
    .clk(CLK),
    .d(n90),
    .reset(1'b0),
    .set(1'b0),
    .q(LOADED));  // ../../rtl/avr/avr.vhd(288)
  AL_DFF MAGICK_reg (
    .clk(CLK),
    .d(n81),
    .reset(1'b0),
    .set(1'b0),
    .q(MAGICK));  // ../../rtl/avr/avr.vhd(288)
  AL_DFF MS_EVENT_reg (
    .clk(CLK),
    .d(n208),
    .reset(1'b0),
    .set(1'b0),
    .q(MS_EVENT));  // ../../rtl/avr/avr.vhd(376)
  AL_DFF MS_PRESET_reg (
    .clk(CLK),
    .d(n206),
    .reset(1'b0),
    .set(1'b0),
    .q(MS_PRESET));  // ../../rtl/avr/avr.vhd(376)
  AL_DFF OSD_OVERLAY_reg (
    .clk(CLK),
    .d(n89),
    .reset(1'b0),
    .set(1'b0),
    .q(OSD_OVERLAY));  // ../../rtl/avr/avr.vhd(288)
  AL_DFF OSD_POPUP_reg (
    .clk(CLK),
    .d(n92),
    .reset(1'b0),
    .set(1'b0),
    .q(OSD_POPUP));  // ../../rtl/avr/avr.vhd(288)
  AL_DFF RESET_reg (
    .clk(CLK),
    .d(n79),
    .reset(1'b0),
    .set(1'b0),
    .q(RESET));  // ../../rtl/avr/avr.vhd(288)
  queue UFIFO (
    .clkr(CLK),
    .clkw(CLK),
    .di(queue_di),
    .re(queue_rd_req),
    .rst(n215),
    .we(queue_wr_req),
    .do(queue_do),
    .empty_flag(queue_rd_empty),
    .full_flag(queue_wr_full),
    .wrusedw({queue_wr_size[8],open_n9,open_n10,open_n11,open_n12,open_n13,open_n14,open_n15,open_n16}));  // ../../rtl/avr/avr.vhd(447)
  rtc URTC (
    .addra(rtcw_a),
    .addrb(RTC_A),
    .clka(CLK),
    .clkb(CLK),
    .dia(rtcw_di),
    .dib(8'b11111111),
    .wea(rtcw_wr),
    .web(1'b0),
    .dob(rtcr_do));  // ../../rtl/avr/avr.vhd(423)
  message_rom U_MESSAGES (
    .addra(build_read_addr),
    .clka(CLK),
    .rsta(n215),
    .doa(build_byte));  // ../../rtl/avr/avr.vhd(475)
  \spi_slave(n=24)  U_SPI (
    .clk_i(CLK),
    .di_i(spi_di),
    .spi_mosi_i(AVR_MOSI),
    .spi_sck_i(AVR_SCK),
    .spi_ssel_i(AVR_SS),
    .wren_i(n0),
    .di_req_o(spi_di_req),
    .do_o(spi_do),
    .do_valid_o(spi_do_valid),
    .spi_miso_o(spi_miso));  // ../../rtl/avr/avr.vhd(163)
  AL_DFF WAIT_CPU_reg (
    .clk(CLK),
    .d(n83),
    .reset(1'b0),
    .set(1'b0),
    .q(WAIT_CPU));  // ../../rtl/avr/avr.vhd(288)
  add_pu8_pu8_o8 add0 (
    .i0(cursorX),
    .i1(deltaX[7:0]),
    .o(n209));  // ../../rtl/avr/avr.vhd(385)
  add_pu8_pu8_o8 add1 (
    .i0(cursorY),
    .i1(deltaY[7:0]),
    .o(n210));  // ../../rtl/avr/avr.vhd(386)
  AL_DFF avr_ready_reg (
    .clk(CLK),
    .d(n103),
    .reset(1'b0),
    .set(1'b0),
    .q(avr_ready));  // ../../rtl/avr/avr.vhd(288)
  eq_w8 eq0 (
    .i0(8'b00000001),
    .i1(spi_do[15:8]),
    .o(n2));  // ../../rtl/avr/avr.vhd(202)
  eq_w8 eq1 (
    .i0(8'b00000010),
    .i1(spi_do[15:8]),
    .o(n3));  // ../../rtl/avr/avr.vhd(203)
  eq_w8 eq10 (
    .i0(8'b00001011),
    .i1(spi_do[15:8]),
    .o(n29));  // ../../rtl/avr/avr.vhd(246)
  eq_w8 eq11 (
    .i0(8'b00001100),
    .i1(spi_do[15:8]),
    .o(n30));  // ../../rtl/avr/avr.vhd(248)
  eq_w8 eq12 (
    .i0(8'b00000001),
    .i1(spi_do[23:16]),
    .o(n37));  // ../../rtl/avr/avr.vhd(200)
  eq_w8 eq13 (
    .i0(8'b00001010),
    .i1(spi_do[23:16]),
    .o(n38));  // ../../rtl/avr/avr.vhd(241)
  eq_w8 eq14 (
    .i0(8'b00001101),
    .i1(spi_do[23:16]),
    .o(n39));  // ../../rtl/avr/avr.vhd(252)
  eq_w8 eq15 (
    .i0(8'b00001110),
    .i1(spi_do[23:16]),
    .o(n40));  // ../../rtl/avr/avr.vhd(262)
  eq_w8 eq16 (
    .i0(8'b00100000),
    .i1(spi_do[23:16]),
    .o(n41));  // ../../rtl/avr/avr.vhd(264)
  eq_w8 eq17 (
    .i0(8'b11110000),
    .i1(spi_do[23:16]),
    .o(n42));  // ../../rtl/avr/avr.vhd(267)
  eq_w8 eq18 (
    .i0(8'b11111010),
    .i1(spi_do[23:16]),
    .o(n43));  // ../../rtl/avr/avr.vhd(272)
  eq_w8 eq19 (
    .i0(8'b11111101),
    .i1(spi_do[23:16]),
    .o(n44));  // ../../rtl/avr/avr.vhd(277)
  eq_w8 eq2 (
    .i0(8'b00000011),
    .i1(spi_do[15:8]),
    .o(n4));  // ../../rtl/avr/avr.vhd(204)
  eq_w8 eq20 (
    .i0(8'b11111111),
    .i1(spi_do[23:16]),
    .o(n45));  // ../../rtl/avr/avr.vhd(282)
  eq_w8 eq3 (
    .i0(8'b00000100),
    .i1(spi_do[15:8]),
    .o(n5));  // ../../rtl/avr/avr.vhd(205)
  eq_w8 eq4 (
    .i0(8'b00000101),
    .i1(spi_do[15:8]),
    .o(n6));  // ../../rtl/avr/avr.vhd(206)
  eq_w8 eq5 (
    .i0(8'b00000110),
    .i1(spi_do[15:8]),
    .o(n7));  // ../../rtl/avr/avr.vhd(208)
  eq_w8 eq6 (
    .i0(8'b00000111),
    .i1(spi_do[15:8]),
    .o(n8));  // ../../rtl/avr/avr.vhd(218)
  eq_w8 eq7 (
    .i0(8'b00001000),
    .i1(spi_do[15:8]),
    .o(n9));  // ../../rtl/avr/avr.vhd(220)
  eq_w8 eq8 (
    .i0(8'b00001001),
    .i1(spi_do[15:8]),
    .o(n10));  // ../../rtl/avr/avr.vhd(229)
  eq_w8 eq9 (
    .i0(8'b00001010),
    .i1(spi_do[15:8]),
    .o(n28));  // ../../rtl/avr/avr.vhd(244)
  AL_DFF fpga_init_req_reg (
    .clk(CLK),
    .d(n75),
    .reset(1'b0),
    .set(1'b0),
    .q(fpga_init_req));  // ../../rtl/avr/avr.vhd(288)
  AL_DFF is_up_reg (
    .clk(CLK),
    .d(n82),
    .reset(1'b0),
    .set(1'b0),
    .q(is_up));  // ../../rtl/avr/avr.vhd(288)
  AL_DFF ms_flag_reg (
    .clk(CLK),
    .d(n207),
    .reset(1'b0),
    .set(1'b0),
    .q(ms_flag));  // ../../rtl/avr/avr.vhd(376)
  binary_mux_s1_w24 mux0 (
    .i0(queue_do),
    .i1(24'b111111111111111111111111),
    .sel(queue_rd_empty),
    .o(spi_di));  // ../../rtl/avr/avr.vhd(188)
  binary_mux_s1_w40 mux1 (
    .i0(kb_data_tmp),
    .i1(n47),
    .sel(spi_do_valid),
    .o(n77));  // ../../rtl/avr/avr.vhd(287)
  binary_mux_s1_w4 mux10 (
    .i0(mouse_z),
    .i1(n65),
    .sel(spi_do_valid),
    .o(n95));  // ../../rtl/avr/avr.vhd(287)
  binary_mux_s1_w3 mux11 (
    .i0(buttons),
    .i1(n66),
    .sel(spi_do_valid),
    .o(n96));  // ../../rtl/avr/avr.vhd(287)
  binary_mux_s1_w8 mux12 (
    .i0(JOY),
    .i1(n68),
    .sel(spi_do_valid),
    .o(n98));  // ../../rtl/avr/avr.vhd(287)
  binary_mux_s1_w16 mux13 (
    .i0(OSD_COMMAND),
    .i1(n69),
    .sel(spi_do_valid),
    .o(n99));  // ../../rtl/avr/avr.vhd(287)
  binary_mux_s1_w3 mux14 (
    .i0(tx_build_pos),
    .i1(n70),
    .sel(spi_do_valid),
    .o(n100));  // ../../rtl/avr/avr.vhd(287)
  binary_mux_s1_w8 mux15 (
    .i0(rtcr_a),
    .i1(n71),
    .sel(spi_do_valid),
    .o(n101));  // ../../rtl/avr/avr.vhd(287)
  binary_mux_s1_w8 mux16 (
    .i0(rtcr_d),
    .i1(n72),
    .sel(spi_do_valid),
    .o(n102));  // ../../rtl/avr/avr.vhd(287)
  binary_mux_s1_w8 mux17 (
    .i0(deltaX[7:0]),
    .i1(mouse_x),
    .sel(n199),
    .o(n200));  // ../../rtl/avr/avr.vhd(375)
  binary_mux_s1_w4 mux18 (
    .i0(deltaZ),
    .i1(mouse_z),
    .sel(n199),
    .o(n202));  // ../../rtl/avr/avr.vhd(375)
  binary_mux_s1_w3 mux19 (
    .i0(MS_BTNS),
    .i1(buttons),
    .sel(n199),
    .o(n203));  // ../../rtl/avr/avr.vhd(375)
  binary_mux_s1_w41 mux2 (
    .i0(kb_data),
    .i1(n48),
    .sel(spi_do_valid),
    .o(n78));  // ../../rtl/avr/avr.vhd(287)
  binary_mux_s1_w8 mux20 (
    .i0(MS_DELTA_X),
    .i1(mouse_x),
    .sel(n199),
    .o(n204));  // ../../rtl/avr/avr.vhd(375)
  binary_mux_s1_w8 mux21 (
    .i0(MS_DELTA_Y),
    .i1(mouse_y),
    .sel(n199),
    .o(n205));  // ../../rtl/avr/avr.vhd(375)
  binary_mux_s1_w8 mux22 (
    .i0(deltaY[7:0]),
    .i1(mouse_y),
    .sel(n199),
    .o(n201));  // ../../rtl/avr/avr.vhd(375)
  binary_mux_s1_w8 mux23 (
    .i0({n226,qstate}),
    .i1(8'b00100010),
    .sel(fpga_init_req),
    .o({n227,n217}));  // ../../rtl/avr/avr.vhd(536)
  binary_mux_s1_w8 mux24 (
    .i0(cursorX),
    .i1(n209),
    .sel(trigger),
    .o(n211));  // ../../rtl/avr/avr.vhd(391)
  binary_mux_s1_w8 mux25 (
    .i0(cursorY),
    .i1(n210),
    .sel(trigger),
    .o(n212));  // ../../rtl/avr/avr.vhd(391)
  binary_mux_s1_w4 mux26 (
    .i0(qstate),
    .i1(4'b0011),
    .sel(LOADER_DONE),
    .o(n216));  // ../../rtl/avr/avr.vhd(504)
  binary_mux_s1_w4 mux27 (
    .i0({n223,1'b0,n224[1],1'b1}),
    .i1(4'b0111),
    .sel(n220),
    .o(n225));  // ../../rtl/avr/avr.vhd(536)
  binary_mux_s1_w4 mux28 (
    .i0(n225),
    .i1(4'b0100),
    .sel(tx_build),
    .o(n226));  // ../../rtl/avr/avr.vhd(536)
  binary_mux_s4_w1 mux29 (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b0),
    .i11(1'bx),
    .i12(1'bx),
    .i13(1'bx),
    .i14(1'bx),
    .i15(1'bx),
    .i2(1'b1),
    .i3(1'b0),
    .i4(1'b0),
    .i5(1'b1),
    .i6(1'b0),
    .i7(1'b1),
    .i8(1'b0),
    .i9(1'b1),
    .sel(qstate),
    .o(n228));  // ../../rtl/avr/avr.vhd(580)
  binary_mux_s1_w2 mux3 (
    .i0(TURBO),
    .i1(n50),
    .sel(spi_do_valid),
    .o(n80));  // ../../rtl/avr/avr.vhd(287)
  binary_mux_s4_w4 mux30 (
    .i0(n216),
    .i1(n217),
    .i10(4'b0011),
    .i11(4'bxxxx),
    .i12(4'bxxxx),
    .i13(4'bxxxx),
    .i14(4'bxxxx),
    .i15(4'bxxxx),
    .i2(4'b0011),
    .i3(n227),
    .i4(4'b0101),
    .i5(4'b0110),
    .i6(4'b0011),
    .i7(4'b1000),
    .i8(4'b0011),
    .i9(4'b1010),
    .sel(qstate),
    .o(n229));  // ../../rtl/avr/avr.vhd(580)
  binary_mux_s4_w24 mux31 (
    .i0(queue_di),
    .i1(queue_di),
    .i10(queue_di),
    .i11(24'bxxxxxxxxxxxxxxxxxxxxxxxx),
    .i12(24'bxxxxxxxxxxxxxxxxxxxxxxxx),
    .i13(24'bxxxxxxxxxxxxxxxxxxxxxxxx),
    .i14(24'bxxxxxxxxxxxxxxxxxxxxxxxx),
    .i15(24'bxxxxxxxxxxxxxxxxxxxxxxxx),
    .i2({16'b1111110100000000,MAX_TURBO,CFG[5:0]}),
    .i3(queue_di),
    .i4(queue_di),
    .i5({13'b1111000000000,build_read_addr,build_byte}),
    .i6(queue_di),
    .i7({8'b11111010,RTC_A,RTC_DI}),
    .i8(queue_di),
    .i9({20'b00001110000000000000,LED2_OWR,LED1_OWR,LED2,LED1}),
    .sel(qstate),
    .o(n230));  // ../../rtl/avr/avr.vhd(580)
  binary_mux_s4_w3 mux32 (
    .i0(build_read_addr),
    .i1(build_read_addr),
    .i10(build_read_addr),
    .i11(3'bxxx),
    .i12(3'bxxx),
    .i13(3'bxxx),
    .i14(3'bxxx),
    .i15(3'bxxx),
    .i2(build_read_addr),
    .i3(build_read_addr),
    .i4(tx_build_pos),
    .i5(build_read_addr),
    .i6(build_read_addr),
    .i7(build_read_addr),
    .i8(build_read_addr),
    .i9(build_read_addr),
    .sel(qstate),
    .o(n231));  // ../../rtl/avr/avr.vhd(580)
  binary_mux_s1_w24 mux33 (
    .i0(n230),
    .i1(queue_di),
    .sel(n215),
    .o(n232));  // ../../rtl/avr/avr.vhd(582)
  binary_mux_s1_w3 mux34 (
    .i0(n231),
    .i1(build_read_addr),
    .sel(n215),
    .o(n233));  // ../../rtl/avr/avr.vhd(582)
  binary_mux_s1_w8 mux35 (
    .i0(rtcr_a),
    .i1(RTC_A),
    .sel(n220),
    .o(n238));  // ../../rtl/avr/avr.vhd(602)
  binary_mux_s1_w8 mux36 (
    .i0(rtcr_d),
    .i1(RTC_DI),
    .sel(n220),
    .o(n239));  // ../../rtl/avr/avr.vhd(602)
  binary_mux_s1_w8 mux37 (
    .i0(n238),
    .i1(rtcw_a),
    .sel(n215),
    .o(n240));  // ../../rtl/avr/avr.vhd(603)
  binary_mux_s1_w8 mux38 (
    .i0(n239),
    .i1(rtcw_di),
    .sel(n215),
    .o(n241));  // ../../rtl/avr/avr.vhd(603)
  binary_mux_s1_w10 mux4 (
    .i0(SOFT_SW),
    .i1(n54),
    .sel(spi_do_valid),
    .o(n84));  // ../../rtl/avr/avr.vhd(287)
  binary_mux_s1_w8 mux5 (
    .i0(scancode_tmp),
    .i1(n55),
    .sel(spi_do_valid),
    .o(n85));  // ../../rtl/avr/avr.vhd(287)
  binary_mux_s1_w10 mux6 (
    .i0(KB_SCANCODE),
    .i1(n56),
    .sel(spi_do_valid),
    .o(n86));  // ../../rtl/avr/avr.vhd(287)
  binary_mux_s1_w2 mux7 (
    .i0(SCREEN_MODE),
    .i1(n61),
    .sel(spi_do_valid),
    .o(n91));  // ../../rtl/avr/avr.vhd(287)
  binary_mux_s1_w8 mux8 (
    .i0(mouse_x),
    .i1(n63),
    .sel(spi_do_valid),
    .o(n93));  // ../../rtl/avr/avr.vhd(287)
  binary_mux_s1_w8 mux9 (
    .i0(mouse_y),
    .i1(n64),
    .sel(spi_do_valid),
    .o(n94));  // ../../rtl/avr/avr.vhd(287)
  AL_DFF newPacket_reg (
    .clk(CLK),
    .d(n97),
    .reset(1'b0),
    .set(1'b0),
    .q(newPacket));  // ../../rtl/avr/avr.vhd(288)
  AL_DFF queue_wr_req_reg (
    .clk(CLK),
    .d(n228),
    .reset(n215),
    .set(1'b0),
    .q(queue_wr_req));  // ../../rtl/avr/avr.vhd(582)
  reg_ar_as_w40 reg0 (
    .clk(CLK),
    .d(n77),
    .reset(40'b0000000000000000000000000000000000000000),
    .set(40'b0000000000000000000000000000000000000000),
    .q(kb_data_tmp));  // ../../rtl/avr/avr.vhd(288)
  reg_ar_as_w41 reg1 (
    .clk(CLK),
    .d(n78),
    .reset(41'b00000000000000000000000000000000000000000),
    .set(41'b00000000000000000000000000000000000000000),
    .q(kb_data));  // ../../rtl/avr/avr.vhd(288)
  reg_ar_as_w3 reg10 (
    .clk(CLK),
    .d(n96),
    .reset(3'b000),
    .set(3'b000),
    .q(buttons));  // ../../rtl/avr/avr.vhd(288)
  reg_ar_as_w8 reg11 (
    .clk(CLK),
    .d(n98),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(JOY));  // ../../rtl/avr/avr.vhd(288)
  reg_ar_as_w16 reg12 (
    .clk(CLK),
    .d(n99),
    .reset(16'b0000000000000000),
    .set(16'b0000000000000000),
    .q(OSD_COMMAND));  // ../../rtl/avr/avr.vhd(288)
  reg_ar_as_w3 reg13 (
    .clk(CLK),
    .d(n100),
    .reset(3'b000),
    .set(3'b000),
    .q(tx_build_pos));  // ../../rtl/avr/avr.vhd(288)
  reg_ar_as_w8 reg14 (
    .clk(CLK),
    .d(n101),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(rtcr_a));  // ../../rtl/avr/avr.vhd(288)
  reg_ar_as_w8 reg15 (
    .clk(CLK),
    .d(n102),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(rtcr_d));  // ../../rtl/avr/avr.vhd(288)
  reg_ar_as_w8 reg16 (
    .clk(CLK),
    .d(n200),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(deltaX[7:0]));  // ../../rtl/avr/avr.vhd(376)
  reg_ar_as_w8 reg17 (
    .clk(CLK),
    .d(n201),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(deltaY[7:0]));  // ../../rtl/avr/avr.vhd(376)
  reg_ar_as_w4 reg18 (
    .clk(CLK),
    .d(n202),
    .reset(4'b0000),
    .set(4'b0000),
    .q(deltaZ));  // ../../rtl/avr/avr.vhd(376)
  reg_ar_as_w3 reg19 (
    .clk(CLK),
    .d(n203),
    .reset(3'b000),
    .set(3'b000),
    .q(MS_BTNS));  // ../../rtl/avr/avr.vhd(376)
  reg_ar_as_w2 reg2 (
    .clk(CLK),
    .d(n80),
    .reset(2'b00),
    .set(2'b00),
    .q(TURBO));  // ../../rtl/avr/avr.vhd(288)
  reg_ar_as_w8 reg20 (
    .clk(CLK),
    .d(n204),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(MS_DELTA_X));  // ../../rtl/avr/avr.vhd(376)
  reg_ar_as_w8 reg21 (
    .clk(CLK),
    .d(n205),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(MS_DELTA_Y));  // ../../rtl/avr/avr.vhd(376)
  reg_ar_as_w8 reg22 (
    .clk(CLK),
    .d(n211),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(cursorX));  // ../../rtl/avr/avr.vhd(392)
  reg_ar_as_w8 reg23 (
    .clk(CLK),
    .d(n212),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(cursorY));  // ../../rtl/avr/avr.vhd(392)
  reg_ar_as_w4 reg24 (
    .clk(CLK),
    .d(n229),
    .reset({n215,n215,n215,n215}),
    .set(4'b0000),
    .q(qstate));  // ../../rtl/avr/avr.vhd(582)
  reg_ar_as_w24 reg25 (
    .clk(CLK),
    .d(n232),
    .reset(24'b000000000000000000000000),
    .set(24'b000000000000000000000000),
    .q(queue_di));  // ../../rtl/avr/avr.vhd(582)
  reg_ar_as_w3 reg26 (
    .clk(CLK),
    .d(n233),
    .reset(3'b000),
    .set(3'b000),
    .q(build_read_addr));  // ../../rtl/avr/avr.vhd(582)
  reg_ar_as_w8 reg27 (
    .clk(CLK),
    .d(n240),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(rtcw_a));  // ../../rtl/avr/avr.vhd(603)
  reg_ar_as_w8 reg28 (
    .clk(CLK),
    .d(n241),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(rtcw_di));  // ../../rtl/avr/avr.vhd(603)
  reg_ar_as_w10 reg3 (
    .clk(CLK),
    .d(n84),
    .reset(10'b0000000000),
    .set(10'b0000000000),
    .q(SOFT_SW));  // ../../rtl/avr/avr.vhd(288)
  reg_ar_as_w8 reg4 (
    .clk(CLK),
    .d(n85),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(scancode_tmp));  // ../../rtl/avr/avr.vhd(288)
  reg_ar_as_w10 reg5 (
    .clk(CLK),
    .d(n86),
    .reset(10'b0000000000),
    .set(10'b0000000000),
    .q(KB_SCANCODE));  // ../../rtl/avr/avr.vhd(288)
  reg_ar_as_w2 reg6 (
    .clk(CLK),
    .d(n91),
    .reset(2'b00),
    .set(2'b00),
    .q(SCREEN_MODE));  // ../../rtl/avr/avr.vhd(288)
  reg_ar_as_w8 reg7 (
    .clk(CLK),
    .d(n93),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(mouse_x));  // ../../rtl/avr/avr.vhd(288)
  reg_ar_as_w8 reg8 (
    .clk(CLK),
    .d(n94),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(mouse_y));  // ../../rtl/avr/avr.vhd(288)
  reg_ar_as_w4 reg9 (
    .clk(CLK),
    .d(n95),
    .reset(4'b0000),
    .set(4'b0000),
    .q(mouse_z));  // ../../rtl/avr/avr.vhd(288)
  AL_DFF rtcw_wr_reg (
    .clk(CLK),
    .d(1'b1),
    .reset(n215),
    .set(1'b0),
    .q(rtcw_wr));  // ../../rtl/avr/avr.vhd(603)
  onehot_mux_s10_w40 sel0 (
    .i0(kb_data_tmp),
    .i1(kb_data_tmp),
    .i2(kb_data_tmp),
    .i3(kb_data_tmp),
    .i4(kb_data_tmp),
    .i5({spi_do[7:0],kb_data_tmp[31:0]}),
    .i6({kb_data_tmp[39:32],spi_do[7:0],kb_data_tmp[23:0]}),
    .i7({kb_data_tmp[39:24],spi_do[7:0],kb_data_tmp[15:0]}),
    .i8({kb_data_tmp[39:16],spi_do[7:0],kb_data_tmp[7:0]}),
    .i9({kb_data_tmp[39:8],spi_do[7:0]}),
    .sel({n2,n3,n4,n5,n6,n7,n8,n9,n10,n11}),
    .o(n12));  // ../../rtl/avr/avr.vhd(239)
  onehot_mux_s10_w41 sel1 (
    .i0(kb_data),
    .i1(kb_data),
    .i2(kb_data),
    .i3(kb_data),
    .i4({spi_do[0],kb_data_tmp}),
    .i5(kb_data),
    .i6(kb_data),
    .i7(kb_data),
    .i8(kb_data),
    .i9(kb_data),
    .sel({n2,n3,n4,n5,n6,n7,n8,n9,n10,n11}),
    .o(n13));  // ../../rtl/avr/avr.vhd(239)
  onehot_mux_s4_w3 sel10 (
    .i0(buttons),
    .i1(spi_do[6:4]),
    .i2(buttons),
    .i3(buttons),
    .sel({n28,n29,n30,n31}),
    .o(n35));  // ../../rtl/avr/avr.vhd(250)
  onehot_mux_s10_w40 sel11 (
    .i0(kb_data_tmp),
    .i1(kb_data_tmp),
    .i2(kb_data_tmp),
    .i3(kb_data_tmp),
    .i4(kb_data_tmp),
    .i5(kb_data_tmp),
    .i6(kb_data_tmp),
    .i7(kb_data_tmp),
    .i8(kb_data_tmp),
    .i9(n12),
    .sel({n37,n38,n39,n40,n41,n42,n43,n44,n45,n46}),
    .o(n47));  // ../../rtl/avr/avr.vhd(286)
  onehot_mux_s10_w41 sel12 (
    .i0(kb_data),
    .i1(kb_data),
    .i2(kb_data),
    .i3(kb_data),
    .i4(kb_data),
    .i5(kb_data),
    .i6(kb_data),
    .i7(kb_data),
    .i8(kb_data),
    .i9(n13),
    .sel({n37,n38,n39,n40,n41,n42,n43,n44,n45,n46}),
    .o(n48));  // ../../rtl/avr/avr.vhd(286)
  onehot_mux_s10_w2 sel13 (
    .i0(TURBO),
    .i1(TURBO),
    .i2(TURBO),
    .i3(TURBO),
    .i4(TURBO),
    .i5(TURBO),
    .i6(TURBO),
    .i7(TURBO),
    .i8(TURBO),
    .i9(n15),
    .sel({n37,n38,n39,n40,n41,n42,n43,n44,n45,n46}),
    .o(n50));  // ../../rtl/avr/avr.vhd(286)
  onehot_mux_s10_w10 sel14 (
    .i0(SOFT_SW),
    .i1(SOFT_SW),
    .i2(SOFT_SW),
    .i3(SOFT_SW),
    .i4(SOFT_SW),
    .i5(SOFT_SW),
    .i6(SOFT_SW),
    .i7(SOFT_SW),
    .i8(SOFT_SW),
    .i9(n19),
    .sel({n37,n38,n39,n40,n41,n42,n43,n44,n45,n46}),
    .o(n54));  // ../../rtl/avr/avr.vhd(286)
  onehot_mux_s10_w8 sel15 (
    .i0(scancode_tmp),
    .i1(scancode_tmp),
    .i2(scancode_tmp),
    .i3(scancode_tmp),
    .i4(scancode_tmp),
    .i5(scancode_tmp),
    .i6(scancode_tmp),
    .i7(scancode_tmp),
    .i8(scancode_tmp),
    .i9(n20),
    .sel({n37,n38,n39,n40,n41,n42,n43,n44,n45,n46}),
    .o(n55));  // ../../rtl/avr/avr.vhd(286)
  onehot_mux_s10_w10 sel16 (
    .i0(KB_SCANCODE),
    .i1(KB_SCANCODE),
    .i2(KB_SCANCODE),
    .i3(KB_SCANCODE),
    .i4(KB_SCANCODE),
    .i5(KB_SCANCODE),
    .i6(KB_SCANCODE),
    .i7(KB_SCANCODE),
    .i8(KB_SCANCODE),
    .i9(n21),
    .sel({n37,n38,n39,n40,n41,n42,n43,n44,n45,n46}),
    .o(n56));  // ../../rtl/avr/avr.vhd(286)
  onehot_mux_s10_w2 sel17 (
    .i0(SCREEN_MODE),
    .i1(SCREEN_MODE),
    .i2(SCREEN_MODE),
    .i3(SCREEN_MODE),
    .i4(SCREEN_MODE),
    .i5(SCREEN_MODE),
    .i6(SCREEN_MODE),
    .i7(SCREEN_MODE),
    .i8(SCREEN_MODE),
    .i9(n26),
    .sel({n37,n38,n39,n40,n41,n42,n43,n44,n45,n46}),
    .o(n61));  // ../../rtl/avr/avr.vhd(286)
  onehot_mux_s10_w8 sel18 (
    .i0(mouse_x),
    .i1(mouse_x),
    .i2(mouse_x),
    .i3(mouse_x),
    .i4(mouse_x),
    .i5(mouse_x),
    .i6(mouse_x),
    .i7(mouse_x),
    .i8(n32),
    .i9(mouse_x),
    .sel({n37,n38,n39,n40,n41,n42,n43,n44,n45,n46}),
    .o(n63));  // ../../rtl/avr/avr.vhd(286)
  onehot_mux_s10_w8 sel19 (
    .i0(mouse_y),
    .i1(mouse_y),
    .i2(mouse_y),
    .i3(mouse_y),
    .i4(mouse_y),
    .i5(mouse_y),
    .i6(mouse_y),
    .i7(mouse_y),
    .i8(n33),
    .i9(mouse_y),
    .sel({n37,n38,n39,n40,n41,n42,n43,n44,n45,n46}),
    .o(n64));  // ../../rtl/avr/avr.vhd(286)
  onehot_mux_s10_w2 sel2 (
    .i0(TURBO),
    .i1({spi_do[4],TURBO[0]}),
    .i2(TURBO),
    .i3(TURBO),
    .i4({TURBO[1],spi_do[2]}),
    .i5(TURBO),
    .i6(TURBO),
    .i7(TURBO),
    .i8(TURBO),
    .i9(TURBO),
    .sel({n2,n3,n4,n5,n6,n7,n8,n9,n10,n11}),
    .o(n15));  // ../../rtl/avr/avr.vhd(239)
  onehot_mux_s10_w4 sel20 (
    .i0(mouse_z),
    .i1(mouse_z),
    .i2(mouse_z),
    .i3(mouse_z),
    .i4(mouse_z),
    .i5(mouse_z),
    .i6(mouse_z),
    .i7(mouse_z),
    .i8(n34),
    .i9(mouse_z),
    .sel({n37,n38,n39,n40,n41,n42,n43,n44,n45,n46}),
    .o(n65));  // ../../rtl/avr/avr.vhd(286)
  onehot_mux_s10_w3 sel21 (
    .i0(buttons),
    .i1(buttons),
    .i2(buttons),
    .i3(buttons),
    .i4(buttons),
    .i5(buttons),
    .i6(buttons),
    .i7(buttons),
    .i8(n35),
    .i9(buttons),
    .sel({n37,n38,n39,n40,n41,n42,n43,n44,n45,n46}),
    .o(n66));  // ../../rtl/avr/avr.vhd(286)
  onehot_mux_s10_w8 sel22 (
    .i0(JOY),
    .i1(JOY),
    .i2(JOY),
    .i3(JOY),
    .i4(JOY),
    .i5(JOY),
    .i6(JOY),
    .i7({spi_do[7:6],spi_do[1:0],spi_do[2],spi_do[3],spi_do[4],spi_do[5]}),
    .i8(JOY),
    .i9(JOY),
    .sel({n37,n38,n39,n40,n41,n42,n43,n44,n45,n46}),
    .o(n68));  // ../../rtl/avr/avr.vhd(286)
  onehot_mux_s10_w16 sel23 (
    .i0(OSD_COMMAND),
    .i1(OSD_COMMAND),
    .i2(OSD_COMMAND),
    .i3(OSD_COMMAND),
    .i4(OSD_COMMAND),
    .i5(spi_do[15:0]),
    .i6(OSD_COMMAND),
    .i7(OSD_COMMAND),
    .i8(OSD_COMMAND),
    .i9(OSD_COMMAND),
    .sel({n37,n38,n39,n40,n41,n42,n43,n44,n45,n46}),
    .o(n69));  // ../../rtl/avr/avr.vhd(286)
  onehot_mux_s10_w3 sel24 (
    .i0(tx_build_pos),
    .i1(tx_build_pos),
    .i2(tx_build_pos),
    .i3(tx_build_pos),
    .i4(spi_do[10:8]),
    .i5(tx_build_pos),
    .i6(tx_build_pos),
    .i7(tx_build_pos),
    .i8(tx_build_pos),
    .i9(tx_build_pos),
    .sel({n37,n38,n39,n40,n41,n42,n43,n44,n45,n46}),
    .o(n70));  // ../../rtl/avr/avr.vhd(286)
  onehot_mux_s10_w8 sel25 (
    .i0(rtcr_a),
    .i1(rtcr_a),
    .i2(rtcr_a),
    .i3(spi_do[15:8]),
    .i4(rtcr_a),
    .i5(rtcr_a),
    .i6(rtcr_a),
    .i7(rtcr_a),
    .i8(rtcr_a),
    .i9(rtcr_a),
    .sel({n37,n38,n39,n40,n41,n42,n43,n44,n45,n46}),
    .o(n71));  // ../../rtl/avr/avr.vhd(286)
  onehot_mux_s10_w8 sel26 (
    .i0(rtcr_d),
    .i1(rtcr_d),
    .i2(rtcr_d),
    .i3(spi_do[7:0]),
    .i4(rtcr_d),
    .i5(rtcr_d),
    .i6(rtcr_d),
    .i7(rtcr_d),
    .i8(rtcr_d),
    .i9(rtcr_d),
    .sel({n37,n38,n39,n40,n41,n42,n43,n44,n45,n46}),
    .o(n72));  // ../../rtl/avr/avr.vhd(286)
  onehot_mux_s10_w10 sel3 (
    .i0(SOFT_SW),
    .i1({SOFT_SW[1:8],spi_do[0],spi_do[1]}),
    .i2({SOFT_SW[1:2],spi_do[1],spi_do[2],spi_do[3],spi_do[5],spi_do[6],spi_do[7],SOFT_SW[9:10]}),
    .i3(SOFT_SW),
    .i4({spi_do[6],spi_do[7],SOFT_SW[3:10]}),
    .i5(SOFT_SW),
    .i6(SOFT_SW),
    .i7(SOFT_SW),
    .i8(SOFT_SW),
    .i9(SOFT_SW),
    .sel({n2,n3,n4,n5,n6,n7,n8,n9,n10,n11}),
    .o(n19));  // ../../rtl/avr/avr.vhd(239)
  onehot_mux_s10_w8 sel4 (
    .i0(scancode_tmp),
    .i1(scancode_tmp),
    .i2(scancode_tmp),
    .i3(spi_do[7:0]),
    .i4(scancode_tmp),
    .i5(scancode_tmp),
    .i6(scancode_tmp),
    .i7(scancode_tmp),
    .i8(scancode_tmp),
    .i9(scancode_tmp),
    .sel({n2,n3,n4,n5,n6,n7,n8,n9,n10,n11}),
    .o(n20));  // ../../rtl/avr/avr.vhd(239)
  onehot_mux_s10_w10 sel5 (
    .i0(KB_SCANCODE),
    .i1(KB_SCANCODE),
    .i2({is_up,spi_do[0],scancode_tmp}),
    .i3(KB_SCANCODE),
    .i4(KB_SCANCODE),
    .i5(KB_SCANCODE),
    .i6(KB_SCANCODE),
    .i7(KB_SCANCODE),
    .i8(KB_SCANCODE),
    .i9(KB_SCANCODE),
    .sel({n2,n3,n4,n5,n6,n7,n8,n9,n10,n11}),
    .o(n21));  // ../../rtl/avr/avr.vhd(239)
  onehot_mux_s10_w2 sel6 (
    .i0(SCREEN_MODE),
    .i1(spi_do[6:5]),
    .i2(SCREEN_MODE),
    .i3(SCREEN_MODE),
    .i4(SCREEN_MODE),
    .i5(SCREEN_MODE),
    .i6(SCREEN_MODE),
    .i7(SCREEN_MODE),
    .i8(SCREEN_MODE),
    .i9(SCREEN_MODE),
    .sel({n2,n3,n4,n5,n6,n7,n8,n9,n10,n11}),
    .o(n26));  // ../../rtl/avr/avr.vhd(239)
  onehot_mux_s4_w8 sel7 (
    .i0(mouse_x),
    .i1(mouse_x),
    .i2(mouse_x),
    .i3(spi_do[7:0]),
    .sel({n28,n29,n30,n31}),
    .o(n32));  // ../../rtl/avr/avr.vhd(250)
  onehot_mux_s4_w8 sel8 (
    .i0(mouse_y),
    .i1(mouse_y),
    .i2(spi_do[7:0]),
    .i3(mouse_y),
    .sel({n28,n29,n30,n31}),
    .o(n33));  // ../../rtl/avr/avr.vhd(250)
  onehot_mux_s4_w4 sel9 (
    .i0(mouse_z),
    .i1(spi_do[3:0]),
    .i2(mouse_z),
    .i3(mouse_z),
    .sel({n28,n29,n30,n31}),
    .o(n34));  // ../../rtl/avr/avr.vhd(250)
  AL_DFF trigger_reg (
    .clk(CLK),
    .d(n199),
    .reset(1'b0),
    .set(1'b0),
    .q(trigger));  // ../../rtl/avr/avr.vhd(376)
  AL_DFF tx_build_reg (
    .clk(CLK),
    .d(n76),
    .reset(1'b0),
    .set(1'b0),
    .q(tx_build));  // ../../rtl/avr/avr.vhd(288)
  AL_MUX u10 (
    .i0(MAGICK),
    .i1(spi_do[3]),
    .sel(n7),
    .o(n16));  // ../../rtl/avr/avr.vhd(239)
  buf u100 (MS_X[4], cursorX[4]);  // ../../rtl/avr/avr.vhd(395)
  and u101 (n147, kb_data[19], n112);  // ../../rtl/avr/avr.vhd(324)
  or u102 (n148, n146, n147);  // ../../rtl/avr/avr.vhd(323)
  buf u103 (MS_X[3], cursorX[3]);  // ../../rtl/avr/avr.vhd(395)
  and u104 (n149, kb_data[20], n115);  // ../../rtl/avr/avr.vhd(325)
  or u105 (n150, n148, n149);  // ../../rtl/avr/avr.vhd(324)
  buf u106 (MS_X[2], cursorX[2]);  // ../../rtl/avr/avr.vhd(395)
  and u107 (n151, kb_data[21], n118);  // ../../rtl/avr/avr.vhd(326)
  or u108 (n152, n150, n151);  // ../../rtl/avr/avr.vhd(325)
  buf u109 (MS_X[1], cursorX[1]);  // ../../rtl/avr/avr.vhd(395)
  AL_MUX u11 (
    .i0(is_up),
    .i1(spi_do[4]),
    .sel(n7),
    .o(n17));  // ../../rtl/avr/avr.vhd(239)
  and u110 (n153, kb_data[22], n121);  // ../../rtl/avr/avr.vhd(327)
  or u111 (n154, n152, n153);  // ../../rtl/avr/avr.vhd(326)
  buf u112 (MS_Y[7], cursorY[7]);  // ../../rtl/avr/avr.vhd(396)
  and u113 (n155, kb_data[23], n124);  // ../../rtl/avr/avr.vhd(328)
  or u114 (n156, n154, n155);  // ../../rtl/avr/avr.vhd(327)
  buf u115 (MS_Y[6], cursorY[6]);  // ../../rtl/avr/avr.vhd(396)
  and u116 (n157, kb_data[24], n104);  // ../../rtl/avr/avr.vhd(330)
  buf u117 (MS_Y[5], cursorY[5]);  // ../../rtl/avr/avr.vhd(396)
  and u118 (n158, kb_data[25], n106);  // ../../rtl/avr/avr.vhd(331)
  or u119 (n159, n157, n158);  // ../../rtl/avr/avr.vhd(330)
  AL_MUX u12 (
    .i0(WAIT_CPU),
    .i1(spi_do[5]),
    .sel(n7),
    .o(n18));  // ../../rtl/avr/avr.vhd(239)
  buf u120 (MS_Y[4], cursorY[4]);  // ../../rtl/avr/avr.vhd(396)
  and u121 (n160, kb_data[26], n109);  // ../../rtl/avr/avr.vhd(332)
  or u122 (n161, n159, n160);  // ../../rtl/avr/avr.vhd(331)
  buf u123 (MS_Y[3], cursorY[3]);  // ../../rtl/avr/avr.vhd(396)
  and u124 (n162, kb_data[27], n112);  // ../../rtl/avr/avr.vhd(333)
  or u125 (n163, n161, n162);  // ../../rtl/avr/avr.vhd(332)
  buf u126 (MS_Y[2], cursorY[2]);  // ../../rtl/avr/avr.vhd(396)
  and u127 (n165, kb_data[28], n115);  // ../../rtl/avr/avr.vhd(334)
  or u128 (n166, n163, n165);  // ../../rtl/avr/avr.vhd(333)
  buf u129 (MS_Y[1], cursorY[1]);  // ../../rtl/avr/avr.vhd(396)
  AL_MUX u13 (
    .i0(KB_MODE),
    .i1(spi_do[4]),
    .sel(n9),
    .o(n22));  // ../../rtl/avr/avr.vhd(239)
  and u130 (n168, kb_data[29], n118);  // ../../rtl/avr/avr.vhd(335)
  or u131 (n169, n166, n168);  // ../../rtl/avr/avr.vhd(334)
  buf u132 (MS_Z[3], deltaZ[3]);  // ../../rtl/avr/avr.vhd(397)
  and u133 (n171, kb_data[30], n121);  // ../../rtl/avr/avr.vhd(336)
  or u134 (n172, n169, n171);  // ../../rtl/avr/avr.vhd(335)
  buf u135 (MS_Z[2], deltaZ[2]);  // ../../rtl/avr/avr.vhd(397)
  and u136 (n174, kb_data[31], n124);  // ../../rtl/avr/avr.vhd(337)
  or u137 (n175, n172, n174);  // ../../rtl/avr/avr.vhd(336)
  buf u138 (MS_Z[1], deltaZ[1]);  // ../../rtl/avr/avr.vhd(397)
  and u139 (n177, kb_data[32], n104);  // ../../rtl/avr/avr.vhd(339)
  AL_MUX u14 (
    .i0(JOY_TYPE),
    .i1(spi_do[2]),
    .sel(n10),
    .o(n23));  // ../../rtl/avr/avr.vhd(239)
  buf u140 (RTC_DO[7], rtcr_do[7]);  // ../../rtl/avr/avr.vhd(444)
  and u141 (n179, kb_data[33], n106);  // ../../rtl/avr/avr.vhd(340)
  or u142 (n180, n177, n179);  // ../../rtl/avr/avr.vhd(339)
  buf u143 (RTC_DO[6], rtcr_do[6]);  // ../../rtl/avr/avr.vhd(444)
  and u144 (n182, kb_data[34], n109);  // ../../rtl/avr/avr.vhd(341)
  or u145 (n183, n180, n182);  // ../../rtl/avr/avr.vhd(340)
  buf u146 (RTC_DO[5], rtcr_do[5]);  // ../../rtl/avr/avr.vhd(444)
  and u147 (n185, kb_data[35], n112);  // ../../rtl/avr/avr.vhd(342)
  or u148 (n186, n183, n185);  // ../../rtl/avr/avr.vhd(341)
  buf u149 (RTC_DO[4], rtcr_do[4]);  // ../../rtl/avr/avr.vhd(444)
  AL_MUX u15 (
    .i0(OSD_OVERLAY),
    .i1(spi_do[3]),
    .sel(n10),
    .o(n24));  // ../../rtl/avr/avr.vhd(239)
  and u150 (n188, kb_data[36], n115);  // ../../rtl/avr/avr.vhd(343)
  or u151 (n189, n186, n188);  // ../../rtl/avr/avr.vhd(342)
  buf u152 (RTC_DO[3], rtcr_do[3]);  // ../../rtl/avr/avr.vhd(444)
  and u153 (n191, kb_data[37], n118);  // ../../rtl/avr/avr.vhd(344)
  or u154 (n192, n189, n191);  // ../../rtl/avr/avr.vhd(343)
  buf u155 (RTC_DO[2], rtcr_do[2]);  // ../../rtl/avr/avr.vhd(444)
  and u156 (n194, kb_data[38], n121);  // ../../rtl/avr/avr.vhd(345)
  or u157 (n195, n192, n194);  // ../../rtl/avr/avr.vhd(344)
  buf u158 (RTC_DO[1], rtcr_do[1]);  // ../../rtl/avr/avr.vhd(444)
  and u159 (n197, kb_data[39], n124);  // ../../rtl/avr/avr.vhd(346)
  AL_MUX u16 (
    .i0(LOADED),
    .i1(1'b1),
    .sel(n10),
    .o(n25));  // ../../rtl/avr/avr.vhd(239)
  or u160 (n198, n195, n197);  // ../../rtl/avr/avr.vhd(345)
  or u161 (n181, n8, n7);  // ../../rtl/avr/avr.vhd(239)
  not u162 (n11, n164);  // ../../rtl/avr/avr.vhd(239)
  xor u163 (n199, ms_flag, newPacket);  // ../../rtl/avr/avr.vhd(362)
  AL_MUX u164 (
    .i0(MS_PRESET),
    .i1(1'b1),
    .sel(n199),
    .o(n206));  // ../../rtl/avr/avr.vhd(375)
  AL_MUX u165 (
    .i0(ms_flag),
    .i1(newPacket),
    .sel(n199),
    .o(n207));  // ../../rtl/avr/avr.vhd(375)
  AL_MUX u166 (
    .i0(MS_EVENT),
    .i1(newPacket),
    .sel(n199),
    .o(n208));  // ../../rtl/avr/avr.vhd(375)
  not u167 (n31, n187);  // ../../rtl/avr/avr.vhd(250)
  or u168 (n164, n178, n167);  // ../../rtl/avr/avr.vhd(239)
  not u169 (n224[1], n223);  // ../../rtl/avr/avr.vhd(536)
  AL_MUX u17 (
    .i0(OSD_POPUP),
    .i1(spi_do[7]),
    .sel(n10),
    .o(n27));  // ../../rtl/avr/avr.vhd(239)
  or u170 (n237, n45, n44);  // ../../rtl/avr/avr.vhd(286)
  buf u171 (MS_X[0], cursorX[0]);  // ../../rtl/avr/avr.vhd(395)
  buf u172 (MS_Y[0], cursorY[0]);  // ../../rtl/avr/avr.vhd(396)
  buf u173 (MS_Z[0], deltaZ[0]);  // ../../rtl/avr/avr.vhd(397)
  not u174 (n215, N_RESET);  // ../../rtl/avr/avr.vhd(460)
  not u175 (KB[5], kb_data[40]);  // ../../rtl/avr/avr.vhd(348)
  not u176 (KB[4], n198);  // ../../rtl/avr/avr.vhd(348)
  not u177 (n218, RTC_WR_N);  // ../../rtl/avr/avr.vhd(528)
  and u178 (n219, avr_ready, n218);  // ../../rtl/avr/avr.vhd(528)
  and u179 (n220, n219, RTC_CS);  // ../../rtl/avr/avr.vhd(528)
  or u18 (n184, n10, n9);  // ../../rtl/avr/avr.vhd(239)
  not u180 (n221, queue_wr_full);  // ../../rtl/avr/avr.vhd(531)
  not u181 (n222, queue_wr_size[8]);  // ../../rtl/avr/avr.vhd(531)
  and u182 (n223, n221, n222);  // ../../rtl/avr/avr.vhd(531)
  or u183 (n167, n176, n170);  // ../../rtl/avr/avr.vhd(239)
  not u184 (KB[3], n175);  // ../../rtl/avr/avr.vhd(348)
  or u185 (n187, n30, n190);  // ../../rtl/avr/avr.vhd(250)
  or u186 (n170, n4, n173);  // ../../rtl/avr/avr.vhd(239)
  or u187 (n173, n3, n2);  // ../../rtl/avr/avr.vhd(239)
  not u188 (KB[2], n156);  // ../../rtl/avr/avr.vhd(348)
  not u189 (KB[1], n141);  // ../../rtl/avr/avr.vhd(348)
  AL_MUX u19 (
    .i0(newPacket),
    .i1(spi_do[7]),
    .sel(n30),
    .o(n36));  // ../../rtl/avr/avr.vhd(250)
  not u190 (KB[0], n126);  // ../../rtl/avr/avr.vhd(348)
  buf u191 (RTC_DO[0], rtcr_do[0]);  // ../../rtl/avr/avr.vhd(444)
  or u20 (n190, n29, n28);  // ../../rtl/avr/avr.vhd(250)
  AL_MUX u21 (
    .i0(RESET),
    .i1(n14),
    .sel(n37),
    .o(n49));  // ../../rtl/avr/avr.vhd(286)
  AL_MUX u22 (
    .i0(MAGICK),
    .i1(n16),
    .sel(n37),
    .o(n51));  // ../../rtl/avr/avr.vhd(286)
  AL_MUX u23 (
    .i0(is_up),
    .i1(n17),
    .sel(n37),
    .o(n52));  // ../../rtl/avr/avr.vhd(286)
  AL_MUX u24 (
    .i0(WAIT_CPU),
    .i1(n18),
    .sel(n37),
    .o(n53));  // ../../rtl/avr/avr.vhd(286)
  AL_MUX u25 (
    .i0(KB_MODE),
    .i1(n22),
    .sel(n37),
    .o(n57));  // ../../rtl/avr/avr.vhd(286)
  AL_MUX u26 (
    .i0(JOY_TYPE),
    .i1(n23),
    .sel(n37),
    .o(n58));  // ../../rtl/avr/avr.vhd(286)
  AL_MUX u27 (
    .i0(OSD_OVERLAY),
    .i1(n24),
    .sel(n37),
    .o(n59));  // ../../rtl/avr/avr.vhd(286)
  AL_MUX u28 (
    .i0(LOADED),
    .i1(n25),
    .sel(n37),
    .o(n60));  // ../../rtl/avr/avr.vhd(286)
  AL_MUX u29 (
    .i0(OSD_POPUP),
    .i1(n27),
    .sel(n37),
    .o(n62));  // ../../rtl/avr/avr.vhd(286)
  not u3 (n0, queue_rd_empty);  // ../../rtl/avr/avr.vhd(176)
  AL_MUX u30 (
    .i0(newPacket),
    .i1(n36),
    .sel(n38),
    .o(n67));  // ../../rtl/avr/avr.vhd(286)
  or u31 (n73, n44, n45);  // ../../rtl/avr/avr.vhd(286)
  AL_MUX u32 (
    .i0(avr_ready),
    .i1(1'b1),
    .sel(n73),
    .o(n74));  // ../../rtl/avr/avr.vhd(286)
  AL_MUX u33 (
    .i0(fpga_init_req),
    .i1(n44),
    .sel(spi_do_valid),
    .o(n75));  // ../../rtl/avr/avr.vhd(287)
  AL_MUX u34 (
    .i0(tx_build),
    .i1(n42),
    .sel(spi_do_valid),
    .o(n76));  // ../../rtl/avr/avr.vhd(287)
  AL_MUX u35 (
    .i0(RESET),
    .i1(n49),
    .sel(spi_do_valid),
    .o(n79));  // ../../rtl/avr/avr.vhd(287)
  AL_MUX u36 (
    .i0(MAGICK),
    .i1(n51),
    .sel(spi_do_valid),
    .o(n81));  // ../../rtl/avr/avr.vhd(287)
  AL_MUX u37 (
    .i0(is_up),
    .i1(n52),
    .sel(spi_do_valid),
    .o(n82));  // ../../rtl/avr/avr.vhd(287)
  AL_MUX u38 (
    .i0(WAIT_CPU),
    .i1(n53),
    .sel(spi_do_valid),
    .o(n83));  // ../../rtl/avr/avr.vhd(287)
  AL_MUX u39 (
    .i0(KB_MODE),
    .i1(n57),
    .sel(spi_do_valid),
    .o(n87));  // ../../rtl/avr/avr.vhd(287)
  or u4 (n176, n6, n5);  // ../../rtl/avr/avr.vhd(239)
  AL_MUX u40 (
    .i0(JOY_TYPE),
    .i1(n58),
    .sel(spi_do_valid),
    .o(n88));  // ../../rtl/avr/avr.vhd(287)
  AL_MUX u41 (
    .i0(OSD_OVERLAY),
    .i1(n59),
    .sel(spi_do_valid),
    .o(n89));  // ../../rtl/avr/avr.vhd(287)
  AL_MUX u42 (
    .i0(LOADED),
    .i1(n60),
    .sel(spi_do_valid),
    .o(n90));  // ../../rtl/avr/avr.vhd(287)
  AL_MUX u43 (
    .i0(OSD_POPUP),
    .i1(n62),
    .sel(spi_do_valid),
    .o(n92));  // ../../rtl/avr/avr.vhd(287)
  AL_MUX u44 (
    .i0(newPacket),
    .i1(n67),
    .sel(spi_do_valid),
    .o(n97));  // ../../rtl/avr/avr.vhd(287)
  AL_MUX u45 (
    .i0(avr_ready),
    .i1(n74),
    .sel(spi_do_valid),
    .o(n103));  // ../../rtl/avr/avr.vhd(287)
  not u46 (n104, A[8]);  // ../../rtl/avr/avr.vhd(303)
  and u47 (n105, kb_data[0], n104);  // ../../rtl/avr/avr.vhd(303)
  not u48 (n106, A[9]);  // ../../rtl/avr/avr.vhd(304)
  and u49 (n107, kb_data[1], n106);  // ../../rtl/avr/avr.vhd(304)
  buf u5 (queue_rd_req, spi_di_req);  // ../../rtl/avr/avr.vhd(189)
  or u50 (n108, n105, n107);  // ../../rtl/avr/avr.vhd(303)
  not u51 (n109, A[10]);  // ../../rtl/avr/avr.vhd(305)
  and u52 (n110, kb_data[2], n109);  // ../../rtl/avr/avr.vhd(305)
  or u53 (n111, n108, n110);  // ../../rtl/avr/avr.vhd(304)
  not u54 (n112, A[11]);  // ../../rtl/avr/avr.vhd(306)
  and u55 (n113, kb_data[3], n112);  // ../../rtl/avr/avr.vhd(306)
  or u56 (n114, n111, n113);  // ../../rtl/avr/avr.vhd(305)
  not u57 (n115, A[12]);  // ../../rtl/avr/avr.vhd(307)
  and u58 (n116, kb_data[4], n115);  // ../../rtl/avr/avr.vhd(307)
  or u59 (n117, n114, n116);  // ../../rtl/avr/avr.vhd(306)
  not u6 (n1, AVR_SS);  // ../../rtl/avr/avr.vhd(190)
  not u60 (n118, A[13]);  // ../../rtl/avr/avr.vhd(308)
  and u61 (n119, kb_data[5], n118);  // ../../rtl/avr/avr.vhd(308)
  or u62 (n120, n117, n119);  // ../../rtl/avr/avr.vhd(307)
  not u63 (n121, A[14]);  // ../../rtl/avr/avr.vhd(309)
  and u64 (n122, kb_data[6], n121);  // ../../rtl/avr/avr.vhd(309)
  or u65 (n123, n120, n122);  // ../../rtl/avr/avr.vhd(308)
  not u66 (n124, A[15]);  // ../../rtl/avr/avr.vhd(310)
  and u67 (n125, kb_data[7], n124);  // ../../rtl/avr/avr.vhd(310)
  or u68 (n126, n123, n125);  // ../../rtl/avr/avr.vhd(309)
  not u69 (n46, n193);  // ../../rtl/avr/avr.vhd(286)
  bufif1 u7 (AVR_MISO, spi_miso, n1);  // ../../rtl/avr/avr.vhd(190)
  and u70 (n127, kb_data[8], n104);  // ../../rtl/avr/avr.vhd(312)
  or u71 (n193, n235, n196);  // ../../rtl/avr/avr.vhd(286)
  and u72 (n128, kb_data[9], n106);  // ../../rtl/avr/avr.vhd(313)
  or u73 (n129, n127, n128);  // ../../rtl/avr/avr.vhd(312)
  or u74 (n196, n234, n214);  // ../../rtl/avr/avr.vhd(286)
  and u75 (n130, kb_data[10], n109);  // ../../rtl/avr/avr.vhd(314)
  or u76 (n131, n129, n130);  // ../../rtl/avr/avr.vhd(313)
  or u77 (n214, n39, n213);  // ../../rtl/avr/avr.vhd(286)
  and u78 (n132, kb_data[11], n112);  // ../../rtl/avr/avr.vhd(315)
  or u79 (n133, n131, n132);  // ../../rtl/avr/avr.vhd(314)
  or u8 (n178, n184, n181);  // ../../rtl/avr/avr.vhd(239)
  or u80 (n213, n38, n37);  // ../../rtl/avr/avr.vhd(286)
  and u81 (n134, kb_data[12], n115);  // ../../rtl/avr/avr.vhd(316)
  or u82 (n135, n133, n134);  // ../../rtl/avr/avr.vhd(315)
  or u83 (n234, n41, n40);  // ../../rtl/avr/avr.vhd(286)
  and u84 (n136, kb_data[13], n118);  // ../../rtl/avr/avr.vhd(317)
  or u85 (n137, n135, n136);  // ../../rtl/avr/avr.vhd(316)
  or u86 (n235, n237, n236);  // ../../rtl/avr/avr.vhd(286)
  and u87 (n138, kb_data[14], n121);  // ../../rtl/avr/avr.vhd(318)
  or u88 (n139, n137, n138);  // ../../rtl/avr/avr.vhd(317)
  or u89 (n236, n43, n42);  // ../../rtl/avr/avr.vhd(286)
  AL_MUX u9 (
    .i0(RESET),
    .i1(spi_do[1]),
    .sel(n7),
    .o(n14));  // ../../rtl/avr/avr.vhd(239)
  and u90 (n140, kb_data[15], n124);  // ../../rtl/avr/avr.vhd(319)
  or u91 (n141, n139, n140);  // ../../rtl/avr/avr.vhd(318)
  buf u92 (MS_X[7], cursorX[7]);  // ../../rtl/avr/avr.vhd(395)
  and u93 (n142, kb_data[16], n104);  // ../../rtl/avr/avr.vhd(321)
  buf u94 (MS_X[6], cursorX[6]);  // ../../rtl/avr/avr.vhd(395)
  and u95 (n143, kb_data[17], n106);  // ../../rtl/avr/avr.vhd(322)
  or u96 (n144, n142, n143);  // ../../rtl/avr/avr.vhd(321)
  buf u97 (MS_X[5], cursorX[5]);  // ../../rtl/avr/avr.vhd(395)
  and u98 (n145, kb_data[18], n109);  // ../../rtl/avr/avr.vhd(323)
  or u99 (n146, n144, n145);  // ../../rtl/avr/avr.vhd(322)

endmodule 

module tda1543  // ../../rtl/dac/tda1543.vhd(42)
  (
  CLK_BUS,
  CS,
  DAC_TYPE,
  DATA_L,
  DATA_R,
  RESET,
  BCK,
  DATA,
  WS
  );

  input CLK_BUS;  // ../../rtl/dac/tda1543.vhd(46)
  input CS;  // ../../rtl/dac/tda1543.vhd(47)
  input DAC_TYPE;  // ../../rtl/dac/tda1543.vhd(45)
  input [15:0] DATA_L;  // ../../rtl/dac/tda1543.vhd(48)
  input [15:0] DATA_R;  // ../../rtl/dac/tda1543.vhd(49)
  input RESET;  // ../../rtl/dac/tda1543.vhd(44)
  output BCK;  // ../../rtl/dac/tda1543.vhd(50)
  output DATA;  // ../../rtl/dac/tda1543.vhd(52)
  output WS;  // ../../rtl/dac/tda1543.vhd(51)

  wire [5:0] cnt;  // ../../rtl/dac/tda1543.vhd(59)
  wire [1:0] cnt_clk;  // ../../rtl/dac/tda1543.vhd(60)
  wire [5:0] n10;
  wire [1:0] n2;
  wire [47:0] n21;
  wire [47:0] n22;
  wire [47:0] n23;
  wire [47:0] n24;
  wire [5:0] n5;
  wire [5:0] n6;
  wire [5:0] n8;
  wire [5:0] n9;
  wire [47:0] shift_reg;  // ../../rtl/dac/tda1543.vhd(58)
  wire n0;
  wire n1;
  wire n11;
  wire n12;
  wire n13;
  wire n14;
  wire n15;
  wire n16;
  wire n17;
  wire n18;
  wire n19;
  wire n20;
  wire n25;
  wire n3;
  wire n4;
  wire n7;

  AL_DFF WS_reg (
    .clk(n1),
    .d(n19),
    .reset(n20),
    .set(1'b0),
    .q(WS));  // ../../rtl/dac/tda1543.vhd(119)
  add_pu2_pu2_o2 add0 (
    .i0(cnt_clk),
    .i1(2'b01),
    .o(n2));
  add_pu6_pu6_o6 add1 (
    .i0(cnt),
    .i1(6'b000001),
    .o(n5));
  eq_w2 eq0 (
    .i0(cnt_clk),
    .i1(2'b00),
    .o(n3));
  eq_w6 eq1 (
    .i0(cnt),
    .i1(6'b000000),
    .o(n11));
  eq_w6 eq2 (
    .i0(cnt),
    .i1(6'b010000),
    .o(n12));
  eq_w6 eq3 (
    .i0(cnt),
    .i1(6'b011000),
    .o(n15));
  lt_u6_u6 lt0 (
    .ci(1'b0),
    .i0(cnt),
    .i1(6'b011111),
    .o(n4));
  lt_u6_u6 lt1 (
    .ci(1'b0),
    .i0(cnt),
    .i1(6'b101111),
    .o(n7));
  binary_mux_s1_w6 mux0 (
    .i0(6'b000000),
    .i1(n5),
    .sel(n4),
    .o(n6));  // ../../rtl/dac/tda1543.vhd(86)
  binary_mux_s1_w6 mux1 (
    .i0(6'b000000),
    .i1(n5),
    .sel(n7),
    .o(n8));  // ../../rtl/dac/tda1543.vhd(92)
  binary_mux_s1_w6 mux2 (
    .i0(n6),
    .i1(n8),
    .sel(DAC_TYPE),
    .o(n9));  // ../../rtl/dac/tda1543.vhd(94)
  binary_mux_s1_w6 mux3 (
    .i0(cnt),
    .i1(n9),
    .sel(n3),
    .o(n10));  // ../../rtl/dac/tda1543.vhd(95)
  binary_mux_s1_w96 mux4 (
    .i0({shift_reg[46:0],1'b0,shift_reg[46:0],1'b0}),
    .i1({DATA_R[0],DATA_L,DATA_R[15:1],shift_reg[15:0],DATA_L[15:8],DATA_L,DATA_R[15:8],DATA_R}),
    .sel(n11),
    .o({n21,n22}));  // ../../rtl/dac/tda1543.vhd(134)
  binary_mux_s1_w48 mux5 (
    .i0(n21),
    .i1(n22),
    .sel(DAC_TYPE),
    .o(n23));  // ../../rtl/dac/tda1543.vhd(142)
  binary_mux_s1_w48 mux6 (
    .i0(shift_reg),
    .i1(n23),
    .sel(n3),
    .o(n24));  // ../../rtl/dac/tda1543.vhd(143)
  reg_ar_as_w6 reg0 (
    .clk(n1),
    .d(n10),
    .reset({n20,n20,n20,n20,n20,n20}),
    .set(6'b000000),
    .q(cnt));  // ../../rtl/dac/tda1543.vhd(95)
  reg_ar_as_w48 reg1 (
    .clk(n1),
    .d(n24),
    .reset({n20,n20,n20,n20,n20,n20,n20,n20,n20,n20,n20,n20,n20,n20,n20,n20,n20,n20,n20,n20,n20,n20,n20,n20,n20,n20,n20,n20,n20,n20,n20,n20,n20,n20,n20,n20,n20,n20,n20,n20,n20,n20,n20,n20,n20,n20,n20,n20}),
    .set(48'b000000000000000000000000000000000000000000000000),
    .q(shift_reg));  // ../../rtl/dac/tda1543.vhd(143)
  reg_ar_as_w2 reg2 (
    .clk(n1),
    .d(n2),
    .reset({n20,n20}),
    .set(2'b00),
    .q(cnt_clk));  // ../../rtl/dac/tda1543.vhd(71)
  AL_MUX u10 (
    .i0(WS),
    .i1(n18),
    .sel(n3),
    .o(n19));  // ../../rtl/dac/tda1543.vhd(119)
  buf u11 (DATA, shift_reg[47]);  // ../../rtl/dac/tda1543.vhd(146)
  and u12 (n25, cnt_clk[1], CS);  // ../../rtl/dac/tda1543.vhd(147)
  not u13 (BCK, n25);  // ../../rtl/dac/tda1543.vhd(147)
  not u2 (n0, CS);  // ../../rtl/dac/tda1543.vhd(67)
  or u3 (n20, RESET, n0);  // ../../rtl/dac/tda1543.vhd(67)
  not u4 (n1, CLK_BUS);
  AL_MUX u5 (
    .i0(WS),
    .i1(1'b1),
    .sel(n12),
    .o(n13));  // ../../rtl/dac/tda1543.vhd(110)
  AL_MUX u6 (
    .i0(n13),
    .i1(1'b0),
    .sel(n11),
    .o(n14));  // ../../rtl/dac/tda1543.vhd(110)
  AL_MUX u7 (
    .i0(WS),
    .i1(1'b0),
    .sel(n15),
    .o(n16));  // ../../rtl/dac/tda1543.vhd(116)
  AL_MUX u8 (
    .i0(n16),
    .i1(1'b1),
    .sel(n11),
    .o(n17));  // ../../rtl/dac/tda1543.vhd(116)
  AL_MUX u9 (
    .i0(n14),
    .i1(n17),
    .sel(DAC_TYPE),
    .o(n18));  // ../../rtl/dac/tda1543.vhd(118)

endmodule 

module bus_port  // ../../rtl/storage/bus_port.vhd(6)
  (
  BUS_A,
  BUS_CS3FX,
  BUS_CSFF,
  BUS_DI,
  BUS_FDC_NCS,
  BUS_FDC_STEP,
  BUS_HDD_CS_N,
  BUS_RD_N,
  BUS_RWE,
  BUS_RWW,
  BUS_WR_N,
  BUS_WWC,
  BUS_WWE,
  CLK,
  CLK2,
  CLK_BUS,
  CLK_CPU,
  RESET,
  BUS_DO,
  CPLD_CLK,
  CPLD_CLK2,
  NRESET,
  SA,
  SD
  );

  input [4:0] BUS_A;  // ../../rtl/storage/bus_port.vhd(25)
  input BUS_CS3FX;  // ../../rtl/storage/bus_port.vhd(35)
  input BUS_CSFF;  // ../../rtl/storage/bus_port.vhd(37)
  input [7:0] BUS_DI;  // ../../rtl/storage/bus_port.vhd(26)
  input BUS_FDC_NCS;  // ../../rtl/storage/bus_port.vhd(38)
  input BUS_FDC_STEP;  // ../../rtl/storage/bus_port.vhd(36)
  input BUS_HDD_CS_N;  // ../../rtl/storage/bus_port.vhd(30)
  input BUS_RD_N;  // ../../rtl/storage/bus_port.vhd(28)
  input BUS_RWE;  // ../../rtl/storage/bus_port.vhd(34)
  input BUS_RWW;  // ../../rtl/storage/bus_port.vhd(33)
  input BUS_WR_N;  // ../../rtl/storage/bus_port.vhd(29)
  input BUS_WWC;  // ../../rtl/storage/bus_port.vhd(31)
  input BUS_WWE;  // ../../rtl/storage/bus_port.vhd(32)
  input CLK;  // ../../rtl/storage/bus_port.vhd(10)
  input CLK2;  // ../../rtl/storage/bus_port.vhd(11)
  input CLK_BUS;  // ../../rtl/storage/bus_port.vhd(12)
  input CLK_CPU;  // ../../rtl/storage/bus_port.vhd(13)
  input RESET;  // ../../rtl/storage/bus_port.vhd(14)
  output [7:0] BUS_DO;  // ../../rtl/storage/bus_port.vhd(27)
  output CPLD_CLK;  // ../../rtl/storage/bus_port.vhd(20)
  output CPLD_CLK2;  // ../../rtl/storage/bus_port.vhd(21)
  output NRESET;  // ../../rtl/storage/bus_port.vhd(22)
  output [1:0] SA;  // ../../rtl/storage/bus_port.vhd(18)
  inout [15:0] SD;  // ../../rtl/storage/bus_port.vhd(17)

  wire [15:0] bus_a_reg;  // ../../rtl/storage/bus_port.vhd(45)
  wire [7:0] bus_d_reg;  // ../../rtl/storage/bus_port.vhd(46)
  wire [1:0] cnt;  // ../../rtl/storage/bus_port.vhd(43)
  wire [15:0] n1;
  wire [7:0] n2;
  wire [1:0] n4;
  wire [1:0] n5;
  wire [7:0] n8;
  wire [7:0] n9;
  wire n0;
  wire n3;
  wire n6;
  wire n7;

  add_pu2_pu2_o2 add0 (
    .i0(cnt),
    .i1(2'b01),
    .o(n4));
  eq_w2 eq0 (
    .i0(cnt),
    .i1(2'b10),
    .o(n0));
  eq_w2 eq1 (
    .i0(cnt),
    .i1(2'b00),
    .o(n6));
  eq_w2 eq2 (
    .i0(cnt),
    .i1(2'b01),
    .o(n7));
  lt_u2_u2 lt0 (
    .ci(1'b0),
    .i0(cnt),
    .i1(2'b10),
    .o(n3));
  binary_mux_s1_w16 mux0 (
    .i0(bus_a_reg),
    .i1({BUS_HDD_CS_N,BUS_FDC_NCS,BUS_CSFF,BUS_CS3FX,BUS_RWE,BUS_RWW,BUS_WWE,BUS_WWC,BUS_FDC_STEP,BUS_RD_N,BUS_WR_N,BUS_A}),
    .sel(n0),
    .o(n1));  // ../../rtl/storage/bus_port.vhd(62)
  binary_mux_s1_w8 mux1 (
    .i0(bus_d_reg),
    .i1(BUS_DI),
    .sel(n0),
    .o(n2));  // ../../rtl/storage/bus_port.vhd(62)
  binary_mux_s1_w2 mux2 (
    .i0(2'b00),
    .i1(n4),
    .sel(n3),
    .o(n5));  // ../../rtl/storage/bus_port.vhd(75)
  binary_mux_s1_w8 mux3 (
    .i0(8'b11111111),
    .i1(bus_d_reg),
    .sel(n0),
    .o(n8));  // ../../rtl/storage/bus_port.vhd(82)
  binary_mux_s1_w8 mux4 (
    .i0(n8),
    .i1(bus_a_reg[7:0]),
    .sel(n7),
    .o(n9));  // ../../rtl/storage/bus_port.vhd(81)
  binary_mux_s1_w8 mux5 (
    .i0(n9),
    .i1(bus_a_reg[15:8]),
    .sel(n6),
    .o(SD[7:0]));  // ../../rtl/storage/bus_port.vhd(83)
  reg_ar_as_w8 reg0 (
    .clk(CLK),
    .d(n2),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(bus_d_reg));  // ../../rtl/storage/bus_port.vhd(63)
  reg_ar_as_w16 reg1 (
    .clk(CLK),
    .d(n1),
    .reset(16'b0000000000000000),
    .set(16'b0000000000000000),
    .q(bus_a_reg));  // ../../rtl/storage/bus_port.vhd(63)
  reg_ar_as_w2 reg2 (
    .clk(CLK),
    .d(n5),
    .reset(2'b00),
    .set({RESET,RESET}),
    .q(cnt));  // ../../rtl/storage/bus_port.vhd(76)
  buf u10 (BUS_DO[0], SD[8]);  // ../../rtl/storage/bus_port.vhd(54)
  buf u11 (BUS_DO[5], SD[13]);  // ../../rtl/storage/bus_port.vhd(54)
  buf u12 (BUS_DO[6], SD[14]);  // ../../rtl/storage/bus_port.vhd(54)
  buf u13 (BUS_DO[7], SD[15]);  // ../../rtl/storage/bus_port.vhd(54)
  buf u14 (SA[1], cnt[1]);  // ../../rtl/storage/bus_port.vhd(53)
  buf u2 (BUS_DO[3], SD[11]);  // ../../rtl/storage/bus_port.vhd(54)
  buf u3 (BUS_DO[2], SD[10]);  // ../../rtl/storage/bus_port.vhd(54)
  buf u4 (CPLD_CLK, CLK);  // ../../rtl/storage/bus_port.vhd(50)
  buf u5 (CPLD_CLK2, CLK2);  // ../../rtl/storage/bus_port.vhd(51)
  not u6 (NRESET, RESET);  // ../../rtl/storage/bus_port.vhd(52)
  buf u7 (SA[0], cnt[0]);  // ../../rtl/storage/bus_port.vhd(53)
  buf u8 (BUS_DO[1], SD[9]);  // ../../rtl/storage/bus_port.vhd(54)
  buf u9 (BUS_DO[4], SD[12]);  // ../../rtl/storage/bus_port.vhd(54)

endmodule 

module altpll1  // al_ip/altpll1.vhd(32)
  (
  refclk,
  reset,
  clk0_out,
  clk1_out,
  clk2_out,
  clk3_out,
  clk4_out,
  extlock
  );

  input refclk;  // al_ip/altpll1.vhd(33)
  input reset;  // al_ip/altpll1.vhd(34)
  output clk0_out;  // al_ip/altpll1.vhd(36)
  output clk1_out;  // al_ip/altpll1.vhd(37)
  output clk2_out;  // al_ip/altpll1.vhd(38)
  output clk3_out;  // al_ip/altpll1.vhd(39)
  output clk4_out;  // al_ip/altpll1.vhd(40)
  output extlock;  // al_ip/altpll1.vhd(35)

  wire [4:0] clkc_wire;  // al_ip/altpll1.vhd(46)
  wire clk0_buf;  // al_ip/altpll1.vhd(44)
  wire fbk_wire;  // al_ip/altpll1.vhd(45)

  AL_LOGIC_BUFG bufg_feedback (
    .i(clk0_buf),
    .o(fbk_wire));  // al_ip/altpll1.vhd(48)
  AL_PHY_PLL #(
    .CLKC0_CPHASE(11),
    .CLKC0_DIV(12),
    .CLKC0_ENABLE("ENABLE"),
    .CLKC0_FPHASE("0"),
    .CLKC1_CPHASE(13),
    .CLKC1_DIV(14),
    .CLKC1_ENABLE("ENABLE"),
    .CLKC1_FPHASE("0"),
    .CLKC2_CPHASE(35),
    .CLKC2_DIV(36),
    .CLKC2_ENABLE("ENABLE"),
    .CLKC2_FPHASE("0"),
    .CLKC3_CPHASE(41),
    .CLKC3_DIV(42),
    .CLKC3_ENABLE("ENABLE"),
    .CLKC3_FPHASE("0"),
    .CLKC4_CPHASE(125),
    .CLKC4_DIV(126),
    .CLKC4_ENABLE("ENABLE"),
    .CLKC4_FPHASE("0"),
    .DERIVE_PLL_CLOCKS("DISABLE"),
    .DPHASE_SOURCE("DISABLE"),
    .FBCLK_DIV(3),
    .FEEDBK_MODE("NORMAL"),
    .FEEDBK_PATH("CLKC0_EXT"),
    .FIN("112.000"),
    .FREQ_LOCK_ACCURACY("2"),
    .GEN_BASIC_CLOCK("DISABLE"),
    .GMC_GAIN("2"),
    .GMC_TEST("14"),
    .ICP_CURRENT(9),
    .INTFB_WAKE("DISABLE"),
    .INT_FEEDBK_PATH("VCO_PHASE_0"),
    .KVCO("2"),
    .LPF_CAPACITOR("1"),
    .LPF_RESISTOR(8),
    .NORESET("DISABLE"),
    .ODIV_MUXC0("DIV"),
    .ODIV_MUXC1("DIV"),
    .ODIV_MUXC2("DIV"),
    .ODIV_MUXC3("DIV"),
    .ODIV_MUXC4("DIV"),
    .PLLC2RST_ENA("DISABLE"),
    .PLLC34RST_ENA("DISABLE"),
    .PLLMRST_ENA("DISABLE"),
    .PLLRST_ENA("ENABLE"),
    .PLL_LOCK_MODE("0"),
    .PREDIV_MUXC0("VCO"),
    .PREDIV_MUXC1("VCO"),
    .PREDIV_MUXC2("VCO"),
    .PREDIV_MUXC3("VCO"),
    .PREDIV_MUXC4("VCO"),
    .REFCLK_DIV(4),
    .REFCLK_SEL("INTERNAL"),
    .STDBY_ENABLE("DISABLE"),
    .STDBY_VCO_ENA("DISABLE"),
    .SYNC_ENABLE("DISABLE"),
    .VCO_NORESET("DISABLE"))
    pll_inst (
    .fbclk(fbk_wire),
    .phasestep(1'b0),
    .phaseupdown(1'b0),
    .phcntsel(3'b000),
    .pllreset(reset),
    .refclk(refclk),
    .scanclk(1'b0),
    .stdby(1'b0),
    .clkc(clkc_wire),
    .ext_lock(extlock));  // al_ip/altpll1.vhd(51)
  buf u1 (clk4_out, clkc_wire[4]);  // al_ip/altpll1.vhd(98)
  buf u2 (clk3_out, clkc_wire[3]);  // al_ip/altpll1.vhd(99)
  buf u3 (clk2_out, clkc_wire[2]);  // al_ip/altpll1.vhd(100)
  buf u4 (clk1_out, clkc_wire[1]);  // al_ip/altpll1.vhd(101)
  buf u5 (clk0_buf, clkc_wire[0]);  // al_ip/altpll1.vhd(102)
  buf u6 (clk0_out, fbk_wire);  // al_ip/altpll1.vhd(103)

endmodule 

module serial_mouse  // ../../rtl/mouse/serial_mouse.vhd(10)
  (
  A,
  CLK,
  CLKEN,
  CPM,
  DI,
  DOS,
  IORQ_N,
  M1_N,
  MS_BTNS,
  MS_EVENT,
  MS_PRESET,
  MS_X,
  MS_Y,
  N_RESET,
  RD_N,
  ROM14,
  WR_N,
  DO,
  INT_N,
  OE_N
  );

  input [15:0] A;  // ../../rtl/mouse/serial_mouse.vhd(16)
  input CLK;  // ../../rtl/mouse/serial_mouse.vhd(12)
  input CLKEN;  // ../../rtl/mouse/serial_mouse.vhd(13)
  input CPM;  // ../../rtl/mouse/serial_mouse.vhd(22)
  input [7:0] DI;  // ../../rtl/mouse/serial_mouse.vhd(17)
  input DOS;  // ../../rtl/mouse/serial_mouse.vhd(23)
  input IORQ_N;  // ../../rtl/mouse/serial_mouse.vhd(20)
  input M1_N;  // ../../rtl/mouse/serial_mouse.vhd(21)
  input [2:0] MS_BTNS;  // ../../rtl/mouse/serial_mouse.vhd(28)
  input MS_EVENT;  // ../../rtl/mouse/serial_mouse.vhd(30)
  input MS_PRESET;  // ../../rtl/mouse/serial_mouse.vhd(29)
  input [7:0] MS_X;  // ../../rtl/mouse/serial_mouse.vhd(26)
  input [7:0] MS_Y;  // ../../rtl/mouse/serial_mouse.vhd(27)
  input N_RESET;  // ../../rtl/mouse/serial_mouse.vhd(14)
  input RD_N;  // ../../rtl/mouse/serial_mouse.vhd(19)
  input ROM14;  // ../../rtl/mouse/serial_mouse.vhd(24)
  input WR_N;  // ../../rtl/mouse/serial_mouse.vhd(18)
  output [7:0] DO;  // ../../rtl/mouse/serial_mouse.vhd(32)
  output INT_N;  // ../../rtl/mouse/serial_mouse.vhd(33)
  output OE_N;  // ../../rtl/mouse/serial_mouse.vhd(34)

  wire [1:0] cnt_byte;  // ../../rtl/mouse/serial_mouse.vhd(89)
  wire [2:0] cnt_wait;  // ../../rtl/mouse/serial_mouse.vhd(88)
  wire [7:0] ctl_reg;  // ../../rtl/mouse/serial_mouse.vhd(82)
  wire [7:0] do_reg;  // ../../rtl/mouse/serial_mouse.vhd(81)
  wire [7:0] hw_int_do;  // ../../rtl/mouse/serial_mouse.vhd(108)
  wire [17:0] ms_buf;  // ../../rtl/mouse/serial_mouse.vhd(105)
  wire [7:0] n18;
  wire [17:0] n25;
  wire [3:0] n26;
  wire [2:0] n29;
  wire [2:0] n31;
  wire [3:0] n32;
  wire [1:0] n33;
  wire [3:0] n35;
  wire [17:0] n36;
  wire [2:0] n38;
  wire [1:0] n41;
  wire [3:0] n43;
  wire [17:0] n44;
  wire [2:0] n45;
  wire [17:0] n48;
  wire [2:0] n49;
  wire [7:0] n53;
  wire [7:0] n54;
  wire [7:0] n59;
  wire [7:0] n60;
  wire [3:0] state;  // ../../rtl/mouse/serial_mouse.vhd(101)
  wire [7:0] status_reg;  // ../../rtl/mouse/serial_mouse.vhd(83)
  wire hw_int_n;  // ../../rtl/mouse/serial_mouse.vhd(107)
  wire hw_int_oe_n;  // ../../rtl/mouse/serial_mouse.vhd(109)
  wire n0;
  wire n1;
  wire n10;
  wire n11;
  wire n12;
  wire n13;
  wire n14;
  wire n15;
  wire n16;
  wire n17;
  wire n19;
  wire n2;
  wire n20;
  wire n21;
  wire n22;
  wire n23;
  wire n24;
  wire n27;
  wire n28;
  wire n3;
  wire n30;
  wire n34;
  wire n37;
  wire n39;
  wire n4;
  wire n40;
  wire n42;
  wire n46;
  wire n47;
  wire n5;
  wire n50;
  wire n51;
  wire n52;
  wire n55;
  wire n56;
  wire n57;
  wire n58;
  wire n6;
  wire n7;
  wire n8;
  wire n9;
  wire new_data;  // ../../rtl/mouse/serial_mouse.vhd(104)
  wire p4;  // ../../rtl/mouse/serial_mouse.vhd(91)
  wire prev_event;  // ../../rtl/mouse/serial_mouse.vhd(103)
  wire rxrdt;  // ../../rtl/mouse/serial_mouse.vhd(85)
  wire vv51_cs;  // ../../rtl/mouse/serial_mouse.vhd(92)
  wire vv51_read;  // ../../rtl/mouse/serial_mouse.vhd(95)
  wire vv51_read_after;  // ../../rtl/mouse/serial_mouse.vhd(96)

  hw_int U_INT (
    .A(A),
    .CLK(CLK),
    .CPM(CPM),
    .DI(DI),
    .DOS(DOS),
    .IORQ_N(IORQ_N),
    .M1_N(M1_N),
    .N_RESET(N_RESET),
    .RD_N(RD_N),
    .ROM14(ROM14),
    .RXRDT(rxrdt),
    .TXRDT(1'b0),
    .WR_N(WR_N),
    .DO(hw_int_do),
    .INT_N(hw_int_n),
    .OE_N(hw_int_oe_n));  // ../../rtl/mouse/serial_mouse.vhd(291)
  add_pu3_pu3_o3 add0 (
    .i0(cnt_wait),
    .i1(3'b001),
    .o(n29));
  eq_w5 eq0 (
    .i0(5'b10011),
    .i1(A[4:0]),
    .o(n0));  // ../../rtl/mouse/serial_mouse.vhd(126)
  eq_w2 eq1 (
    .i0(cnt_byte),
    .i1(2'b00),
    .o(n50));  // ../../rtl/mouse/serial_mouse.vhd(275)
  eq_w2 eq2 (
    .i0(cnt_byte),
    .i1(2'b01),
    .o(n51));  // ../../rtl/mouse/serial_mouse.vhd(276)
  eq_w2 eq3 (
    .i0(cnt_byte),
    .i1(2'b10),
    .o(n52));  // ../../rtl/mouse/serial_mouse.vhd(277)
  lt_u3_u3 lt0 (
    .ci(1'b0),
    .i0(cnt_wait),
    .i1(3'b111),
    .o(n30));  // ../../rtl/mouse/serial_mouse.vhd(207)
  binary_mux_s1_w8 mux0 (
    .i0(ctl_reg),
    .i1(DI),
    .sel(n17),
    .o(n18));  // ../../rtl/mouse/serial_mouse.vhd(144)
  binary_mux_s1_w18 mux1 (
    .i0(ms_buf),
    .i1({MS_BTNS[0],MS_BTNS[1],MS_Y[7:6],MS_X,MS_Y[5:0]}),
    .sel(n24),
    .o(n25));  // ../../rtl/mouse/serial_mouse.vhd(185)
  binary_mux_s1_w4 mux10 (
    .i0(state),
    .i1(n35),
    .sel(ctl_reg[2]),
    .o(n43));  // ../../rtl/mouse/serial_mouse.vhd(270)
  binary_mux_s1_w18 mux11 (
    .i0(ms_buf),
    .i1(n36),
    .sel(ctl_reg[2]),
    .o(n44));  // ../../rtl/mouse/serial_mouse.vhd(270)
  binary_mux_s1_w3 mux12 (
    .i0(cnt_wait),
    .i1(n38),
    .sel(ctl_reg[2]),
    .o(n45));  // ../../rtl/mouse/serial_mouse.vhd(270)
  binary_mux_s1_w18 mux13 (
    .i0(n44),
    .i1(ms_buf),
    .sel(n19),
    .o(n48));  // ../../rtl/mouse/serial_mouse.vhd(271)
  binary_mux_s1_w3 mux14 (
    .i0(n45),
    .i1(cnt_wait),
    .sel(n19),
    .o(n49));  // ../../rtl/mouse/serial_mouse.vhd(271)
  binary_mux_s1_w8 mux15 (
    .i0(8'b00000000),
    .i1({2'b00,ms_buf[5:0]}),
    .sel(n52),
    .o(n53));  // ../../rtl/mouse/serial_mouse.vhd(277)
  binary_mux_s1_w8 mux16 (
    .i0(n53),
    .i1({2'b00,ms_buf[11:6]}),
    .sel(n51),
    .o(n54));  // ../../rtl/mouse/serial_mouse.vhd(276)
  binary_mux_s1_w8 mux17 (
    .i0(n54),
    .i1({2'b01,ms_buf[17:12]}),
    .sel(n50),
    .o(do_reg));  // ../../rtl/mouse/serial_mouse.vhd(278)
  binary_mux_s1_w8 mux18 (
    .i0(8'b11111111),
    .i1({status_reg[3],status_reg[3],status_reg[3],status_reg[3],status_reg[3:1],status_reg[2]}),
    .sel(n58),
    .o(n59));  // ../../rtl/mouse/serial_mouse.vhd(317)
  binary_mux_s1_w8 mux19 (
    .i0(n59),
    .i1(do_reg),
    .sel(n15),
    .o(n60));  // ../../rtl/mouse/serial_mouse.vhd(316)
  binary_mux_s1_w3 mux2 (
    .i0(cnt_wait),
    .i1(n29),
    .sel(n30),
    .o(n31));  // ../../rtl/mouse/serial_mouse.vhd(239)
  binary_mux_s1_w8 mux20 (
    .i0(hw_int_do),
    .i1(n60),
    .sel(hw_int_oe_n),
    .o(DO));  // ../../rtl/mouse/serial_mouse.vhd(318)
  binary_mux_s4_w2 mux3 (
    .i0(2'b00),
    .i1(cnt_byte),
    .i10(cnt_byte),
    .i11(2'bxx),
    .i12(2'bxx),
    .i13(2'bxx),
    .i14(2'bxx),
    .i15(2'bxx),
    .i2(2'b00),
    .i3(cnt_byte),
    .i4(cnt_byte),
    .i5(2'b01),
    .i6(cnt_byte),
    .i7(cnt_byte),
    .i8(2'b10),
    .i9(cnt_byte),
    .sel(state),
    .o(n33));  // ../../rtl/mouse/serial_mouse.vhd(269)
  binary_mux_s4_w1 mux4 (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b0),
    .i11(1'bx),
    .i12(1'bx),
    .i13(1'bx),
    .i14(1'bx),
    .i15(1'bx),
    .i2(1'b0),
    .i3(vv51_read_after),
    .i4(1'b0),
    .i5(1'b0),
    .i6(vv51_read_after),
    .i7(1'b0),
    .i8(1'b0),
    .i9(vv51_read_after),
    .sel(state),
    .o(n34));  // ../../rtl/mouse/serial_mouse.vhd(269)
  binary_mux_s4_w4 mux5 (
    .i0(4'b0001),
    .i1({2'b00,n24,n26[0]}),
    .i10({n30,1'b0,n30,n32[0]}),
    .i11(4'bxxxx),
    .i12(4'bxxxx),
    .i13(4'bxxxx),
    .i14(4'bxxxx),
    .i15(4'bxxxx),
    .i2(4'b0011),
    .i3({1'b0,n28,vv51_read_after,vv51_read_after}),
    .i4({3'b010,n32[0]}),
    .i5(4'b0110),
    .i6({3'b011,n28}),
    .i7({n32[0],n30,n30,n30}),
    .i8(4'b1001),
    .i9({2'b10,n28,vv51_read_after}),
    .sel(state),
    .o(n35));  // ../../rtl/mouse/serial_mouse.vhd(269)
  binary_mux_s4_w18 mux6 (
    .i0(ms_buf),
    .i1(n25),
    .i10(ms_buf),
    .i11(18'bxxxxxxxxxxxxxxxxxx),
    .i12(18'bxxxxxxxxxxxxxxxxxx),
    .i13(18'bxxxxxxxxxxxxxxxxxx),
    .i14(18'bxxxxxxxxxxxxxxxxxx),
    .i15(18'bxxxxxxxxxxxxxxxxxx),
    .i2(ms_buf),
    .i3(ms_buf),
    .i4(ms_buf),
    .i5(ms_buf),
    .i6(ms_buf),
    .i7(ms_buf),
    .i8(ms_buf),
    .i9(ms_buf),
    .sel(state),
    .o(n36));  // ../../rtl/mouse/serial_mouse.vhd(269)
  binary_mux_s4_w1 mux7 (
    .i0(n21),
    .i1(n27),
    .i10(n21),
    .i11(1'bx),
    .i12(1'bx),
    .i13(1'bx),
    .i14(1'bx),
    .i15(1'bx),
    .i2(n21),
    .i3(n21),
    .i4(n21),
    .i5(n21),
    .i6(n21),
    .i7(n21),
    .i8(n21),
    .i9(n21),
    .sel(state),
    .o(n37));  // ../../rtl/mouse/serial_mouse.vhd(269)
  binary_mux_s4_w3 mux8 (
    .i0(cnt_wait),
    .i1(cnt_wait),
    .i10(n31),
    .i11(3'bxxx),
    .i12(3'bxxx),
    .i13(3'bxxx),
    .i14(3'bxxx),
    .i15(3'bxxx),
    .i2(3'b000),
    .i3(cnt_wait),
    .i4(n31),
    .i5(3'b000),
    .i6(cnt_wait),
    .i7(n31),
    .i8(3'b000),
    .i9(cnt_wait),
    .sel(state),
    .o(n38));  // ../../rtl/mouse/serial_mouse.vhd(269)
  binary_mux_s1_w2 mux9 (
    .i0(cnt_byte),
    .i1(n33),
    .sel(ctl_reg[2]),
    .o(n41));  // ../../rtl/mouse/serial_mouse.vhd(270)
  ne_w18 neq0 (
    .i0({MS_BTNS[0],MS_BTNS[1],MS_Y[7:6],MS_X,MS_Y[5:0]}),
    .i1(ms_buf),
    .o(n23));  // ../../rtl/mouse/serial_mouse.vhd(179)
  AL_DFF new_data_reg (
    .clk(CLKEN),
    .d(n39),
    .reset(n19),
    .set(1'b0),
    .q(new_data));  // ../../rtl/mouse/serial_mouse.vhd(271)
  AL_DFF prev_event_reg (
    .clk(CLKEN),
    .d(n47),
    .reset(1'b0),
    .set(1'b0),
    .q(prev_event));  // ../../rtl/mouse/serial_mouse.vhd(271)
  latch_ar_as_w2 reg0 (
    .clk(1'b0),
    .d(2'bxx),
    .reset({n19,1'b0}),
    .set({1'b0,n19}),
    .q(status_reg[3:2]));  // ../../rtl/mouse/serial_mouse.vhd(272)
  reg_ar_as_w4 reg1 (
    .clk(CLKEN),
    .d(n43),
    .reset({n19,n19,n19,n19}),
    .set(4'b0000),
    .q(state));  // ../../rtl/mouse/serial_mouse.vhd(271)
  reg_ar_as_w2 reg2 (
    .clk(CLKEN),
    .d(n41),
    .reset({n19,n19}),
    .set(2'b00),
    .q(cnt_byte));  // ../../rtl/mouse/serial_mouse.vhd(271)
  reg_ar_as_w18 reg3 (
    .clk(CLKEN),
    .d(n48),
    .reset(18'b000000000000000000),
    .set(18'b000000000000000000),
    .q(ms_buf));  // ../../rtl/mouse/serial_mouse.vhd(271)
  reg_ar_as_w3 reg4 (
    .clk(CLKEN),
    .d(n49),
    .reset(3'b000),
    .set(3'b000),
    .q(cnt_wait));  // ../../rtl/mouse/serial_mouse.vhd(271)
  reg_ar_as_w8 reg5 (
    .clk(CLK),
    .d(n18),
    .reset({n19,n19,n19,n19,n19,n19,n19,n19}),
    .set(8'b00000000),
    .q(ctl_reg));  // ../../rtl/mouse/serial_mouse.vhd(145)
  AL_DFF \status_reg_reg[1]  (
    .clk(CLKEN),
    .d(n42),
    .reset(n19),
    .set(1'b0),
    .q(status_reg[1]));  // ../../rtl/mouse/serial_mouse.vhd(271)
  and u10 (n8, n7, n5);  // ../../rtl/mouse/serial_mouse.vhd(126)
  not u11 (p4, n8);  // ../../rtl/mouse/serial_mouse.vhd(126)
  not u12 (n9, A[6]);  // ../../rtl/mouse/serial_mouse.vhd(127)
  or u13 (vv51_cs, n9, p4);  // ../../rtl/mouse/serial_mouse.vhd(127)
  not u14 (n10, vv51_cs);  // ../../rtl/mouse/serial_mouse.vhd(128)
  and u15 (n11, n10, A[5]);  // ../../rtl/mouse/serial_mouse.vhd(128)
  not u16 (n12, A[5]);  // ../../rtl/mouse/serial_mouse.vhd(129)
  and u17 (n13, n10, n12);  // ../../rtl/mouse/serial_mouse.vhd(129)
  not u18 (n14, RD_N);  // ../../rtl/mouse/serial_mouse.vhd(130)
  and u19 (n15, n13, n14);  // ../../rtl/mouse/serial_mouse.vhd(130)
  not u20 (vv51_read, n15);  // ../../rtl/mouse/serial_mouse.vhd(130)
  and u21 (rxrdt, status_reg[1], ctl_reg[2]);  // ../../rtl/mouse/serial_mouse.vhd(132)
  not u22 (n19, N_RESET);  // ../../rtl/mouse/serial_mouse.vhd(138)
  not u23 (n32[0], n30);  // ../../rtl/mouse/serial_mouse.vhd(266)
  not u24 (n16, WR_N);  // ../../rtl/mouse/serial_mouse.vhd(142)
  and u25 (n17, n11, n16);  // ../../rtl/mouse/serial_mouse.vhd(142)
  xor u26 (n20, MS_EVENT, prev_event);  // ../../rtl/mouse/serial_mouse.vhd(163)
  AL_MUX u27 (
    .i0(new_data),
    .i1(1'b1),
    .sel(n20),
    .o(n21));  // ../../rtl/mouse/serial_mouse.vhd(166)
  AL_MUX u28 (
    .i0(prev_event),
    .i1(MS_EVENT),
    .sel(n20),
    .o(n22));  // ../../rtl/mouse/serial_mouse.vhd(166)
  and u29 (n24, new_data, n23);  // ../../rtl/mouse/serial_mouse.vhd(179)
  not u3 (n1, IORQ_N);  // ../../rtl/mouse/serial_mouse.vhd(126)
  AL_MUX u30 (
    .i0(n21),
    .i1(1'b0),
    .sel(n24),
    .o(n27));  // ../../rtl/mouse/serial_mouse.vhd(185)
  not u31 (n28, vv51_read_after);  // ../../rtl/mouse/serial_mouse.vhd(266)
  not u32 (n26[0], n24);  // ../../rtl/mouse/serial_mouse.vhd(266)
  AL_MUX u33 (
    .i0(new_data),
    .i1(n37),
    .sel(ctl_reg[2]),
    .o(n39));  // ../../rtl/mouse/serial_mouse.vhd(270)
  AL_MUX u34 (
    .i0(prev_event),
    .i1(n22),
    .sel(ctl_reg[2]),
    .o(n40));  // ../../rtl/mouse/serial_mouse.vhd(270)
  AL_MUX u35 (
    .i0(status_reg[1]),
    .i1(n34),
    .sel(ctl_reg[2]),
    .o(n42));  // ../../rtl/mouse/serial_mouse.vhd(270)
  AL_MUX u36 (
    .i0(vv51_read),
    .i1(vv51_read_after),
    .sel(n19),
    .o(n46));  // ../../rtl/mouse/serial_mouse.vhd(271)
  AL_MUX u37 (
    .i0(n40),
    .i1(prev_event),
    .sel(n19),
    .o(n47));  // ../../rtl/mouse/serial_mouse.vhd(271)
  and u38 (n55, n10, n14);  // ../../rtl/mouse/serial_mouse.vhd(313)
  not u39 (n56, hw_int_oe_n);  // ../../rtl/mouse/serial_mouse.vhd(313)
  and u4 (n2, CPM, ROM14);  // ../../rtl/mouse/serial_mouse.vhd(126)
  or u40 (n57, n55, n56);  // ../../rtl/mouse/serial_mouse.vhd(313)
  not u41 (OE_N, n57);  // ../../rtl/mouse/serial_mouse.vhd(313)
  and u42 (n58, n11, n14);  // ../../rtl/mouse/serial_mouse.vhd(317)
  buf u43 (INT_N, hw_int_n);  // ../../rtl/mouse/serial_mouse.vhd(319)
  not u5 (n3, ROM14);  // ../../rtl/mouse/serial_mouse.vhd(126)
  and u6 (n4, DOS, n3);  // ../../rtl/mouse/serial_mouse.vhd(126)
  or u7 (n5, n2, n4);  // ../../rtl/mouse/serial_mouse.vhd(126)
  and u8 (n6, A[7], n0);  // ../../rtl/mouse/serial_mouse.vhd(126)
  and u9 (n7, n6, n1);  // ../../rtl/mouse/serial_mouse.vhd(126)
  AL_DFF vv51_read_after_reg (
    .clk(CLKEN),
    .d(n46),
    .reset(1'b0),
    .set(1'b0),
    .q(vv51_read_after));  // ../../rtl/mouse/serial_mouse.vhd(271)

endmodule 

module board  // ../../rtl/board/board.vhd(10)
  (
  CFG,
  CLK,
  SOFT_SW1,
  SOFT_SW2,
  SOFT_SW3,
  SOFT_SW4,
  AUDIO_DAC_TYPE,
  BOARD_RESET,
  ROM_BANK,
  SCANDOUBLER_EN,
  TAPE_IN_OUT_EN
  );

  input [7:0] CFG;  // ../../rtl/board/board.vhd(13)
  input CLK;  // ../../rtl/board/board.vhd(12)
  input SOFT_SW1;  // ../../rtl/board/board.vhd(14)
  input SOFT_SW2;  // ../../rtl/board/board.vhd(15)
  input SOFT_SW3;  // ../../rtl/board/board.vhd(16)
  input SOFT_SW4;  // ../../rtl/board/board.vhd(17)
  output AUDIO_DAC_TYPE;  // ../../rtl/board/board.vhd(19)
  output BOARD_RESET;  // ../../rtl/board/board.vhd(24)
  output [1:0] ROM_BANK;  // ../../rtl/board/board.vhd(20)
  output SCANDOUBLER_EN;  // ../../rtl/board/board.vhd(21)
  output TAPE_IN_OUT_EN;  // ../../rtl/board/board.vhd(22)

  wire [1:0] n1;
  wire [4:0] n2;
  wire [4:0] n4;
  wire [4:0] n5;
  wire [1:0] old_rom_bank;  // ../../rtl/board/board.vhd(30)
  wire [4:0] reset_cnt;  // ../../rtl/board/board.vhd(31)
  wire n0;
  wire n3;

  add_pu5_pu5_o5 add0 (
    .i0(reset_cnt),
    .i1(5'b00001),
    .o(n4));
  binary_mux_s1_w2 mux0 (
    .i0(old_rom_bank),
    .i1(ROM_BANK),
    .sel(n0),
    .o(n1));  // ../../rtl/board/board.vhd(46)
  binary_mux_s1_w5 mux1 (
    .i0(reset_cnt),
    .i1(5'b00000),
    .sel(n0),
    .o(n2));  // ../../rtl/board/board.vhd(46)
  binary_mux_s1_w5 mux2 (
    .i0(n2),
    .i1(n4),
    .sel(n3),
    .o(n5));  // ../../rtl/board/board.vhd(49)
  ne_w2 neq0 (
    .i0(old_rom_bank),
    .i1(ROM_BANK),
    .o(n0));
  ne_w5 neq1 (
    .i0(reset_cnt),
    .i1(5'b10000),
    .o(n3));
  reg_ar_as_w5 reg0 (
    .clk(CLK),
    .d(n5),
    .reset(5'b00000),
    .set(5'b00000),
    .q(reset_cnt));  // ../../rtl/board/board.vhd(50)
  reg_ar_as_w2 reg1 (
    .clk(CLK),
    .d(n1),
    .reset(2'b00),
    .set(2'b00),
    .q(old_rom_bank));  // ../../rtl/board/board.vhd(50)
  buf u2 (ROM_BANK[1], SOFT_SW4);  // ../../rtl/board/board.vhd(37)
  buf u3 (ROM_BANK[0], SOFT_SW3);  // ../../rtl/board/board.vhd(37)
  not u4 (SCANDOUBLER_EN, SOFT_SW1);  // ../../rtl/board/board.vhd(35)
  buf u5 (AUDIO_DAC_TYPE, CFG[0]);  // ../../rtl/board/board.vhd(36)
  buf u6 (TAPE_IN_OUT_EN, CFG[2]);  // ../../rtl/board/board.vhd(38)
  buf u7 (BOARD_RESET, reset_cnt[3]);  // ../../rtl/board/board.vhd(53)

endmodule 

module T80a  // ../../rtl/t80se/T80a.vhd(66)
  (
  BUSRQ_n,
  CEN,
  CLK_n,
  DIN,
  INT_n,
  NMI_n,
  RESET_n,
  WAIT_n,
  A,
  BUSAK_n,
  DOUT,
  HALT_n,
  IORQ_n,
  M1_n,
  MREQ_n,
  RD_n,
  RFSH_n,
  WR_n
  );

  input BUSRQ_n;  // ../../rtl/t80se/T80a.vhd(77)
  input CEN;  // ../../rtl/t80se/T80a.vhd(73)
  input CLK_n;  // ../../rtl/t80se/T80a.vhd(72)
  input [7:0] DIN;  // ../../rtl/t80se/T80a.vhd(87)
  input INT_n;  // ../../rtl/t80se/T80a.vhd(75)
  input NMI_n;  // ../../rtl/t80se/T80a.vhd(76)
  input RESET_n;  // ../../rtl/t80se/T80a.vhd(71)
  input WAIT_n;  // ../../rtl/t80se/T80a.vhd(74)
  output [15:0] A;  // ../../rtl/t80se/T80a.vhd(86)
  output BUSAK_n;  // ../../rtl/t80se/T80a.vhd(85)
  output [7:0] DOUT;  // ../../rtl/t80se/T80a.vhd(88)
  output HALT_n;  // ../../rtl/t80se/T80a.vhd(84)
  output IORQ_n;  // ../../rtl/t80se/T80a.vhd(80)
  output M1_n;  // ../../rtl/t80se/T80a.vhd(78)
  output MREQ_n;  // ../../rtl/t80se/T80a.vhd(79)
  output RD_n;  // ../../rtl/t80se/T80a.vhd(81)
  output RFSH_n;  // ../../rtl/t80se/T80a.vhd(83)
  output WR_n;  // ../../rtl/t80se/T80a.vhd(82)

  parameter Mode = 0;
  wire [15:0] A_i;  // ../../rtl/t80se/T80a.vhd(110)
  wire [7:0] DI_Reg;  // ../../rtl/t80se/T80a.vhd(112)
  wire [7:0] DO;  // ../../rtl/t80se/T80a.vhd(111)
  wire [2:0] MCycle;  // ../../rtl/t80se/T80a.vhd(114)
  wire [2:0] TState;  // ../../rtl/t80se/T80a.vhd(115)
  wire [7:0] n10;
  wire [7:0] n8;
  wire BUSAK_n_i;  // ../../rtl/t80se/T80a.vhd(109)
  wire IORQ;  // ../../rtl/t80se/T80a.vhd(97)
  wire IORQ_n_i;  // ../../rtl/t80se/T80a.vhd(105)
  wire IntCycle_n;  // ../../rtl/t80se/T80a.vhd(96)
  wire MREQ;  // ../../rtl/t80se/T80a.vhd(100)
  wire MREQ_n_i;  // ../../rtl/t80se/T80a.vhd(104)
  wire MReq_Inhibit;  // ../../rtl/t80se/T80a.vhd(101)
  wire NoRead;  // ../../rtl/t80se/T80a.vhd(98)
  wire RD;  // ../../rtl/t80se/T80a.vhd(103)
  wire RD_n_i;  // ../../rtl/t80se/T80a.vhd(106)
  wire RFSH_n_i;  // ../../rtl/t80se/T80a.vhd(108)
  wire Req_Inhibit;  // ../../rtl/t80se/T80a.vhd(102)
  wire Reset_s;  // ../../rtl/t80se/T80a.vhd(95)
  wire WR_n_i;  // ../../rtl/t80se/T80a.vhd(107)
  wire Wait_s;  // ../../rtl/t80se/T80a.vhd(113)
  wire Write;  // ../../rtl/t80se/T80a.vhd(99)
  wire n0;
  wire n1;
  wire n11;
  wire n12;
  wire n13;
  wire n14;
  wire n15;
  wire n16;
  wire n17;
  wire n18;
  wire n19;
  wire n2;
  wire n20;
  wire n21;
  wire n22;
  wire n23;
  wire n24;
  wire n25;
  wire n26;
  wire n27;
  wire n28;
  wire n29;
  wire n3;
  wire n30;
  wire n31;
  wire n32;
  wire n33;
  wire n34;
  wire n35;
  wire n36;
  wire n37;
  wire n38;
  wire n39;
  wire n4;
  wire n40;
  wire n41;
  wire n42;
  wire n43;
  wire n5;
  wire n6;
  wire n7;
  wire n9;

  AL_DFF IORQ_n_i_reg (
    .clk(CLK_n),
    .d(n43),
    .reset(1'b0),
    .set(n11),
    .q(IORQ_n_i));  // ../../rtl/t80se/T80a.vhd(282)
  AL_DFF MREQ_reg (
    .clk(n5),
    .d(n37),
    .reset(n11),
    .set(1'b0),
    .q(MREQ));  // ../../rtl/t80se/T80a.vhd(256)
  AL_DFF MReq_Inhibit_reg (
    .clk(n5),
    .d(n20),
    .reset(n11),
    .set(1'b0),
    .q(MReq_Inhibit));  // ../../rtl/t80se/T80a.vhd(223)
  AL_DFF RD_reg (
    .clk(n5),
    .d(n36),
    .reset(n11),
    .set(1'b0),
    .q(RD));  // ../../rtl/t80se/T80a.vhd(256)
  AL_DFF Req_Inhibit_reg (
    .clk(CLK_n),
    .d(n19),
    .reset(n11),
    .set(1'b0),
    .q(Req_Inhibit));  // ../../rtl/t80se/T80a.vhd(208)
  AL_DFF Reset_s_reg (
    .clk(CLK_n),
    .d(n4),
    .reset(n3),
    .set(1'b0),
    .q(Reset_s));  // ../../rtl/t80se/T80a.vhd(140)
  AL_DFF WR_n_i_reg (
    .clk(CLK_n),
    .d(n15),
    .reset(1'b0),
    .set(n11),
    .q(WR_n_i));  // ../../rtl/t80se/T80a.vhd(193)
  AL_DFF Wait_s_reg (
    .clk(n5),
    .d(n9),
    .reset(1'b0),
    .set(1'b0),
    .q(Wait_s));  // ../../rtl/t80se/T80a.vhd(179)
  eq_w3 eq0 (
    .i0(3'b011),
    .i1(TState),
    .o(n6));  // ../../rtl/t80se/T80a.vhd(175)
  eq_w3 eq1 (
    .i0(3'b001),
    .i1(TState),
    .o(n12));  // ../../rtl/t80se/T80a.vhd(189)
  eq_w3 eq2 (
    .i0(3'b001),
    .i1(MCycle),
    .o(n16));  // ../../rtl/t80se/T80a.vhd(202)
  eq_w3 eq3 (
    .i0(3'b010),
    .i1(TState),
    .o(n17));  // ../../rtl/t80se/T80a.vhd(202)
  eq_w3 eq4 (
    .i0(3'b100),
    .i1(TState),
    .o(n25));  // ../../rtl/t80se/T80a.vhd(242)
  binary_mux_s1_w8 mux0 (
    .i0(DI_Reg),
    .i1(DIN),
    .sel(n7),
    .o(n8));  // ../../rtl/t80se/T80a.vhd(177)
  binary_mux_s1_w8 mux1 (
    .i0(DI_Reg),
    .i1(n8),
    .sel(CEN),
    .o(n10));  // ../../rtl/t80se/T80a.vhd(178)
  reg_ar_as_w8 reg0 (
    .clk(n5),
    .d(n10),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(DI_Reg));  // ../../rtl/t80se/T80a.vhd(179)
  \T80(iowait=1)  u0 (
    .BUSRQ_n(BUSRQ_n),
    .CEN(CEN),
    .CLK_n(CLK_n),
    .DI(DI_Reg),
    .DIR(212'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000),
    .DIRSet(1'b0),
    .DInst(DIN),
    .INT_n(INT_n),
    .NMI_n(NMI_n),
    .RESET_n(Reset_s),
    .WAIT_n(Wait_s),
    .out0(1'b0),
    .A(A_i),
    .BUSAK_n(BUSAK_n_i),
    .DO(DO),
    .HALT_n(HALT_n),
    .IORQ(IORQ),
    .IntCycle_n(IntCycle_n),
    .M1_n(M1_n),
    .MC(MCycle),
    .NoRead(NoRead),
    .RFSH_n(RFSH_n_i),
    .TS(TState),
    .Write(Write));  // ../../rtl/t80se/T80a.vhd(143)
  bufif1 u10 (RD_n, RD_n_i, BUSAK_n_i);  // ../../rtl/t80se/T80a.vhd(125)
  bufif1 u11 (WR_n, WR_n_i, BUSAK_n_i);  // ../../rtl/t80se/T80a.vhd(126)
  bufif1 u12 (RFSH_n, RFSH_n_i, BUSAK_n_i);  // ../../rtl/t80se/T80a.vhd(127)
  bufif1 u13 (DOUT[7], DO[7], BUSAK_n_i);  // ../../rtl/t80se/T80a.vhd(130)
  not u14 (n3, RESET_n);  // ../../rtl/t80se/T80a.vhd(134)
  AL_MUX u15 (
    .i0(Reset_s),
    .i1(1'b1),
    .sel(CEN),
    .o(n4));  // ../../rtl/t80se/T80a.vhd(139)
  not u16 (n5, CLK_n);  // ../../rtl/t80se/T80a.vhd(172)
  and u17 (n7, n6, BUSAK_n_i);  // ../../rtl/t80se/T80a.vhd(175)
  AL_MUX u18 (
    .i0(Wait_s),
    .i1(WAIT_n),
    .sel(CEN),
    .o(n9));  // ../../rtl/t80se/T80a.vhd(178)
  bufif1 u19 (DOUT[6], DO[6], BUSAK_n_i);  // ../../rtl/t80se/T80a.vhd(130)
  buf u2 (BUSAK_n, BUSAK_n_i);  // ../../rtl/t80se/T80a.vhd(119)
  not u20 (n11, Reset_s);  // ../../rtl/t80se/T80a.vhd(184)
  not u21 (n13, Write);  // ../../rtl/t80se/T80a.vhd(190)
  AL_MUX u22 (
    .i0(1'b1),
    .i1(n13),
    .sel(n12),
    .o(n14));  // ../../rtl/t80se/T80a.vhd(191)
  AL_MUX u23 (
    .i0(WR_n_i),
    .i1(n14),
    .sel(CEN),
    .o(n15));  // ../../rtl/t80se/T80a.vhd(192)
  bufif1 u24 (DOUT[5], DO[5], BUSAK_n_i);  // ../../rtl/t80se/T80a.vhd(130)
  and u25 (n18, n16, n17);  // ../../rtl/t80se/T80a.vhd(202)
  AL_MUX u26 (
    .i0(Req_Inhibit),
    .i1(n18),
    .sel(CEN),
    .o(n19));  // ../../rtl/t80se/T80a.vhd(207)
  bufif1 u27 (DOUT[4], DO[4], BUSAK_n_i);  // ../../rtl/t80se/T80a.vhd(130)
  bufif1 u28 (DOUT[3], DO[3], BUSAK_n_i);  // ../../rtl/t80se/T80a.vhd(130)
  bufif1 u29 (DOUT[2], DO[2], BUSAK_n_i);  // ../../rtl/t80se/T80a.vhd(130)
  not u3 (n0, MREQ);  // ../../rtl/t80se/T80a.vhd(120)
  bufif1 u30 (DOUT[1], DO[1], BUSAK_n_i);  // ../../rtl/t80se/T80a.vhd(130)
  bufif1 u31 (A[15], A_i[15], BUSAK_n_i);  // ../../rtl/t80se/T80a.vhd(128)
  AL_MUX u32 (
    .i0(MReq_Inhibit),
    .i1(n18),
    .sel(CEN),
    .o(n20));  // ../../rtl/t80se/T80a.vhd(222)
  bufif1 u33 (A[14], A_i[14], BUSAK_n_i);  // ../../rtl/t80se/T80a.vhd(128)
  bufif1 u34 (A[13], A_i[13], BUSAK_n_i);  // ../../rtl/t80se/T80a.vhd(128)
  bufif1 u35 (A[12], A_i[12], BUSAK_n_i);  // ../../rtl/t80se/T80a.vhd(128)
  bufif1 u36 (A[11], A_i[11], BUSAK_n_i);  // ../../rtl/t80se/T80a.vhd(128)
  AL_MUX u37 (
    .i0(RD),
    .i1(IntCycle_n),
    .sel(n12),
    .o(n21));  // ../../rtl/t80se/T80a.vhd(237)
  AL_MUX u38 (
    .i0(MREQ),
    .i1(IntCycle_n),
    .sel(n12),
    .o(n22));  // ../../rtl/t80se/T80a.vhd(237)
  bufif1 u39 (A[10], A_i[10], BUSAK_n_i);  // ../../rtl/t80se/T80a.vhd(128)
  and u4 (n1, Req_Inhibit, MReq_Inhibit);  // ../../rtl/t80se/T80a.vhd(120)
  AL_MUX u40 (
    .i0(n21),
    .i1(1'b0),
    .sel(n6),
    .o(n23));  // ../../rtl/t80se/T80a.vhd(241)
  AL_MUX u41 (
    .i0(n22),
    .i1(1'b1),
    .sel(n6),
    .o(n24));  // ../../rtl/t80se/T80a.vhd(241)
  AL_MUX u42 (
    .i0(n24),
    .i1(1'b0),
    .sel(n25),
    .o(n26));  // ../../rtl/t80se/T80a.vhd(244)
  bufif1 u43 (A[9], A_i[9], BUSAK_n_i);  // ../../rtl/t80se/T80a.vhd(128)
  not u44 (n27, NoRead);  // ../../rtl/t80se/T80a.vhd(246)
  and u45 (n28, n12, n27);  // ../../rtl/t80se/T80a.vhd(246)
  bufif1 u46 (A[8], A_i[8], BUSAK_n_i);  // ../../rtl/t80se/T80a.vhd(128)
  not u47 (n29, IORQ);  // ../../rtl/t80se/T80a.vhd(248)
  AL_MUX u48 (
    .i0(RD),
    .i1(n13),
    .sel(n28),
    .o(n30));  // ../../rtl/t80se/T80a.vhd(249)
  AL_MUX u49 (
    .i0(MREQ),
    .i1(n29),
    .sel(n28),
    .o(n31));  // ../../rtl/t80se/T80a.vhd(249)
  or u5 (MREQ_n_i, n0, n1);  // ../../rtl/t80se/T80a.vhd(120)
  bufif1 u50 (A[7], A_i[7], BUSAK_n_i);  // ../../rtl/t80se/T80a.vhd(128)
  AL_MUX u51 (
    .i0(n30),
    .i1(1'b0),
    .sel(n6),
    .o(n32));  // ../../rtl/t80se/T80a.vhd(253)
  AL_MUX u52 (
    .i0(n31),
    .i1(1'b0),
    .sel(n6),
    .o(n33));  // ../../rtl/t80se/T80a.vhd(253)
  AL_MUX u53 (
    .i0(n32),
    .i1(n23),
    .sel(n16),
    .o(n34));  // ../../rtl/t80se/T80a.vhd(254)
  AL_MUX u54 (
    .i0(n33),
    .i1(n26),
    .sel(n16),
    .o(n35));  // ../../rtl/t80se/T80a.vhd(254)
  AL_MUX u55 (
    .i0(RD),
    .i1(n34),
    .sel(CEN),
    .o(n36));  // ../../rtl/t80se/T80a.vhd(255)
  AL_MUX u56 (
    .i0(MREQ),
    .i1(n35),
    .sel(CEN),
    .o(n37));  // ../../rtl/t80se/T80a.vhd(255)
  bufif1 u57 (A[6], A_i[6], BUSAK_n_i);  // ../../rtl/t80se/T80a.vhd(128)
  bufif1 u58 (A[5], A_i[5], BUSAK_n_i);  // ../../rtl/t80se/T80a.vhd(128)
  bufif1 u59 (A[4], A_i[4], BUSAK_n_i);  // ../../rtl/t80se/T80a.vhd(128)
  not u6 (n2, RD);  // ../../rtl/t80se/T80a.vhd(121)
  AL_MUX u60 (
    .i0(IORQ_n_i),
    .i1(IntCycle_n),
    .sel(n12),
    .o(n38));  // ../../rtl/t80se/T80a.vhd(269)
  bufif1 u61 (A[3], A_i[3], BUSAK_n_i);  // ../../rtl/t80se/T80a.vhd(128)
  AL_MUX u62 (
    .i0(n38),
    .i1(1'b1),
    .sel(n6),
    .o(n39));  // ../../rtl/t80se/T80a.vhd(272)
  bufif1 u63 (A[2], A_i[2], BUSAK_n_i);  // ../../rtl/t80se/T80a.vhd(128)
  bufif1 u64 (A[1], A_i[1], BUSAK_n_i);  // ../../rtl/t80se/T80a.vhd(128)
  AL_MUX u65 (
    .i0(IORQ_n_i),
    .i1(n29),
    .sel(n12),
    .o(n40));  // ../../rtl/t80se/T80a.vhd(276)
  bufif1 u66 (A[0], A_i[0], BUSAK_n_i);  // ../../rtl/t80se/T80a.vhd(128)
  AL_MUX u67 (
    .i0(n40),
    .i1(1'b1),
    .sel(n6),
    .o(n41));  // ../../rtl/t80se/T80a.vhd(279)
  AL_MUX u68 (
    .i0(n41),
    .i1(n39),
    .sel(n16),
    .o(n42));  // ../../rtl/t80se/T80a.vhd(280)
  AL_MUX u69 (
    .i0(IORQ_n_i),
    .i1(n42),
    .sel(CEN),
    .o(n43));  // ../../rtl/t80se/T80a.vhd(281)
  or u7 (RD_n_i, n2, Req_Inhibit);  // ../../rtl/t80se/T80a.vhd(121)
  bufif1 u70 (DOUT[0], DO[0], BUSAK_n_i);  // ../../rtl/t80se/T80a.vhd(130)
  bufif1 u8 (MREQ_n, MREQ_n_i, BUSAK_n_i);  // ../../rtl/t80se/T80a.vhd(123)
  bufif1 u9 (IORQ_n, IORQ_n_i, BUSAK_n_i);  // ../../rtl/t80se/T80a.vhd(124)

endmodule 

module memory  // ../../rtl/memory/memory.vhd(10)
  (
  A,
  CLK2X,
  CLKX,
  CLK_CPU,
  COUNT_BLOCK,
  CPM,
  D,
  DS80,
  EXT_ROM_BANK,
  N_IORQ,
  N_M1,
  N_MREQ,
  N_RD,
  N_WR,
  RAM_6MB,
  RAM_BANK,
  RAM_EXT,
  ROM_BANK,
  SCO,
  SCR,
  TRDOS,
  VA,
  VID_PAGE,
  VID_RD2,
  WOROM,
  loader_act,
  loader_ram_a,
  loader_ram_do,
  loader_ram_wr,
  CONTENDED,
  DO,
  MA,
  N_CE1,
  N_CE2,
  N_CE3,
  N_MRD,
  N_MWR,
  N_OE,
  VBUS_MODE_O,
  VID_DO,
  VID_RD_O,
  MD
  );

  input [15:0] A;  // ../../rtl/memory/memory.vhd(20)
  input CLK2X;  // ../../rtl/memory/memory.vhd(16)
  input CLKX;  // ../../rtl/memory/memory.vhd(17)
  input CLK_CPU;  // ../../rtl/memory/memory.vhd(18)
  input COUNT_BLOCK;  // ../../rtl/memory/memory.vhd(72)
  input CPM;  // ../../rtl/memory/memory.vhd(64)
  input [7:0] D;  // ../../rtl/memory/memory.vhd(21)
  input DS80;  // ../../rtl/memory/memory.vhd(63)
  input [1:0] EXT_ROM_BANK;  // ../../rtl/memory/memory.vhd(70)
  input N_IORQ;  // ../../rtl/memory/memory.vhd(23)
  input N_M1;  // ../../rtl/memory/memory.vhd(26)
  input N_MREQ;  // ../../rtl/memory/memory.vhd(22)
  input N_RD;  // ../../rtl/memory/memory.vhd(25)
  input N_WR;  // ../../rtl/memory/memory.vhd(24)
  input RAM_6MB;  // ../../rtl/memory/memory.vhd(28)
  input [2:0] RAM_BANK;  // ../../rtl/memory/memory.vhd(47)
  input [4:0] RAM_EXT;  // ../../rtl/memory/memory.vhd(48)
  input ROM_BANK;  // ../../rtl/memory/memory.vhd(69)
  input SCO;  // ../../rtl/memory/memory.vhd(65)
  input SCR;  // ../../rtl/memory/memory.vhd(66)
  input TRDOS;  // ../../rtl/memory/memory.vhd(50)
  input [13:0] VA;  // ../../rtl/memory/memory.vhd(52)
  input VID_PAGE;  // ../../rtl/memory/memory.vhd(53)
  input VID_RD2;  // ../../rtl/memory/memory.vhd(57)
  input WOROM;  // ../../rtl/memory/memory.vhd(67)
  input loader_act;  // ../../rtl/memory/memory.vhd(30)
  input [20:0] loader_ram_a;  // ../../rtl/memory/memory.vhd(31)
  input [7:0] loader_ram_do;  // ../../rtl/memory/memory.vhd(32)
  input loader_ram_wr;  // ../../rtl/memory/memory.vhd(33)
  output CONTENDED;  // ../../rtl/memory/memory.vhd(73)
  output [7:0] DO;  // ../../rtl/memory/memory.vhd(35)
  output [20:0] MA;  // ../../rtl/memory/memory.vhd(38)
  output N_CE1;  // ../../rtl/memory/memory.vhd(43)
  output N_CE2;  // ../../rtl/memory/memory.vhd(44)
  output N_CE3;  // ../../rtl/memory/memory.vhd(45)
  output N_MRD;  // ../../rtl/memory/memory.vhd(40)
  output N_MWR;  // ../../rtl/memory/memory.vhd(41)
  output N_OE;  // ../../rtl/memory/memory.vhd(36)
  output VBUS_MODE_O;  // ../../rtl/memory/memory.vhd(60)
  output [7:0] VID_DO;  // ../../rtl/memory/memory.vhd(54)
  output VID_RD_O;  // ../../rtl/memory/memory.vhd(61)
  inout [7:0] MD;  // ../../rtl/memory/memory.vhd(39)

  parameter enable_2port_vram = false;
  parameter enable_bus_n_romcs = true;
  wire [7:0] buf_md;  // ../../rtl/memory/memory.vhd(79)
  wire [1:0] mux;  // ../../rtl/memory/memory.vhd(101)
  wire [13:0] n20;
  wire [6:0] n28;
  wire [6:0] n29;
  wire [6:0] n30;
  wire [6:0] n31;
  wire [6:0] n32;
  wire [8:0] n61;
  wire [1:0] n62;
  wire [8:0] n63;
  wire [8:0] ram_page;  // ../../rtl/memory/memory.vhd(86)
  wire [1:0] rom_page;  // ../../rtl/memory/memory.vhd(85)
  wire block_reg;  // ../../rtl/memory/memory.vhd(103)
  wire is_buf_wr;  // ../../rtl/memory/memory.vhd(80)
  wire is_ram;  // ../../rtl/memory/memory.vhd(83)
  wire is_rom;  // ../../rtl/memory/memory.vhd(82)
  wire n0;
  wire n1;
  wire n10;
  wire n11;
  wire n12;
  wire n13;
  wire n14;
  wire n15;
  wire n16;
  wire n17;
  wire n18;
  wire n19;
  wire n2;
  wire n21;
  wire n22;
  wire n23;
  wire n24;
  wire n25;
  wire n26;
  wire n27;
  wire n3;
  wire n33;
  wire n34;
  wire n35;
  wire n36;
  wire n37;
  wire n38;
  wire n39;
  wire n4;
  wire n40;
  wire n41;
  wire n42;
  wire n43;
  wire n44;
  wire n45;
  wire n46;
  wire n47;
  wire n48;
  wire n49;
  wire n5;
  wire n50;
  wire n51;
  wire n52;
  wire n53;
  wire n54;
  wire n55;
  wire n56;
  wire n57;
  wire n58;
  wire n59;
  wire n6;
  wire n60;
  wire n64;
  wire n65;
  wire n66;
  wire n67;
  wire n68;
  wire n69;
  wire n7;
  wire n70;
  wire n71;
  wire n8;
  wire n9;
  wire page_cont;  // ../../rtl/memory/memory.vhd(104)
  wire vbus_ack;  // ../../rtl/memory/memory.vhd(91)
  wire vbus_mode;  // ../../rtl/memory/memory.vhd(89)
  wire vbus_req;  // ../../rtl/memory/memory.vhd(88)
  wire vid_rd;  // ../../rtl/memory/memory.vhd(92)

  assign N_CE3 = N_CE2;
  AL_DFF CONTENDED_reg (
    .clk(CLK2X),
    .d(n71),
    .reset(1'b0),
    .set(1'b0),
    .q(CONTENDED));  // ../../rtl/memory/memory.vhd(250)
  AL_DFF block_reg_reg (
    .clk(CLK_CPU),
    .d(n67),
    .reset(1'b0),
    .set(1'b0),
    .q(block_reg));  // ../../rtl/memory/memory.vhd(237)
  eq_w2 eq0 (
    .i0(2'b00),
    .i1(A[15:14]),
    .o(n55));  // ../../rtl/memory/memory.vhd(185)
  eq_w2 eq1 (
    .i0(2'b01),
    .i1(mux),
    .o(n68));  // ../../rtl/memory/memory.vhd(240)
  binary_mux_s1_w14 mux0 (
    .i0(A[13:0]),
    .i1(VA),
    .sel(vbus_mode),
    .o(n20));  // ../../rtl/memory/memory.vhd(140)
  binary_mux_s1_w7 mux1 (
    .i0(7'b0000000),
    .i1({5'b01110,VID_PAGE,1'b0}),
    .sel(n27),
    .o(n28));  // ../../rtl/memory/memory.vhd(149)
  binary_mux_s1_w7 mux2 (
    .i0(n28),
    .i1({5'b00001,VID_PAGE,1'b0}),
    .sel(n26),
    .o(n29));  // ../../rtl/memory/memory.vhd(148)
  binary_mux_s1_w7 mux3 (
    .i0(n29),
    .i1({5'b00001,VID_PAGE,1'b1}),
    .sel(n23),
    .o(n30));  // ../../rtl/memory/memory.vhd(147)
  binary_mux_s1_w7 mux4 (
    .i0(ram_page[6:0]),
    .i1(n30),
    .sel(vbus_mode),
    .o(n31));  // ../../rtl/memory/memory.vhd(146)
  binary_mux_s1_w7 mux5 (
    .i0(n31),
    .i1({3'b100,EXT_ROM_BANK,rom_page}),
    .sel(n21),
    .o(n32));  // ../../rtl/memory/memory.vhd(145)
  binary_mux_s1_w2 mux6 (
    .i0(2'b00),
    .i1(RAM_EXT[4:3]),
    .sel(RAM_6MB),
    .o(n62));  // ../../rtl/memory/memory.vhd(221)
  binary_mux_s1_w18 mux7 (
    .i0({1'b0,n62,RAM_EXT[2:0],RAM_BANK,9'b000000101}),
    .i1({10'b0000001110,n62,RAM_EXT[2:0],RAM_BANK}),
    .sel(SCO),
    .o({n63,n61}));  // ../../rtl/memory/memory.vhd(224)
  binary_mux_s2_w9 mux8 (
    .i0(9'b000000000),
    .i1(n61),
    .i2({6'b000000,SCR,2'b10}),
    .i3(n63),
    .sel(mux),
    .o({open_n0,open_n1,ram_page[6:0]}));  // ../../rtl/memory/memory.vhd(226)
  binary_mux_s1_w21 mux9 (
    .i0({n32,n20}),
    .i1(loader_ram_a),
    .sel(loader_act),
    .o(MA));  // ../../rtl/memory/memory.vhd(150)
  reg_ar_as_w8 reg0 (
    .clk(n47),
    .d(MD),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(buf_md));  // ../../rtl/memory/memory.vhd(162)
  or u10 (n6, n48, n5);  // ../../rtl/memory/memory.vhd(112)
  and u100 (n69, page_cont, block_reg);  // ../../rtl/memory/memory.vhd(245)
  and u101 (n70, n69, COUNT_BLOCK);  // ../../rtl/memory/memory.vhd(245)
  and u102 (n71, n70, n22);  // ../../rtl/memory/memory.vhd(245)
  buf u11 (VBUS_MODE_O, vbus_mode);  // ../../rtl/memory/memory.vhd(114)
  buf u12 (VID_RD_O, vid_rd);  // ../../rtl/memory/memory.vhd(115)
  and u13 (n7, is_rom, n2);  // ../../rtl/memory/memory.vhd(118)
  and u14 (n8, vbus_mode, n6);  // ../../rtl/memory/memory.vhd(119)
  not u15 (n9, vbus_mode);  // ../../rtl/memory/memory.vhd(120)
  and u16 (n10, n9, n2);  // ../../rtl/memory/memory.vhd(120)
  and u17 (n11, n10, n0);  // ../../rtl/memory/memory.vhd(120)
  or u18 (n12, n7, n8);  // ../../rtl/memory/memory.vhd(120)
  or u19 (n13, n12, n11);  // ../../rtl/memory/memory.vhd(120)
  not u2 (n0, N_MREQ);  // ../../rtl/memory/memory.vhd(111)
  not u20 (n14, n13);  // ../../rtl/memory/memory.vhd(120)
  AL_MUX u21 (
    .i0(n14),
    .i1(1'b1),
    .sel(loader_act),
    .o(N_MRD));  // ../../rtl/memory/memory.vhd(121)
  and u22 (n15, n9, is_ram);  // ../../rtl/memory/memory.vhd(124)
  and u23 (n16, n15, n1);  // ../../rtl/memory/memory.vhd(124)
  and u24 (n17, n16, n5);  // ../../rtl/memory/memory.vhd(124)
  not u25 (n18, n17);  // ../../rtl/memory/memory.vhd(124)
  not u26 (n19, loader_ram_wr);  // ../../rtl/memory/memory.vhd(123)
  AL_MUX u27 (
    .i0(n18),
    .i1(n19),
    .sel(loader_act),
    .o(N_MWR));  // ../../rtl/memory/memory.vhd(125)
  buf u28 (N_CE1, 1'b0);  // ../../rtl/memory/memory.vhd(128)
  buf u29 (N_CE2, 1'b1);  // ../../rtl/memory/memory.vhd(129)
  not u3 (n1, N_WR);  // ../../rtl/memory/memory.vhd(111)
  and u30 (is_buf_wr, n9, n5);  // ../../rtl/memory/memory.vhd(132)
  buf u31 (DO[0], buf_md[0]);  // ../../rtl/memory/memory.vhd(134)
  and u32 (n21, is_rom, n9);  // ../../rtl/memory/memory.vhd(145)
  not u33 (n22, DS80);  // ../../rtl/memory/memory.vhd(147)
  and u34 (n23, vbus_mode, n22);  // ../../rtl/memory/memory.vhd(147)
  not u35 (n24, vid_rd);  // ../../rtl/memory/memory.vhd(148)
  and u36 (n25, vbus_mode, DS80);  // ../../rtl/memory/memory.vhd(148)
  and u37 (n26, n25, n24);  // ../../rtl/memory/memory.vhd(148)
  and u38 (n27, n25, vid_rd);  // ../../rtl/memory/memory.vhd(149)
  not u39 (n33, N_IORQ);  // ../../rtl/memory/memory.vhd(154)
  not u4 (n2, N_RD);  // ../../rtl/memory/memory.vhd(111)
  and u40 (n34, n33, N_M1);  // ../../rtl/memory/memory.vhd(154)
  or u41 (n35, is_ram, n34);  // ../../rtl/memory/memory.vhd(154)
  and u42 (n36, n9, n35);  // ../../rtl/memory/memory.vhd(154)
  and u43 (n37, n36, n1);  // ../../rtl/memory/memory.vhd(154)
  AL_MUX u44 (
    .i0(D[7]),
    .i1(loader_ram_do[7]),
    .sel(loader_act),
    .o(n38));  // ../../rtl/memory/memory.vhd(155)
  or u45 (n39, loader_act, n37);  // ../../rtl/memory/memory.vhd(155)
  AL_MUX u46 (
    .i0(D[6]),
    .i1(loader_ram_do[6]),
    .sel(loader_act),
    .o(n40));  // ../../rtl/memory/memory.vhd(155)
  bufif1 u47 (MD[2], n44, n39);  // ../../rtl/memory/memory.vhd(39)
  AL_MUX u48 (
    .i0(D[5]),
    .i1(loader_ram_do[5]),
    .sel(loader_act),
    .o(n41));  // ../../rtl/memory/memory.vhd(155)
  bufif1 u49 (MD[3], n43, n39);  // ../../rtl/memory/memory.vhd(39)
  or u5 (n3, n1, n2);  // ../../rtl/memory/memory.vhd(111)
  AL_MUX u50 (
    .i0(D[4]),
    .i1(loader_ram_do[4]),
    .sel(loader_act),
    .o(n42));  // ../../rtl/memory/memory.vhd(155)
  bufif1 u51 (MD[4], n42, n39);  // ../../rtl/memory/memory.vhd(39)
  AL_MUX u52 (
    .i0(D[3]),
    .i1(loader_ram_do[3]),
    .sel(loader_act),
    .o(n43));  // ../../rtl/memory/memory.vhd(155)
  bufif1 u53 (MD[5], n41, n39);  // ../../rtl/memory/memory.vhd(39)
  AL_MUX u54 (
    .i0(D[2]),
    .i1(loader_ram_do[2]),
    .sel(loader_act),
    .o(n44));  // ../../rtl/memory/memory.vhd(155)
  buf u55 (DO[7], buf_md[7]);  // ../../rtl/memory/memory.vhd(134)
  bufif1 u56 (MD[6], n40, n39);  // ../../rtl/memory/memory.vhd(39)
  AL_MUX u57 (
    .i0(D[1]),
    .i1(loader_ram_do[1]),
    .sel(loader_act),
    .o(n45));  // ../../rtl/memory/memory.vhd(155)
  buf u58 (DO[6], buf_md[6]);  // ../../rtl/memory/memory.vhd(134)
  bufif1 u59 (MD[7], n38, n39);  // ../../rtl/memory/memory.vhd(39)
  and u6 (n4, n0, n3);  // ../../rtl/memory/memory.vhd(111)
  AL_MUX u60 (
    .i0(D[0]),
    .i1(loader_ram_do[0]),
    .sel(loader_act),
    .o(n46));  // ../../rtl/memory/memory.vhd(155)
  buf u61 (DO[5], buf_md[5]);  // ../../rtl/memory/memory.vhd(134)
  buf u62 (mux[1], A[15]);  // ../../rtl/memory/memory.vhd(196)
  not u63 (n47, is_buf_wr);  // ../../rtl/memory/memory.vhd(160)
  buf u64 (DO[4], buf_md[4]);  // ../../rtl/memory/memory.vhd(134)
  and u65 (n49, n4, vbus_ack);  // ../../rtl/memory/memory.vhd(170)
  buf u66 (DO[3], buf_md[3]);  // ../../rtl/memory/memory.vhd(134)
  not u67 (n50, n49);  // ../../rtl/memory/memory.vhd(175)
  AL_MUX u68 (
    .i0(n24),
    .i1(vid_rd),
    .sel(n49),
    .o(n51));  // ../../rtl/memory/memory.vhd(175)
  AL_MUX u69 (
    .i0(vbus_mode),
    .i1(n50),
    .sel(n48),
    .o(n52));  // ../../rtl/memory/memory.vhd(177)
  not u7 (vbus_req, n4);  // ../../rtl/memory/memory.vhd(111)
  AL_MUX u70 (
    .i0(vid_rd),
    .i1(n51),
    .sel(n48),
    .o(n53));  // ../../rtl/memory/memory.vhd(177)
  AL_MUX u71 (
    .i0(vbus_ack),
    .i1(vbus_req),
    .sel(n48),
    .o(n54));  // ../../rtl/memory/memory.vhd(177)
  buf u72 (DO[2], buf_md[2]);  // ../../rtl/memory/memory.vhd(134)
  not u73 (n56, WOROM);  // ../../rtl/memory/memory.vhd(185)
  and u74 (n57, n0, n55);  // ../../rtl/memory/memory.vhd(185)
  and u75 (is_rom, n57, n56);  // ../../rtl/memory/memory.vhd(185)
  buf u76 (DO[1], buf_md[1]);  // ../../rtl/memory/memory.vhd(134)
  not u77 (n58, is_rom);  // ../../rtl/memory/memory.vhd(186)
  and u78 (is_ram, n0, n58);  // ../../rtl/memory/memory.vhd(186)
  not u79 (rom_page[1], TRDOS);  // ../../rtl/memory/memory.vhd(192)
  not u8 (n48, CLKX);  // ../../rtl/memory/memory.vhd(112)
  buf u80 (rom_page[0], ROM_BANK);  // ../../rtl/memory/memory.vhd(192)
  or u81 (n59, is_ram, is_rom);  // ../../rtl/memory/memory.vhd(194)
  buf u82 (VID_DO[7], MD[7]);  // ../../rtl/memory/memory.vhd(136)
  and u83 (n60, n59, n2);  // ../../rtl/memory/memory.vhd(194)
  not u84 (N_OE, n60);  // ../../rtl/memory/memory.vhd(194)
  buf u85 (VID_DO[0], MD[0]);  // ../../rtl/memory/memory.vhd(136)
  bufif1 u86 (MD[1], n45, n39);  // ../../rtl/memory/memory.vhd(39)
  buf u87 (VID_DO[6], MD[6]);  // ../../rtl/memory/memory.vhd(136)
  bufif1 u88 (MD[0], n46, n39);  // ../../rtl/memory/memory.vhd(39)
  buf u89 (VID_DO[5], MD[5]);  // ../../rtl/memory/memory.vhd(136)
  not u9 (n5, CLK_CPU);  // ../../rtl/memory/memory.vhd(112)
  not u90 (n64, A[0]);  // ../../rtl/memory/memory.vhd(232)
  buf u91 (VID_DO[4], MD[4]);  // ../../rtl/memory/memory.vhd(136)
  and u92 (n65, n64, n33);  // ../../rtl/memory/memory.vhd(232)
  or u93 (n66, n0, n65);  // ../../rtl/memory/memory.vhd(232)
  not u94 (n67, n66);  // ../../rtl/memory/memory.vhd(236)
  buf u95 (VID_DO[3], MD[3]);  // ../../rtl/memory/memory.vhd(136)
  buf u96 (VID_DO[2], MD[2]);  // ../../rtl/memory/memory.vhd(136)
  buf u97 (VID_DO[1], MD[1]);  // ../../rtl/memory/memory.vhd(136)
  or u98 (page_cont, n65, n68);  // ../../rtl/memory/memory.vhd(240)
  buf u99 (mux[0], A[14]);  // ../../rtl/memory/memory.vhd(196)
  AL_DFF vbus_ack_reg (
    .clk(CLK2X),
    .d(n54),
    .reset(1'b0),
    .set(1'b0),
    .q(vbus_ack));  // ../../rtl/memory/memory.vhd(178)
  AL_DFF vbus_mode_reg (
    .clk(CLK2X),
    .d(n52),
    .reset(1'b0),
    .set(1'b0),
    .q(vbus_mode));  // ../../rtl/memory/memory.vhd(178)
  AL_DFF vid_rd_reg (
    .clk(CLK2X),
    .d(n53),
    .reset(1'b0),
    .set(1'b0),
    .q(vid_rd));  // ../../rtl/memory/memory.vhd(178)

endmodule 

module \video(enable_2port_vram=false)(1,0)   // ../../rtl/video/video.vhd(10)
  (
  BORDER,
  BUS_A,
  BUS_D,
  BUS_WR_N,
  CLK,
  CLK2X,
  CS7E,
  DI,
  DS80,
  ENA,
  INTA,
  MODE60,
  RESET,
  SCREEN_MODE,
  TURBO,
  VBUS_MODE,
  VID_RD,
  A,
  ATTR_O,
  BLINK,
  COUNT_BLOCK,
  GX0,
  HCNT,
  HSYNC,
  INT,
  ISPAPER,
  VCNT,
  VIDEO_B,
  VIDEO_G,
  VIDEO_R,
  VID_RD2,
  VSYNC,
  pFF_CS
  );

  input [7:0] BORDER;  // ../../rtl/video/video.vhd(20)
  input [15:8] BUS_A;  // ../../rtl/video/video.vhd(39)
  input [7:0] BUS_D;  // ../../rtl/video/video.vhd(40)
  input BUS_WR_N;  // ../../rtl/video/video.vhd(41)
  input CLK;  // ../../rtl/video/video.vhd(16)
  input CLK2X;  // ../../rtl/video/video.vhd(15)
  input CS7E;  // ../../rtl/video/video.vhd(38)
  input [7:0] DI;  // ../../rtl/video/video.vhd(21)
  input DS80;  // ../../rtl/video/video.vhd(37)
  input ENA;  // ../../rtl/video/video.vhd(17)
  input INTA;  // ../../rtl/video/video.vhd(23)
  input MODE60;  // ../../rtl/video/video.vhd(24)
  input RESET;  // ../../rtl/video/video.vhd(18)
  input [1:0] SCREEN_MODE;  // ../../rtl/video/video.vhd(44)
  input [1:0] TURBO;  // ../../rtl/video/video.vhd(22)
  input VBUS_MODE;  // ../../rtl/video/video.vhd(53)
  input VID_RD;  // ../../rtl/video/video.vhd(54)
  output [13:0] A;  // ../../rtl/video/video.vhd(28)
  output [7:0] ATTR_O;  // ../../rtl/video/video.vhd(26)
  output BLINK;  // ../../rtl/video/video.vhd(50)
  output COUNT_BLOCK;  // ../../rtl/video/video.vhd(45)
  output GX0;  // ../../rtl/video/video.vhd(42)
  output [9:0] HCNT;  // ../../rtl/video/video.vhd(47)
  output HSYNC;  // ../../rtl/video/video.vhd(34)
  output INT;  // ../../rtl/video/video.vhd(25)
  output ISPAPER;  // ../../rtl/video/video.vhd(49)
  output [8:0] VCNT;  // ../../rtl/video/video.vhd(48)
  output [2:0] VIDEO_B;  // ../../rtl/video/video.vhd(32)
  output [2:0] VIDEO_G;  // ../../rtl/video/video.vhd(31)
  output [2:0] VIDEO_R;  // ../../rtl/video/video.vhd(30)
  output VID_RD2;  // ../../rtl/video/video.vhd(57)
  output VSYNC;  // ../../rtl/video/video.vhd(35)
  output pFF_CS;  // ../../rtl/video/video.vhd(27)

  parameter enable_2port_vram = false;
  wire [7:0] attr_o_profi;  // ../../rtl/video/video.vhd(90)
  wire [7:0] attr_o_spec;  // ../../rtl/video/video.vhd(105)
  wire [9:0] hcnt_profi;  // ../../rtl/video/video.vhd(92)
  wire [9:0] hcnt_spec;  // ../../rtl/video/video.vhd(107)
  wire [7:0] n17;
  wire [3:0] n18;
  wire [15:0] n19;
  wire [8:0] n20;
  wire [8:0] n21;
  wire [8:0] n22;
  wire [8:0] n23;
  wire [8:0] n24;
  wire [8:0] n25;
  wire [8:0] n26;
  wire [8:0] n27;
  wire [8:0] n28;
  wire [8:0] n29;
  wire [8:0] n30;
  wire [8:0] n31;
  wire [8:0] n32;
  wire [8:0] n33;
  wire [8:0] n34;
  wire [8:0] n35;
  wire [8:0] n36;
  wire [8:0] n37;
  wire [8:0] n38;
  wire [8:0] n39;
  wire [8:0] n40;
  wire [8:0] n41;
  wire [8:0] n42;
  wire [8:0] n43;
  wire [8:0] n44;
  wire [8:0] n45;
  wire [8:0] n46;
  wire [8:0] n47;
  wire [8:0] n48;
  wire [8:0] n49;
  wire [8:0] n50;
  wire [8:0] n51;
  wire [8:0] \palette[0] ;  // ../../rtl/video/video.vhd(68)
  wire [8:0] \palette[10] ;  // ../../rtl/video/video.vhd(68)
  wire [8:0] \palette[11] ;  // ../../rtl/video/video.vhd(68)
  wire [8:0] \palette[12] ;  // ../../rtl/video/video.vhd(68)
  wire [8:0] \palette[13] ;  // ../../rtl/video/video.vhd(68)
  wire [8:0] \palette[14] ;  // ../../rtl/video/video.vhd(68)
  wire [8:0] \palette[15] ;  // ../../rtl/video/video.vhd(68)
  wire [8:0] \palette[1] ;  // ../../rtl/video/video.vhd(68)
  wire [8:0] \palette[2] ;  // ../../rtl/video/video.vhd(68)
  wire [8:0] \palette[3] ;  // ../../rtl/video/video.vhd(68)
  wire [8:0] \palette[4] ;  // ../../rtl/video/video.vhd(68)
  wire [8:0] \palette[5] ;  // ../../rtl/video/video.vhd(68)
  wire [8:0] \palette[6] ;  // ../../rtl/video/video.vhd(68)
  wire [8:0] \palette[7] ;  // ../../rtl/video/video.vhd(68)
  wire [8:0] \palette[8] ;  // ../../rtl/video/video.vhd(68)
  wire [8:0] \palette[9] ;  // ../../rtl/video/video.vhd(68)
  wire [3:0] palette_a;  // ../../rtl/video/video.vhd(72)
  wire [8:0] palette_grb;  // ../../rtl/video/video.vhd(77)
  wire [8:0] palette_grb_reg;  // ../../rtl/video/video.vhd(78)
  wire [2:0] rgb;  // ../../rtl/video/video.vhd(63)
  wire [2:0] rgb_profi;  // ../../rtl/video/video.vhd(84)
  wire [2:0] rgb_spec;  // ../../rtl/video/video.vhd(100)
  wire [8:0] vcnt_profi;  // ../../rtl/video/video.vhd(93)
  wire [8:0] vcnt_spec;  // ../../rtl/video/video.vhd(108)
  wire [13:0] vid_a_profi;  // ../../rtl/video/video.vhd(82)
  wire [13:0] vid_a_spec;  // ../../rtl/video/video.vhd(98)
  wire blank_profi;  // ../../rtl/video/video.vhd(88)
  wire hsync_profi;  // ../../rtl/video/video.vhd(86)
  wire hsync_spec;  // ../../rtl/video/video.vhd(102)
  wire i;  // ../../rtl/video/video.vhd(64)
  wire i_profi;  // ../../rtl/video/video.vhd(85)
  wire i_spec;  // ../../rtl/video/video.vhd(101)
  wire int_profi;  // ../../rtl/video/video.vhd(83)
  wire int_spec;  // ../../rtl/video/video.vhd(99)
  wire ispaper_profi;  // ../../rtl/video/video.vhd(94)
  wire ispaper_spec;  // ../../rtl/video/video.vhd(109)
  wire n0;
  wire n1;
  wire n10;
  wire n11;
  wire n12;
  wire n13;
  wire n14;
  wire n15;
  wire n16;
  wire n2;
  wire n3;
  wire n4;
  wire n5;
  wire n52;
  wire n53;
  wire n54;
  wire n55;
  wire n56;
  wire n57;
  wire n6;
  wire n7;
  wire n8;
  wire n9;
  wire pFF_CS_profi;  // ../../rtl/video/video.vhd(89)
  wire pFF_CS_spec;  // ../../rtl/video/video.vhd(104)
  wire palette_wr;  // ../../rtl/video/video.vhd(75)
  wire vidrd_profi;  // ../../rtl/video/video.vhd(95)
  wire vsync_profi;  // ../../rtl/video/video.vhd(87)
  wire vsync_spec;  // ../../rtl/video/video.vhd(103)

  \pentagon_video(enable_2port_vram=false)(1,0)  U_PENT (
    .BORDER(BORDER[2:0]),
    .CLK(CLK),
    .CLK2X(CLK2X),
    .DI(DI),
    .ENA(ENA),
    .INTA(INTA),
    .MODE60(MODE60),
    .SCREEN_MODE(SCREEN_MODE),
    .TURBO(TURBO),
    .VBUS_MODE(VBUS_MODE),
    .VID_RD(VID_RD),
    .A(vid_a_spec),
    .ATTR_O(attr_o_spec),
    .BLINK(BLINK),
    .COUNT_BLOCK(COUNT_BLOCK),
    .HCNT(hcnt_spec),
    .HSYNC(hsync_spec),
    .I(i_spec),
    .INT(int_spec),
    .ISPAPER(ispaper_spec),
    .RGB(rgb_spec),
    .VCNT(vcnt_spec),
    .VSYNC(vsync_spec),
    .pFF_CS(pFF_CS_spec));  // ../../rtl/video/video.vhd(113)
  \profi_video(enable_2port_vram=false)(1,0)  U_PROFI (
    .BORDER(BORDER[3:0]),
    .CLK(CLK),
    .CLK2X(CLK2X),
    .DI(DI),
    .DS80(DS80),
    .ENA(ENA),
    .INTA(INTA),
    .MODE60(MODE60),
    .TURBO(TURBO),
    .VBUS_MODE(VBUS_MODE),
    .VID_RD(VID_RD),
    .A(vid_a_profi),
    .ATTR_O(attr_o_profi),
    .BLANK(blank_profi),
    .HCNT(hcnt_profi),
    .HSYNC(hsync_profi),
    .I(i_profi),
    .INT(int_profi),
    .ISPAPER(ispaper_profi),
    .RGB(rgb_profi),
    .VCNT(vcnt_profi),
    .VID_RD2(vidrd_profi),
    .VSYNC(vsync_profi),
    .pFF_CS(pFF_CS_profi));  // ../../rtl/video/video.vhd(150)
  binary_mux_s1_w14 mux0 (
    .i0(vid_a_spec),
    .i1(vid_a_profi),
    .sel(DS80),
    .o(A));  // ../../rtl/video/video.vhd(186)
  binary_mux_s1_w3 mux1 (
    .i0(rgb_spec),
    .i1(rgb_profi),
    .sel(DS80),
    .o(rgb));  // ../../rtl/video/video.vhd(190)
  binary_mux_s1_w9 mux10 (
    .i0(\palette[10] ),
    .i1({n17,BORDER[7]}),
    .sel(n19[10]),
    .o(n25));  // ../../rtl/video/video.vhd(223)
  binary_mux_s1_w9 mux11 (
    .i0(\palette[9] ),
    .i1({n17,BORDER[7]}),
    .sel(n19[9]),
    .o(n26));  // ../../rtl/video/video.vhd(223)
  binary_mux_s1_w9 mux12 (
    .i0(\palette[8] ),
    .i1({n17,BORDER[7]}),
    .sel(n19[8]),
    .o(n27));  // ../../rtl/video/video.vhd(223)
  binary_mux_s1_w9 mux13 (
    .i0(\palette[7] ),
    .i1({n17,BORDER[7]}),
    .sel(n19[7]),
    .o(n28));  // ../../rtl/video/video.vhd(223)
  binary_mux_s1_w9 mux14 (
    .i0(\palette[6] ),
    .i1({n17,BORDER[7]}),
    .sel(n19[6]),
    .o(n29));  // ../../rtl/video/video.vhd(223)
  binary_mux_s1_w9 mux15 (
    .i0(\palette[5] ),
    .i1({n17,BORDER[7]}),
    .sel(n19[5]),
    .o(n30));  // ../../rtl/video/video.vhd(223)
  binary_mux_s1_w9 mux16 (
    .i0(\palette[4] ),
    .i1({n17,BORDER[7]}),
    .sel(n19[4]),
    .o(n31));  // ../../rtl/video/video.vhd(223)
  binary_mux_s1_w9 mux17 (
    .i0(\palette[3] ),
    .i1({n17,BORDER[7]}),
    .sel(n19[3]),
    .o(n32));  // ../../rtl/video/video.vhd(223)
  binary_mux_s1_w9 mux18 (
    .i0(\palette[2] ),
    .i1({n17,BORDER[7]}),
    .sel(n19[2]),
    .o(n33));  // ../../rtl/video/video.vhd(223)
  binary_mux_s1_w9 mux19 (
    .i0(\palette[1] ),
    .i1({n17,BORDER[7]}),
    .sel(n19[1]),
    .o(n34));  // ../../rtl/video/video.vhd(223)
  binary_mux_s1_w10 mux2 (
    .i0(hcnt_spec),
    .i1(hcnt_profi),
    .sel(DS80),
    .o(HCNT));  // ../../rtl/video/video.vhd(196)
  binary_mux_s1_w9 mux20 (
    .i0(\palette[0] ),
    .i1({n17,BORDER[7]}),
    .sel(n19[0]),
    .o(n35));  // ../../rtl/video/video.vhd(223)
  binary_mux_s1_w9 mux21 (
    .i0(\palette[0] ),
    .i1(n35),
    .sel(n16),
    .o(n36));  // ../../rtl/video/video.vhd(224)
  binary_mux_s1_w9 mux22 (
    .i0(\palette[1] ),
    .i1(n34),
    .sel(n16),
    .o(n37));  // ../../rtl/video/video.vhd(224)
  binary_mux_s1_w9 mux23 (
    .i0(\palette[2] ),
    .i1(n33),
    .sel(n16),
    .o(n38));  // ../../rtl/video/video.vhd(224)
  binary_mux_s1_w9 mux24 (
    .i0(\palette[3] ),
    .i1(n32),
    .sel(n16),
    .o(n39));  // ../../rtl/video/video.vhd(224)
  binary_mux_s1_w9 mux25 (
    .i0(\palette[4] ),
    .i1(n31),
    .sel(n16),
    .o(n40));  // ../../rtl/video/video.vhd(224)
  binary_mux_s1_w9 mux26 (
    .i0(\palette[5] ),
    .i1(n30),
    .sel(n16),
    .o(n41));  // ../../rtl/video/video.vhd(224)
  binary_mux_s1_w9 mux27 (
    .i0(\palette[6] ),
    .i1(n29),
    .sel(n16),
    .o(n42));  // ../../rtl/video/video.vhd(224)
  binary_mux_s1_w9 mux28 (
    .i0(\palette[7] ),
    .i1(n28),
    .sel(n16),
    .o(n43));  // ../../rtl/video/video.vhd(224)
  binary_mux_s1_w9 mux29 (
    .i0(\palette[8] ),
    .i1(n27),
    .sel(n16),
    .o(n44));  // ../../rtl/video/video.vhd(224)
  binary_mux_s1_w9 mux3 (
    .i0(vcnt_spec),
    .i1(vcnt_profi),
    .sel(DS80),
    .o(VCNT));  // ../../rtl/video/video.vhd(197)
  binary_mux_s1_w9 mux30 (
    .i0(\palette[9] ),
    .i1(n26),
    .sel(n16),
    .o(n45));  // ../../rtl/video/video.vhd(224)
  binary_mux_s1_w9 mux31 (
    .i0(\palette[10] ),
    .i1(n25),
    .sel(n16),
    .o(n46));  // ../../rtl/video/video.vhd(224)
  binary_mux_s1_w9 mux32 (
    .i0(\palette[11] ),
    .i1(n24),
    .sel(n16),
    .o(n47));  // ../../rtl/video/video.vhd(224)
  binary_mux_s1_w9 mux33 (
    .i0(\palette[12] ),
    .i1(n23),
    .sel(n16),
    .o(n48));  // ../../rtl/video/video.vhd(224)
  binary_mux_s1_w9 mux34 (
    .i0(\palette[13] ),
    .i1(n22),
    .sel(n16),
    .o(n49));  // ../../rtl/video/video.vhd(224)
  binary_mux_s1_w9 mux35 (
    .i0(\palette[14] ),
    .i1(n21),
    .sel(n16),
    .o(n50));  // ../../rtl/video/video.vhd(224)
  binary_mux_s1_w9 mux36 (
    .i0(\palette[15] ),
    .i1(n20),
    .sel(n16),
    .o(n51));  // ../../rtl/video/video.vhd(224)
  binary_mux_s4_w9 mux37 (
    .i0(\palette[0] ),
    .i1(\palette[1] ),
    .i10(\palette[10] ),
    .i11(\palette[11] ),
    .i12(\palette[12] ),
    .i13(\palette[13] ),
    .i14(\palette[14] ),
    .i15(\palette[15] ),
    .i2(\palette[2] ),
    .i3(\palette[3] ),
    .i4(\palette[4] ),
    .i5(\palette[5] ),
    .i6(\palette[6] ),
    .i7(\palette[7] ),
    .i8(\palette[8] ),
    .i9(\palette[9] ),
    .sel(palette_a),
    .o(palette_grb));  // ../../rtl/video/video.vhd(232)
  binary_mux_s1_w9 mux38 (
    .i0(palette_grb),
    .i1(9'b000000000),
    .sel(n57),
    .o(palette_grb_reg));  // ../../rtl/video/video.vhd(244)
  binary_mux_s1_w8 mux4 (
    .i0(attr_o_spec),
    .i1(attr_o_profi),
    .sel(DS80),
    .o(ATTR_O));  // ../../rtl/video/video.vhd(202)
  binary_mux_s1_w9 mux5 (
    .i0(\palette[15] ),
    .i1({n17,BORDER[7]}),
    .sel(n19[15]),
    .o(n20));  // ../../rtl/video/video.vhd(223)
  binary_mux_s1_w9 mux6 (
    .i0(\palette[14] ),
    .i1({n17,BORDER[7]}),
    .sel(n19[14]),
    .o(n21));  // ../../rtl/video/video.vhd(223)
  binary_mux_s1_w9 mux7 (
    .i0(\palette[13] ),
    .i1({n17,BORDER[7]}),
    .sel(n19[13]),
    .o(n22));  // ../../rtl/video/video.vhd(223)
  binary_mux_s1_w9 mux8 (
    .i0(\palette[12] ),
    .i1({n17,BORDER[7]}),
    .sel(n19[12]),
    .o(n23));  // ../../rtl/video/video.vhd(223)
  binary_mux_s1_w9 mux9 (
    .i0(\palette[11] ),
    .i1({n17,BORDER[7]}),
    .sel(n19[11]),
    .o(n24));  // ../../rtl/video/video.vhd(223)
  reg_ar_as_w9 reg0 (
    .clk(CLK2X),
    .d(n38),
    .reset({RESET,RESET,RESET,1'b0,RESET,RESET,RESET,RESET,RESET}),
    .set({3'b000,RESET,5'b00000}),
    .q(\palette[2] ));  // ../../rtl/video/video.vhd(225)
  reg_ar_as_w9 reg1 (
    .clk(CLK2X),
    .d(n39),
    .reset({RESET,RESET,RESET,1'b0,RESET,RESET,1'b0,RESET,RESET}),
    .set({3'b000,RESET,2'b00,RESET,2'b00}),
    .q(\palette[3] ));  // ../../rtl/video/video.vhd(225)
  reg_ar_as_w9 reg10 (
    .clk(CLK2X),
    .d(n48),
    .reset({2'b00,RESET,RESET,RESET,RESET,RESET,RESET,RESET}),
    .set({RESET,RESET,7'b0000000}),
    .q(\palette[12] ));  // ../../rtl/video/video.vhd(225)
  reg_ar_as_w9 reg11 (
    .clk(CLK2X),
    .d(n49),
    .reset({2'b00,RESET,RESET,RESET,RESET,2'b00,RESET}),
    .set({RESET,RESET,4'b0000,RESET,RESET,1'b0}),
    .q(\palette[13] ));  // ../../rtl/video/video.vhd(225)
  reg_ar_as_w9 reg12 (
    .clk(CLK2X),
    .d(n50),
    .reset({2'b00,RESET,2'b00,RESET,RESET,RESET,RESET}),
    .set({RESET,RESET,1'b0,RESET,RESET,4'b0000}),
    .q(\palette[14] ));  // ../../rtl/video/video.vhd(225)
  reg_ar_as_w9 reg13 (
    .clk(CLK2X),
    .d(n51),
    .reset({2'b00,RESET,2'b00,RESET,2'b00,RESET}),
    .set({RESET,RESET,1'b0,RESET,RESET,1'b0,RESET,RESET,1'b0}),
    .q(\palette[15] ));  // ../../rtl/video/video.vhd(225)
  reg_ar_as_w9 reg14 (
    .clk(CLK2X),
    .d(n36),
    .reset({RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET}),
    .set(9'b000000000),
    .q(\palette[0] ));  // ../../rtl/video/video.vhd(225)
  reg_ar_as_w9 reg15 (
    .clk(CLK2X),
    .d(n37),
    .reset({RESET,RESET,RESET,RESET,RESET,RESET,1'b0,RESET,RESET}),
    .set({6'b000000,RESET,2'b00}),
    .q(\palette[1] ));  // ../../rtl/video/video.vhd(225)
  reg_ar_as_w9 reg2 (
    .clk(CLK2X),
    .d(n40),
    .reset({1'b0,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET}),
    .set({RESET,8'b00000000}),
    .q(\palette[4] ));  // ../../rtl/video/video.vhd(225)
  reg_ar_as_w9 reg3 (
    .clk(CLK2X),
    .d(n41),
    .reset({1'b0,RESET,RESET,RESET,RESET,RESET,1'b0,RESET,RESET}),
    .set({RESET,5'b00000,RESET,2'b00}),
    .q(\palette[5] ));  // ../../rtl/video/video.vhd(225)
  reg_ar_as_w9 reg4 (
    .clk(CLK2X),
    .d(n42),
    .reset({1'b0,RESET,RESET,1'b0,RESET,RESET,RESET,RESET,RESET}),
    .set({RESET,2'b00,RESET,5'b00000}),
    .q(\palette[6] ));  // ../../rtl/video/video.vhd(225)
  reg_ar_as_w9 reg5 (
    .clk(CLK2X),
    .d(n43),
    .reset({1'b0,RESET,RESET,1'b0,RESET,RESET,1'b0,RESET,RESET}),
    .set({RESET,2'b00,RESET,2'b00,RESET,2'b00}),
    .q(\palette[7] ));  // ../../rtl/video/video.vhd(225)
  reg_ar_as_w9 reg6 (
    .clk(CLK2X),
    .d(n44),
    .reset({RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET,RESET}),
    .set(9'b000000000),
    .q(\palette[8] ));  // ../../rtl/video/video.vhd(225)
  reg_ar_as_w9 reg7 (
    .clk(CLK2X),
    .d(n45),
    .reset({RESET,RESET,RESET,RESET,RESET,RESET,2'b00,RESET}),
    .set({6'b000000,RESET,RESET,1'b0}),
    .q(\palette[9] ));  // ../../rtl/video/video.vhd(225)
  reg_ar_as_w9 reg8 (
    .clk(CLK2X),
    .d(n46),
    .reset({RESET,RESET,RESET,2'b00,RESET,RESET,RESET,RESET}),
    .set({3'b000,RESET,RESET,4'b0000}),
    .q(\palette[10] ));  // ../../rtl/video/video.vhd(225)
  reg_ar_as_w9 reg9 (
    .clk(CLK2X),
    .d(n47),
    .reset({RESET,RESET,RESET,2'b00,RESET,2'b00,RESET}),
    .set({3'b000,RESET,RESET,1'b0,RESET,RESET,1'b0}),
    .q(\palette[11] ));  // ../../rtl/video/video.vhd(225)
  AL_MUX u10 (
    .i0(pFF_CS_spec),
    .i1(pFF_CS_profi),
    .sel(DS80),
    .o(pFF_CS));  // ../../rtl/video/video.vhd(203)
  buf u11 (VIDEO_B[1], palette_grb_reg[1]);  // ../../rtl/video/video.vhd(249)
  buf u12 (VIDEO_G[1], palette_grb_reg[7]);  // ../../rtl/video/video.vhd(248)
  buf u13 (VIDEO_B[2], palette_grb_reg[2]);  // ../../rtl/video/video.vhd(249)
  and u14 (n16, CLK, palette_wr);  // ../../rtl/video/video.vhd(222)
  not u15 (n17[0], BUS_A[8]);  // ../../rtl/video/video.vhd(223)
  xor u16 (n18[0], BORDER[0], 1'b1);  // ../../rtl/video/video.vhd(223)
  buf u17 (VIDEO_B[0], palette_grb_reg[0]);  // ../../rtl/video/video.vhd(249)
  buf u18 (VIDEO_R[2], palette_grb_reg[5]);  // ../../rtl/video/video.vhd(247)
  not u19 (n14, n18[0]);  // ../../rtl/video/video.vhd(223)
  buf u2 (VIDEO_R[1], palette_grb_reg[4]);  // ../../rtl/video/video.vhd(247)
  not u20 (n52, BUS_WR_N);  // ../../rtl/video/video.vhd(229)
  not u21 (n53, RESET);  // ../../rtl/video/video.vhd(229)
  and u22 (n54, CS7E, n52);  // ../../rtl/video/video.vhd(229)
  and u23 (n55, n54, DS80);  // ../../rtl/video/video.vhd(229)
  and u24 (palette_wr, n55, n53);  // ../../rtl/video/video.vhd(229)
  xor u25 (n56, palette_grb[6], palette_grb[0]);  // ../../rtl/video/video.vhd(235)
  AL_MUX u26 (
    .i0(1'b1),
    .i1(n56),
    .sel(DS80),
    .o(GX0));  // ../../rtl/video/video.vhd(235)
  and u27 (n57, blank_profi, DS80);  // ../../rtl/video/video.vhd(240)
  buf u28 (palette_a[0], rgb[0]);  // ../../rtl/video/video.vhd(228)
  buf u29 (VIDEO_R[0], palette_grb_reg[3]);  // ../../rtl/video/video.vhd(247)
  buf u3 (VIDEO_G[2], palette_grb_reg[8]);  // ../../rtl/video/video.vhd(248)
  buf u30 (VIDEO_G[0], palette_grb_reg[6]);  // ../../rtl/video/video.vhd(248)
  buf u31 (palette_a[1], rgb[2]);  // ../../rtl/video/video.vhd(228)
  buf u32 (palette_a[2], rgb[1]);  // ../../rtl/video/video.vhd(228)
  buf u33 (palette_a[3], i);  // ../../rtl/video/video.vhd(228)
  not u34 (n12, n18[1]);  // ../../rtl/video/video.vhd(223)
  not u35 (n13, n18[2]);  // ../../rtl/video/video.vhd(223)
  not u36 (n15, n18[3]);  // ../../rtl/video/video.vhd(223)
  and u37 (n11, n14, n18[1]);  // ../../rtl/video/video.vhd(223)
  and u38 (n10, n14, n12);  // ../../rtl/video/video.vhd(223)
  and u39 (n9, n18[0], n18[1]);  // ../../rtl/video/video.vhd(223)
  AL_MUX u4 (
    .i0(int_spec),
    .i1(int_profi),
    .sel(DS80),
    .o(INT));  // ../../rtl/video/video.vhd(188)
  and u40 (n8, n18[0], n12);  // ../../rtl/video/video.vhd(223)
  and u41 (n7, n10, n18[2]);  // ../../rtl/video/video.vhd(223)
  and u42 (n6, n10, n13);  // ../../rtl/video/video.vhd(223)
  and u43 (n5, n8, n18[2]);  // ../../rtl/video/video.vhd(223)
  and u44 (n4, n8, n13);  // ../../rtl/video/video.vhd(223)
  and u45 (n3, n11, n18[2]);  // ../../rtl/video/video.vhd(223)
  and u46 (n2, n11, n13);  // ../../rtl/video/video.vhd(223)
  and u47 (n1, n9, n18[2]);  // ../../rtl/video/video.vhd(223)
  and u48 (n0, n9, n13);  // ../../rtl/video/video.vhd(223)
  and u49 (n19[8], n6, n18[3]);  // ../../rtl/video/video.vhd(223)
  AL_MUX u5 (
    .i0(i_spec),
    .i1(i_profi),
    .sel(DS80),
    .o(i));  // ../../rtl/video/video.vhd(191)
  and u50 (n19[0], n6, n15);  // ../../rtl/video/video.vhd(223)
  and u51 (n19[9], n4, n18[3]);  // ../../rtl/video/video.vhd(223)
  and u52 (n19[1], n4, n15);  // ../../rtl/video/video.vhd(223)
  and u53 (n19[10], n2, n18[3]);  // ../../rtl/video/video.vhd(223)
  and u54 (n19[2], n2, n15);  // ../../rtl/video/video.vhd(223)
  and u55 (n19[11], n0, n18[3]);  // ../../rtl/video/video.vhd(223)
  and u56 (n19[3], n0, n15);  // ../../rtl/video/video.vhd(223)
  and u57 (n19[12], n7, n18[3]);  // ../../rtl/video/video.vhd(223)
  and u58 (n19[4], n7, n15);  // ../../rtl/video/video.vhd(223)
  and u59 (n19[13], n5, n18[3]);  // ../../rtl/video/video.vhd(223)
  AL_MUX u6 (
    .i0(hsync_spec),
    .i1(hsync_profi),
    .sel(DS80),
    .o(HSYNC));  // ../../rtl/video/video.vhd(193)
  and u60 (n19[5], n5, n15);  // ../../rtl/video/video.vhd(223)
  and u61 (n19[14], n3, n18[3]);  // ../../rtl/video/video.vhd(223)
  and u62 (n19[6], n3, n15);  // ../../rtl/video/video.vhd(223)
  and u63 (n19[15], n1, n18[3]);  // ../../rtl/video/video.vhd(223)
  and u64 (n19[7], n1, n15);  // ../../rtl/video/video.vhd(223)
  xor u65 (n18[1], BORDER[1], 1'b1);  // ../../rtl/video/video.vhd(223)
  xor u66 (n18[2], BORDER[2], 1'b1);  // ../../rtl/video/video.vhd(223)
  xor u67 (n18[3], BORDER[3], 1'b1);  // ../../rtl/video/video.vhd(223)
  not u68 (n17[1], BUS_A[9]);  // ../../rtl/video/video.vhd(223)
  not u69 (n17[2], BUS_A[10]);  // ../../rtl/video/video.vhd(223)
  AL_MUX u7 (
    .i0(vsync_spec),
    .i1(vsync_profi),
    .sel(DS80),
    .o(VSYNC));  // ../../rtl/video/video.vhd(194)
  not u70 (n17[3], BUS_A[11]);  // ../../rtl/video/video.vhd(223)
  not u71 (n17[4], BUS_A[12]);  // ../../rtl/video/video.vhd(223)
  not u72 (n17[5], BUS_A[13]);  // ../../rtl/video/video.vhd(223)
  not u73 (n17[6], BUS_A[14]);  // ../../rtl/video/video.vhd(223)
  not u74 (n17[7], BUS_A[15]);  // ../../rtl/video/video.vhd(223)
  AL_MUX u8 (
    .i0(ispaper_spec),
    .i1(ispaper_profi),
    .sel(DS80),
    .o(ISPAPER));  // ../../rtl/video/video.vhd(198)
  AL_MUX u9 (
    .i0(1'b0),
    .i1(vidrd_profi),
    .sel(DS80),
    .o(VID_RD2));  // ../../rtl/video/video.vhd(200)

endmodule 

module overlay  // ../../rtl/video/overlay.vhd(6)
  (
  BLINK,
  CLK,
  CLK2,
  CLK4,
  DS80,
  HCNT_I,
  OSD_COMMAND,
  OSD_ICONS,
  OSD_OVERLAY,
  OSD_POPUP,
  PAPER_I,
  RGB_I,
  STATUS_CF,
  STATUS_FD,
  STATUS_SD,
  VCNT_I,
  RGB_O
  );

  input BLINK;  // ../../rtl/video/overlay.vhd(17)
  input CLK;  // ../../rtl/video/overlay.vhd(8)
  input CLK2;  // ../../rtl/video/overlay.vhd(9)
  input CLK4;  // ../../rtl/video/overlay.vhd(10)
  input DS80;  // ../../rtl/video/overlay.vhd(13)
  input [9:0] HCNT_I;  // ../../rtl/video/overlay.vhd(14)
  input [15:0] OSD_COMMAND;  // ../../rtl/video/overlay.vhd(26)
  input OSD_ICONS;  // ../../rtl/video/overlay.vhd(22)
  input OSD_OVERLAY;  // ../../rtl/video/overlay.vhd(24)
  input OSD_POPUP;  // ../../rtl/video/overlay.vhd(25)
  input PAPER_I;  // ../../rtl/video/overlay.vhd(16)
  input [8:0] RGB_I;  // ../../rtl/video/overlay.vhd(11)
  input STATUS_CF;  // ../../rtl/video/overlay.vhd(20)
  input STATUS_FD;  // ../../rtl/video/overlay.vhd(21)
  input STATUS_SD;  // ../../rtl/video/overlay.vhd(19)
  input [8:0] VCNT_I;  // ../../rtl/video/overlay.vhd(15)
  output [8:0] RGB_O;  // ../../rtl/video/overlay.vhd(12)

  wire [9:0] addr_read;  // ../../rtl/video/overlay.vhd(48)
  wire [9:0] addr_write;  // ../../rtl/video/overlay.vhd(49)
  wire [7:0] attr;  // ../../rtl/video/overlay.vhd(35)
  wire [7:0] attr2;  // ../../rtl/video/overlay.vhd(35)
  wire [2:0] bit_addr;  // ../../rtl/video/overlay.vhd(42)
  wire [7:0] char_buf;  // ../../rtl/video/overlay.vhd(61)
  wire [2:0] char_x;  // ../../rtl/video/overlay.vhd(37)
  wire [2:0] char_y;  // ../../rtl/video/overlay.vhd(38)
  wire [7:0] font_reg;  // ../../rtl/video/overlay.vhd(44)
  wire [7:0] font_word;  // ../../rtl/video/overlay.vhd(43)
  wire [9:0] hcnt;  // ../../rtl/video/overlay.vhd(65)
  wire [15:0] last_osd_command;  // ../../rtl/video/overlay.vhd(60)
  wire [10:0] n0;
  wire [7:0] n10;
  wire [9:0] n11;
  wire [9:0] n12;
  wire [7:0] n13;
  wire [7:0] n14;
  wire [9:0] n15;
  wire [7:0] n16;
  wire [7:0] n17;
  wire [9:0] n18;
  wire [7:0] n19;
  wire [7:0] n20;
  wire [9:0] n7;
  wire [8:0] n72;
  wire [8:0] n73;
  wire [9:0] n8;
  wire [9:0] n80;
  wire [7:0] n81;
  wire [15:0] n82;
  wire [15:0] n83;
  wire [9:0] n85;
  wire [7:0] n86;
  wire [15:0] n87;
  wire [7:0] n9;
  wire [8:0] rgb;  // ../../rtl/video/overlay.vhd(33)
  wire [8:0] rgb_bg;  // ../../rtl/video/overlay.vhd(57)
  wire [8:0] rgb_fg;  // ../../rtl/video/overlay.vhd(56)
  wire [10:0] rom_addr;  // ../../rtl/video/overlay.vhd(40)
  wire [3:0] selector;  // ../../rtl/video/overlay.vhd(59)
  wire [8:0] vcnt;  // ../../rtl/video/overlay.vhd(66)
  wire [15:0] vram_di;  // ../../rtl/video/overlay.vhd(50)
  wire [15:0] vram_do;  // ../../rtl/video/overlay.vhd(51)
  wire flash;  // ../../rtl/video/overlay.vhd(54)
  wire is_flash;  // ../../rtl/video/overlay.vhd(55)
  wire n1;
  wire n2;
  wire n21;
  wire n22;
  wire n23;
  wire n24;
  wire n25;
  wire n26;
  wire n27;
  wire n28;
  wire n29;
  wire n3;
  wire n30;
  wire n31;
  wire n32;
  wire n33;
  wire n34;
  wire n35;
  wire n36;
  wire n37;
  wire n38;
  wire n39;
  wire n4;
  wire n40;
  wire n41;
  wire n42;
  wire n43;
  wire n44;
  wire n45;
  wire n46;
  wire n47;
  wire n48;
  wire n49;
  wire n5;
  wire n50;
  wire n51;
  wire n52;
  wire n53;
  wire n54;
  wire n55;
  wire n56;
  wire n57;
  wire n58;
  wire n59;
  wire n6;
  wire n60;
  wire n61;
  wire n62;
  wire n63;
  wire n64;
  wire n65;
  wire n66;
  wire n67;
  wire n68;
  wire n69;
  wire n70;
  wire n71;
  wire n74;
  wire n75;
  wire n76;
  wire n77;
  wire n78;
  wire n79;
  wire n84;
  wire paper;  // ../../rtl/video/overlay.vhd(62)
  wire paper2;  // ../../rtl/video/overlay.vhd(63)
  wire pixel;  // ../../rtl/video/overlay.vhd(45)
  wire pixel_reg_al_n0;  // ../../rtl/video/overlay.vhd(46)
  wire video_on;  // ../../rtl/video/overlay.vhd(32)
  wire vram_wr;  // ../../rtl/video/overlay.vhd(52)

  rom_font1 U_FONT (
    .addra(rom_addr),
    .clka(CLK2),
    .rsta(1'b0),
    .doa(font_word));  // ../../rtl/video/overlay.vhd(75)
  icons U_ICONS (
    .CLK(CLK),
    .CLK2(CLK2),
    .CLK4(CLK4),
    .DS80(DS80),
    .HCNT(hcnt),
    .OSD_ICONS(OSD_ICONS),
    .RGB_I(RGB_I),
    .STATUS_CF(STATUS_CF),
    .STATUS_FD(STATUS_FD),
    .STATUS_SD(STATUS_SD),
    .VCNT(vcnt),
    .RGB_O(rgb));  // ../../rtl/video/overlay.vhd(84)
  screen1 U_VRAM (
    .addra(addr_write),
    .addrb(addr_read),
    .clka(CLK),
    .clkb(CLK2),
    .dia(vram_di),
    .dib(16'b1111111111111111),
    .wea(vram_wr),
    .web(1'b0),
    .dob(vram_do));  // ../../rtl/video/overlay.vhd(102)
  eq_w4 eq0 (
    .i0(hcnt[3:0]),
    .i1(4'b1111),
    .o(n21));
  eq_w3 eq1 (
    .i0(char_x),
    .i1(3'b111),
    .o(n23));
  eq_w4 eq10 (
    .i0(attr[3:0]),
    .i1(4'b0001),
    .o(is_flash));
  eq_w4 eq11 (
    .i0(selector),
    .i1(4'b1111),
    .o(n56));
  eq_w4 eq12 (
    .i0(selector),
    .i1(4'b1001),
    .o(n57));
  eq_w4 eq13 (
    .i0(selector),
    .i1(4'b1100),
    .o(n58));
  eq_w4 eq14 (
    .i0(selector),
    .i1(4'b1110),
    .o(n59));
  eq_w4 eq15 (
    .i0(selector),
    .i1(4'b1011),
    .o(n64));
  eq_w4 eq16 (
    .i0(selector),
    .i1(4'b1101),
    .o(n65));
  eq_w4 eq17 (
    .i0(selector),
    .i1(4'b1000),
    .o(n66));
  eq_w4 eq18 (
    .i0(selector),
    .i1(4'b1010),
    .o(n67));
  eq_w8 eq19 (
    .i0(8'b00010000),
    .i1(OSD_COMMAND[15:8]),
    .o(n75));  // ../../rtl/video/overlay.vhd(219)
  eq_w3 eq2 (
    .i0(bit_addr),
    .i1(3'b000),
    .o(n33));
  eq_w8 eq20 (
    .i0(8'b00010001),
    .i1(OSD_COMMAND[15:8]),
    .o(n76));  // ../../rtl/video/overlay.vhd(220)
  eq_w8 eq21 (
    .i0(8'b00010010),
    .i1(OSD_COMMAND[15:8]),
    .o(n77));  // ../../rtl/video/overlay.vhd(221)
  eq_w8 eq22 (
    .i0(8'b00010011),
    .i1(OSD_COMMAND[15:8]),
    .o(n78));  // ../../rtl/video/overlay.vhd(222)
  eq_w3 eq3 (
    .i0(bit_addr),
    .i1(3'b001),
    .o(n34));
  eq_w3 eq4 (
    .i0(bit_addr),
    .i1(3'b010),
    .o(n35));
  eq_w3 eq5 (
    .i0(bit_addr),
    .i1(3'b011),
    .o(n36));
  eq_w3 eq6 (
    .i0(bit_addr),
    .i1(3'b100),
    .o(n37));
  eq_w3 eq7 (
    .i0(bit_addr),
    .i1(3'b101),
    .o(n38));
  eq_w3 eq8 (
    .i0(bit_addr),
    .i1(3'b110),
    .o(n39));
  eq_w3 eq9 (
    .i0(bit_addr),
    .i1(3'b111),
    .o(n40));
  lt_u10_u10 lt0 (
    .ci(1'b0),
    .i0(hcnt),
    .i1(10'b0100000000),
    .o(n1));
  lt_u9_u9 lt1 (
    .ci(1'b0),
    .i0(vcnt),
    .i1(9'b011000000),
    .o(n2));
  lt_u10_u10 lt2 (
    .ci(1'b1),
    .i0(10'b0000001000),
    .i1(hcnt),
    .o(n3));
  lt_u10_u10 lt3 (
    .ci(1'b0),
    .i0(hcnt),
    .i1(10'b0100001000),
    .o(n4));
  binary_mux_s1_w10 mux0 (
    .i0(HCNT_I),
    .i1({1'b0,HCNT_I[9:1]}),
    .sel(DS80),
    .o(hcnt));  // ../../rtl/video/overlay.vhd(118)
  binary_mux_s1_w9 mux1 (
    .i0(VCNT_I),
    .i1(n0[8:0]),
    .sel(DS80),
    .o(vcnt));  // ../../rtl/video/overlay.vhd(119)
  binary_mux_s3_w8 mux10 (
    .i0(attr2),
    .i1(attr2),
    .i2(attr2),
    .i3(attr2),
    .i4(attr2),
    .i5(attr2),
    .i6(attr2),
    .i7(vram_do[7:0]),
    .sel(char_x),
    .o(n13));  // ../../rtl/video/overlay.vhd(164)
  binary_mux_s3_w8 mux11 (
    .i0(attr2),
    .i1(attr),
    .i2(attr),
    .i3(attr),
    .i4(attr),
    .i5(attr),
    .i6(attr),
    .i7(attr),
    .sel(char_x),
    .o(n14));  // ../../rtl/video/overlay.vhd(164)
  binary_mux_s1_w10 mux12 (
    .i0(n12),
    .i1(n8),
    .sel(OSD_POPUP),
    .o(n15));  // ../../rtl/video/overlay.vhd(165)
  binary_mux_s1_w8 mux13 (
    .i0(n13),
    .i1(n9),
    .sel(OSD_POPUP),
    .o(n16));  // ../../rtl/video/overlay.vhd(165)
  binary_mux_s1_w8 mux14 (
    .i0(n14),
    .i1(n10),
    .sel(OSD_POPUP),
    .o(n17));  // ../../rtl/video/overlay.vhd(165)
  binary_mux_s1_w10 mux15 (
    .i0(addr_read),
    .i1(n15),
    .sel(n6),
    .o(n18));  // ../../rtl/video/overlay.vhd(166)
  binary_mux_s1_w8 mux16 (
    .i0(attr2),
    .i1(n16),
    .sel(n6),
    .o(n19));  // ../../rtl/video/overlay.vhd(166)
  binary_mux_s1_w8 mux17 (
    .i0(attr),
    .i1(n17),
    .sel(n6),
    .o(n20));  // ../../rtl/video/overlay.vhd(166)
  binary_mux_s1_w9 mux18 (
    .i0(rgb),
    .i1({2'b00,rgb[8],2'b00,rgb[5],2'b00,rgb[2]}),
    .sel(video_on),
    .o(n72));  // ../../rtl/video/overlay.vhd(208)
  binary_mux_s1_w9 mux19 (
    .i0(n72),
    .i1({rgb_bg[8:7],rgb[8],rgb_bg[5:4],rgb[5],rgb_bg[2:1],rgb[2]}),
    .sel(n71),
    .o(n73));  // ../../rtl/video/overlay.vhd(207)
  binary_mux_s1_w3 mux2 (
    .i0(hcnt[2:0]),
    .i1(hcnt[3:1]),
    .sel(OSD_POPUP),
    .o(char_x));  // ../../rtl/video/overlay.vhd(121)
  binary_mux_s1_w9 mux20 (
    .i0(n73),
    .i1(rgb_fg),
    .sel(n63),
    .o(RGB_O));  // ../../rtl/video/overlay.vhd(209)
  binary_mux_s1_w16 mux21 (
    .i0(last_osd_command),
    .i1(OSD_COMMAND),
    .sel(n74),
    .o(n83));  // ../../rtl/video/overlay.vhd(225)
  binary_mux_s1_w10 mux22 (
    .i0(addr_write),
    .i1(n80),
    .sel(n74),
    .o(n85));  // ../../rtl/video/overlay.vhd(225)
  binary_mux_s1_w8 mux23 (
    .i0(char_buf),
    .i1(n81),
    .sel(n74),
    .o(n86));  // ../../rtl/video/overlay.vhd(225)
  binary_mux_s1_w16 mux24 (
    .i0(vram_di),
    .i1(n82),
    .sel(n74),
    .o(n87));  // ../../rtl/video/overlay.vhd(225)
  binary_mux_s1_w3 mux3 (
    .i0(vcnt[2:0]),
    .i1(vcnt[3:1]),
    .sel(OSD_POPUP),
    .o(char_y));  // ../../rtl/video/overlay.vhd(122)
  binary_mux_s1_w10 mux4 (
    .i0(addr_read),
    .i1({vcnt[8:4],hcnt[8:4]}),
    .sel(paper2),
    .o(n7));  // ../../rtl/video/overlay.vhd(141)
  binary_mux_s4_w10 mux5 (
    .i0(addr_read),
    .i1(addr_read),
    .i10(addr_read),
    .i11(addr_read),
    .i12(addr_read),
    .i13(addr_read),
    .i14(n7),
    .i15(addr_read),
    .i2(addr_read),
    .i3(addr_read),
    .i4(addr_read),
    .i5(addr_read),
    .i6(addr_read),
    .i7(addr_read),
    .i8(addr_read),
    .i9(addr_read),
    .sel(hcnt[3:0]),
    .o(n8));  // ../../rtl/video/overlay.vhd(149)
  binary_mux_s4_w8 mux6 (
    .i0(attr2),
    .i1(attr2),
    .i10(attr2),
    .i11(attr2),
    .i12(attr2),
    .i13(attr2),
    .i14(attr2),
    .i15(vram_do[7:0]),
    .i2(attr2),
    .i3(attr2),
    .i4(attr2),
    .i5(attr2),
    .i6(attr2),
    .i7(attr2),
    .i8(attr2),
    .i9(attr2),
    .sel(hcnt[3:0]),
    .o(n9));  // ../../rtl/video/overlay.vhd(149)
  binary_mux_s4_w8 mux7 (
    .i0(attr2),
    .i1(attr),
    .i10(attr),
    .i11(attr),
    .i12(attr),
    .i13(attr),
    .i14(attr),
    .i15(attr),
    .i2(attr),
    .i3(attr),
    .i4(attr),
    .i5(attr),
    .i6(attr),
    .i7(attr),
    .i8(attr),
    .i9(attr),
    .sel(hcnt[3:0]),
    .o(n10));  // ../../rtl/video/overlay.vhd(149)
  binary_mux_s1_w10 mux8 (
    .i0(addr_read),
    .i1({vcnt[7:3],hcnt[7:3]}),
    .sel(paper2),
    .o(n11));  // ../../rtl/video/overlay.vhd(156)
  binary_mux_s3_w10 mux9 (
    .i0(addr_read),
    .i1(addr_read),
    .i2(addr_read),
    .i3(addr_read),
    .i4(addr_read),
    .i5(addr_read),
    .i6(n11),
    .i7(addr_read),
    .sel(char_x),
    .o(n12));  // ../../rtl/video/overlay.vhd(164)
  ne_w16 neq0 (
    .i0(OSD_COMMAND),
    .i1(last_osd_command),
    .o(n74));
  AL_LATCH pixel_reg (
    .clk(n54),
    .d(n53),
    .reset(1'b0),
    .set(1'b0),
    .q(pixel));  // ../../rtl/video/overlay.vhd(181)
  AL_DFF pixel_reg_reg (
    .clk(CLK),
    .d(n55),
    .reset(1'b0),
    .set(1'b0),
    .q(pixel_reg_al_n0));  // ../../rtl/video/overlay.vhd(197)
  reg_ar_as_w8 reg0 (
    .clk(CLK),
    .d(n19),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(attr2));  // ../../rtl/video/overlay.vhd(167)
  reg_ar_as_w8 reg1 (
    .clk(CLK),
    .d(n20),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(attr));  // ../../rtl/video/overlay.vhd(167)
  latch_ar_as_w11 reg2 (
    .clk(n26),
    .d({vram_do[15:8],char_y}),
    .reset(11'b00000000000),
    .set(11'b00000000000),
    .q(rom_addr));  // ../../rtl/video/overlay.vhd(171)
  reg_ar_as_w16 reg3 (
    .clk(CLK),
    .d(n83),
    .reset(16'b0000000000000000),
    .set(16'b0000000000000000),
    .q(last_osd_command));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w10 reg4 (
    .clk(CLK),
    .d(n85),
    .reset(10'b0000000000),
    .set(10'b0000000000),
    .q(addr_write));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w8 reg5 (
    .clk(CLK),
    .d(n86),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(char_buf));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w16 reg6 (
    .clk(CLK),
    .d(n87),
    .reset(16'b0000000000000000),
    .set(16'b0000000000000000),
    .q(vram_di));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w10 reg7 (
    .clk(CLK),
    .d(n18),
    .reset(10'b0000000000),
    .set(10'b0000000000),
    .q(addr_read));  // ../../rtl/video/overlay.vhd(167)
  onehot_mux_s5_w10 sel0 (
    .i0(addr_write),
    .i1(addr_write),
    .i2(addr_write),
    .i3({OSD_COMMAND[4:0],addr_write[4:0]}),
    .i4({addr_write[9:5],OSD_COMMAND[4:0]}),
    .sel({n75,n76,n77,n78,n79}),
    .o(n80));  // ../../rtl/video/overlay.vhd(224)
  onehot_mux_s5_w8 sel1 (
    .i0(char_buf),
    .i1(char_buf),
    .i2(OSD_COMMAND[7:0]),
    .i3(char_buf),
    .i4(char_buf),
    .sel({n75,n76,n77,n78,n79}),
    .o(n81));  // ../../rtl/video/overlay.vhd(224)
  onehot_mux_s5_w16 sel2 (
    .i0(vram_di),
    .i1({char_buf,OSD_COMMAND[7:0]}),
    .i2(vram_di),
    .i3(vram_di),
    .i4(vram_di),
    .sel({n75,n76,n77,n78,n79}),
    .o(n82));  // ../../rtl/video/overlay.vhd(224)
  add_pu11_mu11_o11 sub0 (
    .i0({2'b00,VCNT_I}),
    .i1(11'b00000011000),
    .o({open_n24,open_n25,n0[8:0]}));
  and u10 (rgb_fg[2], attr[5], attr[4]);  // ../../rtl/video/overlay.vhd(203)
  and u11 (n22, n21, OSD_POPUP);  // ../../rtl/video/overlay.vhd(171)
  not u12 (n24, OSD_POPUP);  // ../../rtl/video/overlay.vhd(172)
  and u13 (n25, n23, n24);  // ../../rtl/video/overlay.vhd(172)
  or u14 (n26, n22, n25);  // ../../rtl/video/overlay.vhd(173)
  and u15 (rgb_fg[5], attr[6], attr[4]);  // ../../rtl/video/overlay.vhd(203)
  buf u16 (selector[2], pixel_reg_al_n0);  // ../../rtl/video/overlay.vhd(202)
  and u17 (rgb_fg[8], attr[7], attr[4]);  // ../../rtl/video/overlay.vhd(203)
  buf u18 (selector[1], flash);  // ../../rtl/video/overlay.vhd(202)
  or u19 (n31, n76, n75);  // ../../rtl/video/overlay.vhd(224)
  buf u2 (flash, BLINK);  // ../../rtl/video/overlay.vhd(117)
  buf u20 (rgb_fg[7], attr[7]);  // ../../rtl/video/overlay.vhd(203)
  or u21 (n30, n32, n31);  // ../../rtl/video/overlay.vhd(224)
  buf u22 (rgb_fg[6], attr[7]);  // ../../rtl/video/overlay.vhd(203)
  not u23 (n79, n30);  // ../../rtl/video/overlay.vhd(224)
  buf u24 (rgb_fg[4], attr[6]);  // ../../rtl/video/overlay.vhd(203)
  buf u25 (rgb_bg[1], attr[1]);  // ../../rtl/video/overlay.vhd(204)
  buf u26 (rgb_fg[3], attr[6]);  // ../../rtl/video/overlay.vhd(203)
  buf u27 (n28, attr[2]);  // ../../rtl/video/overlay.vhd(204)
  buf u28 (rgb_fg[1], attr[5]);  // ../../rtl/video/overlay.vhd(203)
  buf u29 (rgb_bg[4], attr[2]);  // ../../rtl/video/overlay.vhd(204)
  and u3 (paper2, n1, n2);  // ../../rtl/video/overlay.vhd(124)
  and u30 (rgb_bg[8], attr[3], attr[0]);  // ../../rtl/video/overlay.vhd(204)
  buf u31 (n27, attr[3]);  // ../../rtl/video/overlay.vhd(204)
  and u32 (rgb_bg[5], attr[2], attr[0]);  // ../../rtl/video/overlay.vhd(204)
  buf u33 (rgb_bg[7], attr[3]);  // ../../rtl/video/overlay.vhd(204)
  buf u34 (font_reg[7], font_word[7]);  // ../../rtl/video/overlay.vhd(176)
  buf u35 (font_reg[0], font_word[0]);  // ../../rtl/video/overlay.vhd(176)
  AL_MUX u36 (
    .i0(font_reg[0]),
    .i1(font_reg[1]),
    .sel(n39),
    .o(n41));  // ../../rtl/video/overlay.vhd(188)
  or u37 (n42, n39, n40);  // ../../rtl/video/overlay.vhd(188)
  AL_MUX u38 (
    .i0(n41),
    .i1(font_reg[2]),
    .sel(n38),
    .o(n43));  // ../../rtl/video/overlay.vhd(187)
  or u39 (n44, n38, n42);  // ../../rtl/video/overlay.vhd(187)
  buf u4 (selector[3], video_on);  // ../../rtl/video/overlay.vhd(202)
  AL_MUX u40 (
    .i0(n43),
    .i1(font_reg[3]),
    .sel(n37),
    .o(n45));  // ../../rtl/video/overlay.vhd(186)
  or u41 (n46, n37, n44);  // ../../rtl/video/overlay.vhd(186)
  AL_MUX u42 (
    .i0(n45),
    .i1(font_reg[4]),
    .sel(n36),
    .o(n47));  // ../../rtl/video/overlay.vhd(185)
  or u43 (n48, n36, n46);  // ../../rtl/video/overlay.vhd(185)
  AL_MUX u44 (
    .i0(n47),
    .i1(font_reg[5]),
    .sel(n35),
    .o(n49));  // ../../rtl/video/overlay.vhd(184)
  or u45 (n50, n35, n48);  // ../../rtl/video/overlay.vhd(184)
  AL_MUX u46 (
    .i0(n49),
    .i1(font_reg[6]),
    .sel(n34),
    .o(n51));  // ../../rtl/video/overlay.vhd(183)
  or u47 (n52, n34, n50);  // ../../rtl/video/overlay.vhd(183)
  AL_MUX u48 (
    .i0(n51),
    .i1(font_reg[7]),
    .sel(n33),
    .o(n53));  // ../../rtl/video/overlay.vhd(189)
  or u49 (n54, n33, n52);  // ../../rtl/video/overlay.vhd(189)
  and u5 (n5, n3, n4);  // ../../rtl/video/overlay.vhd(125)
  buf u50 (font_reg[1], font_word[1]);  // ../../rtl/video/overlay.vhd(176)
  buf u51 (font_reg[6], font_word[6]);  // ../../rtl/video/overlay.vhd(176)
  buf u52 (font_reg[5], font_word[5]);  // ../../rtl/video/overlay.vhd(176)
  buf u53 (bit_addr[2], char_x[2]);  // ../../rtl/video/overlay.vhd(179)
  AL_MUX u54 (
    .i0(pixel),
    .i1(pixel_reg_al_n0),
    .sel(CLK2),
    .o(n55));  // ../../rtl/video/overlay.vhd(196)
  buf u55 (bit_addr[0], char_x[0]);  // ../../rtl/video/overlay.vhd(179)
  buf u56 (selector[0], is_flash);  // ../../rtl/video/overlay.vhd(202)
  buf u57 (rgb_fg[0], attr[5]);  // ../../rtl/video/overlay.vhd(203)
  and u58 (rgb_bg[2], attr[1], attr[0]);  // ../../rtl/video/overlay.vhd(204)
  or u59 (n60, n56, n57);  // ../../rtl/video/overlay.vhd(206)
  and u6 (paper, n5, n2);  // ../../rtl/video/overlay.vhd(125)
  or u60 (n61, n60, n58);  // ../../rtl/video/overlay.vhd(206)
  or u61 (n62, n61, n59);  // ../../rtl/video/overlay.vhd(206)
  and u62 (n63, paper, n62);  // ../../rtl/video/overlay.vhd(206)
  or u63 (n68, n64, n65);  // ../../rtl/video/overlay.vhd(207)
  or u64 (n69, n68, n66);  // ../../rtl/video/overlay.vhd(207)
  or u65 (n70, n69, n67);  // ../../rtl/video/overlay.vhd(207)
  and u66 (n71, paper, n70);  // ../../rtl/video/overlay.vhd(207)
  buf u67 (bit_addr[1], char_x[1]);  // ../../rtl/video/overlay.vhd(179)
  buf u68 (font_reg[4], font_word[4]);  // ../../rtl/video/overlay.vhd(176)
  buf u69 (font_reg[3], font_word[3]);  // ../../rtl/video/overlay.vhd(176)
  or u7 (video_on, OSD_OVERLAY, OSD_POPUP);  // ../../rtl/video/overlay.vhd(126)
  buf u70 (n29, attr[1]);  // ../../rtl/video/overlay.vhd(204)
  AL_MUX u71 (
    .i0(1'b0),
    .i1(n78),
    .sel(n74),
    .o(n84));  // ../../rtl/video/overlay.vhd(225)
  or u72 (n32, n78, n77);  // ../../rtl/video/overlay.vhd(224)
  buf u8 (font_reg[2], font_word[2]);  // ../../rtl/video/overlay.vhd(176)
  not u9 (n6, CLK2);  // ../../rtl/video/overlay.vhd(133)
  AL_DFF vram_wr_reg (
    .clk(CLK),
    .d(n84),
    .reset(1'b0),
    .set(1'b0),
    .q(vram_wr));  // ../../rtl/video/overlay.vhd(226)

endmodule 

module VGA_PAL  // ../../rtl/video/vga_pal.vhd(18)
  (
  CLK,
  CLK2,
  DS80,
  EN,
  KSI_IN,
  RGB_IN,
  SSI_IN,
  HSYNC_VGA,
  RGB_O,
  VSYNC_VGA
  );

  input CLK;  // ../../rtl/video/vga_pal.vhd(36)
  input CLK2;  // ../../rtl/video/vga_pal.vhd(37)
  input DS80;  // ../../rtl/video/vga_pal.vhd(33)
  input EN;  // ../../rtl/video/vga_pal.vhd(38)
  input KSI_IN;  // ../../rtl/video/vga_pal.vhd(34)
  input [8:0] RGB_IN;  // ../../rtl/video/vga_pal.vhd(32)
  input SSI_IN;  // ../../rtl/video/vga_pal.vhd(35)
  output HSYNC_VGA;  // ../../rtl/video/vga_pal.vhd(46)
  output [8:0] RGB_O;  // ../../rtl/video/vga_pal.vhd(44)
  output VSYNC_VGA;  // ../../rtl/video/vga_pal.vhd(45)

  parameter inverse_f = false;
  parameter inverse_ksi = false;
  parameter inverse_ssi = false;
  wire [8:0] RD_REG;  // ../../rtl/video/vga_pal.vhd(160)
  wire [8:0] RGB;  // ../../rtl/video/vga_pal.vhd(59)
  wire [8:0] VGA_H;  // ../../rtl/video/vga_pal.vhd(79)
  wire [8:0] VGA_H_MAX;  // ../../rtl/video/vga_pal.vhd(81)
  wire [9:0] VGA_SSI1_BGN;  // ../../rtl/video/vga_pal.vhd(82)
  wire [9:0] VGA_SSI1_END;  // ../../rtl/video/vga_pal.vhd(83)
  wire [9:0] VGA_V;  // ../../rtl/video/vga_pal.vhd(95)
  wire [9:0] VIDEO_H;  // ../../rtl/video/vga_pal.vhd(106)
  wire [8:0] VIDEO_V;  // ../../rtl/video/vga_pal.vhd(116)
  wire [8:0] n11;
  wire [8:0] n12;
  wire [9:0] n14;
  wire [9:0] n15;
  wire [8:0] n16;
  wire [9:0] n17;
  wire [9:0] n19;
  wire [9:0] n20;
  wire [8:0] n22;
  wire [8:0] n23;
  wire [8:0] n47;
  wire [8:0] n48;
  wire KSI;  // ../../rtl/video/vga_pal.vhd(62)
  wire KSI_2;  // ../../rtl/video/vga_pal.vhd(70)
  wire RESET_H;  // ../../rtl/video/vga_pal.vhd(141)
  wire RESET_V;  // ../../rtl/video/vga_pal.vhd(142)
  wire RESET_ZONE;  // ../../rtl/video/vga_pal.vhd(140)
  wire SSI;  // ../../rtl/video/vga_pal.vhd(63)
  wire SSI_2;  // ../../rtl/video/vga_pal.vhd(71)
  wire VGA_BLANK;  // ../../rtl/video/vga_pal.vhd(150)
  wire VGA_H0;  // ../../rtl/video/vga_pal.vhd(90)
  wire VGA_KGI;  // ../../rtl/video/vga_pal.vhd(148)
  wire VGA_KSI;  // ../../rtl/video/vga_pal.vhd(130)
  wire VGA_RBGI_CLK;  // ../../rtl/video/vga_pal.vhd(138)
  wire VGA_SGI;  // ../../rtl/video/vga_pal.vhd(149)
  wire VGA_SSI;  // ../../rtl/video/vga_pal.vhd(131)
  wire VGA_V_CLK;  // ../../rtl/video/vga_pal.vhd(94)
  wire VIDEO_V_CLK;  // ../../rtl/video/vga_pal.vhd(115)
  wire n0;
  wire n1;
  wire n10;
  wire n13;
  wire n18;
  wire n2;
  wire n21;
  wire n24;
  wire n25;
  wire n26;
  wire n27;
  wire n28;
  wire n29;
  wire n3;
  wire n30;
  wire n31;
  wire n32;
  wire n33;
  wire n34;
  wire n35;
  wire n36;
  wire n37;
  wire n38;
  wire n39;
  wire n4;
  wire n40;
  wire n41;
  wire n42;
  wire n43;
  wire n44;
  wire n45;
  wire n46;
  wire n5;
  wire n6;
  wire n7;
  wire n8;
  wire n9;

  AL_DFF HSYNC_VGA_reg (
    .clk(CLK),
    .d(n46),
    .reset(1'b0),
    .set(1'b0),
    .q(HSYNC_VGA));  // ../../rtl/video/vga_pal.vhd(482)
  AL_DFF KSI_2_reg (
    .clk(VIDEO_H[8]),
    .d(n5),
    .reset(1'b0),
    .set(1'b0),
    .q(KSI_2));  // ../../rtl/video/vga_pal.vhd(210)
  AL_DFF KSI_reg (
    .clk(VIDEO_H[8]),
    .d(n4),
    .reset(1'b0),
    .set(1'b0),
    .q(KSI));  // ../../rtl/video/vga_pal.vhd(210)
  linebuf LINEBUF (
    .addra({VIDEO_V[0],VIDEO_H}),
    .addrb({n40,VGA_H,VGA_H0}),
    .clka(CLK2),
    .clkb(VGA_RBGI_CLK),
    .dia(RGB),
    .dib(9'b111111111),
    .wea(1'b1),
    .web(1'b0),
    .dob(RD_REG));  // ../../rtl/video/vga_pal.vhd(432)
  AL_DFF SSI_2_reg (
    .clk(CLK),
    .d(n1),
    .reset(1'b0),
    .set(1'b0),
    .q(SSI_2));  // ../../rtl/video/vga_pal.vhd(197)
  AL_DFF SSI_reg (
    .clk(CLK),
    .d(SSI_IN),
    .reset(1'b0),
    .set(1'b0),
    .q(SSI));  // ../../rtl/video/vga_pal.vhd(197)
  AL_DFF VGA_BLANK_reg (
    .clk(CLK),
    .d(n42),
    .reset(1'b0),
    .set(1'b0),
    .q(VGA_BLANK));  // ../../rtl/video/vga_pal.vhd(482)
  AL_DFF VGA_H0_reg (
    .clk(VGA_RBGI_CLK),
    .d(n41),
    .reset(1'b0),
    .set(1'b0),
    .q(VGA_H0));  // ../../rtl/video/vga_pal.vhd(463)
  AL_DFF VSYNC_VGA_reg (
    .clk(CLK),
    .d(n45),
    .reset(1'b0),
    .set(1'b0),
    .q(VSYNC_VGA));  // ../../rtl/video/vga_pal.vhd(482)
  add_pu9_pu9_o9 add0 (
    .i0(VGA_H),
    .i1(9'b000000001),
    .o(n11));
  add_pu10_pu10_o10 add1 (
    .i0(VIDEO_H),
    .i1(10'b0000000001),
    .o(n14));
  add_pu10_pu10_o10 add2 (
    .i0(VGA_V),
    .i1(10'b0000000001),
    .o(n19));
  add_pu9_pu9_o9 add3 (
    .i0(VIDEO_V),
    .i1(9'b000000001),
    .o(n22));
  eq_w9 eq0 (
    .i0(VGA_H),
    .i1({1'b1,VGA_SSI1_END[2],DS80,6'b111111}),
    .o(n10));
  eq_w10 eq1 (
    .i0(VIDEO_H),
    .i1({1'b1,VGA_SSI1_END[2],DS80,7'b1111111}),
    .o(n13));
  lt_u10_u10 lt0 (
    .ci(1'b1),
    .i0(VGA_SSI1_BGN),
    .i1({1'b0,VGA_H}),
    .o(n24));
  lt_u10_u10 lt1 (
    .ci(1'b1),
    .i0({1'b0,VGA_H}),
    .i1({7'b0000100,VGA_SSI1_END[2],2'b10}),
    .o(n25));
  lt_u10_u10 lt2 (
    .ci(1'b1),
    .i0({1'b1,VGA_SSI1_END[2],DS80,3'b111,VGA_SSI1_END[2],DS80,VGA_SSI1_END[2],1'b1}),
    .i1({1'b0,VGA_H}),
    .o(n27));
  lt_u10_u10 lt3 (
    .ci(1'b1),
    .i0({1'b0,VGA_H}),
    .i1({1'b1,VGA_SSI1_END[2],DS80,7'b1111111}),
    .o(n28));
  lt_u10_u10 lt4 (
    .ci(1'b1),
    .i0({1'b0,VGA_H}),
    .i1({3'b000,VGA_SSI1_END[2],DS80,DS80,4'b1001}),
    .o(n31));
  lt_u10_u10 lt5 (
    .ci(1'b1),
    .i0({1'b1,VGA_SSI1_END[2],DS80,1'b1,DS80,VGA_SSI1_END[2],DS80,DS80,2'b01}),
    .i1({1'b0,VGA_H}),
    .o(n32));
  lt_u10_u10 lt6 (
    .ci(1'b1),
    .i0({5'b00000,VGA_SSI1_END[2],DS80,1'b1,DS80,1'b1}),
    .i1(VGA_V),
    .o(n34));
  lt_u10_u10 lt7 (
    .ci(1'b1),
    .i0(VGA_V),
    .i1({7'b0000010,VGA_SSI1_END[2],VGA_SSI1_END[2],1'b0}),
    .o(n35));
  lt_u10_u10 lt8 (
    .ci(1'b1),
    .i0(VGA_V),
    .i1({4'b0000,VGA_SSI1_END[2],1'b0,DS80,DS80,1'b0,VGA_SSI1_END[2]}),
    .o(n37));
  lt_u10_u10 lt9 (
    .ci(1'b1),
    .i0({2'b10,VGA_SSI1_END[2],DS80,DS80,DS80,3'b000,DS80}),
    .i1(VGA_V),
    .o(n38));
  binary_mux_s1_w9 mux0 (
    .i0(n11),
    .i1(9'b000000000),
    .sel(n10),
    .o(n12));  // ../../rtl/video/vga_pal.vhd(247)
  binary_mux_s1_w10 mux1 (
    .i0(n14),
    .i1(10'b0000000000),
    .sel(n13),
    .o(n15));  // ../../rtl/video/vga_pal.vhd(253)
  binary_mux_s1_w9 mux2 (
    .i0(n12),
    .i1(9'b000000000),
    .sel(n9),
    .o(n16));  // ../../rtl/video/vga_pal.vhd(255)
  binary_mux_s1_w10 mux3 (
    .i0(n15),
    .i1(10'b0000000000),
    .sel(n9),
    .o(n17));  // ../../rtl/video/vga_pal.vhd(255)
  binary_mux_s1_w10 mux4 (
    .i0(10'b0000000000),
    .i1(n19),
    .sel(RESET_V),
    .o(n20));  // ../../rtl/video/vga_pal.vhd(274)
  binary_mux_s1_w9 mux5 (
    .i0(9'b000000000),
    .i1(n22),
    .sel(RESET_V),
    .o(n23));  // ../../rtl/video/vga_pal.vhd(283)
  binary_mux_s1_w9 mux6 (
    .i0(9'b000000000),
    .i1(RD_REG),
    .sel(VGA_BLANK),
    .o(n47));  // ../../rtl/video/vga_pal.vhd(499)
  binary_mux_s1_w9 mux7 (
    .i0(RGB_IN),
    .i1(n47),
    .sel(EN),
    .o(n48));  // ../../rtl/video/vga_pal.vhd(502)
  reg_ar_as_w9 reg0 (
    .clk(n7),
    .d(n16),
    .reset(9'b000000000),
    .set(9'b000000000),
    .q(VGA_H));  // ../../rtl/video/vga_pal.vhd(256)
  reg_ar_as_w10 reg1 (
    .clk(n7),
    .d(n17),
    .reset(10'b0000000000),
    .set(10'b0000000000),
    .q(VIDEO_H));  // ../../rtl/video/vga_pal.vhd(256)
  reg_ar_as_w10 reg2 (
    .clk(n18),
    .d(n20),
    .reset(10'b0000000000),
    .set(10'b0000000000),
    .q(VGA_V));  // ../../rtl/video/vga_pal.vhd(275)
  reg_ar_as_w9 reg3 (
    .clk(n21),
    .d(n23),
    .reset(9'b000000000),
    .set(9'b000000000),
    .q(VIDEO_V));  // ../../rtl/video/vga_pal.vhd(284)
  reg_ar_as_w9 reg4 (
    .clk(VGA_RBGI_CLK),
    .d(n48),
    .reset(9'b000000000),
    .set(9'b000000000),
    .q(RGB_O));  // ../../rtl/video/vga_pal.vhd(503)
  reg_ar_as_w9 reg5 (
    .clk(n0),
    .d(RGB_IN),
    .reset(9'b000000000),
    .set(9'b000000000),
    .q(RGB));  // ../../rtl/video/vga_pal.vhd(181)
  or u10 (RESET_V, KSI, KSI_2);  // ../../rtl/video/vga_pal.vhd(214)
  not u11 (n6, VIDEO_V[7]);  // ../../rtl/video/vga_pal.vhd(216)
  or u12 (RESET_ZONE, n6, VIDEO_V[8]);  // ../../rtl/video/vga_pal.vhd(216)
  or u13 (VGA_V_CLK, VGA_H[7], VGA_H[8]);  // ../../rtl/video/vga_pal.vhd(218)
  or u14 (VIDEO_V_CLK, VIDEO_H[8], VIDEO_H[9]);  // ../../rtl/video/vga_pal.vhd(219)
  not u15 (VGA_SSI1_END[2], DS80);  // ../../rtl/video/vga_pal.vhd(227)
  not u16 (n7, CLK);
  or u17 (n8, RESET_H, RESET_ZONE);  // ../../rtl/video/vga_pal.vhd(237)
  not u18 (n9, n8);  // ../../rtl/video/vga_pal.vhd(237)
  not u19 (n18, VGA_V_CLK);
  buf u2 (VGA_RBGI_CLK, CLK2);  // ../../rtl/video/vga_pal.vhd(175)
  buf u20 (VGA_SSI1_BGN[9], 1'b0);  // ../../rtl/video/vga_pal.vhd(322)
  not u21 (n21, VIDEO_V_CLK);
  buf u22 (VGA_SSI1_BGN[8], 1'b0);  // ../../rtl/video/vga_pal.vhd(322)
  buf u23 (VGA_SSI1_BGN[7], 1'b0);  // ../../rtl/video/vga_pal.vhd(322)
  buf u24 (VGA_SSI1_BGN[2], 1'b0);  // ../../rtl/video/vga_pal.vhd(322)
  buf u25 (VGA_SSI1_BGN[1], 1'b0);  // ../../rtl/video/vga_pal.vhd(322)
  and u26 (n26, n24, n25);  // ../../rtl/video/vga_pal.vhd(360)
  and u27 (n29, n27, n28);  // ../../rtl/video/vga_pal.vhd(361)
  or u28 (n30, n26, n29);  // ../../rtl/video/vga_pal.vhd(361)
  not u29 (VGA_SSI, n30);  // ../../rtl/video/vga_pal.vhd(362)
  not u3 (n0, VGA_RBGI_CLK);
  or u30 (n33, n31, n32);  // ../../rtl/video/vga_pal.vhd(366)
  not u31 (VGA_SGI, n33);  // ../../rtl/video/vga_pal.vhd(367)
  and u32 (n36, n34, n35);  // ../../rtl/video/vga_pal.vhd(374)
  not u33 (VGA_KSI, n36);  // ../../rtl/video/vga_pal.vhd(375)
  or u34 (n39, n37, n38);  // ../../rtl/video/vga_pal.vhd(378)
  not u35 (VGA_KGI, n39);  // ../../rtl/video/vga_pal.vhd(379)
  not u36 (n40, VIDEO_V[0]);  // ../../rtl/video/vga_pal.vhd(452)
  buf u37 (VGA_SSI1_BGN[6], 1'b0);  // ../../rtl/video/vga_pal.vhd(322)
  not u38 (n41, VGA_H0);  // ../../rtl/video/vga_pal.vhd(462)
  buf u39 (VGA_SSI1_BGN[5], 1'b0);  // ../../rtl/video/vga_pal.vhd(322)
  not u4 (n1, SSI);  // ../../rtl/video/vga_pal.vhd(196)
  and u40 (n42, VGA_KGI, VGA_SGI);  // ../../rtl/video/vga_pal.vhd(473)
  not u41 (n43, KSI_IN);  // ../../rtl/video/vga_pal.vhd(480)
  xor u42 (n44, SSI_IN, n43);  // ../../rtl/video/vga_pal.vhd(480)
  AL_MUX u43 (
    .i0(KSI_IN),
    .i1(VGA_KSI),
    .sel(EN),
    .o(n45));  // ../../rtl/video/vga_pal.vhd(481)
  AL_MUX u44 (
    .i0(n44),
    .i1(VGA_SSI),
    .sel(EN),
    .o(n46));  // ../../rtl/video/vga_pal.vhd(481)
  buf u45 (VGA_SSI1_BGN[0], 1'b0);  // ../../rtl/video/vga_pal.vhd(322)
  buf u46 (VGA_SSI1_BGN[4], 1'b0);  // ../../rtl/video/vga_pal.vhd(322)
  buf u47 (VGA_SSI1_BGN[3], 1'b0);  // ../../rtl/video/vga_pal.vhd(322)
  not u5 (n2, VIDEO_H[9]);  // ../../rtl/video/vga_pal.vhd(203)
  not u6 (n3, KSI);  // ../../rtl/video/vga_pal.vhd(209)
  AL_MUX u7 (
    .i0(KSI),
    .i1(KSI_IN),
    .sel(n2),
    .o(n4));  // ../../rtl/video/vga_pal.vhd(210)
  AL_MUX u8 (
    .i0(KSI_2),
    .i1(n3),
    .sel(n2),
    .o(n5));  // ../../rtl/video/vga_pal.vhd(210)
  or u9 (RESET_H, SSI, SSI_2);  // ../../rtl/video/vga_pal.vhd(213)

endmodule 

module zc_spi  // ../../rtl/sd/zc_spi.vhd(5)
  (
  CLC,
  DI,
  MISO,
  START,
  WR_EN,
  DO,
  MOSI,
  SCK
  );

  input CLC;  // ../../rtl/sd/zc_spi.vhd(9)
  input [7:0] DI;  // ../../rtl/sd/zc_spi.vhd(8)
  input MISO;  // ../../rtl/sd/zc_spi.vhd(11)
  input START;  // ../../rtl/sd/zc_spi.vhd(10)
  input WR_EN;  // ../../rtl/sd/zc_spi.vhd(12)
  output [7:0] DO;  // ../../rtl/sd/zc_spi.vhd(14)
  output MOSI;  // ../../rtl/sd/zc_spi.vhd(16)
  output SCK;  // ../../rtl/sd/zc_spi.vhd(15)

  wire [3:0] COUNTER;  // ../../rtl/sd/zc_spi.vhd(22)
  wire [7:0] SHIFT_IN;  // ../../rtl/sd/zc_spi.vhd(23)
  wire [7:0] SHIFT_OUT;  // ../../rtl/sd/zc_spi.vhd(24)
  wire [7:0] n3;
  wire [7:0] n5;
  wire [7:0] n6;
  wire [3:0] n7;
  wire [3:0] n8;
  wire COUNTER_EN;  // ../../rtl/sd/zc_spi.vhd(25)
  wire START_SYNC;  // ../../rtl/sd/zc_spi.vhd(26)
  wire n0;
  wire n1;
  wire n2;
  wire n4;

  AL_DFF START_SYNC_reg (
    .clk(CLC),
    .d(START),
    .reset(1'b0),
    .set(1'b0),
    .q(START_SYNC));  // ../../rtl/sd/zc_spi.vhd(38)
  add_pu4_pu4_o4 add0 (
    .i0(COUNTER),
    .i1(4'b0001),
    .o(n7));
  binary_mux_s1_w8 mux0 (
    .i0({SHIFT_IN[6:0],MISO}),
    .i1(SHIFT_IN),
    .sel(COUNTER[3]),
    .o(n3));  // ../../rtl/sd/zc_spi.vhd(46)
  binary_mux_s1_w8 mux1 (
    .i0({SHIFT_OUT[6:0],1'b1}),
    .i1(SHIFT_OUT),
    .sel(COUNTER[3]),
    .o(n5));  // ../../rtl/sd/zc_spi.vhd(58)
  binary_mux_s1_w8 mux2 (
    .i0(n5),
    .i1(DI),
    .sel(WR_EN),
    .o(n6));  // ../../rtl/sd/zc_spi.vhd(59)
  binary_mux_s1_w4 mux3 (
    .i0(COUNTER),
    .i1(n7),
    .sel(COUNTER_EN),
    .o(n8));  // ../../rtl/sd/zc_spi.vhd(71)
  reg_ar_as_w8 reg0 (
    .clk(CLC),
    .d(n3),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(SHIFT_IN));  // ../../rtl/sd/zc_spi.vhd(47)
  reg_ar_as_w8 reg1 (
    .clk(n4),
    .d(n6),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(SHIFT_OUT));  // ../../rtl/sd/zc_spi.vhd(60)
  reg_ar_as_w4 reg2 (
    .clk(n4),
    .d(n8),
    .reset({3'b000,START_SYNC}),
    .set({START_SYNC,START_SYNC,START_SYNC,1'b0}),
    .q(COUNTER));  // ../../rtl/sd/zc_spi.vhd(72)
  or u10 (COUNTER_EN, n2, COUNTER[0]);  // ../../rtl/sd/zc_spi.vhd(32)
  buf u11 (DO[4], SHIFT_IN[4]);  // ../../rtl/sd/zc_spi.vhd(30)
  not u12 (n4, CLC);  // ../../rtl/sd/zc_spi.vhd(52)
  buf u13 (DO[3], SHIFT_IN[3]);  // ../../rtl/sd/zc_spi.vhd(30)
  buf u14 (DO[1], SHIFT_IN[1]);  // ../../rtl/sd/zc_spi.vhd(30)
  buf u15 (DO[0], SHIFT_IN[0]);  // ../../rtl/sd/zc_spi.vhd(30)
  buf u16 (DO[7], SHIFT_IN[7]);  // ../../rtl/sd/zc_spi.vhd(30)
  buf u2 (DO[6], SHIFT_IN[6]);  // ../../rtl/sd/zc_spi.vhd(30)
  buf u3 (DO[5], SHIFT_IN[5]);  // ../../rtl/sd/zc_spi.vhd(30)
  not u4 (n0, COUNTER[3]);  // ../../rtl/sd/zc_spi.vhd(29)
  and u5 (SCK, CLC, n0);  // ../../rtl/sd/zc_spi.vhd(29)
  buf u6 (MOSI, SHIFT_OUT[7]);  // ../../rtl/sd/zc_spi.vhd(31)
  buf u7 (DO[2], SHIFT_IN[2]);  // ../../rtl/sd/zc_spi.vhd(30)
  or u8 (n1, n0, COUNTER[2]);  // ../../rtl/sd/zc_spi.vhd(32)
  or u9 (n2, n1, COUNTER[1]);  // ../../rtl/sd/zc_spi.vhd(32)

endmodule 

module add_pu4_pu4_o4
  (
  i0,
  i1,
  o
  );

  input [3:0] i0;
  input [3:0] i1;
  output [3:0] o;



endmodule 

module add_pu2_pu2_o2
  (
  i0,
  i1,
  o
  );

  input [1:0] i0;
  input [1:0] i1;
  output [1:0] o;



endmodule 

module add_pu12_pu12_o12
  (
  i0,
  i1,
  o
  );

  input [11:0] i0;
  input [11:0] i1;
  output [11:0] o;



endmodule 

module add_pu3_pu3_o4
  (
  i0,
  i1,
  o
  );

  input [2:0] i0;
  input [2:0] i1;
  output [3:0] o;



endmodule 

module add_pu9_pu9_o10
  (
  i0,
  i1,
  o
  );

  input [8:0] i0;
  input [8:0] i1;
  output [9:0] o;



endmodule 

module add_pu10_pu10_o11
  (
  i0,
  i1,
  o
  );

  input [9:0] i0;
  input [9:0] i1;
  output [10:0] o;



endmodule 

module add_pu11_pu11_o11
  (
  i0,
  i1,
  o
  );

  input [10:0] i0;
  input [10:0] i1;
  output [10:0] o;



endmodule 

module add_pu2_pu2_o3
  (
  i0,
  i1,
  o
  );

  input [1:0] i0;
  input [1:0] i1;
  output [2:0] o;



endmodule 

module add_pu11_pu11_o12
  (
  i0,
  i1,
  o
  );

  input [10:0] i0;
  input [10:0] i1;
  output [11:0] o;



endmodule 

module eq_w2
  (
  i0,
  i1,
  o
  );

  input [1:0] i0;
  input [1:0] i1;
  output o;



endmodule 

module eq_w16
  (
  i0,
  i1,
  o
  );

  input [15:0] i0;
  input [15:0] i1;
  output o;



endmodule 

module eq_w8
  (
  i0,
  i1,
  o
  );

  input [7:0] i0;
  input [7:0] i1;
  output o;



endmodule 

module eq_w5
  (
  i0,
  i1,
  o
  );

  input [4:0] i0;
  input [4:0] i1;
  output o;



endmodule 

module eq_w3
  (
  i0,
  i1,
  o
  );

  input [2:0] i0;
  input [2:0] i1;
  output o;



endmodule 

module eq_w4
  (
  i0,
  i1,
  o
  );

  input [3:0] i0;
  input [3:0] i1;
  output o;



endmodule 

module lt_u2_u2
  (
  ci,
  i0,
  i1,
  o
  );

  input ci;
  input [1:0] i0;
  input [1:0] i1;
  output o;



endmodule 

module binary_mux_s1_w2
  (
  i0,
  i1,
  sel,
  o
  );

  input [1:0] i0;
  input [1:0] i1;
  input sel;
  output [1:0] o;



endmodule 

module binary_mux_s1_w6
  (
  i0,
  i1,
  sel,
  o
  );

  input [5:0] i0;
  input [5:0] i1;
  input sel;
  output [5:0] o;



endmodule 

module binary_mux_s1_w8
  (
  i0,
  i1,
  sel,
  o
  );

  input [7:0] i0;
  input [7:0] i1;
  input sel;
  output [7:0] o;



endmodule 

module binary_mux_s1_w16
  (
  i0,
  i1,
  sel,
  o
  );

  input [15:0] i0;
  input [15:0] i1;
  input sel;
  output [15:0] o;



endmodule 

module binary_mux_s1_w24
  (
  i0,
  i1,
  sel,
  o
  );

  input [23:0] i0;
  input [23:0] i1;
  input sel;
  output [23:0] o;



endmodule 

module add_mu9_o9
  (
  i0,
  o
  );

  input [8:0] i0;
  output [8:0] o;



endmodule 

module ne_w2
  (
  i0,
  i1,
  o
  );

  input [1:0] i0;
  input [1:0] i1;
  output o;



endmodule 

module reg_ar_as_w4
  (
  clk,
  d,
  en,
  reset,
  set,
  q
  );

  input clk;
  input [3:0] d;
  input en;
  input [3:0] reset;
  input [3:0] set;
  output [3:0] q;



endmodule 

module reg_ar_as_w2
  (
  clk,
  d,
  en,
  reset,
  set,
  q
  );

  input clk;
  input [1:0] d;
  input en;
  input [1:0] reset;
  input [1:0] set;
  output [1:0] q;



endmodule 

module reg_ar_as_w8
  (
  clk,
  d,
  en,
  reset,
  set,
  q
  );

  input clk;
  input [7:0] d;
  input en;
  input [7:0] reset;
  input [7:0] set;
  output [7:0] q;



endmodule 

module onehot_mux_s25_w8
  (
  i0,
  i1,
  i10,
  i11,
  i12,
  i13,
  i14,
  i15,
  i16,
  i17,
  i18,
  i19,
  i2,
  i20,
  i21,
  i22,
  i23,
  i24,
  i3,
  i4,
  i5,
  i6,
  i7,
  i8,
  i9,
  sel,
  o
  );

  input [7:0] i0;
  input [7:0] i1;
  input [7:0] i10;
  input [7:0] i11;
  input [7:0] i12;
  input [7:0] i13;
  input [7:0] i14;
  input [7:0] i15;
  input [7:0] i16;
  input [7:0] i17;
  input [7:0] i18;
  input [7:0] i19;
  input [7:0] i2;
  input [7:0] i20;
  input [7:0] i21;
  input [7:0] i22;
  input [7:0] i23;
  input [7:0] i24;
  input [7:0] i3;
  input [7:0] i4;
  input [7:0] i5;
  input [7:0] i6;
  input [7:0] i7;
  input [7:0] i8;
  input [7:0] i9;
  input [24:0] sel;
  output [7:0] o;



endmodule 

module ne_w8
  (
  i0,
  i1,
  o
  );

  input [7:0] i0;
  input [7:0] i1;
  output o;



endmodule 

module uart  // ../../rtl/uart/uart.v(24)
  (
  clk_bus,
  data_read,
  ds80,
  rx,
  txbegin,
  txdata,
  rts,
  rxdata,
  rxrecv,
  tx,
  txbusy
  );

  input clk_bus;  // ../../rtl/uart/uart.v(26)
  input data_read;  // ../../rtl/uart/uart.v(33)
  input ds80;  // ../../rtl/uart/uart.v(27)
  input rx;  // ../../rtl/uart/uart.v(35)
  input txbegin;  // ../../rtl/uart/uart.v(29)
  input [7:0] txdata;  // ../../rtl/uart/uart.v(28)
  output rts;  // ../../rtl/uart/uart.v(37)
  output [7:0] rxdata;  // ../../rtl/uart/uart.v(31)
  output rxrecv;  // ../../rtl/uart/uart.v(32)
  output tx;  // ../../rtl/uart/uart.v(36)
  output txbusy;  // ../../rtl/uart/uart.v(30)


  uart_rx receiver (
    .clk_bus(clk_bus),
    .data_read(data_read),
    .ds80(ds80),
    .rx(rx),
    .rts(rts),
    .rxdata(rxdata),
    .rxrecv(rxrecv));  // ../../rtl/uart/uart.v(49)
  uart_tx transmitter (
    .clk_bus(clk_bus),
    .ds80(ds80),
    .txbegin(txbegin),
    .txdata(txdata),
    .tx(tx),
    .txbusy(txbusy));  // ../../rtl/uart/uart.v(40)

endmodule 

module \spi_master(slaves=1,d_width=8)   // ../../rtl/spi/spi_master.vhd(30)
  (
  addr,
  clk_div,
  clock,
  cont,
  cpha,
  cpol,
  enable,
  miso,
  reset_n,
  tx_data,
  busy,
  mosi,
  rx_data,
  sclk,
  ss_n
  );

  input [31:0] addr;  // ../../rtl/spi/spi_master.vhd(42)
  input [31:0] clk_div;  // ../../rtl/spi/spi_master.vhd(41)
  input clock;  // ../../rtl/spi/spi_master.vhd(35)
  input cont;  // ../../rtl/spi/spi_master.vhd(40)
  input cpha;  // ../../rtl/spi/spi_master.vhd(39)
  input cpol;  // ../../rtl/spi/spi_master.vhd(38)
  input enable;  // ../../rtl/spi/spi_master.vhd(37)
  input miso;  // ../../rtl/spi/spi_master.vhd(44)
  input reset_n;  // ../../rtl/spi/spi_master.vhd(36)
  input [7:0] tx_data;  // ../../rtl/spi/spi_master.vhd(43)
  output busy;  // ../../rtl/spi/spi_master.vhd(48)
  output mosi;  // ../../rtl/spi/spi_master.vhd(47)
  output [7:0] rx_data;  // ../../rtl/spi/spi_master.vhd(49)
  output sclk;  // ../../rtl/spi/spi_master.vhd(45)
  output [0:0] ss_n;  // ../../rtl/spi/spi_master.vhd(46)

  parameter d_width = 8;
  parameter slaves = 1;
  wire [31:0] clk_ratio;  // ../../rtl/spi/spi_master.vhd(56)
  wire [4:0] clk_toggles;  // ../../rtl/spi/spi_master.vhd(58)
  wire [31:0] count;  // ../../rtl/spi/spi_master.vhd(57)
  wire [4:0] last_bit_rx;  // ../../rtl/spi/spi_master.vhd(63)
  wire [7:0] n12;
  wire [4:0] n13;
  wire [4:0] n14;
  wire [4:0] n19;
  wire [31:0] n2;
  wire [4:0] n20;
  wire [4:0] n27;
  wire [7:0] n31;
  wire [7:0] n34;
  wire [5:0] n37;
  wire [5:0] n38;
  wire [7:0] n39;
  wire [31:0] n4;
  wire [4:0] n40;
  wire [7:0] n44;
  wire [7:0] n49;
  wire [31:0] n51;
  wire [31:0] n52;
  wire [4:0] n54;
  wire [7:0] n56;
  wire [7:0] n57;
  wire [6:0] n6;
  wire [7:0] n60;
  wire [31:0] n67;
  wire [31:0] n68;
  wire [31:0] n69;
  wire [31:0] n7;
  wire [7:0] n72;
  wire [4:0] n73;
  wire [4:0] n74;
  wire [7:0] n76;
  wire [7:0] n77;
  wire [31:0] n8;
  wire [31:0] n80;
  wire [31:0] n81;
  wire [31:0] n82;
  wire [7:0] n85;
  wire [4:0] n86;
  wire [4:0] n87;
  wire [7:0] n88;
  wire [31:0] n9;
  wire [7:0] rx_buffer;  // ../../rtl/spi/spi_master.vhd(61)
  wire [31:0] slave;  // ../../rtl/spi/spi_master.vhd(55)
  wire [7:0] tx_buffer;  // ../../rtl/spi/spi_master.vhd(62)
  wire assert_data;  // ../../rtl/spi/spi_master.vhd(59)
  wire continue;  // ../../rtl/spi/spi_master.vhd(60)
  wire n0;
  wire n1;
  wire n10;
  wire n11;
  wire n15;
  wire n16;
  wire n17;
  wire n18;
  wire n21;
  wire n22;
  wire n23;
  wire n24;
  wire n25;
  wire n26;
  wire n28;
  wire n29;
  wire n3;
  wire n30;
  wire n32;
  wire n33;
  wire n35;
  wire n36;
  wire n41;
  wire n42;
  wire n43;
  wire n45;
  wire n46;
  wire n47;
  wire n48;
  wire n5;
  wire n50;
  wire n53;
  wire n55;
  wire n58;
  wire n59;
  wire n61;
  wire n62;
  wire n63;
  wire n64;
  wire n65;
  wire n66;
  wire n70;
  wire n71;
  wire n75;
  wire n78;
  wire n79;
  wire n83;
  wire n84;
  wire n89;
  wire n90;
  wire n91;
  wire n92;
  wire n93;
  wire n94;
  wire n95;
  wire state;  // ../../rtl/spi/spi_master.vhd(54)

  add_pu5_pu5_o5 add0 (
    .i0(clk_toggles),
    .i1(5'b00001),
    .o(n19));  // ../../rtl/spi/spi_master.vhd(120)
  add_pu5_pu5_o6 add1 (
    .i0(last_bit_rx),
    .i1(5'b00001),
    .o({n26,n27}));  // ../../rtl/spi/spi_master.vhd(129)
  add_pu6_pu6_o6 add2 (
    .i0(n37),
    .i1(6'b000001),
    .o({open_n0,n38[4:0]}));  // ../../rtl/spi/spi_master.vhd(142)
  add_pu32_pu32_o32 add3 (
    .i0(count),
    .i1(32'b00000000000000000000000000000001),
    .o(n51));  // ../../rtl/spi/spi_master.vhd(165)
  AL_DFF assert_data_reg (
    .clk(clock),
    .d(n84),
    .reset(1'b0),
    .set(1'b0),
    .q(assert_data));  // ../../rtl/spi/spi_master.vhd(170)
  AL_DFF busy_reg (
    .clk(clock),
    .d(n64),
    .reset(1'b0),
    .set(n0),
    .q(busy));  // ../../rtl/spi/spi_master.vhd(170)
  AL_DFF continue_reg (
    .clk(clock),
    .d(n79),
    .reset(1'b0),
    .set(1'b0),
    .q(continue));  // ../../rtl/spi/spi_master.vhd(170)
  eq_w32 eq0 (
    .i0(32'b00000000000000000000000000000000),
    .i1(clk_div),
    .o(n3));  // ../../rtl/spi/spi_master.vhd(92)
  eq_w32 eq1 (
    .i0(clk_ratio),
    .i1(count),
    .o(n16));  // ../../rtl/spi/spi_master.vhd(114)
  eq_w5 eq2 (
    .i0(5'b10001),
    .i1(clk_toggles),
    .o(n18));  // ../../rtl/spi/spi_master.vhd(117)
  eq_w5 eq3 (
    .i0(last_bit_rx),
    .i1(clk_toggles),
    .o(n35));  // ../../rtl/spi/spi_master.vhd(140)
  AL_DFF i135 (
    .clk(clock),
    .d(n95),
    .reset(n0),
    .set(1'b0),
    .q(n93));  // ../../rtl/spi/spi_master.vhd(170)
  lt_u32_u32 lt0 (
    .ci(1'b0),
    .i0({1'b0,addr[30:0]}),
    .i1({addr[31],31'b0000000000000000000000000000001}),
    .o(n1));  // ../../rtl/spi/spi_master.vhd(87)
  lt_u5_u5 lt1 (
    .ci(1'b1),
    .i0(clk_toggles),
    .i1(5'b10000),
    .o(n21));  // ../../rtl/spi/spi_master.vhd(124)
  lt_u6_u6 lt2 (
    .ci(1'b0),
    .i0({1'b0,clk_toggles}),
    .i1({n26,n27}),
    .o(n28));  // ../../rtl/spi/spi_master.vhd(129)
  lt_u5_u5 lt3 (
    .ci(1'b0),
    .i0(clk_toggles),
    .i1(last_bit_rx),
    .o(n32));  // ../../rtl/spi/spi_master.vhd(134)
  AL_DFF mosi_reg (
    .clk(clock),
    .d(n94),
    .reset(n0),
    .set(1'b0),
    .q(n78));  // ../../rtl/spi/spi_master.vhd(170)
  binary_mux_s1_w32 mux0 (
    .i0(32'b00000000000000000000000000000000),
    .i1(addr),
    .sel(n1),
    .o(n2));  // ../../rtl/spi/spi_master.vhd(91)
  binary_mux_s1_w32 mux1 (
    .i0(clk_div),
    .i1(32'b00000000000000000000000000000001),
    .sel(n3),
    .o(n4));  // ../../rtl/spi/spi_master.vhd(98)
  binary_mux_s1_w8 mux10 (
    .i0(tx_buffer),
    .i1({tx_buffer[6:0],1'b0}),
    .sel(n33),
    .o(n34));  // ../../rtl/spi/spi_master.vhd(137)
  binary_mux_s1_w8 mux11 (
    .i0(n34),
    .i1(tx_data),
    .sel(n36),
    .o(n39));  // ../../rtl/spi/spi_master.vhd(144)
  binary_mux_s1_w5 mux12 (
    .i0(n20),
    .i1(n38[4:0]),
    .sel(n36),
    .o(n40));  // ../../rtl/spi/spi_master.vhd(144)
  binary_mux_s1_w8 mux13 (
    .i0(rx_data),
    .i1(rx_buffer),
    .sel(continue),
    .o(n44));  // ../../rtl/spi/spi_master.vhd(151)
  binary_mux_s1_w8 mux14 (
    .i0(n44),
    .i1(rx_buffer),
    .sel(n46),
    .o(n49));  // ../../rtl/spi/spi_master.vhd(162)
  binary_mux_s1_w32 mux15 (
    .i0(n51),
    .i1(32'b00000000000000000000000000000001),
    .sel(n16),
    .o(n52));  // ../../rtl/spi/spi_master.vhd(167)
  binary_mux_s1_w5 mux16 (
    .i0(clk_toggles),
    .i1(n40),
    .sel(n16),
    .o(n54));  // ../../rtl/spi/spi_master.vhd(167)
  binary_mux_s1_w8 mux17 (
    .i0(rx_buffer),
    .i1(n31),
    .sel(n16),
    .o(n56));  // ../../rtl/spi/spi_master.vhd(167)
  binary_mux_s1_w8 mux18 (
    .i0(tx_buffer),
    .i1(n39),
    .sel(n16),
    .o(n57));  // ../../rtl/spi/spi_master.vhd(167)
  binary_mux_s1_w8 mux19 (
    .i0(rx_data),
    .i1(n49),
    .sel(n16),
    .o(n60));  // ../../rtl/spi/spi_master.vhd(167)
  binary_mux_s1_w32 mux2 (
    .i0(slave),
    .i1(n2),
    .sel(enable),
    .o(n7));  // ../../rtl/spi/spi_master.vhd(107)
  binary_mux_s1_w32 mux20 (
    .i0(slave),
    .i1(n7),
    .sel(n63),
    .o(n67));  // ../../rtl/spi/spi_master.vhd(169)
  binary_mux_s1_w32 mux21 (
    .i0(clk_ratio),
    .i1(n8),
    .sel(n63),
    .o(n68));  // ../../rtl/spi/spi_master.vhd(169)
  binary_mux_s1_w32 mux22 (
    .i0(n52),
    .i1(n9),
    .sel(n63),
    .o(n69));  // ../../rtl/spi/spi_master.vhd(169)
  binary_mux_s1_w8 mux23 (
    .i0(n57),
    .i1(n12),
    .sel(n63),
    .o(n72));  // ../../rtl/spi/spi_master.vhd(169)
  binary_mux_s1_w5 mux24 (
    .i0(n54),
    .i1(n13),
    .sel(n63),
    .o(n73));  // ../../rtl/spi/spi_master.vhd(169)
  binary_mux_s1_w5 mux25 (
    .i0(last_bit_rx),
    .i1(n14),
    .sel(n63),
    .o(n74));  // ../../rtl/spi/spi_master.vhd(169)
  binary_mux_s1_w8 mux26 (
    .i0(n56),
    .i1(rx_buffer),
    .sel(n63),
    .o(n76));  // ../../rtl/spi/spi_master.vhd(169)
  binary_mux_s1_w8 mux27 (
    .i0(n60),
    .i1(rx_data),
    .sel(n63),
    .o(n77));  // ../../rtl/spi/spi_master.vhd(169)
  binary_mux_s1_w32 mux28 (
    .i0(n67),
    .i1(slave),
    .sel(n0),
    .o(n80));  // ../../rtl/spi/spi_master.vhd(170)
  binary_mux_s1_w32 mux29 (
    .i0(n68),
    .i1(clk_ratio),
    .sel(n0),
    .o(n81));  // ../../rtl/spi/spi_master.vhd(170)
  binary_mux_s1_w32 mux3 (
    .i0(clk_ratio),
    .i1(n4),
    .sel(enable),
    .o(n8));  // ../../rtl/spi/spi_master.vhd(107)
  binary_mux_s1_w32 mux30 (
    .i0(n69),
    .i1(count),
    .sel(n0),
    .o(n82));  // ../../rtl/spi/spi_master.vhd(170)
  binary_mux_s1_w8 mux31 (
    .i0(n72),
    .i1(tx_buffer),
    .sel(n0),
    .o(n85));  // ../../rtl/spi/spi_master.vhd(170)
  binary_mux_s1_w5 mux32 (
    .i0(n73),
    .i1(clk_toggles),
    .sel(n0),
    .o(n86));  // ../../rtl/spi/spi_master.vhd(170)
  binary_mux_s1_w5 mux33 (
    .i0(n74),
    .i1(last_bit_rx),
    .sel(n0),
    .o(n87));  // ../../rtl/spi/spi_master.vhd(170)
  binary_mux_s1_w8 mux34 (
    .i0(n76),
    .i1(rx_buffer),
    .sel(n0),
    .o(n88));  // ../../rtl/spi/spi_master.vhd(170)
  binary_mux_s1_w32 mux4 (
    .i0(count),
    .i1(n4),
    .sel(enable),
    .o(n9));  // ../../rtl/spi/spi_master.vhd(107)
  binary_mux_s1_w8 mux5 (
    .i0(tx_buffer),
    .i1(tx_data),
    .sel(enable),
    .o(n12));  // ../../rtl/spi/spi_master.vhd(107)
  binary_mux_s1_w5 mux6 (
    .i0(clk_toggles),
    .i1(5'b00000),
    .sel(enable),
    .o(n13));  // ../../rtl/spi/spi_master.vhd(107)
  binary_mux_s1_w5 mux7 (
    .i0(last_bit_rx),
    .i1(n6[4:0]),
    .sel(enable),
    .o(n14));  // ../../rtl/spi/spi_master.vhd(107)
  binary_mux_s1_w5 mux8 (
    .i0(n19),
    .i1(5'b00000),
    .sel(n18),
    .o(n20));  // ../../rtl/spi/spi_master.vhd(121)
  binary_mux_s1_w8 mux9 (
    .i0(rx_buffer),
    .i1({rx_buffer[6:0],miso}),
    .sel(n30),
    .o(n31));  // ../../rtl/spi/spi_master.vhd(131)
  reg_ar_as_w8 reg0 (
    .clk(clock),
    .d(n77),
    .reset({n0,n0,n0,n0,n0,n0,n0,n0}),
    .set(8'b00000000),
    .q(rx_data));  // ../../rtl/spi/spi_master.vhd(170)
  reg_ar_as_w32 reg1 (
    .clk(clock),
    .d(n80),
    .reset(32'b00000000000000000000000000000000),
    .set(32'b00000000000000000000000000000000),
    .q(slave));  // ../../rtl/spi/spi_master.vhd(170)
  reg_ar_as_w32 reg2 (
    .clk(clock),
    .d(n81),
    .reset(32'b00000000000000000000000000000000),
    .set(32'b00000000000000000000000000000000),
    .q(clk_ratio));  // ../../rtl/spi/spi_master.vhd(170)
  reg_ar_as_w32 reg3 (
    .clk(clock),
    .d(n82),
    .reset(32'b00000000000000000000000000000000),
    .set(32'b00000000000000000000000000000000),
    .q(count));  // ../../rtl/spi/spi_master.vhd(170)
  reg_ar_as_w8 reg4 (
    .clk(clock),
    .d(n85),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(tx_buffer));  // ../../rtl/spi/spi_master.vhd(170)
  reg_ar_as_w5 reg5 (
    .clk(clock),
    .d(n86),
    .reset(5'b00000),
    .set(5'b00000),
    .q(clk_toggles));  // ../../rtl/spi/spi_master.vhd(170)
  reg_ar_as_w5 reg6 (
    .clk(clock),
    .d(n87),
    .reset(5'b00000),
    .set(5'b00000),
    .q(last_bit_rx));  // ../../rtl/spi/spi_master.vhd(170)
  reg_ar_as_w8 reg7 (
    .clk(clock),
    .d(n88),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(rx_buffer));  // ../../rtl/spi/spi_master.vhd(170)
  AL_DFF sclk_reg (
    .clk(clock),
    .d(n83),
    .reset(1'b0),
    .set(1'b0),
    .q(sclk));  // ../../rtl/spi/spi_master.vhd(170)
  AL_DFF \ss_n_reg[0]  (
    .clk(clock),
    .d(n65),
    .reset(1'b0),
    .set(n0),
    .q(ss_n));  // ../../rtl/spi/spi_master.vhd(170)
  AL_DFF state_reg (
    .clk(clock),
    .d(n75),
    .reset(n0),
    .set(1'b0),
    .q(state));  // ../../rtl/spi/spi_master.vhd(170)
  add_pu7_mu7_o7 sub0 (
    .i0({6'b001000,cpha}),
    .i1(7'b0000001),
    .o({open_n9,open_n10,n6[4:0]}));  // ../../rtl/spi/spi_master.vhd(103)
  add_pu6_mu6_o6 sub1 (
    .i0({1'b0,last_bit_rx}),
    .i1(6'b010000),
    .o(n37));  // ../../rtl/spi/spi_master.vhd(142)
  not u10 (n24, sclk);  // ../../rtl/spi/spi_master.vhd(125)
  AL_MUX u11 (
    .i0(sclk),
    .i1(n24),
    .sel(n23),
    .o(n25));  // ../../rtl/spi/spi_master.vhd(126)
  and u12 (n29, n17, n28);  // ../../rtl/spi/spi_master.vhd(129)
  and u13 (n30, n29, n22);  // ../../rtl/spi/spi_master.vhd(129)
  and u14 (n33, assert_data, n32);  // ../../rtl/spi/spi_master.vhd(134)
  and u15 (n36, n35, cont);  // ../../rtl/spi/spi_master.vhd(140)
  AL_MUX u16 (
    .i0(continue),
    .i1(1'b1),
    .sel(n36),
    .o(n41));  // ../../rtl/spi/spi_master.vhd(144)
  AL_MUX u17 (
    .i0(n41),
    .i1(1'b0),
    .sel(continue),
    .o(n42));  // ../../rtl/spi/spi_master.vhd(151)
  not u18 (n43, continue);  // ../../rtl/spi/spi_master.vhd(151)
  not u19 (n45, cont);  // ../../rtl/spi/spi_master.vhd(154)
  not u2 (n0, reset_n);  // ../../rtl/spi/spi_master.vhd(68)
  and u20 (n46, n18, n45);  // ../../rtl/spi/spi_master.vhd(154)
  AL_MUX u21 (
    .i0(n43),
    .i1(1'b0),
    .sel(n46),
    .o(n47));  // ../../rtl/spi/spi_master.vhd(162)
  AL_MUX u22 (
    .i0(n15),
    .i1(1'b1),
    .sel(n46),
    .o(n48));  // ../../rtl/spi/spi_master.vhd(162)
  not u23 (n50, n46);  // ../../rtl/spi/spi_master.vhd(162)
  AL_MUX u24 (
    .i0(assert_data),
    .i1(n17),
    .sel(n16),
    .o(n53));  // ../../rtl/spi/spi_master.vhd(167)
  AL_MUX u25 (
    .i0(sclk),
    .i1(n25),
    .sel(n16),
    .o(n55));  // ../../rtl/spi/spi_master.vhd(167)
  AL_MUX u26 (
    .i0(continue),
    .i1(n42),
    .sel(n16),
    .o(n58));  // ../../rtl/spi/spi_master.vhd(167)
  AL_MUX u27 (
    .i0(1'b1),
    .i1(n47),
    .sel(n16),
    .o(n59));  // ../../rtl/spi/spi_master.vhd(167)
  AL_MUX u28 (
    .i0(n15),
    .i1(n48),
    .sel(n16),
    .o(n61));  // ../../rtl/spi/spi_master.vhd(167)
  AL_MUX u29 (
    .i0(1'b1),
    .i1(n50),
    .sel(n16),
    .o(n62));  // ../../rtl/spi/spi_master.vhd(167)
  not u3 (n5, cpha);  // ../../rtl/spi/spi_master.vhd(100)
  not u30 (n63, state);  // ../../rtl/spi/spi_master.vhd(78)
  AL_MUX u31 (
    .i0(n59),
    .i1(enable),
    .sel(n63),
    .o(n64));  // ../../rtl/spi/spi_master.vhd(169)
  AL_MUX u32 (
    .i0(n61),
    .i1(1'b1),
    .sel(n63),
    .o(n65));  // ../../rtl/spi/spi_master.vhd(169)
  AL_MUX u33 (
    .i0(n58),
    .i1(1'b0),
    .sel(n63),
    .o(n66));  // ../../rtl/spi/spi_master.vhd(169)
  AL_MUX u34 (
    .i0(n55),
    .i1(n10),
    .sel(n63),
    .o(n70));  // ../../rtl/spi/spi_master.vhd(169)
  AL_MUX u35 (
    .i0(n53),
    .i1(n11),
    .sel(n63),
    .o(n71));  // ../../rtl/spi/spi_master.vhd(169)
  AL_MUX u36 (
    .i0(n62),
    .i1(enable),
    .sel(n63),
    .o(n75));  // ../../rtl/spi/spi_master.vhd(169)
  AL_MUX u37 (
    .i0(n66),
    .i1(continue),
    .sel(n0),
    .o(n79));  // ../../rtl/spi/spi_master.vhd(170)
  AL_MUX u38 (
    .i0(n70),
    .i1(sclk),
    .sel(n0),
    .o(n83));  // ../../rtl/spi/spi_master.vhd(170)
  AL_MUX u39 (
    .i0(n71),
    .i1(assert_data),
    .sel(n0),
    .o(n84));  // ../../rtl/spi/spi_master.vhd(170)
  AL_MUX u4 (
    .i0(sclk),
    .i1(cpol),
    .sel(enable),
    .o(n10));  // ../../rtl/spi/spi_master.vhd(107)
  or u40 (n89, n46, n33);  // ../../rtl/spi/spi_master.vhd(162)
  and u41 (n90, n16, n89);  // ../../rtl/spi/spi_master.vhd(167)
  or u42 (n91, n63, n90);  // ../../rtl/spi/spi_master.vhd(169)
  and u43 (n92, state, n50);  // ../../rtl/spi/spi_master.vhd(169)
  AL_MUX u44 (
    .i0(n78),
    .i1(tx_buffer[7]),
    .sel(n91),
    .o(n94));  // ../../rtl/spi/spi_master.vhd(170)
  AL_MUX u45 (
    .i0(n93),
    .i1(n92),
    .sel(n91),
    .o(n95));  // ../../rtl/spi/spi_master.vhd(170)
  bufif1 u46 (mosi, n78, n93);  // ../../rtl/spi/spi_master.vhd(171)
  AL_MUX u5 (
    .i0(assert_data),
    .i1(n5),
    .sel(enable),
    .o(n11));  // ../../rtl/spi/spi_master.vhd(107)
  AL_MUX u6 (
    .i0(1'b0),
    .i1(ss_n),
    .sel(slave[0]),
    .o(n15));  // ../../rtl/spi/spi_master.vhd(111)
  not u7 (n17, assert_data);  // ../../rtl/spi/spi_master.vhd(116)
  not u8 (n22, ss_n[0]);  // ../../rtl/spi/spi_master.vhd(124)
  and u9 (n23, n21, n22);  // ../../rtl/spi/spi_master.vhd(124)

endmodule 

module add_pu32_pu32_o32
  (
  i0,
  i1,
  o
  );

  input [31:0] i0;
  input [31:0] i1;
  output [31:0] o;



endmodule 

module eq_w32
  (
  i0,
  i1,
  o
  );

  input [31:0] i0;
  input [31:0] i1;
  output o;



endmodule 

module binary_mux_s1_w32
  (
  i0,
  i1,
  sel,
  o
  );

  input [31:0] i0;
  input [31:0] i1;
  input sel;
  output [31:0] o;



endmodule 

module binary_mux_s1_w4
  (
  i0,
  i1,
  sel,
  o
  );

  input [3:0] i0;
  input [3:0] i1;
  input sel;
  output [3:0] o;



endmodule 

module binary_mux_s4_w1
  (
  i0,
  i1,
  i10,
  i11,
  i12,
  i13,
  i14,
  i15,
  i2,
  i3,
  i4,
  i5,
  i6,
  i7,
  i8,
  i9,
  sel,
  o
  );

  input i0;
  input i1;
  input i10;
  input i11;
  input i12;
  input i13;
  input i14;
  input i15;
  input i2;
  input i3;
  input i4;
  input i5;
  input i6;
  input i7;
  input i8;
  input i9;
  input [3:0] sel;
  output o;



endmodule 

module binary_mux_s4_w32
  (
  i0,
  i1,
  i10,
  i11,
  i12,
  i13,
  i14,
  i15,
  i2,
  i3,
  i4,
  i5,
  i6,
  i7,
  i8,
  i9,
  sel,
  o
  );

  input [31:0] i0;
  input [31:0] i1;
  input [31:0] i10;
  input [31:0] i11;
  input [31:0] i12;
  input [31:0] i13;
  input [31:0] i14;
  input [31:0] i15;
  input [31:0] i2;
  input [31:0] i3;
  input [31:0] i4;
  input [31:0] i5;
  input [31:0] i6;
  input [31:0] i7;
  input [31:0] i8;
  input [31:0] i9;
  input [3:0] sel;
  output [31:0] o;



endmodule 

module binary_mux_s4_w8
  (
  i0,
  i1,
  i10,
  i11,
  i12,
  i13,
  i14,
  i15,
  i2,
  i3,
  i4,
  i5,
  i6,
  i7,
  i8,
  i9,
  sel,
  o
  );

  input [7:0] i0;
  input [7:0] i1;
  input [7:0] i10;
  input [7:0] i11;
  input [7:0] i12;
  input [7:0] i13;
  input [7:0] i14;
  input [7:0] i15;
  input [7:0] i2;
  input [7:0] i3;
  input [7:0] i4;
  input [7:0] i5;
  input [7:0] i6;
  input [7:0] i7;
  input [7:0] i8;
  input [7:0] i9;
  input [3:0] sel;
  output [7:0] o;



endmodule 

module binary_mux_s4_w4
  (
  i0,
  i1,
  i10,
  i11,
  i12,
  i13,
  i14,
  i15,
  i2,
  i3,
  i4,
  i5,
  i6,
  i7,
  i8,
  i9,
  sel,
  o
  );

  input [3:0] i0;
  input [3:0] i1;
  input [3:0] i10;
  input [3:0] i11;
  input [3:0] i12;
  input [3:0] i13;
  input [3:0] i14;
  input [3:0] i15;
  input [3:0] i2;
  input [3:0] i3;
  input [3:0] i4;
  input [3:0] i5;
  input [3:0] i6;
  input [3:0] i7;
  input [3:0] i8;
  input [3:0] i9;
  input [3:0] sel;
  output [3:0] o;



endmodule 

module reg_ar_as_w32
  (
  clk,
  d,
  en,
  reset,
  set,
  q
  );

  input clk;
  input [31:0] d;
  input en;
  input [31:0] reset;
  input [31:0] set;
  output [31:0] q;



endmodule 

module onehot_mux_s4_w32
  (
  i0,
  i1,
  i2,
  i3,
  sel,
  o
  );

  input [31:0] i0;
  input [31:0] i1;
  input [31:0] i2;
  input [31:0] i3;
  input [3:0] sel;
  output [31:0] o;



endmodule 

module onehot_mux_s3_w1
  (
  i0,
  i1,
  i2,
  sel,
  o
  );

  input i0;
  input i1;
  input i2;
  input [2:0] sel;
  output o;



endmodule 

module onehot_mux_s6_w8
  (
  i0,
  i1,
  i2,
  i3,
  i4,
  i5,
  sel,
  o
  );

  input [7:0] i0;
  input [7:0] i1;
  input [7:0] i2;
  input [7:0] i3;
  input [7:0] i4;
  input [7:0] i5;
  input [5:0] sel;
  output [7:0] o;



endmodule 

module onehot_mux_s6_w32
  (
  i0,
  i1,
  i2,
  i3,
  i4,
  i5,
  sel,
  o
  );

  input [31:0] i0;
  input [31:0] i1;
  input [31:0] i2;
  input [31:0] i3;
  input [31:0] i4;
  input [31:0] i5;
  input [5:0] sel;
  output [31:0] o;



endmodule 

module onehot_mux_s6_w4
  (
  i0,
  i1,
  i2,
  i3,
  i4,
  i5,
  sel,
  o
  );

  input [3:0] i0;
  input [3:0] i1;
  input [3:0] i2;
  input [3:0] i3;
  input [3:0] i4;
  input [3:0] i5;
  input [5:0] sel;
  output [3:0] o;



endmodule 

module onehot_mux_s4_w12
  (
  i0,
  i1,
  i2,
  i3,
  sel,
  o
  );

  input [11:0] i0;
  input [11:0] i1;
  input [11:0] i2;
  input [11:0] i3;
  input [3:0] sel;
  output [11:0] o;



endmodule 

module onehot_mux_s7_w4
  (
  i0,
  i1,
  i2,
  i3,
  i4,
  i5,
  i6,
  sel,
  o
  );

  input [3:0] i0;
  input [3:0] i1;
  input [3:0] i2;
  input [3:0] i3;
  input [3:0] i4;
  input [3:0] i5;
  input [3:0] i6;
  input [6:0] sel;
  output [3:0] o;



endmodule 

module onehot_mux_s7_w16
  (
  i0,
  i1,
  i2,
  i3,
  i4,
  i5,
  i6,
  sel,
  o
  );

  input [15:0] i0;
  input [15:0] i1;
  input [15:0] i2;
  input [15:0] i3;
  input [15:0] i4;
  input [15:0] i5;
  input [15:0] i6;
  input [6:0] sel;
  output [15:0] o;



endmodule 

module onehot_mux_s7_w8
  (
  i0,
  i1,
  i2,
  i3,
  i4,
  i5,
  i6,
  sel,
  o
  );

  input [7:0] i0;
  input [7:0] i1;
  input [7:0] i2;
  input [7:0] i3;
  input [7:0] i4;
  input [7:0] i5;
  input [7:0] i6;
  input [6:0] sel;
  output [7:0] o;



endmodule 

module onehot_mux_s7_w32
  (
  i0,
  i1,
  i2,
  i3,
  i4,
  i5,
  i6,
  sel,
  o
  );

  input [31:0] i0;
  input [31:0] i1;
  input [31:0] i2;
  input [31:0] i3;
  input [31:0] i4;
  input [31:0] i5;
  input [31:0] i6;
  input [6:0] sel;
  output [31:0] o;



endmodule 

module add_pu21_pu21_o21
  (
  i0,
  i1,
  o
  );

  input [20:0] i0;
  input [20:0] i1;
  output [20:0] o;



endmodule 

module add_pu16_pu16_o16
  (
  i0,
  i1,
  o
  );

  input [15:0] i0;
  input [15:0] i1;
  output [15:0] o;



endmodule 

module add_pu8_pu8_o8
  (
  i0,
  i1,
  o
  );

  input [7:0] i0;
  input [7:0] i1;
  output [7:0] o;



endmodule 

module lt_u21_u21
  (
  ci,
  i0,
  i1,
  o
  );

  input ci;
  input [20:0] i0;
  input [20:0] i1;
  output o;



endmodule 

module binary_mux_s3_w1
  (
  i0,
  i1,
  i2,
  i3,
  i4,
  i5,
  i6,
  i7,
  sel,
  o
  );

  input i0;
  input i1;
  input i2;
  input i3;
  input i4;
  input i5;
  input i6;
  input i7;
  input [2:0] sel;
  output o;



endmodule 

module binary_mux_s4_w21
  (
  i0,
  i1,
  i10,
  i11,
  i12,
  i13,
  i14,
  i15,
  i2,
  i3,
  i4,
  i5,
  i6,
  i7,
  i8,
  i9,
  sel,
  o
  );

  input [20:0] i0;
  input [20:0] i1;
  input [20:0] i10;
  input [20:0] i11;
  input [20:0] i12;
  input [20:0] i13;
  input [20:0] i14;
  input [20:0] i15;
  input [20:0] i2;
  input [20:0] i3;
  input [20:0] i4;
  input [20:0] i5;
  input [20:0] i6;
  input [20:0] i7;
  input [20:0] i8;
  input [20:0] i9;
  input [3:0] sel;
  output [20:0] o;



endmodule 

module binary_mux_s1_w12
  (
  i0,
  i1,
  sel,
  o
  );

  input [11:0] i0;
  input [11:0] i1;
  input sel;
  output [11:0] o;



endmodule 

module binary_mux_s4_w16
  (
  i0,
  i1,
  i10,
  i11,
  i12,
  i13,
  i14,
  i15,
  i2,
  i3,
  i4,
  i5,
  i6,
  i7,
  i8,
  i9,
  sel,
  o
  );

  input [15:0] i0;
  input [15:0] i1;
  input [15:0] i10;
  input [15:0] i11;
  input [15:0] i12;
  input [15:0] i13;
  input [15:0] i14;
  input [15:0] i15;
  input [15:0] i2;
  input [15:0] i3;
  input [15:0] i4;
  input [15:0] i5;
  input [15:0] i6;
  input [15:0] i7;
  input [15:0] i8;
  input [15:0] i9;
  input [3:0] sel;
  output [15:0] o;



endmodule 

module ne_w4
  (
  i0,
  i1,
  o
  );

  input [3:0] i0;
  input [3:0] i1;
  output o;



endmodule 

module reg_ar_as_w16
  (
  clk,
  d,
  en,
  reset,
  set,
  q
  );

  input clk;
  input [15:0] d;
  input en;
  input [15:0] reset;
  input [15:0] set;
  output [15:0] q;



endmodule 

module reg_ar_as_w21
  (
  clk,
  d,
  en,
  reset,
  set,
  q
  );

  input clk;
  input [20:0] d;
  input en;
  input [20:0] reset;
  input [20:0] set;
  output [20:0] q;



endmodule 

module eq_w7
  (
  i0,
  i1,
  o
  );

  input [6:0] i0;
  input [6:0] i1;
  output o;



endmodule 

module ym2149  // ../../rtl/sound/turbosound/ym2149.v(42)
  (
  BC,
  BDIR,
  CE,
  CLK,
  DI,
  IOA_in,
  IOB_in,
  MODE,
  RESET,
  SEL,
  ACTIVE,
  CHANNEL_A,
  CHANNEL_B,
  CHANNEL_C,
  DO,
  IOA_out,
  IOB_out
  );

  input BC;  // ../../rtl/sound/turbosound/ym2149.v(48)
  input BDIR;  // ../../rtl/sound/turbosound/ym2149.v(47)
  input CE;  // ../../rtl/sound/turbosound/ym2149.v(45)
  input CLK;  // ../../rtl/sound/turbosound/ym2149.v(44)
  input [7:0] DI;  // ../../rtl/sound/turbosound/ym2149.v(49)
  input [7:0] IOA_in;  // ../../rtl/sound/turbosound/ym2149.v(60)
  input [7:0] IOB_in;  // ../../rtl/sound/turbosound/ym2149.v(63)
  input MODE;  // ../../rtl/sound/turbosound/ym2149.v(56)
  input RESET;  // ../../rtl/sound/turbosound/ym2149.v(46)
  input SEL;  // ../../rtl/sound/turbosound/ym2149.v(55)
  output [5:0] ACTIVE;  // ../../rtl/sound/turbosound/ym2149.v(58)
  output [7:0] CHANNEL_A;  // ../../rtl/sound/turbosound/ym2149.v(51)
  output [7:0] CHANNEL_B;  // ../../rtl/sound/turbosound/ym2149.v(52)
  output [7:0] CHANNEL_C;  // ../../rtl/sound/turbosound/ym2149.v(53)
  output [7:0] DO;  // ../../rtl/sound/turbosound/ym2149.v(50)
  output [7:0] IOA_out;  // ../../rtl/sound/turbosound/ym2149.v(61)
  output [7:0] IOB_out;  // ../../rtl/sound/turbosound/ym2149.v(64)

  wire [5:0] A;  // ../../rtl/sound/turbosound/ym2149.v(316)
  wire [5:0] B;  // ../../rtl/sound/turbosound/ym2149.v(316)
  wire [5:0] C;  // ../../rtl/sound/turbosound/ym2149.v(316)
  wire [7:0] addr;  // ../../rtl/sound/turbosound/ym2149.v(71)
  wire [3:0] cnt_div;  // ../../rtl/sound/turbosound/ym2149.v(140)
  wire [7:0] dout;  // ../../rtl/sound/turbosound/ym2149.v(111)
  wire [15:0] env_gen_cnt;  // ../../rtl/sound/turbosound/ym2149.v(217)
  wire [15:0] env_gen_comp;  // ../../rtl/sound/turbosound/ym2149.v(214)
  wire [4:0] env_vol;  // ../../rtl/sound/turbosound/ym2149.v(233)
  wire [11:0] n119;
  wire [11:0] n123;
  wire [11:0] n124;
  wire [11:0] n127;
  wire [35:0] n129;
  wire [2:0] n130;
  wire [11:0] n132;
  wire [11:0] n136;
  wire [11:0] n137;
  wire [11:0] n140;
  wire [11:0] n143;
  wire [11:0] n147;
  wire [11:0] n148;
  wire [11:0] n151;
  wire [35:0] n153;
  wire [2:0] n154;
  wire [15:0] n165;
  wire [15:0] n168;
  wire [15:0] n169;
  wire [15:0] n170;
  wire [15:0] n173;
  wire [4:0] n183;
  wire [4:0] n185;
  wire [4:0] n186;
  wire [4:0] n187;
  wire [4:0] n216;
  wire [4:0] n219;
  wire [4:0] n222;
  wire [4:0] n229;
  wire [4:0] n230;
  wire [4:0] n235;
  wire [4:0] n236;
  wire [4:0] n241;
  wire [4:0] n242;
  wire [15:0] n35;
  wire [7:0] n36;
  wire [7:0] n37;
  wire [7:0] n38;
  wire [7:0] n39;
  wire [7:0] n40;
  wire [7:0] n41;
  wire [7:0] n42;
  wire [7:0] n43;
  wire [7:0] n44;
  wire [7:0] n45;
  wire [7:0] n46;
  wire [7:0] n47;
  wire [7:0] n48;
  wire [7:0] n49;
  wire [7:0] n50;
  wire [7:0] n51;
  wire [127:0] n53;
  wire [7:0] n55;
  wire [127:0] n56;
  wire [7:0] n58;
  wire [127:0] n59;
  wire [127:0] n61;
  wire [7:0] n62;
  wire [7:0] n68;
  wire [7:0] n69;
  wire [7:0] n70;
  wire [3:0] n73;
  wire [3:0] n74;
  wire [3:0] n79;
  wire [4:0] n82;
  wire [4:0] n89;
  wire [4:0] n90;
  wire [16:0] n91;
  wire [4:0] n92;
  wire [16:0] n93;
  wire [2:0] n94;
  wire [4:0] n95;
  wire [16:0] n96;
  wire [2:0] n97;
  wire [4:0] noise_gen_cnt;  // ../../rtl/sound/turbosound/ym2149.v(164)
  wire [2:0] noise_gen_op;  // ../../rtl/sound/turbosound/ym2149.v(160)
  wire [16:0] poly17;  // ../../rtl/sound/turbosound/ym2149.v(163)
  wire [11:0] \tone_gen_cnt[1] ;  // ../../rtl/sound/turbosound/ym2149.v(189)
  wire [11:0] \tone_gen_cnt[2] ;  // ../../rtl/sound/turbosound/ym2149.v(189)
  wire [11:0] \tone_gen_cnt[3] ;  // ../../rtl/sound/turbosound/ym2149.v(189)
  wire [11:0] \tone_gen_freq[1] ;  // ../../rtl/sound/turbosound/ym2149.v(180)
  wire [11:0] \tone_gen_freq[2] ;  // ../../rtl/sound/turbosound/ym2149.v(180)
  wire [11:0] \tone_gen_freq[3] ;  // ../../rtl/sound/turbosound/ym2149.v(180)
  wire [3:1] tone_gen_op;  // ../../rtl/sound/turbosound/ym2149.v(185)
  wire [7:0] \ymreg[0] ;  // ../../rtl/sound/turbosound/ym2149.v(72)
  wire [7:0] \ymreg[10] ;  // ../../rtl/sound/turbosound/ym2149.v(72)
  wire [7:0] \ymreg[11] ;  // ../../rtl/sound/turbosound/ym2149.v(72)
  wire [7:0] \ymreg[12] ;  // ../../rtl/sound/turbosound/ym2149.v(72)
  wire [7:0] \ymreg[13] ;  // ../../rtl/sound/turbosound/ym2149.v(72)
  wire [7:0] \ymreg[14] ;  // ../../rtl/sound/turbosound/ym2149.v(72)
  wire [7:0] \ymreg[15] ;  // ../../rtl/sound/turbosound/ym2149.v(72)
  wire [7:0] \ymreg[1] ;  // ../../rtl/sound/turbosound/ym2149.v(72)
  wire [7:0] \ymreg[2] ;  // ../../rtl/sound/turbosound/ym2149.v(72)
  wire [7:0] \ymreg[3] ;  // ../../rtl/sound/turbosound/ym2149.v(72)
  wire [7:0] \ymreg[4] ;  // ../../rtl/sound/turbosound/ym2149.v(72)
  wire [7:0] \ymreg[5] ;  // ../../rtl/sound/turbosound/ym2149.v(72)
  wire [7:0] \ymreg[6] ;  // ../../rtl/sound/turbosound/ym2149.v(72)
  wire [7:0] \ymreg[7] ;  // ../../rtl/sound/turbosound/ym2149.v(72)
  wire [7:0] \ymreg[8] ;  // ../../rtl/sound/turbosound/ym2149.v(72)
  wire [7:0] \ymreg[9] ;  // ../../rtl/sound/turbosound/ym2149.v(72)
  wire ena_div;  // ../../rtl/sound/turbosound/ym2149.v(136)
  wire ena_div_noise;  // ../../rtl/sound/turbosound/ym2149.v(137)
  wire env_ena;  // ../../rtl/sound/turbosound/ym2149.v(213)
  wire env_hold;  // ../../rtl/sound/turbosound/ym2149.v(240)
  wire env_inc;  // ../../rtl/sound/turbosound/ym2149.v(241)
  wire env_reset;  // ../../rtl/sound/turbosound/ym2149.v(75)
  wire is_bot;  // ../../rtl/sound/turbosound/ym2149.v(235)
  wire is_bot_p1;  // ../../rtl/sound/turbosound/ym2149.v(236)
  wire is_top;  // ../../rtl/sound/turbosound/ym2149.v(238)
  wire is_top_m1;  // ../../rtl/sound/turbosound/ym2149.v(237)
  wire n0;
  wire n1;
  wire n10;
  wire n100;
  wire n101;
  wire n102;
  wire n103;
  wire n104;
  wire n105;
  wire n106;
  wire n107;
  wire n108;
  wire n109;
  wire n11;
  wire n110;
  wire n111;
  wire n112;
  wire n113;
  wire n114;
  wire n115;
  wire n116;
  wire n117;
  wire n118;
  wire n12;
  wire n120;
  wire n121;
  wire n122;
  wire n125;
  wire n126;
  wire n128;
  wire n13;
  wire n131;
  wire n133;
  wire n134;
  wire n135;
  wire n138;
  wire n139;
  wire n14;
  wire n141;
  wire n142;
  wire n144;
  wire n145;
  wire n146;
  wire n149;
  wire n15;
  wire n150;
  wire n152;
  wire n155;
  wire n156;
  wire n157;
  wire n158;
  wire n159;
  wire n16;
  wire n160;
  wire n161;
  wire n162;
  wire n163;
  wire n164;
  wire n166;
  wire n167;
  wire n17;
  wire n171;
  wire n172;
  wire n174;
  wire n175;
  wire n176;
  wire n177;
  wire n178;
  wire n179;
  wire n18;
  wire n180;
  wire n181;
  wire n182;
  wire n184;
  wire n188;
  wire n189;
  wire n19;
  wire n190;
  wire n191;
  wire n192;
  wire n193;
  wire n194;
  wire n195;
  wire n196;
  wire n197;
  wire n198;
  wire n199;
  wire n2;
  wire n20;
  wire n200;
  wire n201;
  wire n202;
  wire n203;
  wire n204;
  wire n205;
  wire n206;
  wire n207;
  wire n208;
  wire n209;
  wire n21;
  wire n210;
  wire n211;
  wire n212;
  wire n213;
  wire n214;
  wire n215;
  wire n217;
  wire n218;
  wire n22;
  wire n220;
  wire n221;
  wire n223;
  wire n224;
  wire n225;
  wire n226;
  wire n227;
  wire n228;
  wire n23;
  wire n231;
  wire n232;
  wire n233;
  wire n234;
  wire n237;
  wire n238;
  wire n239;
  wire n24;
  wire n240;
  wire n25;
  wire n26;
  wire n27;
  wire n28;
  wire n29;
  wire n3;
  wire n30;
  wire n31;
  wire n32;
  wire n33;
  wire n34;
  wire n4;
  wire n5;
  wire n52;
  wire n54;
  wire n57;
  wire n6;
  wire n60;
  wire n63;
  wire n64;
  wire n65;
  wire n66;
  wire n67;
  wire n7;
  wire n71;
  wire n72;
  wire n75;
  wire n76;
  wire n77;
  wire n78;
  wire n8;
  wire n80;
  wire n81;
  wire n83;
  wire n84;
  wire n85;
  wire n86;
  wire n87;
  wire n88;
  wire n9;
  wire n98;
  wire n99;
  wire noise_div;  // ../../rtl/sound/turbosound/ym2149.v(141)

  add_pu5_pu5_o5 add0 (
    .i0(noise_gen_cnt),
    .i1(5'b00001),
    .o(n89));  // ../../rtl/sound/turbosound/ym2149.v(173)
  add_pu12_pu12_o12 add1 (
    .i0(\tone_gen_cnt[1] ),
    .i1(12'b000000000001),
    .o(n123));  // ../../rtl/sound/turbosound/ym2149.v(202)
  add_pu12_pu12_o12 add2 (
    .i0(\tone_gen_cnt[2] ),
    .i1(12'b000000000001),
    .o(n136));  // ../../rtl/sound/turbosound/ym2149.v(202)
  add_pu12_pu12_o12 add3 (
    .i0(\tone_gen_cnt[3] ),
    .i1(12'b000000000001),
    .o(n147));  // ../../rtl/sound/turbosound/ym2149.v(202)
  add_pu16_pu16_o16 add4 (
    .i0(env_gen_cnt),
    .i1(16'b0000000000000001),
    .o(n168));  // ../../rtl/sound/turbosound/ym2149.v(227)
  add_pu5_pu5_o5 add5 (
    .i0(env_vol),
    .i1(5'b00001),
    .o(n183));  // ../../rtl/sound/turbosound/ym2149.v(280)
  add_pu5_pu5_o5 add6 (
    .i0(env_vol),
    .i1(5'b11111),
    .o(n185));  // ../../rtl/sound/turbosound/ym2149.v(281)
  AL_DFF ena_div_noise_reg (
    .clk(CLK),
    .d(n78),
    .reset(1'b0),
    .set(1'b0),
    .q(ena_div_noise));  // ../../rtl/sound/turbosound/ym2149.v(157)
  AL_DFF ena_div_reg (
    .clk(CLK),
    .d(n77),
    .reset(1'b0),
    .set(1'b0),
    .q(ena_div));  // ../../rtl/sound/turbosound/ym2149.v(157)
  AL_DFF env_ena_reg (
    .clk(CLK),
    .d(n172),
    .reset(1'b0),
    .set(1'b0),
    .q(env_ena));  // ../../rtl/sound/turbosound/ym2149.v(231)
  AL_DFF env_hold_reg (
    .clk(CLK),
    .d(n224),
    .reset(1'b0),
    .set(1'b0),
    .q(env_hold));  // ../../rtl/sound/turbosound/ym2149.v(314)
  AL_DFF env_inc_reg (
    .clk(CLK),
    .d(n223),
    .reset(1'b0),
    .set(1'b0),
    .q(env_inc));  // ../../rtl/sound/turbosound/ym2149.v(314)
  AL_DFF env_reset_reg (
    .clk(CLK),
    .d(n63),
    .reset(1'b0),
    .set(1'b0),
    .q(env_reset));  // ../../rtl/sound/turbosound/ym2149.v(107)
  eq_w8 eq0 (
    .i0(addr),
    .i1(8'b00001101),
    .o(n52));  // ../../rtl/sound/turbosound/ym2149.v(103)
  eq_w5 eq1 (
    .i0(env_vol),
    .i1(5'b00000),
    .o(is_bot));  // ../../rtl/sound/turbosound/ym2149.v(235)
  eq_w5 eq2 (
    .i0(env_vol),
    .i1(5'b00001),
    .o(is_bot_p1));  // ../../rtl/sound/turbosound/ym2149.v(236)
  eq_w5 eq3 (
    .i0(env_vol),
    .i1(5'b11110),
    .o(is_top_m1));  // ../../rtl/sound/turbosound/ym2149.v(237)
  eq_w5 eq4 (
    .i0(env_vol),
    .i1(5'b11111),
    .o(is_top));  // ../../rtl/sound/turbosound/ym2149.v(238)
  lt_u5_u5 lt0 (
    .ci(1'b1),
    .i0(n82),
    .i1(noise_gen_cnt),
    .o(n83));  // ../../rtl/sound/turbosound/ym2149.v(169)
  lt_u12_u12 lt1 (
    .ci(1'b1),
    .i0(n119),
    .i1(\tone_gen_cnt[1] ),
    .o(n120));  // ../../rtl/sound/turbosound/ym2149.v(198)
  lt_u12_u12 lt2 (
    .ci(1'b1),
    .i0(n132),
    .i1(\tone_gen_cnt[2] ),
    .o(n133));  // ../../rtl/sound/turbosound/ym2149.v(198)
  lt_u12_u12 lt3 (
    .ci(1'b1),
    .i0(n143),
    .i1(\tone_gen_cnt[3] ),
    .o(n144));  // ../../rtl/sound/turbosound/ym2149.v(198)
  lt_u16_u16 lt4 (
    .ci(1'b1),
    .i0(env_gen_comp),
    .i1(env_gen_cnt),
    .o(n166));  // ../../rtl/sound/turbosound/ym2149.v(223)
  binary_mux_s1_w8 mux0 (
    .i0(\ymreg[15] ),
    .i1(DI),
    .sel(n35[15]),
    .o(n36));  // ../../rtl/sound/turbosound/ym2149.v(102)
  binary_mux_s1_w8 mux1 (
    .i0(\ymreg[14] ),
    .i1(DI),
    .sel(n35[14]),
    .o(n37));  // ../../rtl/sound/turbosound/ym2149.v(102)
  binary_mux_s1_w8 mux10 (
    .i0(\ymreg[5] ),
    .i1(DI),
    .sel(n35[5]),
    .o(n46));  // ../../rtl/sound/turbosound/ym2149.v(102)
  binary_mux_s1_w8 mux11 (
    .i0(\ymreg[4] ),
    .i1(DI),
    .sel(n35[4]),
    .o(n47));  // ../../rtl/sound/turbosound/ym2149.v(102)
  binary_mux_s1_w8 mux12 (
    .i0(\ymreg[3] ),
    .i1(DI),
    .sel(n35[3]),
    .o(n48));  // ../../rtl/sound/turbosound/ym2149.v(102)
  binary_mux_s1_w8 mux13 (
    .i0(\ymreg[2] ),
    .i1(DI),
    .sel(n35[2]),
    .o(n49));  // ../../rtl/sound/turbosound/ym2149.v(102)
  binary_mux_s1_w8 mux14 (
    .i0(\ymreg[1] ),
    .i1(DI),
    .sel(n35[1]),
    .o(n50));  // ../../rtl/sound/turbosound/ym2149.v(102)
  binary_mux_s1_w8 mux15 (
    .i0(\ymreg[0] ),
    .i1(DI),
    .sel(n35[0]),
    .o(n51));  // ../../rtl/sound/turbosound/ym2149.v(102)
  binary_mux_s1_w128 mux16 (
    .i0({\ymreg[0] ,\ymreg[1] ,\ymreg[2] ,\ymreg[3] ,\ymreg[4] ,\ymreg[5] ,\ymreg[6] ,\ymreg[7] ,\ymreg[8] ,\ymreg[9] ,\ymreg[10] ,\ymreg[11] ,\ymreg[12] ,\ymreg[13] ,\ymreg[14] ,\ymreg[15] }),
    .i1({n51,n50,n49,n48,n47,n46,n45,n44,n43,n42,n41,n40,n39,n38,n37,n36}),
    .sel(n34),
    .o(n53));  // ../../rtl/sound/turbosound/ym2149.v(104)
  binary_mux_s1_w8 mux17 (
    .i0(addr),
    .i1(DI),
    .sel(BC),
    .o(n55));  // ../../rtl/sound/turbosound/ym2149.v(104)
  binary_mux_s1_w128 mux18 (
    .i0(n53),
    .i1({\ymreg[0] ,\ymreg[1] ,\ymreg[2] ,\ymreg[3] ,\ymreg[4] ,\ymreg[5] ,\ymreg[6] ,\ymreg[7] ,\ymreg[8] ,\ymreg[9] ,\ymreg[10] ,\ymreg[11] ,\ymreg[12] ,\ymreg[13] ,\ymreg[14] ,\ymreg[15] }),
    .sel(BC),
    .o(n56));  // ../../rtl/sound/turbosound/ym2149.v(104)
  binary_mux_s1_w8 mux19 (
    .i0(addr),
    .i1(n55),
    .sel(BDIR),
    .o(n58));  // ../../rtl/sound/turbosound/ym2149.v(105)
  binary_mux_s1_w8 mux2 (
    .i0(\ymreg[13] ),
    .i1(DI),
    .sel(n35[13]),
    .o(n38));  // ../../rtl/sound/turbosound/ym2149.v(102)
  binary_mux_s1_w128 mux20 (
    .i0({\ymreg[0] ,\ymreg[1] ,\ymreg[2] ,\ymreg[3] ,\ymreg[4] ,\ymreg[5] ,\ymreg[6] ,\ymreg[7] ,\ymreg[8] ,\ymreg[9] ,\ymreg[10] ,\ymreg[11] ,\ymreg[12] ,\ymreg[13] ,\ymreg[14] ,\ymreg[15] }),
    .i1(n56),
    .sel(BDIR),
    .o(n59));  // ../../rtl/sound/turbosound/ym2149.v(105)
  binary_mux_s1_w128 mux21 (
    .i0(n59),
    .i1(128'b00000000000000000000000000000000000000000000000000000000111111110000000000000000000000000000000000000000000000000000000000000000),
    .sel(RESET),
    .o(n61));  // ../../rtl/sound/turbosound/ym2149.v(106)
  binary_mux_s1_w8 mux22 (
    .i0(n58),
    .i1(8'b00000000),
    .sel(RESET),
    .o(n62));  // ../../rtl/sound/turbosound/ym2149.v(106)
  binary_mux_s1_w8 mux23 (
    .i0(IOA_in),
    .i1(\ymreg[14] ),
    .sel(\ymreg[7] [6]),
    .o(n68));  // ../../rtl/sound/turbosound/ym2149.v(130)
  binary_mux_s1_w8 mux24 (
    .i0(IOB_in),
    .i1(\ymreg[15] ),
    .sel(\ymreg[7] [7]),
    .o(n69));  // ../../rtl/sound/turbosound/ym2149.v(131)
  binary_mux_s4_w8 mux25 (
    .i0(\ymreg[0] ),
    .i1({4'b0000,\ymreg[1] [3:0]}),
    .i10({3'b000,\ymreg[10] [4:0]}),
    .i11(\ymreg[11] ),
    .i12(\ymreg[12] ),
    .i13({4'b0000,\ymreg[13] [3:0]}),
    .i14(n68),
    .i15(n69),
    .i2(\ymreg[2] ),
    .i3({4'b0000,\ymreg[3] [3:0]}),
    .i4(\ymreg[4] ),
    .i5({4'b0000,\ymreg[5] [3:0]}),
    .i6({3'b000,\ymreg[6] [4:0]}),
    .i7(\ymreg[7] ),
    .i8({3'b000,\ymreg[8] [4:0]}),
    .i9({3'b000,\ymreg[9] [4:0]}),
    .sel(addr[3:0]),
    .o(n70));  // ../../rtl/sound/turbosound/ym2149.v(132)
  binary_mux_s1_w8 mux26 (
    .i0(8'b11111111),
    .i1(n70),
    .sel(n67),
    .o(dout));  // ../../rtl/sound/turbosound/ym2149.v(133)
  binary_mux_s1_w4 mux27 (
    .i0(n73),
    .i1({SEL,3'b111}),
    .sel(n71),
    .o(n74));  // ../../rtl/sound/turbosound/ym2149.v(155)
  binary_mux_s1_w4 mux28 (
    .i0(cnt_div),
    .i1(n74),
    .sel(CE),
    .o(n79));  // ../../rtl/sound/turbosound/ym2149.v(156)
  binary_mux_s1_w5 mux29 (
    .i0(n89),
    .i1(5'b00000),
    .sel(n84),
    .o(n90));  // ../../rtl/sound/turbosound/ym2149.v(174)
  binary_mux_s1_w8 mux3 (
    .i0(\ymreg[12] ),
    .i1(DI),
    .sel(n35[12]),
    .o(n39));  // ../../rtl/sound/turbosound/ym2149.v(102)
  binary_mux_s1_w17 mux30 (
    .i0(poly17),
    .i1({n87,poly17[16:1]}),
    .sel(n84),
    .o(n91));  // ../../rtl/sound/turbosound/ym2149.v(174)
  binary_mux_s1_w5 mux31 (
    .i0(noise_gen_cnt),
    .i1(n90),
    .sel(ena_div_noise),
    .o(n92));  // ../../rtl/sound/turbosound/ym2149.v(176)
  binary_mux_s1_w17 mux32 (
    .i0(poly17),
    .i1(n91),
    .sel(ena_div_noise),
    .o(n93));  // ../../rtl/sound/turbosound/ym2149.v(176)
  binary_mux_s1_w3 mux33 (
    .i0(noise_gen_op),
    .i1({poly17[0],poly17[0],poly17[0]}),
    .sel(ena_div_noise),
    .o(n94));  // ../../rtl/sound/turbosound/ym2149.v(176)
  binary_mux_s1_w5 mux34 (
    .i0(noise_gen_cnt),
    .i1(n92),
    .sel(CE),
    .o(n95));  // ../../rtl/sound/turbosound/ym2149.v(177)
  binary_mux_s1_w17 mux35 (
    .i0(poly17),
    .i1(n93),
    .sel(CE),
    .o(n96));  // ../../rtl/sound/turbosound/ym2149.v(177)
  binary_mux_s1_w3 mux36 (
    .i0(noise_gen_op),
    .i1(n94),
    .sel(CE),
    .o(n97));  // ../../rtl/sound/turbosound/ym2149.v(177)
  binary_mux_s1_w12 mux37 (
    .i0(12'b000000000000),
    .i1(n137),
    .sel(n131),
    .o(n140));  // ../../rtl/sound/turbosound/ym2149.v(207)
  binary_mux_s1_w12 mux38 (
    .i0(n123),
    .i1(12'b000000000000),
    .sel(n120),
    .o(n124));  // ../../rtl/sound/turbosound/ym2149.v(203)
  binary_mux_s1_w12 mux39 (
    .i0(12'b000000000000),
    .i1(n124),
    .sel(n118),
    .o(n127));  // ../../rtl/sound/turbosound/ym2149.v(207)
  binary_mux_s1_w8 mux4 (
    .i0(\ymreg[11] ),
    .i1(DI),
    .sel(n35[11]),
    .o(n40));  // ../../rtl/sound/turbosound/ym2149.v(102)
  binary_mux_s1_w12 mux40 (
    .i0(12'b000000000000),
    .i1(n148),
    .sel(n142),
    .o(n151));  // ../../rtl/sound/turbosound/ym2149.v(207)
  binary_mux_s1_w12 mux41 (
    .i0(n136),
    .i1(12'b000000000000),
    .sel(n133),
    .o(n137));  // ../../rtl/sound/turbosound/ym2149.v(203)
  binary_mux_s1_w12 mux42 (
    .i0(n147),
    .i1(12'b000000000000),
    .sel(n144),
    .o(n148));  // ../../rtl/sound/turbosound/ym2149.v(203)
  binary_mux_s1_w36 mux43 (
    .i0({\tone_gen_cnt[1] ,\tone_gen_cnt[2] ,\tone_gen_cnt[3] }),
    .i1({n127,n140,n151}),
    .sel(ena_div),
    .o(n129));  // ../../rtl/sound/turbosound/ym2149.v(208)
  binary_mux_s1_w36 mux44 (
    .i0({\tone_gen_cnt[1] ,\tone_gen_cnt[2] ,\tone_gen_cnt[3] }),
    .i1(n129),
    .sel(CE),
    .o(n153));  // ../../rtl/sound/turbosound/ym2149.v(210)
  binary_mux_s1_w3 mux45 (
    .i0(tone_gen_op),
    .i1(n130),
    .sel(CE),
    .o(n154));  // ../../rtl/sound/turbosound/ym2149.v(210)
  binary_mux_s1_w16 mux46 (
    .i0(16'b0000000000000000),
    .i1(n165),
    .sel(n164),
    .o(env_gen_comp));  // ../../rtl/sound/turbosound/ym2149.v(214)
  binary_mux_s1_w16 mux47 (
    .i0(n168),
    .i1(16'b0000000000000000),
    .sel(n166),
    .o(n169));  // ../../rtl/sound/turbosound/ym2149.v(228)
  binary_mux_s1_w16 mux48 (
    .i0(env_gen_cnt),
    .i1(n169),
    .sel(ena_div),
    .o(n170));  // ../../rtl/sound/turbosound/ym2149.v(229)
  binary_mux_s1_w16 mux49 (
    .i0(env_gen_cnt),
    .i1(n170),
    .sel(CE),
    .o(n173));  // ../../rtl/sound/turbosound/ym2149.v(230)
  binary_mux_s1_w8 mux5 (
    .i0(\ymreg[10] ),
    .i1(DI),
    .sel(n35[10]),
    .o(n41));  // ../../rtl/sound/turbosound/ym2149.v(102)
  binary_mux_s1_w5 mux50 (
    .i0(n185),
    .i1(n183),
    .sel(env_inc),
    .o(n186));  // ../../rtl/sound/turbosound/ym2149.v(281)
  binary_mux_s1_w5 mux51 (
    .i0(n186),
    .i1(env_vol),
    .sel(env_hold),
    .o(n187));  // ../../rtl/sound/turbosound/ym2149.v(282)
  binary_mux_s1_w5 mux52 (
    .i0(env_vol),
    .i1(n187),
    .sel(env_ena),
    .o(n216));  // ../../rtl/sound/turbosound/ym2149.v(312)
  binary_mux_s1_w5 mux53 (
    .i0(env_vol),
    .i1(n216),
    .sel(CE),
    .o(n219));  // ../../rtl/sound/turbosound/ym2149.v(313)
  binary_mux_s1_w5 mux54 (
    .i0(n219),
    .i1({n175,n175,n175,n175,n175}),
    .sel(n174),
    .o(n222));  // ../../rtl/sound/turbosound/ym2149.v(313)
  binary_mux_s1_w5 mux55 (
    .i0({\ymreg[8] [3:0],\ymreg[8] [3]}),
    .i1(env_vol),
    .sel(\ymreg[8] [4]),
    .o(n229));  // ../../rtl/sound/turbosound/ym2149.v(318)
  binary_mux_s1_w5 mux56 (
    .i0(5'b00000),
    .i1(n229),
    .sel(n227),
    .o(n230));  // ../../rtl/sound/turbosound/ym2149.v(318)
  binary_mux_s1_w5 mux57 (
    .i0({\ymreg[9] [3:0],\ymreg[9] [3]}),
    .i1(env_vol),
    .sel(\ymreg[9] [4]),
    .o(n235));  // ../../rtl/sound/turbosound/ym2149.v(319)
  binary_mux_s1_w5 mux58 (
    .i0(5'b00000),
    .i1(n235),
    .sel(n233),
    .o(n236));  // ../../rtl/sound/turbosound/ym2149.v(319)
  binary_mux_s1_w5 mux59 (
    .i0({\ymreg[10] [3:0],\ymreg[10] [3]}),
    .i1(env_vol),
    .sel(\ymreg[10] [4]),
    .o(n241));  // ../../rtl/sound/turbosound/ym2149.v(320)
  binary_mux_s1_w8 mux6 (
    .i0(\ymreg[9] ),
    .i1(DI),
    .sel(n35[9]),
    .o(n42));  // ../../rtl/sound/turbosound/ym2149.v(102)
  binary_mux_s1_w5 mux60 (
    .i0(5'b00000),
    .i1(n241),
    .sel(n239),
    .o(n242));  // ../../rtl/sound/turbosound/ym2149.v(320)
  binary_mux_s1_w3 mux61 (
    .i0(tone_gen_op),
    .i1({n152,n141,n128}),
    .sel(ena_div),
    .o(n130));  // ../../rtl/sound/turbosound/ym2149.v(208)
  binary_mux_s1_w8 mux7 (
    .i0(\ymreg[8] ),
    .i1(DI),
    .sel(n35[8]),
    .o(n43));  // ../../rtl/sound/turbosound/ym2149.v(102)
  binary_mux_s1_w8 mux8 (
    .i0(\ymreg[7] ),
    .i1(DI),
    .sel(n35[7]),
    .o(n44));  // ../../rtl/sound/turbosound/ym2149.v(102)
  binary_mux_s1_w8 mux9 (
    .i0(\ymreg[6] ),
    .i1(DI),
    .sel(n35[6]),
    .o(n45));  // ../../rtl/sound/turbosound/ym2149.v(102)
  AL_DFF noise_div_reg (
    .clk(CLK),
    .d(n80),
    .reset(1'b0),
    .set(1'b0),
    .q(noise_div));  // ../../rtl/sound/turbosound/ym2149.v(157)
  ram_r6x8_r6x8_r6x8 #(
    .DATA_DEPTH_LEFT("0"),
    .DATA_DEPTH_RIGHT("63"),
    .DATA_WIDTH_LEFT("7"),
    .DATA_WIDTH_RIGHT("0"))
    ram_volTable (
    .ra1(A),
    .ra2(B),
    .ra3(C),
    .re1(1'b1),
    .re2(1'b1),
    .re3(1'b1),
    .rd1(CHANNEL_A),
    .rd2(CHANNEL_B),
    .rd3(CHANNEL_C));  // ../../rtl/sound/turbosound/ym2149.v(324)
  reg_ar_as_w8 reg0 (
    .clk(CLK),
    .d(n62),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(addr));  // ../../rtl/sound/turbosound/ym2149.v(107)
  reg_ar_as_w4 reg1 (
    .clk(CLK),
    .d(n79),
    .reset(4'b0000),
    .set(4'b0000),
    .q(cnt_div));  // ../../rtl/sound/turbosound/ym2149.v(157)
  reg_ar_as_w6 reg10 (
    .clk(CLK),
    .d({MODE,n236}),
    .reset(6'b000000),
    .set(6'b000000),
    .q(B));  // ../../rtl/sound/turbosound/ym2149.v(321)
  reg_ar_as_w6 reg11 (
    .clk(CLK),
    .d({MODE,n242}),
    .reset(6'b000000),
    .set(6'b000000),
    .q(C));  // ../../rtl/sound/turbosound/ym2149.v(321)
  reg_ar_as_w128 reg12 (
    .clk(CLK),
    .d(n61),
    .reset(128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000),
    .set(128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000),
    .q({\ymreg[0] ,\ymreg[1] ,\ymreg[2] ,\ymreg[3] ,\ymreg[4] ,\ymreg[5] ,\ymreg[6] ,\ymreg[7] ,\ymreg[8] ,\ymreg[9] ,\ymreg[10] ,\ymreg[11] ,\ymreg[12] ,\ymreg[13] ,\ymreg[14] ,\ymreg[15] }));  // ../../rtl/sound/turbosound/ym2149.v(107)
  reg_ar_as_w5 reg2 (
    .clk(CLK),
    .d(n95),
    .reset(5'b00000),
    .set(5'b00000),
    .q(noise_gen_cnt));  // ../../rtl/sound/turbosound/ym2149.v(178)
  reg_ar_as_w17 reg3 (
    .clk(CLK),
    .d(n96),
    .reset(17'b00000000000000000),
    .set(17'b00000000000000000),
    .q(poly17));  // ../../rtl/sound/turbosound/ym2149.v(178)
  reg_ar_as_w3 reg4 (
    .clk(CLK),
    .d(n97),
    .reset(3'b000),
    .set(3'b000),
    .q(noise_gen_op));  // ../../rtl/sound/turbosound/ym2149.v(178)
  reg_ar_as_w36 reg5 (
    .clk(CLK),
    .d(n153),
    .reset(36'b000000000000000000000000000000000000),
    .set(36'b000000000000000000000000000000000000),
    .q({\tone_gen_cnt[1] ,\tone_gen_cnt[2] ,\tone_gen_cnt[3] }));  // ../../rtl/sound/turbosound/ym2149.v(211)
  reg_ar_as_w3 reg6 (
    .clk(CLK),
    .d(n154),
    .reset(3'b000),
    .set(3'b000),
    .q(tone_gen_op));  // ../../rtl/sound/turbosound/ym2149.v(211)
  reg_ar_as_w16 reg7 (
    .clk(CLK),
    .d(n173),
    .reset(16'b0000000000000000),
    .set(16'b0000000000000000),
    .q(env_gen_cnt));  // ../../rtl/sound/turbosound/ym2149.v(231)
  reg_ar_as_w5 reg8 (
    .clk(CLK),
    .d(n222),
    .reset(5'b00000),
    .set(5'b00000),
    .q(env_vol));  // ../../rtl/sound/turbosound/ym2149.v(314)
  reg_ar_as_w6 reg9 (
    .clk(CLK),
    .d({MODE,n230}),
    .reset(6'b000000),
    .set(6'b000000),
    .q(A));  // ../../rtl/sound/turbosound/ym2149.v(321)
  add_pu4_mu4_o4 sub0 (
    .i0(cnt_div),
    .i1(4'b0001),
    .o(n73));  // ../../rtl/sound/turbosound/ym2149.v(154)
  add_pu5_mu5_o5 sub1 (
    .i0(\ymreg[6] [4:0]),
    .i1(5'b00001),
    .o(n82));  // ../../rtl/sound/turbosound/ym2149.v(169)
  add_pu12_mu12_o12 sub2 (
    .i0(\tone_gen_freq[1] ),
    .i1(12'b000000000001),
    .o(n119));  // ../../rtl/sound/turbosound/ym2149.v(198)
  add_pu12_mu12_o12 sub3 (
    .i0(\tone_gen_freq[2] ),
    .i1(12'b000000000001),
    .o(n132));  // ../../rtl/sound/turbosound/ym2149.v(198)
  add_pu12_mu12_o12 sub4 (
    .i0(\tone_gen_freq[3] ),
    .i1(12'b000000000001),
    .o(n143));  // ../../rtl/sound/turbosound/ym2149.v(198)
  add_pu16_mu16_o16 sub5 (
    .i0({\ymreg[12] ,\ymreg[11] }),
    .i1(16'b0000000000000001),
    .o(n165));  // ../../rtl/sound/turbosound/ym2149.v(214)
  AL_MUX u10 (
    .i0(1'b0),
    .i1(n57),
    .sel(BDIR),
    .o(n60));  // ../../rtl/sound/turbosound/ym2149.v(105)
  or u100 (n114, \ymreg[6] [3], \ymreg[6] [4]);  // ../../rtl/sound/turbosound/ym2149.v(169)
  or u101 (n115, \ymreg[6] [2], n114);  // ../../rtl/sound/turbosound/ym2149.v(169)
  or u102 (n117, n113, n115);  // ../../rtl/sound/turbosound/ym2149.v(169)
  not u103 (n81, n117);  // ../../rtl/sound/turbosound/ym2149.v(169)
  or u104 (n162, cnt_div[2], cnt_div[3]);  // ../../rtl/sound/turbosound/ym2149.v(147)
  or u105 (n163, n161, n162);  // ../../rtl/sound/turbosound/ym2149.v(147)
  not u106 (n71, n163);  // ../../rtl/sound/turbosound/ym2149.v(147)
  buf u107 (DO[1], dout[1]);  // ../../rtl/sound/turbosound/ym2149.v(110)
  buf u108 (DO[2], dout[2]);  // ../../rtl/sound/turbosound/ym2149.v(110)
  buf u109 (DO[3], dout[3]);  // ../../rtl/sound/turbosound/ym2149.v(110)
  AL_MUX u11 (
    .i0(n60),
    .i1(1'b0),
    .sel(RESET),
    .o(n63));  // ../../rtl/sound/turbosound/ym2149.v(106)
  and u110 (n101, n158, n156);  // ../../rtl/sound/turbosound/ym2149.v(102)
  or u111 (n32, \tone_gen_freq[2] [1], \tone_gen_freq[2] [2]);  // ../../rtl/sound/turbosound/ym2149.v(197)
  not u112 (n145, tone_gen_op[3]);  // ../../rtl/sound/turbosound/ym2149.v(200)
  or u113 (n164, n234, n178);  // ../../rtl/sound/turbosound/ym2149.v(214)
  or u114 (n176, \tone_gen_freq[3] [0], n177);  // ../../rtl/sound/turbosound/ym2149.v(197)
  or u115 (n184, \tone_gen_freq[3] [4], \tone_gen_freq[3] [5]);  // ../../rtl/sound/turbosound/ym2149.v(197)
  or u116 (n182, \tone_gen_freq[3] [3], n184);  // ../../rtl/sound/turbosound/ym2149.v(197)
  or u117 (n167, n176, n182);  // ../../rtl/sound/turbosound/ym2149.v(197)
  or u118 (n146, \tone_gen_freq[3] [7], \tone_gen_freq[3] [8]);  // ../../rtl/sound/turbosound/ym2149.v(197)
  or u119 (n135, \tone_gen_freq[3] [6], n146);  // ../../rtl/sound/turbosound/ym2149.v(197)
  not u12 (n160, addr[0]);  // ../../rtl/sound/turbosound/ym2149.v(102)
  or u120 (n122, \tone_gen_freq[3] [10], \tone_gen_freq[3] [11]);  // ../../rtl/sound/turbosound/ym2149.v(197)
  or u121 (n88, \tone_gen_freq[3] [9], n122);  // ../../rtl/sound/turbosound/ym2149.v(197)
  or u122 (n33, n135, n88);  // ../../rtl/sound/turbosound/ym2149.v(197)
  or u123 (n142, n167, n33);  // ../../rtl/sound/turbosound/ym2149.v(197)
  or u124 (n31, \tone_gen_freq[2] [0], n32);  // ../../rtl/sound/turbosound/ym2149.v(197)
  AL_MUX u125 (
    .i0(tone_gen_op[3]),
    .i1(n145),
    .sel(n144),
    .o(n149));  // ../../rtl/sound/turbosound/ym2149.v(203)
  not u126 (n150, \ymreg[7] [3]);  // ../../rtl/sound/turbosound/ym2149.v(205)
  or u127 (n30, \tone_gen_freq[2] [4], \tone_gen_freq[2] [5]);  // ../../rtl/sound/turbosound/ym2149.v(197)
  or u128 (n29, \tone_gen_freq[2] [3], n30);  // ../../rtl/sound/turbosound/ym2149.v(197)
  or u129 (n28, n31, n29);  // ../../rtl/sound/turbosound/ym2149.v(197)
  not u13 (n64, BDIR);  // ../../rtl/sound/turbosound/ym2149.v(114)
  or u130 (n27, \tone_gen_freq[2] [7], \tone_gen_freq[2] [8]);  // ../../rtl/sound/turbosound/ym2149.v(197)
  or u131 (n26, \tone_gen_freq[2] [6], n27);  // ../../rtl/sound/turbosound/ym2149.v(197)
  or u132 (n25, \tone_gen_freq[2] [10], \tone_gen_freq[2] [11]);  // ../../rtl/sound/turbosound/ym2149.v(197)
  or u133 (n24, \tone_gen_freq[2] [9], n25);  // ../../rtl/sound/turbosound/ym2149.v(197)
  or u134 (n23, n26, n24);  // ../../rtl/sound/turbosound/ym2149.v(197)
  or u135 (n131, n28, n23);  // ../../rtl/sound/turbosound/ym2149.v(197)
  or u136 (n21, \tone_gen_freq[1] [0], n22);  // ../../rtl/sound/turbosound/ym2149.v(197)
  or u137 (n20, \tone_gen_freq[1] [4], \tone_gen_freq[1] [5]);  // ../../rtl/sound/turbosound/ym2149.v(197)
  AL_MUX u138 (
    .i0(n150),
    .i1(n149),
    .sel(n142),
    .o(n152));  // ../../rtl/sound/turbosound/ym2149.v(207)
  buf u139 (DO[4], dout[4]);  // ../../rtl/sound/turbosound/ym2149.v(110)
  and u14 (n65, n64, BC);  // ../../rtl/sound/turbosound/ym2149.v(114)
  buf u140 (DO[5], dout[5]);  // ../../rtl/sound/turbosound/ym2149.v(110)
  buf u141 (DO[6], dout[6]);  // ../../rtl/sound/turbosound/ym2149.v(110)
  buf u142 (DO[7], dout[7]);  // ../../rtl/sound/turbosound/ym2149.v(110)
  not u143 (n155, addr[1]);  // ../../rtl/sound/turbosound/ym2149.v(102)
  not u144 (n156, addr[2]);  // ../../rtl/sound/turbosound/ym2149.v(102)
  not u145 (n157, addr[3]);  // ../../rtl/sound/turbosound/ym2149.v(102)
  and u146 (n159, n160, addr[1]);  // ../../rtl/sound/turbosound/ym2149.v(102)
  and u147 (n158, n160, n155);  // ../../rtl/sound/turbosound/ym2149.v(102)
  and u148 (n110, addr[0], addr[1]);  // ../../rtl/sound/turbosound/ym2149.v(102)
  and u149 (n109, addr[0], n155);  // ../../rtl/sound/turbosound/ym2149.v(102)
  or u15 (n66, \ymreg[11] [6], \ymreg[11] [7]);  // ../../rtl/sound/turbosound/ym2149.v(214)
  and u150 (n108, n158, addr[2]);  // ../../rtl/sound/turbosound/ym2149.v(102)
  or u151 (n177, \tone_gen_freq[3] [1], \tone_gen_freq[3] [2]);  // ../../rtl/sound/turbosound/ym2149.v(197)
  AL_MUX u152 (
    .i0(1'b0),
    .i1(n166),
    .sel(ena_div),
    .o(n171));  // ../../rtl/sound/turbosound/ym2149.v(229)
  AL_MUX u153 (
    .i0(env_ena),
    .i1(n171),
    .sel(CE),
    .o(n172));  // ../../rtl/sound/turbosound/ym2149.v(230)
  or u154 (n174, env_reset, RESET);  // ../../rtl/sound/turbosound/ym2149.v(266)
  not u155 (n175, \ymreg[13] [2]);  // ../../rtl/sound/turbosound/ym2149.v(268)
  or u156 (n180, \ymreg[12] [6], \ymreg[12] [7]);  // ../../rtl/sound/turbosound/ym2149.v(214)
  or u157 (n181, \ymreg[12] [4], \ymreg[12] [5]);  // ../../rtl/sound/turbosound/ym2149.v(214)
  not u158 (n188, \ymreg[13] [3]);  // ../../rtl/sound/turbosound/ym2149.v(285)
  or u159 (n189, n228, n193);  // ../../rtl/sound/turbosound/ym2149.v(214)
  and u16 (n67, n65, n34);  // ../../rtl/sound/turbosound/ym2149.v(114)
  AL_MUX u160 (
    .i0(env_hold),
    .i1(1'b1),
    .sel(is_bot_p1),
    .o(n190));  // ../../rtl/sound/turbosound/ym2149.v(287)
  AL_MUX u161 (
    .i0(env_hold),
    .i1(1'b1),
    .sel(is_top),
    .o(n191));  // ../../rtl/sound/turbosound/ym2149.v(288)
  AL_MUX u162 (
    .i0(n190),
    .i1(n191),
    .sel(env_inc),
    .o(n192));  // ../../rtl/sound/turbosound/ym2149.v(288)
  or u163 (n193, \ymreg[12] [2], \ymreg[12] [3]);  // ../../rtl/sound/turbosound/ym2149.v(214)
  AL_MUX u164 (
    .i0(env_hold),
    .i1(1'b1),
    .sel(is_bot),
    .o(n194));  // ../../rtl/sound/turbosound/ym2149.v(292)
  or u165 (n195, \ymreg[11] [4], \ymreg[11] [5]);  // ../../rtl/sound/turbosound/ym2149.v(214)
  AL_MUX u166 (
    .i0(n190),
    .i1(n194),
    .sel(\ymreg[13] [1]),
    .o(n196));  // ../../rtl/sound/turbosound/ym2149.v(293)
  or u167 (n197, n205, n202);  // ../../rtl/sound/turbosound/ym2149.v(214)
  AL_MUX u168 (
    .i0(env_hold),
    .i1(1'b1),
    .sel(is_top_m1),
    .o(n198));  // ../../rtl/sound/turbosound/ym2149.v(296)
  AL_MUX u169 (
    .i0(n198),
    .i1(n191),
    .sel(\ymreg[13] [1]),
    .o(n199));  // ../../rtl/sound/turbosound/ym2149.v(296)
  buf u17 (DO[0], dout[0]);  // ../../rtl/sound/turbosound/ym2149.v(110)
  AL_MUX u170 (
    .i0(n196),
    .i1(n199),
    .sel(env_inc),
    .o(n200));  // ../../rtl/sound/turbosound/ym2149.v(296)
  not u171 (n201, env_inc);  // ../../rtl/sound/turbosound/ym2149.v(298)
  or u172 (n202, \ymreg[11] [2], \ymreg[11] [3]);  // ../../rtl/sound/turbosound/ym2149.v(214)
  AL_MUX u173 (
    .i0(n190),
    .i1(1'b0),
    .sel(is_bot),
    .o(n203));  // ../../rtl/sound/turbosound/ym2149.v(303)
  AL_MUX u174 (
    .i0(env_inc),
    .i1(1'b1),
    .sel(is_bot),
    .o(n204));  // ../../rtl/sound/turbosound/ym2149.v(303)
  or u175 (n205, \ymreg[11] [0], \ymreg[11] [1]);  // ../../rtl/sound/turbosound/ym2149.v(214)
  AL_MUX u176 (
    .i0(n198),
    .i1(1'b0),
    .sel(is_top),
    .o(n206));  // ../../rtl/sound/turbosound/ym2149.v(309)
  AL_MUX u177 (
    .i0(env_inc),
    .i1(1'b0),
    .sel(is_top),
    .o(n207));  // ../../rtl/sound/turbosound/ym2149.v(309)
  AL_MUX u178 (
    .i0(n206),
    .i1(n203),
    .sel(n201),
    .o(n208));  // ../../rtl/sound/turbosound/ym2149.v(310)
  AL_MUX u179 (
    .i0(n207),
    .i1(n204),
    .sel(n201),
    .o(n209));  // ../../rtl/sound/turbosound/ym2149.v(310)
  not u18 (n72, noise_div);  // ../../rtl/sound/turbosound/ym2149.v(151)
  AL_MUX u180 (
    .i0(env_hold),
    .i1(n208),
    .sel(\ymreg[13] [1]),
    .o(n210));  // ../../rtl/sound/turbosound/ym2149.v(311)
  AL_MUX u181 (
    .i0(env_inc),
    .i1(n209),
    .sel(\ymreg[13] [1]),
    .o(n211));  // ../../rtl/sound/turbosound/ym2149.v(311)
  AL_MUX u182 (
    .i0(n210),
    .i1(n200),
    .sel(\ymreg[13] [0]),
    .o(n212));  // ../../rtl/sound/turbosound/ym2149.v(311)
  AL_MUX u183 (
    .i0(n211),
    .i1(env_inc),
    .sel(\ymreg[13] [0]),
    .o(n213));  // ../../rtl/sound/turbosound/ym2149.v(311)
  AL_MUX u184 (
    .i0(n212),
    .i1(n192),
    .sel(n188),
    .o(n214));  // ../../rtl/sound/turbosound/ym2149.v(311)
  AL_MUX u185 (
    .i0(n213),
    .i1(env_inc),
    .sel(n188),
    .o(n215));  // ../../rtl/sound/turbosound/ym2149.v(311)
  AL_MUX u186 (
    .i0(env_hold),
    .i1(n214),
    .sel(env_ena),
    .o(n217));  // ../../rtl/sound/turbosound/ym2149.v(312)
  AL_MUX u187 (
    .i0(env_inc),
    .i1(n215),
    .sel(env_ena),
    .o(n218));  // ../../rtl/sound/turbosound/ym2149.v(312)
  AL_MUX u188 (
    .i0(env_hold),
    .i1(n217),
    .sel(CE),
    .o(n220));  // ../../rtl/sound/turbosound/ym2149.v(313)
  AL_MUX u189 (
    .i0(env_inc),
    .i1(n218),
    .sel(CE),
    .o(n221));  // ../../rtl/sound/turbosound/ym2149.v(313)
  AL_MUX u19 (
    .i0(noise_div),
    .i1(n72),
    .sel(n71),
    .o(n75));  // ../../rtl/sound/turbosound/ym2149.v(155)
  AL_MUX u190 (
    .i0(n221),
    .i1(\ymreg[13] [2]),
    .sel(n174),
    .o(n223));  // ../../rtl/sound/turbosound/ym2149.v(313)
  AL_MUX u191 (
    .i0(n220),
    .i1(1'b0),
    .sel(n174),
    .o(n224));  // ../../rtl/sound/turbosound/ym2149.v(313)
  or u192 (n225, \ymreg[7] [0], tone_gen_op[1]);  // ../../rtl/sound/turbosound/ym2149.v(318)
  or u193 (n226, \ymreg[7] [3], noise_gen_op[0]);  // ../../rtl/sound/turbosound/ym2149.v(318)
  and u194 (n227, n225, n226);  // ../../rtl/sound/turbosound/ym2149.v(318)
  or u195 (n228, \ymreg[12] [0], \ymreg[12] [1]);  // ../../rtl/sound/turbosound/ym2149.v(214)
  or u196 (n231, \ymreg[7] [1], tone_gen_op[2]);  // ../../rtl/sound/turbosound/ym2149.v(319)
  or u197 (n232, \ymreg[7] [4], noise_gen_op[1]);  // ../../rtl/sound/turbosound/ym2149.v(319)
  and u198 (n233, n231, n232);  // ../../rtl/sound/turbosound/ym2149.v(319)
  or u199 (n234, n197, n240);  // ../../rtl/sound/turbosound/ym2149.v(214)
  or u2 (n178, n189, n179);  // ../../rtl/sound/turbosound/ym2149.v(214)
  AL_MUX u20 (
    .i0(1'b0),
    .i1(noise_div),
    .sel(n71),
    .o(n76));  // ../../rtl/sound/turbosound/ym2149.v(155)
  or u200 (n237, \ymreg[7] [2], tone_gen_op[3]);  // ../../rtl/sound/turbosound/ym2149.v(320)
  or u201 (n238, \ymreg[7] [5], noise_gen_op[2]);  // ../../rtl/sound/turbosound/ym2149.v(320)
  and u202 (n239, n237, n238);  // ../../rtl/sound/turbosound/ym2149.v(320)
  or u203 (n240, n195, n66);  // ../../rtl/sound/turbosound/ym2149.v(214)
  and u204 (n104, n109, n156);  // ../../rtl/sound/turbosound/ym2149.v(102)
  and u205 (n103, n159, addr[2]);  // ../../rtl/sound/turbosound/ym2149.v(102)
  and u206 (n102, n159, n156);  // ../../rtl/sound/turbosound/ym2149.v(102)
  and u207 (n100, n110, addr[2]);  // ../../rtl/sound/turbosound/ym2149.v(102)
  and u208 (n99, n110, n156);  // ../../rtl/sound/turbosound/ym2149.v(102)
  and u209 (n35[8], n101, addr[3]);  // ../../rtl/sound/turbosound/ym2149.v(102)
  AL_MUX u21 (
    .i0(ena_div),
    .i1(n71),
    .sel(CE),
    .o(n77));  // ../../rtl/sound/turbosound/ym2149.v(156)
  and u210 (n35[0], n101, n157);  // ../../rtl/sound/turbosound/ym2149.v(102)
  and u211 (n35[9], n104, addr[3]);  // ../../rtl/sound/turbosound/ym2149.v(102)
  and u212 (n35[1], n104, n157);  // ../../rtl/sound/turbosound/ym2149.v(102)
  and u213 (n35[10], n102, addr[3]);  // ../../rtl/sound/turbosound/ym2149.v(102)
  and u214 (n35[2], n102, n157);  // ../../rtl/sound/turbosound/ym2149.v(102)
  and u215 (n35[11], n99, addr[3]);  // ../../rtl/sound/turbosound/ym2149.v(102)
  and u216 (n35[3], n99, n157);  // ../../rtl/sound/turbosound/ym2149.v(102)
  and u217 (n35[12], n108, addr[3]);  // ../../rtl/sound/turbosound/ym2149.v(102)
  and u218 (n35[4], n108, n157);  // ../../rtl/sound/turbosound/ym2149.v(102)
  and u219 (n35[13], n105, addr[3]);  // ../../rtl/sound/turbosound/ym2149.v(102)
  AL_MUX u22 (
    .i0(ena_div_noise),
    .i1(n76),
    .sel(CE),
    .o(n78));  // ../../rtl/sound/turbosound/ym2149.v(156)
  and u220 (n35[5], n105, n157);  // ../../rtl/sound/turbosound/ym2149.v(102)
  and u221 (n35[14], n103, addr[3]);  // ../../rtl/sound/turbosound/ym2149.v(102)
  and u222 (n35[6], n103, n157);  // ../../rtl/sound/turbosound/ym2149.v(102)
  and u223 (n35[15], n100, addr[3]);  // ../../rtl/sound/turbosound/ym2149.v(102)
  and u224 (n35[7], n100, n157);  // ../../rtl/sound/turbosound/ym2149.v(102)
  or u225 (n106, addr[6], addr[7]);  // ../../rtl/sound/turbosound/ym2149.v(101)
  or u226 (n107, n98, n106);  // ../../rtl/sound/turbosound/ym2149.v(101)
  not u227 (n34, n107);  // ../../rtl/sound/turbosound/ym2149.v(101)
  buf u228 (IOB_out[1], \ymreg[15] [1]);  // ../../rtl/sound/turbosound/ym2149.v(69)
  buf u229 (IOB_out[2], \ymreg[15] [2]);  // ../../rtl/sound/turbosound/ym2149.v(69)
  AL_MUX u23 (
    .i0(noise_div),
    .i1(n75),
    .sel(CE),
    .o(n80));  // ../../rtl/sound/turbosound/ym2149.v(156)
  buf u230 (IOB_out[3], \ymreg[15] [3]);  // ../../rtl/sound/turbosound/ym2149.v(69)
  buf u231 (IOB_out[4], \ymreg[15] [4]);  // ../../rtl/sound/turbosound/ym2149.v(69)
  buf u232 (IOB_out[5], \ymreg[15] [5]);  // ../../rtl/sound/turbosound/ym2149.v(69)
  buf u233 (IOB_out[6], \ymreg[15] [6]);  // ../../rtl/sound/turbosound/ym2149.v(69)
  buf u234 (IOB_out[7], \ymreg[15] [7]);  // ../../rtl/sound/turbosound/ym2149.v(69)
  buf u235 (IOA_out[1], \ymreg[14] [1]);  // ../../rtl/sound/turbosound/ym2149.v(68)
  buf u236 (IOA_out[2], \ymreg[14] [2]);  // ../../rtl/sound/turbosound/ym2149.v(68)
  buf u237 (IOA_out[3], \ymreg[14] [3]);  // ../../rtl/sound/turbosound/ym2149.v(68)
  buf u238 (IOA_out[4], \ymreg[14] [4]);  // ../../rtl/sound/turbosound/ym2149.v(68)
  buf u239 (IOA_out[5], \ymreg[14] [5]);  // ../../rtl/sound/turbosound/ym2149.v(68)
  or u24 (n161, cnt_div[0], cnt_div[1]);  // ../../rtl/sound/turbosound/ym2149.v(147)
  buf u240 (IOA_out[6], \ymreg[14] [6]);  // ../../rtl/sound/turbosound/ym2149.v(68)
  buf u241 (IOA_out[7], \ymreg[14] [7]);  // ../../rtl/sound/turbosound/ym2149.v(68)
  not u242 (ACTIVE[1], \ymreg[7] [1]);  // ../../rtl/sound/turbosound/ym2149.v(67)
  not u243 (ACTIVE[2], \ymreg[7] [2]);  // ../../rtl/sound/turbosound/ym2149.v(67)
  not u244 (ACTIVE[3], \ymreg[7] [3]);  // ../../rtl/sound/turbosound/ym2149.v(67)
  not u245 (ACTIVE[4], \ymreg[7] [4]);  // ../../rtl/sound/turbosound/ym2149.v(67)
  not u246 (ACTIVE[5], \ymreg[7] [5]);  // ../../rtl/sound/turbosound/ym2149.v(67)
  or u25 (n84, n81, n83);  // ../../rtl/sound/turbosound/ym2149.v(169)
  xor u26 (n85, poly17[0], poly17[2]);  // ../../rtl/sound/turbosound/ym2149.v(171)
  or u27 (n113, \ymreg[6] [0], \ymreg[6] [1]);  // ../../rtl/sound/turbosound/ym2149.v(169)
  xor u28 (n87, n85, n86);  // ../../rtl/sound/turbosound/ym2149.v(171)
  or u29 (n12, poly17[0], poly17[1]);  // ../../rtl/sound/turbosound/ym2149.v(171)
  or u3 (n179, n181, n180);  // ../../rtl/sound/turbosound/ym2149.v(214)
  buf u30 (\tone_gen_freq[1] [0], \ymreg[0] [0]);  // ../../rtl/sound/turbosound/ym2149.v(181)
  buf u31 (\tone_gen_freq[2] [0], \ymreg[2] [0]);  // ../../rtl/sound/turbosound/ym2149.v(182)
  buf u32 (\tone_gen_freq[3] [0], \ymreg[4] [0]);  // ../../rtl/sound/turbosound/ym2149.v(183)
  not u33 (n121, tone_gen_op[1]);  // ../../rtl/sound/turbosound/ym2149.v(200)
  buf u34 (\tone_gen_freq[2] [4], \ymreg[2] [4]);  // ../../rtl/sound/turbosound/ym2149.v(182)
  buf u35 (\tone_gen_freq[2] [5], \ymreg[2] [5]);  // ../../rtl/sound/turbosound/ym2149.v(182)
  buf u36 (\tone_gen_freq[2] [6], \ymreg[2] [6]);  // ../../rtl/sound/turbosound/ym2149.v(182)
  buf u37 (\tone_gen_freq[2] [7], \ymreg[2] [7]);  // ../../rtl/sound/turbosound/ym2149.v(182)
  buf u38 (\tone_gen_freq[2] [8], \ymreg[3] [0]);  // ../../rtl/sound/turbosound/ym2149.v(182)
  buf u39 (\tone_gen_freq[2] [9], \ymreg[3] [1]);  // ../../rtl/sound/turbosound/ym2149.v(182)
  not u4 (ACTIVE[0], \ymreg[7] [0]);  // ../../rtl/sound/turbosound/ym2149.v(67)
  buf u40 (\tone_gen_freq[2] [10], \ymreg[3] [2]);  // ../../rtl/sound/turbosound/ym2149.v(182)
  buf u41 (\tone_gen_freq[2] [11], \ymreg[3] [3]);  // ../../rtl/sound/turbosound/ym2149.v(182)
  buf u42 (\tone_gen_freq[1] [1], \ymreg[0] [1]);  // ../../rtl/sound/turbosound/ym2149.v(181)
  buf u43 (\tone_gen_freq[1] [2], \ymreg[0] [2]);  // ../../rtl/sound/turbosound/ym2149.v(181)
  buf u44 (\tone_gen_freq[1] [3], \ymreg[0] [3]);  // ../../rtl/sound/turbosound/ym2149.v(181)
  AL_MUX u45 (
    .i0(tone_gen_op[1]),
    .i1(n121),
    .sel(n120),
    .o(n125));  // ../../rtl/sound/turbosound/ym2149.v(203)
  not u46 (n126, \ymreg[7] [1]);  // ../../rtl/sound/turbosound/ym2149.v(205)
  buf u47 (\tone_gen_freq[1] [4], \ymreg[0] [4]);  // ../../rtl/sound/turbosound/ym2149.v(181)
  buf u48 (\tone_gen_freq[1] [5], \ymreg[0] [5]);  // ../../rtl/sound/turbosound/ym2149.v(181)
  buf u49 (\tone_gen_freq[1] [6], \ymreg[0] [6]);  // ../../rtl/sound/turbosound/ym2149.v(181)
  buf u5 (IOA_out[0], \ymreg[14] [0]);  // ../../rtl/sound/turbosound/ym2149.v(68)
  buf u50 (\tone_gen_freq[1] [7], \ymreg[0] [7]);  // ../../rtl/sound/turbosound/ym2149.v(181)
  buf u51 (\tone_gen_freq[1] [8], \ymreg[1] [0]);  // ../../rtl/sound/turbosound/ym2149.v(181)
  buf u52 (\tone_gen_freq[1] [9], \ymreg[1] [1]);  // ../../rtl/sound/turbosound/ym2149.v(181)
  buf u53 (\tone_gen_freq[1] [10], \ymreg[1] [2]);  // ../../rtl/sound/turbosound/ym2149.v(181)
  buf u54 (\tone_gen_freq[1] [11], \ymreg[1] [3]);  // ../../rtl/sound/turbosound/ym2149.v(181)
  or u55 (n11, poly17[2], poly17[3]);  // ../../rtl/sound/turbosound/ym2149.v(171)
  or u56 (n10, n12, n11);  // ../../rtl/sound/turbosound/ym2149.v(171)
  or u57 (n9, poly17[4], poly17[5]);  // ../../rtl/sound/turbosound/ym2149.v(171)
  AL_MUX u58 (
    .i0(n126),
    .i1(n125),
    .sel(n118),
    .o(n128));  // ../../rtl/sound/turbosound/ym2149.v(207)
  or u59 (n8, poly17[6], poly17[7]);  // ../../rtl/sound/turbosound/ym2149.v(171)
  buf u6 (IOB_out[0], \ymreg[15] [0]);  // ../../rtl/sound/turbosound/ym2149.v(69)
  or u60 (n7, n9, n8);  // ../../rtl/sound/turbosound/ym2149.v(171)
  or u61 (n6, n10, n7);  // ../../rtl/sound/turbosound/ym2149.v(171)
  or u62 (n5, poly17[8], poly17[9]);  // ../../rtl/sound/turbosound/ym2149.v(171)
  or u63 (n4, poly17[10], poly17[11]);  // ../../rtl/sound/turbosound/ym2149.v(171)
  or u64 (n3, n5, n4);  // ../../rtl/sound/turbosound/ym2149.v(171)
  or u65 (n2, poly17[12], poly17[13]);  // ../../rtl/sound/turbosound/ym2149.v(171)
  or u66 (n1, poly17[15], poly17[16]);  // ../../rtl/sound/turbosound/ym2149.v(171)
  or u67 (n0, poly17[14], n1);  // ../../rtl/sound/turbosound/ym2149.v(171)
  or u68 (n116, n2, n0);  // ../../rtl/sound/turbosound/ym2149.v(171)
  or u69 (n111, n3, n116);  // ../../rtl/sound/turbosound/ym2149.v(171)
  or u7 (n98, addr[4], addr[5]);  // ../../rtl/sound/turbosound/ym2149.v(101)
  and u70 (n105, n109, addr[2]);  // ../../rtl/sound/turbosound/ym2149.v(102)
  or u71 (n22, \tone_gen_freq[1] [1], \tone_gen_freq[1] [2]);  // ../../rtl/sound/turbosound/ym2149.v(197)
  not u72 (n134, tone_gen_op[2]);  // ../../rtl/sound/turbosound/ym2149.v(200)
  or u73 (n19, \tone_gen_freq[1] [3], n20);  // ../../rtl/sound/turbosound/ym2149.v(197)
  or u74 (n18, n21, n19);  // ../../rtl/sound/turbosound/ym2149.v(197)
  or u75 (n17, \tone_gen_freq[1] [7], \tone_gen_freq[1] [8]);  // ../../rtl/sound/turbosound/ym2149.v(197)
  or u76 (n16, \tone_gen_freq[1] [6], n17);  // ../../rtl/sound/turbosound/ym2149.v(197)
  or u77 (n15, \tone_gen_freq[1] [10], \tone_gen_freq[1] [11]);  // ../../rtl/sound/turbosound/ym2149.v(197)
  or u78 (n14, \tone_gen_freq[1] [9], n15);  // ../../rtl/sound/turbosound/ym2149.v(197)
  or u79 (n13, n16, n14);  // ../../rtl/sound/turbosound/ym2149.v(197)
  AL_MUX u8 (
    .i0(1'b0),
    .i1(n52),
    .sel(n34),
    .o(n54));  // ../../rtl/sound/turbosound/ym2149.v(104)
  or u80 (n118, n18, n13);  // ../../rtl/sound/turbosound/ym2149.v(197)
  buf u81 (\tone_gen_freq[3] [1], \ymreg[4] [1]);  // ../../rtl/sound/turbosound/ym2149.v(183)
  buf u82 (\tone_gen_freq[3] [2], \ymreg[4] [2]);  // ../../rtl/sound/turbosound/ym2149.v(183)
  buf u83 (\tone_gen_freq[3] [3], \ymreg[4] [3]);  // ../../rtl/sound/turbosound/ym2149.v(183)
  AL_MUX u84 (
    .i0(tone_gen_op[2]),
    .i1(n134),
    .sel(n133),
    .o(n138));  // ../../rtl/sound/turbosound/ym2149.v(203)
  not u85 (n139, \ymreg[7] [2]);  // ../../rtl/sound/turbosound/ym2149.v(205)
  buf u86 (\tone_gen_freq[3] [4], \ymreg[4] [4]);  // ../../rtl/sound/turbosound/ym2149.v(183)
  buf u87 (\tone_gen_freq[3] [5], \ymreg[4] [5]);  // ../../rtl/sound/turbosound/ym2149.v(183)
  buf u88 (\tone_gen_freq[3] [6], \ymreg[4] [6]);  // ../../rtl/sound/turbosound/ym2149.v(183)
  buf u89 (\tone_gen_freq[3] [7], \ymreg[4] [7]);  // ../../rtl/sound/turbosound/ym2149.v(183)
  AL_MUX u9 (
    .i0(n54),
    .i1(1'b0),
    .sel(BC),
    .o(n57));  // ../../rtl/sound/turbosound/ym2149.v(104)
  buf u90 (\tone_gen_freq[3] [8], \ymreg[5] [0]);  // ../../rtl/sound/turbosound/ym2149.v(183)
  buf u91 (\tone_gen_freq[3] [9], \ymreg[5] [1]);  // ../../rtl/sound/turbosound/ym2149.v(183)
  buf u92 (\tone_gen_freq[3] [10], \ymreg[5] [2]);  // ../../rtl/sound/turbosound/ym2149.v(183)
  buf u93 (\tone_gen_freq[3] [11], \ymreg[5] [3]);  // ../../rtl/sound/turbosound/ym2149.v(183)
  buf u94 (\tone_gen_freq[2] [1], \ymreg[2] [1]);  // ../../rtl/sound/turbosound/ym2149.v(182)
  buf u95 (\tone_gen_freq[2] [2], \ymreg[2] [2]);  // ../../rtl/sound/turbosound/ym2149.v(182)
  buf u96 (\tone_gen_freq[2] [3], \ymreg[2] [3]);  // ../../rtl/sound/turbosound/ym2149.v(182)
  AL_MUX u97 (
    .i0(n139),
    .i1(n138),
    .sel(n131),
    .o(n141));  // ../../rtl/sound/turbosound/ym2149.v(207)
  or u98 (n112, n6, n111);  // ../../rtl/sound/turbosound/ym2149.v(171)
  not u99 (n86, n112);  // ../../rtl/sound/turbosound/ym2149.v(171)

endmodule 

module queue  // al_ip/queue.v(14)
  (
  clkr,
  clkw,
  di,
  re,
  rst,
  we,
  do,
  empty_flag,
  full_flag,
  rdusedw,
  wrusedw
  );

  input clkr;  // al_ip/queue.v(25)
  input clkw;  // al_ip/queue.v(24)
  input [23:0] di;  // al_ip/queue.v(23)
  input re;  // al_ip/queue.v(25)
  input rst;  // al_ip/queue.v(22)
  input we;  // al_ip/queue.v(24)
  output [23:0] do;  // al_ip/queue.v(27)
  output empty_flag;  // al_ip/queue.v(28)
  output full_flag;  // al_ip/queue.v(29)
  output [8:0] rdusedw;  // al_ip/queue.v(30)
  output [8:0] wrusedw;  // al_ip/queue.v(31)


  AL_LOGIC_RAMFIFO #(
    .ADDR_WIDTH(8),
    .DATA_WIDTH(24),
    .IMPLEMENT("AUTO"),
    .SHOWAHEAD(0))
    logic_ramfifo (
    .clkr(clkr),
    .clkw(clkw),
    .di(di),
    .re(re),
    .rst(rst),
    .we(we),
    .do(do),
    .empty_flag(empty_flag),
    .full_flag(full_flag),
    .rdusedw(rdusedw),
    .wrusedw(wrusedw));  // al_ip/queue.v(39)

endmodule 

module rtc  // al_ip/rtc.vhd(17)
  (
  addra,
  addrb,
  clka,
  clkb,
  dia,
  dib,
  wea,
  web,
  doa,
  dob
  );

  input [7:0] addra;  // al_ip/rtc.vhd(22)
  input [7:0] addrb;  // al_ip/rtc.vhd(27)
  input clka;  // al_ip/rtc.vhd(24)
  input clkb;  // al_ip/rtc.vhd(29)
  input [7:0] dia;  // al_ip/rtc.vhd(21)
  input [7:0] dib;  // al_ip/rtc.vhd(26)
  input wea;  // al_ip/rtc.vhd(23)
  input web;  // al_ip/rtc.vhd(28)
  output [7:0] doa;  // al_ip/rtc.vhd(19)
  output [7:0] dob;  // al_ip/rtc.vhd(25)


  AL_LOGIC_BRAM #(
    //.FORCE_KEEP("OFF"),
    //.INIT_FILE("NONE"),
    .ADDR_WIDTH_A(8),
    .ADDR_WIDTH_B(8),
    .BYTE_A(1),
    .BYTE_B(1),
    .BYTE_ENABLE(0),
    .DATA_DEPTH_A(256),
    .DATA_DEPTH_B(256),
    .DATA_WIDTH_A(8),
    .DATA_WIDTH_B(8),
    .DEBUGGABLE("NO"),
    .FILL_ALL("NONE"),
    .IMPLEMENT("9K"),
    .MODE("DP"),
    .PACKABLE("NO"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst (
    .addra(addra),
    .addrb(addrb),
    .bea(1'b0),
    .beb(1'b0),
    .cea(1'b1),
    .ceb(1'b1),
    .clka(clka),
    .clkb(clkb),
    .dia(dia),
    .dib(dib),
    .ocea(1'b0),
    .oceb(1'b0),
    .rsta(1'b0),
    .rstb(1'b0),
    .wea(wea),
    .web(web),
    .doa(doa),
    .dob(dob));  // al_ip/rtc.vhd(37)

endmodule 

module message_rom  // al_ip/message_rom.vhd(17)
  (
  addra,
  clka,
  rsta,
  doa
  );

  input [2:0] addra;  // al_ip/message_rom.vhd(21)
  input clka;  // al_ip/message_rom.vhd(22)
  input rsta;  // al_ip/message_rom.vhd(23)
  output [7:0] doa;  // al_ip/message_rom.vhd(19)


  AL_LOGIC_BRAM #(
    //.FORCE_KEEP("OFF"),
    //.INIT_FILE("../../../rtl/video/messages.mif"),
    .ADDR_WIDTH_A(3),
    .ADDR_WIDTH_B(3),
    .BYTE_A(1),
    .BYTE_B(1),
    .BYTE_ENABLE(0),
    .DATA_DEPTH_A(8),
    .DATA_DEPTH_B(8),
    .DATA_WIDTH_A(8),
    .DATA_WIDTH_B(8),
    .DEBUGGABLE("NO"),
    .FILL_ALL("NONE"),
    .IMPLEMENT("9K"),
    .MODE("SP"),
    .PACKABLE("NO"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst (
    .addra(addra),
    .addrb(3'b000),
    .bea(1'b0),
    .beb(1'b0),
    .cea(1'b1),
    .ceb(1'b0),
    .clka(clka),
    .clkb(1'b0),
    .dia(8'b00000000),
    .dib(8'b00000000),
    .ocea(1'b0),
    .oceb(1'b0),
    .rsta(rsta),
    .rstb(1'b0),
    .wea(1'b0),
    .web(1'b0),
    .doa(doa));  // al_ip/message_rom.vhd(30)

endmodule 

module \spi_slave(n=24)   // ../../rtl/spi/spi_slave.vhd(120)
  (
  clk_i,
  di_i,
  spi_mosi_i,
  spi_sck_i,
  spi_ssel_i,
  wren_i,
  di_req_o,
  do_o,
  do_transfer_o,
  do_valid_o,
  rx_bit_reg_o,
  spi_miso_o,
  state_dbg_o,
  wren_ack_o,
  wren_o
  );

  input clk_i;  // ../../rtl/spi/spi_slave.vhd(127)
  input [23:0] di_i;  // ../../rtl/spi/spi_slave.vhd(133)
  input spi_mosi_i;  // ../../rtl/spi/spi_slave.vhd(130)
  input spi_sck_i;  // ../../rtl/spi/spi_slave.vhd(129)
  input spi_ssel_i;  // ../../rtl/spi/spi_slave.vhd(128)
  input wren_i;  // ../../rtl/spi/spi_slave.vhd(134)
  output di_req_o;  // ../../rtl/spi/spi_slave.vhd(132)
  output [23:0] do_o;  // ../../rtl/spi/spi_slave.vhd(136)
  output do_transfer_o;  // ../../rtl/spi/spi_slave.vhd(138)
  output do_valid_o;  // ../../rtl/spi/spi_slave.vhd(135)
  output rx_bit_reg_o;  // ../../rtl/spi/spi_slave.vhd(141)
  output spi_miso_o;  // ../../rtl/spi/spi_slave.vhd(131)
  output [5:0] state_dbg_o;  // ../../rtl/spi/spi_slave.vhd(142)
  output wren_ack_o;  // ../../rtl/spi/spi_slave.vhd(140)
  output wren_o;  // ../../rtl/spi/spi_slave.vhd(139)

  parameter CPHA = '0';
  parameter CPOL = '0';
  parameter N = 24;
  parameter PREFETCH = 2;
  wire [23:0] di_reg;  // ../../rtl/spi/spi_slave.vhd(176)
  wire [23:0] do_buffer_next;  // ../../rtl/spi/spi_slave.vhd(182)
  wire [23:0] do_buffer_reg;  // ../../rtl/spi/spi_slave.vhd(183)
  wire [23:0] n11;
  wire [5:0] n15;
  wire [23:0] n16;
  wire [23:0] sh_next;  // ../../rtl/spi/spi_slave.vhd(171)
  wire [23:0] sh_reg;  // ../../rtl/spi/spi_slave.vhd(172)
  wire [4:0] state_next;  // ../../rtl/spi/spi_slave.vhd(168)
  wire [4:0] state_reg;  // ../../rtl/spi/spi_slave.vhd(169)
  wire di_req;  // ../../rtl/spi/spi_slave.vhd(188)
  wire di_req_o_A;  // ../../rtl/spi/spi_slave.vhd(198)
  wire di_req_o_B;  // ../../rtl/spi/spi_slave.vhd(199)
  wire di_req_o_C;  // ../../rtl/spi/spi_slave.vhd(200)
  wire di_req_o_D;  // ../../rtl/spi/spi_slave.vhd(201)
  wire di_req_o_next;  // ../../rtl/spi/spi_slave.vhd(197)
  wire di_req_o_reg;  // ../../rtl/spi/spi_slave.vhd(202)
  wire do_transfer_next;  // ../../rtl/spi/spi_slave.vhd(185)
  wire do_transfer_reg;  // ../../rtl/spi/spi_slave.vhd(186)
  wire do_valid_A;  // ../../rtl/spi/spi_slave.vhd(191)
  wire do_valid_B;  // ../../rtl/spi/spi_slave.vhd(192)
  wire do_valid_C;  // ../../rtl/spi/spi_slave.vhd(193)
  wire do_valid_D;  // ../../rtl/spi/spi_slave.vhd(194)
  wire do_valid_next;  // ../../rtl/spi/spi_slave.vhd(190)
  wire do_valid_o_reg;  // ../../rtl/spi/spi_slave.vhd(195)
  wire n0;
  wire n1;
  wire n10;
  wire n12;
  wire n13;
  wire n14;
  wire n17;
  wire n18;
  wire n19;
  wire n2;
  wire n20;
  wire n21;
  wire n22;
  wire n23;
  wire n24;
  wire n25;
  wire n26;
  wire n27;
  wire n28;
  wire n29;
  wire n3;
  wire n30;
  wire n31;
  wire n32;
  wire n33;
  wire n4;
  wire n5;
  wire n6;
  wire n7;
  wire n8;
  wire n9;
  wire rx_bit_reg;  // ../../rtl/spi/spi_slave.vhd(174)
  wire wren;  // ../../rtl/spi/spi_slave.vhd(178)
  wire wren_ack_next;  // ../../rtl/spi/spi_slave.vhd(179)
  wire wren_ack_reg;  // ../../rtl/spi/spi_slave.vhd(180)

  AL_DFF di_req_o_A_reg (
    .clk(clk_i),
    .d(di_req),
    .reset(1'b0),
    .set(1'b0),
    .q(di_req_o_A));  // ../../rtl/spi/spi_slave.vhd(272)
  AL_DFF di_req_o_B_reg (
    .clk(clk_i),
    .d(di_req_o_A),
    .reset(1'b0),
    .set(1'b0),
    .q(di_req_o_B));  // ../../rtl/spi/spi_slave.vhd(272)
  AL_DFF di_req_o_C_reg (
    .clk(clk_i),
    .d(di_req_o_B),
    .reset(1'b0),
    .set(1'b0),
    .q(di_req_o_C));  // ../../rtl/spi/spi_slave.vhd(272)
  AL_DFF di_req_o_D_reg (
    .clk(clk_i),
    .d(di_req_o_C),
    .reset(1'b0),
    .set(1'b0),
    .q(di_req_o_D));  // ../../rtl/spi/spi_slave.vhd(272)
  AL_DFF di_req_o_reg_reg (
    .clk(clk_i),
    .d(di_req_o_next),
    .reset(1'b0),
    .set(1'b0),
    .q(di_req_o_reg));  // ../../rtl/spi/spi_slave.vhd(272)
  AL_DFF do_transfer_reg_reg (
    .clk(n3),
    .d(do_transfer_next),
    .reset(1'b0),
    .set(1'b0),
    .q(do_transfer_reg));  // ../../rtl/spi/spi_slave.vhd(245)
  AL_DFF do_valid_A_reg (
    .clk(clk_i),
    .d(do_transfer_reg),
    .reset(1'b0),
    .set(1'b0),
    .q(do_valid_A));  // ../../rtl/spi/spi_slave.vhd(272)
  AL_DFF do_valid_B_reg (
    .clk(clk_i),
    .d(do_valid_A),
    .reset(1'b0),
    .set(1'b0),
    .q(do_valid_B));  // ../../rtl/spi/spi_slave.vhd(272)
  AL_DFF do_valid_C_reg (
    .clk(clk_i),
    .d(do_valid_B),
    .reset(1'b0),
    .set(1'b0),
    .q(do_valid_C));  // ../../rtl/spi/spi_slave.vhd(272)
  AL_DFF do_valid_D_reg (
    .clk(clk_i),
    .d(do_valid_C),
    .reset(1'b0),
    .set(1'b0),
    .q(do_valid_D));  // ../../rtl/spi/spi_slave.vhd(272)
  AL_DFF do_valid_o_reg_reg (
    .clk(clk_i),
    .d(do_valid_next),
    .reset(1'b0),
    .set(1'b0),
    .q(do_valid_o_reg));  // ../../rtl/spi/spi_slave.vhd(272)
  eq_w5 eq0 (
    .i0(5'b11000),
    .i1(state_reg),
    .o(n18));  // ../../rtl/spi/spi_slave.vhd(311)
  eq_w5 eq1 (
    .i0(5'b00001),
    .i1(state_reg),
    .o(n25));  // ../../rtl/spi/spi_slave.vhd(324)
  eq_w5 eq2 (
    .i0(5'b00000),
    .i1(state_reg),
    .o(n26));  // ../../rtl/spi/spi_slave.vhd(337)
  lt_u5_u5 lt0 (
    .ci(1'b0),
    .i0(state_reg),
    .i1(5'b00101),
    .o(n19));  // ../../rtl/spi/spi_slave.vhd(315)
  lt_u5_u5 lt1 (
    .ci(1'b0),
    .i0(5'b10111),
    .i1(state_reg),
    .o(n20));  // ../../rtl/spi/spi_slave.vhd(315)
  lt_u5_u5 lt2 (
    .ci(1'b0),
    .i0(state_reg),
    .i1(5'b00010),
    .o(n22));  // ../../rtl/spi/spi_slave.vhd(319)
  lt_u5_u5 lt3 (
    .ci(1'b0),
    .i0(5'b00100),
    .i1(state_reg),
    .o(n23));  // ../../rtl/spi/spi_slave.vhd(319)
  binary_mux_s1_w24 mux0 (
    .i0(di_reg),
    .i1(di_i),
    .sel(wren_i),
    .o(n11));  // ../../rtl/spi/spi_slave.vhd(284)
  binary_mux_s1_w24 mux1 (
    .i0(24'b000000000000000000000000),
    .i1(di_reg),
    .sel(wren),
    .o(n16));  // ../../rtl/spi/spi_slave.vhd(336)
  reg_ar_as_w5 reg0 (
    .clk(n3),
    .d(state_next),
    .reset({spi_ssel_i,spi_ssel_i,spi_ssel_i,spi_ssel_i,spi_ssel_i}),
    .set(5'b00000),
    .q(state_reg));  // ../../rtl/spi/spi_slave.vhd(238)
  reg_ar_as_w24 reg1 (
    .clk(n3),
    .d(sh_next),
    .reset(24'b000000000000000000000000),
    .set(24'b000000000000000000000000),
    .q(sh_reg));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w24 reg2 (
    .clk(n3),
    .d(do_buffer_next),
    .reset(24'b000000000000000000000000),
    .set(24'b000000000000000000000000),
    .q(do_buffer_reg));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w24 reg3 (
    .clk(clk_i),
    .d(n11),
    .reset(24'b000000000000000000000000),
    .set(24'b000000000000000000000000),
    .q(di_reg));  // ../../rtl/spi/spi_slave.vhd(285)
  AL_DFF rx_bit_reg_reg (
    .clk(spi_sck_i),
    .d(spi_mosi_i),
    .reset(1'b0),
    .set(1'b0),
    .q(rx_bit_reg));  // ../../rtl/spi/spi_slave.vhd(224)
  onehot_mux_s3_w1 sel0 (
    .i0(1'b1),
    .i1(do_transfer_reg),
    .i2(1'b0),
    .sel({n28,n29,n25}),
    .o(do_transfer_next));  // ../../rtl/spi/spi_slave.vhd(354)
  onehot_mux_s6_w24 sel1 (
    .i0(sh_reg),
    .i1({di_reg[22:0],rx_bit_reg}),
    .i2(n16),
    .i3({sh_reg[22:0],rx_bit_reg}),
    .i4({sh_reg[22:0],rx_bit_reg}),
    .i5({sh_reg[22:0],rx_bit_reg}),
    .sel({n18,n21,n24,n25,n26,n27}),
    .o(sh_next));  // ../../rtl/spi/spi_slave.vhd(354)
  onehot_mux_s3_w1 sel2 (
    .i0(n17),
    .i1(1'b1),
    .i2(1'b0),
    .sel({n30,n31,n26}),
    .o(di_req));  // ../../rtl/spi/spi_slave.vhd(354)
  onehot_mux_s6_w24 sel3 (
    .i0(do_buffer_reg),
    .i1(do_buffer_reg),
    .i2({sh_reg[22:0],rx_bit_reg}),
    .i3(do_buffer_reg),
    .i4(do_buffer_reg),
    .i5(do_buffer_reg),
    .sel({n18,n21,n24,n25,n26,n27}),
    .o(do_buffer_next));  // ../../rtl/spi/spi_slave.vhd(354)
  onehot_mux_s6_w5 sel4 (
    .i0(5'b00000),
    .i1(5'b10111),
    .i2(5'b11000),
    .i3(n15[4:0]),
    .i4(n15[4:0]),
    .i5(n15[4:0]),
    .sel({n18,n21,n24,n25,n26,n27}),
    .o(state_next));  // ../../rtl/spi/spi_slave.vhd(354)
  onehot_mux_s3_w1 sel5 (
    .i0(1'b1),
    .i1(wren),
    .i2(1'b0),
    .sel({n32,n25,n26}),
    .o(wren_ack_next));  // ../../rtl/spi/spi_slave.vhd(354)
  add_pu6_mu6_o6 sub0 (
    .i0({1'b0,state_reg}),
    .i1(6'b000001),
    .o({open_n4,n15[4:0]}));  // ../../rtl/spi/spi_slave.vhd(309)
  not u10 (n10, di_req_o_D);  // ../../rtl/spi/spi_slave.vhd(275)
  and u11 (di_req_o_next, n9, n10);  // ../../rtl/spi/spi_slave.vhd(275)
  AL_MUX u12 (
    .i0(wren),
    .i1(1'b0),
    .sel(wren_ack_reg),
    .o(n12));  // ../../rtl/spi/spi_slave.vhd(292)
  AL_MUX u13 (
    .i0(n12),
    .i1(1'b1),
    .sel(wren_i),
    .o(n13));  // ../../rtl/spi/spi_slave.vhd(292)
  buf u14 (state_dbg_o[4], state_reg[4]);  // ../../rtl/spi/spi_slave.vhd(370)
  not u15 (n17, wren_ack_reg);  // ../../rtl/spi/spi_slave.vhd(338)
  nor u16 (n21, n19, n20);  // ../../rtl/spi/spi_slave.vhd(315)
  nor u17 (n24, n22, n23);  // ../../rtl/spi/spi_slave.vhd(319)
  or u18 (n0, n26, n25);  // ../../rtl/spi/spi_slave.vhd(354)
  or u19 (n29, n24, n27);  // ../../rtl/spi/spi_slave.vhd(354)
  buf u2 (state_dbg_o[3], state_reg[3]);  // ../../rtl/spi/spi_slave.vhd(370)
  or u20 (n1, n21, n18);  // ../../rtl/spi/spi_slave.vhd(354)
  or u21 (n31, n24, n25);  // ../../rtl/spi/spi_slave.vhd(354)
  or u22 (n14, n21, n18);  // ../../rtl/spi/spi_slave.vhd(354)
  buf u23 (state_dbg_o[1], state_reg[1]);  // ../../rtl/spi/spi_slave.vhd(370)
  AL_MUX u24 (
    .i0(sh_reg[23]),
    .i1(di_reg[23]),
    .sel(n26),
    .o(spi_miso_o));  // ../../rtl/spi/spi_slave.vhd(354)
  or u25 (n2, n27, n24);  // ../../rtl/spi/spi_slave.vhd(354)
  buf u26 (do_valid_o, do_valid_o_reg);  // ../../rtl/spi/spi_slave.vhd(362)
  buf u27 (di_req_o, di_req_o_reg);  // ../../rtl/spi/spi_slave.vhd(363)
  buf u28 (do_transfer_o, do_transfer_reg);  // ../../rtl/spi/spi_slave.vhd(369)
  buf u29 (do_o[0], do_buffer_reg[0]);  // ../../rtl/spi/spi_slave.vhd(361)
  buf u3 (state_dbg_o[2], state_reg[2]);  // ../../rtl/spi/spi_slave.vhd(370)
  buf u30 (rx_bit_reg_o, rx_bit_reg);  // ../../rtl/spi/spi_slave.vhd(371)
  buf u31 (wren_o, wren);  // ../../rtl/spi/spi_slave.vhd(372)
  buf u32 (wren_ack_o, wren_ack_reg);  // ../../rtl/spi/spi_slave.vhd(373)
  buf u33 (state_dbg_o[5], 1'b0);  // ../../rtl/spi/spi_slave.vhd(370)
  buf u34 (do_o[1], do_buffer_reg[1]);  // ../../rtl/spi/spi_slave.vhd(361)
  buf u35 (do_o[2], do_buffer_reg[2]);  // ../../rtl/spi/spi_slave.vhd(361)
  buf u36 (do_o[3], do_buffer_reg[3]);  // ../../rtl/spi/spi_slave.vhd(361)
  buf u37 (do_o[4], do_buffer_reg[4]);  // ../../rtl/spi/spi_slave.vhd(361)
  buf u38 (do_o[5], do_buffer_reg[5]);  // ../../rtl/spi/spi_slave.vhd(361)
  buf u39 (do_o[6], do_buffer_reg[6]);  // ../../rtl/spi/spi_slave.vhd(361)
  not u4 (n3, spi_sck_i);  // ../../rtl/spi/spi_slave.vhd(236)
  buf u40 (do_o[7], do_buffer_reg[7]);  // ../../rtl/spi/spi_slave.vhd(361)
  buf u41 (do_o[8], do_buffer_reg[8]);  // ../../rtl/spi/spi_slave.vhd(361)
  buf u42 (do_o[9], do_buffer_reg[9]);  // ../../rtl/spi/spi_slave.vhd(361)
  buf u43 (do_o[10], do_buffer_reg[10]);  // ../../rtl/spi/spi_slave.vhd(361)
  buf u44 (do_o[11], do_buffer_reg[11]);  // ../../rtl/spi/spi_slave.vhd(361)
  buf u45 (do_o[12], do_buffer_reg[12]);  // ../../rtl/spi/spi_slave.vhd(361)
  buf u46 (do_o[13], do_buffer_reg[13]);  // ../../rtl/spi/spi_slave.vhd(361)
  buf u47 (do_o[14], do_buffer_reg[14]);  // ../../rtl/spi/spi_slave.vhd(361)
  buf u48 (do_o[15], do_buffer_reg[15]);  // ../../rtl/spi/spi_slave.vhd(361)
  buf u49 (do_o[16], do_buffer_reg[16]);  // ../../rtl/spi/spi_slave.vhd(361)
  buf u5 (state_dbg_o[0], state_reg[0]);  // ../../rtl/spi/spi_slave.vhd(370)
  buf u50 (do_o[17], do_buffer_reg[17]);  // ../../rtl/spi/spi_slave.vhd(361)
  buf u51 (do_o[18], do_buffer_reg[18]);  // ../../rtl/spi/spi_slave.vhd(361)
  buf u52 (do_o[19], do_buffer_reg[19]);  // ../../rtl/spi/spi_slave.vhd(361)
  buf u53 (do_o[20], do_buffer_reg[20]);  // ../../rtl/spi/spi_slave.vhd(361)
  buf u54 (do_o[21], do_buffer_reg[21]);  // ../../rtl/spi/spi_slave.vhd(361)
  buf u55 (do_o[22], do_buffer_reg[22]);  // ../../rtl/spi/spi_slave.vhd(361)
  buf u56 (do_o[23], do_buffer_reg[23]);  // ../../rtl/spi/spi_slave.vhd(361)
  or u57 (n33, n21, n18);  // ../../rtl/spi/spi_slave.vhd(354)
  or u58 (n32, n2, n33);  // ../../rtl/spi/spi_slave.vhd(354)
  or u59 (n30, n27, n14);  // ../../rtl/spi/spi_slave.vhd(354)
  and u6 (n7, do_valid_A, do_valid_B);  // ../../rtl/spi/spi_slave.vhd(274)
  or u60 (n28, n26, n1);  // ../../rtl/spi/spi_slave.vhd(354)
  or u61 (n4, n21, n18);  // ../../rtl/spi/spi_slave.vhd(354)
  or u62 (n5, n24, n4);  // ../../rtl/spi/spi_slave.vhd(354)
  or u63 (n6, n0, n5);  // ../../rtl/spi/spi_slave.vhd(354)
  not u64 (n27, n6);  // ../../rtl/spi/spi_slave.vhd(354)
  not u7 (n8, do_valid_D);  // ../../rtl/spi/spi_slave.vhd(274)
  and u8 (do_valid_next, n7, n8);  // ../../rtl/spi/spi_slave.vhd(274)
  and u9 (n9, di_req_o_A, di_req_o_B);  // ../../rtl/spi/spi_slave.vhd(275)
  AL_DFF wren_ack_reg_reg (
    .clk(n3),
    .d(wren_ack_next),
    .reset(1'b0),
    .set(1'b0),
    .q(wren_ack_reg));  // ../../rtl/spi/spi_slave.vhd(245)
  AL_DFF wren_reg (
    .clk(clk_i),
    .d(n13),
    .reset(1'b0),
    .set(1'b0),
    .q(wren));  // ../../rtl/spi/spi_slave.vhd(293)

endmodule 

module binary_mux_s1_w40
  (
  i0,
  i1,
  sel,
  o
  );

  input [39:0] i0;
  input [39:0] i1;
  input sel;
  output [39:0] o;



endmodule 

module binary_mux_s1_w3
  (
  i0,
  i1,
  sel,
  o
  );

  input [2:0] i0;
  input [2:0] i1;
  input sel;
  output [2:0] o;



endmodule 

module binary_mux_s1_w41
  (
  i0,
  i1,
  sel,
  o
  );

  input [40:0] i0;
  input [40:0] i1;
  input sel;
  output [40:0] o;



endmodule 

module binary_mux_s4_w24
  (
  i0,
  i1,
  i10,
  i11,
  i12,
  i13,
  i14,
  i15,
  i2,
  i3,
  i4,
  i5,
  i6,
  i7,
  i8,
  i9,
  sel,
  o
  );

  input [23:0] i0;
  input [23:0] i1;
  input [23:0] i10;
  input [23:0] i11;
  input [23:0] i12;
  input [23:0] i13;
  input [23:0] i14;
  input [23:0] i15;
  input [23:0] i2;
  input [23:0] i3;
  input [23:0] i4;
  input [23:0] i5;
  input [23:0] i6;
  input [23:0] i7;
  input [23:0] i8;
  input [23:0] i9;
  input [3:0] sel;
  output [23:0] o;



endmodule 

module binary_mux_s4_w3
  (
  i0,
  i1,
  i10,
  i11,
  i12,
  i13,
  i14,
  i15,
  i2,
  i3,
  i4,
  i5,
  i6,
  i7,
  i8,
  i9,
  sel,
  o
  );

  input [2:0] i0;
  input [2:0] i1;
  input [2:0] i10;
  input [2:0] i11;
  input [2:0] i12;
  input [2:0] i13;
  input [2:0] i14;
  input [2:0] i15;
  input [2:0] i2;
  input [2:0] i3;
  input [2:0] i4;
  input [2:0] i5;
  input [2:0] i6;
  input [2:0] i7;
  input [2:0] i8;
  input [2:0] i9;
  input [3:0] sel;
  output [2:0] o;



endmodule 

module binary_mux_s1_w10
  (
  i0,
  i1,
  sel,
  o
  );

  input [9:0] i0;
  input [9:0] i1;
  input sel;
  output [9:0] o;



endmodule 

module reg_ar_as_w40
  (
  clk,
  d,
  en,
  reset,
  set,
  q
  );

  input clk;
  input [39:0] d;
  input en;
  input [39:0] reset;
  input [39:0] set;
  output [39:0] q;



endmodule 

module reg_ar_as_w41
  (
  clk,
  d,
  en,
  reset,
  set,
  q
  );

  input clk;
  input [40:0] d;
  input en;
  input [40:0] reset;
  input [40:0] set;
  output [40:0] q;



endmodule 

module reg_ar_as_w3
  (
  clk,
  d,
  en,
  reset,
  set,
  q
  );

  input clk;
  input [2:0] d;
  input en;
  input [2:0] reset;
  input [2:0] set;
  output [2:0] q;



endmodule 

module reg_ar_as_w24
  (
  clk,
  d,
  en,
  reset,
  set,
  q
  );

  input clk;
  input [23:0] d;
  input en;
  input [23:0] reset;
  input [23:0] set;
  output [23:0] q;



endmodule 

module reg_ar_as_w10
  (
  clk,
  d,
  en,
  reset,
  set,
  q
  );

  input clk;
  input [9:0] d;
  input en;
  input [9:0] reset;
  input [9:0] set;
  output [9:0] q;



endmodule 

module onehot_mux_s10_w40
  (
  i0,
  i1,
  i2,
  i3,
  i4,
  i5,
  i6,
  i7,
  i8,
  i9,
  sel,
  o
  );

  input [39:0] i0;
  input [39:0] i1;
  input [39:0] i2;
  input [39:0] i3;
  input [39:0] i4;
  input [39:0] i5;
  input [39:0] i6;
  input [39:0] i7;
  input [39:0] i8;
  input [39:0] i9;
  input [9:0] sel;
  output [39:0] o;



endmodule 

module onehot_mux_s10_w41
  (
  i0,
  i1,
  i2,
  i3,
  i4,
  i5,
  i6,
  i7,
  i8,
  i9,
  sel,
  o
  );

  input [40:0] i0;
  input [40:0] i1;
  input [40:0] i2;
  input [40:0] i3;
  input [40:0] i4;
  input [40:0] i5;
  input [40:0] i6;
  input [40:0] i7;
  input [40:0] i8;
  input [40:0] i9;
  input [9:0] sel;
  output [40:0] o;



endmodule 

module onehot_mux_s4_w3
  (
  i0,
  i1,
  i2,
  i3,
  sel,
  o
  );

  input [2:0] i0;
  input [2:0] i1;
  input [2:0] i2;
  input [2:0] i3;
  input [3:0] sel;
  output [2:0] o;



endmodule 

module onehot_mux_s10_w2
  (
  i0,
  i1,
  i2,
  i3,
  i4,
  i5,
  i6,
  i7,
  i8,
  i9,
  sel,
  o
  );

  input [1:0] i0;
  input [1:0] i1;
  input [1:0] i2;
  input [1:0] i3;
  input [1:0] i4;
  input [1:0] i5;
  input [1:0] i6;
  input [1:0] i7;
  input [1:0] i8;
  input [1:0] i9;
  input [9:0] sel;
  output [1:0] o;



endmodule 

module onehot_mux_s10_w10
  (
  i0,
  i1,
  i2,
  i3,
  i4,
  i5,
  i6,
  i7,
  i8,
  i9,
  sel,
  o
  );

  input [9:0] i0;
  input [9:0] i1;
  input [9:0] i2;
  input [9:0] i3;
  input [9:0] i4;
  input [9:0] i5;
  input [9:0] i6;
  input [9:0] i7;
  input [9:0] i8;
  input [9:0] i9;
  input [9:0] sel;
  output [9:0] o;



endmodule 

module onehot_mux_s10_w8
  (
  i0,
  i1,
  i2,
  i3,
  i4,
  i5,
  i6,
  i7,
  i8,
  i9,
  sel,
  o
  );

  input [7:0] i0;
  input [7:0] i1;
  input [7:0] i2;
  input [7:0] i3;
  input [7:0] i4;
  input [7:0] i5;
  input [7:0] i6;
  input [7:0] i7;
  input [7:0] i8;
  input [7:0] i9;
  input [9:0] sel;
  output [7:0] o;



endmodule 

module onehot_mux_s10_w4
  (
  i0,
  i1,
  i2,
  i3,
  i4,
  i5,
  i6,
  i7,
  i8,
  i9,
  sel,
  o
  );

  input [3:0] i0;
  input [3:0] i1;
  input [3:0] i2;
  input [3:0] i3;
  input [3:0] i4;
  input [3:0] i5;
  input [3:0] i6;
  input [3:0] i7;
  input [3:0] i8;
  input [3:0] i9;
  input [9:0] sel;
  output [3:0] o;



endmodule 

module onehot_mux_s10_w3
  (
  i0,
  i1,
  i2,
  i3,
  i4,
  i5,
  i6,
  i7,
  i8,
  i9,
  sel,
  o
  );

  input [2:0] i0;
  input [2:0] i1;
  input [2:0] i2;
  input [2:0] i3;
  input [2:0] i4;
  input [2:0] i5;
  input [2:0] i6;
  input [2:0] i7;
  input [2:0] i8;
  input [2:0] i9;
  input [9:0] sel;
  output [2:0] o;



endmodule 

module onehot_mux_s10_w16
  (
  i0,
  i1,
  i2,
  i3,
  i4,
  i5,
  i6,
  i7,
  i8,
  i9,
  sel,
  o
  );

  input [15:0] i0;
  input [15:0] i1;
  input [15:0] i2;
  input [15:0] i3;
  input [15:0] i4;
  input [15:0] i5;
  input [15:0] i6;
  input [15:0] i7;
  input [15:0] i8;
  input [15:0] i9;
  input [9:0] sel;
  output [15:0] o;



endmodule 

module onehot_mux_s4_w8
  (
  i0,
  i1,
  i2,
  i3,
  sel,
  o
  );

  input [7:0] i0;
  input [7:0] i1;
  input [7:0] i2;
  input [7:0] i3;
  input [3:0] sel;
  output [7:0] o;



endmodule 

module onehot_mux_s4_w4
  (
  i0,
  i1,
  i2,
  i3,
  sel,
  o
  );

  input [3:0] i0;
  input [3:0] i1;
  input [3:0] i2;
  input [3:0] i3;
  input [3:0] sel;
  output [3:0] o;



endmodule 

module add_pu6_pu6_o6
  (
  i0,
  i1,
  o
  );

  input [5:0] i0;
  input [5:0] i1;
  output [5:0] o;



endmodule 

module eq_w6
  (
  i0,
  i1,
  o
  );

  input [5:0] i0;
  input [5:0] i1;
  output o;



endmodule 

module lt_u6_u6
  (
  ci,
  i0,
  i1,
  o
  );

  input ci;
  input [5:0] i0;
  input [5:0] i1;
  output o;



endmodule 

module binary_mux_s1_w96
  (
  i0,
  i1,
  sel,
  o
  );

  input [95:0] i0;
  input [95:0] i1;
  input sel;
  output [95:0] o;



endmodule 

module binary_mux_s1_w48
  (
  i0,
  i1,
  sel,
  o
  );

  input [47:0] i0;
  input [47:0] i1;
  input sel;
  output [47:0] o;



endmodule 

module reg_ar_as_w6
  (
  clk,
  d,
  en,
  reset,
  set,
  q
  );

  input clk;
  input [5:0] d;
  input en;
  input [5:0] reset;
  input [5:0] set;
  output [5:0] q;



endmodule 

module reg_ar_as_w48
  (
  clk,
  d,
  en,
  reset,
  set,
  q
  );

  input clk;
  input [47:0] d;
  input en;
  input [47:0] reset;
  input [47:0] set;
  output [47:0] q;



endmodule 

module hw_int  // ../../rtl/mouse/hw_int.vhd(6)
  (
  A,
  CLK,
  CPM,
  DI,
  DOS,
  IORQ_N,
  M1_N,
  N_RESET,
  RD_N,
  ROM14,
  RXRDT,
  TXRDT,
  WR_N,
  DO,
  INT_EN,
  INT_N,
  OE_N
  );

  input [15:0] A;  // ../../rtl/mouse/hw_int.vhd(11)
  input CLK;  // ../../rtl/mouse/hw_int.vhd(8)
  input CPM;  // ../../rtl/mouse/hw_int.vhd(17)
  input [7:0] DI;  // ../../rtl/mouse/hw_int.vhd(12)
  input DOS;  // ../../rtl/mouse/hw_int.vhd(18)
  input IORQ_N;  // ../../rtl/mouse/hw_int.vhd(15)
  input M1_N;  // ../../rtl/mouse/hw_int.vhd(16)
  input N_RESET;  // ../../rtl/mouse/hw_int.vhd(9)
  input RD_N;  // ../../rtl/mouse/hw_int.vhd(14)
  input ROM14;  // ../../rtl/mouse/hw_int.vhd(19)
  input RXRDT;  // ../../rtl/mouse/hw_int.vhd(21)
  input TXRDT;  // ../../rtl/mouse/hw_int.vhd(22)
  input WR_N;  // ../../rtl/mouse/hw_int.vhd(13)
  output [7:0] DO;  // ../../rtl/mouse/hw_int.vhd(24)
  output INT_EN;  // ../../rtl/mouse/hw_int.vhd(26)
  output INT_N;  // ../../rtl/mouse/hw_int.vhd(25)
  output OE_N;  // ../../rtl/mouse/hw_int.vhd(27)

  wire [7:0] n22;
  wire int;  // ../../rtl/mouse/hw_int.vhd(40)
  wire int_rq;  // ../../rtl/mouse/hw_int.vhd(41)
  wire n0;
  wire n1;
  wire n10;
  wire n11;
  wire n12;
  wire n13;
  wire n14;
  wire n15;
  wire n16;
  wire n17;
  wire n18;
  wire n19;
  wire n2;
  wire n20;
  wire n21;
  wire n3;
  wire n4;
  wire n5;
  wire n6;
  wire n7;
  wire n8;
  wire n9;
  wire port93_b0;  // ../../rtl/mouse/hw_int.vhd(43)

  eq_w8 eq0 (
    .i0(8'b10110011),
    .i1(A[7:0]),
    .o(n0));  // ../../rtl/mouse/hw_int.vhd(48)
  eq_w8 eq1 (
    .i0(8'b10010011),
    .i1(A[7:0]),
    .o(n1));  // ../../rtl/mouse/hw_int.vhd(48)
  binary_mux_s1_w8 mux0 (
    .i0({3'b111,n22[4],4'b1111}),
    .i1(8'b11100111),
    .sel(n20),
    .o(DO));  // ../../rtl/mouse/hw_int.vhd(71)
  AL_DFF port93_b0_reg (
    .clk(CLK),
    .d(n18),
    .reset(n15),
    .set(1'b0),
    .q(port93_b0));  // ../../rtl/mouse/hw_int.vhd(63)
  or u10 (int_rq, RXRDT, TXRDT);  // ../../rtl/mouse/hw_int.vhd(49)
  and u11 (n10, int_rq, CPM);  // ../../rtl/mouse/hw_int.vhd(50)
  and u12 (n11, n10, port93_b0);  // ../../rtl/mouse/hw_int.vhd(50)
  not u13 (int, n11);  // ../../rtl/mouse/hw_int.vhd(50)
  not u14 (n12, M1_N);  // ../../rtl/mouse/hw_int.vhd(51)
  and u15 (n13, n12, n3);  // ../../rtl/mouse/hw_int.vhd(51)
  and u16 (n14, n13, n11);  // ../../rtl/mouse/hw_int.vhd(51)
  not u17 (n15, N_RESET);  // ../../rtl/mouse/hw_int.vhd(56)
  not u18 (n16, WR_N);  // ../../rtl/mouse/hw_int.vhd(60)
  and u19 (n17, n9, n16);  // ../../rtl/mouse/hw_int.vhd(60)
  or u2 (n2, n0, n1);  // ../../rtl/mouse/hw_int.vhd(48)
  AL_MUX u20 (
    .i0(port93_b0),
    .i1(DI[0]),
    .sel(n17),
    .o(n18));  // ../../rtl/mouse/hw_int.vhd(62)
  and u21 (n19, n14, int_rq);  // ../../rtl/mouse/hw_int.vhd(67)
  not u22 (OE_N, n19);  // ../../rtl/mouse/hw_int.vhd(67)
  and u23 (n20, n14, RXRDT);  // ../../rtl/mouse/hw_int.vhd(69)
  not u24 (n22[4], n21);  // ../../rtl/mouse/hw_int.vhd(70)
  and u25 (n21, n14, TXRDT);  // ../../rtl/mouse/hw_int.vhd(70)
  buf u26 (INT_N, int);  // ../../rtl/mouse/hw_int.vhd(72)
  buf u27 (INT_EN, port93_b0);  // ../../rtl/mouse/hw_int.vhd(73)
  not u3 (n3, IORQ_N);  // ../../rtl/mouse/hw_int.vhd(48)
  and u4 (n4, CPM, ROM14);  // ../../rtl/mouse/hw_int.vhd(48)
  not u5 (n5, ROM14);  // ../../rtl/mouse/hw_int.vhd(48)
  and u6 (n6, DOS, n5);  // ../../rtl/mouse/hw_int.vhd(48)
  or u7 (n7, n4, n6);  // ../../rtl/mouse/hw_int.vhd(48)
  and u8 (n8, n2, n3);  // ../../rtl/mouse/hw_int.vhd(48)
  and u9 (n9, n8, n7);  // ../../rtl/mouse/hw_int.vhd(48)

endmodule 

module add_pu3_pu3_o3
  (
  i0,
  i1,
  o
  );

  input [2:0] i0;
  input [2:0] i1;
  output [2:0] o;



endmodule 

module lt_u3_u3
  (
  ci,
  i0,
  i1,
  o
  );

  input ci;
  input [2:0] i0;
  input [2:0] i1;
  output o;



endmodule 

module binary_mux_s1_w18
  (
  i0,
  i1,
  sel,
  o
  );

  input [17:0] i0;
  input [17:0] i1;
  input sel;
  output [17:0] o;



endmodule 

module binary_mux_s4_w2
  (
  i0,
  i1,
  i10,
  i11,
  i12,
  i13,
  i14,
  i15,
  i2,
  i3,
  i4,
  i5,
  i6,
  i7,
  i8,
  i9,
  sel,
  o
  );

  input [1:0] i0;
  input [1:0] i1;
  input [1:0] i10;
  input [1:0] i11;
  input [1:0] i12;
  input [1:0] i13;
  input [1:0] i14;
  input [1:0] i15;
  input [1:0] i2;
  input [1:0] i3;
  input [1:0] i4;
  input [1:0] i5;
  input [1:0] i6;
  input [1:0] i7;
  input [1:0] i8;
  input [1:0] i9;
  input [3:0] sel;
  output [1:0] o;



endmodule 

module binary_mux_s4_w18
  (
  i0,
  i1,
  i10,
  i11,
  i12,
  i13,
  i14,
  i15,
  i2,
  i3,
  i4,
  i5,
  i6,
  i7,
  i8,
  i9,
  sel,
  o
  );

  input [17:0] i0;
  input [17:0] i1;
  input [17:0] i10;
  input [17:0] i11;
  input [17:0] i12;
  input [17:0] i13;
  input [17:0] i14;
  input [17:0] i15;
  input [17:0] i2;
  input [17:0] i3;
  input [17:0] i4;
  input [17:0] i5;
  input [17:0] i6;
  input [17:0] i7;
  input [17:0] i8;
  input [17:0] i9;
  input [3:0] sel;
  output [17:0] o;



endmodule 

module ne_w18
  (
  i0,
  i1,
  o
  );

  input [17:0] i0;
  input [17:0] i1;
  output o;



endmodule 

module latch_ar_as_w2
  (
  clk,
  d,
  en,
  reset,
  set,
  q
  );

  input clk;
  input [1:0] d;
  input en;
  input [1:0] reset;
  input [1:0] set;
  output [1:0] q;



endmodule 

module reg_ar_as_w18
  (
  clk,
  d,
  en,
  reset,
  set,
  q
  );

  input clk;
  input [17:0] d;
  input en;
  input [17:0] reset;
  input [17:0] set;
  output [17:0] q;



endmodule 

module add_pu5_pu5_o5
  (
  i0,
  i1,
  o
  );

  input [4:0] i0;
  input [4:0] i1;
  output [4:0] o;



endmodule 

module binary_mux_s1_w5
  (
  i0,
  i1,
  sel,
  o
  );

  input [4:0] i0;
  input [4:0] i1;
  input sel;
  output [4:0] o;



endmodule 

module ne_w5
  (
  i0,
  i1,
  o
  );

  input [4:0] i0;
  input [4:0] i1;
  output o;



endmodule 

module reg_ar_as_w5
  (
  clk,
  d,
  en,
  reset,
  set,
  q
  );

  input clk;
  input [4:0] d;
  input en;
  input [4:0] reset;
  input [4:0] set;
  output [4:0] q;



endmodule 

module \T80(iowait=1)   // ../../rtl/t80se/T80.vhd(85)
  (
  BUSRQ_n,
  CEN,
  CLK_n,
  DI,
  DIR,
  DIRSet,
  DInst,
  INT_n,
  NMI_n,
  RESET_n,
  WAIT_n,
  out0,
  A,
  BUSAK_n,
  DO,
  HALT_n,
  IORQ,
  IntCycle_n,
  IntE,
  M1_n,
  MC,
  NoRead,
  REG,
  RFSH_n,
  Stop,
  TS,
  Write
  );

  input BUSRQ_n;  // ../../rtl/t80se/T80.vhd(105)
  input CEN;  // ../../rtl/t80se/T80.vhd(101)
  input CLK_n;  // ../../rtl/t80se/T80.vhd(100)
  input [7:0] DI;  // ../../rtl/t80se/T80.vhd(115)
  input [211:0] DIR;  // ../../rtl/t80se/T80.vhd(126)
  input DIRSet;  // ../../rtl/t80se/T80.vhd(125)
  input [7:0] DInst;  // ../../rtl/t80se/T80.vhd(114)
  input INT_n;  // ../../rtl/t80se/T80.vhd(103)
  input NMI_n;  // ../../rtl/t80se/T80.vhd(104)
  input RESET_n;  // ../../rtl/t80se/T80.vhd(99)
  input WAIT_n;  // ../../rtl/t80se/T80.vhd(102)
  input out0;  // ../../rtl/t80se/T80.vhd(122)
  output [15:0] A;  // ../../rtl/t80se/T80.vhd(113)
  output BUSAK_n;  // ../../rtl/t80se/T80.vhd(112)
  output [7:0] DO;  // ../../rtl/t80se/T80.vhd(116)
  output HALT_n;  // ../../rtl/t80se/T80.vhd(111)
  output IORQ;  // ../../rtl/t80se/T80.vhd(107)
  output IntCycle_n;  // ../../rtl/t80se/T80.vhd(119)
  output IntE;  // ../../rtl/t80se/T80.vhd(120)
  output M1_n;  // ../../rtl/t80se/T80.vhd(106)
  output [2:0] MC;  // ../../rtl/t80se/T80.vhd(117)
  output NoRead;  // ../../rtl/t80se/T80.vhd(108)
  output [211:0] REG;  // ../../rtl/t80se/T80.vhd(123)
  output RFSH_n;  // ../../rtl/t80se/T80.vhd(110)
  output Stop;  // ../../rtl/t80se/T80.vhd(121)
  output [2:0] TS;  // ../../rtl/t80se/T80.vhd(118)
  output Write;  // ../../rtl/t80se/T80.vhd(109)

  parameter Flag_C = 0;
  parameter Flag_H = 4;
  parameter Flag_N = 1;
  parameter Flag_P = 2;
  parameter Flag_S = 7;
  parameter Flag_X = 3;
  parameter Flag_Y = 5;
  parameter Flag_Z = 6;
  parameter IOWait = 1;
  parameter Mode = 0;
  wire [7:0] ACC;  // ../../rtl/t80se/T80.vhd(141)
  wire [3:0] ALU_Op;  // ../../rtl/t80se/T80.vhd(224)
  wire [3:0] ALU_Op_r;  // ../../rtl/t80se/T80.vhd(206)
  wire [7:0] ALU_Q;  // ../../rtl/t80se/T80.vhd(198)
  wire [7:0] Ap;  // ../../rtl/t80se/T80.vhd(142)
  wire [7:0] BusA;  // ../../rtl/t80se/T80.vhd(197)
  wire [7:0] BusB;  // ../../rtl/t80se/T80.vhd(196)
  wire [7:0] DI_Reg;  // ../../rtl/t80se/T80.vhd(182)
  wire [127:0] DOR;  // ../../rtl/t80se/T80.vhd(261)
  wire [7:0] F;  // ../../rtl/t80se/T80.vhd(141)
  wire [7:0] F_Out;  // ../../rtl/t80se/T80.vhd(199)
  wire [7:0] Fp;  // ../../rtl/t80se/T80.vhd(142)
  wire [7:0] I;  // ../../rtl/t80se/T80.vhd(143)
  wire [15:0] ID16;  // ../../rtl/t80se/T80.vhd(168)
  wire [1:0] IMode;  // ../../rtl/t80se/T80.vhd(258)
  wire [7:0] IR;  // ../../rtl/t80se/T80.vhd(164)
  wire [1:0] ISet;  // ../../rtl/t80se/T80.vhd(165)
  wire [1:0] IStatus;  // ../../rtl/t80se/T80.vhd(180)
  wire [3:0] IncDec_16;  // ../../rtl/t80se/T80.vhd(218)
  wire [2:0] MCycle;  // ../../rtl/t80se/T80.vhd(172)
  wire [2:0] MCycles;  // ../../rtl/t80se/T80.vhd(209)
  wire [2:0] MCycles_d;  // ../../rtl/t80se/T80.vhd(212)
  wire [15:0] PC;  // ../../rtl/t80se/T80.vhd(145)
  wire [2:0] Pre_XY_F_M;  // ../../rtl/t80se/T80.vhd(185)
  wire [1:0] Prefix;  // ../../rtl/t80se/T80.vhd(219)
  wire [7:0] R;  // ../../rtl/t80se/T80.vhd(144)
  wire [4:0] Read_To_Reg_r;  // ../../rtl/t80se/T80.vhd(203)
  wire [2:0] RegAddrA;  // ../../rtl/t80se/T80.vhd(153)
  wire [2:0] RegAddrA_r;  // ../../rtl/t80se/T80.vhd(152)
  wire [2:0] RegAddrB;  // ../../rtl/t80se/T80.vhd(155)
  wire [2:0] RegAddrB_r;  // ../../rtl/t80se/T80.vhd(154)
  wire [2:0] RegAddrC;  // ../../rtl/t80se/T80.vhd(156)
  wire [15:0] RegBusA;  // ../../rtl/t80se/T80.vhd(149)
  wire [15:0] RegBusA_r;  // ../../rtl/t80se/T80.vhd(166)
  wire [15:0] RegBusB;  // ../../rtl/t80se/T80.vhd(150)
  wire [15:0] RegBusC;  // ../../rtl/t80se/T80.vhd(151)
  wire [7:0] RegDIH;  // ../../rtl/t80se/T80.vhd(147)
  wire [7:0] RegDIL;  // ../../rtl/t80se/T80.vhd(148)
  wire [15:0] SP;  // ../../rtl/t80se/T80.vhd(145)
  wire [7:0] Save_Mux;  // ../../rtl/t80se/T80.vhd(169)
  wire [1:0] SetWZ;  // ../../rtl/t80se/T80.vhd(255)
  wire [2:0] Set_Addr_To;  // ../../rtl/t80se/T80.vhd(228)
  wire [3:0] Set_BusA_To;  // ../../rtl/t80se/T80.vhd(223)
  wire [3:0] Set_BusB_To;  // ../../rtl/t80se/T80.vhd(222)
  wire [2:0] Special_LD;  // ../../rtl/t80se/T80.vhd(238)
  wire [2:0] TState;  // ../../rtl/t80se/T80.vhd(171)
  wire [2:0] TStates;  // ../../rtl/t80se/T80.vhd(213)
  wire [15:0] WZ;  // ../../rtl/t80se/T80.vhd(162)
  wire [1:0] XY_State;  // ../../rtl/t80se/T80.vhd(184)
  wire [15:0] n100;
  wire [15:0] n101;
  wire [15:0] n102;
  wire [15:0] n103;
  wire [15:0] n104;
  wire [15:0] n105;
  wire [15:0] n106;
  wire [15:0] n107;
  wire [15:0] n108;
  wire [15:0] n109;
  wire [7:0] n11;
  wire [15:0] n110;
  wire [15:0] n112;
  wire [7:0] n113;
  wire [1:0] n114;
  wire [7:0] n115;
  wire [1:0] n116;
  wire [1:0] n117;
  wire [1:0] n120;
  wire [1:0] n121;
  wire [2:0] n122;
  wire [1:0] n124;
  wire [1:0] n125;
  wire [2:0] n126;
  wire [15:0] n129;
  wire [15:0] n130;
  wire [15:0] n131;
  wire [3:0] n133;
  wire [7:0] n134;
  wire [1:0] n135;
  wire [2:0] n136;
  wire [1:0] n14;
  wire [7:0] n146;
  wire [8:0] n147;
  wire [3:0] n156;
  wire [7:0] n160;
  wire [15:0] n161;
  wire [15:0] n162;
  wire [15:0] n163;
  wire [15:0] n164;
  wire [16:0] n165;
  wire [15:0] n166;
  wire [15:0] n167;
  wire [7:0] n168;
  wire [15:0] n169;
  wire [15:0] n170;
  wire [15:0] n172;
  wire [15:0] n173;
  wire [16:0] n177;
  wire [15:0] n178;
  wire [15:0] n179;
  wire [16:0] n183;
  wire [15:0] n184;
  wire [15:0] n185;
  wire [15:0] n186;
  wire [15:0] n187;
  wire [15:0] n188;
  wire [7:0] n189;
  wire [7:0] n190;
  wire [7:0] n191;
  wire [7:0] n192;
  wire [15:0] n195;
  wire [6:0] n196;
  wire [15:0] n197;
  wire [7:0] n198;
  wire [1:0] n199;
  wire [1:0] n200;
  wire [15:0] n203;
  wire [3:0] n205;
  wire [7:0] n206;
  wire [7:0] n207;
  wire [15:0] n209;
  wire [7:0] n210;
  wire [7:0] n211;
  wire [7:0] n214;
  wire [7:0] n215;
  wire [7:0] n218;
  wire [3:0] n219;
  wire [2:0] n220;
  wire [7:0] n222;
  wire [7:0] n223;
  wire [7:0] n224;
  wire [6:0] n225;
  wire [7:0] n227;
  wire [7:0] n228;
  wire [15:0] n229;
  wire [7:0] n230;
  wire [6:0] n231;
  wire [7:0] n233;
  wire [7:0] n234;
  wire [7:0] n240;
  wire [6:0] n25;
  wire [1:0] n251;
  wire [1:0] n252;
  wire [1:0] n253;
  wire [7:0] n259;
  wire [7:0] n260;
  wire [7:0] n261;
  wire [7:0] n263;
  wire [4:0] n264;
  wire [4:0] n265;
  wire [1:0] n267;
  wire [1:0] n268;
  wire [8:0] n271;
  wire [1:0] n272;
  wire [7:0] n281;
  wire [7:0] n282;
  wire [15:0] n283;
  wire [7:0] n284;
  wire [7:0] n285;
  wire [7:0] n286;
  wire [7:0] n287;
  wire [15:0] n288;
  wire [7:0] n289;
  wire [7:0] n290;
  wire [7:0] n291;
  wire [7:0] n292;
  wire [7:0] n293;
  wire [7:0] n294;
  wire [7:0] n295;
  wire [7:0] n296;
  wire [7:0] n297;
  wire [7:0] n298;
  wire [7:0] n299;
  wire [7:0] n300;
  wire [7:0] n301;
  wire [15:0] n302;
  wire [15:0] n303;
  wire [15:0] n304;
  wire [15:0] n305;
  wire [15:0] n306;
  wire [15:0] n307;
  wire [1:0] n308;
  wire [1:0] n309;
  wire [3:0] n310;
  wire [3:0] n311;
  wire [4:0] n314;
  wire [4:0] n315;
  wire [2:0] n316;
  wire [2:0] n317;
  wire [7:0] n324;
  wire [7:0] n325;
  wire [1:0] n326;
  wire [1:0] n327;
  wire [1:0] n328;
  wire [1:0] n329;
  wire [15:0] n334;
  wire [15:0] n335;
  wire [7:0] n342;
  wire [7:0] n343;
  wire [2:0] n346;
  wire [2:0] n349;
  wire [15:0] n35;
  wire [1:0] n351;
  wire [2:0] n354;
  wire [15:0] n36;
  wire [2:0] n364;
  wire [2:0] n365;
  wire [2:0] n366;
  wire [15:0] n368;
  wire [2:0] n376;
  wire [2:0] n377;
  wire [2:0] n378;
  wire [15:0] n379;
  wire [16:0] n380;
  wire [7:0] n396;
  wire [7:0] n397;
  wire [7:0] n398;
  wire [7:0] n399;
  wire [7:0] n403;
  wire [7:0] n406;
  wire [7:0] n407;
  wire [7:0] n408;
  wire [7:0] n409;
  wire [7:0] n410;
  wire [7:0] n411;
  wire [7:0] n412;
  wire [7:0] n43;
  wire [7:0] n44;
  wire [2:0] n454;
  wire [2:0] n456;
  wire [1:0] n47;
  wire [2:0] n475;
  wire [2:0] n476;
  wire [2:0] n477;
  wire [2:0] n478;
  wire [2:0] n479;
  wire [1:0] n49;
  wire [2:0] n498;
  wire [2:0] n499;
  wire [2:0] n500;
  wire [1:0] n51;
  wire [2:0] n511;
  wire [2:0] n512;
  wire [2:0] n517;
  wire [2:0] n518;
  wire [2:0] n519;
  wire [2:0] n520;
  wire [2:0] n521;
  wire [2:0] n522;
  wire [1:0] n53;
  wire [2:0] n537;
  wire [2:0] n538;
  wire [2:0] n539;
  wire [1:0] n54;
  wire [2:0] n557;
  wire [2:0] n558;
  wire [2:0] n559;
  wire [1:0] n56;
  wire [15:0] n57;
  wire [2:0] n574;
  wire [2:0] n575;
  wire [2:0] n576;
  wire [6:0] n58;
  wire [15:0] n59;
  wire [7:0] n60;
  wire [1:0] n61;
  wire [1:0] n62;
  wire [1:0] n66;
  wire [1:0] n68;
  wire [15:0] n79;
  wire [15:0] n80;
  wire [15:0] n81;
  wire [15:0] n83;
  wire [15:0] n84;
  wire [7:0] n86;
  wire [15:0] n87;
  wire [15:0] n88;
  wire [15:0] n89;
  wire [7:0] n90;
  wire [15:0] n91;
  wire [15:0] n92;
  wire [15:0] n93;
  wire [15:0] n94;
  wire [15:0] n95;
  wire [15:0] n96;
  wire [15:0] n97;
  wire [15:0] n98;
  wire [15:0] n99;
  wire Alternate;  // ../../rtl/t80se/T80.vhd(159)
  wire Arith16;  // ../../rtl/t80se/T80.vhd(227)
  wire Arith16_r;  // ../../rtl/t80se/T80.vhd(204)
  wire Auto_Wait;  // ../../rtl/t80se/T80.vhd(190)
  wire Auto_Wait_t1;  // ../../rtl/t80se/T80.vhd(191)
  wire Auto_Wait_t2;  // ../../rtl/t80se/T80.vhd(192)
  wire BTR_r;  // ../../rtl/t80se/T80.vhd(189)
  wire BusAck;  // ../../rtl/t80se/T80.vhd(177)
  wire BusReq_s;  // ../../rtl/t80se/T80.vhd(176)
  wire Call;  // ../../rtl/t80se/T80.vhd(232)
  wire ClkEn;  // ../../rtl/t80se/T80.vhd(178)
  wire ExchangeAF;  // ../../rtl/t80se/T80.vhd(241)
  wire ExchangeDH;  // ../../rtl/t80se/T80.vhd(239)
  wire ExchangeRS;  // ../../rtl/t80se/T80.vhd(242)
  wire ExchangeRp;  // ../../rtl/t80se/T80.vhd(240)
  wire FChanged;  // ../../rtl/t80se/T80.vhd(163)
  wire Halt;  // ../../rtl/t80se/T80.vhd(259)
  wire Halt_FF;  // ../../rtl/t80se/T80.vhd(175)
  wire IORQ_i;  // ../../rtl/t80se/T80.vhd(237)
  wire I_BC;  // ../../rtl/t80se/T80.vhd(249)
  wire I_BT;  // ../../rtl/t80se/T80.vhd(248)
  wire I_BTR;  // ../../rtl/t80se/T80.vhd(250)
  wire I_CCF;  // ../../rtl/t80se/T80.vhd(245)
  wire I_CPL;  // ../../rtl/t80se/T80.vhd(244)
  wire I_DJNZ;  // ../../rtl/t80se/T80.vhd(243)
  wire I_INRC;  // ../../rtl/t80se/T80.vhd(254)
  wire I_RETN;  // ../../rtl/t80se/T80.vhd(247)
  wire I_RLD;  // ../../rtl/t80se/T80.vhd(251)
  wire I_RRD;  // ../../rtl/t80se/T80.vhd(252)
  wire I_RXDD;  // ../../rtl/t80se/T80.vhd(253)
  wire I_SCF;  // ../../rtl/t80se/T80.vhd(246)
  wire IncDecZ;  // ../../rtl/t80se/T80.vhd(193)
  wire Inc_PC;  // ../../rtl/t80se/T80.vhd(216)
  wire Inc_WZ;  // ../../rtl/t80se/T80.vhd(217)
  wire IntCycle;  // ../../rtl/t80se/T80.vhd(214)
  wire IntE_FF1;  // ../../rtl/t80se/T80.vhd(173)
  wire IntE_FF2;  // ../../rtl/t80se/T80.vhd(174)
  wire Jump;  // ../../rtl/t80se/T80.vhd(229)
  wire JumpE;  // ../../rtl/t80se/T80.vhd(230)
  wire JumpXY;  // ../../rtl/t80se/T80.vhd(231)
  wire LDSPHL;  // ../../rtl/t80se/T80.vhd(236)
  wire LDW;  // ../../rtl/t80se/T80.vhd(235)
  wire LDZ;  // ../../rtl/t80se/T80.vhd(234)
  wire NMICycle;  // ../../rtl/t80se/T80.vhd(215)
  wire NMI_s;  // ../../rtl/t80se/T80.vhd(179)
  wire NextIs_XY_Fetch;  // ../../rtl/t80se/T80.vhd(186)
  wire No_BTR;  // ../../rtl/t80se/T80.vhd(188)
  wire OldNMI_n;  // ../../rtl/t80se/T80.vhd(1089)
  wire PreserveC;  // ../../rtl/t80se/T80.vhd(226)
  wire PreserveC_r;  // ../../rtl/t80se/T80.vhd(208)
  wire Read_To_Acc;  // ../../rtl/t80se/T80.vhd(220)
  wire Read_To_Reg;  // ../../rtl/t80se/T80.vhd(221)
  wire RegWEH;  // ../../rtl/t80se/T80.vhd(157)
  wire RegWEL;  // ../../rtl/t80se/T80.vhd(158)
  wire RstP;  // ../../rtl/t80se/T80.vhd(233)
  wire Save_ALU;  // ../../rtl/t80se/T80.vhd(225)
  wire Save_ALU_r;  // ../../rtl/t80se/T80.vhd(207)
  wire SetDI;  // ../../rtl/t80se/T80.vhd(256)
  wire SetEI;  // ../../rtl/t80se/T80.vhd(257)
  wire T_Res;  // ../../rtl/t80se/T80.vhd(183)
  wire XY_Ind;  // ../../rtl/t80se/T80.vhd(187)
  wire XYbit_undoc;  // ../../rtl/t80se/T80.vhd(260)
  wire Z16_r;  // ../../rtl/t80se/T80.vhd(205)
  wire n0;
  wire n1;
  wire n10;
  wire n111;
  wire n118;
  wire n119;
  wire n12;
  wire n123;
  wire n127;
  wire n128;
  wire n13;
  wire n132;
  wire n137;
  wire n138;
  wire n139;
  wire n140;
  wire n141;
  wire n142;
  wire n143;
  wire n144;
  wire n145;
  wire n148;
  wire n149;
  wire n15;
  wire n150;
  wire n151;
  wire n152;
  wire n153;
  wire n154;
  wire n155;
  wire n157;
  wire n158;
  wire n159;
  wire n16;
  wire n17;
  wire n171;
  wire n174;
  wire n175;
  wire n176;
  wire n18;
  wire n180;
  wire n181;
  wire n182;
  wire n19;
  wire n193;
  wire n194;
  wire n2;
  wire n20;
  wire n201;
  wire n202;
  wire n204;
  wire n208;
  wire n21;
  wire n212;
  wire n213;
  wire n216;
  wire n217;
  wire n22;
  wire n221;
  wire n226;
  wire n23;
  wire n232;
  wire n235;
  wire n236;
  wire n237;
  wire n238;
  wire n239;
  wire n24;
  wire n241;
  wire n242;
  wire n243;
  wire n244;
  wire n245;
  wire n246;
  wire n247;
  wire n248;
  wire n249;
  wire n250;
  wire n254;
  wire n255;
  wire n256;
  wire n257;
  wire n258;
  wire n26;
  wire n262;
  wire n266;
  wire n269;
  wire n27;
  wire n270;
  wire n273;
  wire n274;
  wire n275;
  wire n276;
  wire n277;
  wire n278;
  wire n279;
  wire n28;
  wire n280;
  wire n29;
  wire n3;
  wire n30;
  wire n31;
  wire n312;
  wire n313;
  wire n318;
  wire n319;
  wire n32;
  wire n320;
  wire n321;
  wire n322;
  wire n323;
  wire n33;
  wire n330;
  wire n331;
  wire n332;
  wire n333;
  wire n336;
  wire n337;
  wire n338;
  wire n339;
  wire n34;
  wire n340;
  wire n341;
  wire n344;
  wire n345;
  wire n347;
  wire n348;
  wire n350;
  wire n352;
  wire n353;
  wire n355;
  wire n356;
  wire n357;
  wire n358;
  wire n359;
  wire n360;
  wire n361;
  wire n362;
  wire n363;
  wire n367;
  wire n369;
  wire n37;
  wire n370;
  wire n371;
  wire n372;
  wire n373;
  wire n374;
  wire n375;
  wire n38;
  wire n381;
  wire n382;
  wire n383;
  wire n384;
  wire n385;
  wire n386;
  wire n387;
  wire n388;
  wire n389;
  wire n39;
  wire n390;
  wire n391;
  wire n392;
  wire n393;
  wire n394;
  wire n395;
  wire n4;
  wire n40;
  wire n400;
  wire n401;
  wire n402;
  wire n404;
  wire n405;
  wire n41;
  wire n413;
  wire n414;
  wire n415;
  wire n416;
  wire n417;
  wire n418;
  wire n419;
  wire n42;
  wire n420;
  wire n421;
  wire n422;
  wire n423;
  wire n424;
  wire n425;
  wire n426;
  wire n427;
  wire n428;
  wire n429;
  wire n430;
  wire n431;
  wire n432;
  wire n433;
  wire n434;
  wire n435;
  wire n436;
  wire n437;
  wire n438;
  wire n439;
  wire n440;
  wire n441;
  wire n442;
  wire n443;
  wire n444;
  wire n445;
  wire n446;
  wire n447;
  wire n448;
  wire n449;
  wire n45;
  wire n450;
  wire n451;
  wire n452;
  wire n453;
  wire n455;
  wire n457;
  wire n458;
  wire n459;
  wire n46;
  wire n460;
  wire n461;
  wire n462;
  wire n463;
  wire n464;
  wire n465;
  wire n466;
  wire n467;
  wire n468;
  wire n469;
  wire n470;
  wire n471;
  wire n472;
  wire n473;
  wire n474;
  wire n48;
  wire n480;
  wire n481;
  wire n482;
  wire n483;
  wire n484;
  wire n485;
  wire n486;
  wire n487;
  wire n488;
  wire n489;
  wire n490;
  wire n491;
  wire n492;
  wire n493;
  wire n494;
  wire n495;
  wire n496;
  wire n497;
  wire n5;
  wire n50;
  wire n501;
  wire n502;
  wire n503;
  wire n504;
  wire n505;
  wire n506;
  wire n507;
  wire n508;
  wire n509;
  wire n510;
  wire n513;
  wire n514;
  wire n515;
  wire n516;
  wire n52;
  wire n523;
  wire n524;
  wire n525;
  wire n526;
  wire n527;
  wire n528;
  wire n529;
  wire n530;
  wire n531;
  wire n532;
  wire n533;
  wire n534;
  wire n535;
  wire n536;
  wire n540;
  wire n541;
  wire n542;
  wire n543;
  wire n544;
  wire n545;
  wire n546;
  wire n547;
  wire n548;
  wire n549;
  wire n55;
  wire n550;
  wire n551;
  wire n552;
  wire n553;
  wire n554;
  wire n555;
  wire n556;
  wire n560;
  wire n561;
  wire n562;
  wire n563;
  wire n564;
  wire n565;
  wire n566;
  wire n567;
  wire n568;
  wire n569;
  wire n570;
  wire n571;
  wire n572;
  wire n573;
  wire n577;
  wire n578;
  wire n579;
  wire n6;
  wire n63;
  wire n64;
  wire n65;
  wire n67;
  wire n69;
  wire n7;
  wire n70;
  wire n71;
  wire n72;
  wire n73;
  wire n74;
  wire n75;
  wire n76;
  wire n77;
  wire n78;
  wire n8;
  wire n82;
  wire n85;
  wire n9;

  AL_DFF Alternate_reg (
    .clk(CLK_n),
    .d(n339),
    .reset(n12),
    .set(1'b0),
    .q(Alternate));  // ../../rtl/t80se/T80.vhd(840)
  AL_DFF Arith16_r_reg (
    .clk(CLK_n),
    .d(n319),
    .reset(n12),
    .set(1'b0),
    .q(Arith16_r));  // ../../rtl/t80se/T80.vhd(840)
  AL_DFF Auto_Wait_t1_reg (
    .clk(CLK_n),
    .d(n569),
    .reset(n12),
    .set(1'b0),
    .q(Auto_Wait_t1));  // ../../rtl/t80se/T80.vhd(1201)
  AL_DFF Auto_Wait_t2_reg (
    .clk(CLK_n),
    .d(n568),
    .reset(n12),
    .set(1'b0),
    .q(Auto_Wait_t2));  // ../../rtl/t80se/T80.vhd(1201)
  AL_DFF BTR_r_reg (
    .clk(CLK_n),
    .d(n333),
    .reset(n12),
    .set(1'b0),
    .q(BTR_r));  // ../../rtl/t80se/T80.vhd(840)
  AL_DFF BusAck_reg (
    .clk(CLK_n),
    .d(n573),
    .reset(n12),
    .set(1'b0),
    .q(BusAck));  // ../../rtl/t80se/T80.vhd(1201)
  AL_DFF BusReq_s_reg (
    .clk(CLK_n),
    .d(n567),
    .reset(n12),
    .set(1'b0),
    .q(BusReq_s));  // ../../rtl/t80se/T80.vhd(1201)
  AL_DFF FChanged_reg (
    .clk(CLK_n),
    .d(n337),
    .reset(n12),
    .set(1'b0),
    .q(FChanged));  // ../../rtl/t80se/T80.vhd(840)
  AL_DFF Halt_FF_reg (
    .clk(CLK_n),
    .d(n571),
    .reset(n12),
    .set(1'b0),
    .q(Halt_FF));  // ../../rtl/t80se/T80.vhd(1201)
  AL_DFF I_RXDD_reg (
    .clk(CLK_n),
    .d(n341),
    .reset(n12),
    .set(1'b0),
    .q(I_RXDD));  // ../../rtl/t80se/T80.vhd(840)
  AL_DFF IncDecZ_reg (
    .clk(CLK_n),
    .d(n367),
    .reset(1'b0),
    .set(1'b0),
    .q(IncDecZ));  // ../../rtl/t80se/T80.vhd(887)
  AL_DFF IntCycle_reg (
    .clk(CLK_n),
    .d(n577),
    .reset(n12),
    .set(1'b0),
    .q(IntCycle));  // ../../rtl/t80se/T80.vhd(1201)
  AL_DFF IntE_FF1_reg (
    .clk(CLK_n),
    .d(n564),
    .reset(n12),
    .set(1'b0),
    .q(IntE_FF1));  // ../../rtl/t80se/T80.vhd(1201)
  AL_DFF IntE_FF2_reg (
    .clk(CLK_n),
    .d(n563),
    .reset(n12),
    .set(1'b0),
    .q(IntE_FF2));  // ../../rtl/t80se/T80.vhd(1201)
  AL_DFF M1_n_reg (
    .clk(CLK_n),
    .d(n572),
    .reset(1'b0),
    .set(n12),
    .q(M1_n));  // ../../rtl/t80se/T80.vhd(1201)
  AL_DFF NMICycle_reg (
    .clk(CLK_n),
    .d(n578),
    .reset(n12),
    .set(1'b0),
    .q(NMICycle));  // ../../rtl/t80se/T80.vhd(1201)
  AL_DFF NMI_s_reg (
    .clk(CLK_n),
    .d(n565),
    .reset(n12),
    .set(1'b0),
    .q(NMI_s));  // ../../rtl/t80se/T80.vhd(1201)
  AL_DFF No_BTR_reg (
    .clk(CLK_n),
    .d(n570),
    .reset(n12),
    .set(1'b0),
    .q(No_BTR));  // ../../rtl/t80se/T80.vhd(1201)
  AL_DFF OldNMI_n_reg (
    .clk(CLK_n),
    .d(n579),
    .reset(1'b0),
    .set(1'b0),
    .q(OldNMI_n));  // ../../rtl/t80se/T80.vhd(1201)
  AL_DFF PreserveC_r_reg (
    .clk(CLK_n),
    .d(n321),
    .reset(n12),
    .set(1'b0),
    .q(PreserveC_r));  // ../../rtl/t80se/T80.vhd(840)
  AL_DFF RFSH_n_reg (
    .clk(CLK_n),
    .d(n418),
    .reset(1'b0),
    .set(n12),
    .q(RFSH_n));  // ../../rtl/t80se/T80.vhd(1070)
  T80_Reg Regs (
    .AddrA(RegAddrA),
    .AddrB(RegAddrB),
    .AddrC(RegAddrC),
    .CEN(ClkEn),
    .Clk(CLK_n),
    .DIH(RegDIH),
    .DIL(RegDIL),
    .DIR(DIR[207:80]),
    .DIRSet(DIRSet),
    .WEH(RegWEH),
    .WEL(RegWEL),
    .DOAH(RegBusA[15:8]),
    .DOAL(RegBusA[7:0]),
    .DOBH(RegBusB[15:8]),
    .DOBL(RegBusB[7:0]),
    .DOCH(RegBusC[15:8]),
    .DOCL(RegBusC[7:0]),
    .DOR(DOR));  // ../../rtl/t80se/T80.vhd(962)
  AL_DFF Save_ALU_r_reg (
    .clk(CLK_n),
    .d(n313),
    .reset(n12),
    .set(1'b0),
    .q(Save_ALU_r));  // ../../rtl/t80se/T80.vhd(840)
  AL_DFF XY_Ind_reg (
    .clk(CLK_n),
    .d(n331),
    .reset(n12),
    .set(1'b0),
    .q(XY_Ind));  // ../../rtl/t80se/T80.vhd(840)
  AL_DFF Z16_r_reg (
    .clk(CLK_n),
    .d(n323),
    .reset(n12),
    .set(1'b0),
    .q(Z16_r));  // ../../rtl/t80se/T80.vhd(840)
  add_pu7_pu7_o7 add0 (
    .i0(R[6:0]),
    .i1(7'b0000001),
    .o(n25));
  add_pu16_pu16_o16 add1 (
    .i0(PC),
    .i1(16'b0000000000000001),
    .o(n35));
  add_pu16_pu16_o16 add10 (
    .i0(SP),
    .i1(16'b0000000000000001),
    .o(n184));
  add_pu16_pu16_o16 add11 (
    .i0(RegBusA),
    .i1(16'b0000000000000001),
    .o(n379));
  add_pu3_pu3_o3 add12 (
    .i0(Pre_XY_F_M),
    .i1(3'b001),
    .o(n456));
  add_pu3_pu3_o3 add13 (
    .i0(MCycle),
    .i1(3'b001),
    .o(n475));
  add_pu3_pu3_o3 add14 (
    .i0(TState),
    .i1(3'b001),
    .o(n511));
  add_pu16_pu16_o16 add2 (
    .i0({ACC,DI_Reg}),
    .i1(16'b0000000000000001),
    .o(n81));
  add_pu16_pu16_o16 add3 (
    .i0(RegBusC),
    .i1(16'b0000000000000001),
    .o(n83));
  add_pu8_pu8_o8 add4 (
    .i0(RegBusC[7:0]),
    .i1(8'b00000001),
    .o(n86));
  add_pu16_pu16_o16 add5 (
    .i0(WZ),
    .i1(16'b0000000000000001),
    .o(n89));
  add_pu8_pu8_o8 add6 (
    .i0(WZ[7:0]),
    .i1(8'b00000001),
    .o(n90));
  add_pu8_pu8_o9 add7 (
    .i0(DI_Reg),
    .i1(ID16[7:0]),
    .o({n145,open_n0,open_n1,open_n2,open_n3,open_n4,n146[2:0]}));
  add_pu16_pu16_o16 add8 (
    .i0(PC),
    .i1({DI_Reg[7],DI_Reg[7],DI_Reg[7],DI_Reg[7],DI_Reg[7],DI_Reg[7],DI_Reg[7],DI_Reg[7],DI_Reg}),
    .o(n161));  // ../../rtl/t80se/T80.vhd(646)
  add_pu16_pu16_o16 add9 (
    .i0(RegBusC),
    .i1({DI_Reg[7],DI_Reg[7],DI_Reg[7],DI_Reg[7],DI_Reg[7],DI_Reg[7],DI_Reg[7],DI_Reg[7],DI_Reg}),
    .o(n172));  // ../../rtl/t80se/T80.vhd(660)
  T80_ALU alu (
    .ALU_Op(ALU_Op_r),
    .Arith16(Arith16_r),
    .BusA(BusA),
    .BusB(BusB),
    .F_In(F),
    .IR(IR[5:0]),
    .ISet(ISet),
    .WZ(WZ),
    .XY_State(XY_State),
    .Z16(Z16_r),
    .F_Out(F_Out),
    .Q(ALU_Q));  // ../../rtl/t80se/T80.vhd(337)
  eq_w3 eq0 (
    .i0(TState),
    .i1(TStates),
    .o(T_Res));  // ../../rtl/t80se/T80.vhd(365)
  eq_w3 eq1 (
    .i0(Set_Addr_To),
    .i1(3'b010),
    .o(n2));
  eq_w2 eq10 (
    .i0(Prefix),
    .i1(2'b11),
    .o(n46));
  eq_w2 eq11 (
    .i0(Prefix),
    .i1(2'b10),
    .o(n48));
  eq_w3 eq12 (
    .i0(MCycle),
    .i1(3'b110),
    .o(n64));
  eq_w2 eq13 (
    .i0(Prefix),
    .i1(2'b01),
    .o(n65));
  eq_w3 eq14 (
    .i0(MCycle),
    .i1(MCycles),
    .o(n74));
  eq_w2 eq15 (
    .i0(XY_State),
    .i1(2'b00),
    .o(n78));
  eq_w2 eq16 (
    .i0(SetWZ),
    .i1(2'b01),
    .o(n82));
  eq_w2 eq17 (
    .i0(SetWZ),
    .i1(2'b10),
    .o(n85));
  eq_w2 eq18 (
    .i0(SetWZ),
    .i1(2'b11),
    .o(n111));
  eq_w3 eq19 (
    .i0(TState),
    .i1(3'b001),
    .o(n140));  // ../../rtl/t80se/T80.vhd(631)
  eq_w3 eq2 (
    .i0(MCycle),
    .i1(3'b001),
    .o(n3));
  eq_w2 eq20 (
    .i0(ISet),
    .i1(2'b01),
    .o(n158));
  eq_w3 eq21 (
    .i0(MCycle),
    .i1(3'b111),
    .o(n455));
  eq_w3 eq22 (
    .i0(TState),
    .i1(3'b011),
    .o(n213));  // ../../rtl/t80se/T80.vhd(659)
  eq_w3 eq23 (
    .i0(TState),
    .i1(3'b100),
    .o(n174));  // ../../rtl/t80se/T80.vhd(663)
  eq_w3 eq24 (
    .i0(IncDec_16[2:0]),
    .i1(3'b111),
    .o(n182));
  eq_w8 eq25 (
    .i0(I),
    .i1(8'b00000000),
    .o(n216));
  eq_w8 eq26 (
    .i0(R),
    .i1(8'b00000000),
    .o(n217));  // ../../rtl/t80se/T80.vhd(727)
  eq_w4 eq27 (
    .i0(ALU_Op_r),
    .i1(4'b1001),
    .o(n237));
  eq_w8 eq28 (
    .i0(DI_Reg),
    .i1(8'b00000000),
    .o(n242));
  eq_w2 eq29 (
    .i0(Set_BusA_To[2:1]),
    .i1(2'b10),
    .o(n344));
  eq_w8 eq3 (
    .i0(IR),
    .i1(8'b11001011),
    .o(n4));
  eq_w2 eq30 (
    .i0(Set_BusB_To[2:1]),
    .i1(2'b10),
    .o(n347));
  eq_w3 eq31 (
    .i0(IncDec_16[2:0]),
    .i1(3'b100),
    .o(n359));
  eq_w16 eq32 (
    .i0(ID16),
    .i1(16'b0000000000000000),
    .o(n361));  // ../../rtl/t80se/T80.vhd(878)
  eq_w2 eq33 (
    .i0(IncDec_16[1:0]),
    .i1(2'b10),
    .o(n372));
  eq_w8 eq34 (
    .i0(IR),
    .i1(8'b01110001),
    .o(n404));
  eq_w3 eq35 (
    .i0(MCycle),
    .i1(3'b010),
    .o(n457));
  eq_w2 eq36 (
    .i0(Prefix),
    .i1(2'b00),
    .o(n462));
  eq_w3 eq37 (
    .i0(TState),
    .i1(3'b000),
    .o(n546));  // ../../rtl/t80se/T80.vhd(1196)
  eq_w8 eq4 (
    .i0(IR),
    .i1(8'b00110110),
    .o(n6));
  eq_w2 eq5 (
    .i0(ISet),
    .i1(2'b10),
    .o(n15));
  eq_w3 eq6 (
    .i0(MCycle),
    .i1(3'b011),
    .o(n17));
  eq_w3 eq7 (
    .i0(TState),
    .i1(3'b010),
    .o(n23));  // ../../rtl/t80se/T80.vhd(447)
  eq_w2 eq8 (
    .i0(IStatus),
    .i1(2'b01),
    .o(n37));
  eq_w2 eq9 (
    .i0(IStatus),
    .i1(2'b10),
    .o(n39));
  T80_MCode mcode (
    .F(F),
    .IR(IR),
    .ISet(ISet),
    .IntCycle(IntCycle),
    .MCycle(MCycle),
    .NMICycle(NMICycle),
    .XY_State(XY_State),
    .ALU_Op(ALU_Op),
    .Arith16(Arith16),
    .Call(Call),
    .ExchangeAF(ExchangeAF),
    .ExchangeDH(ExchangeDH),
    .ExchangeRS(ExchangeRS),
    .ExchangeRp(ExchangeRp),
    .Halt(Halt),
    .IMode(IMode),
    .IORQ(IORQ_i),
    .I_BC(I_BC),
    .I_BT(I_BT),
    .I_BTR(I_BTR),
    .I_CCF(I_CCF),
    .I_CPL(I_CPL),
    .I_DJNZ(I_DJNZ),
    .I_INRC(I_INRC),
    .I_RETN(I_RETN),
    .I_RLD(I_RLD),
    .I_RRD(I_RRD),
    .I_SCF(I_SCF),
    .IncDec_16(IncDec_16),
    .Inc_PC(Inc_PC),
    .Inc_WZ(Inc_WZ),
    .Jump(Jump),
    .JumpE(JumpE),
    .JumpXY(JumpXY),
    .LDSPHL(LDSPHL),
    .LDW(LDW),
    .LDZ(LDZ),
    .MCycles(MCycles_d),
    .NoRead(NoRead),
    .Prefix(Prefix),
    .PreserveC(PreserveC),
    .Read_To_Acc(Read_To_Acc),
    .Read_To_Reg(Read_To_Reg),
    .RstP(RstP),
    .Save_ALU(Save_ALU),
    .SetDI(SetDI),
    .SetEI(SetEI),
    .SetWZ(SetWZ),
    .Set_Addr_To(Set_Addr_To),
    .Set_BusA_To(Set_BusA_To),
    .Set_BusB_To(Set_BusB_To),
    .Special_LD(Special_LD),
    .TStates(TStates),
    .Write(Write),
    .XYbit_undoc(XYbit_undoc));  // ../../rtl/t80se/T80.vhd(269)
  binary_mux_s1_w2 mux0 (
    .i0(n240[7:6]),
    .i1({DI_Reg[7],n242}),
    .sel(n241),
    .o(n251));  // ../../rtl/t80se/T80.vhd(776)
  binary_mux_s1_w96 mux1 (
    .i0({DOR[111:64],DOR[47:0]}),
    .i1({DOR[47:0],DOR[111:64]}),
    .sel(Alternate),
    .o({REG[191:144],REG[127:80]}));  // ../../rtl/t80se/T80.vhd(267)
  binary_mux_s1_w2 mux10 (
    .i0(Prefix),
    .i1(2'b00),
    .sel(n46),
    .o(n53));  // ../../rtl/t80se/T80.vhd(480)
  binary_mux_s2_w4 mux100 (
    .i0({I[7],n216,I[5],I[3]}),
    .i1({R[7],n217,R[5],R[3]}),
    .i2({n207[7:5],n207[3]}),
    .i3({n207[7:5],n207[3]}),
    .sel(Special_LD[1:0]),
    .o(n219));  // ../../rtl/t80se/T80.vhd(742)
  binary_mux_s1_w8 mux101 (
    .i0(I),
    .i1(n222),
    .sel(Special_LD[2]),
    .o(n227));  // ../../rtl/t80se/T80.vhd(743)
  binary_mux_s1_w8 mux102 (
    .i0({R[7],n196}),
    .i1(n223),
    .sel(Special_LD[2]),
    .o(n228));  // ../../rtl/t80se/T80.vhd(743)
  binary_mux_s1_w16 mux103 (
    .i0(n203),
    .i1({n215,n214}),
    .sel(n213),
    .o(n229));  // ../../rtl/t80se/T80.vhd(744)
  binary_mux_s1_w8 mux104 (
    .i0(n206),
    .i1(n224),
    .sel(n213),
    .o(n230));  // ../../rtl/t80se/T80.vhd(744)
  binary_mux_s1_w2 mux105 (
    .i0({F[5],F[3]}),
    .i1(n125),
    .sel(T_Res),
    .o(n135));  // ../../rtl/t80se/T80.vhd(629)
  binary_mux_s1_w8 mux106 (
    .i0(I),
    .i1(n227),
    .sel(n213),
    .o(n233));  // ../../rtl/t80se/T80.vhd(744)
  binary_mux_s1_w8 mux107 (
    .i0({R[7],n196}),
    .i1(n228),
    .sel(n213),
    .o(n234));  // ../../rtl/t80se/T80.vhd(744)
  binary_mux_s1_w8 mux108 (
    .i0({n231,n207[0]}),
    .i1({F_Out[7:1],n239}),
    .sel(n238),
    .o(n240));  // ../../rtl/t80se/T80.vhd(761)
  binary_mux_s1_w7 mux109 (
    .i0(n207[7:1]),
    .i1(n225),
    .sel(n213),
    .o(n231));  // ../../rtl/t80se/T80.vhd(744)
  binary_mux_s1_w2 mux11 (
    .i0(2'b00),
    .i1(n51),
    .sel(n45),
    .o(n54));  // ../../rtl/t80se/T80.vhd(484)
  binary_mux_s1_w2 mux110 (
    .i0(n253),
    .i1(2'b00),
    .sel(n266),
    .o(n268));  // ../../rtl/t80se/T80.vhd(809)
  binary_mux_s1_w7 mux111 (
    .i0(R[6:0]),
    .i1(n58),
    .sel(n22),
    .o(n196));  // ../../rtl/t80se/T80.vhd(691)
  binary_mux_s1_w8 mux112 (
    .i0(BusB),
    .i1(DO),
    .sel(I_RXDD),
    .o(n259));  // ../../rtl/t80se/T80.vhd(783)
  binary_mux_s1_w8 mux113 (
    .i0(n259),
    .i1({BusB[3:0],BusA[3:0]}),
    .sel(I_RLD),
    .o(n260));  // ../../rtl/t80se/T80.vhd(787)
  binary_mux_s1_w8 mux114 (
    .i0(n260),
    .i1({BusA[3:0],BusB[7:4]}),
    .sel(I_RRD),
    .o(n261));  // ../../rtl/t80se/T80.vhd(791)
  binary_mux_s1_w8 mux115 (
    .i0(DO),
    .i1(n261),
    .sel(n257),
    .o(n263));  // ../../rtl/t80se/T80.vhd(792)
  binary_mux_s1_w5 mux116 (
    .i0({Read_To_Reg,Set_BusA_To}),
    .i1(5'b10111),
    .sel(Read_To_Acc),
    .o(n264));  // ../../rtl/t80se/T80.vhd(800)
  binary_mux_s1_w5 mux117 (
    .i0(5'b00000),
    .i1(n264),
    .sel(T_Res),
    .o(n265));  // ../../rtl/t80se/T80.vhd(801)
  binary_mux_s1_w2 mux118 (
    .i0({n240[5],n240[3]}),
    .i1({DI_Reg[5],DI_Reg[3]}),
    .sel(n241),
    .o(n252));  // ../../rtl/t80se/T80.vhd(776)
  binary_mux_s1_w2 mux119 (
    .i0({n240[4],n240[1]}),
    .i1(2'b00),
    .sel(n241),
    .o(n253));  // ../../rtl/t80se/T80.vhd(776)
  binary_mux_s1_w2 mux12 (
    .i0(2'b00),
    .i1(n53),
    .sel(n45),
    .o(n56));  // ../../rtl/t80se/T80.vhd(484)
  binary_mux_s1_w2 mux120 (
    .i0(n252),
    .i1({ALU_Q[1],ALU_Q[3]}),
    .sel(n266),
    .o(n267));  // ../../rtl/t80se/T80.vhd(809)
  binary_mux_s5_w8 mux121 (
    .i0(n230),
    .i1(n230),
    .i10(n230),
    .i11(n230),
    .i12(n230),
    .i13(n230),
    .i14(n230),
    .i15(n230),
    .i16(n230),
    .i17(n230),
    .i18(n230),
    .i19(n230),
    .i2(n230),
    .i20(n230),
    .i21(n230),
    .i22(n230),
    .i23(Save_Mux),
    .i24(n230),
    .i25(n230),
    .i26(n230),
    .i27(n230),
    .i28(n230),
    .i29(n230),
    .i3(n230),
    .i30(n230),
    .i31(n230),
    .i4(n230),
    .i5(n230),
    .i6(n230),
    .i7(n230),
    .i8(n230),
    .i9(n230),
    .sel(Read_To_Reg_r),
    .o(n281));  // ../../rtl/t80se/T80.vhd(834)
  binary_mux_s5_w8 mux122 (
    .i0(n263),
    .i1(n263),
    .i10(n263),
    .i11(n263),
    .i12(n263),
    .i13(n263),
    .i14(n263),
    .i15(n263),
    .i16(n263),
    .i17(n263),
    .i18(n263),
    .i19(n263),
    .i2(n263),
    .i20(n263),
    .i21(n263),
    .i22(Save_Mux),
    .i23(n263),
    .i24(n263),
    .i25(n263),
    .i26(n263),
    .i27(n263),
    .i28(n263),
    .i29(n263),
    .i3(n263),
    .i30(n263),
    .i31(n263),
    .i4(n263),
    .i5(n263),
    .i6(n263),
    .i7(n263),
    .i8(n263),
    .i9(n263),
    .sel(Read_To_Reg_r),
    .o(n282));  // ../../rtl/t80se/T80.vhd(834)
  binary_mux_s5_w16 mux123 (
    .i0(n209),
    .i1(n209),
    .i10(n209),
    .i11(n209),
    .i12(n209),
    .i13(n209),
    .i14(n209),
    .i15(n209),
    .i16(n209),
    .i17(n209),
    .i18(n209),
    .i19(n209),
    .i2(n209),
    .i20(n209),
    .i21(n209),
    .i22(n209),
    .i23(n209),
    .i24({n209[15:8],Save_Mux}),
    .i25({Save_Mux,n209[7:0]}),
    .i26(n209),
    .i27(n209),
    .i28(n209),
    .i29(n209),
    .i3(n209),
    .i30(n209),
    .i31(n209),
    .i4(n209),
    .i5(n209),
    .i6(n209),
    .i7(n209),
    .i8(n209),
    .i9(n209),
    .sel(Read_To_Reg_r),
    .o(n283));  // ../../rtl/t80se/T80.vhd(834)
  binary_mux_s5_w8 mux124 (
    .i0({n251,n272[1],n268[1],n272[0],n274,n268[0],n240[0]}),
    .i1({n251,n272[1],n268[1],n272[0],n274,n268[0],n240[0]}),
    .i10({n251,n272[1],n268[1],n272[0],n274,n268[0],n240[0]}),
    .i11({n251,n272[1],n268[1],n272[0],n274,n268[0],n240[0]}),
    .i12({n251,n272[1],n268[1],n272[0],n274,n268[0],n240[0]}),
    .i13({n251,n272[1],n268[1],n272[0],n274,n268[0],n240[0]}),
    .i14({n251,n272[1],n268[1],n272[0],n274,n268[0],n240[0]}),
    .i15({n251,n272[1],n268[1],n272[0],n274,n268[0],n240[0]}),
    .i16({n251,n272[1],n268[1],n272[0],n274,n268[0],n240[0]}),
    .i17({n251,n272[1],n268[1],n272[0],n274,n268[0],n240[0]}),
    .i18({n251,n272[1],n268[1],n272[0],n274,n268[0],n240[0]}),
    .i19({n251,n272[1],n268[1],n272[0],n274,n268[0],n240[0]}),
    .i2({n251,n272[1],n268[1],n272[0],n274,n268[0],n240[0]}),
    .i20({n251,n272[1],n268[1],n272[0],n274,n268[0],n240[0]}),
    .i21({n251,n272[1],n268[1],n272[0],n274,n268[0],n240[0]}),
    .i22({n251,n272[1],n268[1],n272[0],n274,n268[0],n240[0]}),
    .i23({n251,n272[1],n268[1],n272[0],n274,n268[0],n240[0]}),
    .i24({n251,n272[1],n268[1],n272[0],n274,n268[0],n240[0]}),
    .i25({n251,n272[1],n268[1],n272[0],n274,n268[0],n240[0]}),
    .i26({n251,n272[1],n268[1],n272[0],n274,n268[0],n240[0]}),
    .i27(Save_Mux),
    .i28({n251,n272[1],n268[1],n272[0],n274,n268[0],n240[0]}),
    .i29({n251,n272[1],n268[1],n272[0],n274,n268[0],n240[0]}),
    .i3({n251,n272[1],n268[1],n272[0],n274,n268[0],n240[0]}),
    .i30({n251,n272[1],n268[1],n272[0],n274,n268[0],n240[0]}),
    .i31({n251,n272[1],n268[1],n272[0],n274,n268[0],n240[0]}),
    .i4({n251,n272[1],n268[1],n272[0],n274,n268[0],n240[0]}),
    .i5({n251,n272[1],n268[1],n272[0],n274,n268[0],n240[0]}),
    .i6({n251,n272[1],n268[1],n272[0],n274,n268[0],n240[0]}),
    .i7({n251,n272[1],n268[1],n272[0],n274,n268[0],n240[0]}),
    .i8({n251,n272[1],n268[1],n272[0],n274,n268[0],n240[0]}),
    .i9({n251,n272[1],n268[1],n272[0],n274,n268[0],n240[0]}),
    .sel(Read_To_Reg_r),
    .o(n284));  // ../../rtl/t80se/T80.vhd(834)
  binary_mux_s1_w8 mux125 (
    .i0(n282),
    .i1(ALU_Q),
    .sel(XYbit_undoc),
    .o(n285));  // ../../rtl/t80se/T80.vhd(837)
  binary_mux_s1_w8 mux126 (
    .i0(n230),
    .i1(n281),
    .sel(n280),
    .o(n286));  // ../../rtl/t80se/T80.vhd(838)
  binary_mux_s1_w8 mux127 (
    .i0(n263),
    .i1(n285),
    .sel(n280),
    .o(n287));  // ../../rtl/t80se/T80.vhd(838)
  binary_mux_s1_w16 mux128 (
    .i0(n209),
    .i1(n283),
    .sel(n280),
    .o(n288));  // ../../rtl/t80se/T80.vhd(838)
  binary_mux_s1_w8 mux129 (
    .i0({n251,n272[1],n268[1],n272[0],n274,n268[0],n240[0]}),
    .i1(n284),
    .sel(n280),
    .o(n289));  // ../../rtl/t80se/T80.vhd(838)
  binary_mux_s1_w16 mux13 (
    .i0(A),
    .i1({I,R}),
    .sel(n24),
    .o(n57));  // ../../rtl/t80se/T80.vhd(485)
  binary_mux_s1_w8 mux130 (
    .i0(ACC),
    .i1(n286),
    .sel(ClkEn),
    .o(n290));  // ../../rtl/t80se/T80.vhd(839)
  binary_mux_s1_w8 mux131 (
    .i0(n290),
    .i1(DIR[7:0]),
    .sel(DIRSet),
    .o(n291));  // ../../rtl/t80se/T80.vhd(839)
  binary_mux_s1_w8 mux132 (
    .i0(F),
    .i1(n289),
    .sel(ClkEn),
    .o(n292));  // ../../rtl/t80se/T80.vhd(839)
  binary_mux_s1_w8 mux133 (
    .i0(n292),
    .i1(DIR[15:8]),
    .sel(DIRSet),
    .o(n293));  // ../../rtl/t80se/T80.vhd(839)
  binary_mux_s1_w8 mux134 (
    .i0(Ap),
    .i1(n210),
    .sel(ClkEn),
    .o(n294));  // ../../rtl/t80se/T80.vhd(839)
  binary_mux_s1_w8 mux135 (
    .i0(n294),
    .i1(DIR[23:16]),
    .sel(DIRSet),
    .o(n295));  // ../../rtl/t80se/T80.vhd(839)
  binary_mux_s1_w8 mux136 (
    .i0(Fp),
    .i1(n211),
    .sel(ClkEn),
    .o(n296));  // ../../rtl/t80se/T80.vhd(839)
  binary_mux_s1_w8 mux137 (
    .i0(n296),
    .i1(DIR[31:24]),
    .sel(DIRSet),
    .o(n297));  // ../../rtl/t80se/T80.vhd(839)
  binary_mux_s1_w8 mux138 (
    .i0(I),
    .i1(n233),
    .sel(ClkEn),
    .o(n298));  // ../../rtl/t80se/T80.vhd(839)
  binary_mux_s1_w8 mux139 (
    .i0(n298),
    .i1(DIR[39:32]),
    .sel(DIRSet),
    .o(n299));  // ../../rtl/t80se/T80.vhd(839)
  binary_mux_s1_w2 mux14 (
    .i0(Set_Addr_To[1:0]),
    .i1(2'b10),
    .sel(n350),
    .o(n351));  // ../../rtl/t80se/T80.vhd(869)
  binary_mux_s1_w8 mux140 (
    .i0(R),
    .i1(n234),
    .sel(ClkEn),
    .o(n300));  // ../../rtl/t80se/T80.vhd(839)
  binary_mux_s1_w8 mux141 (
    .i0(n300),
    .i1(DIR[47:40]),
    .sel(DIRSet),
    .o(n301));  // ../../rtl/t80se/T80.vhd(839)
  binary_mux_s1_w16 mux142 (
    .i0(SP),
    .i1(n288),
    .sel(ClkEn),
    .o(n302));  // ../../rtl/t80se/T80.vhd(839)
  binary_mux_s1_w16 mux143 (
    .i0(n302),
    .i1(DIR[63:48]),
    .sel(DIRSet),
    .o(n303));  // ../../rtl/t80se/T80.vhd(839)
  binary_mux_s1_w16 mux144 (
    .i0(PC),
    .i1(n197),
    .sel(ClkEn),
    .o(n304));  // ../../rtl/t80se/T80.vhd(839)
  binary_mux_s1_w16 mux145 (
    .i0(n304),
    .i1(DIR[79:64]),
    .sel(DIRSet),
    .o(n305));  // ../../rtl/t80se/T80.vhd(839)
  binary_mux_s1_w16 mux146 (
    .i0(A),
    .i1(n195),
    .sel(ClkEn),
    .o(n306));  // ../../rtl/t80se/T80.vhd(839)
  binary_mux_s1_w16 mux147 (
    .i0(n306),
    .i1(DIR[79:64]),
    .sel(DIRSet),
    .o(n307));  // ../../rtl/t80se/T80.vhd(839)
  binary_mux_s1_w2 mux148 (
    .i0(IStatus),
    .i1(n14),
    .sel(ClkEn),
    .o(n308));  // ../../rtl/t80se/T80.vhd(839)
  binary_mux_s1_w2 mux149 (
    .i0(n308),
    .i1(DIR[209:208]),
    .sel(DIRSet),
    .o(n309));  // ../../rtl/t80se/T80.vhd(839)
  binary_mux_s1_w2 mux15 (
    .i0(ISet),
    .i1(n56),
    .sel(n24),
    .o(n61));  // ../../rtl/t80se/T80.vhd(485)
  binary_mux_s1_w4 mux150 (
    .i0(ALU_Op_r),
    .i1(n205),
    .sel(ClkEn),
    .o(n310));  // ../../rtl/t80se/T80.vhd(839)
  binary_mux_s1_w4 mux151 (
    .i0(n310),
    .i1(ALU_Op_r),
    .sel(DIRSet),
    .o(n311));  // ../../rtl/t80se/T80.vhd(839)
  binary_mux_s1_w5 mux152 (
    .i0(Read_To_Reg_r),
    .i1(n265),
    .sel(ClkEn),
    .o(n314));  // ../../rtl/t80se/T80.vhd(839)
  binary_mux_s1_w5 mux153 (
    .i0(n314),
    .i1(Read_To_Reg_r),
    .sel(DIRSet),
    .o(n315));  // ../../rtl/t80se/T80.vhd(839)
  binary_mux_s1_w3 mux154 (
    .i0(MCycles),
    .i1(MCycles_d),
    .sel(ClkEn),
    .o(n316));  // ../../rtl/t80se/T80.vhd(839)
  binary_mux_s1_w3 mux155 (
    .i0(n316),
    .i1(MCycles),
    .sel(DIRSet),
    .o(n317));  // ../../rtl/t80se/T80.vhd(839)
  binary_mux_s1_w8 mux156 (
    .i0(IR),
    .i1(n198),
    .sel(ClkEn),
    .o(n324));  // ../../rtl/t80se/T80.vhd(839)
  binary_mux_s1_w8 mux157 (
    .i0(n324),
    .i1(IR),
    .sel(DIRSet),
    .o(n325));  // ../../rtl/t80se/T80.vhd(839)
  binary_mux_s1_w2 mux158 (
    .i0(ISet),
    .i1(n199),
    .sel(ClkEn),
    .o(n326));  // ../../rtl/t80se/T80.vhd(839)
  binary_mux_s1_w2 mux159 (
    .i0(n326),
    .i1(ISet),
    .sel(DIRSet),
    .o(n327));  // ../../rtl/t80se/T80.vhd(839)
  binary_mux_s1_w2 mux16 (
    .i0(XY_State),
    .i1(n54),
    .sel(n24),
    .o(n62));  // ../../rtl/t80se/T80.vhd(485)
  binary_mux_s1_w2 mux160 (
    .i0(XY_State),
    .i1(n200),
    .sel(ClkEn),
    .o(n328));  // ../../rtl/t80se/T80.vhd(839)
  binary_mux_s1_w2 mux161 (
    .i0(n328),
    .i1(XY_State),
    .sel(DIRSet),
    .o(n329));  // ../../rtl/t80se/T80.vhd(839)
  binary_mux_s1_w16 mux162 (
    .i0(WZ),
    .i1(n229),
    .sel(ClkEn),
    .o(n334));  // ../../rtl/t80se/T80.vhd(839)
  binary_mux_s1_w16 mux163 (
    .i0(n334),
    .i1(WZ),
    .sel(DIRSet),
    .o(n335));  // ../../rtl/t80se/T80.vhd(839)
  binary_mux_s1_w8 mux164 (
    .i0(DO),
    .i1(n287),
    .sel(ClkEn),
    .o(n342));  // ../../rtl/t80se/T80.vhd(839)
  binary_mux_s1_w8 mux165 (
    .i0(n342),
    .i1(DO),
    .sel(DIRSet),
    .o(n343));  // ../../rtl/t80se/T80.vhd(839)
  binary_mux_s1_w3 mux166 (
    .i0({Alternate,Set_BusA_To[2:1]}),
    .i1({XY_State[1],2'b11}),
    .sel(n345),
    .o(n346));  // ../../rtl/t80se/T80.vhd(856)
  binary_mux_s1_w3 mux167 (
    .i0({Alternate,Set_BusB_To[2:1]}),
    .i1({XY_State[1],2'b11}),
    .sel(n348),
    .o(n349));  // ../../rtl/t80se/T80.vhd(862)
  binary_mux_s1_w8 mux168 (
    .i0(n203[15:8]),
    .i1(DI_Reg),
    .sel(LDW),
    .o(n215));  // ../../rtl/t80se/T80.vhd(699)
  binary_mux_s1_w3 mux169 (
    .i0({Alternate,n351}),
    .i1({XY_State[1],2'b11}),
    .sel(n353),
    .o(n354));  // ../../rtl/t80se/T80.vhd(872)
  binary_mux_s1_w2 mux17 (
    .i0(ISet),
    .i1(2'b01),
    .sel(n65),
    .o(n66));  // ../../rtl/t80se/T80.vhd(494)
  binary_mux_s1_w3 mux170 (
    .i0(RegAddrA_r),
    .i1(n346),
    .sel(ClkEn),
    .o(n364));  // ../../rtl/t80se/T80.vhd(886)
  binary_mux_s1_w3 mux171 (
    .i0(RegAddrB_r),
    .i1(n349),
    .sel(ClkEn),
    .o(n365));  // ../../rtl/t80se/T80.vhd(886)
  binary_mux_s1_w3 mux172 (
    .i0(RegAddrC),
    .i1(n354),
    .sel(ClkEn),
    .o(n366));  // ../../rtl/t80se/T80.vhd(886)
  binary_mux_s1_w16 mux173 (
    .i0(RegBusA_r),
    .i1(RegBusA),
    .sel(ClkEn),
    .o(n368));  // ../../rtl/t80se/T80.vhd(886)
  binary_mux_s1_w3 mux174 (
    .i0(RegAddrA_r),
    .i1({Alternate,2'b01}),
    .sel(n375),
    .o(n376));  // ../../rtl/t80se/T80.vhd(898)
  binary_mux_s1_w3 mux175 (
    .i0(n376),
    .i1({Alternate,2'b10}),
    .sel(n374),
    .o(n377));  // ../../rtl/t80se/T80.vhd(897)
  binary_mux_s1_w3 mux176 (
    .i0(n377),
    .i1({XY_State[1],2'b11}),
    .sel(n373),
    .o(n378));  // ../../rtl/t80se/T80.vhd(895)
  binary_mux_s1_w3 mux177 (
    .i0(n378),
    .i1({Alternate,IncDec_16[1:0]}),
    .sel(n371),
    .o(RegAddrA));  // ../../rtl/t80se/T80.vhd(900)
  binary_mux_s1_w3 mux178 (
    .i0(RegAddrB_r),
    .i1({Alternate,2'b01}),
    .sel(n374),
    .o(RegAddrB));  // ../../rtl/t80se/T80.vhd(906)
  binary_mux_s1_w16 mux179 (
    .i0(n379),
    .i1(n380[15:0]),
    .sel(IncDec_16[3]),
    .o(ID16));  // ../../rtl/t80se/T80.vhd(909)
  binary_mux_s1_w2 mux18 (
    .i0(ISet),
    .i1(n66),
    .sel(n64),
    .o(n68));  // ../../rtl/t80se/T80.vhd(495)
  binary_mux_s4_w1 mux180 (
    .i0(1'b0),
    .i1(1'b0),
    .i10(n381),
    .i11(1'b0),
    .i12(1'b0),
    .i13(1'b0),
    .i14(1'b0),
    .i15(1'b0),
    .i2(1'b0),
    .i3(1'b0),
    .i4(1'b0),
    .i5(1'b0),
    .i6(1'b0),
    .i7(1'b0),
    .i8(n381),
    .i9(n381),
    .sel(Read_To_Reg_r[4:1]),
    .o(n382));  // ../../rtl/t80se/T80.vhd(923)
  binary_mux_s4_w1 mux181 (
    .i0(1'b0),
    .i1(1'b0),
    .i10(Read_To_Reg_r[0]),
    .i11(1'b0),
    .i12(1'b0),
    .i13(1'b0),
    .i14(1'b0),
    .i15(1'b0),
    .i2(1'b0),
    .i3(1'b0),
    .i4(1'b0),
    .i5(1'b0),
    .i6(1'b0),
    .i7(1'b0),
    .i8(Read_To_Reg_r[0]),
    .i9(Read_To_Reg_r[0]),
    .sel(Read_To_Reg_r[4:1]),
    .o(n383));  // ../../rtl/t80se/T80.vhd(923)
  binary_mux_s2_w1 mux182 (
    .i0(1'b1),
    .i1(1'b1),
    .i2(1'b1),
    .i3(n388),
    .sel(IncDec_16[1:0]),
    .o(n394));  // ../../rtl/t80se/T80.vhd(937)
  binary_mux_s2_w1 mux183 (
    .i0(1'b1),
    .i1(1'b1),
    .i2(1'b1),
    .i3(n389),
    .sel(IncDec_16[1:0]),
    .o(n395));  // ../../rtl/t80se/T80.vhd(937)
  binary_mux_s1_w8 mux184 (
    .i0(Save_Mux),
    .i1(RegBusB[15:8]),
    .sel(n374),
    .o(n396));  // ../../rtl/t80se/T80.vhd(950)
  binary_mux_s1_w8 mux185 (
    .i0(Save_Mux),
    .i1(RegBusB[7:0]),
    .sel(n374),
    .o(n397));  // ../../rtl/t80se/T80.vhd(950)
  binary_mux_s1_w8 mux186 (
    .i0(n396),
    .i1(RegBusA_r[15:8]),
    .sel(n375),
    .o(n398));  // ../../rtl/t80se/T80.vhd(954)
  binary_mux_s1_w8 mux187 (
    .i0(n397),
    .i1(RegBusA_r[7:0]),
    .sel(n375),
    .o(n399));  // ../../rtl/t80se/T80.vhd(954)
  binary_mux_s1_w8 mux188 (
    .i0(n398),
    .i1(ID16[15:8]),
    .sel(n402),
    .o(RegDIH));  // ../../rtl/t80se/T80.vhd(959)
  binary_mux_s1_w8 mux189 (
    .i0(n399),
    .i1(ID16[7:0]),
    .sel(n402),
    .o(RegDIL));  // ../../rtl/t80se/T80.vhd(959)
  binary_mux_s1_w16 mux19 (
    .i0(WZ),
    .i1(PC),
    .sel(NextIs_XY_Fetch),
    .o(n79));  // ../../rtl/t80se/T80.vhd(528)
  binary_mux_s1_w8 mux190 (
    .i0(RegBusB[15:8]),
    .i1(RegBusB[7:0]),
    .sel(Set_BusB_To[0]),
    .o(n403));  // ../../rtl/t80se/T80.vhd(1000)
  binary_mux_s4_w8 mux191 (
    .i0(n403),
    .i1(n403),
    .i10(8'b00000001),
    .i11(F),
    .i12(PC[7:0]),
    .i13(PC[15:8]),
    .i14({n405,n405,n405,n405,n405,n405,n405,n405}),
    .i15(8'bxxxxxxxx),
    .i2(n403),
    .i3(n403),
    .i4(n403),
    .i5(n403),
    .i6(DI_Reg),
    .i7(ACC),
    .i8(SP[7:0]),
    .i9(SP[15:8]),
    .sel(Set_BusB_To),
    .o(n406));  // ../../rtl/t80se/T80.vhd(1023)
  binary_mux_s1_w8 mux192 (
    .i0(RegBusA[15:8]),
    .i1(RegBusA[7:0]),
    .sel(Set_BusA_To[0]),
    .o(n407));  // ../../rtl/t80se/T80.vhd(1033)
  binary_mux_s4_w8 mux193 (
    .i0(n407),
    .i1(n407),
    .i10(8'b00000000),
    .i11(8'bxxxxxxxx),
    .i12(8'bxxxxxxxx),
    .i13(8'bxxxxxxxx),
    .i14(8'bxxxxxxxx),
    .i15(8'bxxxxxxxx),
    .i2(n407),
    .i3(n407),
    .i4(n407),
    .i5(n407),
    .i6(DI_Reg),
    .i7(ACC),
    .i8(SP[7:0]),
    .i9(SP[15:8]),
    .sel(Set_BusA_To),
    .o(n408));  // ../../rtl/t80se/T80.vhd(1044)
  binary_mux_s1_w8 mux194 (
    .i0(n408),
    .i1(DI_Reg),
    .sel(XYbit_undoc),
    .o(n409));  // ../../rtl/t80se/T80.vhd(1048)
  binary_mux_s1_w8 mux195 (
    .i0(n406),
    .i1(DI_Reg),
    .sel(XYbit_undoc),
    .o(n410));  // ../../rtl/t80se/T80.vhd(1048)
  binary_mux_s1_w8 mux196 (
    .i0(BusB),
    .i1(n410),
    .sel(ClkEn),
    .o(n411));  // ../../rtl/t80se/T80.vhd(1049)
  binary_mux_s1_w8 mux197 (
    .i0(BusA),
    .i1(n409),
    .sel(ClkEn),
    .o(n412));  // ../../rtl/t80se/T80.vhd(1049)
  binary_mux_s1_w3 mux198 (
    .i0(MCycle),
    .i1(3'b010),
    .sel(n6),
    .o(n454));  // ../../rtl/t80se/T80.vhd(1168)
  binary_mux_s1_w3 mux199 (
    .i0(n475),
    .i1(3'b001),
    .sel(n461),
    .o(n476));  // ../../rtl/t80se/T80.vhd(1187)
  binary_mux_s1_w8 mux2 (
    .i0(DI_Reg),
    .i1(ALU_Q),
    .sel(Save_ALU_r),
    .o(n11));  // ../../rtl/t80se/T80.vhd(373)
  binary_mux_s1_w16 mux20 (
    .i0(n79),
    .i1(RegBusC),
    .sel(n78),
    .o(n80));  // ../../rtl/t80se/T80.vhd(529)
  binary_mux_s1_w3 mux200 (
    .i0(n476),
    .i1(n456),
    .sel(n455),
    .o(n477));  // ../../rtl/t80se/T80.vhd(1187)
  binary_mux_s1_w3 mux201 (
    .i0(n477),
    .i1(3'b110),
    .sel(NextIs_XY_Fetch),
    .o(n478));  // ../../rtl/t80se/T80.vhd(1187)
  binary_mux_s1_w3 mux202 (
    .i0(Pre_XY_F_M),
    .i1(n454),
    .sel(NextIs_XY_Fetch),
    .o(n479));  // ../../rtl/t80se/T80.vhd(1187)
  binary_mux_s1_w3 mux203 (
    .i0(3'b001),
    .i1(TState),
    .sel(BusReq_s),
    .o(n498));  // ../../rtl/t80se/T80.vhd(1188)
  binary_mux_s1_w3 mux204 (
    .i0(n478),
    .i1(MCycle),
    .sel(BusReq_s),
    .o(n499));  // ../../rtl/t80se/T80.vhd(1188)
  binary_mux_s1_w3 mux205 (
    .i0(n479),
    .i1(Pre_XY_F_M),
    .sel(BusReq_s),
    .o(n500));  // ../../rtl/t80se/T80.vhd(1188)
  binary_mux_s1_w3 mux206 (
    .i0(TState),
    .i1(n511),
    .sel(n510),
    .o(n512));  // ../../rtl/t80se/T80.vhd(1193)
  binary_mux_s1_w3 mux207 (
    .i0(n512),
    .i1(n498),
    .sel(T_Res),
    .o(n517));  // ../../rtl/t80se/T80.vhd(1194)
  binary_mux_s1_w3 mux208 (
    .i0(n517),
    .i1(TState),
    .sel(n452),
    .o(n518));  // ../../rtl/t80se/T80.vhd(1194)
  binary_mux_s1_w3 mux209 (
    .i0(MCycle),
    .i1(n499),
    .sel(T_Res),
    .o(n519));  // ../../rtl/t80se/T80.vhd(1194)
  binary_mux_s1_w16 mux21 (
    .i0(WZ),
    .i1(n83),
    .sel(n82),
    .o(n84));  // ../../rtl/t80se/T80.vhd(553)
  binary_mux_s1_w3 mux210 (
    .i0(n519),
    .i1(MCycle),
    .sel(n452),
    .o(n520));  // ../../rtl/t80se/T80.vhd(1194)
  binary_mux_s1_w3 mux211 (
    .i0(Pre_XY_F_M),
    .i1(n500),
    .sel(T_Res),
    .o(n521));  // ../../rtl/t80se/T80.vhd(1194)
  binary_mux_s1_w3 mux212 (
    .i0(n521),
    .i1(Pre_XY_F_M),
    .sel(n452),
    .o(n522));  // ../../rtl/t80se/T80.vhd(1194)
  binary_mux_s1_w3 mux213 (
    .i0(n518),
    .i1(TState),
    .sel(n450),
    .o(n537));  // ../../rtl/t80se/T80.vhd(1195)
  binary_mux_s1_w3 mux214 (
    .i0(n520),
    .i1(MCycle),
    .sel(n450),
    .o(n538));  // ../../rtl/t80se/T80.vhd(1195)
  binary_mux_s1_w3 mux215 (
    .i0(n522),
    .i1(Pre_XY_F_M),
    .sel(n450),
    .o(n539));  // ../../rtl/t80se/T80.vhd(1195)
  binary_mux_s1_w3 mux216 (
    .i0(TState),
    .i1(n537),
    .sel(CEN),
    .o(n557));  // ../../rtl/t80se/T80.vhd(1199)
  binary_mux_s1_w3 mux217 (
    .i0(MCycle),
    .i1(n538),
    .sel(CEN),
    .o(n558));  // ../../rtl/t80se/T80.vhd(1199)
  binary_mux_s1_w3 mux218 (
    .i0(Pre_XY_F_M),
    .i1(n539),
    .sel(CEN),
    .o(n559));  // ../../rtl/t80se/T80.vhd(1199)
  binary_mux_s1_w3 mux219 (
    .i0(n557),
    .i1(TState),
    .sel(DIRSet),
    .o(n574));  // ../../rtl/t80se/T80.vhd(1200)
  binary_mux_s1_w16 mux22 (
    .i0({IR,IR}),
    .i1({n160,n44}),
    .sel(n24),
    .o({n168,n60}));  // ../../rtl/t80se/T80.vhd(658)
  binary_mux_s1_w3 mux220 (
    .i0(n558),
    .i1(MCycle),
    .sel(DIRSet),
    .o(n575));  // ../../rtl/t80se/T80.vhd(1200)
  binary_mux_s1_w3 mux221 (
    .i0(n559),
    .i1(Pre_XY_F_M),
    .sel(DIRSet),
    .o(n576));  // ../../rtl/t80se/T80.vhd(1200)
  binary_mux_s1_w16 mux23 (
    .i0(WZ),
    .i1({ACC,n90}),
    .sel(n85),
    .o(n91));  // ../../rtl/t80se/T80.vhd(574)
  binary_mux_s1_w16 mux24 (
    .i0({DI_Reg,WZ[7:0]}),
    .i1(n89),
    .sel(Inc_WZ),
    .o(n92));  // ../../rtl/t80se/T80.vhd(575)
  binary_mux_s1_w16 mux25 (
    .i0(n91),
    .i1(WZ),
    .sel(Inc_WZ),
    .o(n93));  // ../../rtl/t80se/T80.vhd(575)
  binary_mux_s3_w16 mux26 (
    .i0(RegBusC),
    .i1(RegBusC),
    .i2(n80),
    .i3(PC),
    .i4({ACC,DI_Reg}),
    .i5(SP),
    .i6(n92),
    .i7(PC),
    .sel(Set_Addr_To),
    .o(n94));  // ../../rtl/t80se/T80.vhd(578)
  binary_mux_s3_w16 mux27 (
    .i0(n87),
    .i1(n88),
    .i2(WZ),
    .i3(WZ),
    .i4(n81),
    .i5(WZ),
    .i6(n93),
    .i7(WZ),
    .sel(Set_Addr_To),
    .o(n95));  // ../../rtl/t80se/T80.vhd(578)
  binary_mux_s1_w16 mux28 (
    .i0(n94),
    .i1({I,WZ[7:0]}),
    .sel(n77),
    .o(n96));  // ../../rtl/t80se/T80.vhd(579)
  binary_mux_s1_w16 mux29 (
    .i0(n96),
    .i1(16'b0000000001100110),
    .sel(n75),
    .o(n97));  // ../../rtl/t80se/T80.vhd(579)
  binary_mux_s1_w8 mux3 (
    .i0(n11),
    .i1(BusB),
    .sel(ExchangeRp),
    .o(Save_Mux));  // ../../rtl/t80se/T80.vhd(374)
  binary_mux_s1_w16 mux30 (
    .i0(n97),
    .i1(WZ),
    .sel(n73),
    .o(n98));  // ../../rtl/t80se/T80.vhd(579)
  binary_mux_s1_w16 mux31 (
    .i0(n98),
    .i1(RegBusC),
    .sel(JumpXY),
    .o(n99));  // ../../rtl/t80se/T80.vhd(579)
  binary_mux_s1_w16 mux32 (
    .i0(n99),
    .i1({DI_Reg,WZ[7:0]}),
    .sel(Jump),
    .o(n100));  // ../../rtl/t80se/T80.vhd(579)
  binary_mux_s1_w16 mux33 (
    .i0(PC),
    .i1({I,WZ[7:0]}),
    .sel(n77),
    .o(n101));  // ../../rtl/t80se/T80.vhd(579)
  binary_mux_s1_w16 mux34 (
    .i0(n101),
    .i1(16'b0000000001100110),
    .sel(n75),
    .o(n102));  // ../../rtl/t80se/T80.vhd(579)
  binary_mux_s1_w16 mux35 (
    .i0(n102),
    .i1(WZ),
    .sel(n73),
    .o(n103));  // ../../rtl/t80se/T80.vhd(579)
  binary_mux_s1_w16 mux36 (
    .i0(n103),
    .i1(RegBusC),
    .sel(JumpXY),
    .o(n104));  // ../../rtl/t80se/T80.vhd(579)
  binary_mux_s1_w16 mux37 (
    .i0(n104),
    .i1({DI_Reg,WZ[7:0]}),
    .sel(Jump),
    .o(n105));  // ../../rtl/t80se/T80.vhd(579)
  binary_mux_s1_w16 mux38 (
    .i0(n95),
    .i1(WZ),
    .sel(n77),
    .o(n106));  // ../../rtl/t80se/T80.vhd(579)
  binary_mux_s1_w16 mux39 (
    .i0(n106),
    .i1(WZ),
    .sel(n75),
    .o(n107));  // ../../rtl/t80se/T80.vhd(579)
  binary_mux_s1_w2 mux4 (
    .i0(IStatus),
    .i1(IMode),
    .sel(n13),
    .o(n14));  // ../../rtl/t80se/T80.vhd(434)
  binary_mux_s1_w16 mux40 (
    .i0(n107),
    .i1(WZ),
    .sel(n73),
    .o(n108));  // ../../rtl/t80se/T80.vhd(579)
  binary_mux_s1_w16 mux41 (
    .i0(n108),
    .i1(WZ),
    .sel(JumpXY),
    .o(n109));  // ../../rtl/t80se/T80.vhd(579)
  binary_mux_s1_w16 mux42 (
    .i0(n109),
    .i1(WZ),
    .sel(Jump),
    .o(n110));  // ../../rtl/t80se/T80.vhd(579)
  binary_mux_s1_w16 mux43 (
    .i0(n110),
    .i1(ID16),
    .sel(n111),
    .o(n112));  // ../../rtl/t80se/T80.vhd(583)
  binary_mux_s1_w8 mux44 (
    .i0(ACC),
    .i1(n113),
    .sel(I_CPL),
    .o(n115));  // ../../rtl/t80se/T80.vhd(597)
  binary_mux_s1_w7 mux45 (
    .i0(n207[7:1]),
    .i1({n219[3:1],n220[2],n219[0],n220[1:0]}),
    .sel(Special_LD[2]),
    .o(n225));  // ../../rtl/t80se/T80.vhd(743)
  binary_mux_s1_w2 mux46 (
    .i0(n120),
    .i1({ACC[5],ACC[3]}),
    .sel(FChanged),
    .o(n124));  // ../../rtl/t80se/T80.vhd(626)
  binary_mux_s1_w2 mux47 (
    .i0({F[5],F[3]}),
    .i1(n114),
    .sel(I_CPL),
    .o(n116));  // ../../rtl/t80se/T80.vhd(597)
  binary_mux_s1_w2 mux48 (
    .i0({F[4],F[1]}),
    .i1(2'b11),
    .sel(I_CPL),
    .o(n117));  // ../../rtl/t80se/T80.vhd(597)
  binary_mux_s1_w4 mux49 (
    .i0({n136[2],F[2],n136[1:0]}),
    .i1({n145,n155,DI_Reg[7],n145}),
    .sel(n144),
    .o(n156));  // ../../rtl/t80se/T80.vhd(639)
  binary_mux_s1_w16 mux5 (
    .i0(PC),
    .i1(n35),
    .sel(n34),
    .o(n36));  // ../../rtl/t80se/T80.vhd(456)
  binary_mux_s1_w2 mux50 (
    .i0(n116),
    .i1(n124),
    .sel(I_CCF),
    .o(n121));  // ../../rtl/t80se/T80.vhd(613)
  binary_mux_s1_w3 mux51 (
    .i0({n117,F[0]}),
    .i1({F[0],1'b0,n119}),
    .sel(I_CCF),
    .o(n122));  // ../../rtl/t80se/T80.vhd(613)
  binary_mux_s1_w16 mux52 (
    .i0(A),
    .i1(n100),
    .sel(T_Res),
    .o(n129));  // ../../rtl/t80se/T80.vhd(629)
  binary_mux_s1_w16 mux53 (
    .i0(PC),
    .i1(n105),
    .sel(T_Res),
    .o(n130));  // ../../rtl/t80se/T80.vhd(629)
  binary_mux_s1_w16 mux54 (
    .i0(WZ),
    .i1(n112),
    .sel(T_Res),
    .o(n131));  // ../../rtl/t80se/T80.vhd(629)
  binary_mux_s1_w4 mux55 (
    .i0(4'b0000),
    .i1(ALU_Op),
    .sel(T_Res),
    .o(n133));  // ../../rtl/t80se/T80.vhd(629)
  binary_mux_s1_w8 mux56 (
    .i0(ACC),
    .i1(n115),
    .sel(T_Res),
    .o(n134));  // ../../rtl/t80se/T80.vhd(629)
  binary_mux_s1_w2 mux57 (
    .i0(n121),
    .i1(n124),
    .sel(I_SCF),
    .o(n125));  // ../../rtl/t80se/T80.vhd(628)
  binary_mux_s1_w3 mux58 (
    .i0(n122),
    .i1(3'b001),
    .sel(I_SCF),
    .o(n126));  // ../../rtl/t80se/T80.vhd(628)
  binary_mux_s1_w32 mux59 (
    .i0({n130,PC}),
    .i1({n166,n36}),
    .sel(n24),
    .o({n169,n59}));  // ../../rtl/t80se/T80.vhd(658)
  binary_mux_s1_w8 mux6 (
    .i0(DInst),
    .i1(8'b00000000),
    .sel(n42),
    .o(n43));  // ../../rtl/t80se/T80.vhd(464)
  binary_mux_s1_w3 mux60 (
    .i0({F[4],F[1:0]}),
    .i1(n126),
    .sel(T_Res),
    .o(n136));  // ../../rtl/t80se/T80.vhd(629)
  binary_mux_s1_w8 mux61 (
    .i0(IR),
    .i1(DInst),
    .sel(n159),
    .o(n160));  // ../../rtl/t80se/T80.vhd(644)
  binary_mux_s1_w16 mux62 (
    .i0(n130),
    .i1(n35),
    .sel(Inc_PC),
    .o(n162));  // ../../rtl/t80se/T80.vhd(650)
  binary_mux_s1_w16 mux63 (
    .i0(n162),
    .i1(n161),
    .sel(JumpE),
    .o(n163));  // ../../rtl/t80se/T80.vhd(650)
  binary_mux_s1_w16 mux64 (
    .i0(n131),
    .i1(n161),
    .sel(JumpE),
    .o(n164));  // ../../rtl/t80se/T80.vhd(650)
  binary_mux_s1_w16 mux65 (
    .i0(n163),
    .i1(n165[15:0]),
    .sel(BTR_r),
    .o(n166));  // ../../rtl/t80se/T80.vhd(653)
  binary_mux_s1_w16 mux66 (
    .i0(n164),
    .i1({10'b0000000000,IR[5:3],3'b000}),
    .sel(RstP),
    .o(n167));  // ../../rtl/t80se/T80.vhd(657)
  binary_mux_s1_w32 mux67 (
    .i0({WZ,n84}),
    .i1({ACC,n86,ACC,n86}),
    .sel(n85),
    .o({n88,n87}));  // ../../rtl/t80se/T80.vhd(564)
  binary_mux_s1_w16 mux68 (
    .i0(n131),
    .i1(n167),
    .sel(n24),
    .o(n170));  // ../../rtl/t80se/T80.vhd(658)
  binary_mux_s1_w16 mux69 (
    .i0(n170),
    .i1(n172),
    .sel(n171),
    .o(n173));  // ../../rtl/t80se/T80.vhd(661)
  binary_mux_s1_w8 mux7 (
    .i0(n43),
    .i1(8'b11111111),
    .sel(n38),
    .o(n44));  // ../../rtl/t80se/T80.vhd(464)
  binary_mux_s1_w16 mux70 (
    .i0(n173),
    .i1(n177[15:0]),
    .sel(n69),
    .o(n178));  // ../../rtl/t80se/T80.vhd(666)
  binary_mux_s1_w16 mux71 (
    .i0(n173),
    .i1(n178),
    .sel(n176),
    .o(n179));  // ../../rtl/t80se/T80.vhd(667)
  binary_mux_s1_w16 mux72 (
    .i0(n184),
    .i1(n183[15:0]),
    .sel(IncDec_16[3]),
    .o(n185));  // ../../rtl/t80se/T80.vhd(675)
  binary_mux_s1_w16 mux73 (
    .i0(SP),
    .i1(n185),
    .sel(n182),
    .o(n186));  // ../../rtl/t80se/T80.vhd(676)
  binary_mux_s1_w16 mux74 (
    .i0(SP),
    .i1(n186),
    .sel(n181),
    .o(n187));  // ../../rtl/t80se/T80.vhd(677)
  binary_mux_s1_w16 mux75 (
    .i0(n187),
    .i1(RegBusC),
    .sel(LDSPHL),
    .o(n188));  // ../../rtl/t80se/T80.vhd(681)
  binary_mux_s1_w8 mux76 (
    .i0(Ap),
    .i1(ACC),
    .sel(ExchangeAF),
    .o(n189));  // ../../rtl/t80se/T80.vhd(687)
  binary_mux_s1_w8 mux77 (
    .i0(n134),
    .i1(Ap),
    .sel(ExchangeAF),
    .o(n190));  // ../../rtl/t80se/T80.vhd(687)
  binary_mux_s1_w8 mux78 (
    .i0(Fp),
    .i1(F),
    .sel(ExchangeAF),
    .o(n191));  // ../../rtl/t80se/T80.vhd(687)
  binary_mux_s1_w8 mux79 (
    .i0({F[7:6],n135[1],n156[3],n135[0],n156[2:0]}),
    .i1(Fp),
    .sel(ExchangeAF),
    .o(n192));  // ../../rtl/t80se/T80.vhd(687)
  binary_mux_s1_w2 mux8 (
    .i0(XY_State),
    .i1(2'b00),
    .sel(n48),
    .o(n49));  // ../../rtl/t80se/T80.vhd(478)
  binary_mux_s1_w16 mux80 (
    .i0(n129),
    .i1(n57),
    .sel(n22),
    .o(n195));  // ../../rtl/t80se/T80.vhd(691)
  binary_mux_s1_w7 mux81 (
    .i0(R[6:0]),
    .i1(n25),
    .sel(n24),
    .o(n58));  // ../../rtl/t80se/T80.vhd(485)
  binary_mux_s1_w16 mux82 (
    .i0(n169),
    .i1(n59),
    .sel(n22),
    .o(n197));  // ../../rtl/t80se/T80.vhd(691)
  binary_mux_s1_w8 mux83 (
    .i0(n168),
    .i1(n60),
    .sel(n22),
    .o(n198));  // ../../rtl/t80se/T80.vhd(691)
  binary_mux_s1_w2 mux84 (
    .i0(n68),
    .i1(n61),
    .sel(n22),
    .o(n199));  // ../../rtl/t80se/T80.vhd(691)
  binary_mux_s1_w2 mux85 (
    .i0(XY_State),
    .i1(n62),
    .sel(n22),
    .o(n200));  // ../../rtl/t80se/T80.vhd(691)
  binary_mux_s1_w16 mux86 (
    .i0(n179),
    .i1(WZ),
    .sel(n22),
    .o(n203));  // ../../rtl/t80se/T80.vhd(691)
  binary_mux_s1_w4 mux87 (
    .i0(n133),
    .i1(4'b0000),
    .sel(n22),
    .o(n205));  // ../../rtl/t80se/T80.vhd(691)
  binary_mux_s1_w8 mux88 (
    .i0(n190),
    .i1(ACC),
    .sel(n22),
    .o(n206));  // ../../rtl/t80se/T80.vhd(691)
  binary_mux_s1_w8 mux89 (
    .i0(n192),
    .i1(F),
    .sel(n22),
    .o(n207));  // ../../rtl/t80se/T80.vhd(691)
  binary_mux_s1_w2 mux9 (
    .i0(n49),
    .i1({IR[5],n47[0]}),
    .sel(n46),
    .o(n51));  // ../../rtl/t80se/T80.vhd(480)
  binary_mux_s1_w16 mux90 (
    .i0(n188),
    .i1(SP),
    .sel(n22),
    .o(n209));  // ../../rtl/t80se/T80.vhd(691)
  binary_mux_s1_w8 mux91 (
    .i0(n189),
    .i1(Ap),
    .sel(n22),
    .o(n210));  // ../../rtl/t80se/T80.vhd(691)
  binary_mux_s1_w8 mux92 (
    .i0(n191),
    .i1(Fp),
    .sel(n22),
    .o(n211));  // ../../rtl/t80se/T80.vhd(691)
  binary_mux_s1_w8 mux93 (
    .i0(n203[7:0]),
    .i1(DI_Reg),
    .sel(LDZ),
    .o(n214));  // ../../rtl/t80se/T80.vhd(696)
  binary_mux_s2_w8 mux94 (
    .i0(I),
    .i1(R),
    .i2(n206),
    .i3(n206),
    .sel(Special_LD[1:0]),
    .o(n218));  // ../../rtl/t80se/T80.vhd(742)
  binary_mux_s1_w3 mux95 (
    .i0({1'b0,IntE_FF2,1'b0}),
    .i1({n207[4],n207[2:1]}),
    .sel(Special_LD[1]),
    .o(n220));  // ../../rtl/t80se/T80.vhd(742)
  binary_mux_s1_w2 mux96 (
    .i0(n267),
    .i1({n271[1],n271[3]}),
    .sel(n270),
    .o(n272));  // ../../rtl/t80se/T80.vhd(815)
  binary_mux_s2_w8 mux97 (
    .i0(I),
    .i1(I),
    .i2(ACC),
    .i3(I),
    .sel(Special_LD[1:0]),
    .o(n222));  // ../../rtl/t80se/T80.vhd(742)
  binary_mux_s2_w8 mux98 (
    .i0({R[7],n196}),
    .i1({R[7],n196}),
    .i2({R[7],n196}),
    .i3(ACC),
    .sel(Special_LD[1:0]),
    .o(n223));  // ../../rtl/t80se/T80.vhd(742)
  binary_mux_s1_w8 mux99 (
    .i0(n206),
    .i1(n218),
    .sel(Special_LD[2]),
    .o(n224));  // ../../rtl/t80se/T80.vhd(743)
  ne_w2 neq0 (
    .i0(XY_State),
    .i1(2'b00),
    .o(n0));
  ne_w2 neq1 (
    .i0(IMode),
    .i1(2'b11),
    .o(n13));
  ne_w2 neq2 (
    .i0(Prefix),
    .i1(2'b00),
    .o(n45));
  ne_w4 neq3 (
    .i0(ALU_Op_r),
    .i1(4'b0111),
    .o(n278));
  ne_w3 neq4 (
    .i0(MCycle),
    .i1(3'b001),
    .o(n390));
  reg_ar_as_w16 reg0 (
    .clk(CLK_n),
    .d(n307),
    .reset({n12,n12,n12,n12,n12,n12,n12,n12,n12,n12,n12,n12,n12,n12,n12,n12}),
    .set(16'b0000000000000000),
    .q(A));  // ../../rtl/t80se/T80.vhd(840)
  reg_ar_as_w16 reg1 (
    .clk(CLK_n),
    .d(n335),
    .reset({n12,n12,n12,n12,n12,n12,n12,n12,n12,n12,n12,n12,n12,n12,n12,n12}),
    .set(16'b0000000000000000),
    .q(WZ));  // ../../rtl/t80se/T80.vhd(840)
  reg_ar_as_w8 reg10 (
    .clk(CLK_n),
    .d(n297),
    .reset(8'b00000000),
    .set({n12,n12,n12,n12,n12,n12,n12,n12}),
    .q(Fp));  // ../../rtl/t80se/T80.vhd(840)
  reg_ar_as_w8 reg11 (
    .clk(CLK_n),
    .d(n299),
    .reset({n12,n12,n12,n12,n12,n12,n12,n12}),
    .set(8'b00000000),
    .q(I));  // ../../rtl/t80se/T80.vhd(840)
  reg_ar_as_w8 reg12 (
    .clk(CLK_n),
    .d(n301),
    .reset({n12,n12,n12,n12,n12,n12,n12,n12}),
    .set(8'b00000000),
    .q(R));  // ../../rtl/t80se/T80.vhd(840)
  reg_ar_as_w16 reg13 (
    .clk(CLK_n),
    .d(n303),
    .reset(16'b0000000000000000),
    .set({n12,n12,n12,n12,n12,n12,n12,n12,n12,n12,n12,n12,n12,n12,n12,n12}),
    .q(SP));  // ../../rtl/t80se/T80.vhd(840)
  reg_ar_as_w5 reg14 (
    .clk(CLK_n),
    .d(n315),
    .reset({n12,n12,n12,n12,n12}),
    .set(5'b00000),
    .q(Read_To_Reg_r));  // ../../rtl/t80se/T80.vhd(840)
  reg_ar_as_w4 reg15 (
    .clk(CLK_n),
    .d(n311),
    .reset({n12,n12,n12,n12}),
    .set(4'b0000),
    .q(ALU_Op_r));  // ../../rtl/t80se/T80.vhd(840)
  reg_ar_as_w3 reg16 (
    .clk(CLK_n),
    .d(n364),
    .reset(3'b000),
    .set(3'b000),
    .q(RegAddrA_r));  // ../../rtl/t80se/T80.vhd(887)
  reg_ar_as_w3 reg17 (
    .clk(CLK_n),
    .d(n365),
    .reset(3'b000),
    .set(3'b000),
    .q(RegAddrB_r));  // ../../rtl/t80se/T80.vhd(887)
  reg_ar_as_w3 reg18 (
    .clk(CLK_n),
    .d(n366),
    .reset(3'b000),
    .set(3'b000),
    .q(RegAddrC));  // ../../rtl/t80se/T80.vhd(887)
  reg_ar_as_w16 reg19 (
    .clk(CLK_n),
    .d(n368),
    .reset(16'b0000000000000000),
    .set(16'b0000000000000000),
    .q(RegBusA_r));  // ../../rtl/t80se/T80.vhd(887)
  reg_ar_as_w8 reg2 (
    .clk(CLK_n),
    .d(n325),
    .reset({n12,n12,n12,n12,n12,n12,n12,n12}),
    .set(8'b00000000),
    .q(IR));  // ../../rtl/t80se/T80.vhd(840)
  reg_ar_as_w8 reg20 (
    .clk(CLK_n),
    .d(n411),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(BusB));  // ../../rtl/t80se/T80.vhd(1050)
  reg_ar_as_w8 reg21 (
    .clk(CLK_n),
    .d(n412),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(BusA));  // ../../rtl/t80se/T80.vhd(1050)
  reg_ar_as_w3 reg22 (
    .clk(CLK_n),
    .d(n575),
    .reset({n12,n12,1'b0}),
    .set({2'b00,n12}),
    .q(MCycle));  // ../../rtl/t80se/T80.vhd(1201)
  reg_ar_as_w3 reg23 (
    .clk(CLK_n),
    .d(n574),
    .reset({n12,n12,n12}),
    .set(3'b000),
    .q(TState));  // ../../rtl/t80se/T80.vhd(1201)
  reg_ar_as_w3 reg24 (
    .clk(CLK_n),
    .d(n576),
    .reset({n12,n12,n12}),
    .set(3'b000),
    .q(Pre_XY_F_M));  // ../../rtl/t80se/T80.vhd(1201)
  reg_ar_as_w16 reg25 (
    .clk(CLK_n),
    .d(n305),
    .reset({n12,n12,n12,n12,n12,n12,n12,n12,n12,n12,n12,n12,n12,n12,n12,n12}),
    .set(16'b0000000000000000),
    .q(PC));  // ../../rtl/t80se/T80.vhd(840)
  reg_ar_as_w8 reg26 (
    .clk(CLK_n),
    .d(n291),
    .reset(8'b00000000),
    .set({n12,n12,n12,n12,n12,n12,n12,n12}),
    .q(ACC));  // ../../rtl/t80se/T80.vhd(840)
  reg_ar_as_w2 reg3 (
    .clk(CLK_n),
    .d(n327),
    .reset({n12,n12}),
    .set(2'b00),
    .q(ISet));  // ../../rtl/t80se/T80.vhd(840)
  reg_ar_as_w2 reg4 (
    .clk(CLK_n),
    .d(n329),
    .reset({n12,n12}),
    .set(2'b00),
    .q(XY_State));  // ../../rtl/t80se/T80.vhd(840)
  reg_ar_as_w2 reg5 (
    .clk(CLK_n),
    .d(n309),
    .reset({n12,n12}),
    .set(2'b00),
    .q(IStatus));  // ../../rtl/t80se/T80.vhd(840)
  reg_ar_as_w3 reg6 (
    .clk(CLK_n),
    .d(n317),
    .reset({n12,n12,n12}),
    .set(3'b000),
    .q(MCycles));  // ../../rtl/t80se/T80.vhd(840)
  reg_ar_as_w8 reg7 (
    .clk(CLK_n),
    .d(n343),
    .reset({n12,n12,n12,n12,n12,n12,n12,n12}),
    .set(8'b00000000),
    .q(DO));  // ../../rtl/t80se/T80.vhd(840)
  reg_ar_as_w8 reg8 (
    .clk(CLK_n),
    .d(n293),
    .reset(8'b00000000),
    .set({n12,n12,n12,n12,n12,n12,n12,n12}),
    .q(F));  // ../../rtl/t80se/T80.vhd(840)
  reg_ar_as_w8 reg9 (
    .clk(CLK_n),
    .d(n295),
    .reset(8'b00000000),
    .set({n12,n12,n12,n12,n12,n12,n12,n12}),
    .q(Ap));  // ../../rtl/t80se/T80.vhd(840)
  add_pu17_mu17_o17 sub0 (
    .i0({1'b0,PC}),
    .i1(17'b00000000000000010),
    .o({open_n33,n165[15:0]}));
  add_pu17_mu17_o17 sub1 (
    .i0({1'b0,PC}),
    .i1(17'b00000000000000001),
    .o({open_n34,n177[15:0]}));
  add_pu17_mu17_o17 sub2 (
    .i0({1'b0,SP}),
    .i1(17'b00000000000000001),
    .o({open_n35,n183[15:0]}));
  add_pu9_mu9_o9 sub3 (
    .i0({1'b0,ALU_Q}),
    .i1({8'b00000000,F_Out[4]}),
    .o({open_n36,open_n37,open_n38,open_n39,open_n40,n271[3],open_n41,n271[1],open_n42}));
  add_pu17_mu17_o17 sub4 (
    .i0({RegBusA[15],RegBusA}),
    .i1(17'b00000000000000001),
    .o({open_n43,n380[15:0]}));
  and u10 (n7, n3, n6);  // ../../rtl/t80se/T80.vhd(370)
  buf u100 (REG[141], DOR[61]);  // ../../rtl/t80se/T80.vhd(265)
  and u101 (n171, n213, n64);  // ../../rtl/t80se/T80.vhd(659)
  buf u102 (REG[140], DOR[60]);  // ../../rtl/t80se/T80.vhd(265)
  buf u103 (REG[139], DOR[59]);  // ../../rtl/t80se/T80.vhd(265)
  and u104 (n175, n17, n174);  // ../../rtl/t80se/T80.vhd(663)
  and u105 (n176, n175, n71);  // ../../rtl/t80se/T80.vhd(663)
  buf u106 (REG[138], DOR[58]);  // ../../rtl/t80se/T80.vhd(265)
  buf u107 (REG[137], DOR[57]);  // ../../rtl/t80se/T80.vhd(265)
  buf u108 (REG[136], DOR[56]);  // ../../rtl/t80se/T80.vhd(265)
  buf u109 (REG[135], DOR[55]);  // ../../rtl/t80se/T80.vhd(265)
  or u11 (n8, n2, n5);  // ../../rtl/t80se/T80.vhd(370)
  buf u110 (REG[134], DOR[54]);  // ../../rtl/t80se/T80.vhd(265)
  and u111 (n180, n174, n3);  // ../../rtl/t80se/T80.vhd(669)
  or u112 (n181, n24, n180);  // ../../rtl/t80se/T80.vhd(669)
  not u113 (n193, Alternate);  // ../../rtl/t80se/T80.vhd(689)
  AL_MUX u114 (
    .i0(Alternate),
    .i1(n193),
    .sel(ExchangeRS),
    .o(n194));  // ../../rtl/t80se/T80.vhd(690)
  AL_MUX u115 (
    .i0(n67),
    .i1(n63),
    .sel(n22),
    .o(n201));  // ../../rtl/t80se/T80.vhd(691)
  AL_MUX u116 (
    .i0(n128),
    .i1(BTR_r),
    .sel(n22),
    .o(n202));  // ../../rtl/t80se/T80.vhd(691)
  AL_MUX u117 (
    .i0(n132),
    .i1(1'b0),
    .sel(n22),
    .o(n204));  // ../../rtl/t80se/T80.vhd(691)
  AL_MUX u118 (
    .i0(n157),
    .i1(FChanged),
    .sel(n22),
    .o(n208));  // ../../rtl/t80se/T80.vhd(691)
  AL_MUX u119 (
    .i0(n194),
    .i1(Alternate),
    .sel(n22),
    .o(n212));  // ../../rtl/t80se/T80.vhd(691)
  or u12 (n9, n8, n7);  // ../../rtl/t80se/T80.vhd(370)
  buf u120 (REG[133], DOR[53]);  // ../../rtl/t80se/T80.vhd(265)
  not u121 (n113[3], ACC[3]);  // ../../rtl/t80se/T80.vhd(590)
  not u122 (n113[4], ACC[4]);  // ../../rtl/t80se/T80.vhd(590)
  not u123 (n113[5], ACC[5]);  // ../../rtl/t80se/T80.vhd(590)
  not u124 (n113[6], ACC[6]);  // ../../rtl/t80se/T80.vhd(590)
  not u125 (n113[7], ACC[7]);  // ../../rtl/t80se/T80.vhd(590)
  xor u126 (n147[1], n146[1], BusA[1]);  // ../../rtl/t80se/T80.vhd(636)
  xor u127 (n147[2], n146[2], BusA[2]);  // ../../rtl/t80se/T80.vhd(636)
  AL_MUX u128 (
    .i0(1'b1),
    .i1(n208),
    .sel(Special_LD[1]),
    .o(n221));  // ../../rtl/t80se/T80.vhd(742)
  AL_MUX u129 (
    .i0(n208),
    .i1(n221),
    .sel(Special_LD[2]),
    .o(n226));  // ../../rtl/t80se/T80.vhd(743)
  and u13 (n10, n0, n1);  // ../../rtl/t80se/T80.vhd(370)
  AL_MUX u130 (
    .i0(n208),
    .i1(n226),
    .sel(n213),
    .o(n232));  // ../../rtl/t80se/T80.vhd(744)
  not u131 (n235, I_DJNZ);  // ../../rtl/t80se/T80.vhd(746)
  and u132 (n236, n235, Save_ALU_r);  // ../../rtl/t80se/T80.vhd(746)
  or u133 (n238, n236, n237);  // ../../rtl/t80se/T80.vhd(746)
  buf u134 (REG[208], IStatus[0]);  // ../../rtl/t80se/T80.vhd(265)
  AL_MUX u135 (
    .i0(F_Out[0]),
    .i1(n207[0]),
    .sel(PreserveC_r),
    .o(n239));  // ../../rtl/t80se/T80.vhd(759)
  and u136 (n241, T_Res, I_INRC);  // ../../rtl/t80se/T80.vhd(762)
  xor u137 (n243, DI_Reg[0], DI_Reg[1]);  // ../../rtl/t80se/T80.vhd(774)
  xor u138 (n244, n243, DI_Reg[2]);  // ../../rtl/t80se/T80.vhd(774)
  xor u139 (n245, n244, DI_Reg[3]);  // ../../rtl/t80se/T80.vhd(774)
  and u14 (NextIs_XY_Fetch, n10, n9);  // ../../rtl/t80se/T80.vhd(370)
  xor u140 (n246, n245, DI_Reg[4]);  // ../../rtl/t80se/T80.vhd(774)
  xor u141 (n247, n246, DI_Reg[5]);  // ../../rtl/t80se/T80.vhd(775)
  xor u142 (n248, n247, DI_Reg[6]);  // ../../rtl/t80se/T80.vhd(775)
  xor u143 (n249, n248, DI_Reg[7]);  // ../../rtl/t80se/T80.vhd(775)
  not u144 (n250, n249);  // ../../rtl/t80se/T80.vhd(775)
  AL_MUX u145 (
    .i0(n240[2]),
    .i1(n250),
    .sel(n241),
    .o(n254));  // ../../rtl/t80se/T80.vhd(776)
  AL_MUX u146 (
    .i0(n232),
    .i1(1'b1),
    .sel(n241),
    .o(n255));  // ../../rtl/t80se/T80.vhd(776)
  buf u147 (REG[132], DOR[52]);  // ../../rtl/t80se/T80.vhd(265)
  not u148 (n256, Auto_Wait_t1);  // ../../rtl/t80se/T80.vhd(778)
  and u149 (n257, n140, n256);  // ../../rtl/t80se/T80.vhd(778)
  buf u15 (DI_Reg[1], DI[1]);  // ../../rtl/t80se/T80.vhd(1075)
  or u150 (n258, I_RLD, I_RRD);  // ../../rtl/t80se/T80.vhd(780)
  buf u151 (REG[207], DOR[127]);  // ../../rtl/t80se/T80.vhd(265)
  AL_MUX u152 (
    .i0(I_RXDD),
    .i1(n258),
    .sel(n257),
    .o(n262));  // ../../rtl/t80se/T80.vhd(792)
  buf u153 (REG[131], DOR[51]);  // ../../rtl/t80se/T80.vhd(265)
  and u154 (n266, n140, I_BT);  // ../../rtl/t80se/T80.vhd(803)
  AL_MUX u155 (
    .i0(n255),
    .i1(1'b1),
    .sel(n266),
    .o(n269));  // ../../rtl/t80se/T80.vhd(809)
  buf u156 (REG[130], DOR[50]);  // ../../rtl/t80se/T80.vhd(265)
  and u157 (n270, n140, I_BC);  // ../../rtl/t80se/T80.vhd(810)
  AL_MUX u158 (
    .i0(n269),
    .i1(1'b1),
    .sel(n270),
    .o(n273));  // ../../rtl/t80se/T80.vhd(815)
  buf u159 (REG[129], DOR[49]);  // ../../rtl/t80se/T80.vhd(265)
  not u16 (n12, RESET_n);  // ../../rtl/t80se/T80.vhd(380)
  AL_MUX u160 (
    .i0(n254),
    .i1(IncDecZ),
    .sel(n69),
    .o(n274));  // ../../rtl/t80se/T80.vhd(818)
  buf u161 (REG[128], DOR[48]);  // ../../rtl/t80se/T80.vhd(265)
  not u162 (n275, Save_ALU_r);  // ../../rtl/t80se/T80.vhd(820)
  buf u163 (REG[79], PC[15]);  // ../../rtl/t80se/T80.vhd(265)
  and u164 (n276, n140, n275);  // ../../rtl/t80se/T80.vhd(820)
  and u165 (n277, n276, n256);  // ../../rtl/t80se/T80.vhd(820)
  and u166 (n279, Save_ALU_r, n278);  // ../../rtl/t80se/T80.vhd(821)
  or u167 (n280, n277, n279);  // ../../rtl/t80se/T80.vhd(821)
  AL_MUX u168 (
    .i0(Save_ALU_r),
    .i1(n204),
    .sel(ClkEn),
    .o(n312));  // ../../rtl/t80se/T80.vhd(839)
  AL_MUX u169 (
    .i0(n312),
    .i1(Save_ALU_r),
    .sel(DIRSet),
    .o(n313));  // ../../rtl/t80se/T80.vhd(839)
  buf u17 (REG[211], IntE_FF2);  // ../../rtl/t80se/T80.vhd(265)
  AL_MUX u170 (
    .i0(Arith16_r),
    .i1(Arith16),
    .sel(ClkEn),
    .o(n318));  // ../../rtl/t80se/T80.vhd(839)
  AL_MUX u171 (
    .i0(n318),
    .i1(Arith16_r),
    .sel(DIRSet),
    .o(n319));  // ../../rtl/t80se/T80.vhd(839)
  AL_MUX u172 (
    .i0(PreserveC_r),
    .i1(PreserveC),
    .sel(ClkEn),
    .o(n320));  // ../../rtl/t80se/T80.vhd(839)
  AL_MUX u173 (
    .i0(n320),
    .i1(PreserveC_r),
    .sel(DIRSet),
    .o(n321));  // ../../rtl/t80se/T80.vhd(839)
  AL_MUX u174 (
    .i0(Z16_r),
    .i1(n20),
    .sel(ClkEn),
    .o(n322));  // ../../rtl/t80se/T80.vhd(839)
  AL_MUX u175 (
    .i0(n322),
    .i1(Z16_r),
    .sel(DIRSet),
    .o(n323));  // ../../rtl/t80se/T80.vhd(839)
  AL_MUX u176 (
    .i0(XY_Ind),
    .i1(n201),
    .sel(ClkEn),
    .o(n330));  // ../../rtl/t80se/T80.vhd(839)
  AL_MUX u177 (
    .i0(n330),
    .i1(XY_Ind),
    .sel(DIRSet),
    .o(n331));  // ../../rtl/t80se/T80.vhd(839)
  AL_MUX u178 (
    .i0(BTR_r),
    .i1(n202),
    .sel(ClkEn),
    .o(n332));  // ../../rtl/t80se/T80.vhd(839)
  AL_MUX u179 (
    .i0(n332),
    .i1(BTR_r),
    .sel(DIRSet),
    .o(n333));  // ../../rtl/t80se/T80.vhd(839)
  not u18 (n114[1], ACC[5]);  // ../../rtl/t80se/T80.vhd(592)
  AL_MUX u180 (
    .i0(FChanged),
    .i1(n273),
    .sel(ClkEn),
    .o(n336));  // ../../rtl/t80se/T80.vhd(839)
  AL_MUX u181 (
    .i0(n336),
    .i1(FChanged),
    .sel(DIRSet),
    .o(n337));  // ../../rtl/t80se/T80.vhd(839)
  AL_MUX u182 (
    .i0(Alternate),
    .i1(n212),
    .sel(ClkEn),
    .o(n338));  // ../../rtl/t80se/T80.vhd(839)
  AL_MUX u183 (
    .i0(n338),
    .i1(Alternate),
    .sel(DIRSet),
    .o(n339));  // ../../rtl/t80se/T80.vhd(839)
  AL_MUX u184 (
    .i0(I_RXDD),
    .i1(n262),
    .sel(ClkEn),
    .o(n340));  // ../../rtl/t80se/T80.vhd(839)
  AL_MUX u185 (
    .i0(n340),
    .i1(I_RXDD),
    .sel(DIRSet),
    .o(n341));  // ../../rtl/t80se/T80.vhd(839)
  buf u186 (REG[78], PC[14]);  // ../../rtl/t80se/T80.vhd(265)
  buf u187 (REG[206], DOR[126]);  // ../../rtl/t80se/T80.vhd(265)
  buf u188 (MC[2], MCycle[2]);  // ../../rtl/t80se/T80.vhd(1073)
  buf u189 (MC[1], MCycle[1]);  // ../../rtl/t80se/T80.vhd(1073)
  not u19 (n47[0], IR[5]);  // ../../rtl/t80se/T80.vhd(473)
  buf u190 (REG[77], PC[13]);  // ../../rtl/t80se/T80.vhd(265)
  buf u191 (REG[76], PC[12]);  // ../../rtl/t80se/T80.vhd(265)
  buf u192 (REG[75], PC[11]);  // ../../rtl/t80se/T80.vhd(265)
  and u193 (n345, n10, n344);  // ../../rtl/t80se/T80.vhd(854)
  buf u194 (REG[74], PC[10]);  // ../../rtl/t80se/T80.vhd(265)
  buf u195 (REG[73], PC[9]);  // ../../rtl/t80se/T80.vhd(265)
  buf u196 (REG[72], PC[8]);  // ../../rtl/t80se/T80.vhd(265)
  and u197 (n348, n10, n347);  // ../../rtl/t80se/T80.vhd(860)
  or u198 (n350, JumpXY, LDSPHL);  // ../../rtl/t80se/T80.vhd(867)
  buf u199 (REG[71], PC[7]);  // ../../rtl/t80se/T80.vhd(265)
  not u20 (n16, ALU_Op[2]);  // ../../rtl/t80se/T80.vhd(438)
  buf u200 (REG[70], PC[6]);  // ../../rtl/t80se/T80.vhd(265)
  and u201 (n352, n350, n0);  // ../../rtl/t80se/T80.vhd(870)
  buf u202 (REG[69], PC[5]);  // ../../rtl/t80se/T80.vhd(265)
  or u203 (n353, n352, n64);  // ../../rtl/t80se/T80.vhd(870)
  and u204 (n355, I_DJNZ, Save_ALU_r);  // ../../rtl/t80se/T80.vhd(874)
  AL_MUX u205 (
    .i0(IncDecZ),
    .i1(F_Out[6]),
    .sel(n355),
    .o(n356));  // ../../rtl/t80se/T80.vhd(876)
  buf u206 (REG[68], PC[4]);  // ../../rtl/t80se/T80.vhd(265)
  buf u207 (REG[67], PC[3]);  // ../../rtl/t80se/T80.vhd(265)
  buf u208 (REG[66], PC[2]);  // ../../rtl/t80se/T80.vhd(265)
  and u209 (n357, n213, n3);  // ../../rtl/t80se/T80.vhd(877)
  and u21 (n18, n15, n16);  // ../../rtl/t80se/T80.vhd(438)
  or u210 (n358, n23, n357);  // ../../rtl/t80se/T80.vhd(877)
  and u211 (n360, n358, n359);  // ../../rtl/t80se/T80.vhd(877)
  not u212 (n362, n361);  // ../../rtl/t80se/T80.vhd(882)
  AL_MUX u213 (
    .i0(n356),
    .i1(n362),
    .sel(n360),
    .o(n363));  // ../../rtl/t80se/T80.vhd(883)
  AL_MUX u214 (
    .i0(IncDecZ),
    .i1(n363),
    .sel(ClkEn),
    .o(n367));  // ../../rtl/t80se/T80.vhd(886)
  buf u215 (REG[65], PC[1]);  // ../../rtl/t80se/T80.vhd(265)
  buf u216 (REG[64], PC[0]);  // ../../rtl/t80se/T80.vhd(265)
  buf u217 (REG[63], SP[15]);  // ../../rtl/t80se/T80.vhd(265)
  buf u218 (REG[62], SP[14]);  // ../../rtl/t80se/T80.vhd(265)
  and u219 (n369, n357, IncDec_16[2]);  // ../../rtl/t80se/T80.vhd(893)
  and u22 (n19, n18, ALU_Op[0]);  // ../../rtl/t80se/T80.vhd(438)
  or u220 (n370, n23, n369);  // ../../rtl/t80se/T80.vhd(893)
  buf u221 (REG[61], SP[13]);  // ../../rtl/t80se/T80.vhd(265)
  and u222 (n371, n370, n78);  // ../../rtl/t80se/T80.vhd(893)
  buf u223 (REG[60], SP[12]);  // ../../rtl/t80se/T80.vhd(265)
  buf u224 (REG[59], SP[11]);  // ../../rtl/t80se/T80.vhd(265)
  buf u225 (REG[58], SP[10]);  // ../../rtl/t80se/T80.vhd(265)
  buf u226 (REG[57], SP[9]);  // ../../rtl/t80se/T80.vhd(265)
  buf u227 (REG[56], SP[8]);  // ../../rtl/t80se/T80.vhd(265)
  buf u228 (REG[55], SP[7]);  // ../../rtl/t80se/T80.vhd(265)
  and u229 (n373, n370, n372);  // ../../rtl/t80se/T80.vhd(895)
  and u23 (n20, n19, n17);  // ../../rtl/t80se/T80.vhd(438)
  buf u230 (REG[54], SP[6]);  // ../../rtl/t80se/T80.vhd(265)
  and u231 (n374, ExchangeDH, n213);  // ../../rtl/t80se/T80.vhd(897)
  buf u232 (REG[53], SP[5]);  // ../../rtl/t80se/T80.vhd(265)
  and u233 (n375, ExchangeDH, n174);  // ../../rtl/t80se/T80.vhd(898)
  buf u234 (REG[52], SP[4]);  // ../../rtl/t80se/T80.vhd(265)
  buf u235 (REG[51], SP[3]);  // ../../rtl/t80se/T80.vhd(265)
  buf u236 (REG[50], SP[2]);  // ../../rtl/t80se/T80.vhd(265)
  buf u237 (REG[49], SP[1]);  // ../../rtl/t80se/T80.vhd(265)
  buf u238 (REG[48], SP[0]);  // ../../rtl/t80se/T80.vhd(265)
  buf u239 (REG[47], R[7]);  // ../../rtl/t80se/T80.vhd(265)
  buf u24 (REG[201], DOR[121]);  // ../../rtl/t80se/T80.vhd(265)
  buf u240 (REG[46], R[6]);  // ../../rtl/t80se/T80.vhd(265)
  buf u241 (REG[45], R[5]);  // ../../rtl/t80se/T80.vhd(265)
  buf u242 (REG[44], R[4]);  // ../../rtl/t80se/T80.vhd(265)
  buf u243 (REG[43], R[3]);  // ../../rtl/t80se/T80.vhd(265)
  not u244 (n381, Read_To_Reg_r[0]);  // ../../rtl/t80se/T80.vhd(920)
  AL_MUX u245 (
    .i0(1'b0),
    .i1(n382),
    .sel(n280),
    .o(n384));  // ../../rtl/t80se/T80.vhd(924)
  AL_MUX u246 (
    .i0(1'b0),
    .i1(n383),
    .sel(n280),
    .o(n385));  // ../../rtl/t80se/T80.vhd(924)
  buf u247 (REG[42], R[2]);  // ../../rtl/t80se/T80.vhd(265)
  buf u248 (REG[41], R[1]);  // ../../rtl/t80se/T80.vhd(265)
  or u249 (n386, n213, n174);  // ../../rtl/t80se/T80.vhd(926)
  not u25 (n21, TState[2]);  // ../../rtl/t80se/T80.vhd(444)
  and u250 (n387, ExchangeDH, n386);  // ../../rtl/t80se/T80.vhd(926)
  AL_MUX u251 (
    .i0(n384),
    .i1(1'b1),
    .sel(n387),
    .o(n388));  // ../../rtl/t80se/T80.vhd(929)
  AL_MUX u252 (
    .i0(n385),
    .i1(1'b1),
    .sel(n387),
    .o(n389));  // ../../rtl/t80se/T80.vhd(929)
  buf u253 (REG[40], R[0]);  // ../../rtl/t80se/T80.vhd(265)
  buf u254 (REG[39], I[7]);  // ../../rtl/t80se/T80.vhd(265)
  and u255 (n391, n24, n390);  // ../../rtl/t80se/T80.vhd(931)
  buf u256 (REG[38], I[6]);  // ../../rtl/t80se/T80.vhd(265)
  buf u257 (REG[37], I[5]);  // ../../rtl/t80se/T80.vhd(265)
  buf u258 (REG[36], I[4]);  // ../../rtl/t80se/T80.vhd(265)
  or u259 (n392, n391, n357);  // ../../rtl/t80se/T80.vhd(931)
  and u26 (n22, n3, n21);  // ../../rtl/t80se/T80.vhd(444)
  and u260 (n393, IncDec_16[2], n392);  // ../../rtl/t80se/T80.vhd(931)
  AL_MUX u261 (
    .i0(n388),
    .i1(n394),
    .sel(n393),
    .o(RegWEH));  // ../../rtl/t80se/T80.vhd(938)
  AL_MUX u262 (
    .i0(n389),
    .i1(n395),
    .sel(n393),
    .o(RegWEL));  // ../../rtl/t80se/T80.vhd(938)
  buf u263 (REG[35], I[3]);  // ../../rtl/t80se/T80.vhd(265)
  buf u264 (REG[34], I[2]);  // ../../rtl/t80se/T80.vhd(265)
  buf u265 (REG[33], I[1]);  // ../../rtl/t80se/T80.vhd(265)
  buf u266 (REG[32], I[0]);  // ../../rtl/t80se/T80.vhd(265)
  buf u267 (REG[31], Fp[7]);  // ../../rtl/t80se/T80.vhd(265)
  buf u268 (REG[30], Fp[6]);  // ../../rtl/t80se/T80.vhd(265)
  and u269 (n400, n23, n390);  // ../../rtl/t80se/T80.vhd(956)
  and u27 (n24, n23, WAIT_n);  // ../../rtl/t80se/T80.vhd(447)
  buf u270 (REG[29], Fp[5]);  // ../../rtl/t80se/T80.vhd(265)
  buf u271 (REG[28], Fp[4]);  // ../../rtl/t80se/T80.vhd(265)
  buf u272 (REG[27], Fp[3]);  // ../../rtl/t80se/T80.vhd(265)
  or u273 (n401, n400, n357);  // ../../rtl/t80se/T80.vhd(956)
  and u274 (n402, IncDec_16[2], n401);  // ../../rtl/t80se/T80.vhd(956)
  buf u275 (REG[205], DOR[125]);  // ../../rtl/t80se/T80.vhd(265)
  buf u276 (TS[2], TState[2]);  // ../../rtl/t80se/T80.vhd(1074)
  buf u277 (TS[1], TState[1]);  // ../../rtl/t80se/T80.vhd(1074)
  and u278 (n405, n404, out0);  // ../../rtl/t80se/T80.vhd(1016)
  buf u279 (DI_Reg[7], DI[7]);  // ../../rtl/t80se/T80.vhd(1075)
  not u28 (n26, Jump);  // ../../rtl/t80se/T80.vhd(454)
  buf u280 (REG[26], Fp[2]);  // ../../rtl/t80se/T80.vhd(265)
  buf u281 (REG[204], DOR[124]);  // ../../rtl/t80se/T80.vhd(265)
  buf u282 (DI_Reg[6], DI[6]);  // ../../rtl/t80se/T80.vhd(1075)
  buf u283 (DI_Reg[5], DI[5]);  // ../../rtl/t80se/T80.vhd(1075)
  not u284 (n413, DIRSet);  // ../../rtl/t80se/T80.vhd(1063)
  and u285 (n414, n413, CEN);  // ../../rtl/t80se/T80.vhd(1063)
  buf u286 (REG[25], Fp[1]);  // ../../rtl/t80se/T80.vhd(265)
  buf u287 (REG[24], Fp[0]);  // ../../rtl/t80se/T80.vhd(265)
  buf u288 (REG[23], Ap[7]);  // ../../rtl/t80se/T80.vhd(265)
  buf u289 (REG[22], Ap[6]);  // ../../rtl/t80se/T80.vhd(265)
  not u29 (n27, Call);  // ../../rtl/t80se/T80.vhd(454)
  or u290 (n415, n24, n213);  // ../../rtl/t80se/T80.vhd(1064)
  and u291 (n416, n3, n415);  // ../../rtl/t80se/T80.vhd(1064)
  not u292 (n417, n416);  // ../../rtl/t80se/T80.vhd(1068)
  AL_MUX u293 (
    .i0(RFSH_n),
    .i1(n417),
    .sel(n414),
    .o(n418));  // ../../rtl/t80se/T80.vhd(1069)
  or u294 (n120[0], F[3], ACC[3]);  // ../../rtl/t80se/T80.vhd(606)
  buf u295 (MC[0], MCycle[0]);  // ../../rtl/t80se/T80.vhd(1073)
  buf u296 (TS[0], TState[0]);  // ../../rtl/t80se/T80.vhd(1074)
  not u297 (HALT_n, Halt_FF);  // ../../rtl/t80se/T80.vhd(1076)
  buf u298 (REG[21], Ap[5]);  // ../../rtl/t80se/T80.vhd(265)
  buf u299 (REG[20], Ap[4]);  // ../../rtl/t80se/T80.vhd(265)
  not u3 (n113[2], ACC[2]);  // ../../rtl/t80se/T80.vhd(590)
  not u30 (n28, NMICycle);  // ../../rtl/t80se/T80.vhd(454)
  buf u300 (IntE, IntE_FF1);  // ../../rtl/t80se/T80.vhd(1079)
  buf u301 (IORQ, IORQ_i);  // ../../rtl/t80se/T80.vhd(1080)
  buf u302 (Stop, I_DJNZ);  // ../../rtl/t80se/T80.vhd(1081)
  buf u303 (REG[19], Ap[3]);  // ../../rtl/t80se/T80.vhd(265)
  buf u304 (REG[203], DOR[123]);  // ../../rtl/t80se/T80.vhd(265)
  buf u305 (DI_Reg[4], DI[4]);  // ../../rtl/t80se/T80.vhd(1075)
  buf u306 (DI_Reg[3], DI[3]);  // ../../rtl/t80se/T80.vhd(1075)
  not u307 (n419, NMI_n);  // ../../rtl/t80se/T80.vhd(1113)
  and u308 (n420, n419, OldNMI_n);  // ../../rtl/t80se/T80.vhd(1113)
  AL_MUX u309 (
    .i0(NMI_s),
    .i1(1'b1),
    .sel(n420),
    .o(n421));  // ../../rtl/t80se/T80.vhd(1115)
  not u31 (IntCycle_n, IntCycle);  // ../../rtl/t80se/T80.vhd(454)
  not u310 (n422, BUSRQ_n);  // ../../rtl/t80se/T80.vhd(1119)
  or u311 (n423, Auto_Wait, IORQ_i);  // ../../rtl/t80se/T80.vhd(1125)
  AL_MUX u312 (
    .i0(n423),
    .i1(1'b0),
    .sel(T_Res),
    .o(n424));  // ../../rtl/t80se/T80.vhd(1126)
  AL_MUX u313 (
    .i0(Auto_Wait_t1),
    .i1(1'b0),
    .sel(T_Res),
    .o(n425));  // ../../rtl/t80se/T80.vhd(1126)
  not u314 (n426, IR[4]);  // ../../rtl/t80se/T80.vhd(1127)
  not u315 (n427, F[2]);  // ../../rtl/t80se/T80.vhd(1127)
  or u316 (n428, n426, n427);  // ../../rtl/t80se/T80.vhd(1127)
  and u317 (n429, I_BT, n428);  // ../../rtl/t80se/T80.vhd(1127)
  buf u318 (REG[18], Ap[2]);  // ../../rtl/t80se/T80.vhd(265)
  or u319 (n430, n426, F[6]);  // ../../rtl/t80se/T80.vhd(1128)
  or u32 (n29, Halt_FF, Halt);  // ../../rtl/t80se/T80.vhd(454)
  buf u320 (REG[17], Ap[1]);  // ../../rtl/t80se/T80.vhd(265)
  or u321 (n431, n430, n427);  // ../../rtl/t80se/T80.vhd(1128)
  and u322 (n432, I_BC, n431);  // ../../rtl/t80se/T80.vhd(1128)
  or u323 (n433, n429, n432);  // ../../rtl/t80se/T80.vhd(1127)
  buf u324 (REG[16], Ap[0]);  // ../../rtl/t80se/T80.vhd(265)
  buf u325 (REG[15], F[7]);  // ../../rtl/t80se/T80.vhd(265)
  and u326 (n434, I_BTR, n430);  // ../../rtl/t80se/T80.vhd(1129)
  or u327 (n435, n433, n434);  // ../../rtl/t80se/T80.vhd(1128)
  buf u328 (REG[14], F[6]);  // ../../rtl/t80se/T80.vhd(265)
  AL_MUX u329 (
    .i0(IntE_FF1),
    .i1(1'b1),
    .sel(SetEI),
    .o(n436));  // ../../rtl/t80se/T80.vhd(1134)
  not u33 (n30, n29);  // ../../rtl/t80se/T80.vhd(454)
  AL_MUX u330 (
    .i0(IntE_FF2),
    .i1(1'b1),
    .sel(SetEI),
    .o(n437));  // ../../rtl/t80se/T80.vhd(1134)
  AL_MUX u331 (
    .i0(n436),
    .i1(IntE_FF2),
    .sel(I_RETN),
    .o(n438));  // ../../rtl/t80se/T80.vhd(1137)
  AL_MUX u332 (
    .i0(IntE_FF1),
    .i1(n438),
    .sel(n23),
    .o(n439));  // ../../rtl/t80se/T80.vhd(1138)
  AL_MUX u333 (
    .i0(IntE_FF2),
    .i1(n437),
    .sel(n23),
    .o(n440));  // ../../rtl/t80se/T80.vhd(1138)
  buf u334 (REG[13], F[5]);  // ../../rtl/t80se/T80.vhd(265)
  AL_MUX u335 (
    .i0(n439),
    .i1(1'b0),
    .sel(SetDI),
    .o(n441));  // ../../rtl/t80se/T80.vhd(1143)
  AL_MUX u336 (
    .i0(n440),
    .i1(1'b0),
    .sel(SetDI),
    .o(n442));  // ../../rtl/t80se/T80.vhd(1143)
  AL_MUX u337 (
    .i0(n439),
    .i1(n441),
    .sel(n213),
    .o(n443));  // ../../rtl/t80se/T80.vhd(1144)
  AL_MUX u338 (
    .i0(n440),
    .i1(n442),
    .sel(n213),
    .o(n444));  // ../../rtl/t80se/T80.vhd(1144)
  or u339 (n445, IntCycle, NMICycle);  // ../../rtl/t80se/T80.vhd(1145)
  and u34 (n31, n26, n27);  // ../../rtl/t80se/T80.vhd(454)
  AL_MUX u340 (
    .i0(Halt_FF),
    .i1(1'b0),
    .sel(n445),
    .o(n446));  // ../../rtl/t80se/T80.vhd(1147)
  buf u341 (REG[12], F[4]);  // ../../rtl/t80se/T80.vhd(265)
  buf u342 (REG[11], F[3]);  // ../../rtl/t80se/T80.vhd(265)
  and u343 (n447, n3, n23);  // ../../rtl/t80se/T80.vhd(1148)
  and u344 (n448, n447, WAIT_n);  // ../../rtl/t80se/T80.vhd(1148)
  AL_MUX u345 (
    .i0(M1_n),
    .i1(1'b1),
    .sel(n448),
    .o(n449));  // ../../rtl/t80se/T80.vhd(1150)
  and u346 (n450, BusReq_s, BusAck);  // ../../rtl/t80se/T80.vhd(1151)
  buf u347 (REG[10], F[2]);  // ../../rtl/t80se/T80.vhd(265)
  not u348 (n451, WAIT_n);  // ../../rtl/t80se/T80.vhd(1154)
  and u349 (n452, n23, n451);  // ../../rtl/t80se/T80.vhd(1154)
  and u35 (n32, n31, n28);  // ../../rtl/t80se/T80.vhd(454)
  AL_MUX u350 (
    .i0(n446),
    .i1(1'b1),
    .sel(Halt),
    .o(n453));  // ../../rtl/t80se/T80.vhd(1158)
  buf u351 (REG[9], F[1]);  // ../../rtl/t80se/T80.vhd(265)
  buf u352 (REG[8], F[0]);  // ../../rtl/t80se/T80.vhd(265)
  buf u353 (REG[7], ACC[7]);  // ../../rtl/t80se/T80.vhd(265)
  and u354 (n458, n457, I_DJNZ);  // ../../rtl/t80se/T80.vhd(1171)
  and u355 (n459, n458, IncDecZ);  // ../../rtl/t80se/T80.vhd(1171)
  or u356 (n460, n74, No_BTR);  // ../../rtl/t80se/T80.vhd(1171)
  or u357 (n461, n460, n459);  // ../../rtl/t80se/T80.vhd(1171)
  and u358 (n463, NMI_s, n462);  // ../../rtl/t80se/T80.vhd(1176)
  not u359 (n464, INT_n);  // ../../rtl/t80se/T80.vhd(1180)
  and u36 (n33, n32, IntCycle_n);  // ../../rtl/t80se/T80.vhd(454)
  buf u360 (REG[6], ACC[6]);  // ../../rtl/t80se/T80.vhd(265)
  not u361 (n465, SetEI);  // ../../rtl/t80se/T80.vhd(1180)
  and u362 (n466, IntE_FF1, n464);  // ../../rtl/t80se/T80.vhd(1180)
  and u363 (n467, n466, n462);  // ../../rtl/t80se/T80.vhd(1180)
  and u364 (n468, n467, n465);  // ../../rtl/t80se/T80.vhd(1180)
  AL_MUX u365 (
    .i0(n421),
    .i1(1'b0),
    .sel(n463),
    .o(n469));  // ../../rtl/t80se/T80.vhd(1184)
  AL_MUX u366 (
    .i0(n443),
    .i1(1'b0),
    .sel(n468),
    .o(n470));  // ../../rtl/t80se/T80.vhd(1184)
  AL_MUX u367 (
    .i0(n470),
    .i1(1'b0),
    .sel(n463),
    .o(n471));  // ../../rtl/t80se/T80.vhd(1184)
  AL_MUX u368 (
    .i0(n468),
    .i1(1'b0),
    .sel(n463),
    .o(n472));  // ../../rtl/t80se/T80.vhd(1184)
  AL_MUX u369 (
    .i0(n444),
    .i1(1'b0),
    .sel(n468),
    .o(n473));  // ../../rtl/t80se/T80.vhd(1184)
  and u37 (n34, n33, n30);  // ../../rtl/t80se/T80.vhd(454)
  AL_MUX u370 (
    .i0(n473),
    .i1(n444),
    .sel(n463),
    .o(n474));  // ../../rtl/t80se/T80.vhd(1184)
  AL_MUX u371 (
    .i0(n449),
    .i1(1'b0),
    .sel(n461),
    .o(n480));  // ../../rtl/t80se/T80.vhd(1187)
  AL_MUX u372 (
    .i0(n480),
    .i1(n449),
    .sel(n455),
    .o(n481));  // ../../rtl/t80se/T80.vhd(1187)
  AL_MUX u373 (
    .i0(n481),
    .i1(n449),
    .sel(NextIs_XY_Fetch),
    .o(n482));  // ../../rtl/t80se/T80.vhd(1187)
  AL_MUX u374 (
    .i0(IntCycle),
    .i1(n472),
    .sel(n461),
    .o(n483));  // ../../rtl/t80se/T80.vhd(1187)
  AL_MUX u375 (
    .i0(n483),
    .i1(IntCycle),
    .sel(n455),
    .o(n484));  // ../../rtl/t80se/T80.vhd(1187)
  AL_MUX u376 (
    .i0(n484),
    .i1(IntCycle),
    .sel(NextIs_XY_Fetch),
    .o(n485));  // ../../rtl/t80se/T80.vhd(1187)
  AL_MUX u377 (
    .i0(NMICycle),
    .i1(n463),
    .sel(n461),
    .o(n486));  // ../../rtl/t80se/T80.vhd(1187)
  AL_MUX u378 (
    .i0(n486),
    .i1(NMICycle),
    .sel(n455),
    .o(n487));  // ../../rtl/t80se/T80.vhd(1187)
  AL_MUX u379 (
    .i0(n487),
    .i1(NMICycle),
    .sel(NextIs_XY_Fetch),
    .o(n488));  // ../../rtl/t80se/T80.vhd(1187)
  and u38 (n38, IntCycle, n37);  // ../../rtl/t80se/T80.vhd(458)
  AL_MUX u380 (
    .i0(n421),
    .i1(n469),
    .sel(n461),
    .o(n489));  // ../../rtl/t80se/T80.vhd(1187)
  AL_MUX u381 (
    .i0(n489),
    .i1(n421),
    .sel(n455),
    .o(n490));  // ../../rtl/t80se/T80.vhd(1187)
  AL_MUX u382 (
    .i0(n490),
    .i1(n421),
    .sel(NextIs_XY_Fetch),
    .o(n491));  // ../../rtl/t80se/T80.vhd(1187)
  AL_MUX u383 (
    .i0(n443),
    .i1(n471),
    .sel(n461),
    .o(n492));  // ../../rtl/t80se/T80.vhd(1187)
  AL_MUX u384 (
    .i0(n492),
    .i1(n443),
    .sel(n455),
    .o(n493));  // ../../rtl/t80se/T80.vhd(1187)
  AL_MUX u385 (
    .i0(n493),
    .i1(n443),
    .sel(NextIs_XY_Fetch),
    .o(n494));  // ../../rtl/t80se/T80.vhd(1187)
  AL_MUX u386 (
    .i0(n444),
    .i1(n474),
    .sel(n461),
    .o(n495));  // ../../rtl/t80se/T80.vhd(1187)
  AL_MUX u387 (
    .i0(n495),
    .i1(n444),
    .sel(n455),
    .o(n496));  // ../../rtl/t80se/T80.vhd(1187)
  AL_MUX u388 (
    .i0(n496),
    .i1(n444),
    .sel(NextIs_XY_Fetch),
    .o(n497));  // ../../rtl/t80se/T80.vhd(1187)
  AL_MUX u389 (
    .i0(n482),
    .i1(n449),
    .sel(BusReq_s),
    .o(n501));  // ../../rtl/t80se/T80.vhd(1188)
  and u39 (n40, IntCycle, n39);  // ../../rtl/t80se/T80.vhd(460)
  AL_MUX u390 (
    .i0(n485),
    .i1(IntCycle),
    .sel(BusReq_s),
    .o(n502));  // ../../rtl/t80se/T80.vhd(1188)
  AL_MUX u391 (
    .i0(n488),
    .i1(NMICycle),
    .sel(BusReq_s),
    .o(n503));  // ../../rtl/t80se/T80.vhd(1188)
  AL_MUX u392 (
    .i0(n491),
    .i1(n421),
    .sel(BusReq_s),
    .o(n504));  // ../../rtl/t80se/T80.vhd(1188)
  AL_MUX u393 (
    .i0(n494),
    .i1(n443),
    .sel(BusReq_s),
    .o(n505));  // ../../rtl/t80se/T80.vhd(1188)
  AL_MUX u394 (
    .i0(n497),
    .i1(n444),
    .sel(BusReq_s),
    .o(n506));  // ../../rtl/t80se/T80.vhd(1188)
  not u395 (n507, Auto_Wait_t2);  // ../../rtl/t80se/T80.vhd(1190)
  and u396 (n508, Auto_Wait, n507);  // ../../rtl/t80se/T80.vhd(1190)
  buf u397 (REG[5], ACC[5]);  // ../../rtl/t80se/T80.vhd(265)
  and u398 (n509, IORQ_i, n256);  // ../../rtl/t80se/T80.vhd(1191)
  nor u399 (n510, n508, n509);  // ../../rtl/t80se/T80.vhd(1190)
  buf u4 (DI_Reg[2], DI[2]);  // ../../rtl/t80se/T80.vhd(1075)
  or u40 (n41, Halt_FF, n40);  // ../../rtl/t80se/T80.vhd(460)
  AL_MUX u400 (
    .i0(n446),
    .i1(n453),
    .sel(T_Res),
    .o(n513));  // ../../rtl/t80se/T80.vhd(1194)
  AL_MUX u401 (
    .i0(n513),
    .i1(n446),
    .sel(n452),
    .o(n514));  // ../../rtl/t80se/T80.vhd(1194)
  AL_MUX u402 (
    .i0(1'b0),
    .i1(BusReq_s),
    .sel(T_Res),
    .o(n515));  // ../../rtl/t80se/T80.vhd(1194)
  AL_MUX u403 (
    .i0(n515),
    .i1(1'b0),
    .sel(n452),
    .o(n516));  // ../../rtl/t80se/T80.vhd(1194)
  AL_MUX u404 (
    .i0(n449),
    .i1(n501),
    .sel(T_Res),
    .o(n523));  // ../../rtl/t80se/T80.vhd(1194)
  AL_MUX u405 (
    .i0(n523),
    .i1(n449),
    .sel(n452),
    .o(n524));  // ../../rtl/t80se/T80.vhd(1194)
  AL_MUX u406 (
    .i0(IntCycle),
    .i1(n502),
    .sel(T_Res),
    .o(n525));  // ../../rtl/t80se/T80.vhd(1194)
  AL_MUX u407 (
    .i0(n525),
    .i1(IntCycle),
    .sel(n452),
    .o(n526));  // ../../rtl/t80se/T80.vhd(1194)
  AL_MUX u408 (
    .i0(NMICycle),
    .i1(n503),
    .sel(T_Res),
    .o(n527));  // ../../rtl/t80se/T80.vhd(1194)
  AL_MUX u409 (
    .i0(n527),
    .i1(NMICycle),
    .sel(n452),
    .o(n528));  // ../../rtl/t80se/T80.vhd(1194)
  or u41 (n42, n41, NMICycle);  // ../../rtl/t80se/T80.vhd(460)
  AL_MUX u410 (
    .i0(n421),
    .i1(n504),
    .sel(T_Res),
    .o(n529));  // ../../rtl/t80se/T80.vhd(1194)
  AL_MUX u411 (
    .i0(n529),
    .i1(n421),
    .sel(n452),
    .o(n530));  // ../../rtl/t80se/T80.vhd(1194)
  AL_MUX u412 (
    .i0(n443),
    .i1(n505),
    .sel(T_Res),
    .o(n531));  // ../../rtl/t80se/T80.vhd(1194)
  AL_MUX u413 (
    .i0(n531),
    .i1(n443),
    .sel(n452),
    .o(n532));  // ../../rtl/t80se/T80.vhd(1194)
  AL_MUX u414 (
    .i0(n444),
    .i1(n506),
    .sel(T_Res),
    .o(n533));  // ../../rtl/t80se/T80.vhd(1194)
  AL_MUX u415 (
    .i0(n533),
    .i1(n444),
    .sel(n452),
    .o(n534));  // ../../rtl/t80se/T80.vhd(1194)
  AL_MUX u416 (
    .i0(n516),
    .i1(BusAck),
    .sel(n450),
    .o(n535));  // ../../rtl/t80se/T80.vhd(1195)
  AL_MUX u417 (
    .i0(n514),
    .i1(n446),
    .sel(n450),
    .o(n536));  // ../../rtl/t80se/T80.vhd(1195)
  AL_MUX u418 (
    .i0(n524),
    .i1(n449),
    .sel(n450),
    .o(n540));  // ../../rtl/t80se/T80.vhd(1195)
  AL_MUX u419 (
    .i0(n526),
    .i1(IntCycle),
    .sel(n450),
    .o(n541));  // ../../rtl/t80se/T80.vhd(1195)
  AL_MUX u42 (
    .i0(XY_Ind),
    .i1(1'b0),
    .sel(n48),
    .o(n50));  // ../../rtl/t80se/T80.vhd(478)
  AL_MUX u420 (
    .i0(n528),
    .i1(NMICycle),
    .sel(n450),
    .o(n542));  // ../../rtl/t80se/T80.vhd(1195)
  AL_MUX u421 (
    .i0(n530),
    .i1(n421),
    .sel(n450),
    .o(n543));  // ../../rtl/t80se/T80.vhd(1195)
  AL_MUX u422 (
    .i0(n532),
    .i1(n443),
    .sel(n450),
    .o(n544));  // ../../rtl/t80se/T80.vhd(1195)
  AL_MUX u423 (
    .i0(n534),
    .i1(n444),
    .sel(n450),
    .o(n545));  // ../../rtl/t80se/T80.vhd(1195)
  AL_MUX u424 (
    .i0(n540),
    .i1(1'b0),
    .sel(n546),
    .o(n547));  // ../../rtl/t80se/T80.vhd(1198)
  AL_MUX u425 (
    .i0(BusReq_s),
    .i1(n422),
    .sel(CEN),
    .o(n548));  // ../../rtl/t80se/T80.vhd(1199)
  AL_MUX u426 (
    .i0(Auto_Wait_t2),
    .i1(n425),
    .sel(CEN),
    .o(n549));  // ../../rtl/t80se/T80.vhd(1199)
  AL_MUX u427 (
    .i0(Auto_Wait_t1),
    .i1(n424),
    .sel(CEN),
    .o(n550));  // ../../rtl/t80se/T80.vhd(1199)
  AL_MUX u428 (
    .i0(No_BTR),
    .i1(n435),
    .sel(CEN),
    .o(n551));  // ../../rtl/t80se/T80.vhd(1199)
  AL_MUX u429 (
    .i0(IntE_FF1),
    .i1(n544),
    .sel(CEN),
    .o(n552));  // ../../rtl/t80se/T80.vhd(1199)
  AL_MUX u43 (
    .i0(n50),
    .i1(XY_Ind),
    .sel(n46),
    .o(n52));  // ../../rtl/t80se/T80.vhd(480)
  AL_MUX u430 (
    .i0(IntE_FF2),
    .i1(n545),
    .sel(CEN),
    .o(n553));  // ../../rtl/t80se/T80.vhd(1199)
  AL_MUX u431 (
    .i0(Halt_FF),
    .i1(n536),
    .sel(CEN),
    .o(n554));  // ../../rtl/t80se/T80.vhd(1199)
  AL_MUX u432 (
    .i0(M1_n),
    .i1(n547),
    .sel(CEN),
    .o(n555));  // ../../rtl/t80se/T80.vhd(1199)
  AL_MUX u433 (
    .i0(BusAck),
    .i1(n535),
    .sel(CEN),
    .o(n556));  // ../../rtl/t80se/T80.vhd(1199)
  AL_MUX u434 (
    .i0(IntCycle),
    .i1(n541),
    .sel(CEN),
    .o(n560));  // ../../rtl/t80se/T80.vhd(1199)
  AL_MUX u435 (
    .i0(NMICycle),
    .i1(n542),
    .sel(CEN),
    .o(n561));  // ../../rtl/t80se/T80.vhd(1199)
  AL_MUX u436 (
    .i0(n421),
    .i1(n543),
    .sel(CEN),
    .o(n562));  // ../../rtl/t80se/T80.vhd(1199)
  AL_MUX u437 (
    .i0(n553),
    .i1(DIR[211]),
    .sel(DIRSet),
    .o(n563));  // ../../rtl/t80se/T80.vhd(1200)
  AL_MUX u438 (
    .i0(n552),
    .i1(DIR[210]),
    .sel(DIRSet),
    .o(n564));  // ../../rtl/t80se/T80.vhd(1200)
  AL_MUX u439 (
    .i0(n562),
    .i1(NMI_s),
    .sel(DIRSet),
    .o(n565));  // ../../rtl/t80se/T80.vhd(1200)
  AL_MUX u44 (
    .i0(1'b0),
    .i1(n52),
    .sel(n45),
    .o(n55));  // ../../rtl/t80se/T80.vhd(484)
  AL_MUX u440 (
    .i0(NMI_n),
    .i1(OldNMI_n),
    .sel(DIRSet),
    .o(n566));  // ../../rtl/t80se/T80.vhd(1200)
  AL_MUX u441 (
    .i0(n548),
    .i1(BusReq_s),
    .sel(DIRSet),
    .o(n567));  // ../../rtl/t80se/T80.vhd(1200)
  AL_MUX u442 (
    .i0(n549),
    .i1(Auto_Wait_t2),
    .sel(DIRSet),
    .o(n568));  // ../../rtl/t80se/T80.vhd(1200)
  AL_MUX u443 (
    .i0(n550),
    .i1(Auto_Wait_t1),
    .sel(DIRSet),
    .o(n569));  // ../../rtl/t80se/T80.vhd(1200)
  AL_MUX u444 (
    .i0(n551),
    .i1(No_BTR),
    .sel(DIRSet),
    .o(n570));  // ../../rtl/t80se/T80.vhd(1200)
  AL_MUX u445 (
    .i0(n554),
    .i1(Halt_FF),
    .sel(DIRSet),
    .o(n571));  // ../../rtl/t80se/T80.vhd(1200)
  AL_MUX u446 (
    .i0(n555),
    .i1(M1_n),
    .sel(DIRSet),
    .o(n572));  // ../../rtl/t80se/T80.vhd(1200)
  AL_MUX u447 (
    .i0(n556),
    .i1(BusAck),
    .sel(DIRSet),
    .o(n573));  // ../../rtl/t80se/T80.vhd(1200)
  AL_MUX u448 (
    .i0(n560),
    .i1(IntCycle),
    .sel(DIRSet),
    .o(n577));  // ../../rtl/t80se/T80.vhd(1200)
  AL_MUX u449 (
    .i0(n561),
    .i1(NMICycle),
    .sel(DIRSet),
    .o(n578));  // ../../rtl/t80se/T80.vhd(1200)
  buf u45 (REG[3], ACC[3]);  // ../../rtl/t80se/T80.vhd(265)
  buf u450 (DI_Reg[0], DI[0]);  // ../../rtl/t80se/T80.vhd(1075)
  AL_MUX u451 (
    .i0(n566),
    .i1(OldNMI_n),
    .sel(n12),
    .o(n579));  // ../../rtl/t80se/T80.vhd(1201)
  buf u452 (REG[4], ACC[4]);  // ../../rtl/t80se/T80.vhd(265)
  and u453 (Auto_Wait, IntCycle, n3);  // ../../rtl/t80se/T80.vhd(1204)
  buf u46 (REG[1], ACC[1]);  // ../../rtl/t80se/T80.vhd(265)
  AL_MUX u47 (
    .i0(XY_Ind),
    .i1(n55),
    .sel(n24),
    .o(n63));  // ../../rtl/t80se/T80.vhd(485)
  AL_MUX u48 (
    .i0(XY_Ind),
    .i1(1'b1),
    .sel(n64),
    .o(n67));  // ../../rtl/t80se/T80.vhd(495)
  or u49 (n69, I_BT, I_BC);  // ../../rtl/t80se/T80.vhd(498)
  not u5 (BUSAK_n, BusAck);  // ../../rtl/t80se/T80.vhd(363)
  or u50 (n70, n69, I_BTR);  // ../../rtl/t80se/T80.vhd(498)
  not u51 (n71, No_BTR);  // ../../rtl/t80se/T80.vhd(498)
  and u52 (n72, n70, n71);  // ../../rtl/t80se/T80.vhd(498)
  or u53 (n73, Call, RstP);  // ../../rtl/t80se/T80.vhd(507)
  and u54 (n75, n74, NMICycle);  // ../../rtl/t80se/T80.vhd(510)
  buf u55 (REG[200], DOR[120]);  // ../../rtl/t80se/T80.vhd(265)
  buf u56 (REG[199], DOR[119]);  // ../../rtl/t80se/T80.vhd(265)
  and u57 (n76, n17, IntCycle);  // ../../rtl/t80se/T80.vhd(513)
  and u58 (n77, n76, n39);  // ../../rtl/t80se/T80.vhd(513)
  buf u59 (REG[2], ACC[2]);  // ../../rtl/t80se/T80.vhd(265)
  and u6 (ClkEn, CEN, BUSAK_n);  // ../../rtl/t80se/T80.vhd(363)
  buf u60 (REG[198], DOR[118]);  // ../../rtl/t80se/T80.vhd(265)
  buf u61 (REG[197], DOR[117]);  // ../../rtl/t80se/T80.vhd(265)
  buf u62 (REG[196], DOR[116]);  // ../../rtl/t80se/T80.vhd(265)
  xor u63 (n147[0], n146[0], BusA[0]);  // ../../rtl/t80se/T80.vhd(636)
  not u64 (n113[0], ACC[0]);  // ../../rtl/t80se/T80.vhd(590)
  AL_MUX u65 (
    .i0(FChanged),
    .i1(1'b1),
    .sel(I_CPL),
    .o(n118));  // ../../rtl/t80se/T80.vhd(597)
  not u66 (n119, F[0]);  // ../../rtl/t80se/T80.vhd(600)
  buf u67 (REG[210], IntE_FF1);  // ../../rtl/t80se/T80.vhd(265)
  not u68 (n114[0], ACC[3]);  // ../../rtl/t80se/T80.vhd(592)
  AL_MUX u69 (
    .i0(n118),
    .i1(1'b1),
    .sel(I_CCF),
    .o(n123));  // ../../rtl/t80se/T80.vhd(613)
  not u7 (n1, XY_Ind);  // ../../rtl/t80se/T80.vhd(367)
  buf u70 (REG[209], IStatus[1]);  // ../../rtl/t80se/T80.vhd(265)
  buf u71 (REG[195], DOR[115]);  // ../../rtl/t80se/T80.vhd(265)
  AL_MUX u72 (
    .i0(n123),
    .i1(1'b1),
    .sel(I_SCF),
    .o(n127));  // ../../rtl/t80se/T80.vhd(628)
  AL_MUX u73 (
    .i0(BTR_r),
    .i1(n72),
    .sel(T_Res),
    .o(n128));  // ../../rtl/t80se/T80.vhd(629)
  AL_MUX u74 (
    .i0(1'b0),
    .i1(Save_ALU),
    .sel(T_Res),
    .o(n132));  // ../../rtl/t80se/T80.vhd(629)
  AL_MUX u75 (
    .i0(FChanged),
    .i1(n127),
    .sel(T_Res),
    .o(n137));  // ../../rtl/t80se/T80.vhd(629)
  buf u76 (REG[194], DOR[114]);  // ../../rtl/t80se/T80.vhd(265)
  and u77 (n138, n23, I_BTR);  // ../../rtl/t80se/T80.vhd(631)
  and u78 (n139, n138, IR[0]);  // ../../rtl/t80se/T80.vhd(631)
  not u79 (n141, IR[0]);  // ../../rtl/t80se/T80.vhd(631)
  and u8 (n5, n3, n4);  // ../../rtl/t80se/T80.vhd(369)
  and u80 (n142, n140, I_BTR);  // ../../rtl/t80se/T80.vhd(631)
  and u81 (n143, n142, n141);  // ../../rtl/t80se/T80.vhd(631)
  or u82 (n144, n139, n143);  // ../../rtl/t80se/T80.vhd(631)
  or u83 (n120[1], F[5], ACC[5]);  // ../../rtl/t80se/T80.vhd(606)
  xor u84 (n148, n147[0], n147[1]);  // ../../rtl/t80se/T80.vhd(637)
  xor u85 (n149, n148, n147[2]);  // ../../rtl/t80se/T80.vhd(637)
  xor u86 (n150, n149, BusA[3]);  // ../../rtl/t80se/T80.vhd(637)
  xor u87 (n151, n150, BusA[4]);  // ../../rtl/t80se/T80.vhd(637)
  xor u88 (n152, n151, BusA[5]);  // ../../rtl/t80se/T80.vhd(637)
  xor u89 (n153, n152, BusA[6]);  // ../../rtl/t80se/T80.vhd(637)
  buf u9 (REG[202], DOR[122]);  // ../../rtl/t80se/T80.vhd(265)
  xor u90 (n154, n153, BusA[7]);  // ../../rtl/t80se/T80.vhd(637)
  not u91 (n155, n154);  // ../../rtl/t80se/T80.vhd(637)
  AL_MUX u92 (
    .i0(n137),
    .i1(1'b1),
    .sel(n144),
    .o(n157));  // ../../rtl/t80se/T80.vhd(639)
  buf u93 (REG[193], DOR[113]);  // ../../rtl/t80se/T80.vhd(265)
  buf u94 (REG[192], DOR[112]);  // ../../rtl/t80se/T80.vhd(265)
  and u95 (n159, n158, n455);  // ../../rtl/t80se/T80.vhd(642)
  not u96 (n113[1], ACC[1]);  // ../../rtl/t80se/T80.vhd(590)
  buf u97 (REG[143], DOR[63]);  // ../../rtl/t80se/T80.vhd(265)
  buf u98 (REG[142], DOR[62]);  // ../../rtl/t80se/T80.vhd(265)
  buf u99 (REG[0], ACC[0]);  // ../../rtl/t80se/T80.vhd(265)

endmodule 

module binary_mux_s1_w14
  (
  i0,
  i1,
  sel,
  o
  );

  input [13:0] i0;
  input [13:0] i1;
  input sel;
  output [13:0] o;



endmodule 

module binary_mux_s1_w7
  (
  i0,
  i1,
  sel,
  o
  );

  input [6:0] i0;
  input [6:0] i1;
  input sel;
  output [6:0] o;



endmodule 

module binary_mux_s2_w9
  (
  i0,
  i1,
  i2,
  i3,
  sel,
  o
  );

  input [8:0] i0;
  input [8:0] i1;
  input [8:0] i2;
  input [8:0] i3;
  input [1:0] sel;
  output [8:0] o;



endmodule 

module binary_mux_s1_w21
  (
  i0,
  i1,
  sel,
  o
  );

  input [20:0] i0;
  input [20:0] i1;
  input sel;
  output [20:0] o;



endmodule 

module \pentagon_video(enable_2port_vram=false)(1,0)   // ../../rtl/video/pentagon_video.vhd(10)
  (
  BORDER,
  CLK,
  CLK2X,
  DI,
  ENA,
  INTA,
  MODE60,
  SCREEN_MODE,
  TURBO,
  VBUS_MODE,
  VID_RD,
  A,
  ATTR_O,
  BLINK,
  COUNT_BLOCK,
  HCNT,
  HSYNC,
  I,
  INT,
  ISPAPER,
  RGB,
  VCNT,
  VSYNC,
  pFF_CS
  );

  input [2:0] BORDER;  // ../../rtl/video/pentagon_video.vhd(18)
  input CLK;  // ../../rtl/video/pentagon_video.vhd(16)
  input CLK2X;  // ../../rtl/video/pentagon_video.vhd(15)
  input [7:0] DI;  // ../../rtl/video/pentagon_video.vhd(19)
  input ENA;  // ../../rtl/video/pentagon_video.vhd(17)
  input INTA;  // ../../rtl/video/pentagon_video.vhd(21)
  input MODE60;  // ../../rtl/video/pentagon_video.vhd(23)
  input [1:0] SCREEN_MODE;  // ../../rtl/video/pentagon_video.vhd(35)
  input [1:0] TURBO;  // ../../rtl/video/pentagon_video.vhd(20)
  input VBUS_MODE;  // ../../rtl/video/pentagon_video.vhd(39)
  input VID_RD;  // ../../rtl/video/pentagon_video.vhd(40)
  output [13:0] A;  // ../../rtl/video/pentagon_video.vhd(26)
  output [7:0] ATTR_O;  // ../../rtl/video/pentagon_video.vhd(25)
  output BLINK;  // ../../rtl/video/pentagon_video.vhd(34)
  output COUNT_BLOCK;  // ../../rtl/video/pentagon_video.vhd(36)
  output [9:0] HCNT;  // ../../rtl/video/pentagon_video.vhd(31)
  output HSYNC;  // ../../rtl/video/pentagon_video.vhd(29)
  output I;  // ../../rtl/video/pentagon_video.vhd(28)
  output INT;  // ../../rtl/video/pentagon_video.vhd(22)
  output ISPAPER;  // ../../rtl/video/pentagon_video.vhd(33)
  output [2:0] RGB;  // ../../rtl/video/pentagon_video.vhd(27)
  output [8:0] VCNT;  // ../../rtl/video/pentagon_video.vhd(32)
  output VSYNC;  // ../../rtl/video/pentagon_video.vhd(30)
  output pFF_CS;  // ../../rtl/video/pentagon_video.vhd(24)

  parameter enable_2port_vram = false;
  wire [7:0] attr;  // ../../rtl/video/pentagon_video.vhd(55)
  wire [7:0] attr_r;  // ../../rtl/video/pentagon_video.vhd(60)
  wire [7:0] bitmap;  // ../../rtl/video/pentagon_video.vhd(56)
  wire [2:0] chr_col_cnt;  // ../../rtl/video/pentagon_video.vhd(48)
  wire [2:0] chr_row_cnt;  // ../../rtl/video/pentagon_video.vhd(49)
  wire [5:0] hor_cnt;  // ../../rtl/video/pentagon_video.vhd(51)
  wire [4:0] invert;  // ../../rtl/video/pentagon_video.vhd(46)
  wire [4:0] n100;
  wire [2:0] n101;
  wire [2:0] n105;
  wire [7:0] n150;
  wire [7:0] n151;
  wire [7:0] n152;
  wire [7:0] n153;
  wire [7:0] n154;
  wire [7:0] n155;
  wire [7:0] n159;
  wire [7:0] n160;
  wire [7:0] n161;
  wire [7:0] n162;
  wire [7:0] n163;
  wire [7:0] n164;
  wire [4:0] n25;
  wire [5:0] n26;
  wire [5:0] n27;
  wire [4:0] n28;
  wire [5:0] n29;
  wire [5:0] n3;
  wire [4:0] n30;
  wire [2:0] n31;
  wire [5:0] n32;
  wire [4:0] n33;
  wire [2:0] n34;
  wire [5:0] n35;
  wire [5:0] n36;
  wire [4:0] n37;
  wire [2:0] n38;
  wire [5:0] n4;
  wire [2:0] n97;
  wire [5:0] n98;
  wire [5:0] n99;
  wire [7:0] shift_r;  // ../../rtl/video/pentagon_video.vhd(62)
  wire [5:0] ver_cnt;  // ../../rtl/video/pentagon_video.vhd(52)
  wire VIDEO_B;  // ../../rtl/video/pentagon_video.vhd(69)
  wire VIDEO_G;  // ../../rtl/video/pentagon_video.vhd(68)
  wire VIDEO_I;  // ../../rtl/video/pentagon_video.vhd(70)
  wire VIDEO_R;  // ../../rtl/video/pentagon_video.vhd(67)
  wire blank_r;  // ../../rtl/video/pentagon_video.vhd(59)
  wire int_sig;  // ../../rtl/video/pentagon_video.vhd(72)
  wire n0;
  wire n1;
  wire n10;
  wire n102;
  wire n103;
  wire n104;
  wire n106;
  wire n107;
  wire n108;
  wire n109;
  wire n11;
  wire n110;
  wire n111;
  wire n112;
  wire n113;
  wire n114;
  wire n115;
  wire n116;
  wire n117;
  wire n118;
  wire n119;
  wire n12;
  wire n120;
  wire n121;
  wire n122;
  wire n123;
  wire n124;
  wire n125;
  wire n126;
  wire n127;
  wire n128;
  wire n129;
  wire n13;
  wire n130;
  wire n131;
  wire n132;
  wire n133;
  wire n134;
  wire n135;
  wire n136;
  wire n137;
  wire n138;
  wire n139;
  wire n14;
  wire n140;
  wire n141;
  wire n142;
  wire n143;
  wire n144;
  wire n145;
  wire n146;
  wire n147;
  wire n148;
  wire n149;
  wire n15;
  wire n156;
  wire n157;
  wire n158;
  wire n16;
  wire n165;
  wire n166;
  wire n167;
  wire n168;
  wire n169;
  wire n17;
  wire n170;
  wire n171;
  wire n172;
  wire n173;
  wire n174;
  wire n18;
  wire n19;
  wire n2;
  wire n20;
  wire n21;
  wire n22;
  wire n23;
  wire n24;
  wire n39;
  wire n40;
  wire n41;
  wire n42;
  wire n43;
  wire n44;
  wire n45;
  wire n46;
  wire n47;
  wire n48;
  wire n49;
  wire n5;
  wire n50;
  wire n51;
  wire n52;
  wire n53;
  wire n54;
  wire n55;
  wire n56;
  wire n57;
  wire n58;
  wire n59;
  wire n6;
  wire n60;
  wire n61;
  wire n62;
  wire n63;
  wire n64;
  wire n65;
  wire n66;
  wire n67;
  wire n68;
  wire n69;
  wire n7;
  wire n70;
  wire n71;
  wire n72;
  wire n73;
  wire n74;
  wire n75;
  wire n76;
  wire n77;
  wire n78;
  wire n79;
  wire n8;
  wire n80;
  wire n81;
  wire n82;
  wire n83;
  wire n84;
  wire n85;
  wire n86;
  wire n87;
  wire n88;
  wire n89;
  wire n9;
  wire n90;
  wire n91;
  wire n92;
  wire n93;
  wire n94;
  wire n95;
  wire n96;
  wire paper;  // ../../rtl/video/pentagon_video.vhd(65)
  wire paper_r;  // ../../rtl/video/pentagon_video.vhd(58)

  AL_DFF HSYNC_reg (
    .clk(CLK2X),
    .d(n102),
    .reset(1'b0),
    .set(1'b0),
    .q(HSYNC));  // ../../rtl/video/pentagon_video.vhd(181)
  AL_DFF VIDEO_B_reg (
    .clk(CLK2X),
    .d(n120),
    .reset(1'b0),
    .set(1'b0),
    .q(VIDEO_B));  // ../../rtl/video/pentagon_video.vhd(217)
  AL_DFF VIDEO_G_reg (
    .clk(CLK2X),
    .d(n122),
    .reset(1'b0),
    .set(1'b0),
    .q(VIDEO_G));  // ../../rtl/video/pentagon_video.vhd(217)
  AL_DFF VIDEO_I_reg (
    .clk(CLK2X),
    .d(n123),
    .reset(1'b0),
    .set(1'b0),
    .q(VIDEO_I));  // ../../rtl/video/pentagon_video.vhd(217)
  AL_DFF VIDEO_R_reg (
    .clk(CLK2X),
    .d(n121),
    .reset(1'b0),
    .set(1'b0),
    .q(VIDEO_R));  // ../../rtl/video/pentagon_video.vhd(217)
  AL_DFF VSYNC_reg (
    .clk(CLK2X),
    .d(n103),
    .reset(1'b0),
    .set(1'b0),
    .q(VSYNC));  // ../../rtl/video/pentagon_video.vhd(181)
  add_pu6_pu6_o6 add0 (
    .i0(hor_cnt),
    .i1(6'b000001),
    .o(n3));
  add_pu5_pu5_o5 add1 (
    .i0(invert),
    .i1(5'b00001),
    .o(n25));
  add_pu6_pu6_o6 add2 (
    .i0(ver_cnt),
    .i1(6'b000001),
    .o(n26));
  add_pu3_pu3_o3 add3 (
    .i0(chr_row_cnt),
    .i1(3'b001),
    .o(n31));
  add_pu3_pu3_o3 add4 (
    .i0(chr_col_cnt),
    .i1(3'b001),
    .o(n97));
  AL_DFF blank_r_reg (
    .clk(CLK2X),
    .d(n148),
    .reset(1'b0),
    .set(1'b0),
    .q(blank_r));  // ../../rtl/video/pentagon_video.vhd(240)
  eq_w3 eq0 (
    .i0(chr_col_cnt),
    .i1(3'b111),
    .o(n1));  // ../../rtl/video/pentagon_video.vhd(83)
  eq_w6 eq1 (
    .i0(hor_cnt),
    .i1(6'b110111),
    .o(n2));  // ../../rtl/video/pentagon_video.vhd(85)
  eq_w4 eq10 (
    .i0(hor_cnt[5:2]),
    .i1(4'b1010),
    .o(n39));  // ../../rtl/video/pentagon_video.vhd(112)
  eq_w3 eq11 (
    .i0(chr_row_cnt),
    .i1(3'b011),
    .o(n46));  // ../../rtl/video/pentagon_video.vhd(120)
  eq_w3 eq12 (
    .i0(chr_row_cnt),
    .i1(3'b100),
    .o(n47));  // ../../rtl/video/pentagon_video.vhd(120)
  eq_w3 eq13 (
    .i0(chr_row_cnt),
    .i1(3'b101),
    .o(n48));  // ../../rtl/video/pentagon_video.vhd(120)
  eq_w2 eq14 (
    .i0(TURBO),
    .i1(2'b01),
    .o(n59));
  eq_w3 eq15 (
    .i0(chr_col_cnt),
    .i1(3'b110),
    .o(n60));  // ../../rtl/video/pentagon_video.vhd(131)
  eq_w2 eq16 (
    .i0(hor_cnt[1:0]),
    .i1(2'b11),
    .o(n61));  // ../../rtl/video/pentagon_video.vhd(131)
  eq_w6 eq17 (
    .i0(ver_cnt),
    .i1(6'b011101),
    .o(n63));  // ../../rtl/video/pentagon_video.vhd(132)
  eq_w4 eq18 (
    .i0(hor_cnt[5:2]),
    .i1(4'b1001),
    .o(n64));  // ../../rtl/video/pentagon_video.vhd(132)
  eq_w2 eq19 (
    .i0(TURBO),
    .i1(2'b10),
    .o(n69));
  eq_w6 eq2 (
    .i0(hor_cnt),
    .i1(6'b100111),
    .o(n5));  // ../../rtl/video/pentagon_video.vhd(91)
  eq_w5 eq20 (
    .i0(hor_cnt[5:1]),
    .i1(5'b10011),
    .o(n71));  // ../../rtl/video/pentagon_video.vhd(141)
  eq_w2 eq21 (
    .i0(TURBO),
    .i1(2'b11),
    .o(n75));
  eq_w3 eq22 (
    .i0(hor_cnt[2:0]),
    .i1(3'b111),
    .o(n79));  // ../../rtl/video/pentagon_video.vhd(159)
  eq_w3 eq23 (
    .i0(hor_cnt[5:3]),
    .i1(3'b100),
    .o(n81));  // ../../rtl/video/pentagon_video.vhd(160)
  eq_w3 eq24 (
    .i0(chr_col_cnt),
    .i1(3'b000),
    .o(n85));  // ../../rtl/video/pentagon_video.vhd(168)
  eq_w3 eq25 (
    .i0(chr_row_cnt),
    .i1(3'b000),
    .o(n86));  // ../../rtl/video/pentagon_video.vhd(169)
  eq_w3 eq26 (
    .i0(hor_cnt[5:3]),
    .i1(3'b000),
    .o(n87));  // ../../rtl/video/pentagon_video.vhd(169)
  eq_w5 eq27 (
    .i0(ver_cnt[5:1]),
    .i1(5'b01111),
    .o(n127));  // ../../rtl/video/pentagon_video.vhd(228)
  eq_w5 eq28 (
    .i0(ver_cnt[5:1]),
    .i1(5'b01110),
    .o(n129));  // ../../rtl/video/pentagon_video.vhd(228)
  eq_w4 eq29 (
    .i0(hor_cnt[5:2]),
    .i1(4'b1011),
    .o(n134));  // ../../rtl/video/pentagon_video.vhd(231)
  eq_w3 eq3 (
    .i0(chr_row_cnt),
    .i1(3'b111),
    .o(n6));  // ../../rtl/video/pentagon_video.vhd(92)
  eq_w6 eq30 (
    .i0(ver_cnt),
    .i1(6'b011110),
    .o(n136));  // ../../rtl/video/pentagon_video.vhd(231)
  eq_w6 eq4 (
    .i0(ver_cnt),
    .i1(6'b100111),
    .o(n7));  // ../../rtl/video/pentagon_video.vhd(93)
  eq_w2 eq5 (
    .i0(SCREEN_MODE),
    .i1(2'b00),
    .o(n9));
  eq_w6 eq6 (
    .i0(ver_cnt),
    .i1(6'b100000),
    .o(n12));  // ../../rtl/video/pentagon_video.vhd(94)
  eq_w6 eq7 (
    .i0(ver_cnt),
    .i1(6'b100110),
    .o(n15));  // ../../rtl/video/pentagon_video.vhd(95)
  eq_w2 eq8 (
    .i0(SCREEN_MODE),
    .i1(2'b01),
    .o(n16));
  eq_w6 eq9 (
    .i0(ver_cnt),
    .i1(6'b011111),
    .o(n19));  // ../../rtl/video/pentagon_video.vhd(96)
  AL_DFF int_sig_reg (
    .clk(CLK2X),
    .d(n104),
    .reset(1'b0),
    .set(1'b0),
    .q(int_sig));  // ../../rtl/video/pentagon_video.vhd(181)
  lt_u6_u6 lt0 (
    .ci(1'b1),
    .i0(6'b101000),
    .i1(hor_cnt),
    .o(n49));  // ../../rtl/video/pentagon_video.vhd(120)
  lt_u6_u6 lt1 (
    .ci(1'b0),
    .i0(hor_cnt),
    .i1(6'b001100),
    .o(n50));  // ../../rtl/video/pentagon_video.vhd(120)
  lt_u6_u6 lt2 (
    .ci(1'b0),
    .i0(6'b100110),
    .i1(hor_cnt),
    .o(n124));  // ../../rtl/video/pentagon_video.vhd(228)
  lt_u6_u6 lt3 (
    .ci(1'b0),
    .i0(hor_cnt),
    .i1(6'b110000),
    .o(n125));  // ../../rtl/video/pentagon_video.vhd(228)
  binary_mux_s1_w6 mux0 (
    .i0(n3),
    .i1(6'b000000),
    .sel(n2),
    .o(n4));  // ../../rtl/video/pentagon_video.vhd(89)
  binary_mux_s1_w6 mux1 (
    .i0(n26),
    .i1(6'b000000),
    .sel(n24),
    .o(n27));  // ../../rtl/video/pentagon_video.vhd(102)
  binary_mux_s1_w5 mux10 (
    .i0(invert),
    .i1(n33),
    .sel(n1),
    .o(n37));  // ../../rtl/video/pentagon_video.vhd(106)
  binary_mux_s1_w3 mux11 (
    .i0(chr_row_cnt),
    .i1(n34),
    .sel(n1),
    .o(n38));  // ../../rtl/video/pentagon_video.vhd(106)
  binary_mux_s1_w6 mux12 (
    .i0(hor_cnt),
    .i1(n35),
    .sel(n0),
    .o(n98));  // ../../rtl/video/pentagon_video.vhd(180)
  binary_mux_s1_w6 mux13 (
    .i0(ver_cnt),
    .i1(n36),
    .sel(n0),
    .o(n99));  // ../../rtl/video/pentagon_video.vhd(180)
  binary_mux_s1_w5 mux14 (
    .i0(invert),
    .i1(n37),
    .sel(n0),
    .o(n100));  // ../../rtl/video/pentagon_video.vhd(180)
  binary_mux_s1_w3 mux15 (
    .i0(chr_row_cnt),
    .i1(n38),
    .sel(n0),
    .o(n101));  // ../../rtl/video/pentagon_video.vhd(180)
  binary_mux_s1_w3 mux16 (
    .i0(chr_col_cnt),
    .i1(n97),
    .sel(n0),
    .o(n105));  // ../../rtl/video/pentagon_video.vhd(180)
  binary_mux_s1_w8 mux17 (
    .i0(attr_r),
    .i1(attr),
    .sel(n1),
    .o(n150));  // ../../rtl/video/pentagon_video.vhd(257)
  binary_mux_s1_w8 mux18 (
    .i0({shift_r[6:0],1'b0}),
    .i1(bitmap),
    .sel(n1),
    .o(n151));  // ../../rtl/video/pentagon_video.vhd(257)
  binary_mux_s1_w8 mux19 (
    .i0(attr_r),
    .i1(n150),
    .sel(ENA),
    .o(n152));  // ../../rtl/video/pentagon_video.vhd(258)
  binary_mux_s1_w5 mux2 (
    .i0(invert),
    .i1(n25),
    .sel(n24),
    .o(n28));  // ../../rtl/video/pentagon_video.vhd(102)
  binary_mux_s1_w8 mux20 (
    .i0(shift_r),
    .i1(n151),
    .sel(ENA),
    .o(n153));  // ../../rtl/video/pentagon_video.vhd(258)
  binary_mux_s1_w8 mux21 (
    .i0(attr_r),
    .i1(n152),
    .sel(CLK),
    .o(n154));  // ../../rtl/video/pentagon_video.vhd(259)
  binary_mux_s1_w8 mux22 (
    .i0(shift_r),
    .i1(n153),
    .sel(CLK),
    .o(n155));  // ../../rtl/video/pentagon_video.vhd(259)
  binary_mux_s1_w8 mux23 (
    .i0(bitmap),
    .i1(DI),
    .sel(n158),
    .o(n159));  // ../../rtl/video/pentagon_video.vhd(301)
  binary_mux_s1_w8 mux24 (
    .i0(DI),
    .i1(attr),
    .sel(n158),
    .o(n160));  // ../../rtl/video/pentagon_video.vhd(301)
  binary_mux_s1_w8 mux25 (
    .i0(bitmap),
    .i1(n159),
    .sel(VBUS_MODE),
    .o(n161));  // ../../rtl/video/pentagon_video.vhd(302)
  binary_mux_s1_w8 mux26 (
    .i0(attr),
    .i1(n160),
    .sel(VBUS_MODE),
    .o(n162));  // ../../rtl/video/pentagon_video.vhd(302)
  binary_mux_s1_w8 mux27 (
    .i0(bitmap),
    .i1(n161),
    .sel(n157),
    .o(n163));  // ../../rtl/video/pentagon_video.vhd(303)
  binary_mux_s1_w8 mux28 (
    .i0(attr),
    .i1(n162),
    .sel(n157),
    .o(n164));  // ../../rtl/video/pentagon_video.vhd(303)
  binary_mux_s1_w5 mux29 (
    .i0({3'b110,ver_cnt[4:3]}),
    .i1({ver_cnt[4:3],chr_row_cnt}),
    .sel(n165),
    .o(A[12:8]));  // ../../rtl/video/pentagon_video.vhd(311)
  binary_mux_s1_w6 mux3 (
    .i0(ver_cnt),
    .i1(n27),
    .sel(n6),
    .o(n29));  // ../../rtl/video/pentagon_video.vhd(103)
  binary_mux_s1_w5 mux4 (
    .i0(invert),
    .i1(n28),
    .sel(n6),
    .o(n30));  // ../../rtl/video/pentagon_video.vhd(103)
  binary_mux_s1_w6 mux5 (
    .i0(ver_cnt),
    .i1(n29),
    .sel(n5),
    .o(n32));  // ../../rtl/video/pentagon_video.vhd(105)
  binary_mux_s1_w5 mux6 (
    .i0(invert),
    .i1(n30),
    .sel(n5),
    .o(n33));  // ../../rtl/video/pentagon_video.vhd(105)
  binary_mux_s1_w3 mux7 (
    .i0(chr_row_cnt),
    .i1(n31),
    .sel(n5),
    .o(n34));  // ../../rtl/video/pentagon_video.vhd(105)
  binary_mux_s1_w6 mux8 (
    .i0(hor_cnt),
    .i1(n4),
    .sel(n1),
    .o(n35));  // ../../rtl/video/pentagon_video.vhd(106)
  binary_mux_s1_w6 mux9 (
    .i0(ver_cnt),
    .i1(n32),
    .sel(n1),
    .o(n36));  // ../../rtl/video/pentagon_video.vhd(106)
  ne_w6 neq0 (
    .i0(ver_cnt),
    .i1(6'b011111),
    .o(n41));  // ../../rtl/video/pentagon_video.vhd(118)
  ne_w6 neq1 (
    .i0(ver_cnt),
    .i1(6'b011011),
    .o(n43));  // ../../rtl/video/pentagon_video.vhd(118)
  AL_DFF paper_r_reg (
    .clk(CLK2X),
    .d(n149),
    .reset(1'b0),
    .set(1'b0),
    .q(paper_r));  // ../../rtl/video/pentagon_video.vhd(240)
  reg_ar_as_w6 reg0 (
    .clk(CLK2X),
    .d(n99),
    .reset(6'b000000),
    .set(6'b000000),
    .q(ver_cnt));  // ../../rtl/video/pentagon_video.vhd(181)
  reg_ar_as_w5 reg1 (
    .clk(CLK2X),
    .d(n100),
    .reset(5'b00000),
    .set(5'b00000),
    .q(invert));  // ../../rtl/video/pentagon_video.vhd(181)
  reg_ar_as_w3 reg2 (
    .clk(CLK2X),
    .d(n101),
    .reset(3'b000),
    .set(3'b000),
    .q(chr_row_cnt));  // ../../rtl/video/pentagon_video.vhd(181)
  reg_ar_as_w3 reg3 (
    .clk(CLK2X),
    .d(n105),
    .reset(3'b000),
    .set(3'b000),
    .q(chr_col_cnt));  // ../../rtl/video/pentagon_video.vhd(181)
  reg_ar_as_w8 reg4 (
    .clk(CLK2X),
    .d(n154),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(attr_r));  // ../../rtl/video/pentagon_video.vhd(260)
  reg_ar_as_w8 reg5 (
    .clk(CLK2X),
    .d(n155),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(shift_r));  // ../../rtl/video/pentagon_video.vhd(260)
  reg_ar_as_w8 reg6 (
    .clk(CLK2X),
    .d(n163),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(bitmap));  // ../../rtl/video/pentagon_video.vhd(304)
  reg_ar_as_w8 reg7 (
    .clk(CLK2X),
    .d(n164),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(attr));  // ../../rtl/video/pentagon_video.vhd(304)
  reg_ar_as_w6 reg8 (
    .clk(CLK2X),
    .d(n98),
    .reset(6'b000000),
    .set(6'b000000),
    .q(hor_cnt));  // ../../rtl/video/pentagon_video.vhd(181)
  and u10 (n17, n15, n8);  // ../../rtl/video/pentagon_video.vhd(95)
  and u100 (n128, n127, n8);  // ../../rtl/video/pentagon_video.vhd(228)
  and u101 (n130, n129, MODE60);  // ../../rtl/video/pentagon_video.vhd(228)
  or u102 (n131, n126, n128);  // ../../rtl/video/pentagon_video.vhd(228)
  or u103 (n132, n131, n130);  // ../../rtl/video/pentagon_video.vhd(228)
  and u104 (n133, n9, n132);  // ../../rtl/video/pentagon_video.vhd(228)
  buf u105 (VCNT[5], ver_cnt[2]);  // ../../rtl/video/pentagon_video.vhd(325)
  buf u106 (VCNT[4], ver_cnt[1]);  // ../../rtl/video/pentagon_video.vhd(325)
  buf u107 (VCNT[3], ver_cnt[0]);  // ../../rtl/video/pentagon_video.vhd(325)
  buf u108 (VCNT[2], chr_row_cnt[2]);  // ../../rtl/video/pentagon_video.vhd(325)
  and u109 (n135, n19, n8);  // ../../rtl/video/pentagon_video.vhd(231)
  and u11 (n18, n17, n16);  // ../../rtl/video/pentagon_video.vhd(95)
  and u110 (n137, n136, MODE60);  // ../../rtl/video/pentagon_video.vhd(231)
  or u111 (n138, n39, n134);  // ../../rtl/video/pentagon_video.vhd(231)
  or u112 (n139, n138, n135);  // ../../rtl/video/pentagon_video.vhd(231)
  or u113 (n140, n139, n137);  // ../../rtl/video/pentagon_video.vhd(231)
  and u114 (n141, n16, n140);  // ../../rtl/video/pentagon_video.vhd(231)
  not u115 (n142, n141);  // ../../rtl/video/pentagon_video.vhd(235)
  AL_MUX u116 (
    .i0(n142),
    .i1(1'b0),
    .sel(n133),
    .o(n143));  // ../../rtl/video/pentagon_video.vhd(235)
  AL_MUX u117 (
    .i0(blank_r),
    .i1(n143),
    .sel(n1),
    .o(n144));  // ../../rtl/video/pentagon_video.vhd(237)
  AL_MUX u118 (
    .i0(paper_r),
    .i1(paper),
    .sel(n1),
    .o(n145));  // ../../rtl/video/pentagon_video.vhd(237)
  AL_MUX u119 (
    .i0(blank_r),
    .i1(n144),
    .sel(ENA),
    .o(n146));  // ../../rtl/video/pentagon_video.vhd(238)
  buf u12 (A[3], hor_cnt[3]);  // ../../rtl/video/pentagon_video.vhd(307)
  AL_MUX u120 (
    .i0(paper_r),
    .i1(n145),
    .sel(ENA),
    .o(n147));  // ../../rtl/video/pentagon_video.vhd(238)
  AL_MUX u121 (
    .i0(blank_r),
    .i1(n146),
    .sel(CLK),
    .o(n148));  // ../../rtl/video/pentagon_video.vhd(239)
  AL_MUX u122 (
    .i0(paper_r),
    .i1(n147),
    .sel(CLK),
    .o(n149));  // ../../rtl/video/pentagon_video.vhd(239)
  buf u123 (VCNT[1], chr_row_cnt[1]);  // ../../rtl/video/pentagon_video.vhd(325)
  not u124 (n156, CLK);  // ../../rtl/video/pentagon_video.vhd(295)
  and u125 (n157, chr_col_cnt[0], n156);  // ../../rtl/video/pentagon_video.vhd(295)
  not u126 (n158, VID_RD);  // ../../rtl/video/pentagon_video.vhd(297)
  buf u127 (VCNT[0], chr_row_cnt[0]);  // ../../rtl/video/pentagon_video.vhd(325)
  and u128 (n165, VBUS_MODE, n158);  // ../../rtl/video/pentagon_video.vhd(309)
  not u129 (n166, hor_cnt[5]);  // ../../rtl/video/pentagon_video.vhd(315)
  and u13 (n20, n19, MODE60);  // ../../rtl/video/pentagon_video.vhd(96)
  not u130 (n167, ver_cnt[5]);  // ../../rtl/video/pentagon_video.vhd(315)
  not u131 (n168, ver_cnt[4]);  // ../../rtl/video/pentagon_video.vhd(315)
  not u132 (n169, ver_cnt[3]);  // ../../rtl/video/pentagon_video.vhd(315)
  or u133 (n170, n168, n169);  // ../../rtl/video/pentagon_video.vhd(315)
  and u134 (n171, n166, n167);  // ../../rtl/video/pentagon_video.vhd(315)
  and u135 (pFF_CS, n171, n170);  // ../../rtl/video/pentagon_video.vhd(315)
  not u136 (paper, pFF_CS);  // ../../rtl/video/pentagon_video.vhd(315)
  buf u137 (A[0], hor_cnt[0]);  // ../../rtl/video/pentagon_video.vhd(307)
  buf u138 (I, VIDEO_I);  // ../../rtl/video/pentagon_video.vhd(318)
  buf u139 (A[13], 1'b0);  // ../../rtl/video/pentagon_video.vhd(307)
  and u14 (n21, n20, n16);  // ../../rtl/video/pentagon_video.vhd(96)
  buf u140 (RGB[0], VIDEO_B);  // ../../rtl/video/pentagon_video.vhd(317)
  buf u141 (INT, int_sig);  // ../../rtl/video/pentagon_video.vhd(322)
  buf u142 (ATTR_O[0], attr_r[0]);  // ../../rtl/video/pentagon_video.vhd(320)
  buf u143 (HCNT[0], chr_col_cnt[0]);  // ../../rtl/video/pentagon_video.vhd(324)
  buf u144 (A[7], ver_cnt[2]);  // ../../rtl/video/pentagon_video.vhd(307)
  and u145 (ISPAPER, pFF_CS, blank_r);  // ../../rtl/video/pentagon_video.vhd(326)
  buf u146 (BLINK, invert[4]);  // ../../rtl/video/pentagon_video.vhd(328)
  buf u147 (A[6], ver_cnt[1]);  // ../../rtl/video/pentagon_video.vhd(307)
  not u148 (n172, chr_col_cnt[2]);  // ../../rtl/video/pentagon_video.vhd(330)
  not u149 (n173, hor_cnt[0]);  // ../../rtl/video/pentagon_video.vhd(330)
  or u15 (n22, n11, n14);  // ../../rtl/video/pentagon_video.vhd(96)
  or u150 (n174, n172, n173);  // ../../rtl/video/pentagon_video.vhd(330)
  and u151 (COUNT_BLOCK, pFF_CS, n174);  // ../../rtl/video/pentagon_video.vhd(330)
  or u16 (n23, n22, n18);  // ../../rtl/video/pentagon_video.vhd(96)
  or u17 (n24, n23, n21);  // ../../rtl/video/pentagon_video.vhd(96)
  buf u18 (A[2], hor_cnt[2]);  // ../../rtl/video/pentagon_video.vhd(307)
  not u19 (n40, n39);  // ../../rtl/video/pentagon_video.vhd(116)
  and u2 (n0, CLK, ENA);  // ../../rtl/video/pentagon_video.vhd(81)
  buf u20 (A[1], hor_cnt[1]);  // ../../rtl/video/pentagon_video.vhd(307)
  and u21 (n42, n41, n8);  // ../../rtl/video/pentagon_video.vhd(118)
  and u22 (n44, n43, MODE60);  // ../../rtl/video/pentagon_video.vhd(118)
  or u23 (n45, n42, n44);  // ../../rtl/video/pentagon_video.vhd(118)
  or u24 (n51, n49, n50);  // ../../rtl/video/pentagon_video.vhd(120)
  and u25 (n52, n48, n51);  // ../../rtl/video/pentagon_video.vhd(120)
  or u26 (n53, n46, n47);  // ../../rtl/video/pentagon_video.vhd(120)
  or u27 (n54, n53, n52);  // ../../rtl/video/pentagon_video.vhd(120)
  not u28 (n55, n54);  // ../../rtl/video/pentagon_video.vhd(124)
  AL_MUX u29 (
    .i0(n55),
    .i1(1'b1),
    .sel(n45),
    .o(n56));  // ../../rtl/video/pentagon_video.vhd(124)
  not u3 (n8, MODE60);  // ../../rtl/video/pentagon_video.vhd(93)
  AL_MUX u30 (
    .i0(HSYNC),
    .i1(n40),
    .sel(n1),
    .o(n57));  // ../../rtl/video/pentagon_video.vhd(126)
  AL_MUX u31 (
    .i0(VSYNC),
    .i1(n56),
    .sel(n1),
    .o(n58));  // ../../rtl/video/pentagon_video.vhd(126)
  and u32 (n62, n60, n61);  // ../../rtl/video/pentagon_video.vhd(131)
  buf u33 (RGB[2], VIDEO_R);  // ../../rtl/video/pentagon_video.vhd(317)
  and u34 (n65, n63, n6);  // ../../rtl/video/pentagon_video.vhd(132)
  and u35 (n66, n65, n64);  // ../../rtl/video/pentagon_video.vhd(132)
  not u36 (n67, n66);  // ../../rtl/video/pentagon_video.vhd(136)
  AL_MUX u37 (
    .i0(int_sig),
    .i1(n67),
    .sel(n62),
    .o(n68));  // ../../rtl/video/pentagon_video.vhd(137)
  buf u38 (RGB[1], VIDEO_G);  // ../../rtl/video/pentagon_video.vhd(317)
  and u39 (n70, n60, hor_cnt[0]);  // ../../rtl/video/pentagon_video.vhd(140)
  and u4 (n10, n7, n8);  // ../../rtl/video/pentagon_video.vhd(93)
  buf u40 (ATTR_O[7], attr_r[7]);  // ../../rtl/video/pentagon_video.vhd(320)
  buf u41 (ATTR_O[6], attr_r[6]);  // ../../rtl/video/pentagon_video.vhd(320)
  buf u42 (ATTR_O[5], attr_r[5]);  // ../../rtl/video/pentagon_video.vhd(320)
  and u43 (n72, n65, n71);  // ../../rtl/video/pentagon_video.vhd(141)
  not u44 (n73, n72);  // ../../rtl/video/pentagon_video.vhd(145)
  AL_MUX u45 (
    .i0(int_sig),
    .i1(n73),
    .sel(n70),
    .o(n74));  // ../../rtl/video/pentagon_video.vhd(146)
  buf u46 (ATTR_O[4], attr_r[4]);  // ../../rtl/video/pentagon_video.vhd(320)
  buf u47 (ATTR_O[3], attr_r[3]);  // ../../rtl/video/pentagon_video.vhd(320)
  buf u48 (ATTR_O[2], attr_r[2]);  // ../../rtl/video/pentagon_video.vhd(320)
  buf u49 (ATTR_O[1], attr_r[1]);  // ../../rtl/video/pentagon_video.vhd(320)
  and u5 (n11, n10, n9);  // ../../rtl/video/pentagon_video.vhd(93)
  buf u50 (HCNT[9], 1'b0);  // ../../rtl/video/pentagon_video.vhd(324)
  and u51 (n76, n65, n5);  // ../../rtl/video/pentagon_video.vhd(150)
  not u52 (n77, n76);  // ../../rtl/video/pentagon_video.vhd(154)
  AL_MUX u53 (
    .i0(int_sig),
    .i1(n77),
    .sel(n60),
    .o(n78));  // ../../rtl/video/pentagon_video.vhd(155)
  buf u54 (HCNT[8], hor_cnt[5]);  // ../../rtl/video/pentagon_video.vhd(324)
  buf u55 (HCNT[7], hor_cnt[4]);  // ../../rtl/video/pentagon_video.vhd(324)
  and u56 (n80, n60, n79);  // ../../rtl/video/pentagon_video.vhd(159)
  buf u57 (HCNT[6], hor_cnt[3]);  // ../../rtl/video/pentagon_video.vhd(324)
  buf u58 (HCNT[5], hor_cnt[2]);  // ../../rtl/video/pentagon_video.vhd(324)
  buf u59 (HCNT[4], hor_cnt[1]);  // ../../rtl/video/pentagon_video.vhd(324)
  buf u6 (A[5], ver_cnt[0]);  // ../../rtl/video/pentagon_video.vhd(307)
  and u60 (n82, n65, n81);  // ../../rtl/video/pentagon_video.vhd(160)
  not u61 (n83, n82);  // ../../rtl/video/pentagon_video.vhd(164)
  AL_MUX u62 (
    .i0(int_sig),
    .i1(n83),
    .sel(n80),
    .o(n84));  // ../../rtl/video/pentagon_video.vhd(165)
  buf u63 (HCNT[3], hor_cnt[0]);  // ../../rtl/video/pentagon_video.vhd(324)
  buf u64 (HCNT[2], chr_col_cnt[2]);  // ../../rtl/video/pentagon_video.vhd(324)
  and u65 (n88, n19, n86);  // ../../rtl/video/pentagon_video.vhd(169)
  and u66 (n89, n88, n87);  // ../../rtl/video/pentagon_video.vhd(169)
  not u67 (n90, n89);  // ../../rtl/video/pentagon_video.vhd(173)
  AL_MUX u68 (
    .i0(int_sig),
    .i1(n90),
    .sel(n85),
    .o(n91));  // ../../rtl/video/pentagon_video.vhd(174)
  AL_MUX u69 (
    .i0(int_sig),
    .i1(n91),
    .sel(n16),
    .o(n92));  // ../../rtl/video/pentagon_video.vhd(175)
  and u7 (n13, n12, MODE60);  // ../../rtl/video/pentagon_video.vhd(94)
  AL_MUX u70 (
    .i0(n92),
    .i1(n84),
    .sel(n9),
    .o(n93));  // ../../rtl/video/pentagon_video.vhd(175)
  AL_MUX u71 (
    .i0(n93),
    .i1(n78),
    .sel(n75),
    .o(n94));  // ../../rtl/video/pentagon_video.vhd(177)
  AL_MUX u72 (
    .i0(n94),
    .i1(n74),
    .sel(n69),
    .o(n95));  // ../../rtl/video/pentagon_video.vhd(177)
  AL_MUX u73 (
    .i0(n95),
    .i1(n68),
    .sel(n59),
    .o(n96));  // ../../rtl/video/pentagon_video.vhd(177)
  AL_MUX u74 (
    .i0(HSYNC),
    .i1(n57),
    .sel(n0),
    .o(n102));  // ../../rtl/video/pentagon_video.vhd(180)
  AL_MUX u75 (
    .i0(VSYNC),
    .i1(n58),
    .sel(n0),
    .o(n103));  // ../../rtl/video/pentagon_video.vhd(180)
  AL_MUX u76 (
    .i0(int_sig),
    .i1(n96),
    .sel(n0),
    .o(n104));  // ../../rtl/video/pentagon_video.vhd(180)
  buf u77 (HCNT[1], chr_col_cnt[1]);  // ../../rtl/video/pentagon_video.vhd(324)
  not u78 (n106, paper_r);  // ../../rtl/video/pentagon_video.vhd(189)
  and u79 (n107, attr_r[7], invert[4]);  // ../../rtl/video/pentagon_video.vhd(191)
  and u8 (n14, n13, n9);  // ../../rtl/video/pentagon_video.vhd(94)
  xor u80 (n108, shift_r[7], n107);  // ../../rtl/video/pentagon_video.vhd(191)
  AL_MUX u81 (
    .i0(attr_r[3]),
    .i1(attr_r[0]),
    .sel(n108),
    .o(n109));  // ../../rtl/video/pentagon_video.vhd(199)
  AL_MUX u82 (
    .i0(attr_r[4]),
    .i1(attr_r[1]),
    .sel(n108),
    .o(n110));  // ../../rtl/video/pentagon_video.vhd(199)
  AL_MUX u83 (
    .i0(attr_r[5]),
    .i1(attr_r[2]),
    .sel(n108),
    .o(n111));  // ../../rtl/video/pentagon_video.vhd(199)
  not u84 (n112, blank_r);  // ../../rtl/video/pentagon_video.vhd(202)
  AL_MUX u85 (
    .i0(BORDER[0]),
    .i1(1'b0),
    .sel(n112),
    .o(n113));  // ../../rtl/video/pentagon_video.vhd(214)
  AL_MUX u86 (
    .i0(BORDER[1]),
    .i1(1'b0),
    .sel(n112),
    .o(n114));  // ../../rtl/video/pentagon_video.vhd(214)
  AL_MUX u87 (
    .i0(BORDER[2]),
    .i1(1'b0),
    .sel(n112),
    .o(n115));  // ../../rtl/video/pentagon_video.vhd(214)
  AL_MUX u88 (
    .i0(n113),
    .i1(n109),
    .sel(n106),
    .o(n116));  // ../../rtl/video/pentagon_video.vhd(215)
  AL_MUX u89 (
    .i0(n114),
    .i1(n110),
    .sel(n106),
    .o(n117));  // ../../rtl/video/pentagon_video.vhd(215)
  buf u9 (A[4], hor_cnt[4]);  // ../../rtl/video/pentagon_video.vhd(307)
  AL_MUX u90 (
    .i0(n115),
    .i1(n111),
    .sel(n106),
    .o(n118));  // ../../rtl/video/pentagon_video.vhd(215)
  AL_MUX u91 (
    .i0(1'b0),
    .i1(attr_r[6]),
    .sel(n106),
    .o(n119));  // ../../rtl/video/pentagon_video.vhd(215)
  AL_MUX u92 (
    .i0(VIDEO_B),
    .i1(n116),
    .sel(n0),
    .o(n120));  // ../../rtl/video/pentagon_video.vhd(216)
  AL_MUX u93 (
    .i0(VIDEO_R),
    .i1(n117),
    .sel(n0),
    .o(n121));  // ../../rtl/video/pentagon_video.vhd(216)
  AL_MUX u94 (
    .i0(VIDEO_G),
    .i1(n118),
    .sel(n0),
    .o(n122));  // ../../rtl/video/pentagon_video.vhd(216)
  AL_MUX u95 (
    .i0(VIDEO_I),
    .i1(n119),
    .sel(n0),
    .o(n123));  // ../../rtl/video/pentagon_video.vhd(216)
  buf u96 (VCNT[8], ver_cnt[5]);  // ../../rtl/video/pentagon_video.vhd(325)
  buf u97 (VCNT[7], ver_cnt[4]);  // ../../rtl/video/pentagon_video.vhd(325)
  and u98 (n126, n124, n125);  // ../../rtl/video/pentagon_video.vhd(228)
  buf u99 (VCNT[6], ver_cnt[3]);  // ../../rtl/video/pentagon_video.vhd(325)

endmodule 

module \profi_video(enable_2port_vram=false)(1,0)   // ../../rtl/video/profi_video.vhd(10)
  (
  BORDER,
  CLK,
  CLK2X,
  DI,
  DS80,
  ENA,
  INTA,
  MODE60,
  TURBO,
  VBUS_MODE,
  VID_RD,
  A,
  ATTR_O,
  BLANK,
  HCNT,
  HSYNC,
  I,
  INT,
  ISPAPER,
  RGB,
  VCNT,
  VID_RD2,
  VSYNC,
  pFF_CS
  );

  input [3:0] BORDER;  // ../../rtl/video/profi_video.vhd(21)
  input CLK;  // ../../rtl/video/profi_video.vhd(16)
  input CLK2X;  // ../../rtl/video/profi_video.vhd(15)
  input [7:0] DI;  // ../../rtl/video/profi_video.vhd(23)
  input DS80;  // ../../rtl/video/profi_video.vhd(35)
  input ENA;  // ../../rtl/video/profi_video.vhd(17)
  input INTA;  // ../../rtl/video/profi_video.vhd(19)
  input MODE60;  // ../../rtl/video/profi_video.vhd(26)
  input [1:0] TURBO;  // ../../rtl/video/profi_video.vhd(18)
  input VBUS_MODE;  // ../../rtl/video/profi_video.vhd(38)
  input VID_RD;  // ../../rtl/video/profi_video.vhd(39)
  output [13:0] A;  // ../../rtl/video/profi_video.vhd(22)
  output [7:0] ATTR_O;  // ../../rtl/video/profi_video.vhd(28)
  output BLANK;  // ../../rtl/video/profi_video.vhd(29)
  output [9:0] HCNT;  // ../../rtl/video/profi_video.vhd(32)
  output HSYNC;  // ../../rtl/video/profi_video.vhd(30)
  output I;  // ../../rtl/video/profi_video.vhd(25)
  output INT;  // ../../rtl/video/profi_video.vhd(20)
  output ISPAPER;  // ../../rtl/video/profi_video.vhd(34)
  output [2:0] RGB;  // ../../rtl/video/profi_video.vhd(24)
  output [8:0] VCNT;  // ../../rtl/video/profi_video.vhd(33)
  output VID_RD2;  // ../../rtl/video/profi_video.vhd(42)
  output VSYNC;  // ../../rtl/video/profi_video.vhd(31)
  output pFF_CS;  // ../../rtl/video/profi_video.vhd(27)

  parameter enable_2port_vram = false;
  wire [7:0] at_reg;  // ../../rtl/video/profi_video.vhd(101)
  wire [7:0] attr_reg;  // ../../rtl/video/profi_video.vhd(102)
  wire [9:0] h_cnt;  // ../../rtl/video/profi_video.vhd(94)
  wire [9:0] n1;
  wire [8:0] n10;
  wire [8:0] n11;
  wire [8:0] n12;
  wire [9:0] n2;
  wire [9:0] n41;
  wire [8:0] n42;
  wire [7:0] n48;
  wire [7:0] n49;
  wire [7:0] n52;
  wire [7:0] n53;
  wire [7:0] n60;
  wire [7:0] n61;
  wire [7:0] n62;
  wire [7:0] n63;
  wire [7:0] n64;
  wire [7:0] n65;
  wire [3:0] n66;
  wire [2:0] n71;
  wire [3:0] n74;
  wire [3:0] n75;
  wire [3:0] n76;
  wire [3:0] n77;
  wire [7:0] pixel_reg;  // ../../rtl/video/profi_video.vhd(100)
  wire [3:0] rgbi;  // ../../rtl/video/profi_video.vhd(107)
  wire [8:0] v_cnt;  // ../../rtl/video/profi_video.vhd(95)
  wire [7:0] vid_reg;  // ../../rtl/video/profi_video.vhd(99)
  wire bl_int;  // ../../rtl/video/profi_video.vhd(108)
  wire blank1;  // ../../rtl/video/profi_video.vhd(112)
  wire blank_sig;  // ../../rtl/video/profi_video.vhd(106)
  wire h_sync;  // ../../rtl/video/profi_video.vhd(103)
  wire i78;  // ../../rtl/video/profi_video.vhd(110)
  wire int_sig;  // ../../rtl/video/profi_video.vhd(105)
  wire n0;
  wire n13;
  wire n14;
  wire n15;
  wire n16;
  wire n17;
  wire n18;
  wire n19;
  wire n20;
  wire n21;
  wire n22;
  wire n23;
  wire n24;
  wire n25;
  wire n26;
  wire n27;
  wire n28;
  wire n29;
  wire n3;
  wire n30;
  wire n31;
  wire n32;
  wire n33;
  wire n34;
  wire n35;
  wire n36;
  wire n37;
  wire n38;
  wire n39;
  wire n4;
  wire n40;
  wire n43;
  wire n44;
  wire n45;
  wire n46;
  wire n47;
  wire n5;
  wire n50;
  wire n51;
  wire n54;
  wire n55;
  wire n56;
  wire n57;
  wire n58;
  wire n59;
  wire n6;
  wire n67;
  wire n68;
  wire n69;
  wire n7;
  wire n70;
  wire n72;
  wire n73;
  wire n78;
  wire n79;
  wire n8;
  wire n80;
  wire n81;
  wire n82;
  wire n83;
  wire n84;
  wire n85;
  wire n86;
  wire n87;
  wire n88;
  wire n89;
  wire n9;
  wire n90;
  wire n91;
  wire n92;
  wire paper;  // ../../rtl/video/profi_video.vhd(96)
  wire paper1;  // ../../rtl/video/profi_video.vhd(97)
  wire v_sync;  // ../../rtl/video/profi_video.vhd(104)

  add_pu10_pu10_o10 add0 (
    .i0(h_cnt),
    .i1(10'b0000000001),
    .o(n1));
  add_pu9_pu9_o9 add1 (
    .i0(v_cnt),
    .i1(9'b000000001),
    .o(n10));
  AL_DFF bl_int_reg (
    .clk(CLK2X),
    .d(n46),
    .reset(1'b0),
    .set(1'b0),
    .q(bl_int));  // ../../rtl/video/profi_video.vhd(162)
  AL_DFF blank1_reg (
    .clk(CLK2X),
    .d(n55),
    .reset(1'b0),
    .set(1'b0),
    .q(blank1));  // ../../rtl/video/profi_video.vhd(204)
  eq_w10 eq0 (
    .i0(h_cnt),
    .i1(10'b1011111111),
    .o(n0));  // ../../rtl/video/profi_video.vhd(121)
  eq_w10 eq1 (
    .i0(h_cnt),
    .i1(10'b1001001111),
    .o(n3));  // ../../rtl/video/profi_video.vhd(127)
  eq_w3 eq10 (
    .i0(h_cnt[2:0]),
    .i1(3'b111),
    .o(n47));  // ../../rtl/video/profi_video.vhd(197)
  eq_w9 eq2 (
    .i0(v_cnt),
    .i1(9'b100110111),
    .o(n4));  // ../../rtl/video/profi_video.vhd(128)
  eq_w9 eq3 (
    .i0(v_cnt),
    .i1(9'b100000111),
    .o(n7));  // ../../rtl/video/profi_video.vhd(128)
  eq_w9 eq4 (
    .i0(v_cnt),
    .i1(9'b011110110),
    .o(n14));  // ../../rtl/video/profi_video.vhd(135)
  eq_w9 eq5 (
    .i0(v_cnt),
    .i1(9'b100011000),
    .o(n17));  // ../../rtl/video/profi_video.vhd(137)
  eq_w9 eq6 (
    .i0(v_cnt),
    .i1(9'b011111111),
    .o(n19));  // ../../rtl/video/profi_video.vhd(137)
  eq_w10 eq7 (
    .i0(h_cnt),
    .i1(10'b1010010000),
    .o(n24));  // ../../rtl/video/profi_video.vhd(143)
  eq_w9 eq8 (
    .i0(v_cnt),
    .i1(9'b100000001),
    .o(n28));  // ../../rtl/video/profi_video.vhd(148)
  eq_w2 eq9 (
    .i0(TURBO),
    .i1(2'b00),
    .o(n29));
  AL_DFF h_sync_reg (
    .clk(CLK2X),
    .d(n44),
    .reset(1'b0),
    .set(1'b0),
    .q(h_sync));  // ../../rtl/video/profi_video.vhd(162)
  AL_DFF int_sig_reg (
    .clk(CLK2X),
    .d(n45),
    .reset(1'b0),
    .set(1'b0),
    .q(int_sig));  // ../../rtl/video/profi_video.vhd(162)
  lt_u10_u10 lt0 (
    .ci(1'b0),
    .i0(10'b1010010000),
    .i1(h_cnt),
    .o(n27));  // ../../rtl/video/profi_video.vhd(148)
  lt_u10_u10 lt1 (
    .ci(1'b0),
    .i0(10'b1011000010),
    .i1(h_cnt),
    .o(n32));  // ../../rtl/video/profi_video.vhd(148)
  lt_u9_u9 lt10 (
    .ci(1'b0),
    .i0(v_cnt),
    .i1(9'b011110000),
    .o(n91));  // ../../rtl/video/profi_video.vhd(247)
  lt_u3_u3 lt2 (
    .ci(1'b0),
    .i0(h_cnt[2:0]),
    .i1(3'b111),
    .o(n57));  // ../../rtl/video/profi_video.vhd(211)
  lt_u10_u10 lt3 (
    .ci(1'b0),
    .i0(10'b1000101111),
    .i1(h_cnt),
    .o(n78));  // ../../rtl/video/profi_video.vhd(246)
  lt_u10_u10 lt4 (
    .ci(1'b0),
    .i0(h_cnt),
    .i1(10'b1011010000),
    .o(n79));  // ../../rtl/video/profi_video.vhd(246)
  lt_u9_u9 lt5 (
    .ci(1'b0),
    .i0(9'b011111111),
    .i1(v_cnt),
    .o(n81));  // ../../rtl/video/profi_video.vhd(246)
  lt_u9_u9 lt6 (
    .ci(1'b0),
    .i0(v_cnt),
    .i1(9'b100101000),
    .o(n82));  // ../../rtl/video/profi_video.vhd(246)
  lt_u9_u9 lt7 (
    .ci(1'b0),
    .i0(9'b011101111),
    .i1(v_cnt),
    .o(n85));  // ../../rtl/video/profi_video.vhd(246)
  lt_u9_u9 lt8 (
    .ci(1'b0),
    .i0(v_cnt),
    .i1(9'b100001000),
    .o(n86));  // ../../rtl/video/profi_video.vhd(246)
  lt_u10_u10 lt9 (
    .ci(1'b0),
    .i0(h_cnt),
    .i1(10'b1000000000),
    .o(n90));  // ../../rtl/video/profi_video.vhd(247)
  binary_mux_s1_w10 mux0 (
    .i0(n1),
    .i1(10'b0000000000),
    .sel(n0),
    .o(n2));  // ../../rtl/video/profi_video.vhd(125)
  binary_mux_s1_w9 mux1 (
    .i0(n10),
    .i1(9'b000000000),
    .sel(n9),
    .o(n11));  // ../../rtl/video/profi_video.vhd(132)
  binary_mux_s1_w8 mux10 (
    .i0(DI),
    .i1(at_reg),
    .sel(n59),
    .o(n61));  // ../../rtl/video/profi_video.vhd(217)
  binary_mux_s1_w8 mux11 (
    .i0(vid_reg),
    .i1(n60),
    .sel(VBUS_MODE),
    .o(n62));  // ../../rtl/video/profi_video.vhd(218)
  binary_mux_s1_w8 mux12 (
    .i0(at_reg),
    .i1(n61),
    .sel(VBUS_MODE),
    .o(n63));  // ../../rtl/video/profi_video.vhd(218)
  binary_mux_s1_w8 mux13 (
    .i0(vid_reg),
    .i1(n62),
    .sel(n58),
    .o(n64));  // ../../rtl/video/profi_video.vhd(219)
  binary_mux_s1_w8 mux14 (
    .i0(at_reg),
    .i1(n63),
    .sel(n58),
    .o(n65));  // ../../rtl/video/profi_video.vhd(219)
  binary_mux_s3_w1 mux15 (
    .i0(pixel_reg[0]),
    .i1(pixel_reg[1]),
    .i2(pixel_reg[2]),
    .i3(pixel_reg[3]),
    .i4(pixel_reg[4]),
    .i5(pixel_reg[5]),
    .i6(pixel_reg[6]),
    .i7(pixel_reg[7]),
    .sel(n66[2:0]),
    .o(n67));  // ../../rtl/video/profi_video.vhd(233)
  binary_mux_s1_w4 mux16 (
    .i0({n71,n73}),
    .i1({attr_reg[1],attr_reg[2],attr_reg[0],attr_reg[6]}),
    .sel(n70),
    .o(n74));  // ../../rtl/video/profi_video.vhd(239)
  binary_mux_s1_w4 mux17 (
    .i0(n74),
    .i1({attr_reg[4],attr_reg[5],attr_reg[3],i78}),
    .sel(n69),
    .o(n75));  // ../../rtl/video/profi_video.vhd(239)
  binary_mux_s1_w4 mux18 (
    .i0(n75),
    .i1(4'b0000),
    .sel(blank1),
    .o(n76));  // ../../rtl/video/profi_video.vhd(239)
  binary_mux_s1_w4 mux19 (
    .i0(rgbi),
    .i1(n76),
    .sel(CLK),
    .o(n77));  // ../../rtl/video/profi_video.vhd(240)
  binary_mux_s1_w9 mux2 (
    .i0(v_cnt),
    .i1(n11),
    .sel(n3),
    .o(n12));  // ../../rtl/video/profi_video.vhd(133)
  binary_mux_s1_w10 mux3 (
    .i0(h_cnt),
    .i1(n2),
    .sel(CLK),
    .o(n41));  // ../../rtl/video/profi_video.vhd(161)
  binary_mux_s1_w9 mux4 (
    .i0(v_cnt),
    .i1(n12),
    .sel(CLK),
    .o(n42));  // ../../rtl/video/profi_video.vhd(161)
  binary_mux_s1_w8 mux5 (
    .i0(pixel_reg),
    .i1(vid_reg),
    .sel(n47),
    .o(n48));  // ../../rtl/video/profi_video.vhd(202)
  binary_mux_s1_w8 mux6 (
    .i0(attr_reg),
    .i1(at_reg),
    .sel(n47),
    .o(n49));  // ../../rtl/video/profi_video.vhd(202)
  binary_mux_s1_w8 mux7 (
    .i0(pixel_reg),
    .i1(n48),
    .sel(CLK),
    .o(n52));  // ../../rtl/video/profi_video.vhd(203)
  binary_mux_s1_w8 mux8 (
    .i0(attr_reg),
    .i1(n49),
    .sel(CLK),
    .o(n53));  // ../../rtl/video/profi_video.vhd(203)
  binary_mux_s1_w8 mux9 (
    .i0(vid_reg),
    .i1(DI),
    .sel(n59),
    .o(n60));  // ../../rtl/video/profi_video.vhd(217)
  ne_w2 neq0 (
    .i0(TURBO),
    .i1(2'b00),
    .o(n33));
  AL_DFF paper1_reg (
    .clk(CLK2X),
    .d(n54),
    .reset(1'b0),
    .set(1'b0),
    .q(paper1));  // ../../rtl/video/profi_video.vhd(204)
  reg_ar_as_w9 reg0 (
    .clk(CLK2X),
    .d(n42),
    .reset(9'b000000000),
    .set(9'b000000000),
    .q(v_cnt));  // ../../rtl/video/profi_video.vhd(162)
  reg_ar_as_w8 reg1 (
    .clk(CLK2X),
    .d(n52),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(pixel_reg));  // ../../rtl/video/profi_video.vhd(204)
  reg_ar_as_w8 reg2 (
    .clk(CLK2X),
    .d(n53),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(attr_reg));  // ../../rtl/video/profi_video.vhd(204)
  reg_ar_as_w8 reg3 (
    .clk(CLK2X),
    .d(n64),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(vid_reg));  // ../../rtl/video/profi_video.vhd(220)
  reg_ar_as_w8 reg4 (
    .clk(CLK2X),
    .d(n65),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(at_reg));  // ../../rtl/video/profi_video.vhd(220)
  reg_ar_as_w4 reg5 (
    .clk(CLK2X),
    .d(n77),
    .reset(4'b0000),
    .set(4'b0000),
    .q(rgbi));  // ../../rtl/video/profi_video.vhd(241)
  reg_ar_as_w10 reg6 (
    .clk(CLK2X),
    .d(n41),
    .reset(10'b0000000000),
    .set(10'b0000000000),
    .q(h_cnt));  // ../../rtl/video/profi_video.vhd(162)
  add_pu4_mu4_o4 sub0 (
    .i0(4'b0111),
    .i1({1'b0,h_cnt[2:0]}),
    .o({open_n7,n66[2:0]}));  // ../../rtl/video/profi_video.vhd(233)
  and u10 (n13, n7, n5);  // ../../rtl/video/profi_video.vhd(135)
  buf u100 (A[10], v_cnt[2]);  // ../../rtl/video/profi_video.vhd(223)
  buf u101 (A[11], v_cnt[6]);  // ../../rtl/video/profi_video.vhd(223)
  buf u102 (A[12], v_cnt[7]);  // ../../rtl/video/profi_video.vhd(223)
  not u103 (n71[1], BORDER[2]);  // ../../rtl/video/profi_video.vhd(238)
  not u104 (n71[2], BORDER[1]);  // ../../rtl/video/profi_video.vhd(238)
  and u11 (n15, n14, MODE60);  // ../../rtl/video/profi_video.vhd(135)
  or u12 (n16, n13, n15);  // ../../rtl/video/profi_video.vhd(135)
  buf u13 (VCNT[5], v_cnt[5]);  // ../../rtl/video/profi_video.vhd(257)
  and u14 (n18, n17, n5);  // ../../rtl/video/profi_video.vhd(137)
  and u15 (n20, n19, MODE60);  // ../../rtl/video/profi_video.vhd(137)
  or u16 (n21, n18, n20);  // ../../rtl/video/profi_video.vhd(137)
  AL_MUX u17 (
    .i0(v_sync),
    .i1(1'b1),
    .sel(n21),
    .o(n22));  // ../../rtl/video/profi_video.vhd(139)
  AL_MUX u18 (
    .i0(n22),
    .i1(1'b0),
    .sel(n16),
    .o(n23));  // ../../rtl/video/profi_video.vhd(139)
  buf u19 (VCNT[4], v_cnt[4]);  // ../../rtl/video/profi_video.vhd(257)
  buf u2 (HCNT[2], h_cnt[2]);  // ../../rtl/video/profi_video.vhd(256)
  AL_MUX u20 (
    .i0(h_sync),
    .i1(1'b1),
    .sel(n24),
    .o(n25));  // ../../rtl/video/profi_video.vhd(145)
  AL_MUX u21 (
    .i0(n25),
    .i1(1'b0),
    .sel(n3),
    .o(n26));  // ../../rtl/video/profi_video.vhd(145)
  and u22 (n30, n27, n28);  // ../../rtl/video/profi_video.vhd(148)
  and u23 (n31, n30, n29);  // ../../rtl/video/profi_video.vhd(148)
  buf u24 (VCNT[3], v_cnt[3]);  // ../../rtl/video/profi_video.vhd(257)
  and u25 (n34, n32, n28);  // ../../rtl/video/profi_video.vhd(148)
  and u26 (n35, n34, n33);  // ../../rtl/video/profi_video.vhd(148)
  or u27 (n36, n31, n35);  // ../../rtl/video/profi_video.vhd(148)
  not u28 (n37, n36);  // ../../rtl/video/profi_video.vhd(152)
  buf u29 (VCNT[8], v_cnt[8]);  // ../../rtl/video/profi_video.vhd(257)
  buf u3 (HCNT[1], h_cnt[1]);  // ../../rtl/video/profi_video.vhd(256)
  not u30 (n38, int_sig);  // ../../rtl/video/profi_video.vhd(158)
  AL_MUX u31 (
    .i0(bl_int),
    .i1(n38),
    .sel(h_cnt[4]),
    .o(n39));  // ../../rtl/video/profi_video.vhd(159)
  AL_MUX u32 (
    .i0(1'b1),
    .i1(n39),
    .sel(INTA),
    .o(n40));  // ../../rtl/video/profi_video.vhd(159)
  AL_MUX u33 (
    .i0(v_sync),
    .i1(n23),
    .sel(CLK),
    .o(n43));  // ../../rtl/video/profi_video.vhd(161)
  AL_MUX u34 (
    .i0(h_sync),
    .i1(n26),
    .sel(CLK),
    .o(n44));  // ../../rtl/video/profi_video.vhd(161)
  AL_MUX u35 (
    .i0(int_sig),
    .i1(n37),
    .sel(CLK),
    .o(n45));  // ../../rtl/video/profi_video.vhd(161)
  AL_MUX u36 (
    .i0(bl_int),
    .i1(n40),
    .sel(CLK),
    .o(n46));  // ../../rtl/video/profi_video.vhd(161)
  AL_MUX u37 (
    .i0(paper1),
    .i1(paper),
    .sel(n47),
    .o(n50));  // ../../rtl/video/profi_video.vhd(202)
  AL_MUX u38 (
    .i0(blank1),
    .i1(blank_sig),
    .sel(n47),
    .o(n51));  // ../../rtl/video/profi_video.vhd(202)
  AL_MUX u39 (
    .i0(paper1),
    .i1(n50),
    .sel(CLK),
    .o(n54));  // ../../rtl/video/profi_video.vhd(203)
  not u4 (n5, MODE60);  // ../../rtl/video/profi_video.vhd(128)
  AL_MUX u40 (
    .i0(blank1),
    .i1(n51),
    .sel(CLK),
    .o(n55));  // ../../rtl/video/profi_video.vhd(203)
  not u41 (n56, CLK);  // ../../rtl/video/profi_video.vhd(211)
  and u42 (n58, n56, n57);  // ../../rtl/video/profi_video.vhd(211)
  not u43 (n59, VID_RD);  // ../../rtl/video/profi_video.vhd(213)
  not u44 (A[13], h_cnt[3]);  // ../../rtl/video/profi_video.vhd(223)
  buf u45 (HCNT[6], h_cnt[6]);  // ../../rtl/video/profi_video.vhd(256)
  buf u46 (HCNT[7], h_cnt[7]);  // ../../rtl/video/profi_video.vhd(256)
  buf u47 (HCNT[8], h_cnt[8]);  // ../../rtl/video/profi_video.vhd(256)
  buf u48 (HCNT[9], h_cnt[9]);  // ../../rtl/video/profi_video.vhd(256)
  buf u49 (RGB[1], rgbi[2]);  // ../../rtl/video/profi_video.vhd(252)
  and u5 (n6, n4, n5);  // ../../rtl/video/profi_video.vhd(128)
  buf u50 (RGB[2], rgbi[3]);  // ../../rtl/video/profi_video.vhd(252)
  buf u51 (ATTR_O[1], attr_reg[1]);  // ../../rtl/video/profi_video.vhd(250)
  buf u52 (ATTR_O[2], attr_reg[2]);  // ../../rtl/video/profi_video.vhd(250)
  buf u53 (ATTR_O[3], attr_reg[3]);  // ../../rtl/video/profi_video.vhd(250)
  buf u54 (ATTR_O[4], attr_reg[4]);  // ../../rtl/video/profi_video.vhd(250)
  buf u55 (ATTR_O[5], attr_reg[5]);  // ../../rtl/video/profi_video.vhd(250)
  buf u56 (ATTR_O[6], attr_reg[6]);  // ../../rtl/video/profi_video.vhd(250)
  not u57 (n68, n67);  // ../../rtl/video/profi_video.vhd(233)
  and u58 (n69, paper1, n68);  // ../../rtl/video/profi_video.vhd(233)
  buf u59 (VCNT[2], v_cnt[2]);  // ../../rtl/video/profi_video.vhd(257)
  and u6 (n8, n7, MODE60);  // ../../rtl/video/profi_video.vhd(128)
  buf u60 (VCNT[1], v_cnt[1]);  // ../../rtl/video/profi_video.vhd(257)
  and u61 (n70, paper1, n67);  // ../../rtl/video/profi_video.vhd(235)
  buf u62 (HCNT[3], h_cnt[3]);  // ../../rtl/video/profi_video.vhd(256)
  buf u63 (HCNT[4], h_cnt[4]);  // ../../rtl/video/profi_video.vhd(256)
  buf u64 (HCNT[5], h_cnt[5]);  // ../../rtl/video/profi_video.vhd(256)
  not u65 (n72, BORDER[3]);  // ../../rtl/video/profi_video.vhd(238)
  and u66 (n73, n72, bl_int);  // ../../rtl/video/profi_video.vhd(238)
  not u67 (n71[0], BORDER[0]);  // ../../rtl/video/profi_video.vhd(238)
  AL_MUX u68 (
    .i0(attr_reg[6]),
    .i1(attr_reg[7]),
    .sel(DS80),
    .o(i78));  // ../../rtl/video/profi_video.vhd(244)
  and u69 (n80, n78, n79);  // ../../rtl/video/profi_video.vhd(246)
  or u7 (n9, n6, n8);  // ../../rtl/video/profi_video.vhd(128)
  buf u70 (VCNT[0], v_cnt[0]);  // ../../rtl/video/profi_video.vhd(257)
  and u71 (n83, n81, n82);  // ../../rtl/video/profi_video.vhd(246)
  and u72 (n84, n83, n5);  // ../../rtl/video/profi_video.vhd(246)
  and u73 (n87, n85, n86);  // ../../rtl/video/profi_video.vhd(246)
  and u74 (n88, n87, MODE60);  // ../../rtl/video/profi_video.vhd(246)
  or u75 (n89, n80, n84);  // ../../rtl/video/profi_video.vhd(246)
  or u76 (blank_sig, n89, n88);  // ../../rtl/video/profi_video.vhd(246)
  and u77 (paper, n90, n91);  // ../../rtl/video/profi_video.vhd(247)
  buf u78 (pFF_CS, paper);  // ../../rtl/video/profi_video.vhd(249)
  buf u79 (A[0], h_cnt[4]);  // ../../rtl/video/profi_video.vhd(223)
  buf u8 (VCNT[7], v_cnt[7]);  // ../../rtl/video/profi_video.vhd(257)
  buf u80 (INT, int_sig);  // ../../rtl/video/profi_video.vhd(251)
  buf u81 (ATTR_O[0], attr_reg[0]);  // ../../rtl/video/profi_video.vhd(250)
  buf u82 (I, rgbi[0]);  // ../../rtl/video/profi_video.vhd(253)
  buf u83 (HSYNC, h_sync);  // ../../rtl/video/profi_video.vhd(254)
  buf u84 (VSYNC, v_sync);  // ../../rtl/video/profi_video.vhd(255)
  buf u85 (RGB[0], rgbi[1]);  // ../../rtl/video/profi_video.vhd(252)
  buf u86 (HCNT[0], h_cnt[0]);  // ../../rtl/video/profi_video.vhd(256)
  not u87 (n92, blank1);  // ../../rtl/video/profi_video.vhd(258)
  and u88 (ISPAPER, paper, n92);  // ../../rtl/video/profi_video.vhd(258)
  buf u89 (BLANK, blank1);  // ../../rtl/video/profi_video.vhd(259)
  buf u9 (VCNT[6], v_cnt[6]);  // ../../rtl/video/profi_video.vhd(257)
  buf u90 (ATTR_O[7], attr_reg[7]);  // ../../rtl/video/profi_video.vhd(250)
  buf u91 (A[1], h_cnt[5]);  // ../../rtl/video/profi_video.vhd(223)
  buf u92 (A[2], h_cnt[6]);  // ../../rtl/video/profi_video.vhd(223)
  buf u93 (A[3], h_cnt[7]);  // ../../rtl/video/profi_video.vhd(223)
  buf u94 (A[4], h_cnt[8]);  // ../../rtl/video/profi_video.vhd(223)
  buf u95 (A[5], v_cnt[3]);  // ../../rtl/video/profi_video.vhd(223)
  buf u96 (A[6], v_cnt[4]);  // ../../rtl/video/profi_video.vhd(223)
  buf u97 (A[7], v_cnt[5]);  // ../../rtl/video/profi_video.vhd(223)
  buf u98 (A[8], v_cnt[0]);  // ../../rtl/video/profi_video.vhd(223)
  buf u99 (A[9], v_cnt[1]);  // ../../rtl/video/profi_video.vhd(223)
  AL_DFF v_sync_reg (
    .clk(CLK2X),
    .d(n43),
    .reset(1'b0),
    .set(1'b0),
    .q(v_sync));  // ../../rtl/video/profi_video.vhd(162)

endmodule 

module binary_mux_s1_w9
  (
  i0,
  i1,
  sel,
  o
  );

  input [8:0] i0;
  input [8:0] i1;
  input sel;
  output [8:0] o;



endmodule 

module binary_mux_s4_w9
  (
  i0,
  i1,
  i10,
  i11,
  i12,
  i13,
  i14,
  i15,
  i2,
  i3,
  i4,
  i5,
  i6,
  i7,
  i8,
  i9,
  sel,
  o
  );

  input [8:0] i0;
  input [8:0] i1;
  input [8:0] i10;
  input [8:0] i11;
  input [8:0] i12;
  input [8:0] i13;
  input [8:0] i14;
  input [8:0] i15;
  input [8:0] i2;
  input [8:0] i3;
  input [8:0] i4;
  input [8:0] i5;
  input [8:0] i6;
  input [8:0] i7;
  input [8:0] i8;
  input [8:0] i9;
  input [3:0] sel;
  output [8:0] o;



endmodule 

module reg_ar_as_w9
  (
  clk,
  d,
  en,
  reset,
  set,
  q
  );

  input clk;
  input [8:0] d;
  input en;
  input [8:0] reset;
  input [8:0] set;
  output [8:0] q;



endmodule 

module rom_font1  // al_ip/rom_font1.vhd(17)
  (
  addra,
  clka,
  rsta,
  doa
  );

  input [10:0] addra;  // al_ip/rom_font1.vhd(21)
  input clka;  // al_ip/rom_font1.vhd(22)
  input rsta;  // al_ip/rom_font1.vhd(23)
  output [7:0] doa;  // al_ip/rom_font1.vhd(19)


  AL_LOGIC_BRAM #(
    //.FORCE_KEEP("OFF"),
    //.INIT_FILE("../../../rtl/video/font.mif"),
    .ADDR_WIDTH_A(11),
    .ADDR_WIDTH_B(11),
    .BYTE_A(1),
    .BYTE_B(1),
    .BYTE_ENABLE(0),
    .DATA_DEPTH_A(2048),
    .DATA_DEPTH_B(2048),
    .DATA_WIDTH_A(8),
    .DATA_WIDTH_B(8),
    .DEBUGGABLE("NO"),
    .FILL_ALL("NONE"),
    .IMPLEMENT("9K"),
    .MODE("SP"),
    .PACKABLE("NO"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst (
    .addra(addra),
    .addrb(11'b00000000000),
    .bea(1'b0),
    .beb(1'b0),
    .cea(1'b1),
    .ceb(1'b0),
    .clka(clka),
    .clkb(1'b0),
    .dia(8'b00000000),
    .dib(8'b00000000),
    .ocea(1'b0),
    .oceb(1'b0),
    .rsta(rsta),
    .rstb(1'b0),
    .wea(1'b0),
    .web(1'b0),
    .doa(doa));  // al_ip/rom_font1.vhd(30)

endmodule 

module icons  // ../../rtl/video/icons.vhd(6)
  (
  CLK,
  CLK2,
  CLK4,
  DS80,
  HCNT,
  OSD_ICONS,
  RGB_I,
  STATUS_CF,
  STATUS_FD,
  STATUS_SD,
  VCNT,
  RGB_O
  );

  input CLK;  // ../../rtl/video/icons.vhd(8)
  input CLK2;  // ../../rtl/video/icons.vhd(9)
  input CLK4;  // ../../rtl/video/icons.vhd(10)
  input DS80;  // ../../rtl/video/icons.vhd(13)
  input [9:0] HCNT;  // ../../rtl/video/icons.vhd(14)
  input OSD_ICONS;  // ../../rtl/video/icons.vhd(20)
  input [8:0] RGB_I;  // ../../rtl/video/icons.vhd(11)
  input STATUS_CF;  // ../../rtl/video/icons.vhd(18)
  input STATUS_FD;  // ../../rtl/video/icons.vhd(19)
  input STATUS_SD;  // ../../rtl/video/icons.vhd(17)
  input [8:0] VCNT;  // ../../rtl/video/icons.vhd(15)
  output [8:0] RGB_O;  // ../../rtl/video/icons.vhd(12)

  wire [20:0] cnt_icon_cf;  // ../../rtl/video/icons.vhd(57)
  wire [20:0] cnt_icon_fd;  // ../../rtl/video/icons.vhd(55)
  wire [20:0] cnt_icon_sd;  // ../../rtl/video/icons.vhd(56)
  wire [10:0] icon_addr;  // ../../rtl/video/icons.vhd(26)
  wire [0:0] icon_pixel;  // ../../rtl/video/icons.vhd(36)
  wire [2:0] icon_pos;  // ../../rtl/video/icons.vhd(53)
  wire [3:0] icon_x;  // ../../rtl/video/icons.vhd(34)
  wire [3:0] icon_y;  // ../../rtl/video/icons.vhd(35)
  wire [20:0] n23;
  wire [20:0] n24;
  wire [20:0] n25;
  wire [20:0] n26;
  wire [20:0] n27;
  wire [20:0] n28;
  wire [20:0] n29;
  wire [20:0] n30;
  wire [20:0] n31;
  wire [20:0] n32;
  wire [20:0] n33;
  wire [20:0] n34;
  wire [8:0] n47;
  wire [8:0] n48;
  wire icons_h;  // ../../rtl/video/icons.vhd(50)
  wire is_icon_cf;  // ../../rtl/video/icons.vhd(40)
  wire is_icon_fd;  // ../../rtl/video/icons.vhd(38)
  wire is_icon_sd;  // ../../rtl/video/icons.vhd(39)
  wire n0;
  wire n1;
  wire n10;
  wire n11;
  wire n12;
  wire n13;
  wire n14;
  wire n15;
  wire n16;
  wire n17;
  wire n18;
  wire n19;
  wire n2;
  wire n20;
  wire n21;
  wire n22;
  wire n3;
  wire n35;
  wire n36;
  wire n37;
  wire n38;
  wire n39;
  wire n4;
  wire n40;
  wire n41;
  wire n42;
  wire n43;
  wire n44;
  wire n45;
  wire n46;
  wire n5;
  wire n6;
  wire n7;
  wire n8;
  wire n9;
  wire paper_icon_cf;  // ../../rtl/video/icons.vhd(30)
  wire paper_icon_fd;  // ../../rtl/video/icons.vhd(28)
  wire paper_icon_sd;  // ../../rtl/video/icons.vhd(29)

  rom_font2 U_FONT_ICONS (
    .addra(icon_addr),
    .clka(CLK),
    .rsta(1'b0),
    .doa(icon_pixel));  // ../../rtl/video/icons.vhd(62)
  add_pu21_pu21_o21 add0 (
    .i0(cnt_icon_fd),
    .i1(21'b000000000000000000001),
    .o(n23));
  add_pu21_pu21_o21 add1 (
    .i0(cnt_icon_sd),
    .i1(21'b000000000000000000001),
    .o(n26));
  add_pu21_pu21_o21 add2 (
    .i0(cnt_icon_cf),
    .i1(21'b000000000000000000001),
    .o(n29));
  lt_u10_u10 lt0 (
    .ci(1'b1),
    .i0(10'b0100001000),
    .i1(HCNT),
    .o(n0));
  lt_u10_u10 lt1 (
    .ci(1'b0),
    .i0(HCNT),
    .i1(10'b0100011000),
    .o(n1));
  lt_u21_u21 lt10 (
    .ci(1'b0),
    .i0(cnt_icon_sd),
    .i1(21'b111111111111111111111),
    .o(is_icon_sd));
  lt_u21_u21 lt11 (
    .ci(1'b0),
    .i0(cnt_icon_cf),
    .i1(21'b111111111111111111111),
    .o(is_icon_cf));
  lt_u10_u10 lt2 (
    .ci(1'b1),
    .i0(10'b0100100000),
    .i1(HCNT),
    .o(n5));
  lt_u10_u10 lt3 (
    .ci(1'b0),
    .i0(HCNT),
    .i1(10'b0100110000),
    .o(n6));
  lt_u9_u9 lt4 (
    .ci(1'b0),
    .i0(VCNT),
    .i1(9'b000010000),
    .o(n9));
  lt_u9_u9 lt5 (
    .ci(1'b1),
    .i0(9'b000010000),
    .i1(VCNT),
    .o(n10));
  lt_u9_u9 lt6 (
    .ci(1'b0),
    .i0(VCNT),
    .i1(9'b000100000),
    .o(n11));
  lt_u9_u9 lt7 (
    .ci(1'b1),
    .i0(9'b000100000),
    .i1(VCNT),
    .o(n13));
  lt_u9_u9 lt8 (
    .ci(1'b0),
    .i0(VCNT),
    .i1(9'b000110000),
    .o(n14));
  lt_u21_u21 lt9 (
    .ci(1'b0),
    .i0(cnt_icon_fd),
    .i1(21'b111111111111111111111),
    .o(is_icon_fd));
  binary_mux_s1_w21 mux0 (
    .i0(cnt_icon_fd),
    .i1(n23),
    .sel(is_icon_fd),
    .o(n24));  // ../../rtl/video/icons.vhd(121)
  binary_mux_s1_w21 mux1 (
    .i0(n24),
    .i1(21'b000000000000000000000),
    .sel(STATUS_FD),
    .o(n25));  // ../../rtl/video/icons.vhd(121)
  binary_mux_s1_w9 mux10 (
    .i0(n47),
    .i1(9'b000011001),
    .sel(n44),
    .o(n48));  // ../../rtl/video/icons.vhd(143)
  binary_mux_s1_w9 mux11 (
    .i0(n48),
    .i1(9'b000011001),
    .sel(n42),
    .o(RGB_O));  // ../../rtl/video/icons.vhd(145)
  binary_mux_s1_w21 mux2 (
    .i0(cnt_icon_sd),
    .i1(n26),
    .sel(is_icon_sd),
    .o(n27));  // ../../rtl/video/icons.vhd(126)
  binary_mux_s1_w21 mux3 (
    .i0(n27),
    .i1(21'b000000000000000000000),
    .sel(STATUS_SD),
    .o(n28));  // ../../rtl/video/icons.vhd(126)
  binary_mux_s1_w21 mux4 (
    .i0(cnt_icon_cf),
    .i1(n29),
    .sel(is_icon_cf),
    .o(n30));  // ../../rtl/video/icons.vhd(131)
  binary_mux_s1_w21 mux5 (
    .i0(n30),
    .i1(21'b000000000000000000000),
    .sel(STATUS_CF),
    .o(n31));  // ../../rtl/video/icons.vhd(131)
  binary_mux_s1_w21 mux6 (
    .i0(cnt_icon_fd),
    .i1(n25),
    .sel(n22),
    .o(n32));  // ../../rtl/video/icons.vhd(132)
  binary_mux_s1_w21 mux7 (
    .i0(cnt_icon_sd),
    .i1(n28),
    .sel(n22),
    .o(n33));  // ../../rtl/video/icons.vhd(132)
  binary_mux_s1_w21 mux8 (
    .i0(cnt_icon_cf),
    .i1(n31),
    .sel(n22),
    .o(n34));  // ../../rtl/video/icons.vhd(132)
  binary_mux_s1_w9 mux9 (
    .i0(RGB_I),
    .i1(9'b000011001),
    .sel(n46),
    .o(n47));  // ../../rtl/video/icons.vhd(144)
  reg_ar_as_w21 reg0 (
    .clk(CLK),
    .d(n32),
    .reset(21'b000000000000000000000),
    .set(21'b000000000000000000000),
    .q(cnt_icon_fd));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w21 reg1 (
    .clk(CLK),
    .d(n33),
    .reset(21'b000000000000000000000),
    .set(21'b000000000000000000000),
    .q(cnt_icon_sd));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w21 reg2 (
    .clk(CLK),
    .d(n34),
    .reset(21'b000000000000000000000),
    .set(21'b000000000000000000000),
    .q(cnt_icon_cf));  // ../../rtl/video/icons.vhd(133)
  latch_ar_as_w3 reg3 (
    .clk(1'b0),
    .d(3'bxxx),
    .reset({n17,n38,n35}),
    .set({1'b0,n40,n37}),
    .q(icon_pos));  // ../../rtl/video/icons.vhd(80)
  and u10 (n12, icons_h, n10);  // ../../rtl/video/icons.vhd(77)
  and u11 (paper_icon_sd, n12, n11);  // ../../rtl/video/icons.vhd(77)
  and u12 (n15, icons_h, n13);  // ../../rtl/video/icons.vhd(78)
  and u13 (paper_icon_cf, n15, n14);  // ../../rtl/video/icons.vhd(78)
  or u14 (n16, paper_icon_sd, paper_icon_cf);  // ../../rtl/video/icons.vhd(81)
  or u15 (n17, paper_icon_fd, n16);  // ../../rtl/video/icons.vhd(83)
  not u16 (n18, paper_icon_sd);  // ../../rtl/video/icons.vhd(81)
  buf u17 (icon_x[1], HCNT[1]);  // ../../rtl/video/icons.vhd(70)
  and u19 (n40, n17, n19);  // ../../rtl/video/icons.vhd(80)
  buf u2 (icon_x[0], HCNT[0]);  // ../../rtl/video/icons.vhd(70)
  buf u20 (icon_y[3], VCNT[3]);  // ../../rtl/video/icons.vhd(71)
  buf u21 (icon_y[2], VCNT[2]);  // ../../rtl/video/icons.vhd(71)
  AL_MUX u22 (
    .i0(n18),
    .i1(1'b0),
    .sel(paper_icon_fd),
    .o(n19));  // ../../rtl/video/icons.vhd(83)
  buf u23 (icon_y[1], VCNT[1]);  // ../../rtl/video/icons.vhd(71)
  buf u24 (icon_addr[10], icon_y[3]);  // ../../rtl/video/icons.vhd(110)
  and u25 (n37, n17, n20);  // ../../rtl/video/icons.vhd(80)
  buf u26 (icon_addr[9], icon_pos[2]);  // ../../rtl/video/icons.vhd(110)
  buf u27 (icon_addr[8], icon_pos[1]);  // ../../rtl/video/icons.vhd(110)
  AL_MUX u28 (
    .i0(paper_icon_sd),
    .i1(1'b0),
    .sel(paper_icon_fd),
    .o(n20));  // ../../rtl/video/icons.vhd(83)
  buf u29 (icon_addr[7], icon_pos[0]);  // ../../rtl/video/icons.vhd(110)
  and u3 (n2, DS80, n0);  // ../../rtl/video/icons.vhd(73)
  buf u30 (icon_addr[5], icon_y[2]);  // ../../rtl/video/icons.vhd(110)
  not u31 (n21, icon_x[3]);  // ../../rtl/video/icons.vhd(110)
  AL_MUX u32 (
    .i0(icon_x[3]),
    .i1(n21),
    .sel(DS80),
    .o(icon_addr[6]));  // ../../rtl/video/icons.vhd(111)
  buf u33 (icon_x[3], HCNT[3]);  // ../../rtl/video/icons.vhd(70)
  not u34 (n22, CLK2);  // ../../rtl/video/icons.vhd(116)
  buf u35 (icon_y[0], VCNT[0]);  // ../../rtl/video/icons.vhd(71)
  buf u36 (icon_addr[4], icon_y[1]);  // ../../rtl/video/icons.vhd(110)
  buf u37 (icon_addr[3], icon_y[0]);  // ../../rtl/video/icons.vhd(110)
  and u38 (n41, paper_icon_fd, icon_pixel[0]);  // ../../rtl/video/icons.vhd(142)
  and u39 (n42, n41, is_icon_fd);  // ../../rtl/video/icons.vhd(142)
  and u4 (n3, n2, n1);  // ../../rtl/video/icons.vhd(73)
  and u40 (n43, paper_icon_sd, icon_pixel[0]);  // ../../rtl/video/icons.vhd(143)
  and u41 (n44, n43, is_icon_sd);  // ../../rtl/video/icons.vhd(143)
  and u42 (n45, paper_icon_cf, icon_pixel[0]);  // ../../rtl/video/icons.vhd(144)
  and u43 (n46, n45, is_icon_cf);  // ../../rtl/video/icons.vhd(144)
  buf u44 (icon_x[2], HCNT[2]);  // ../../rtl/video/icons.vhd(70)
  buf u45 (icon_addr[0], icon_x[0]);  // ../../rtl/video/icons.vhd(110)
  not u46 (n39, n19);  // ../../rtl/video/icons.vhd(80)
  and u47 (n38, n17, n39);  // ../../rtl/video/icons.vhd(80)
  buf u48 (icon_addr[1], icon_x[1]);  // ../../rtl/video/icons.vhd(110)
  not u49 (n36, n20);  // ../../rtl/video/icons.vhd(80)
  not u5 (n4, DS80);  // ../../rtl/video/icons.vhd(74)
  and u50 (n35, n17, n36);  // ../../rtl/video/icons.vhd(80)
  buf u51 (icon_addr[2], icon_x[2]);  // ../../rtl/video/icons.vhd(110)
  and u6 (n7, n4, n5);  // ../../rtl/video/icons.vhd(74)
  and u7 (n8, n7, n6);  // ../../rtl/video/icons.vhd(74)
  or u8 (icons_h, n3, n8);  // ../../rtl/video/icons.vhd(74)
  and u9 (paper_icon_fd, icons_h, n9);  // ../../rtl/video/icons.vhd(76)

endmodule 

module screen1  // al_ip/screen1.vhd(17)
  (
  addra,
  addrb,
  clka,
  clkb,
  dia,
  dib,
  wea,
  web,
  doa,
  dob
  );

  input [9:0] addra;  // al_ip/screen1.vhd(22)
  input [9:0] addrb;  // al_ip/screen1.vhd(27)
  input clka;  // al_ip/screen1.vhd(24)
  input clkb;  // al_ip/screen1.vhd(29)
  input [15:0] dia;  // al_ip/screen1.vhd(21)
  input [15:0] dib;  // al_ip/screen1.vhd(26)
  input wea;  // al_ip/screen1.vhd(23)
  input web;  // al_ip/screen1.vhd(28)
  output [15:0] doa;  // al_ip/screen1.vhd(19)
  output [15:0] dob;  // al_ip/screen1.vhd(25)


  AL_LOGIC_BRAM #(
    //.FORCE_KEEP("OFF"),
    //.INIT_FILE("NONE"),
    .ADDR_WIDTH_A(10),
    .ADDR_WIDTH_B(10),
    .BYTE_A(1),
    .BYTE_B(1),
    .BYTE_ENABLE(0),
    .DATA_DEPTH_A(1024),
    .DATA_DEPTH_B(1024),
    .DATA_WIDTH_A(16),
    .DATA_WIDTH_B(16),
    .DEBUGGABLE("NO"),
    .FILL_ALL("NONE"),
    .IMPLEMENT("9K"),
    .MODE("DP"),
    .PACKABLE("NO"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst (
    .addra(addra),
    .addrb(addrb),
    .bea(1'b0),
    .beb(1'b0),
    .cea(1'b1),
    .ceb(1'b1),
    .clka(clka),
    .clkb(clkb),
    .dia(dia),
    .dib(dib),
    .ocea(1'b0),
    .oceb(1'b0),
    .rsta(1'b0),
    .rstb(1'b0),
    .wea(wea),
    .web(web),
    .doa(doa),
    .dob(dob));  // al_ip/screen1.vhd(37)

endmodule 

module lt_u10_u10
  (
  ci,
  i0,
  i1,
  o
  );

  input ci;
  input [9:0] i0;
  input [9:0] i1;
  output o;



endmodule 

module lt_u9_u9
  (
  ci,
  i0,
  i1,
  o
  );

  input ci;
  input [8:0] i0;
  input [8:0] i1;
  output o;



endmodule 

module binary_mux_s3_w8
  (
  i0,
  i1,
  i2,
  i3,
  i4,
  i5,
  i6,
  i7,
  sel,
  o
  );

  input [7:0] i0;
  input [7:0] i1;
  input [7:0] i2;
  input [7:0] i3;
  input [7:0] i4;
  input [7:0] i5;
  input [7:0] i6;
  input [7:0] i7;
  input [2:0] sel;
  output [7:0] o;



endmodule 

module binary_mux_s4_w10
  (
  i0,
  i1,
  i10,
  i11,
  i12,
  i13,
  i14,
  i15,
  i2,
  i3,
  i4,
  i5,
  i6,
  i7,
  i8,
  i9,
  sel,
  o
  );

  input [9:0] i0;
  input [9:0] i1;
  input [9:0] i10;
  input [9:0] i11;
  input [9:0] i12;
  input [9:0] i13;
  input [9:0] i14;
  input [9:0] i15;
  input [9:0] i2;
  input [9:0] i3;
  input [9:0] i4;
  input [9:0] i5;
  input [9:0] i6;
  input [9:0] i7;
  input [9:0] i8;
  input [9:0] i9;
  input [3:0] sel;
  output [9:0] o;



endmodule 

module binary_mux_s3_w10
  (
  i0,
  i1,
  i2,
  i3,
  i4,
  i5,
  i6,
  i7,
  sel,
  o
  );

  input [9:0] i0;
  input [9:0] i1;
  input [9:0] i2;
  input [9:0] i3;
  input [9:0] i4;
  input [9:0] i5;
  input [9:0] i6;
  input [9:0] i7;
  input [2:0] sel;
  output [9:0] o;



endmodule 

module ne_w16
  (
  i0,
  i1,
  o
  );

  input [15:0] i0;
  input [15:0] i1;
  output o;



endmodule 

module latch_ar_as_w11
  (
  clk,
  d,
  en,
  reset,
  set,
  q
  );

  input clk;
  input [10:0] d;
  input en;
  input [10:0] reset;
  input [10:0] set;
  output [10:0] q;



endmodule 

module onehot_mux_s5_w10
  (
  i0,
  i1,
  i2,
  i3,
  i4,
  sel,
  o
  );

  input [9:0] i0;
  input [9:0] i1;
  input [9:0] i2;
  input [9:0] i3;
  input [9:0] i4;
  input [4:0] sel;
  output [9:0] o;



endmodule 

module onehot_mux_s5_w8
  (
  i0,
  i1,
  i2,
  i3,
  i4,
  sel,
  o
  );

  input [7:0] i0;
  input [7:0] i1;
  input [7:0] i2;
  input [7:0] i3;
  input [7:0] i4;
  input [4:0] sel;
  output [7:0] o;



endmodule 

module onehot_mux_s5_w16
  (
  i0,
  i1,
  i2,
  i3,
  i4,
  sel,
  o
  );

  input [15:0] i0;
  input [15:0] i1;
  input [15:0] i2;
  input [15:0] i3;
  input [15:0] i4;
  input [4:0] sel;
  output [15:0] o;



endmodule 

module add_pu11_mu11_o11
  (
  i0,
  i1,
  o
  );

  input [10:0] i0;
  input [10:0] i1;
  output [10:0] o;



endmodule 

module linebuf  // al_ip/linebuf.vhd(17)
  (
  addra,
  addrb,
  clka,
  clkb,
  dia,
  dib,
  wea,
  web,
  doa,
  dob
  );

  input [10:0] addra;  // al_ip/linebuf.vhd(22)
  input [10:0] addrb;  // al_ip/linebuf.vhd(27)
  input clka;  // al_ip/linebuf.vhd(24)
  input clkb;  // al_ip/linebuf.vhd(29)
  input [8:0] dia;  // al_ip/linebuf.vhd(21)
  input [8:0] dib;  // al_ip/linebuf.vhd(26)
  input wea;  // al_ip/linebuf.vhd(23)
  input web;  // al_ip/linebuf.vhd(28)
  output [8:0] doa;  // al_ip/linebuf.vhd(19)
  output [8:0] dob;  // al_ip/linebuf.vhd(25)


  AL_LOGIC_BRAM #(
    //.FORCE_KEEP("OFF"),
    //.INIT_FILE("NONE"),
    .ADDR_WIDTH_A(11),
    .ADDR_WIDTH_B(11),
    .BYTE_A(1),
    .BYTE_B(1),
    .BYTE_ENABLE(0),
    .DATA_DEPTH_A(2048),
    .DATA_DEPTH_B(2048),
    .DATA_WIDTH_A(9),
    .DATA_WIDTH_B(9),
    .DEBUGGABLE("NO"),
    .FILL_ALL("NONE"),
    .IMPLEMENT("9K"),
    .MODE("DP"),
    .PACKABLE("NO"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst (
    .addra(addra),
    .addrb(addrb),
    .bea(1'b0),
    .beb(1'b0),
    .cea(1'b1),
    .ceb(1'b1),
    .clka(clka),
    .clkb(clkb),
    .dia(dia),
    .dib(dib),
    .ocea(1'b0),
    .oceb(1'b0),
    .rsta(1'b0),
    .rstb(1'b0),
    .wea(wea),
    .web(web),
    .doa(doa),
    .dob(dob));  // al_ip/linebuf.vhd(37)

endmodule 

module add_pu9_pu9_o9
  (
  i0,
  i1,
  o
  );

  input [8:0] i0;
  input [8:0] i1;
  output [8:0] o;



endmodule 

module add_pu10_pu10_o10
  (
  i0,
  i1,
  o
  );

  input [9:0] i0;
  input [9:0] i1;
  output [9:0] o;



endmodule 

module eq_w9
  (
  i0,
  i1,
  o
  );

  input [8:0] i0;
  input [8:0] i1;
  output o;



endmodule 

module eq_w10
  (
  i0,
  i1,
  o
  );

  input [9:0] i0;
  input [9:0] i1;
  output o;



endmodule 

module uart_rx  // ../../rtl/uart/uart.v(144)
  (
  clk_bus,
  data_read,
  ds80,
  rx,
  rts,
  rxdata,
  rxrecv
  );

  input clk_bus;  // ../../rtl/uart/uart.v(146)
  input data_read;  // ../../rtl/uart/uart.v(150)
  input ds80;  // ../../rtl/uart/uart.v(147)
  input rx;  // ../../rtl/uart/uart.v(152)
  output rts;  // ../../rtl/uart/uart.v(153)
  output [7:0] rxdata;  // ../../rtl/uart/uart.v(148)
  output rxrecv;  // ../../rtl/uart/uart.v(149)

  parameter BIT = 3'b010;
  parameter BPS = 115200;
  parameter CLK = 28000000;
  parameter CLKDS80 = 24000000;
  parameter HALFPERIOD = 121;
  parameter HALFPERIODDS80 = 104;
  parameter IDLE = 3'b000;
  parameter PERIOD = 243;
  parameter PERIODDS80 = 208;
  parameter START = 3'b001;
  parameter STOP = 3'b011;
  parameter WAIT = 3'b100;
  wire [2:0] bitcnt;  // ../../rtl/uart/uart.v(192)
  wire [17:0] bpscounter;  // ../../rtl/uart/uart.v(190)
  wire [9:0] n0;
  wire [17:0] n1;
  wire [2:0] n10;
  wire [5:0] n13;
  wire [7:0] n14;
  wire [2:0] n15;
  wire [2:0] n17;
  wire [2:0] n18;
  wire [2:0] n2;
  wire [17:0] n20;
  wire [7:0] n21;
  wire [2:0] n22;
  wire [7:0] n24;
  wire [2:0] n25;
  wire [7:0] n27;
  wire [2:0] n28;
  wire [17:0] n3;
  wire [2:0] n30;
  wire [2:0] n32;
  wire [2:0] n33;
  wire [17:0] n34;
  wire [2:0] n35;
  wire [7:0] n36;
  wire [2:0] n37;
  wire [2:0] n39;
  wire [2:0] n41;
  wire [7:0] n44;
  wire [2:0] n45;
  wire [2:0] n46;
  wire [7:0] n49;
  wire [2:0] n51;
  wire [2:0] n52;
  wire [17:0] n55;
  wire [7:0] n56;
  wire [7:0] n57;
  wire [2:0] n58;
  wire [1:0] rx_ff;  // ../../rtl/uart/uart.v(175)
  wire [7:0] rxshiftreg;  // ../../rtl/uart/uart.v(194)
  wire [7:0] rxvalues;  // ../../rtl/uart/uart.v(182)
  wire [2:0] state;  // ../../rtl/uart/uart.v(191)
  wire n11;
  wire n12;
  wire n16;
  wire n19;
  wire n23;
  wire n26;
  wire n29;
  wire n31;
  wire n38;
  wire n4;
  wire n40;
  wire n42;
  wire n43;
  wire n47;
  wire n48;
  wire n5;
  wire n50;
  wire n53;
  wire n54;
  wire n6;
  wire n7;
  wire n8;
  wire n9;
  wire rx_int;  // ../../rtl/uart/uart.v(180)
  wire rx_is_0;  // ../../rtl/uart/uart.v(187)
  wire rx_is_1;  // ../../rtl/uart/uart.v(186)
  wire rx_negedge;  // ../../rtl/uart/uart.v(188)

  eq_w8 eq0 (
    .i0(rxvalues),
    .i1(8'b11111111),
    .o(rx_is_1));  // ../../rtl/uart/uart.v(186)
  eq_w8 eq1 (
    .i0(rxvalues),
    .i1(8'b00000000),
    .o(rx_is_0));  // ../../rtl/uart/uart.v(187)
  eq_w8 eq2 (
    .i0(rxvalues),
    .i1(8'b11110000),
    .o(rx_negedge));  // ../../rtl/uart/uart.v(188)
  eq_w18 eq3 (
    .i0(bpscounter),
    .i1(18'b000000000001101000),
    .o(n4));  // ../../rtl/uart/uart.v(211)
  eq_w18 eq4 (
    .i0(bpscounter),
    .i1(18'b000000000001111001),
    .o(n6));  // ../../rtl/uart/uart.v(211)
  eq_w18 eq5 (
    .i0(bpscounter),
    .i1(18'b000000000000000000),
    .o(n12));  // ../../rtl/uart/uart.v(217)
  eq_w3 eq6 (
    .i0(bitcnt),
    .i1(3'b000),
    .o(n31));  // ../../rtl/uart/uart.v(243)
  binary_mux_s1_w18 mux0 (
    .i0(bpscounter),
    .i1({n0[9],n0[9],n0[9],n0[9],n0[9],n0[9],n0[9],n0[9],n0}),
    .sel(rx_negedge),
    .o(n1));  // ../../rtl/uart/uart.v(206)
  binary_mux_s1_w3 mux1 (
    .i0(state),
    .i1(3'b001),
    .sel(rx_negedge),
    .o(n2));  // ../../rtl/uart/uart.v(206)
  binary_mux_s1_w16 mux10 (
    .i0({rxshiftreg,n14}),
    .i1({n27,rxshiftreg}),
    .sel(n8),
    .o({n36,n21}));  // ../../rtl/uart/uart.v(245)
  binary_mux_s1_w18 mux11 (
    .i0(n3),
    .i1({12'b000000000011,n13[1],3'b100,n13[1],n13[1]}),
    .sel(n12),
    .o(n34));  // ../../rtl/uart/uart.v(245)
  binary_mux_s1_w6 mux12 (
    .i0({bitcnt,bitcnt}),
    .i1({n30,3'b111}),
    .sel(n12),
    .o({n33,n15}));  // ../../rtl/uart/uart.v(245)
  binary_mux_s1_w9 mux13 (
    .i0({n45,n35,n17}),
    .i1({n41,n28,n10}),
    .sel(n8),
    .o({n46,n37,n18}));  // ../../rtl/uart/uart.v(260)
  binary_mux_s1_w3 mux14 (
    .i0(state),
    .i1(3'b000),
    .sel(n40),
    .o(n41));  // ../../rtl/uart/uart.v(254)
  binary_mux_s1_w8 mux15 (
    .i0(rxdata),
    .i1(rxshiftreg),
    .sel(n12),
    .o(n44));  // ../../rtl/uart/uart.v(260)
  binary_mux_s1_w6 mux16 (
    .i0({n33,n15}),
    .i1({bitcnt,bitcnt}),
    .sel(n8),
    .o({n39,n22}));  // ../../rtl/uart/uart.v(245)
  binary_mux_s1_w9 mux17 (
    .i0({state,state,state}),
    .i1({3'b100,n32,3'b010}),
    .sel(n12),
    .o({n45,n35,n17}));  // ../../rtl/uart/uart.v(260)
  binary_mux_s1_w8 mux18 (
    .i0(n44),
    .i1(rxdata),
    .sel(n8),
    .o(n49));  // ../../rtl/uart/uart.v(260)
  binary_mux_s1_w3 mux19 (
    .i0(state),
    .i1(3'b000),
    .sel(data_read),
    .o(n51));  // ../../rtl/uart/uart.v(268)
  binary_mux_s1_w3 mux2 (
    .i0(state),
    .i1(3'b000),
    .sel(n9),
    .o(n10));  // ../../rtl/uart/uart.v(215)
  binary_mux_s3_w3 mux20 (
    .i0(n2),
    .i1(n18),
    .i2(n37),
    .i3(n46),
    .i4(n51),
    .i5(3'b000),
    .i6(3'b000),
    .i7(3'b000),
    .sel(state),
    .o(n52));  // ../../rtl/uart/uart.v(271)
  binary_mux_s3_w1 mux21 (
    .i0(1'b0),
    .i1(n23),
    .i2(rxrecv),
    .i3(n48),
    .i4(1'b0),
    .i5(rxrecv),
    .i6(rxrecv),
    .i7(rxrecv),
    .sel(state),
    .o(n53));  // ../../rtl/uart/uart.v(271)
  binary_mux_s3_w1 mux22 (
    .i0(rx_negedge),
    .i1(n19),
    .i2(n38),
    .i3(n47),
    .i4(n50),
    .i5(rts),
    .i6(rts),
    .i7(rts),
    .sel(state),
    .o(n54));  // ../../rtl/uart/uart.v(271)
  binary_mux_s3_w18 mux23 (
    .i0(n1),
    .i1(n20),
    .i2(n20),
    .i3(n3),
    .i4(bpscounter),
    .i5(bpscounter),
    .i6(bpscounter),
    .i7(bpscounter),
    .sel(state),
    .o(n55));  // ../../rtl/uart/uart.v(271)
  binary_mux_s3_w8 mux24 (
    .i0(rxdata),
    .i1(rxdata),
    .i2(rxdata),
    .i3(n49),
    .i4(rxdata),
    .i5(rxdata),
    .i6(rxdata),
    .i7(rxdata),
    .sel(state),
    .o(n56));  // ../../rtl/uart/uart.v(271)
  binary_mux_s3_w8 mux25 (
    .i0(rxshiftreg),
    .i1(n21),
    .i2(n36),
    .i3(rxshiftreg),
    .i4(rxshiftreg),
    .i5(rxshiftreg),
    .i6(rxshiftreg),
    .i7(rxshiftreg),
    .sel(state),
    .o(n57));  // ../../rtl/uart/uart.v(271)
  binary_mux_s3_w3 mux26 (
    .i0(bitcnt),
    .i1(n22),
    .i2(n39),
    .i3(bitcnt),
    .i4(bitcnt),
    .i5(bitcnt),
    .i6(bitcnt),
    .i7(bitcnt),
    .sel(state),
    .o(n58));  // ../../rtl/uart/uart.v(271)
  binary_mux_s1_w8 mux3 (
    .i0(rxshiftreg),
    .i1(8'b00000000),
    .sel(n12),
    .o(n14));  // ../../rtl/uart/uart.v(223)
  binary_mux_s1_w18 mux4 (
    .i0(n34),
    .i1(n3),
    .sel(n8),
    .o(n20));  // ../../rtl/uart/uart.v(223)
  binary_mux_s1_w8 mux5 (
    .i0(rxshiftreg),
    .i1({1'b0,rxshiftreg[7:1]}),
    .sel(rx_is_0),
    .o(n24));  // ../../rtl/uart/uart.v(238)
  binary_mux_s1_w3 mux6 (
    .i0(3'b000),
    .i1(state),
    .sel(rx_is_0),
    .o(n25));  // ../../rtl/uart/uart.v(238)
  binary_mux_s1_w8 mux7 (
    .i0(n24),
    .i1({1'b1,rxshiftreg[7:1]}),
    .sel(rx_is_1),
    .o(n27));  // ../../rtl/uart/uart.v(238)
  binary_mux_s1_w3 mux8 (
    .i0(n25),
    .i1(state),
    .sel(rx_is_1),
    .o(n28));  // ../../rtl/uart/uart.v(238)
  binary_mux_s1_w3 mux9 (
    .i0(state),
    .i1(3'b011),
    .sel(n31),
    .o(n32));  // ../../rtl/uart/uart.v(244)
  reg_ar_as_w8 reg0 (
    .clk(clk_bus),
    .d({rxvalues[6:0],rx_int}),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(rxvalues));  // ../../rtl/uart/uart.v(185)
  reg_ar_as_w3 reg1 (
    .clk(clk_bus),
    .d(n52),
    .reset(3'b000),
    .set(3'b000),
    .q(state));  // ../../rtl/uart/uart.v(272)
  reg_ar_as_w18 reg2 (
    .clk(clk_bus),
    .d(n55),
    .reset(18'b000000000000000000),
    .set(18'b000000000000000000),
    .q(bpscounter));  // ../../rtl/uart/uart.v(272)
  reg_ar_as_w8 reg3 (
    .clk(clk_bus),
    .d(n56),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(rxdata));  // ../../rtl/uart/uart.v(272)
  reg_ar_as_w8 reg4 (
    .clk(clk_bus),
    .d(n57),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(rxshiftreg));  // ../../rtl/uart/uart.v(272)
  reg_ar_as_w3 reg5 (
    .clk(clk_bus),
    .d(n58),
    .reset(3'b000),
    .set(3'b000),
    .q(bitcnt));  // ../../rtl/uart/uart.v(272)
  reg_ar_as_w2 reg6 (
    .clk(clk_bus),
    .d({rx_ff[0],rx}),
    .reset(2'b00),
    .set(2'b00),
    .q(rx_ff));  // ../../rtl/uart/uart.v(179)
  AL_DFF rts_reg (
    .clk(clk_bus),
    .d(n54),
    .reset(1'b0),
    .set(1'b0),
    .q(rts));  // ../../rtl/uart/uart.v(272)
  AL_DFF rxrecv_reg (
    .clk(clk_bus),
    .d(n53),
    .reset(1'b0),
    .set(1'b0),
    .q(rxrecv));  // ../../rtl/uart/uart.v(272)
  add_pu10_mu10_o10 sub0 (
    .i0({4'b0011,n13[1],3'b100,n13[1],n13[1]}),
    .i1(10'b0000000100),
    .o(n0));  // ../../rtl/uart/uart.v(203)
  add_pu18_mu18_o18 sub1 (
    .i0(bpscounter),
    .i1(18'b000000000000000001),
    .o(n3));  // ../../rtl/uart/uart.v(210)
  add_pu3_mu3_o3 sub2 (
    .i0(bitcnt),
    .i1(3'b001),
    .o(n30));  // ../../rtl/uart/uart.v(241)
  AL_MUX u10 (
    .i0(rts),
    .i1(n11),
    .sel(n8),
    .o(n19));  // ../../rtl/uart/uart.v(223)
  AL_MUX u11 (
    .i0(n16),
    .i1(rxrecv),
    .sel(n8),
    .o(n23));  // ../../rtl/uart/uart.v(223)
  AL_MUX u12 (
    .i0(1'b0),
    .i1(rts),
    .sel(rx_is_0),
    .o(n26));  // ../../rtl/uart/uart.v(238)
  AL_MUX u13 (
    .i0(n26),
    .i1(rts),
    .sel(rx_is_1),
    .o(n29));  // ../../rtl/uart/uart.v(238)
  AL_MUX u14 (
    .i0(rts),
    .i1(n29),
    .sel(n8),
    .o(n38));  // ../../rtl/uart/uart.v(245)
  not u15 (n40, rx_is_1);  // ../../rtl/uart/uart.v(251)
  AL_MUX u16 (
    .i0(rts),
    .i1(1'b0),
    .sel(n40),
    .o(n42));  // ../../rtl/uart/uart.v(254)
  AL_MUX u17 (
    .i0(rxrecv),
    .i1(1'b1),
    .sel(n12),
    .o(n43));  // ../../rtl/uart/uart.v(260)
  AL_MUX u18 (
    .i0(rts),
    .i1(n42),
    .sel(n8),
    .o(n47));  // ../../rtl/uart/uart.v(260)
  AL_MUX u19 (
    .i0(n43),
    .i1(rxrecv),
    .sel(n8),
    .o(n48));  // ../../rtl/uart/uart.v(260)
  not u2 (n13[1], ds80);  // ../../rtl/uart/uart.v(218)
  AL_MUX u20 (
    .i0(rts),
    .i1(1'b0),
    .sel(data_read),
    .o(n50));  // ../../rtl/uart/uart.v(268)
  buf u3 (rx_int, rx_ff[1]);  // ../../rtl/uart/uart.v(180)
  and u4 (n5, ds80, n4);  // ../../rtl/uart/uart.v(211)
  and u5 (n7, n13[1], n6);  // ../../rtl/uart/uart.v(211)
  or u6 (n8, n5, n7);  // ../../rtl/uart/uart.v(211)
  not u7 (n9, rx_is_0);  // ../../rtl/uart/uart.v(212)
  AL_MUX u8 (
    .i0(rts),
    .i1(1'b0),
    .sel(n9),
    .o(n11));  // ../../rtl/uart/uart.v(215)
  AL_MUX u9 (
    .i0(rxrecv),
    .i1(1'b0),
    .sel(n12),
    .o(n16));  // ../../rtl/uart/uart.v(223)

endmodule 

module uart_tx  // ../../rtl/uart/uart.v(60)
  (
  clk_bus,
  ds80,
  txbegin,
  txdata,
  tx,
  txbusy
  );

  input clk_bus;  // ../../rtl/uart/uart.v(62)
  input ds80;  // ../../rtl/uart/uart.v(63)
  input txbegin;  // ../../rtl/uart/uart.v(65)
  input [7:0] txdata;  // ../../rtl/uart/uart.v(64)
  output tx;  // ../../rtl/uart/uart.v(68)
  output txbusy;  // ../../rtl/uart/uart.v(66)

  parameter BIT = 2'b10;
  parameter BPS = 115200;
  parameter CLK = 28000000;
  parameter CLKDS80 = 24000000;
  parameter IDLE = 2'b00;
  parameter PERIOD = 243;
  parameter PERIODDS80 = 208;
  parameter START = 2'b01;
  parameter STOP = 2'b11;
  wire [2:0] bitcnt;  // ../../rtl/uart/uart.v(88)
  wire [17:0] bpscounter;  // ../../rtl/uart/uart.v(87)
  wire [17:0] n10;
  wire [5:0] n12;
  wire [2:0] n13;
  wire [1:0] n14;
  wire [2:0] n15;
  wire [1:0] n17;
  wire [7:0] n18;
  wire [2:0] n19;
  wire [1:0] n20;
  wire [17:0] n21;
  wire [1:0] n23;
  wire [17:0] n25;
  wire [1:0] n27;
  wire [7:0] n28;
  wire [2:0] n29;
  wire [17:0] n31;
  wire [1:0] n33;
  wire [7:0] n34;
  wire [2:0] n35;
  wire [7:0] n4;
  wire [1:0] n6;
  wire [17:0] n7;
  wire [1:0] state;  // ../../rtl/uart/uart.v(86)
  wire [7:0] txdata_reg;  // ../../rtl/uart/uart.v(85)
  wire n0;
  wire n1;
  wire n11;
  wire n16;
  wire n2;
  wire n22;
  wire n24;
  wire n26;
  wire n3;
  wire n30;
  wire n32;
  wire n5;
  wire n8;
  wire n9;
  wire txbusy_ff;  // ../../rtl/uart/uart.v(89)

  eq_w2 eq0 (
    .i0(state),
    .i1(2'b00),
    .o(n2));  // ../../rtl/uart/uart.v(93)
  eq_w18 eq1 (
    .i0(bpscounter),
    .i1(18'b000000000000000000),
    .o(n11));  // ../../rtl/uart/uart.v(105)
  eq_w3 eq2 (
    .i0(bitcnt),
    .i1(3'b000),
    .o(n16));  // ../../rtl/uart/uart.v(119)
  binary_mux_s1_w8 mux0 (
    .i0(txdata_reg),
    .i1(txdata),
    .sel(n3),
    .o(n4));  // ../../rtl/uart/uart.v(98)
  binary_mux_s1_w2 mux1 (
    .i0(state),
    .i1(2'b01),
    .sel(n3),
    .o(n6));  // ../../rtl/uart/uart.v(98)
  binary_mux_s2_w1 mux10 (
    .i0(1'b0),
    .i1(n5),
    .i2(n5),
    .i3(n22),
    .sel(state),
    .o(n26));  // ../../rtl/uart/uart.v(139)
  binary_mux_s2_w2 mux11 (
    .i0(2'b00),
    .i1(n14),
    .i2(n20),
    .i3(n23),
    .sel(state),
    .o(n27));  // ../../rtl/uart/uart.v(139)
  binary_mux_s2_w8 mux12 (
    .i0(n4),
    .i1(n4),
    .i2(n18),
    .i3(n4),
    .sel(state),
    .o(n28));  // ../../rtl/uart/uart.v(139)
  binary_mux_s2_w3 mux13 (
    .i0(bitcnt),
    .i1(n13),
    .i2(n19),
    .i3(bitcnt),
    .sel(state),
    .o(n29));  // ../../rtl/uart/uart.v(139)
  binary_mux_s1_w18 mux14 (
    .i0(n7),
    .i1(n25),
    .sel(n9),
    .o(n31));  // ../../rtl/uart/uart.v(140)
  binary_mux_s1_w2 mux15 (
    .i0(n6),
    .i1(n27),
    .sel(n9),
    .o(n33));  // ../../rtl/uart/uart.v(140)
  binary_mux_s1_w8 mux16 (
    .i0(n4),
    .i1(n28),
    .sel(n9),
    .o(n34));  // ../../rtl/uart/uart.v(140)
  binary_mux_s1_w3 mux17 (
    .i0(bitcnt),
    .i1(n29),
    .sel(n9),
    .o(n35));  // ../../rtl/uart/uart.v(140)
  binary_mux_s1_w18 mux2 (
    .i0(bpscounter),
    .i1({12'b000000000011,n12[1],3'b100,n12[1],n12[1]}),
    .sel(n3),
    .o(n7));  // ../../rtl/uart/uart.v(98)
  binary_mux_s1_w6 mux3 (
    .i0({n6,n6,n6}),
    .i1({2'b00,n17,2'b10}),
    .sel(n11),
    .o({n23,n20,n14}));  // ../../rtl/uart/uart.v(132)
  binary_mux_s1_w2 mux4 (
    .i0(n6),
    .i1(2'b11),
    .sel(n16),
    .o(n17));  // ../../rtl/uart/uart.v(121)
  binary_mux_s1_w8 mux5 (
    .i0(n4),
    .i1({1'b0,txdata_reg[7:1]}),
    .sel(n11),
    .o(n18));  // ../../rtl/uart/uart.v(122)
  binary_mux_s1_w18 mux6 (
    .i0(n10),
    .i1({12'b000000000011,n12[1],3'b100,n12[1],n12[1]}),
    .sel(n11),
    .o(n21));  // ../../rtl/uart/uart.v(132)
  binary_mux_s1_w6 mux7 (
    .i0({bitcnt,bitcnt}),
    .i1({n15,3'b111}),
    .sel(n11),
    .o({n19,n13}));  // ../../rtl/uart/uart.v(122)
  binary_mux_s2_w1 mux8 (
    .i0(tx),
    .i1(1'b0),
    .i2(txdata_reg[0]),
    .i3(1'b1),
    .sel(state),
    .o(n24));  // ../../rtl/uart/uart.v(139)
  binary_mux_s2_w18 mux9 (
    .i0(n7),
    .i1(n21),
    .i2(n21),
    .i3(n21),
    .sel(state),
    .o(n25));  // ../../rtl/uart/uart.v(139)
  reg_ar_as_w2 reg0 (
    .clk(clk_bus),
    .d(n33),
    .reset(2'b00),
    .set(2'b00),
    .q(state));  // ../../rtl/uart/uart.v(141)
  reg_ar_as_w18 reg1 (
    .clk(clk_bus),
    .d(n31),
    .reset(18'b000000000000000000),
    .set(18'b000000000000000000),
    .q(bpscounter));  // ../../rtl/uart/uart.v(141)
  reg_ar_as_w3 reg2 (
    .clk(clk_bus),
    .d(n35),
    .reset(3'b000),
    .set(3'b000),
    .q(bitcnt));  // ../../rtl/uart/uart.v(141)
  reg_ar_as_w8 reg3 (
    .clk(clk_bus),
    .d(n34),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(txdata_reg));  // ../../rtl/uart/uart.v(141)
  add_pu18_mu18_o18 sub0 (
    .i0(bpscounter),
    .i1(18'b000000000000000001),
    .o(n10));  // ../../rtl/uart/uart.v(104)
  add_pu3_mu3_o3 sub1 (
    .i0(bitcnt),
    .i1(3'b001),
    .o(n15));  // ../../rtl/uart/uart.v(118)
  AL_DFF tx_reg (
    .clk(clk_bus),
    .d(n30),
    .reset(1'b0),
    .set(1'b0),
    .q(tx));  // ../../rtl/uart/uart.v(141)
  AL_DFF txbusy_ff_reg (
    .clk(clk_bus),
    .d(n32),
    .reset(1'b0),
    .set(1'b0),
    .q(txbusy_ff));  // ../../rtl/uart/uart.v(141)
  AL_MUX u10 (
    .i0(n5),
    .i1(1'b0),
    .sel(n11),
    .o(n22));  // ../../rtl/uart/uart.v(132)
  AL_MUX u11 (
    .i0(tx),
    .i1(n24),
    .sel(n9),
    .o(n30));  // ../../rtl/uart/uart.v(140)
  AL_MUX u12 (
    .i0(n5),
    .i1(n26),
    .sel(n9),
    .o(n32));  // ../../rtl/uart/uart.v(140)
  not u2 (n12[1], ds80);  // ../../rtl/uart/uart.v(106)
  buf u3 (txbusy, txbusy_ff);  // ../../rtl/uart/uart.v(90)
  not u4 (n0, txbusy_ff);  // ../../rtl/uart/uart.v(93)
  and u5 (n1, txbegin, n0);  // ../../rtl/uart/uart.v(93)
  and u6 (n3, n1, n2);  // ../../rtl/uart/uart.v(93)
  AL_MUX u7 (
    .i0(txbusy_ff),
    .i1(1'b1),
    .sel(n3),
    .o(n5));  // ../../rtl/uart/uart.v(98)
  not u8 (n8, txbegin);  // ../../rtl/uart/uart.v(99)
  and u9 (n9, n8, txbusy_ff);  // ../../rtl/uart/uart.v(99)

endmodule 

module add_pu5_pu5_o6
  (
  i0,
  i1,
  o
  );

  input [4:0] i0;
  input [4:0] i1;
  output [5:0] o;



endmodule 

module lt_u32_u32
  (
  ci,
  i0,
  i1,
  o
  );

  input ci;
  input [31:0] i0;
  input [31:0] i1;
  output o;



endmodule 

module lt_u5_u5
  (
  ci,
  i0,
  i1,
  o
  );

  input ci;
  input [4:0] i0;
  input [4:0] i1;
  output o;



endmodule 

module add_pu7_mu7_o7
  (
  i0,
  i1,
  o
  );

  input [6:0] i0;
  input [6:0] i1;
  output [6:0] o;



endmodule 

module add_pu6_mu6_o6
  (
  i0,
  i1,
  o
  );

  input [5:0] i0;
  input [5:0] i1;
  output [5:0] o;



endmodule 

module lt_u12_u12
  (
  ci,
  i0,
  i1,
  o
  );

  input ci;
  input [11:0] i0;
  input [11:0] i1;
  output o;



endmodule 

module lt_u16_u16
  (
  ci,
  i0,
  i1,
  o
  );

  input ci;
  input [15:0] i0;
  input [15:0] i1;
  output o;



endmodule 

module binary_mux_s1_w128
  (
  i0,
  i1,
  sel,
  o
  );

  input [127:0] i0;
  input [127:0] i1;
  input sel;
  output [127:0] o;



endmodule 

module binary_mux_s1_w17
  (
  i0,
  i1,
  sel,
  o
  );

  input [16:0] i0;
  input [16:0] i1;
  input sel;
  output [16:0] o;



endmodule 

module binary_mux_s1_w36
  (
  i0,
  i1,
  sel,
  o
  );

  input [35:0] i0;
  input [35:0] i1;
  input sel;
  output [35:0] o;



endmodule 

module ram_r6x8_r6x8_r6x8
  (
  ra1,
  ra2,
  ra3,
  re1,
  re2,
  re3,
  rd1,
  rd2,
  rd3
  );

  input [5:0] ra1;
  input [5:0] ra2;
  input [5:0] ra3;
  input re1;
  input re2;
  input re3;
  output [7:0] rd1;
  output [7:0] rd2;
  output [7:0] rd3;



endmodule 

module reg_ar_as_w128
  (
  clk,
  d,
  en,
  reset,
  set,
  q
  );

  input clk;
  input [127:0] d;
  input en;
  input [127:0] reset;
  input [127:0] set;
  output [127:0] q;



endmodule 

module reg_ar_as_w17
  (
  clk,
  d,
  en,
  reset,
  set,
  q
  );

  input clk;
  input [16:0] d;
  input en;
  input [16:0] reset;
  input [16:0] set;
  output [16:0] q;



endmodule 

module reg_ar_as_w36
  (
  clk,
  d,
  en,
  reset,
  set,
  q
  );

  input clk;
  input [35:0] d;
  input en;
  input [35:0] reset;
  input [35:0] set;
  output [35:0] q;



endmodule 

module add_pu4_mu4_o4
  (
  i0,
  i1,
  o
  );

  input [3:0] i0;
  input [3:0] i1;
  output [3:0] o;



endmodule 

module add_pu5_mu5_o5
  (
  i0,
  i1,
  o
  );

  input [4:0] i0;
  input [4:0] i1;
  output [4:0] o;



endmodule 

module add_pu12_mu12_o12
  (
  i0,
  i1,
  o
  );

  input [11:0] i0;
  input [11:0] i1;
  output [11:0] o;



endmodule 

module add_pu16_mu16_o16
  (
  i0,
  i1,
  o
  );

  input [15:0] i0;
  input [15:0] i1;
  output [15:0] o;



endmodule 

module onehot_mux_s6_w24
  (
  i0,
  i1,
  i2,
  i3,
  i4,
  i5,
  sel,
  o
  );

  input [23:0] i0;
  input [23:0] i1;
  input [23:0] i2;
  input [23:0] i3;
  input [23:0] i4;
  input [23:0] i5;
  input [5:0] sel;
  output [23:0] o;



endmodule 

module onehot_mux_s6_w5
  (
  i0,
  i1,
  i2,
  i3,
  i4,
  i5,
  sel,
  o
  );

  input [4:0] i0;
  input [4:0] i1;
  input [4:0] i2;
  input [4:0] i3;
  input [4:0] i4;
  input [4:0] i5;
  input [5:0] sel;
  output [4:0] o;



endmodule 

module T80_Reg  // ../../rtl/t80se/T80_Reg.vhd(77)
  (
  AddrA,
  AddrB,
  AddrC,
  CEN,
  Clk,
  DIH,
  DIL,
  DIR,
  DIRSet,
  WEH,
  WEL,
  DOAH,
  DOAL,
  DOBH,
  DOBL,
  DOCH,
  DOCL,
  DOR
  );

  input [2:0] AddrA;  // ../../rtl/t80se/T80_Reg.vhd(83)
  input [2:0] AddrB;  // ../../rtl/t80se/T80_Reg.vhd(84)
  input [2:0] AddrC;  // ../../rtl/t80se/T80_Reg.vhd(85)
  input CEN;  // ../../rtl/t80se/T80_Reg.vhd(80)
  input Clk;  // ../../rtl/t80se/T80_Reg.vhd(79)
  input [7:0] DIH;  // ../../rtl/t80se/T80_Reg.vhd(86)
  input [7:0] DIL;  // ../../rtl/t80se/T80_Reg.vhd(87)
  input [127:0] DIR;  // ../../rtl/t80se/T80_Reg.vhd(96)
  input DIRSet;  // ../../rtl/t80se/T80_Reg.vhd(95)
  input WEH;  // ../../rtl/t80se/T80_Reg.vhd(81)
  input WEL;  // ../../rtl/t80se/T80_Reg.vhd(82)
  output [7:0] DOAH;  // ../../rtl/t80se/T80_Reg.vhd(88)
  output [7:0] DOAL;  // ../../rtl/t80se/T80_Reg.vhd(89)
  output [7:0] DOBH;  // ../../rtl/t80se/T80_Reg.vhd(90)
  output [7:0] DOBL;  // ../../rtl/t80se/T80_Reg.vhd(91)
  output [7:0] DOCH;  // ../../rtl/t80se/T80_Reg.vhd(92)
  output [7:0] DOCL;  // ../../rtl/t80se/T80_Reg.vhd(93)
  output [127:0] DOR;  // ../../rtl/t80se/T80_Reg.vhd(94)

  wire [7:0] \RegsH[0] ;  // ../../rtl/t80se/T80_Reg.vhd(103)
  wire [7:0] \RegsH[1] ;  // ../../rtl/t80se/T80_Reg.vhd(103)
  wire [7:0] \RegsH[2] ;  // ../../rtl/t80se/T80_Reg.vhd(103)
  wire [7:0] \RegsH[3] ;  // ../../rtl/t80se/T80_Reg.vhd(103)
  wire [7:0] \RegsH[4] ;  // ../../rtl/t80se/T80_Reg.vhd(103)
  wire [7:0] \RegsH[5] ;  // ../../rtl/t80se/T80_Reg.vhd(103)
  wire [7:0] \RegsH[6] ;  // ../../rtl/t80se/T80_Reg.vhd(103)
  wire [7:0] \RegsH[7] ;  // ../../rtl/t80se/T80_Reg.vhd(103)
  wire [7:0] \RegsL[0] ;  // ../../rtl/t80se/T80_Reg.vhd(104)
  wire [7:0] \RegsL[1] ;  // ../../rtl/t80se/T80_Reg.vhd(104)
  wire [7:0] \RegsL[2] ;  // ../../rtl/t80se/T80_Reg.vhd(104)
  wire [7:0] \RegsL[3] ;  // ../../rtl/t80se/T80_Reg.vhd(104)
  wire [7:0] \RegsL[4] ;  // ../../rtl/t80se/T80_Reg.vhd(104)
  wire [7:0] \RegsL[5] ;  // ../../rtl/t80se/T80_Reg.vhd(104)
  wire [7:0] \RegsL[6] ;  // ../../rtl/t80se/T80_Reg.vhd(104)
  wire [7:0] \RegsL[7] ;  // ../../rtl/t80se/T80_Reg.vhd(104)
  wire [7:0] n0;
  wire [7:0] n1;
  wire [7:0] n10;
  wire [7:0] n11;
  wire [7:0] n12;
  wire [7:0] n13;
  wire [7:0] n14;
  wire [7:0] n15;
  wire [7:0] n16;
  wire [7:0] n2;
  wire [7:0] n24;
  wire [7:0] n25;
  wire [7:0] n26;
  wire [7:0] n27;
  wire [7:0] n28;
  wire [7:0] n29;
  wire [7:0] n3;
  wire [7:0] n30;
  wire [7:0] n31;
  wire [7:0] n32;
  wire [7:0] n33;
  wire [7:0] n34;
  wire [7:0] n35;
  wire [7:0] n36;
  wire [7:0] n37;
  wire [7:0] n38;
  wire [7:0] n39;
  wire [7:0] n4;
  wire [7:0] n40;
  wire [7:0] n41;
  wire [7:0] n42;
  wire [7:0] n43;
  wire [7:0] n44;
  wire [7:0] n45;
  wire [7:0] n46;
  wire [7:0] n47;
  wire [7:0] n48;
  wire [7:0] n49;
  wire [7:0] n5;
  wire [7:0] n50;
  wire [7:0] n51;
  wire [7:0] n52;
  wire [7:0] n53;
  wire [7:0] n54;
  wire [7:0] n55;
  wire [7:0] n56;
  wire [7:0] n57;
  wire [7:0] n58;
  wire [7:0] n59;
  wire [7:0] n6;
  wire [7:0] n60;
  wire [7:0] n61;
  wire [7:0] n62;
  wire [7:0] n63;
  wire [7:0] n64;
  wire [7:0] n65;
  wire [7:0] n66;
  wire [7:0] n67;
  wire [7:0] n68;
  wire [7:0] n69;
  wire [7:0] n7;
  wire [7:0] n70;
  wire [7:0] n71;
  wire [7:0] n8;
  wire [7:0] n9;
  wire n17;
  wire n18;
  wire n19;
  wire n20;
  wire n21;
  wire n22;
  wire n23;

  binary_mux_s1_w8 mux0 (
    .i0(\RegsH[7] ),
    .i1(DIH),
    .sel(n0[7]),
    .o(n1));  // ../../rtl/t80se/T80_Reg.vhd(137)
  binary_mux_s1_w8 mux1 (
    .i0(\RegsH[6] ),
    .i1(DIH),
    .sel(n0[6]),
    .o(n2));  // ../../rtl/t80se/T80_Reg.vhd(137)
  binary_mux_s1_w8 mux10 (
    .i0(\RegsH[2] ),
    .i1(n6),
    .sel(WEH),
    .o(n11));  // ../../rtl/t80se/T80_Reg.vhd(138)
  binary_mux_s1_w8 mux11 (
    .i0(\RegsH[3] ),
    .i1(n5),
    .sel(WEH),
    .o(n12));  // ../../rtl/t80se/T80_Reg.vhd(138)
  binary_mux_s1_w8 mux12 (
    .i0(\RegsH[4] ),
    .i1(n4),
    .sel(WEH),
    .o(n13));  // ../../rtl/t80se/T80_Reg.vhd(138)
  binary_mux_s1_w8 mux13 (
    .i0(\RegsH[5] ),
    .i1(n3),
    .sel(WEH),
    .o(n14));  // ../../rtl/t80se/T80_Reg.vhd(138)
  binary_mux_s1_w8 mux14 (
    .i0(\RegsH[6] ),
    .i1(n2),
    .sel(WEH),
    .o(n15));  // ../../rtl/t80se/T80_Reg.vhd(138)
  binary_mux_s1_w8 mux15 (
    .i0(\RegsH[7] ),
    .i1(n1),
    .sel(WEH),
    .o(n16));  // ../../rtl/t80se/T80_Reg.vhd(138)
  binary_mux_s1_w8 mux16 (
    .i0(\RegsL[7] ),
    .i1(DIL),
    .sel(n0[7]),
    .o(n24));  // ../../rtl/t80se/T80_Reg.vhd(140)
  binary_mux_s1_w8 mux17 (
    .i0(\RegsL[6] ),
    .i1(DIL),
    .sel(n0[6]),
    .o(n25));  // ../../rtl/t80se/T80_Reg.vhd(140)
  binary_mux_s1_w8 mux18 (
    .i0(\RegsL[5] ),
    .i1(DIL),
    .sel(n0[5]),
    .o(n26));  // ../../rtl/t80se/T80_Reg.vhd(140)
  binary_mux_s1_w8 mux19 (
    .i0(\RegsL[4] ),
    .i1(DIL),
    .sel(n0[4]),
    .o(n27));  // ../../rtl/t80se/T80_Reg.vhd(140)
  binary_mux_s1_w8 mux2 (
    .i0(\RegsH[5] ),
    .i1(DIH),
    .sel(n0[5]),
    .o(n3));  // ../../rtl/t80se/T80_Reg.vhd(137)
  binary_mux_s1_w8 mux20 (
    .i0(\RegsL[3] ),
    .i1(DIL),
    .sel(n0[3]),
    .o(n28));  // ../../rtl/t80se/T80_Reg.vhd(140)
  binary_mux_s1_w8 mux21 (
    .i0(\RegsL[2] ),
    .i1(DIL),
    .sel(n0[2]),
    .o(n29));  // ../../rtl/t80se/T80_Reg.vhd(140)
  binary_mux_s1_w8 mux22 (
    .i0(\RegsL[1] ),
    .i1(DIL),
    .sel(n0[1]),
    .o(n30));  // ../../rtl/t80se/T80_Reg.vhd(140)
  binary_mux_s1_w8 mux23 (
    .i0(\RegsL[0] ),
    .i1(DIL),
    .sel(n0[0]),
    .o(n31));  // ../../rtl/t80se/T80_Reg.vhd(140)
  binary_mux_s1_w8 mux24 (
    .i0(\RegsL[0] ),
    .i1(n31),
    .sel(WEL),
    .o(n32));  // ../../rtl/t80se/T80_Reg.vhd(141)
  binary_mux_s1_w8 mux25 (
    .i0(\RegsL[1] ),
    .i1(n30),
    .sel(WEL),
    .o(n33));  // ../../rtl/t80se/T80_Reg.vhd(141)
  binary_mux_s1_w8 mux26 (
    .i0(\RegsL[2] ),
    .i1(n29),
    .sel(WEL),
    .o(n34));  // ../../rtl/t80se/T80_Reg.vhd(141)
  binary_mux_s1_w8 mux27 (
    .i0(\RegsL[3] ),
    .i1(n28),
    .sel(WEL),
    .o(n35));  // ../../rtl/t80se/T80_Reg.vhd(141)
  binary_mux_s1_w8 mux28 (
    .i0(\RegsL[4] ),
    .i1(n27),
    .sel(WEL),
    .o(n36));  // ../../rtl/t80se/T80_Reg.vhd(141)
  binary_mux_s1_w8 mux29 (
    .i0(\RegsL[5] ),
    .i1(n26),
    .sel(WEL),
    .o(n37));  // ../../rtl/t80se/T80_Reg.vhd(141)
  binary_mux_s1_w8 mux3 (
    .i0(\RegsH[4] ),
    .i1(DIH),
    .sel(n0[4]),
    .o(n4));  // ../../rtl/t80se/T80_Reg.vhd(137)
  binary_mux_s1_w8 mux30 (
    .i0(\RegsL[6] ),
    .i1(n25),
    .sel(WEL),
    .o(n38));  // ../../rtl/t80se/T80_Reg.vhd(141)
  binary_mux_s1_w8 mux31 (
    .i0(\RegsL[7] ),
    .i1(n24),
    .sel(WEL),
    .o(n39));  // ../../rtl/t80se/T80_Reg.vhd(141)
  binary_mux_s1_w8 mux32 (
    .i0(\RegsL[0] ),
    .i1(n32),
    .sel(CEN),
    .o(n40));  // ../../rtl/t80se/T80_Reg.vhd(142)
  binary_mux_s1_w8 mux33 (
    .i0(\RegsL[1] ),
    .i1(n33),
    .sel(CEN),
    .o(n41));  // ../../rtl/t80se/T80_Reg.vhd(142)
  binary_mux_s1_w8 mux34 (
    .i0(\RegsL[2] ),
    .i1(n34),
    .sel(CEN),
    .o(n42));  // ../../rtl/t80se/T80_Reg.vhd(142)
  binary_mux_s1_w8 mux35 (
    .i0(\RegsL[3] ),
    .i1(n35),
    .sel(CEN),
    .o(n43));  // ../../rtl/t80se/T80_Reg.vhd(142)
  binary_mux_s1_w8 mux36 (
    .i0(\RegsL[4] ),
    .i1(n36),
    .sel(CEN),
    .o(n44));  // ../../rtl/t80se/T80_Reg.vhd(142)
  binary_mux_s1_w8 mux37 (
    .i0(\RegsL[5] ),
    .i1(n37),
    .sel(CEN),
    .o(n45));  // ../../rtl/t80se/T80_Reg.vhd(142)
  binary_mux_s1_w8 mux38 (
    .i0(\RegsL[6] ),
    .i1(n38),
    .sel(CEN),
    .o(n46));  // ../../rtl/t80se/T80_Reg.vhd(142)
  binary_mux_s1_w8 mux39 (
    .i0(\RegsL[7] ),
    .i1(n39),
    .sel(CEN),
    .o(n47));  // ../../rtl/t80se/T80_Reg.vhd(142)
  binary_mux_s1_w8 mux4 (
    .i0(\RegsH[3] ),
    .i1(DIH),
    .sel(n0[3]),
    .o(n5));  // ../../rtl/t80se/T80_Reg.vhd(137)
  binary_mux_s1_w8 mux40 (
    .i0(n40),
    .i1(DIR[7:0]),
    .sel(DIRSet),
    .o(n48));  // ../../rtl/t80se/T80_Reg.vhd(142)
  binary_mux_s1_w8 mux41 (
    .i0(n41),
    .i1(DIR[23:16]),
    .sel(DIRSet),
    .o(n49));  // ../../rtl/t80se/T80_Reg.vhd(142)
  binary_mux_s1_w8 mux42 (
    .i0(n42),
    .i1(DIR[39:32]),
    .sel(DIRSet),
    .o(n50));  // ../../rtl/t80se/T80_Reg.vhd(142)
  binary_mux_s1_w8 mux43 (
    .i0(n43),
    .i1(DIR[55:48]),
    .sel(DIRSet),
    .o(n51));  // ../../rtl/t80se/T80_Reg.vhd(142)
  binary_mux_s1_w8 mux44 (
    .i0(n44),
    .i1(DIR[71:64]),
    .sel(DIRSet),
    .o(n52));  // ../../rtl/t80se/T80_Reg.vhd(142)
  binary_mux_s1_w8 mux45 (
    .i0(n45),
    .i1(DIR[87:80]),
    .sel(DIRSet),
    .o(n53));  // ../../rtl/t80se/T80_Reg.vhd(142)
  binary_mux_s1_w8 mux46 (
    .i0(n46),
    .i1(DIR[103:96]),
    .sel(DIRSet),
    .o(n54));  // ../../rtl/t80se/T80_Reg.vhd(142)
  binary_mux_s1_w8 mux47 (
    .i0(n47),
    .i1(DIR[119:112]),
    .sel(DIRSet),
    .o(n55));  // ../../rtl/t80se/T80_Reg.vhd(142)
  binary_mux_s1_w8 mux48 (
    .i0(\RegsH[0] ),
    .i1(n9),
    .sel(CEN),
    .o(n56));  // ../../rtl/t80se/T80_Reg.vhd(142)
  binary_mux_s1_w8 mux49 (
    .i0(\RegsH[1] ),
    .i1(n10),
    .sel(CEN),
    .o(n57));  // ../../rtl/t80se/T80_Reg.vhd(142)
  binary_mux_s1_w8 mux5 (
    .i0(\RegsH[2] ),
    .i1(DIH),
    .sel(n0[2]),
    .o(n6));  // ../../rtl/t80se/T80_Reg.vhd(137)
  binary_mux_s1_w8 mux50 (
    .i0(\RegsH[2] ),
    .i1(n11),
    .sel(CEN),
    .o(n58));  // ../../rtl/t80se/T80_Reg.vhd(142)
  binary_mux_s1_w8 mux51 (
    .i0(\RegsH[3] ),
    .i1(n12),
    .sel(CEN),
    .o(n59));  // ../../rtl/t80se/T80_Reg.vhd(142)
  binary_mux_s1_w8 mux52 (
    .i0(\RegsH[4] ),
    .i1(n13),
    .sel(CEN),
    .o(n60));  // ../../rtl/t80se/T80_Reg.vhd(142)
  binary_mux_s1_w8 mux53 (
    .i0(\RegsH[5] ),
    .i1(n14),
    .sel(CEN),
    .o(n61));  // ../../rtl/t80se/T80_Reg.vhd(142)
  binary_mux_s1_w8 mux54 (
    .i0(\RegsH[6] ),
    .i1(n15),
    .sel(CEN),
    .o(n62));  // ../../rtl/t80se/T80_Reg.vhd(142)
  binary_mux_s1_w8 mux55 (
    .i0(\RegsH[7] ),
    .i1(n16),
    .sel(CEN),
    .o(n63));  // ../../rtl/t80se/T80_Reg.vhd(142)
  binary_mux_s1_w8 mux56 (
    .i0(n56),
    .i1(DIR[15:8]),
    .sel(DIRSet),
    .o(n64));  // ../../rtl/t80se/T80_Reg.vhd(142)
  binary_mux_s1_w8 mux57 (
    .i0(n57),
    .i1(DIR[31:24]),
    .sel(DIRSet),
    .o(n65));  // ../../rtl/t80se/T80_Reg.vhd(142)
  binary_mux_s1_w8 mux58 (
    .i0(n58),
    .i1(DIR[47:40]),
    .sel(DIRSet),
    .o(n66));  // ../../rtl/t80se/T80_Reg.vhd(142)
  binary_mux_s1_w8 mux59 (
    .i0(n59),
    .i1(DIR[63:56]),
    .sel(DIRSet),
    .o(n67));  // ../../rtl/t80se/T80_Reg.vhd(142)
  binary_mux_s1_w8 mux6 (
    .i0(\RegsH[1] ),
    .i1(DIH),
    .sel(n0[1]),
    .o(n7));  // ../../rtl/t80se/T80_Reg.vhd(137)
  binary_mux_s1_w8 mux60 (
    .i0(n60),
    .i1(DIR[79:72]),
    .sel(DIRSet),
    .o(n68));  // ../../rtl/t80se/T80_Reg.vhd(142)
  binary_mux_s1_w8 mux61 (
    .i0(n61),
    .i1(DIR[95:88]),
    .sel(DIRSet),
    .o(n69));  // ../../rtl/t80se/T80_Reg.vhd(142)
  binary_mux_s1_w8 mux62 (
    .i0(n62),
    .i1(DIR[111:104]),
    .sel(DIRSet),
    .o(n70));  // ../../rtl/t80se/T80_Reg.vhd(142)
  binary_mux_s1_w8 mux63 (
    .i0(n63),
    .i1(DIR[127:120]),
    .sel(DIRSet),
    .o(n71));  // ../../rtl/t80se/T80_Reg.vhd(142)
  binary_mux_s3_w8 mux64 (
    .i0(\RegsH[0] ),
    .i1(\RegsH[1] ),
    .i2(\RegsH[2] ),
    .i3(\RegsH[3] ),
    .i4(\RegsH[4] ),
    .i5(\RegsH[5] ),
    .i6(\RegsH[6] ),
    .i7(\RegsH[7] ),
    .sel(AddrA),
    .o(DOAH));  // ../../rtl/t80se/T80_Reg.vhd(146)
  binary_mux_s3_w8 mux65 (
    .i0(\RegsL[0] ),
    .i1(\RegsL[1] ),
    .i2(\RegsL[2] ),
    .i3(\RegsL[3] ),
    .i4(\RegsL[4] ),
    .i5(\RegsL[5] ),
    .i6(\RegsL[6] ),
    .i7(\RegsL[7] ),
    .sel(AddrA),
    .o(DOAL));  // ../../rtl/t80se/T80_Reg.vhd(147)
  binary_mux_s3_w8 mux66 (
    .i0(\RegsH[0] ),
    .i1(\RegsH[1] ),
    .i2(\RegsH[2] ),
    .i3(\RegsH[3] ),
    .i4(\RegsH[4] ),
    .i5(\RegsH[5] ),
    .i6(\RegsH[6] ),
    .i7(\RegsH[7] ),
    .sel(AddrB),
    .o(DOBH));  // ../../rtl/t80se/T80_Reg.vhd(148)
  binary_mux_s3_w8 mux67 (
    .i0(\RegsL[0] ),
    .i1(\RegsL[1] ),
    .i2(\RegsL[2] ),
    .i3(\RegsL[3] ),
    .i4(\RegsL[4] ),
    .i5(\RegsL[5] ),
    .i6(\RegsL[6] ),
    .i7(\RegsL[7] ),
    .sel(AddrB),
    .o(DOBL));  // ../../rtl/t80se/T80_Reg.vhd(149)
  binary_mux_s3_w8 mux68 (
    .i0(\RegsH[0] ),
    .i1(\RegsH[1] ),
    .i2(\RegsH[2] ),
    .i3(\RegsH[3] ),
    .i4(\RegsH[4] ),
    .i5(\RegsH[5] ),
    .i6(\RegsH[6] ),
    .i7(\RegsH[7] ),
    .sel(AddrC),
    .o(DOCH));  // ../../rtl/t80se/T80_Reg.vhd(150)
  binary_mux_s3_w8 mux69 (
    .i0(\RegsL[0] ),
    .i1(\RegsL[1] ),
    .i2(\RegsL[2] ),
    .i3(\RegsL[3] ),
    .i4(\RegsL[4] ),
    .i5(\RegsL[5] ),
    .i6(\RegsL[6] ),
    .i7(\RegsL[7] ),
    .sel(AddrC),
    .o(DOCL));  // ../../rtl/t80se/T80_Reg.vhd(151)
  binary_mux_s1_w8 mux7 (
    .i0(\RegsH[0] ),
    .i1(DIH),
    .sel(n0[0]),
    .o(n8));  // ../../rtl/t80se/T80_Reg.vhd(137)
  binary_mux_s1_w8 mux8 (
    .i0(\RegsH[0] ),
    .i1(n8),
    .sel(WEH),
    .o(n9));  // ../../rtl/t80se/T80_Reg.vhd(138)
  binary_mux_s1_w8 mux9 (
    .i0(\RegsH[1] ),
    .i1(n7),
    .sel(WEH),
    .o(n10));  // ../../rtl/t80se/T80_Reg.vhd(138)
  reg_ar_as_w8 reg0 (
    .clk(Clk),
    .d(n49),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(\RegsL[1] ));  // ../../rtl/t80se/T80_Reg.vhd(143)
  reg_ar_as_w8 reg1 (
    .clk(Clk),
    .d(n50),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(\RegsL[2] ));  // ../../rtl/t80se/T80_Reg.vhd(143)
  reg_ar_as_w8 reg10 (
    .clk(Clk),
    .d(n67),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(\RegsH[3] ));  // ../../rtl/t80se/T80_Reg.vhd(143)
  reg_ar_as_w8 reg11 (
    .clk(Clk),
    .d(n68),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(\RegsH[4] ));  // ../../rtl/t80se/T80_Reg.vhd(143)
  reg_ar_as_w8 reg12 (
    .clk(Clk),
    .d(n69),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(\RegsH[5] ));  // ../../rtl/t80se/T80_Reg.vhd(143)
  reg_ar_as_w8 reg13 (
    .clk(Clk),
    .d(n70),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(\RegsH[6] ));  // ../../rtl/t80se/T80_Reg.vhd(143)
  reg_ar_as_w8 reg14 (
    .clk(Clk),
    .d(n71),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(\RegsH[7] ));  // ../../rtl/t80se/T80_Reg.vhd(143)
  reg_ar_as_w8 reg15 (
    .clk(Clk),
    .d(n48),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(\RegsL[0] ));  // ../../rtl/t80se/T80_Reg.vhd(143)
  reg_ar_as_w8 reg2 (
    .clk(Clk),
    .d(n51),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(\RegsL[3] ));  // ../../rtl/t80se/T80_Reg.vhd(143)
  reg_ar_as_w8 reg3 (
    .clk(Clk),
    .d(n52),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(\RegsL[4] ));  // ../../rtl/t80se/T80_Reg.vhd(143)
  reg_ar_as_w8 reg4 (
    .clk(Clk),
    .d(n53),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(\RegsL[5] ));  // ../../rtl/t80se/T80_Reg.vhd(143)
  reg_ar_as_w8 reg5 (
    .clk(Clk),
    .d(n54),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(\RegsL[6] ));  // ../../rtl/t80se/T80_Reg.vhd(143)
  reg_ar_as_w8 reg6 (
    .clk(Clk),
    .d(n55),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(\RegsL[7] ));  // ../../rtl/t80se/T80_Reg.vhd(143)
  reg_ar_as_w8 reg7 (
    .clk(Clk),
    .d(n64),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(\RegsH[0] ));  // ../../rtl/t80se/T80_Reg.vhd(143)
  reg_ar_as_w8 reg8 (
    .clk(Clk),
    .d(n65),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(\RegsH[1] ));  // ../../rtl/t80se/T80_Reg.vhd(143)
  reg_ar_as_w8 reg9 (
    .clk(Clk),
    .d(n66),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(\RegsH[2] ));  // ../../rtl/t80se/T80_Reg.vhd(143)
  buf u1 (DOR[6], \RegsL[0] [6]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u10 (DOR[8], \RegsH[0] [0]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u100 (DOR[98], \RegsL[6] [2]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u101 (DOR[99], \RegsL[6] [3]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u102 (DOR[100], \RegsL[6] [4]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u103 (DOR[101], \RegsL[6] [5]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u104 (DOR[102], \RegsL[6] [6]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u105 (DOR[103], \RegsL[6] [7]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u106 (DOR[104], \RegsH[6] [0]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u107 (DOR[105], \RegsH[6] [1]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u108 (DOR[106], \RegsH[6] [2]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u109 (DOR[107], \RegsH[6] [3]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u11 (DOR[9], \RegsH[0] [1]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u110 (DOR[108], \RegsH[6] [4]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u111 (DOR[109], \RegsH[6] [5]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u112 (DOR[110], \RegsH[6] [6]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u113 (DOR[111], \RegsH[6] [7]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u114 (DOR[112], \RegsL[7] [0]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u115 (DOR[113], \RegsL[7] [1]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u116 (DOR[114], \RegsL[7] [2]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u117 (DOR[115], \RegsL[7] [3]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u118 (DOR[116], \RegsL[7] [4]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u119 (DOR[117], \RegsL[7] [5]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u12 (DOR[10], \RegsH[0] [2]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u120 (DOR[118], \RegsL[7] [6]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u121 (DOR[119], \RegsL[7] [7]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u122 (DOR[120], \RegsH[7] [0]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u123 (DOR[121], \RegsH[7] [1]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u124 (DOR[122], \RegsH[7] [2]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u125 (DOR[123], \RegsH[7] [3]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u126 (DOR[124], \RegsH[7] [4]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u127 (DOR[125], \RegsH[7] [5]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u128 (DOR[126], \RegsH[7] [6]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u129 (DOR[127], \RegsH[7] [7]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u13 (DOR[11], \RegsH[0] [3]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  not u130 (n23, AddrA[1]);  // ../../rtl/t80se/T80_Reg.vhd(137)
  not u131 (n22, AddrA[2]);  // ../../rtl/t80se/T80_Reg.vhd(137)
  and u132 (n20, n21, AddrA[1]);  // ../../rtl/t80se/T80_Reg.vhd(137)
  and u133 (n19, n21, n23);  // ../../rtl/t80se/T80_Reg.vhd(137)
  and u134 (n18, AddrA[0], AddrA[1]);  // ../../rtl/t80se/T80_Reg.vhd(137)
  and u135 (n17, AddrA[0], n23);  // ../../rtl/t80se/T80_Reg.vhd(137)
  and u136 (n0[4], n19, AddrA[2]);  // ../../rtl/t80se/T80_Reg.vhd(137)
  and u137 (n0[0], n19, n22);  // ../../rtl/t80se/T80_Reg.vhd(137)
  and u138 (n0[5], n17, AddrA[2]);  // ../../rtl/t80se/T80_Reg.vhd(137)
  and u139 (n0[1], n17, n22);  // ../../rtl/t80se/T80_Reg.vhd(137)
  buf u14 (DOR[12], \RegsH[0] [4]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  and u140 (n0[6], n20, AddrA[2]);  // ../../rtl/t80se/T80_Reg.vhd(137)
  and u141 (n0[2], n20, n22);  // ../../rtl/t80se/T80_Reg.vhd(137)
  and u142 (n0[7], n18, AddrA[2]);  // ../../rtl/t80se/T80_Reg.vhd(137)
  and u143 (n0[3], n18, n22);  // ../../rtl/t80se/T80_Reg.vhd(137)
  buf u15 (DOR[13], \RegsH[0] [5]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u16 (DOR[14], \RegsH[0] [6]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u17 (DOR[15], \RegsH[0] [7]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u18 (DOR[16], \RegsL[1] [0]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u19 (DOR[17], \RegsL[1] [1]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u2 (DOR[5], \RegsL[0] [5]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u20 (DOR[18], \RegsL[1] [2]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u21 (DOR[19], \RegsL[1] [3]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u22 (DOR[20], \RegsL[1] [4]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u23 (DOR[21], \RegsL[1] [5]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u24 (DOR[22], \RegsL[1] [6]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u25 (DOR[23], \RegsL[1] [7]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u26 (DOR[24], \RegsH[1] [0]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u27 (DOR[25], \RegsH[1] [1]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u28 (DOR[26], \RegsH[1] [2]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u29 (DOR[27], \RegsH[1] [3]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u3 (DOR[4], \RegsL[0] [4]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u30 (DOR[28], \RegsH[1] [4]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u31 (DOR[29], \RegsH[1] [5]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u32 (DOR[30], \RegsH[1] [6]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u33 (DOR[31], \RegsH[1] [7]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u34 (DOR[32], \RegsL[2] [0]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u35 (DOR[33], \RegsL[2] [1]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u36 (DOR[34], \RegsL[2] [2]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u37 (DOR[35], \RegsL[2] [3]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u38 (DOR[36], \RegsL[2] [4]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u39 (DOR[37], \RegsL[2] [5]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u4 (DOR[1], \RegsL[0] [1]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u40 (DOR[38], \RegsL[2] [6]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u41 (DOR[39], \RegsL[2] [7]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u42 (DOR[40], \RegsH[2] [0]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u43 (DOR[41], \RegsH[2] [1]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u44 (DOR[42], \RegsH[2] [2]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u45 (DOR[43], \RegsH[2] [3]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u46 (DOR[44], \RegsH[2] [4]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u47 (DOR[45], \RegsH[2] [5]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u48 (DOR[46], \RegsH[2] [6]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u49 (DOR[47], \RegsH[2] [7]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u5 (DOR[3], \RegsL[0] [3]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u50 (DOR[48], \RegsL[3] [0]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u51 (DOR[49], \RegsL[3] [1]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u52 (DOR[50], \RegsL[3] [2]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u53 (DOR[51], \RegsL[3] [3]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u54 (DOR[52], \RegsL[3] [4]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u55 (DOR[53], \RegsL[3] [5]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u56 (DOR[54], \RegsL[3] [6]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u57 (DOR[55], \RegsL[3] [7]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u58 (DOR[56], \RegsH[3] [0]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u59 (DOR[57], \RegsH[3] [1]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u6 (DOR[2], \RegsL[0] [2]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u60 (DOR[58], \RegsH[3] [2]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u61 (DOR[59], \RegsH[3] [3]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u62 (DOR[60], \RegsH[3] [4]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u63 (DOR[61], \RegsH[3] [5]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u64 (DOR[62], \RegsH[3] [6]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u65 (DOR[63], \RegsH[3] [7]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u66 (DOR[64], \RegsL[4] [0]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u67 (DOR[65], \RegsL[4] [1]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u68 (DOR[66], \RegsL[4] [2]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u69 (DOR[67], \RegsL[4] [3]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u7 (DOR[0], \RegsL[0] [0]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u70 (DOR[68], \RegsL[4] [4]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u71 (DOR[69], \RegsL[4] [5]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u72 (DOR[70], \RegsL[4] [6]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u73 (DOR[71], \RegsL[4] [7]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u74 (DOR[72], \RegsH[4] [0]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u75 (DOR[73], \RegsH[4] [1]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u76 (DOR[74], \RegsH[4] [2]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u77 (DOR[75], \RegsH[4] [3]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u78 (DOR[76], \RegsH[4] [4]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u79 (DOR[77], \RegsH[4] [5]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u8 (DOR[7], \RegsL[0] [7]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u80 (DOR[78], \RegsH[4] [6]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u81 (DOR[79], \RegsH[4] [7]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u82 (DOR[80], \RegsL[5] [0]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u83 (DOR[81], \RegsL[5] [1]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u84 (DOR[82], \RegsL[5] [2]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u85 (DOR[83], \RegsL[5] [3]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u86 (DOR[84], \RegsL[5] [4]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u87 (DOR[85], \RegsL[5] [5]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u88 (DOR[86], \RegsL[5] [6]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u89 (DOR[87], \RegsL[5] [7]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  not u9 (n21, AddrA[0]);  // ../../rtl/t80se/T80_Reg.vhd(137)
  buf u90 (DOR[88], \RegsH[5] [0]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u91 (DOR[89], \RegsH[5] [1]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u92 (DOR[90], \RegsH[5] [2]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u93 (DOR[91], \RegsH[5] [3]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u94 (DOR[92], \RegsH[5] [4]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u95 (DOR[93], \RegsH[5] [5]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u96 (DOR[94], \RegsH[5] [6]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u97 (DOR[95], \RegsH[5] [7]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u98 (DOR[96], \RegsL[6] [0]);  // ../../rtl/t80se/T80_Reg.vhd(152)
  buf u99 (DOR[97], \RegsL[6] [1]);  // ../../rtl/t80se/T80_Reg.vhd(152)

endmodule 

module add_pu7_pu7_o7
  (
  i0,
  i1,
  o
  );

  input [6:0] i0;
  input [6:0] i1;
  output [6:0] o;



endmodule 

module add_pu8_pu8_o9
  (
  i0,
  i1,
  o
  );

  input [7:0] i0;
  input [7:0] i1;
  output [8:0] o;



endmodule 

module T80_ALU  // ../../rtl/t80se/T80_ALU.vhd(76)
  (
  ALU_Op,
  Arith16,
  BusA,
  BusB,
  F_In,
  IR,
  ISet,
  WZ,
  XY_State,
  Z16,
  FC_Out,
  F_Out,
  Q
  );

  input [3:0] ALU_Op;  // ../../rtl/t80se/T80_ALU.vhd(93)
  input Arith16;  // ../../rtl/t80se/T80_ALU.vhd(89)
  input [7:0] BusA;  // ../../rtl/t80se/T80_ALU.vhd(96)
  input [7:0] BusB;  // ../../rtl/t80se/T80_ALU.vhd(97)
  input [7:0] F_In;  // ../../rtl/t80se/T80_ALU.vhd(98)
  input [5:0] IR;  // ../../rtl/t80se/T80_ALU.vhd(94)
  input [1:0] ISet;  // ../../rtl/t80se/T80_ALU.vhd(95)
  input [15:0] WZ;  // ../../rtl/t80se/T80_ALU.vhd(91)
  input [1:0] XY_State;  // ../../rtl/t80se/T80_ALU.vhd(92)
  input Z16;  // ../../rtl/t80se/T80_ALU.vhd(90)
  output FC_Out;  // ../../rtl/t80se/T80_ALU.vhd(100)
  output [7:0] F_Out;  // ../../rtl/t80se/T80_ALU.vhd(101)
  output [7:0] Q;  // ../../rtl/t80se/T80_ALU.vhd(99)

  parameter Flag_C = 0;
  parameter Flag_H = 4;
  parameter Flag_N = 1;
  parameter Flag_P = 2;
  parameter Flag_S = 7;
  parameter Flag_X = 3;
  parameter Flag_Y = 5;
  parameter Flag_Z = 6;
  parameter Mode = 0;
  wire [7:0] BitMask;  // ../../rtl/t80se/T80_ALU.vhd(136)
  wire [7:0] Q_t;  // ../../rtl/t80se/T80_ALU.vhd(165)
  wire [7:0] Q_v;  // ../../rtl/t80se/T80_ALU.vhd(134)
  wire [7:0] n10;
  wire [7:0] n11;
  wire [7:0] n12;
  wire [7:0] n13;
  wire [2:0] n14;
  wire [1:0] n17;
  wire [3:0] n3;
  wire [2:0] n30;
  wire [6:0] n34;
  wire [4:0] n35;
  wire [3:0] n36;
  wire [3:0] n39;
  wire [3:0] n4;
  wire [3:0] n40;
  wire [8:0] n43;
  wire [8:0] n45;
  wire [9:0] n48;
  wire [8:0] n49;
  wire [2:0] n5;
  wire [8:0] n51;
  wire [1:0] n54;
  wire [1:0] n55;
  wire [1:0] n56;
  wire [1:0] n57;
  wire [1:0] n58;
  wire [1:0] n59;
  wire [2:0] n6;
  wire [1:0] n60;
  wire [1:0] n61;
  wire [1:0] n62;
  wire [1:0] n63;
  wire [7:0] n65;
  wire [1:0] n70;
  wire [7:0] n71;
  wire [7:0] n72;
  wire [7:0] n73;
  wire [7:0] n74;
  wire [2:0] n86;
  wire [1:0] n9;
  wire Carry7_v;  // ../../rtl/t80se/T80_ALU.vhd(130)
  wire Carry_v;  // ../../rtl/t80se/T80_ALU.vhd(133)
  wire HalfCarry_v;  // ../../rtl/t80se/T80_ALU.vhd(132)
  wire Overflow_v;  // ../../rtl/t80se/T80_ALU.vhd(131)
  wire UseCarry;  // ../../rtl/t80se/T80_ALU.vhd(129)
  wire n0;
  wire n1;
  wire n15;
  wire n16;
  wire n18;
  wire n19;
  wire n2;
  wire n20;
  wire n21;
  wire n22;
  wire n23;
  wire n24;
  wire n25;
  wire n26;
  wire n27;
  wire n28;
  wire n29;
  wire n31;
  wire n32;
  wire n33;
  wire n37;
  wire n38;
  wire n41;
  wire n42;
  wire n44;
  wire n46;
  wire n47;
  wire n50;
  wire n52;
  wire n53;
  wire n64;
  wire n66;
  wire n67;
  wire n68;
  wire n69;
  wire n7;
  wire n75;
  wire n76;
  wire n77;
  wire n78;
  wire n79;
  wire n8;
  wire n80;
  wire n81;
  wire n82;
  wire n83;
  wire n84;
  wire n85;

  add_pu5_pu5_o6 add0 (
    .i0({BusA[3:0],n2}),
    .i1({n4,1'b1}),
    .o({HalfCarry_v,Q_v[3:0],open_n0}));  // ../../rtl/t80se/T80_ALU.vhd(123)
  add_pu4_pu4_o5 add1 (
    .i0({BusA[6:4],HalfCarry_v}),
    .i1({n6,1'b1}),
    .o({Carry7_v,Q_v[6:4],open_n1}));  // ../../rtl/t80se/T80_ALU.vhd(123)
  add_pu2_pu2_o3 add2 (
    .i0({BusA[7],Carry7_v}),
    .i1({n8,1'b1}),
    .o({Carry_v,Q_v[7],open_n2}));  // ../../rtl/t80se/T80_ALU.vhd(123)
  add_pu7_pu7_o8 add3 (
    .i0(BusA[7:1]),
    .i1(7'b0000011),
    .o({n33,n34}));
  add_pu4_pu4_o4 add4 (
    .i0(n36),
    .i1(4'b0011),
    .o(n39));
  eq_w3 eq0 (
    .i0(3'b111),
    .i1(ALU_Op[2:0]),
    .o(n16));  // ../../rtl/t80se/T80_ALU.vhd(201)
  eq_w8 eq1 (
    .i0(8'b00000000),
    .i1(n13),
    .o(n18));  // ../../rtl/t80se/T80_ALU.vhd(208)
  eq_w8 eq2 (
    .i0(n51[7:0]),
    .i1(8'b00000000),
    .o(n53));  // ../../rtl/t80se/T80_ALU.vhd(266)
  eq_w8 eq3 (
    .i0(8'b00000000),
    .i1({BusA[7:4],n62,n63[0],n63[1]}),
    .o(n64));  // ../../rtl/t80se/T80_ALU.vhd(287)
  eq_w8 eq4 (
    .i0(8'b00000000),
    .i1(n65),
    .o(n66));  // ../../rtl/t80se/T80_ALU.vhd(300)
  eq_w3 eq5 (
    .i0(3'b110),
    .i1(IR[2:0]),
    .o(n67));  // ../../rtl/t80se/T80_ALU.vhd(309)
  eq_w8 eq6 (
    .i0(8'b00000000),
    .i1(n74),
    .o(n76));  // ../../rtl/t80se/T80_ALU.vhd(369)
  eq_w2 eq7 (
    .i0(2'b00),
    .i1(ISet),
    .o(n85));  // ../../rtl/t80se/T80_ALU.vhd(376)
  lt_u4_u4 lt0 (
    .ci(1'b0),
    .i0(4'b1001),
    .i1(BusA[3:0]),
    .o(n31));  // ../../rtl/t80se/T80_ALU.vhd(238)
  lt_u5_u5 lt1 (
    .ci(1'b0),
    .i0(5'b01001),
    .i1({n36,n35[4]}),
    .o(n37));  // ../../rtl/t80se/T80_ALU.vhd(247)
  lt_u4_u4 lt2 (
    .ci(1'b0),
    .i0(4'b0101),
    .i1(BusA[3:0]),
    .o(n41));  // ../../rtl/t80se/T80_ALU.vhd(253)
  lt_u8_u8 lt3 (
    .ci(1'b0),
    .i0(8'b10011001),
    .i1(BusA),
    .o(n46));  // ../../rtl/t80se/T80_ALU.vhd(258)
  binary_mux_s1_w2 mux0 (
    .i0(BusB[3:2]),
    .i1(BusB[7:6]),
    .sel(ALU_Op[0]),
    .o(n62));  // ../../rtl/t80se/T80_ALU.vhd(281)
  binary_mux_s1_w4 mux1 (
    .i0(BusB[3:0]),
    .i1(n3),
    .sel(ALU_Op[1]),
    .o(n4));  // ../../rtl/t80se/T80_ALU.vhd(121)
  binary_mux_s1_w6 mux10 (
    .i0({BusA[4:1],F_In[4],F_In[4]}),
    .i1({n34[3:0],n31,n42}),
    .sel(n32),
    .o({n35,n44}));  // ../../rtl/t80se/T80_ALU.vhd(245)
  binary_mux_s1_w9 mux11 (
    .i0({1'b0,BusA}),
    .i1({1'b0,n43[7:0]}),
    .sel(n32),
    .o(n45));  // ../../rtl/t80se/T80_ALU.vhd(257)
  binary_mux_s1_w9 mux12 (
    .i0(n45),
    .i1(n48[8:0]),
    .sel(n47),
    .o(n49));  // ../../rtl/t80se/T80_ALU.vhd(260)
  binary_mux_s1_w4 mux13 (
    .i0(n36),
    .i1(n39),
    .sel(n38),
    .o(n40));  // ../../rtl/t80se/T80_ALU.vhd(249)
  binary_mux_s3_w3 mux14 (
    .i0({HalfCarry_v,1'b0,Carry_v}),
    .i1({HalfCarry_v,1'b0,Carry_v}),
    .i2({n9[1],1'b1,n9[0]}),
    .i3({n9[1],1'b1,n9[0]}),
    .i4(3'b100),
    .i5(3'b000),
    .i6(3'b000),
    .i7({n9[1],1'b1,n9[0]}),
    .sel(ALU_Op[2:0]),
    .o(n14));  // ../../rtl/t80se/T80_ALU.vhd(200)
  binary_mux_s1_w2 mux15 (
    .i0({BusB[0],BusB[1]}),
    .i1({BusB[4],BusB[5]}),
    .sel(ALU_Op[0]),
    .o(n63));  // ../../rtl/t80se/T80_ALU.vhd(281)
  binary_mux_s1_w3 mux16 (
    .i0({n74[7],n76,n84}),
    .i1({F_In[7:6],F_In[2]}),
    .sel(n85),
    .o(n86));  // ../../rtl/t80se/T80_ALU.vhd(380)
  binary_mux_s3_w8 mux17 (
    .i0({BusA[6:0],BusA[7]}),
    .i1({BusA[0],BusA[7:1]}),
    .i2({BusA[6:0],F_In[0]}),
    .i3({F_In[0],BusA[7:1]}),
    .i4({BusA[6:0],1'b0}),
    .i5({BusA[7],BusA[7:1]}),
    .i6({BusA[6:0],1'b1}),
    .i7({1'b0,BusA[7:1]}),
    .sel(IR[5:3]),
    .o(n74));  // ../../rtl/t80se/T80_ALU.vhd(363)
  binary_mux_s1_w3 mux18 (
    .i0({n13[7],n20,n29}),
    .i1({F_In[7:6],F_In[2]}),
    .sel(Arith16),
    .o(n30));  // ../../rtl/t80se/T80_ALU.vhd(227)
  binary_mux_s4_w8 mux19 (
    .i0({n30[2:1],n17[1],n14[2],n17[0],n30[0],n14[1:0]}),
    .i1({n30[2:1],n17[1],n14[2],n17[0],n30[0],n14[1:0]}),
    .i10(F_In),
    .i11(F_In),
    .i12({n51[7],n53,n51[5],n50,n51[3],n61[0],F_In[1],n52}),
    .i13({BusA[7],n64,BusA[5],1'b0,n62[1],n61[1],1'b0,F_In[0]}),
    .i14({BusA[7],n64,BusA[5],1'b0,n62[1],n61[1],1'b0,F_In[0]}),
    .i15(F_In),
    .i2({n30[2:1],n17[1],n14[2],n17[0],n30[0],n14[1:0]}),
    .i3({n30[2:1],n17[1],n14[2],n17[0],n30[0],n14[1:0]}),
    .i4({n30[2:1],n17[1],n14[2],n17[0],n30[0],n14[1:0]}),
    .i5({n30[2:1],n17[1],n14[2],n17[0],n30[0],n14[1:0]}),
    .i6({n30[2:1],n17[1],n14[2],n17[0],n30[0],n14[1:0]}),
    .i7({n30[2:1],n17[1],n14[2],n17[0],n30[0],n14[1:0]}),
    .i8({n86[2:1],n74[5],1'b0,n74[3],n86[0],1'b0,n75}),
    .i9({n65[7],n66,n70[1],1'b1,n70[0],n66,1'b0,F_In[0]}),
    .sel(ALU_Op),
    .o(F_Out));  // ../../rtl/t80se/T80_ALU.vhd(384)
  binary_mux_s1_w3 mux2 (
    .i0(BusB[6:4]),
    .i1(n5),
    .sel(ALU_Op[1]),
    .o(n6));  // ../../rtl/t80se/T80_ALU.vhd(121)
  binary_mux_s4_w1 mux20 (
    .i0(1'b1),
    .i1(1'b1),
    .i10(1'b0),
    .i11(1'b0),
    .i12(1'b1),
    .i13(1'b1),
    .i14(1'b1),
    .i15(1'b0),
    .i2(1'b1),
    .i3(1'b1),
    .i4(1'b1),
    .i5(1'b1),
    .i6(1'b1),
    .i7(1'b1),
    .i8(1'b1),
    .i9(1'b1),
    .sel(ALU_Op),
    .o(FC_Out));  // ../../rtl/t80se/T80_ALU.vhd(384)
  binary_mux_s4_w8 mux21 (
    .i0(n13),
    .i1(n13),
    .i10(n71),
    .i11(n73),
    .i12(n51[7:0]),
    .i13({BusA[7:4],n62,n63[0],n63[1]}),
    .i14({BusA[7:4],n62,n63[0],n63[1]}),
    .i15(8'bxxxxxxxx),
    .i2(n13),
    .i3(n13),
    .i4(n13),
    .i5(n13),
    .i6(n13),
    .i7(n13),
    .i8(n74),
    .i9(n65),
    .sel(ALU_Op),
    .o(Q_t));  // ../../rtl/t80se/T80_ALU.vhd(384)
  binary_mux_s1_w10 mux22 (
    .i0({n40,n35[4:1],BusA[0],n35[0]}),
    .i1({n49,n44}),
    .sel(F_In[1]),
    .o({n51,n50}));  // ../../rtl/t80se/T80_ALU.vhd(261)
  binary_mux_s3_w8 mux3 (
    .i0(8'b00000001),
    .i1(8'b00000010),
    .i2(8'b00000100),
    .i3(8'b00001000),
    .i4(8'b00010000),
    .i5(8'b00100000),
    .i6(8'b01000000),
    .i7(8'b10000000),
    .sel(IR[5:3]),
    .o(BitMask));  // ../../rtl/t80se/T80_ALU.vhd(147)
  binary_mux_s3_w8 mux4 (
    .i0(Q_v),
    .i1(Q_v),
    .i2(Q_v),
    .i3(Q_v),
    .i4(n10),
    .i5(n11),
    .i6(n12),
    .i7(Q_v),
    .sel(ALU_Op[2:0]),
    .o({open_n3,n13[6:0]}));  // ../../rtl/t80se/T80_ALU.vhd(200)
  binary_mux_s3_w1 mux5 (
    .i0(Overflow_v),
    .i1(Overflow_v),
    .i2(Overflow_v),
    .i3(Overflow_v),
    .i4(F_In[2]),
    .i5(F_In[2]),
    .i6(F_In[2]),
    .i7(Overflow_v),
    .sel(ALU_Op[2:0]),
    .o(n15));  // ../../rtl/t80se/T80_ALU.vhd(200)
  binary_mux_s1_w2 mux6 (
    .i0({n13[5],n13[3]}),
    .i1({BusB[5],BusB[3]}),
    .sel(n16),
    .o(n17));  // ../../rtl/t80se/T80_ALU.vhd(207)
  binary_mux_s3_w2 mux7 (
    .i0({Q_v[7],n15}),
    .i1({Q_v[7],n15}),
    .i2({Q_v[7],n15}),
    .i3({Q_v[7],n15}),
    .i4({n10[7],n28}),
    .i5({n11[7],n28}),
    .i6({n12[7],n28}),
    .i7({Q_v[7],n15}),
    .sel(ALU_Op[2:0]),
    .o({n13[7],n29}));  // ../../rtl/t80se/T80_ALU.vhd(200)
  binary_mux_s1_w2 mux8 (
    .i0({BusB[5],BusB[3]}),
    .i1({WZ[13],WZ[11]}),
    .sel(n69),
    .o(n70));  // ../../rtl/t80se/T80_ALU.vhd(315)
  binary_mux_s1_w4 mux9 (
    .i0({1'b0,BusA[7:5]}),
    .i1({n33,n34[6:4]}),
    .sel(n32),
    .o(n36));  // ../../rtl/t80se/T80_ALU.vhd(245)
  ne_w2 neq0 (
    .i0(2'b00),
    .i1(XY_State),
    .o(n68));  // ../../rtl/t80se/T80_ALU.vhd(309)
  add_pu9_mu9_o9 sub0 (
    .i0({1'b0,BusA}),
    .i1(9'b000000110),
    .o({open_n4,n43[7:0]}));
  add_pu10_mu10_o10 sub1 (
    .i0({1'b0,n45}),
    .i1(10'b0101100000),
    .o({open_n5,n48[8:0]}));
  or u10 (n71[2], BusB[2], BitMask[2]);  // ../../rtl/t80se/T80_ALU.vhd(318)
  or u100 (n12[3], BusA[3], BusB[3]);  // ../../rtl/t80se/T80_ALU.vhd(198)
  or u101 (n12[4], BusA[4], BusB[4]);  // ../../rtl/t80se/T80_ALU.vhd(198)
  or u102 (n12[5], BusA[5], BusB[5]);  // ../../rtl/t80se/T80_ALU.vhd(198)
  or u103 (n12[6], BusA[6], BusB[6]);  // ../../rtl/t80se/T80_ALU.vhd(198)
  or u104 (n12[7], BusA[7], BusB[7]);  // ../../rtl/t80se/T80_ALU.vhd(198)
  xor u105 (n11[1], BusA[1], BusB[1]);  // ../../rtl/t80se/T80_ALU.vhd(195)
  xor u106 (n11[2], BusA[2], BusB[2]);  // ../../rtl/t80se/T80_ALU.vhd(195)
  xor u107 (n11[3], BusA[3], BusB[3]);  // ../../rtl/t80se/T80_ALU.vhd(195)
  xor u108 (n11[4], BusA[4], BusB[4]);  // ../../rtl/t80se/T80_ALU.vhd(195)
  xor u109 (n11[5], BusA[5], BusB[5]);  // ../../rtl/t80se/T80_ALU.vhd(195)
  not u11 (n0, ALU_Op[2]);  // ../../rtl/t80se/T80_ALU.vhd(149)
  xor u110 (n11[6], BusA[6], BusB[6]);  // ../../rtl/t80se/T80_ALU.vhd(195)
  xor u111 (n11[7], BusA[7], BusB[7]);  // ../../rtl/t80se/T80_ALU.vhd(195)
  and u112 (n10[1], BusA[1], BusB[1]);  // ../../rtl/t80se/T80_ALU.vhd(192)
  and u113 (n10[2], BusA[2], BusB[2]);  // ../../rtl/t80se/T80_ALU.vhd(192)
  and u114 (n10[3], BusA[3], BusB[3]);  // ../../rtl/t80se/T80_ALU.vhd(192)
  and u115 (n10[4], BusA[4], BusB[4]);  // ../../rtl/t80se/T80_ALU.vhd(192)
  and u116 (n10[5], BusA[5], BusB[5]);  // ../../rtl/t80se/T80_ALU.vhd(192)
  and u117 (n10[6], BusA[6], BusB[6]);  // ../../rtl/t80se/T80_ALU.vhd(192)
  and u118 (n10[7], BusA[7], BusB[7]);  // ../../rtl/t80se/T80_ALU.vhd(192)
  not u119 (n5[1], BusB[5]);
  and u12 (UseCarry, n0, ALU_Op[0]);  // ../../rtl/t80se/T80_ALU.vhd(149)
  not u120 (n5[2], BusB[6]);
  not u121 (n3[1], BusB[1]);
  not u122 (n3[2], BusB[2]);
  not u123 (n3[3], BusB[3]);
  and u13 (n1, UseCarry, F_In[0]);  // ../../rtl/t80se/T80_ALU.vhd(150)
  xor u14 (n2, ALU_Op[1], n1);  // ../../rtl/t80se/T80_ALU.vhd(150)
  not u15 (n3[0], BusB[0]);
  not u16 (n7, BusB[7]);
  AL_MUX u17 (
    .i0(BusB[7]),
    .i1(n7),
    .sel(ALU_Op[1]),
    .o(n8));  // ../../rtl/t80se/T80_ALU.vhd(121)
  xor u18 (Overflow_v, Carry_v, Carry7_v);  // ../../rtl/t80se/T80_ALU.vhd(160)
  or u19 (n71[3], BusB[3], BitMask[3]);  // ../../rtl/t80se/T80_ALU.vhd(318)
  not u20 (n5[0], BusB[4]);
  and u21 (n10[0], BusA[0], BusB[0]);  // ../../rtl/t80se/T80_ALU.vhd(192)
  xor u22 (n11[0], BusA[0], BusB[0]);  // ../../rtl/t80se/T80_ALU.vhd(195)
  or u23 (n12[0], BusA[0], BusB[0]);  // ../../rtl/t80se/T80_ALU.vhd(198)
  or u24 (n71[4], BusB[4], BitMask[4]);  // ../../rtl/t80se/T80_ALU.vhd(318)
  or u25 (n71[5], BusB[5], BitMask[5]);  // ../../rtl/t80se/T80_ALU.vhd(318)
  not u26 (n9[0], Carry_v);  // ../../rtl/t80se/T80_ALU.vhd(189)
  and u27 (n65[1], BusB[1], BitMask[1]);  // ../../rtl/t80se/T80_ALU.vhd(321)
  AL_MUX u28 (
    .i0(1'b1),
    .i1(F_In[6]),
    .sel(Z16),
    .o(n19));  // ../../rtl/t80se/T80_ALU.vhd(212)
  AL_MUX u29 (
    .i0(1'b0),
    .i1(n19),
    .sel(n18),
    .o(n20));  // ../../rtl/t80se/T80_ALU.vhd(215)
  buf u3 (Q[6], Q_t[6]);  // ../../rtl/t80se/T80_ALU.vhd(386)
  xor u30 (n21, n13[0], n13[1]);  // ../../rtl/t80se/T80_ALU.vhd(220)
  xor u31 (n22, n21, n13[2]);  // ../../rtl/t80se/T80_ALU.vhd(220)
  xor u32 (n23, n22, n13[3]);  // ../../rtl/t80se/T80_ALU.vhd(220)
  xor u33 (n24, n23, n13[4]);  // ../../rtl/t80se/T80_ALU.vhd(220)
  xor u34 (n25, n24, n13[5]);  // ../../rtl/t80se/T80_ALU.vhd(221)
  xor u35 (n26, n25, n13[6]);  // ../../rtl/t80se/T80_ALU.vhd(221)
  xor u36 (n27, n26, n13[7]);  // ../../rtl/t80se/T80_ALU.vhd(221)
  not u37 (n28, n27);  // ../../rtl/t80se/T80_ALU.vhd(221)
  and u38 (n65[2], BusB[2], BitMask[2]);  // ../../rtl/t80se/T80_ALU.vhd(321)
  and u39 (n65[3], BusB[3], BitMask[3]);  // ../../rtl/t80se/T80_ALU.vhd(321)
  not u4 (n72[3], BitMask[3]);  // ../../rtl/t80se/T80_ALU.vhd(321)
  buf u40 (Q[4], Q_t[4]);  // ../../rtl/t80se/T80_ALU.vhd(386)
  or u41 (n32, n31, F_In[4]);  // ../../rtl/t80se/T80_ALU.vhd(238)
  buf u42 (Q[3], Q_t[3]);  // ../../rtl/t80se/T80_ALU.vhd(386)
  and u43 (n73[2], BusB[2], n72[2]);  // ../../rtl/t80se/T80_ALU.vhd(321)
  buf u44 (Q[0], Q_t[0]);  // ../../rtl/t80se/T80_ALU.vhd(386)
  and u45 (n73[3], BusB[3], n72[3]);  // ../../rtl/t80se/T80_ALU.vhd(321)
  and u46 (n73[4], BusB[4], n72[4]);  // ../../rtl/t80se/T80_ALU.vhd(321)
  and u47 (n73[5], BusB[5], n72[5]);  // ../../rtl/t80se/T80_ALU.vhd(321)
  and u48 (n65[7], BusB[7], BitMask[7]);  // ../../rtl/t80se/T80_ALU.vhd(321)
  and u49 (n73[0], BusB[0], n72[0]);  // ../../rtl/t80se/T80_ALU.vhd(321)
  not u5 (n72[4], BitMask[4]);  // ../../rtl/t80se/T80_ALU.vhd(321)
  and u50 (n73[1], BusB[1], n72[1]);  // ../../rtl/t80se/T80_ALU.vhd(321)
  or u51 (n38, n37, F_In[0]);  // ../../rtl/t80se/T80_ALU.vhd(247)
  and u52 (n73[6], BusB[6], n72[6]);  // ../../rtl/t80se/T80_ALU.vhd(321)
  and u53 (n73[7], BusB[7], n72[7]);  // ../../rtl/t80se/T80_ALU.vhd(321)
  not u54 (n61[1], n60[1]);  // ../../rtl/t80se/T80_ALU.vhd(294)
  buf u55 (Q[2], Q_t[2]);  // ../../rtl/t80se/T80_ALU.vhd(386)
  AL_MUX u56 (
    .i0(F_In[4]),
    .i1(1'b0),
    .sel(n41),
    .o(n42));  // ../../rtl/t80se/T80_ALU.vhd(255)
  buf u57 (Q[1], Q_t[1]);  // ../../rtl/t80se/T80_ALU.vhd(386)
  or u58 (n47, n46, F_In[0]);  // ../../rtl/t80se/T80_ALU.vhd(258)
  not u59 (n9[1], HalfCarry_v);  // ../../rtl/t80se/T80_ALU.vhd(189)
  not u6 (n72[5], BitMask[5]);  // ../../rtl/t80se/T80_ALU.vhd(321)
  or u60 (n52, F_In[0], n51[8]);  // ../../rtl/t80se/T80_ALU.vhd(264)
  or u61 (n71[7], BusB[7], BitMask[7]);  // ../../rtl/t80se/T80_ALU.vhd(318)
  xor u62 (n60[1], n59[1], BusA[7]);  // ../../rtl/t80se/T80_ALU.vhd(294)
  xor u63 (n59[1], n58[1], BusA[6]);  // ../../rtl/t80se/T80_ALU.vhd(294)
  xor u64 (n58[1], n57[1], BusA[5]);  // ../../rtl/t80se/T80_ALU.vhd(294)
  xor u65 (n57[1], n56[1], BusA[4]);  // ../../rtl/t80se/T80_ALU.vhd(293)
  xor u66 (n56[1], n55[1], n62[1]);  // ../../rtl/t80se/T80_ALU.vhd(293)
  xor u67 (n55[1], n54[1], n62[0]);  // ../../rtl/t80se/T80_ALU.vhd(293)
  xor u68 (n54[1], n63[1], n63[0]);  // ../../rtl/t80se/T80_ALU.vhd(293)
  not u69 (n61[0], n60[0]);  // ../../rtl/t80se/T80_ALU.vhd(294)
  not u7 (n72[6], BitMask[6]);  // ../../rtl/t80se/T80_ALU.vhd(321)
  not u70 (n72[2], BitMask[2]);  // ../../rtl/t80se/T80_ALU.vhd(321)
  or u71 (n71[6], BusB[6], BitMask[6]);  // ../../rtl/t80se/T80_ALU.vhd(318)
  and u72 (n65[0], BusB[0], BitMask[0]);  // ../../rtl/t80se/T80_ALU.vhd(321)
  xor u73 (n54[0], n51[0], n51[1]);  // ../../rtl/t80se/T80_ALU.vhd(293)
  xor u74 (n55[0], n54[0], n51[2]);  // ../../rtl/t80se/T80_ALU.vhd(293)
  xor u75 (n56[0], n55[0], n51[3]);  // ../../rtl/t80se/T80_ALU.vhd(293)
  xor u76 (n57[0], n56[0], n51[4]);  // ../../rtl/t80se/T80_ALU.vhd(293)
  xor u77 (n58[0], n57[0], n51[5]);  // ../../rtl/t80se/T80_ALU.vhd(294)
  xor u78 (n59[0], n58[0], n51[6]);  // ../../rtl/t80se/T80_ALU.vhd(294)
  not u79 (n72[1], BitMask[1]);  // ../../rtl/t80se/T80_ALU.vhd(321)
  not u8 (n72[7], BitMask[7]);  // ../../rtl/t80se/T80_ALU.vhd(321)
  or u80 (n69, n67, n68);  // ../../rtl/t80se/T80_ALU.vhd(309)
  and u81 (n65[6], BusB[6], BitMask[6]);  // ../../rtl/t80se/T80_ALU.vhd(321)
  xor u82 (n60[0], n59[0], n51[7]);  // ../../rtl/t80se/T80_ALU.vhd(294)
  or u83 (n71[0], BusB[0], BitMask[0]);  // ../../rtl/t80se/T80_ALU.vhd(318)
  buf u84 (Q[7], Q_t[7]);  // ../../rtl/t80se/T80_ALU.vhd(386)
  AL_MUX u85 (
    .i0(BusA[7]),
    .i1(BusA[0]),
    .sel(IR[3]),
    .o(n75));  // ../../rtl/t80se/T80_ALU.vhd(363)
  xor u86 (n77, n74[0], n74[1]);  // ../../rtl/t80se/T80_ALU.vhd(374)
  xor u87 (n78, n77, n74[2]);  // ../../rtl/t80se/T80_ALU.vhd(374)
  xor u88 (n79, n78, n74[3]);  // ../../rtl/t80se/T80_ALU.vhd(374)
  xor u89 (n80, n79, n74[4]);  // ../../rtl/t80se/T80_ALU.vhd(374)
  or u9 (n71[1], BusB[1], BitMask[1]);  // ../../rtl/t80se/T80_ALU.vhd(318)
  xor u90 (n81, n80, n74[5]);  // ../../rtl/t80se/T80_ALU.vhd(375)
  xor u91 (n82, n81, n74[6]);  // ../../rtl/t80se/T80_ALU.vhd(375)
  xor u92 (n83, n82, n74[7]);  // ../../rtl/t80se/T80_ALU.vhd(375)
  not u93 (n84, n83);  // ../../rtl/t80se/T80_ALU.vhd(375)
  and u94 (n65[4], BusB[4], BitMask[4]);  // ../../rtl/t80se/T80_ALU.vhd(321)
  and u95 (n65[5], BusB[5], BitMask[5]);  // ../../rtl/t80se/T80_ALU.vhd(321)
  buf u96 (Q[5], Q_t[5]);  // ../../rtl/t80se/T80_ALU.vhd(386)
  not u97 (n72[0], BitMask[0]);  // ../../rtl/t80se/T80_ALU.vhd(321)
  or u98 (n12[1], BusA[1], BusB[1]);  // ../../rtl/t80se/T80_ALU.vhd(198)
  or u99 (n12[2], BusA[2], BusB[2]);  // ../../rtl/t80se/T80_ALU.vhd(198)

endmodule 

module T80_MCode  // ../../rtl/t80se/T80_MCode.vhd(80)
  (
  F,
  IR,
  ISet,
  IntCycle,
  MCycle,
  NMICycle,
  XY_State,
  ALU_Op,
  Arith16,
  Call,
  ExchangeAF,
  ExchangeDH,
  ExchangeRS,
  ExchangeRp,
  Halt,
  IMode,
  IORQ,
  I_BC,
  I_BT,
  I_BTR,
  I_CCF,
  I_CPL,
  I_DJNZ,
  I_INRC,
  I_RETN,
  I_RLD,
  I_RRD,
  I_SCF,
  IncDec_16,
  Inc_PC,
  Inc_WZ,
  Jump,
  JumpE,
  JumpXY,
  LDSPHL,
  LDW,
  LDZ,
  MCycles,
  NoRead,
  Prefix,
  PreserveC,
  Read_To_Acc,
  Read_To_Reg,
  RstP,
  Save_ALU,
  SetDI,
  SetEI,
  SetWZ,
  Set_Addr_To,
  Set_BusA_To,
  Set_BusB_To,
  Special_LD,
  TStates,
  Write,
  XYbit_undoc
  );

  input [7:0] F;  // ../../rtl/t80se/T80_MCode.vhd(96)
  input [7:0] IR;  // ../../rtl/t80se/T80_MCode.vhd(93)
  input [1:0] ISet;  // ../../rtl/t80se/T80_MCode.vhd(94)
  input IntCycle;  // ../../rtl/t80se/T80_MCode.vhd(98)
  input [2:0] MCycle;  // ../../rtl/t80se/T80_MCode.vhd(95)
  input NMICycle;  // ../../rtl/t80se/T80_MCode.vhd(97)
  input [1:0] XY_State;  // ../../rtl/t80se/T80_MCode.vhd(99)
  output [3:0] ALU_Op;  // ../../rtl/t80se/T80_MCode.vhd(110)
  output Arith16;  // ../../rtl/t80se/T80_MCode.vhd(114)
  output Call;  // ../../rtl/t80se/T80_MCode.vhd(120)
  output ExchangeAF;  // ../../rtl/t80se/T80_MCode.vhd(128)
  output ExchangeDH;  // ../../rtl/t80se/T80_MCode.vhd(126)
  output ExchangeRS;  // ../../rtl/t80se/T80_MCode.vhd(129)
  output ExchangeRp;  // ../../rtl/t80se/T80_MCode.vhd(127)
  output Halt;  // ../../rtl/t80se/T80_MCode.vhd(145)
  output [1:0] IMode;  // ../../rtl/t80se/T80_MCode.vhd(144)
  output IORQ;  // ../../rtl/t80se/T80_MCode.vhd(116)
  output I_BC;  // ../../rtl/t80se/T80_MCode.vhd(136)
  output I_BT;  // ../../rtl/t80se/T80_MCode.vhd(135)
  output I_BTR;  // ../../rtl/t80se/T80_MCode.vhd(137)
  output I_CCF;  // ../../rtl/t80se/T80_MCode.vhd(132)
  output I_CPL;  // ../../rtl/t80se/T80_MCode.vhd(131)
  output I_DJNZ;  // ../../rtl/t80se/T80_MCode.vhd(130)
  output I_INRC;  // ../../rtl/t80se/T80_MCode.vhd(140)
  output I_RETN;  // ../../rtl/t80se/T80_MCode.vhd(134)
  output I_RLD;  // ../../rtl/t80se/T80_MCode.vhd(138)
  output I_RRD;  // ../../rtl/t80se/T80_MCode.vhd(139)
  output I_SCF;  // ../../rtl/t80se/T80_MCode.vhd(133)
  output [3:0] IncDec_16;  // ../../rtl/t80se/T80_MCode.vhd(105)
  output Inc_PC;  // ../../rtl/t80se/T80_MCode.vhd(103)
  output Inc_WZ;  // ../../rtl/t80se/T80_MCode.vhd(104)
  output Jump;  // ../../rtl/t80se/T80_MCode.vhd(117)
  output JumpE;  // ../../rtl/t80se/T80_MCode.vhd(118)
  output JumpXY;  // ../../rtl/t80se/T80_MCode.vhd(119)
  output LDSPHL;  // ../../rtl/t80se/T80_MCode.vhd(124)
  output LDW;  // ../../rtl/t80se/T80_MCode.vhd(123)
  output LDZ;  // ../../rtl/t80se/T80_MCode.vhd(122)
  output [2:0] MCycles;  // ../../rtl/t80se/T80_MCode.vhd(100)
  output NoRead;  // ../../rtl/t80se/T80_MCode.vhd(146)
  output [1:0] Prefix;  // ../../rtl/t80se/T80_MCode.vhd(102)
  output PreserveC;  // ../../rtl/t80se/T80_MCode.vhd(113)
  output Read_To_Acc;  // ../../rtl/t80se/T80_MCode.vhd(107)
  output Read_To_Reg;  // ../../rtl/t80se/T80_MCode.vhd(106)
  output RstP;  // ../../rtl/t80se/T80_MCode.vhd(121)
  output Save_ALU;  // ../../rtl/t80se/T80_MCode.vhd(112)
  output SetDI;  // ../../rtl/t80se/T80_MCode.vhd(142)
  output SetEI;  // ../../rtl/t80se/T80_MCode.vhd(143)
  output [1:0] SetWZ;  // ../../rtl/t80se/T80_MCode.vhd(141)
  output [2:0] Set_Addr_To;  // ../../rtl/t80se/T80_MCode.vhd(115)
  output [3:0] Set_BusA_To;  // ../../rtl/t80se/T80_MCode.vhd(108)
  output [3:0] Set_BusB_To;  // ../../rtl/t80se/T80_MCode.vhd(109)
  output [2:0] Special_LD;  // ../../rtl/t80se/T80_MCode.vhd(125)
  output [2:0] TStates;  // ../../rtl/t80se/T80_MCode.vhd(101)
  output Write;  // ../../rtl/t80se/T80_MCode.vhd(147)
  output XYbit_undoc;  // ../../rtl/t80se/T80_MCode.vhd(148)

  parameter Flag_C = 0;
  parameter Flag_H = 4;
  parameter Flag_N = 1;
  parameter Flag_P = 2;
  parameter Flag_S = 7;
  parameter Flag_X = 3;
  parameter Flag_Y = 5;
  parameter Flag_Z = 6;
  parameter Mode = 0;
  wire [2:0] n0;
  wire [2:0] n100;
  wire [3:0] n101;
  wire [3:0] n102;
  wire [2:0] n103;
  wire [2:0] n104;
  wire [3:0] n105;
  wire [3:0] n106;
  wire [3:0] n11;
  wire [3:0] n115;
  wire [3:0] n116;
  wire [3:0] n117;
  wire [3:0] n119;
  wire [2:0] n120;
  wire [2:0] n126;
  wire [2:0] n127;
  wire [2:0] n128;
  wire [2:0] n129;
  wire [2:0] n130;
  wire [2:0] n131;
  wire [2:0] n132;
  wire [2:0] n133;
  wire [2:0] n134;
  wire [2:0] n135;
  wire [3:0] n139;
  wire [2:0] n144;
  wire [2:0] n150;
  wire [3:0] n151;
  wire [2:0] n152;
  wire [2:0] n153;
  wire [3:0] n154;
  wire [2:0] n155;
  wire [2:0] n159;
  wire [2:0] n160;
  wire [2:0] n161;
  wire [2:0] n162;
  wire [2:0] n163;
  wire [3:0] n179;
  wire [3:0] n181;
  wire [2:0] n183;
  wire [2:0] n185;
  wire [1:0] n189;
  wire [2:0] n192;
  wire [3:0] n194;
  wire [3:0] n2;
  wire [3:0] n200;
  wire [1:0] n216;
  wire [3:0] n217;
  wire [1:0] n218;
  wire [3:0] n219;
  wire [2:0] n220;
  wire [3:0] n221;
  wire [3:0] n224;
  wire [2:0] n225;
  wire [3:0] n226;
  wire [1:0] n227;
  wire [3:0] n228;
  wire [3:0] n229;
  wire [2:0] n230;
  wire [2:0] n231;
  wire [2:0] n232;
  wire [3:0] n235;
  wire [2:0] n236;
  wire [3:0] n237;
  wire [3:0] n238;
  wire [3:0] n239;
  wire [3:0] n244;
  wire [2:0] n245;
  wire [3:0] n246;
  wire [3:0] n247;
  wire [3:0] n248;
  wire [2:0] n249;
  wire [2:0] n250;
  wire [3:0] n253;
  wire [2:0] n254;
  wire [3:0] n255;
  wire [2:0] n257;
  wire [2:0] n259;
  wire [14:0] n26;
  wire [2:0] n260;
  wire [3:0] n263;
  wire [3:0] n265;
  wire [3:0] n269;
  wire [3:0] n275;
  wire [2:0] n276;
  wire [3:0] n279;
  wire [3:0] n285;
  wire [2:0] n287;
  wire [3:0] n288;
  wire [3:0] n289;
  wire [3:0] n290;
  wire [3:0] n292;
  wire [2:0] n293;
  wire [3:0] n294;
  wire [3:0] n295;
  wire [3:0] n296;
  wire [3:0] n298;
  wire [2:0] n299;
  wire [3:0] n300;
  wire [3:0] n306;
  wire [2:0] n307;
  wire [3:0] n313;
  wire [2:0] n314;
  wire [3:0] n317;
  wire [3:0] n322;
  wire [3:0] n327;
  wire [2:0] n328;
  wire [3:0] n336;
  wire [3:0] n337;
  wire [2:0] n338;
  wire [3:0] n345;
  wire [3:0] n346;
  wire [2:0] n350;
  wire [1:0] n351;
  wire [2:0] n355;
  wire [3:0] n358;
  wire [3:0] n360;
  wire [3:0] n362;
  wire [3:0] n363;
  wire [3:0] n37;
  wire [1:0] n372;
  wire [3:0] n379;
  wire [3:0] n38;
  wire [2:0] n381;
  wire [2:0] n382;
  wire [2:0] n388;
  wire [2:0] n390;
  wire [2:0] n393;
  wire [3:0] n40;
  wire [3:0] n42;
  wire [3:0] n47;
  wire [3:0] n48;
  wire [2:0] n49;
  wire [3:0] n5;
  wire [3:0] n55;
  wire [11:0] n57;
  wire [3:0] n58;
  wire [2:0] n69;
  wire [3:0] n73;
  wire [3:0] n78;
  wire [3:0] n8;
  wire [2:0] n81;
  wire [3:0] n82;
  wire [3:0] n85;
  wire [2:0] n88;
  wire [3:0] n89;
  wire [3:0] n92;
  wire [2:0] n93;
  wire [3:0] n94;
  wire [2:0] n96;
  wire [2:0] n98;
  wire [2:0] n99;
  wire n1;
  wire n10;
  wire n107;
  wire n108;
  wire n109;
  wire n110;
  wire n111;
  wire n112;
  wire n113;
  wire n114;
  wire n118;
  wire n12;
  wire n121;
  wire n122;
  wire n123;
  wire n124;
  wire n125;
  wire n13;
  wire n136;
  wire n137;
  wire n138;
  wire n14;
  wire n140;
  wire n141;
  wire n142;
  wire n143;
  wire n145;
  wire n146;
  wire n147;
  wire n148;
  wire n149;
  wire n15;
  wire n156;
  wire n157;
  wire n158;
  wire n16;
  wire n164;
  wire n165;
  wire n166;
  wire n167;
  wire n168;
  wire n169;
  wire n17;
  wire n170;
  wire n171;
  wire n172;
  wire n173;
  wire n174;
  wire n175;
  wire n176;
  wire n177;
  wire n178;
  wire n18;
  wire n180;
  wire n182;
  wire n184;
  wire n186;
  wire n187;
  wire n188;
  wire n19;
  wire n190;
  wire n191;
  wire n193;
  wire n195;
  wire n196;
  wire n197;
  wire n198;
  wire n199;
  wire n20;
  wire n201;
  wire n202;
  wire n203;
  wire n204;
  wire n205;
  wire n206;
  wire n207;
  wire n208;
  wire n209;
  wire n21;
  wire n210;
  wire n211;
  wire n212;
  wire n213;
  wire n214;
  wire n215;
  wire n22;
  wire n222;
  wire n223;
  wire n23;
  wire n233;
  wire n234;
  wire n24;
  wire n240;
  wire n241;
  wire n242;
  wire n243;
  wire n25;
  wire n251;
  wire n252;
  wire n256;
  wire n258;
  wire n261;
  wire n262;
  wire n264;
  wire n266;
  wire n267;
  wire n268;
  wire n27;
  wire n270;
  wire n271;
  wire n272;
  wire n273;
  wire n274;
  wire n277;
  wire n278;
  wire n28;
  wire n280;
  wire n281;
  wire n282;
  wire n283;
  wire n284;
  wire n286;
  wire n29;
  wire n291;
  wire n297;
  wire n3;
  wire n30;
  wire n301;
  wire n302;
  wire n303;
  wire n304;
  wire n305;
  wire n308;
  wire n309;
  wire n31;
  wire n310;
  wire n311;
  wire n312;
  wire n315;
  wire n316;
  wire n318;
  wire n319;
  wire n32;
  wire n320;
  wire n321;
  wire n323;
  wire n324;
  wire n325;
  wire n326;
  wire n329;
  wire n33;
  wire n330;
  wire n331;
  wire n332;
  wire n333;
  wire n334;
  wire n335;
  wire n339;
  wire n34;
  wire n340;
  wire n341;
  wire n342;
  wire n343;
  wire n344;
  wire n347;
  wire n348;
  wire n349;
  wire n35;
  wire n352;
  wire n353;
  wire n354;
  wire n356;
  wire n357;
  wire n359;
  wire n36;
  wire n361;
  wire n364;
  wire n365;
  wire n366;
  wire n367;
  wire n368;
  wire n369;
  wire n370;
  wire n371;
  wire n373;
  wire n374;
  wire n375;
  wire n376;
  wire n377;
  wire n378;
  wire n380;
  wire n383;
  wire n384;
  wire n385;
  wire n386;
  wire n387;
  wire n389;
  wire n39;
  wire n391;
  wire n392;
  wire n394;
  wire n395;
  wire n396;
  wire n397;
  wire n4;
  wire n41;
  wire n43;
  wire n44;
  wire n45;
  wire n46;
  wire n50;
  wire n51;
  wire n52;
  wire n53;
  wire n54;
  wire n56;
  wire n59;
  wire n6;
  wire n60;
  wire n61;
  wire n62;
  wire n63;
  wire n64;
  wire n65;
  wire n66;
  wire n67;
  wire n68;
  wire n7;
  wire n70;
  wire n71;
  wire n72;
  wire n74;
  wire n75;
  wire n76;
  wire n77;
  wire n79;
  wire n80;
  wire n83;
  wire n84;
  wire n86;
  wire n87;
  wire n9;
  wire n90;
  wire n91;
  wire n95;
  wire n97;

  eq_w3 eq0 (
    .i0(3'b001),
    .i1(MCycle),
    .o(n0[2]));  // ../../rtl/t80se/T80_MCode.vhd(206)
  eq_w2 eq1 (
    .i0(2'b11),
    .i1(IR[5:4]),
    .o(n36));  // ../../rtl/t80se/T80_MCode.vhd(437)
  eq_w3 eq2 (
    .i0(3'b010),
    .i1(MCycle),
    .o(n77));  // ../../rtl/t80se/T80_MCode.vhd(722)
  eq_w2 eq3 (
    .i0(2'b00),
    .i1(XY_State),
    .o(n230[0]));  // ../../rtl/t80se/T80_MCode.vhd(1378)
  eq_w3 eq4 (
    .i0(3'b110),
    .i1(IR[5:3]),
    .o(n323));  // ../../rtl/t80se/T80_MCode.vhd(1914)
  eq_w3 eq5 (
    .i0(3'b110),
    .i1(MCycle),
    .o(n384));  // ../../rtl/t80se/T80_MCode.vhd(2005)
  eq_w8 eq6 (
    .i0(8'b00110110),
    .i1(IR),
    .o(n385));  // ../../rtl/t80se/T80_MCode.vhd(2013)
  eq_w8 eq7 (
    .i0(8'b11001011),
    .i1(IR),
    .o(n386));  // ../../rtl/t80se/T80_MCode.vhd(2013)
  eq_w3 eq8 (
    .i0(3'b111),
    .i1(MCycle),
    .o(n391));  // ../../rtl/t80se/T80_MCode.vhd(2017)
  eq_w2 eq9 (
    .i0(2'b01),
    .i1(ISet),
    .o(n394));  // ../../rtl/t80se/T80_MCode.vhd(2026)
  binary_mux_s3_w1 mux0 (
    .i0(1'b0),
    .i1(1'b0),
    .i2(1'b1),
    .i3(1'b0),
    .i4(1'b0),
    .i5(1'b0),
    .i6(1'b0),
    .i7(1'b0),
    .sel(MCycle),
    .o(n1));  // ../../rtl/t80se/T80_MCode.vhd(290)
  binary_mux_s3_w1 mux1 (
    .i0(1'b0),
    .i1(1'b0),
    .i2(1'b0),
    .i3(1'b1),
    .i4(1'b0),
    .i5(1'b0),
    .i6(1'b0),
    .i7(1'b0),
    .sel(MCycle),
    .o(n12));  // ../../rtl/t80se/T80_MCode.vhd(326)
  binary_mux_s3_w3 mux10 (
    .i0({n0[2],n0[0],n0[0]}),
    .i1(3'b101),
    .i2({n0[2],n0[0],n0[0]}),
    .i3({n0[2],n0[0],n0[0]}),
    .i4({n0[2],n0[0],n0[0]}),
    .i5({n0[2],n0[0],n0[0]}),
    .i6({n0[2],n0[0],n0[0]}),
    .i7({n0[2],n0[0],n0[0]}),
    .sel(MCycle),
    .o(n93));  // ../../rtl/t80se/T80_MCode.vhd(818)
  binary_mux_s3_w64 mux100 (
    .i0({1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3]}),
    .i1({1'b0,IR[5:3],1'b0,IR[5:3],9'b001000100,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],4'b0010}),
    .i2({9'b101010110,IR[5:3],1'b0,IR[5:3],45'b011100001001000100111101111010000000001000000,IR[5:3]}),
    .i3({1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],9'b000100110,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],5'b00010,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3]}),
    .i4({1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3]}),
    .i5({1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3]}),
    .i6({1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3]}),
    .i7({1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3]}),
    .sel(MCycle),
    .o({n244,n253,n345,n336,n285,n275,n235,n290,n296,n306,n313,n224,n117,n89,n82,n139}));  // ../../rtl/t80se/T80_MCode.vhd(1514)
  binary_mux_s6_w1 mux101 (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b0),
    .i11(1'b0),
    .i12(1'b0),
    .i13(1'b0),
    .i14(1'b0),
    .i15(1'b0),
    .i16(1'b0),
    .i17(1'b0),
    .i18(1'b0),
    .i19(1'b0),
    .i2(1'b0),
    .i20(1'b0),
    .i21(1'b0),
    .i22(1'b0),
    .i23(1'b0),
    .i24(1'b0),
    .i25(1'b0),
    .i26(1'b0),
    .i27(1'b0),
    .i28(1'b0),
    .i29(1'b0),
    .i3(1'b0),
    .i30(1'b0),
    .i31(1'b0),
    .i32(1'b0),
    .i33(1'b0),
    .i34(1'b0),
    .i35(1'b0),
    .i36(1'b0),
    .i37(1'b0),
    .i38(1'b0),
    .i39(1'b0),
    .i4(1'b0),
    .i40(n12),
    .i41(1'b0),
    .i42(1'b0),
    .i43(1'b0),
    .i44(1'b0),
    .i45(1'b0),
    .i46(1'b0),
    .i47(1'b0),
    .i48(1'b0),
    .i49(1'b0),
    .i5(1'b0),
    .i50(1'b0),
    .i51(1'b0),
    .i52(1'b0),
    .i53(1'b0),
    .i54(1'b0),
    .i55(1'b0),
    .i56(1'b0),
    .i57(1'b0),
    .i58(1'b0),
    .i59(1'b0),
    .i6(1'b0),
    .i60(1'b0),
    .i61(1'b0),
    .i62(1'b0),
    .i63(1'b0),
    .i7(1'b0),
    .i8(1'b0),
    .i9(1'b0),
    .sel({IR[7:5],IR[2:0]}),
    .o(n364));  // ../../rtl/t80se/T80_MCode.vhd(1984)
  binary_mux_s8_w1 mux102 (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b0),
    .i100(1'b0),
    .i101(1'b0),
    .i102(1'b0),
    .i103(n12),
    .i104(1'b0),
    .i105(1'b0),
    .i106(n39),
    .i107(1'b0),
    .i108(1'b0),
    .i109(1'b0),
    .i11(1'b0),
    .i110(1'b0),
    .i111(n12),
    .i112(1'b0),
    .i113(1'b0),
    .i114(n39),
    .i115(1'b0),
    .i116(1'b0),
    .i117(1'b0),
    .i118(1'b0),
    .i119(1'b0),
    .i12(1'b0),
    .i120(1'b0),
    .i121(1'b0),
    .i122(n39),
    .i123(1'b0),
    .i124(1'b0),
    .i125(1'b0),
    .i126(1'b0),
    .i127(1'b0),
    .i128(1'b0),
    .i129(1'b0),
    .i13(1'b0),
    .i130(1'b0),
    .i131(1'b0),
    .i132(1'b0),
    .i133(1'b0),
    .i134(1'b0),
    .i135(1'b0),
    .i136(1'b0),
    .i137(1'b0),
    .i138(1'b0),
    .i139(1'b0),
    .i14(1'b0),
    .i140(1'b0),
    .i141(1'b0),
    .i142(1'b0),
    .i143(1'b0),
    .i144(1'b0),
    .i145(1'b0),
    .i146(1'b0),
    .i147(1'b0),
    .i148(1'b0),
    .i149(1'b0),
    .i15(1'b0),
    .i150(1'b0),
    .i151(1'b0),
    .i152(1'b0),
    .i153(1'b0),
    .i154(1'b0),
    .i155(1'b0),
    .i156(1'b0),
    .i157(1'b0),
    .i158(1'b0),
    .i159(1'b0),
    .i16(1'b0),
    .i160(n19),
    .i161(n286),
    .i162(n19),
    .i163(n19),
    .i164(1'b0),
    .i165(1'b0),
    .i166(1'b0),
    .i167(1'b0),
    .i168(n19),
    .i169(n286),
    .i17(1'b0),
    .i170(n19),
    .i171(n19),
    .i172(1'b0),
    .i173(1'b0),
    .i174(1'b0),
    .i175(1'b0),
    .i176(n19),
    .i177(n286),
    .i178(n19),
    .i179(n19),
    .i18(1'b0),
    .i180(1'b0),
    .i181(1'b0),
    .i182(1'b0),
    .i183(1'b0),
    .i184(n19),
    .i185(n286),
    .i186(n19),
    .i187(n19),
    .i188(1'b0),
    .i189(1'b0),
    .i19(1'b0),
    .i190(1'b0),
    .i191(1'b0),
    .i192(1'b0),
    .i193(1'b0),
    .i194(1'b0),
    .i195(1'b0),
    .i196(1'b0),
    .i197(1'b0),
    .i198(1'b0),
    .i199(1'b0),
    .i2(1'b0),
    .i20(1'b0),
    .i200(1'b0),
    .i201(1'b0),
    .i202(1'b0),
    .i203(1'b0),
    .i204(1'b0),
    .i205(1'b0),
    .i206(1'b0),
    .i207(1'b0),
    .i208(1'b0),
    .i209(1'b0),
    .i21(1'b0),
    .i210(1'b0),
    .i211(1'b0),
    .i212(1'b0),
    .i213(1'b0),
    .i214(1'b0),
    .i215(1'b0),
    .i216(1'b0),
    .i217(1'b0),
    .i218(1'b0),
    .i219(1'b0),
    .i22(1'b0),
    .i220(1'b0),
    .i221(1'b0),
    .i222(1'b0),
    .i223(1'b0),
    .i224(1'b0),
    .i225(1'b0),
    .i226(1'b0),
    .i227(1'b0),
    .i228(1'b0),
    .i229(1'b0),
    .i23(1'b0),
    .i230(1'b0),
    .i231(1'b0),
    .i232(1'b0),
    .i233(1'b0),
    .i234(1'b0),
    .i235(1'b0),
    .i236(1'b0),
    .i237(1'b0),
    .i238(1'b0),
    .i239(1'b0),
    .i24(1'b0),
    .i240(1'b0),
    .i241(1'b0),
    .i242(1'b0),
    .i243(1'b0),
    .i244(1'b0),
    .i245(1'b0),
    .i246(1'b0),
    .i247(1'b0),
    .i248(1'b0),
    .i249(1'b0),
    .i25(1'b0),
    .i250(1'b0),
    .i251(1'b0),
    .i252(1'b0),
    .i253(1'b0),
    .i254(1'b0),
    .i255(1'b0),
    .i26(1'b0),
    .i27(1'b0),
    .i28(1'b0),
    .i29(1'b0),
    .i3(1'b0),
    .i30(1'b0),
    .i31(1'b0),
    .i32(1'b0),
    .i33(1'b0),
    .i34(1'b0),
    .i35(1'b0),
    .i36(1'b0),
    .i37(1'b0),
    .i38(1'b0),
    .i39(1'b0),
    .i4(1'b0),
    .i40(1'b0),
    .i41(1'b0),
    .i42(1'b0),
    .i43(1'b0),
    .i44(1'b0),
    .i45(1'b0),
    .i46(1'b0),
    .i47(1'b0),
    .i48(1'b0),
    .i49(1'b0),
    .i5(1'b0),
    .i50(1'b0),
    .i51(1'b0),
    .i52(1'b0),
    .i53(1'b0),
    .i54(1'b0),
    .i55(1'b0),
    .i56(1'b0),
    .i57(1'b0),
    .i58(1'b0),
    .i59(1'b0),
    .i6(1'b0),
    .i60(1'b0),
    .i61(1'b0),
    .i62(1'b0),
    .i63(1'b0),
    .i64(1'b0),
    .i65(1'b0),
    .i66(n39),
    .i67(1'b0),
    .i68(1'b0),
    .i69(1'b0),
    .i7(1'b0),
    .i70(1'b0),
    .i71(1'b0),
    .i72(1'b0),
    .i73(1'b0),
    .i74(n39),
    .i75(1'b0),
    .i76(1'b0),
    .i77(1'b0),
    .i78(1'b0),
    .i79(1'b0),
    .i8(1'b0),
    .i80(1'b0),
    .i81(1'b0),
    .i82(n39),
    .i83(1'b0),
    .i84(1'b0),
    .i85(1'b0),
    .i86(1'b0),
    .i87(1'b0),
    .i88(1'b0),
    .i89(1'b0),
    .i9(1'b0),
    .i90(n39),
    .i91(1'b0),
    .i92(1'b0),
    .i93(1'b0),
    .i94(1'b0),
    .i95(1'b0),
    .i96(1'b0),
    .i97(1'b0),
    .i98(n39),
    .i99(1'b0),
    .sel(IR),
    .o(n365));  // ../../rtl/t80se/T80_MCode.vhd(1984)
  binary_mux_s8_w1 mux103 (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b0),
    .i100(1'b1),
    .i101(1'b0),
    .i102(1'b0),
    .i103(n1),
    .i104(1'b0),
    .i105(1'b0),
    .i106(n39),
    .i107(1'b0),
    .i108(1'b1),
    .i109(1'b0),
    .i11(1'b0),
    .i110(1'b0),
    .i111(n1),
    .i112(1'b0),
    .i113(1'b0),
    .i114(n39),
    .i115(1'b0),
    .i116(1'b1),
    .i117(1'b0),
    .i118(1'b0),
    .i119(1'b0),
    .i12(1'b0),
    .i120(1'b0),
    .i121(1'b0),
    .i122(n39),
    .i123(1'b0),
    .i124(1'b1),
    .i125(1'b0),
    .i126(1'b0),
    .i127(1'b0),
    .i128(1'b0),
    .i129(1'b0),
    .i13(1'b0),
    .i130(1'b0),
    .i131(1'b0),
    .i132(1'b0),
    .i133(1'b0),
    .i134(1'b0),
    .i135(1'b0),
    .i136(1'b0),
    .i137(1'b0),
    .i138(1'b0),
    .i139(1'b0),
    .i14(1'b0),
    .i140(1'b0),
    .i141(1'b0),
    .i142(1'b0),
    .i143(1'b0),
    .i144(1'b0),
    .i145(1'b0),
    .i146(1'b0),
    .i147(1'b0),
    .i148(1'b0),
    .i149(1'b0),
    .i15(1'b0),
    .i150(1'b0),
    .i151(1'b0),
    .i152(1'b0),
    .i153(1'b0),
    .i154(1'b0),
    .i155(1'b0),
    .i156(1'b0),
    .i157(1'b0),
    .i158(1'b0),
    .i159(1'b0),
    .i16(1'b0),
    .i160(1'b0),
    .i161(n1),
    .i162(n335),
    .i163(n335),
    .i164(1'b0),
    .i165(1'b0),
    .i166(1'b0),
    .i167(1'b0),
    .i168(1'b0),
    .i169(n1),
    .i17(1'b0),
    .i170(n335),
    .i171(n335),
    .i172(1'b0),
    .i173(1'b0),
    .i174(1'b0),
    .i175(1'b0),
    .i176(1'b0),
    .i177(n1),
    .i178(n335),
    .i179(n335),
    .i18(1'b0),
    .i180(1'b0),
    .i181(1'b0),
    .i182(1'b0),
    .i183(1'b0),
    .i184(1'b0),
    .i185(n1),
    .i186(n335),
    .i187(n335),
    .i188(1'b0),
    .i189(1'b0),
    .i19(1'b0),
    .i190(1'b0),
    .i191(1'b0),
    .i192(1'b0),
    .i193(1'b0),
    .i194(1'b0),
    .i195(1'b0),
    .i196(1'b0),
    .i197(1'b0),
    .i198(1'b0),
    .i199(1'b0),
    .i2(1'b0),
    .i20(1'b0),
    .i200(1'b0),
    .i201(1'b0),
    .i202(1'b0),
    .i203(1'b0),
    .i204(1'b0),
    .i205(1'b0),
    .i206(1'b0),
    .i207(1'b0),
    .i208(1'b0),
    .i209(1'b0),
    .i21(1'b0),
    .i210(1'b0),
    .i211(1'b0),
    .i212(1'b0),
    .i213(1'b0),
    .i214(1'b0),
    .i215(1'b0),
    .i216(1'b0),
    .i217(1'b0),
    .i218(1'b0),
    .i219(1'b0),
    .i22(1'b0),
    .i220(1'b0),
    .i221(1'b0),
    .i222(1'b0),
    .i223(1'b0),
    .i224(1'b0),
    .i225(1'b0),
    .i226(1'b0),
    .i227(1'b0),
    .i228(1'b0),
    .i229(1'b0),
    .i23(1'b0),
    .i230(1'b0),
    .i231(1'b0),
    .i232(1'b0),
    .i233(1'b0),
    .i234(1'b0),
    .i235(1'b0),
    .i236(1'b0),
    .i237(1'b0),
    .i238(1'b0),
    .i239(1'b0),
    .i24(1'b0),
    .i240(1'b0),
    .i241(1'b0),
    .i242(1'b0),
    .i243(1'b0),
    .i244(1'b0),
    .i245(1'b0),
    .i246(1'b0),
    .i247(1'b0),
    .i248(1'b0),
    .i249(1'b0),
    .i25(1'b0),
    .i250(1'b0),
    .i251(1'b0),
    .i252(1'b0),
    .i253(1'b0),
    .i254(1'b0),
    .i255(1'b0),
    .i26(1'b0),
    .i27(1'b0),
    .i28(1'b0),
    .i29(1'b0),
    .i3(1'b0),
    .i30(1'b0),
    .i31(1'b0),
    .i32(1'b0),
    .i33(1'b0),
    .i34(1'b0),
    .i35(1'b0),
    .i36(1'b0),
    .i37(1'b0),
    .i38(1'b0),
    .i39(1'b0),
    .i4(1'b0),
    .i40(1'b0),
    .i41(1'b0),
    .i42(1'b0),
    .i43(1'b0),
    .i44(1'b0),
    .i45(1'b0),
    .i46(1'b0),
    .i47(1'b0),
    .i48(1'b0),
    .i49(1'b0),
    .i5(1'b0),
    .i50(1'b0),
    .i51(1'b0),
    .i52(1'b0),
    .i53(1'b0),
    .i54(1'b0),
    .i55(1'b0),
    .i56(1'b0),
    .i57(1'b0),
    .i58(1'b0),
    .i59(1'b0),
    .i6(1'b0),
    .i60(1'b0),
    .i61(1'b0),
    .i62(1'b0),
    .i63(1'b0),
    .i64(1'b0),
    .i65(1'b0),
    .i66(n39),
    .i67(1'b0),
    .i68(1'b1),
    .i69(1'b0),
    .i7(1'b0),
    .i70(1'b0),
    .i71(1'b0),
    .i72(1'b0),
    .i73(1'b0),
    .i74(n39),
    .i75(1'b0),
    .i76(1'b1),
    .i77(1'b0),
    .i78(1'b0),
    .i79(1'b0),
    .i8(1'b0),
    .i80(1'b0),
    .i81(1'b0),
    .i82(n39),
    .i83(1'b0),
    .i84(1'b1),
    .i85(1'b0),
    .i86(1'b0),
    .i87(1'b0),
    .i88(1'b0),
    .i89(1'b0),
    .i9(1'b0),
    .i90(n39),
    .i91(1'b0),
    .i92(1'b1),
    .i93(1'b0),
    .i94(1'b0),
    .i95(1'b0),
    .i96(1'b0),
    .i97(1'b0),
    .i98(n39),
    .i99(1'b0),
    .sel(IR),
    .o(n366));  // ../../rtl/t80se/T80_MCode.vhd(1984)
  binary_mux_s6_w1 mux104 (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b0),
    .i11(1'b0),
    .i12(1'b0),
    .i13(1'b0),
    .i14(1'b0),
    .i15(1'b0),
    .i16(1'b0),
    .i17(1'b0),
    .i18(1'b0),
    .i19(1'b0),
    .i2(1'b0),
    .i20(1'b0),
    .i21(1'b0),
    .i22(1'b0),
    .i23(1'b0),
    .i24(1'b0),
    .i25(1'b0),
    .i26(1'b0),
    .i27(1'b0),
    .i28(1'b0),
    .i29(1'b0),
    .i3(1'b0),
    .i30(1'b0),
    .i31(1'b0),
    .i32(1'b0),
    .i33(1'b0),
    .i34(1'b0),
    .i35(1'b0),
    .i36(1'b0),
    .i37(1'b0),
    .i38(1'b0),
    .i39(1'b0),
    .i4(1'b0),
    .i40(1'b0),
    .i41(n1),
    .i42(1'b0),
    .i43(1'b0),
    .i44(1'b0),
    .i45(1'b0),
    .i46(1'b0),
    .i47(1'b0),
    .i48(1'b0),
    .i49(1'b0),
    .i5(1'b0),
    .i50(1'b0),
    .i51(1'b0),
    .i52(1'b0),
    .i53(1'b0),
    .i54(1'b0),
    .i55(1'b0),
    .i56(1'b0),
    .i57(1'b0),
    .i58(1'b0),
    .i59(1'b0),
    .i6(1'b0),
    .i60(1'b0),
    .i61(1'b0),
    .i62(1'b0),
    .i63(1'b0),
    .i7(1'b0),
    .i8(1'b0),
    .i9(1'b0),
    .sel({IR[7:5],IR[2:0]}),
    .o(n367));  // ../../rtl/t80se/T80_MCode.vhd(1984)
  binary_mux_s6_w1 mux105 (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b0),
    .i11(1'b0),
    .i12(1'b0),
    .i13(1'b0),
    .i14(1'b0),
    .i15(1'b0),
    .i16(1'b0),
    .i17(1'b0),
    .i18(1'b0),
    .i19(1'b0),
    .i2(1'b0),
    .i20(1'b0),
    .i21(1'b0),
    .i22(1'b0),
    .i23(1'b0),
    .i24(1'b0),
    .i25(1'b0),
    .i26(1'b0),
    .i27(1'b0),
    .i28(1'b0),
    .i29(1'b0),
    .i3(1'b0),
    .i30(1'b0),
    .i31(1'b0),
    .i32(1'b0),
    .i33(1'b0),
    .i34(1'b0),
    .i35(1'b0),
    .i36(1'b0),
    .i37(1'b0),
    .i38(1'b0),
    .i39(1'b0),
    .i4(1'b0),
    .i40(1'b0),
    .i41(n12),
    .i42(1'b0),
    .i43(1'b0),
    .i44(1'b0),
    .i45(1'b0),
    .i46(1'b0),
    .i47(1'b0),
    .i48(1'b0),
    .i49(1'b0),
    .i5(1'b0),
    .i50(1'b0),
    .i51(1'b0),
    .i52(1'b0),
    .i53(1'b0),
    .i54(1'b0),
    .i55(1'b0),
    .i56(1'b0),
    .i57(1'b0),
    .i58(1'b0),
    .i59(1'b0),
    .i6(1'b0),
    .i60(1'b0),
    .i61(1'b0),
    .i62(1'b0),
    .i63(1'b0),
    .i7(1'b0),
    .i8(1'b0),
    .i9(1'b0),
    .sel({IR[7:5],IR[2:0]}),
    .o(n368));  // ../../rtl/t80se/T80_MCode.vhd(1984)
  binary_mux_s5_w1 mux106 (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b0),
    .i11(1'b0),
    .i12(1'b1),
    .i13(1'b0),
    .i14(1'b0),
    .i15(1'b0),
    .i16(1'b0),
    .i17(1'b0),
    .i18(1'b0),
    .i19(1'b0),
    .i2(1'b0),
    .i20(1'b0),
    .i21(1'b0),
    .i22(1'b0),
    .i23(1'b0),
    .i24(1'b0),
    .i25(1'b0),
    .i26(1'b0),
    .i27(1'b0),
    .i28(1'b0),
    .i29(1'b0),
    .i3(1'b0),
    .i30(1'b0),
    .i31(1'b0),
    .i4(1'b0),
    .i5(1'b0),
    .i6(1'b0),
    .i7(1'b0),
    .i8(1'b0),
    .i9(1'b0),
    .sel({IR[7:6],IR[2:0]}),
    .o(n369));  // ../../rtl/t80se/T80_MCode.vhd(1984)
  binary_mux_s7_w1 mux107 (
    .i0(1'b1),
    .i1(1'b1),
    .i10(1'b1),
    .i100(1'b1),
    .i101(1'b1),
    .i102(1'b1),
    .i103(1'b1),
    .i104(1'b1),
    .i105(1'b1),
    .i106(1'b1),
    .i107(1'b1),
    .i108(1'b1),
    .i109(1'b1),
    .i11(1'b1),
    .i110(1'b1),
    .i111(1'b1),
    .i112(1'b1),
    .i113(1'b1),
    .i114(1'b1),
    .i115(1'b1),
    .i116(1'b1),
    .i117(1'b1),
    .i118(1'b1),
    .i119(1'b1),
    .i12(1'b1),
    .i120(1'b1),
    .i121(1'b1),
    .i122(1'b1),
    .i123(1'b1),
    .i124(1'b1),
    .i125(1'b1),
    .i126(1'b1),
    .i127(1'b1),
    .i13(1'b1),
    .i14(1'b1),
    .i15(1'b1),
    .i16(1'b1),
    .i17(1'b1),
    .i18(1'b1),
    .i19(1'b1),
    .i2(1'b1),
    .i20(1'b1),
    .i21(1'b1),
    .i22(1'b1),
    .i23(1'b1),
    .i24(1'b1),
    .i25(1'b1),
    .i26(1'b1),
    .i27(1'b1),
    .i28(1'b1),
    .i29(1'b1),
    .i3(1'b1),
    .i30(1'b1),
    .i31(1'b1),
    .i32(1'b1),
    .i33(1'b1),
    .i34(1'b1),
    .i35(1'b1),
    .i36(1'b1),
    .i37(1'b1),
    .i38(1'b0),
    .i39(1'b1),
    .i4(1'b1),
    .i40(1'b1),
    .i41(1'b1),
    .i42(1'b1),
    .i43(1'b1),
    .i44(1'b1),
    .i45(1'b1),
    .i46(1'b0),
    .i47(1'b1),
    .i48(1'b1),
    .i49(1'b1),
    .i5(1'b1),
    .i50(1'b1),
    .i51(1'b1),
    .i52(1'b1),
    .i53(1'b1),
    .i54(1'b0),
    .i55(1'b1),
    .i56(1'b1),
    .i57(1'b1),
    .i58(1'b1),
    .i59(1'b1),
    .i6(1'b1),
    .i60(1'b1),
    .i61(1'b1),
    .i62(1'b1),
    .i63(1'b1),
    .i64(1'b1),
    .i65(1'b1),
    .i66(1'b1),
    .i67(1'b1),
    .i68(1'b1),
    .i69(1'b1),
    .i7(1'b1),
    .i70(1'b1),
    .i71(1'b1),
    .i72(1'b1),
    .i73(1'b1),
    .i74(1'b1),
    .i75(1'b1),
    .i76(1'b1),
    .i77(1'b1),
    .i78(1'b1),
    .i79(1'b1),
    .i8(1'b1),
    .i80(1'b1),
    .i81(1'b1),
    .i82(1'b1),
    .i83(1'b1),
    .i84(1'b1),
    .i85(1'b1),
    .i86(1'b1),
    .i87(1'b1),
    .i88(1'b1),
    .i89(1'b1),
    .i9(1'b1),
    .i90(1'b1),
    .i91(1'b1),
    .i92(1'b1),
    .i93(1'b1),
    .i94(1'b1),
    .i95(1'b1),
    .i96(1'b1),
    .i97(1'b1),
    .i98(1'b1),
    .i99(1'b1),
    .sel({IR[7:6],IR[4:0]}),
    .o(n370));  // ../../rtl/t80se/T80_MCode.vhd(1984)
  binary_mux_s8_w1 mux108 (
    .i0(1'b1),
    .i1(1'b1),
    .i10(1'b1),
    .i100(1'b1),
    .i101(1'b1),
    .i102(1'b0),
    .i103(1'b1),
    .i104(1'b1),
    .i105(1'b1),
    .i106(1'b1),
    .i107(1'b1),
    .i108(1'b1),
    .i109(1'b1),
    .i11(1'b1),
    .i110(1'b0),
    .i111(1'b1),
    .i112(1'b1),
    .i113(1'b1),
    .i114(1'b1),
    .i115(1'b1),
    .i116(1'b1),
    .i117(1'b1),
    .i118(1'b1),
    .i119(1'b0),
    .i12(1'b1),
    .i120(1'b1),
    .i121(1'b1),
    .i122(1'b1),
    .i123(1'b1),
    .i124(1'b1),
    .i125(1'b1),
    .i126(1'b1),
    .i127(1'b1),
    .i128(1'b1),
    .i129(1'b1),
    .i13(1'b1),
    .i130(1'b1),
    .i131(1'b1),
    .i132(1'b1),
    .i133(1'b1),
    .i134(1'b1),
    .i135(1'b1),
    .i136(1'b1),
    .i137(1'b1),
    .i138(1'b1),
    .i139(1'b1),
    .i14(1'b1),
    .i140(1'b1),
    .i141(1'b1),
    .i142(1'b1),
    .i143(1'b1),
    .i144(1'b1),
    .i145(1'b1),
    .i146(1'b1),
    .i147(1'b1),
    .i148(1'b1),
    .i149(1'b1),
    .i15(1'b1),
    .i150(1'b1),
    .i151(1'b1),
    .i152(1'b1),
    .i153(1'b1),
    .i154(1'b1),
    .i155(1'b1),
    .i156(1'b1),
    .i157(1'b1),
    .i158(1'b1),
    .i159(1'b1),
    .i16(1'b1),
    .i160(1'b1),
    .i161(1'b1),
    .i162(1'b1),
    .i163(1'b1),
    .i164(1'b1),
    .i165(1'b1),
    .i166(1'b1),
    .i167(1'b1),
    .i168(1'b1),
    .i169(1'b1),
    .i17(1'b1),
    .i170(1'b1),
    .i171(1'b1),
    .i172(1'b1),
    .i173(1'b1),
    .i174(1'b1),
    .i175(1'b1),
    .i176(1'b1),
    .i177(1'b1),
    .i178(1'b1),
    .i179(1'b1),
    .i18(1'b1),
    .i180(1'b1),
    .i181(1'b1),
    .i182(1'b1),
    .i183(1'b1),
    .i184(1'b1),
    .i185(1'b1),
    .i186(1'b1),
    .i187(1'b1),
    .i188(1'b1),
    .i189(1'b1),
    .i19(1'b1),
    .i190(1'b1),
    .i191(1'b1),
    .i192(1'b1),
    .i193(1'b1),
    .i194(1'b1),
    .i195(1'b1),
    .i196(1'b1),
    .i197(1'b1),
    .i198(1'b1),
    .i199(1'b1),
    .i2(1'b1),
    .i20(1'b1),
    .i200(1'b1),
    .i201(1'b1),
    .i202(1'b1),
    .i203(1'b1),
    .i204(1'b1),
    .i205(1'b1),
    .i206(1'b1),
    .i207(1'b1),
    .i208(1'b1),
    .i209(1'b1),
    .i21(1'b1),
    .i210(1'b1),
    .i211(1'b1),
    .i212(1'b1),
    .i213(1'b1),
    .i214(1'b1),
    .i215(1'b1),
    .i216(1'b1),
    .i217(1'b1),
    .i218(1'b1),
    .i219(1'b1),
    .i22(1'b1),
    .i220(1'b1),
    .i221(1'b1),
    .i222(1'b1),
    .i223(1'b1),
    .i224(1'b1),
    .i225(1'b1),
    .i226(1'b1),
    .i227(1'b1),
    .i228(1'b1),
    .i229(1'b1),
    .i23(1'b1),
    .i230(1'b1),
    .i231(1'b1),
    .i232(1'b1),
    .i233(1'b1),
    .i234(1'b1),
    .i235(1'b1),
    .i236(1'b1),
    .i237(1'b1),
    .i238(1'b1),
    .i239(1'b1),
    .i24(1'b1),
    .i240(1'b1),
    .i241(1'b1),
    .i242(1'b1),
    .i243(1'b1),
    .i244(1'b1),
    .i245(1'b1),
    .i246(1'b1),
    .i247(1'b1),
    .i248(1'b1),
    .i249(1'b1),
    .i25(1'b1),
    .i250(1'b1),
    .i251(1'b1),
    .i252(1'b1),
    .i253(1'b1),
    .i254(1'b1),
    .i255(1'b1),
    .i26(1'b1),
    .i27(1'b1),
    .i28(1'b1),
    .i29(1'b1),
    .i3(1'b1),
    .i30(1'b1),
    .i31(1'b1),
    .i32(1'b1),
    .i33(1'b1),
    .i34(1'b1),
    .i35(1'b1),
    .i36(1'b1),
    .i37(1'b1),
    .i38(1'b1),
    .i39(1'b1),
    .i4(1'b1),
    .i40(1'b1),
    .i41(1'b1),
    .i42(1'b1),
    .i43(1'b1),
    .i44(1'b1),
    .i45(1'b1),
    .i46(1'b1),
    .i47(1'b1),
    .i48(1'b1),
    .i49(1'b1),
    .i5(1'b1),
    .i50(1'b1),
    .i51(1'b1),
    .i52(1'b1),
    .i53(1'b1),
    .i54(1'b1),
    .i55(1'b1),
    .i56(1'b1),
    .i57(1'b1),
    .i58(1'b1),
    .i59(1'b1),
    .i6(1'b1),
    .i60(1'b1),
    .i61(1'b1),
    .i62(1'b1),
    .i63(1'b1),
    .i64(1'b1),
    .i65(1'b1),
    .i66(1'b1),
    .i67(1'b1),
    .i68(1'b1),
    .i69(1'b1),
    .i7(1'b1),
    .i70(1'b0),
    .i71(1'b1),
    .i72(1'b1),
    .i73(1'b1),
    .i74(1'b1),
    .i75(1'b1),
    .i76(1'b1),
    .i77(1'b1),
    .i78(1'b0),
    .i79(1'b1),
    .i8(1'b1),
    .i80(1'b1),
    .i81(1'b1),
    .i82(1'b1),
    .i83(1'b1),
    .i84(1'b1),
    .i85(1'b1),
    .i86(1'b1),
    .i87(1'b1),
    .i88(1'b1),
    .i89(1'b1),
    .i9(1'b1),
    .i90(1'b1),
    .i91(1'b1),
    .i92(1'b1),
    .i93(1'b1),
    .i94(1'b0),
    .i95(1'b1),
    .i96(1'b1),
    .i97(1'b1),
    .i98(1'b1),
    .i99(1'b1),
    .sel(IR),
    .o(n371));  // ../../rtl/t80se/T80_MCode.vhd(1984)
  binary_mux_s3_w15 mux109 (
    .i0(15'b000000000000000),
    .i1(15'b001100110000011),
    .i2(15'b110011001111000),
    .i3(15'b000000000000100),
    .i4(15'b000000000000000),
    .i5(15'b000000000000000),
    .i6(15'b000000000000000),
    .i7(15'b000000000000000),
    .sel(MCycle),
    .o(n26));  // ../../rtl/t80se/T80_MCode.vhd(1983)
  binary_mux_s8_w8 mux11 (
    .i0(8'b00000000),
    .i1({4'b0000,n40}),
    .i10(8'b00000000),
    .i100({5'b10100,IR[5:3]}),
    .i101({5'b00000,IR[5:3]}),
    .i102({4'b0000,n5}),
    .i103({1'b0,n310,n311,n312,1'b0,IR[5:3]}),
    .i104({n322,1'b0,IR[5:3]}),
    .i105({5'b00000,IR[5:3]}),
    .i106({1'b0,n42[3],1'b0,n291,1'b0,IR[5:3]}),
    .i107({n263,1'b0,IR[5:3]}),
    .i108({5'b10100,IR[5:3]}),
    .i109({5'b00000,IR[5:3]}),
    .i11(8'b00000000),
    .i110({4'b0000,n5}),
    .i111({1'b0,n303,n304,n305,1'b0,IR[5:3]}),
    .i112({n322,4'b0000}),
    .i113(8'b00000000),
    .i114({1'b0,n42[2],1'b0,n297,4'b0000}),
    .i115(8'b00000000),
    .i116(8'b10100000),
    .i117(8'b00000000),
    .i118(8'b00000000),
    .i119(8'b00000000),
    .i12({5'b00000,IR[5:3]}),
    .i120({n322,1'b0,IR[5:3]}),
    .i121({5'b00000,IR[5:3]}),
    .i122({1'b0,n42[3],1'b0,n291,1'b0,IR[5:3]}),
    .i123({n263,1'b0,IR[5:3]}),
    .i124({5'b10100,IR[5:3]}),
    .i125({5'b00000,IR[5:3]}),
    .i126({4'b0000,n5}),
    .i127({5'b00000,IR[5:3]}),
    .i128(8'b00000111),
    .i129(8'b00000111),
    .i13({5'b00000,IR[5:3]}),
    .i130(8'b00000111),
    .i131(8'b00000111),
    .i132(8'b00000111),
    .i133(8'b00000111),
    .i134({5'b00000,n74,n75,n76}),
    .i135(8'b00000111),
    .i136(8'b00000111),
    .i137(8'b00000111),
    .i138(8'b00000111),
    .i139(8'b00000111),
    .i14({4'b0000,n2}),
    .i140(8'b00000111),
    .i141(8'b00000111),
    .i142({5'b00000,n74,n75,n76}),
    .i143(8'b00000111),
    .i144(8'b00000111),
    .i145(8'b00000111),
    .i146(8'b00000111),
    .i147(8'b00000111),
    .i148(8'b00000111),
    .i149(8'b00000111),
    .i15(8'b00000111),
    .i150({5'b00000,n74,n75,n76}),
    .i151(8'b00000111),
    .i152(8'b00000111),
    .i153(8'b00000111),
    .i154(8'b00000111),
    .i155(8'b00000111),
    .i156(8'b00000111),
    .i157(8'b00000111),
    .i158({5'b00000,n74,n75,n76}),
    .i159(8'b00000111),
    .i16(8'b00000000),
    .i160({1'b0,n272,n273,n274,4'b0111}),
    .i161({1'b0,n282,n283,n284,4'b0111}),
    .i162(8'b00000111),
    .i163(8'b00000111),
    .i164(8'b00000111),
    .i165(8'b00000111),
    .i166({5'b00000,n74,n75,n76}),
    .i167(8'b00000111),
    .i168({1'b0,n272,n273,n274,4'b0111}),
    .i169({1'b0,n282,n283,n284,4'b0111}),
    .i17({4'b0000,n40}),
    .i170(8'b00000111),
    .i171(8'b00000111),
    .i172(8'b00000111),
    .i173(8'b00000111),
    .i174({5'b00000,n74,n75,n76}),
    .i175(8'b00000111),
    .i176({1'b0,n272,n273,n274,4'b0111}),
    .i177({1'b0,n282,n283,n284,4'b0111}),
    .i178(8'b00000111),
    .i179(8'b00000111),
    .i18(8'b00000000),
    .i180(8'b00000111),
    .i181(8'b00000111),
    .i182({5'b00000,n74,n75,n76}),
    .i183(8'b00000111),
    .i184({1'b0,n272,n273,n274,4'b0111}),
    .i185({1'b0,n282,n283,n284,4'b0111}),
    .i186(8'b00000111),
    .i187(8'b00000111),
    .i188(8'b00000111),
    .i189(8'b00000111),
    .i19(8'b00000000),
    .i190({5'b00000,n74,n75,n76}),
    .i191(8'b00000111),
    .i192(8'b00000000),
    .i193({4'b0000,n58}),
    .i194(8'b00000000),
    .i195(8'b00000000),
    .i196(8'b00000000),
    .i197(8'b00000000),
    .i198({5'b00000,n77,n77,n77}),
    .i199(8'b00000000),
    .i2(8'b00000000),
    .i20({5'b00000,IR[5:3]}),
    .i200(8'b00000000),
    .i201(8'b00000000),
    .i202(8'b00000000),
    .i203(8'b00000000),
    .i204(8'b00000000),
    .i205(8'b00000000),
    .i206({5'b00000,n77,n77,n77}),
    .i207(8'b00000000),
    .i208(8'b00000000),
    .i209({4'b0000,n58}),
    .i21({5'b00000,IR[5:3]}),
    .i210(8'b00000000),
    .i211(8'b00000000),
    .i212(8'b00000000),
    .i213(8'b00000000),
    .i214({5'b00000,n77,n77,n77}),
    .i215(8'b00000000),
    .i216(8'b00000000),
    .i217(8'b00000000),
    .i218(8'b00000000),
    .i219(8'b00000000),
    .i22({4'b0000,n2}),
    .i220(8'b00000000),
    .i221(8'b00000000),
    .i222({5'b00000,n77,n77,n77}),
    .i223(8'b00000000),
    .i224(8'b00000000),
    .i225({4'b0000,n58}),
    .i226(8'b00000000),
    .i227({5'b00000,n61,1'b0,n62}),
    .i228(8'b00000000),
    .i229(8'b00000000),
    .i23(8'b00000111),
    .i230({5'b00000,n77,n77,n77}),
    .i231(8'b00000000),
    .i232(8'b00000000),
    .i233(8'b00000000),
    .i234(8'b00000000),
    .i235(8'b00000000),
    .i236(8'b00000000),
    .i237(8'b00000000),
    .i238({5'b00000,n77,n77,n77}),
    .i239(8'b00000000),
    .i24(8'b00000000),
    .i240(8'b00000000),
    .i241({4'b0000,n58}),
    .i242(8'b00000000),
    .i243(8'b00000000),
    .i244(8'b00000000),
    .i245(8'b00000000),
    .i246({5'b00000,n77,n77,n77}),
    .i247(8'b00000000),
    .i248(8'b00000000),
    .i249(8'b00000000),
    .i25({5'b00000,n42[1],1'b0,n118}),
    .i250(8'b00000000),
    .i251(8'b00000000),
    .i252(8'b00000000),
    .i253(8'b00000000),
    .i254({5'b00000,n77,n77,n77}),
    .i255(8'b00000000),
    .i26(8'b00000000),
    .i27(8'b00000000),
    .i28({5'b00000,IR[5:3]}),
    .i29({5'b00000,IR[5:3]}),
    .i3(8'b00000000),
    .i30({4'b0000,n2}),
    .i31(8'b00000111),
    .i32(8'b00000000),
    .i33({4'b0000,n40}),
    .i34(8'b00000000),
    .i35(8'b00000000),
    .i36({5'b00000,IR[5:3]}),
    .i37({5'b00000,IR[5:3]}),
    .i38({4'b0000,n2}),
    .i39(8'b00000111),
    .i4({5'b00000,IR[5:3]}),
    .i40(8'b00000000),
    .i41({5'b00000,n42[1],1'b0,n118}),
    .i42({5'b00000,n42[0],1'b0,n43}),
    .i43(8'b00000000),
    .i44({5'b00000,IR[5:3]}),
    .i45({5'b00000,IR[5:3]}),
    .i46({4'b0000,n2}),
    .i47(8'b00000000),
    .i48(8'b00000000),
    .i49({4'b0000,n40}),
    .i5({5'b00000,IR[5:3]}),
    .i50(8'b00000000),
    .i51(8'b00000000),
    .i52({4'b0000,n85}),
    .i53({4'b0000,n92}),
    .i54(8'b00000000),
    .i55(8'b00000000),
    .i56(8'b00000000),
    .i57({5'b00000,n42[1],1'b0,n118}),
    .i58(8'b00000000),
    .i59(8'b00000000),
    .i6({4'b0000,n2}),
    .i60({5'b00000,IR[5:3]}),
    .i61({5'b00000,IR[5:3]}),
    .i62({4'b0000,n2}),
    .i63(8'b00000000),
    .i64({n322,1'b0,IR[5:3]}),
    .i65({5'b00000,IR[5:3]}),
    .i66({1'b0,n42[2],1'b0,n297,1'b0,IR[5:3]}),
    .i67({5'b00000,IR[5:3]}),
    .i68({5'b10100,IR[5:3]}),
    .i69({5'b00000,IR[5:3]}),
    .i7(8'b00000111),
    .i70({4'b0000,n5}),
    .i71({5'b00000,IR[5:3]}),
    .i72({n322,1'b0,IR[5:3]}),
    .i73({5'b00000,IR[5:3]}),
    .i74({1'b0,n42[3],1'b0,n291,1'b0,IR[5:3]}),
    .i75({n263,1'b0,IR[5:3]}),
    .i76({5'b10100,IR[5:3]}),
    .i77({5'b00000,IR[5:3]}),
    .i78({4'b0000,n5}),
    .i79({5'b00000,IR[5:3]}),
    .i8(8'b00000000),
    .i80({n322,1'b0,IR[5:3]}),
    .i81({5'b00000,IR[5:3]}),
    .i82({1'b0,n42[2],1'b0,n297,1'b0,IR[5:3]}),
    .i83({5'b00000,IR[5:3]}),
    .i84({5'b10100,IR[5:3]}),
    .i85({5'b00000,IR[5:3]}),
    .i86({4'b0000,n5}),
    .i87({5'b00000,IR[5:3]}),
    .i88({n322,1'b0,IR[5:3]}),
    .i89({5'b00000,IR[5:3]}),
    .i9({5'b00000,n42[1],1'b0,n118}),
    .i90({1'b0,n42[3],1'b0,n291,1'b0,IR[5:3]}),
    .i91({n263,1'b0,IR[5:3]}),
    .i92({5'b10100,IR[5:3]}),
    .i93({5'b00000,IR[5:3]}),
    .i94({4'b0000,n5}),
    .i95({5'b00000,IR[5:3]}),
    .i96({n322,1'b0,IR[5:3]}),
    .i97({5'b00000,IR[5:3]}),
    .i98({1'b0,n42[2],1'b0,n297,1'b0,IR[5:3]}),
    .i99({5'b00000,IR[5:3]}),
    .sel(IR),
    .o({n358,n181}));  // ../../rtl/t80se/T80_MCode.vhd(1984)
  binary_mux_s8_w1 mux110 (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b0),
    .i100(1'b0),
    .i101(1'b0),
    .i102(1'b0),
    .i103(1'b0),
    .i104(1'b0),
    .i105(1'b0),
    .i106(1'b0),
    .i107(1'b0),
    .i108(1'b0),
    .i109(1'b0),
    .i11(1'b0),
    .i110(1'b0),
    .i111(n12),
    .i112(1'b0),
    .i113(1'b0),
    .i114(1'b0),
    .i115(1'b0),
    .i116(1'b0),
    .i117(1'b0),
    .i118(1'b0),
    .i119(1'b0),
    .i12(1'b0),
    .i120(1'b0),
    .i121(1'b0),
    .i122(1'b0),
    .i123(1'b0),
    .i124(1'b0),
    .i125(1'b0),
    .i126(1'b0),
    .i127(1'b0),
    .i128(1'b0),
    .i129(1'b0),
    .i13(1'b0),
    .i130(1'b0),
    .i131(1'b0),
    .i132(1'b0),
    .i133(1'b0),
    .i134(1'b0),
    .i135(1'b0),
    .i136(1'b0),
    .i137(1'b0),
    .i138(1'b0),
    .i139(1'b0),
    .i14(1'b0),
    .i140(1'b0),
    .i141(1'b0),
    .i142(1'b0),
    .i143(1'b0),
    .i144(1'b0),
    .i145(1'b0),
    .i146(1'b0),
    .i147(1'b0),
    .i148(1'b0),
    .i149(1'b0),
    .i15(1'b0),
    .i150(1'b0),
    .i151(1'b0),
    .i152(1'b0),
    .i153(1'b0),
    .i154(1'b0),
    .i155(1'b0),
    .i156(1'b0),
    .i157(1'b0),
    .i158(1'b0),
    .i159(1'b0),
    .i16(1'b0),
    .i160(1'b0),
    .i161(1'b0),
    .i162(1'b0),
    .i163(1'b0),
    .i164(1'b0),
    .i165(1'b0),
    .i166(1'b0),
    .i167(1'b0),
    .i168(1'b0),
    .i169(1'b0),
    .i17(1'b0),
    .i170(1'b0),
    .i171(1'b0),
    .i172(1'b0),
    .i173(1'b0),
    .i174(1'b0),
    .i175(1'b0),
    .i176(1'b0),
    .i177(1'b0),
    .i178(1'b0),
    .i179(1'b0),
    .i18(1'b0),
    .i180(1'b0),
    .i181(1'b0),
    .i182(1'b0),
    .i183(1'b0),
    .i184(1'b0),
    .i185(1'b0),
    .i186(1'b0),
    .i187(1'b0),
    .i188(1'b0),
    .i189(1'b0),
    .i19(1'b0),
    .i190(1'b0),
    .i191(1'b0),
    .i192(1'b0),
    .i193(1'b0),
    .i194(1'b0),
    .i195(1'b0),
    .i196(1'b0),
    .i197(1'b0),
    .i198(1'b0),
    .i199(1'b0),
    .i2(1'b0),
    .i20(1'b0),
    .i200(1'b0),
    .i201(1'b0),
    .i202(1'b0),
    .i203(1'b0),
    .i204(1'b0),
    .i205(1'b0),
    .i206(1'b0),
    .i207(1'b0),
    .i208(1'b0),
    .i209(1'b0),
    .i21(1'b0),
    .i210(1'b0),
    .i211(1'b0),
    .i212(1'b0),
    .i213(1'b0),
    .i214(1'b0),
    .i215(1'b0),
    .i216(1'b0),
    .i217(1'b0),
    .i218(1'b0),
    .i219(1'b0),
    .i22(1'b0),
    .i220(1'b0),
    .i221(1'b0),
    .i222(1'b0),
    .i223(1'b0),
    .i224(1'b0),
    .i225(1'b0),
    .i226(1'b0),
    .i227(1'b0),
    .i228(1'b0),
    .i229(1'b0),
    .i23(1'b0),
    .i230(1'b0),
    .i231(1'b0),
    .i232(1'b0),
    .i233(1'b0),
    .i234(1'b0),
    .i235(1'b0),
    .i236(1'b0),
    .i237(1'b0),
    .i238(1'b0),
    .i239(1'b0),
    .i24(1'b0),
    .i240(1'b0),
    .i241(1'b0),
    .i242(1'b0),
    .i243(1'b0),
    .i244(1'b0),
    .i245(1'b0),
    .i246(1'b0),
    .i247(1'b0),
    .i248(1'b0),
    .i249(1'b0),
    .i25(1'b0),
    .i250(1'b0),
    .i251(1'b0),
    .i252(1'b0),
    .i253(1'b0),
    .i254(1'b0),
    .i255(1'b0),
    .i26(1'b0),
    .i27(1'b0),
    .i28(1'b0),
    .i29(1'b0),
    .i3(1'b0),
    .i30(1'b0),
    .i31(1'b0),
    .i32(1'b0),
    .i33(1'b0),
    .i34(1'b0),
    .i35(1'b0),
    .i36(1'b0),
    .i37(1'b0),
    .i38(1'b0),
    .i39(1'b0),
    .i4(1'b0),
    .i40(1'b0),
    .i41(1'b0),
    .i42(1'b0),
    .i43(1'b0),
    .i44(1'b0),
    .i45(1'b0),
    .i46(1'b0),
    .i47(1'b0),
    .i48(1'b0),
    .i49(1'b0),
    .i5(1'b0),
    .i50(1'b0),
    .i51(1'b0),
    .i52(1'b0),
    .i53(1'b0),
    .i54(1'b0),
    .i55(1'b0),
    .i56(1'b0),
    .i57(1'b0),
    .i58(1'b0),
    .i59(1'b0),
    .i6(1'b0),
    .i60(1'b0),
    .i61(1'b0),
    .i62(1'b0),
    .i63(1'b0),
    .i64(1'b0),
    .i65(1'b0),
    .i66(1'b0),
    .i67(1'b0),
    .i68(1'b0),
    .i69(1'b0),
    .i7(1'b0),
    .i70(1'b0),
    .i71(1'b0),
    .i72(1'b0),
    .i73(1'b0),
    .i74(1'b0),
    .i75(1'b0),
    .i76(1'b0),
    .i77(1'b0),
    .i78(1'b0),
    .i79(1'b0),
    .i8(1'b0),
    .i80(1'b0),
    .i81(1'b0),
    .i82(1'b0),
    .i83(1'b0),
    .i84(1'b0),
    .i85(1'b0),
    .i86(1'b0),
    .i87(1'b0),
    .i88(1'b0),
    .i89(1'b0),
    .i9(1'b0),
    .i90(1'b0),
    .i91(1'b0),
    .i92(1'b0),
    .i93(1'b0),
    .i94(1'b0),
    .i95(1'b0),
    .i96(1'b0),
    .i97(1'b0),
    .i98(1'b0),
    .i99(1'b0),
    .sel(IR),
    .o(n373));  // ../../rtl/t80se/T80_MCode.vhd(1984)
  binary_mux_s8_w1 mux111 (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b0),
    .i100(1'b0),
    .i101(1'b0),
    .i102(1'b0),
    .i103(n12),
    .i104(1'b0),
    .i105(1'b0),
    .i106(1'b0),
    .i107(1'b0),
    .i108(1'b0),
    .i109(1'b0),
    .i11(1'b0),
    .i110(1'b0),
    .i111(1'b0),
    .i112(1'b0),
    .i113(1'b0),
    .i114(1'b0),
    .i115(1'b0),
    .i116(1'b0),
    .i117(1'b0),
    .i118(1'b0),
    .i119(1'b0),
    .i12(1'b0),
    .i120(1'b0),
    .i121(1'b0),
    .i122(1'b0),
    .i123(1'b0),
    .i124(1'b0),
    .i125(1'b0),
    .i126(1'b0),
    .i127(1'b0),
    .i128(1'b0),
    .i129(1'b0),
    .i13(1'b0),
    .i130(1'b0),
    .i131(1'b0),
    .i132(1'b0),
    .i133(1'b0),
    .i134(1'b0),
    .i135(1'b0),
    .i136(1'b0),
    .i137(1'b0),
    .i138(1'b0),
    .i139(1'b0),
    .i14(1'b0),
    .i140(1'b0),
    .i141(1'b0),
    .i142(1'b0),
    .i143(1'b0),
    .i144(1'b0),
    .i145(1'b0),
    .i146(1'b0),
    .i147(1'b0),
    .i148(1'b0),
    .i149(1'b0),
    .i15(1'b0),
    .i150(1'b0),
    .i151(1'b0),
    .i152(1'b0),
    .i153(1'b0),
    .i154(1'b0),
    .i155(1'b0),
    .i156(1'b0),
    .i157(1'b0),
    .i158(1'b0),
    .i159(1'b0),
    .i16(1'b0),
    .i160(1'b0),
    .i161(1'b0),
    .i162(1'b0),
    .i163(1'b0),
    .i164(1'b0),
    .i165(1'b0),
    .i166(1'b0),
    .i167(1'b0),
    .i168(1'b0),
    .i169(1'b0),
    .i17(1'b0),
    .i170(1'b0),
    .i171(1'b0),
    .i172(1'b0),
    .i173(1'b0),
    .i174(1'b0),
    .i175(1'b0),
    .i176(1'b0),
    .i177(1'b0),
    .i178(1'b0),
    .i179(1'b0),
    .i18(1'b0),
    .i180(1'b0),
    .i181(1'b0),
    .i182(1'b0),
    .i183(1'b0),
    .i184(1'b0),
    .i185(1'b0),
    .i186(1'b0),
    .i187(1'b0),
    .i188(1'b0),
    .i189(1'b0),
    .i19(1'b0),
    .i190(1'b0),
    .i191(1'b0),
    .i192(1'b0),
    .i193(1'b0),
    .i194(1'b0),
    .i195(1'b0),
    .i196(1'b0),
    .i197(1'b0),
    .i198(1'b0),
    .i199(1'b0),
    .i2(1'b0),
    .i20(1'b0),
    .i200(1'b0),
    .i201(1'b0),
    .i202(1'b0),
    .i203(1'b0),
    .i204(1'b0),
    .i205(1'b0),
    .i206(1'b0),
    .i207(1'b0),
    .i208(1'b0),
    .i209(1'b0),
    .i21(1'b0),
    .i210(1'b0),
    .i211(1'b0),
    .i212(1'b0),
    .i213(1'b0),
    .i214(1'b0),
    .i215(1'b0),
    .i216(1'b0),
    .i217(1'b0),
    .i218(1'b0),
    .i219(1'b0),
    .i22(1'b0),
    .i220(1'b0),
    .i221(1'b0),
    .i222(1'b0),
    .i223(1'b0),
    .i224(1'b0),
    .i225(1'b0),
    .i226(1'b0),
    .i227(1'b0),
    .i228(1'b0),
    .i229(1'b0),
    .i23(1'b0),
    .i230(1'b0),
    .i231(1'b0),
    .i232(1'b0),
    .i233(1'b0),
    .i234(1'b0),
    .i235(1'b0),
    .i236(1'b0),
    .i237(1'b0),
    .i238(1'b0),
    .i239(1'b0),
    .i24(1'b0),
    .i240(1'b0),
    .i241(1'b0),
    .i242(1'b0),
    .i243(1'b0),
    .i244(1'b0),
    .i245(1'b0),
    .i246(1'b0),
    .i247(1'b0),
    .i248(1'b0),
    .i249(1'b0),
    .i25(1'b0),
    .i250(1'b0),
    .i251(1'b0),
    .i252(1'b0),
    .i253(1'b0),
    .i254(1'b0),
    .i255(1'b0),
    .i26(1'b0),
    .i27(1'b0),
    .i28(1'b0),
    .i29(1'b0),
    .i3(1'b0),
    .i30(1'b0),
    .i31(1'b0),
    .i32(1'b0),
    .i33(1'b0),
    .i34(1'b0),
    .i35(1'b0),
    .i36(1'b0),
    .i37(1'b0),
    .i38(1'b0),
    .i39(1'b0),
    .i4(1'b0),
    .i40(1'b0),
    .i41(1'b0),
    .i42(1'b0),
    .i43(1'b0),
    .i44(1'b0),
    .i45(1'b0),
    .i46(1'b0),
    .i47(1'b0),
    .i48(1'b0),
    .i49(1'b0),
    .i5(1'b0),
    .i50(1'b0),
    .i51(1'b0),
    .i52(1'b0),
    .i53(1'b0),
    .i54(1'b0),
    .i55(1'b0),
    .i56(1'b0),
    .i57(1'b0),
    .i58(1'b0),
    .i59(1'b0),
    .i6(1'b0),
    .i60(1'b0),
    .i61(1'b0),
    .i62(1'b0),
    .i63(1'b0),
    .i64(1'b0),
    .i65(1'b0),
    .i66(1'b0),
    .i67(1'b0),
    .i68(1'b0),
    .i69(1'b0),
    .i7(1'b0),
    .i70(1'b0),
    .i71(1'b0),
    .i72(1'b0),
    .i73(1'b0),
    .i74(1'b0),
    .i75(1'b0),
    .i76(1'b0),
    .i77(1'b0),
    .i78(1'b0),
    .i79(1'b0),
    .i8(1'b0),
    .i80(1'b0),
    .i81(1'b0),
    .i82(1'b0),
    .i83(1'b0),
    .i84(1'b0),
    .i85(1'b0),
    .i86(1'b0),
    .i87(1'b0),
    .i88(1'b0),
    .i89(1'b0),
    .i9(1'b0),
    .i90(1'b0),
    .i91(1'b0),
    .i92(1'b0),
    .i93(1'b0),
    .i94(1'b0),
    .i95(1'b0),
    .i96(1'b0),
    .i97(1'b0),
    .i98(1'b0),
    .i99(1'b0),
    .sel(IR),
    .o(n374));  // ../../rtl/t80se/T80_MCode.vhd(1984)
  binary_mux_s5_w1 mux112 (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b0),
    .i11(1'b0),
    .i12(1'b0),
    .i13(n12),
    .i14(1'b0),
    .i15(1'b0),
    .i16(1'b0),
    .i17(1'b0),
    .i18(1'b0),
    .i19(1'b0),
    .i2(1'b0),
    .i20(1'b0),
    .i21(1'b0),
    .i22(1'b0),
    .i23(1'b0),
    .i24(1'b0),
    .i25(1'b0),
    .i26(1'b0),
    .i27(1'b0),
    .i28(1'b0),
    .i29(1'b0),
    .i3(1'b0),
    .i30(1'b0),
    .i31(1'b0),
    .i4(1'b0),
    .i5(1'b0),
    .i6(1'b0),
    .i7(1'b0),
    .i8(1'b0),
    .i9(1'b0),
    .sel({IR[7:6],IR[2:0]}),
    .o(n375));  // ../../rtl/t80se/T80_MCode.vhd(1984)
  binary_mux_s6_w1 mux113 (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b0),
    .i11(1'b0),
    .i12(1'b0),
    .i13(1'b0),
    .i14(1'b0),
    .i15(1'b0),
    .i16(n1),
    .i17(n1),
    .i18(1'b0),
    .i19(1'b0),
    .i2(1'b0),
    .i20(1'b0),
    .i21(1'b0),
    .i22(1'b0),
    .i23(1'b0),
    .i24(n1),
    .i25(n1),
    .i26(1'b0),
    .i27(1'b0),
    .i28(1'b0),
    .i29(1'b0),
    .i3(1'b0),
    .i30(1'b0),
    .i31(1'b0),
    .i32(1'b0),
    .i33(1'b0),
    .i34(1'b0),
    .i35(1'b0),
    .i36(1'b0),
    .i37(1'b0),
    .i38(1'b0),
    .i39(1'b0),
    .i4(1'b0),
    .i40(1'b0),
    .i41(1'b0),
    .i42(n1),
    .i43(n12),
    .i44(1'b0),
    .i45(1'b0),
    .i46(1'b0),
    .i47(1'b0),
    .i48(1'b0),
    .i49(1'b0),
    .i5(1'b0),
    .i50(1'b0),
    .i51(1'b0),
    .i52(1'b0),
    .i53(1'b0),
    .i54(1'b0),
    .i55(1'b0),
    .i56(1'b0),
    .i57(1'b0),
    .i58(1'b0),
    .i59(1'b0),
    .i6(1'b0),
    .i60(1'b0),
    .i61(1'b0),
    .i62(1'b0),
    .i63(1'b0),
    .i7(1'b0),
    .i8(1'b0),
    .i9(1'b0),
    .sel({IR[7:5],IR[2:0]}),
    .o(n376));  // ../../rtl/t80se/T80_MCode.vhd(1984)
  binary_mux_s5_w1 mux114 (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b0),
    .i11(1'b0),
    .i12(1'b0),
    .i13(1'b0),
    .i14(1'b0),
    .i15(1'b0),
    .i16(1'b0),
    .i17(1'b0),
    .i18(1'b0),
    .i19(1'b0),
    .i2(1'b0),
    .i20(1'b0),
    .i21(1'b0),
    .i22(1'b0),
    .i23(1'b0),
    .i24(1'b0),
    .i25(1'b0),
    .i26(1'b0),
    .i27(1'b0),
    .i28(1'b0),
    .i29(1'b0),
    .i3(1'b0),
    .i30(1'b0),
    .i31(1'b0),
    .i4(1'b0),
    .i5(1'b0),
    .i6(1'b0),
    .i7(1'b0),
    .i8(n1),
    .i9(1'b0),
    .sel({IR[7:6],IR[2:0]}),
    .o(n377));  // ../../rtl/t80se/T80_MCode.vhd(1984)
  binary_mux_s6_w1 mux115 (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b0),
    .i11(1'b0),
    .i12(1'b0),
    .i13(1'b0),
    .i14(1'b0),
    .i15(1'b0),
    .i16(1'b0),
    .i17(1'b0),
    .i18(1'b0),
    .i19(1'b0),
    .i2(1'b0),
    .i20(1'b0),
    .i21(1'b0),
    .i22(1'b0),
    .i23(1'b0),
    .i24(1'b0),
    .i25(1'b0),
    .i26(1'b0),
    .i27(1'b0),
    .i28(1'b0),
    .i29(1'b0),
    .i3(1'b0),
    .i30(1'b0),
    .i31(1'b0),
    .i32(1'b0),
    .i33(1'b0),
    .i34(1'b0),
    .i35(1'b0),
    .i36(1'b0),
    .i37(1'b0),
    .i38(1'b0),
    .i39(1'b0),
    .i4(1'b0),
    .i40(1'b0),
    .i41(1'b0),
    .i42(n12),
    .i43(n12),
    .i44(1'b0),
    .i45(1'b0),
    .i46(1'b0),
    .i47(1'b0),
    .i48(1'b0),
    .i49(1'b0),
    .i5(1'b0),
    .i50(1'b0),
    .i51(1'b0),
    .i52(1'b0),
    .i53(1'b0),
    .i54(1'b0),
    .i55(1'b0),
    .i56(1'b0),
    .i57(1'b0),
    .i58(1'b0),
    .i59(1'b0),
    .i6(1'b0),
    .i60(1'b0),
    .i61(1'b0),
    .i62(1'b0),
    .i63(1'b0),
    .i7(1'b0),
    .i8(1'b0),
    .i9(1'b0),
    .sel({IR[7:5],IR[2:0]}),
    .o(n378));  // ../../rtl/t80se/T80_MCode.vhd(1984)
  binary_mux_s2_w4 mux116 (
    .i0(n179),
    .i1({1'b0,IR[2:0]}),
    .i2(n360),
    .i3(n360),
    .sel(ISet),
    .o(n379));  // ../../rtl/t80se/T80_MCode.vhd(1986)
  binary_mux_s2_w1 mux117 (
    .i0(n180),
    .i1(1'b0),
    .i2(1'b0),
    .i3(1'b0),
    .sel(ISet),
    .o(ExchangeRp));  // ../../rtl/t80se/T80_MCode.vhd(1986)
  binary_mux_s2_w4 mux118 (
    .i0(n181),
    .i1({1'b0,IR[2:0]}),
    .i2(n358),
    .i3(n358),
    .sel(ISet),
    .o(Set_BusA_To));  // ../../rtl/t80se/T80_MCode.vhd(1986)
  binary_mux_s2_w1 mux119 (
    .i0(n182),
    .i1(n256),
    .i2(n357),
    .i3(n357),
    .sel(ISet),
    .o(Read_To_Reg));  // ../../rtl/t80se/T80_MCode.vhd(1986)
  binary_mux_s3_w1 mux12 (
    .i0(1'b1),
    .i1(1'b0),
    .i2(1'b0),
    .i3(1'b1),
    .i4(1'b1),
    .i5(1'b1),
    .i6(1'b1),
    .i7(1'b1),
    .sel(MCycle),
    .o(n95));  // ../../rtl/t80se/T80_MCode.vhd(818)
  binary_mux_s2_w3 mux120 (
    .i0(n183),
    .i1(n257),
    .i2({n351[1],n352,n351[0]}),
    .i3({n351[1],n352,n351[0]}),
    .sel(ISet),
    .o(MCycles));  // ../../rtl/t80se/T80_MCode.vhd(1986)
  binary_mux_s2_w1 mux121 (
    .i0(n184),
    .i1(1'b0),
    .i2(n353),
    .i3(n353),
    .sel(ISet),
    .o(n380));  // ../../rtl/t80se/T80_MCode.vhd(1986)
  binary_mux_s2_w3 mux122 (
    .i0(n185),
    .i1(n259),
    .i2(n355),
    .i3(n355),
    .sel(ISet),
    .o(n381));  // ../../rtl/t80se/T80_MCode.vhd(1986)
  binary_mux_s2_w1 mux123 (
    .i0(n186),
    .i1(n261),
    .i2(n361),
    .i3(n361),
    .sel(ISet),
    .o(Write));  // ../../rtl/t80se/T80_MCode.vhd(1986)
  binary_mux_s2_w1 mux124 (
    .i0(n187),
    .i1(1'b0),
    .i2(n369),
    .i3(n369),
    .sel(ISet),
    .o(Read_To_Acc));  // ../../rtl/t80se/T80_MCode.vhd(1986)
  binary_mux_s2_w1 mux125 (
    .i0(n188),
    .i1(1'b0),
    .i2(n354),
    .i3(n354),
    .sel(ISet),
    .o(LDZ));  // ../../rtl/t80se/T80_MCode.vhd(1986)
  binary_mux_s2_w2 mux126 (
    .i0(n189),
    .i1(2'b00),
    .i2(n372),
    .i3(n372),
    .sel(ISet),
    .o(SetWZ));  // ../../rtl/t80se/T80_MCode.vhd(1986)
  binary_mux_s2_w1 mux127 (
    .i0(n190),
    .i1(1'b0),
    .i2(n356),
    .i3(n356),
    .sel(ISet),
    .o(LDW));  // ../../rtl/t80se/T80_MCode.vhd(1986)
  binary_mux_s2_w1 mux128 (
    .i0(n191),
    .i1(1'b0),
    .i2(n359),
    .i3(n359),
    .sel(ISet),
    .o(Inc_WZ));  // ../../rtl/t80se/T80_MCode.vhd(1986)
  binary_mux_s2_w3 mux129 (
    .i0(n192),
    .i1(n260),
    .i2(n350),
    .i3(n350),
    .sel(ISet),
    .o(n382));  // ../../rtl/t80se/T80_MCode.vhd(1986)
  binary_mux_s8_w12 mux13 (
    .i0({1'b0,IR[5:3],n221,1'b0,IR[5:3]}),
    .i1({1'b0,IR[5:3],n221,1'b0,IR[5:3]}),
    .i10({1'b0,IR[5:3],n221,1'b0,IR[5:3]}),
    .i100({4'b0010,n229,1'b0,IR[5:3]}),
    .i101({1'b0,IR[5:3],n229,1'b0,IR[5:3]}),
    .i102({1'b0,IR[5:3],n235,1'b0,IR[5:3]}),
    .i103({n313,n229,1'b0,IR[5:3]}),
    .i104({1'b0,IR[5:3],n229,1'b0,IR[5:3]}),
    .i105({1'b0,IR[5:3],n229,1'b0,IR[5:3]}),
    .i106({n290,n229,1'b0,IR[5:3]}),
    .i107({1'b0,IR[5:3],n229,1'b0,IR[5:3]}),
    .i108({4'b0010,n229,1'b0,IR[5:3]}),
    .i109({1'b0,IR[5:3],n229,1'b0,IR[5:3]}),
    .i11({1'b0,IR[5:3],n221,1'b0,IR[5:3]}),
    .i110({1'b0,IR[5:3],n235,1'b0,IR[5:3]}),
    .i111({n306,n229,1'b0,IR[5:3]}),
    .i112({1'b0,IR[5:3],n229,1'b0,IR[5:3]}),
    .i113({1'b0,IR[5:3],n229,1'b0,IR[5:3]}),
    .i114({n296,n229,1'b0,IR[5:3]}),
    .i115({1'b0,IR[5:3],n229,1'b0,IR[5:3]}),
    .i116({4'b0010,n229,1'b0,IR[5:3]}),
    .i117({1'b0,IR[5:3],n229,1'b0,IR[5:3]}),
    .i118({1'b0,IR[5:3],n235,1'b0,IR[5:3]}),
    .i119({1'b0,IR[5:3],n229,1'b0,IR[5:3]}),
    .i12({1'b0,IR[5:3],n221,4'b0000}),
    .i120({1'b0,IR[5:3],n229,1'b0,IR[5:3]}),
    .i121({1'b0,IR[5:3],n229,1'b0,IR[5:3]}),
    .i122({n290,n229,1'b0,IR[5:3]}),
    .i123({1'b0,IR[5:3],n229,1'b0,IR[5:3]}),
    .i124({4'b0010,n229,1'b0,IR[5:3]}),
    .i125({1'b0,IR[5:3],n229,1'b0,IR[5:3]}),
    .i126({1'b0,IR[5:3],n235,1'b0,IR[5:3]}),
    .i127({1'b0,IR[5:3],n229,1'b0,IR[5:3]}),
    .i128({1'b0,IR[5:3],n248,1'b0,IR[5:3]}),
    .i129({1'b0,IR[5:3],n248,1'b0,IR[5:3]}),
    .i13({1'b0,IR[5:3],n221,4'b0010}),
    .i130({1'b0,IR[5:3],n248,1'b0,IR[5:3]}),
    .i131({1'b0,IR[5:3],n248,1'b0,IR[5:3]}),
    .i132({1'b0,IR[5:3],n248,1'b0,IR[5:3]}),
    .i133({1'b0,IR[5:3],n248,1'b0,IR[5:3]}),
    .i134({1'b0,IR[5:3],n253,1'b0,IR[5:3]}),
    .i135({1'b0,IR[5:3],n248,1'b0,IR[5:3]}),
    .i136({1'b0,IR[5:3],n248,1'b0,IR[5:3]}),
    .i137({1'b0,IR[5:3],n248,1'b0,IR[5:3]}),
    .i138({1'b0,IR[5:3],n248,1'b0,IR[5:3]}),
    .i139({1'b0,IR[5:3],n248,1'b0,IR[5:3]}),
    .i14({1'b0,IR[5:3],n224,1'b0,IR[5:3]}),
    .i140({1'b0,IR[5:3],n248,1'b0,IR[5:3]}),
    .i141({1'b0,IR[5:3],n248,1'b0,IR[5:3]}),
    .i142({1'b0,IR[5:3],n253,1'b0,IR[5:3]}),
    .i143({1'b0,IR[5:3],n248,1'b0,IR[5:3]}),
    .i144({1'b0,IR[5:3],n248,1'b0,IR[5:3]}),
    .i145({1'b0,IR[5:3],n248,1'b0,IR[5:3]}),
    .i146({1'b0,IR[5:3],n248,1'b0,IR[5:3]}),
    .i147({1'b0,IR[5:3],n248,1'b0,IR[5:3]}),
    .i148({1'b0,IR[5:3],n248,1'b0,IR[5:3]}),
    .i149({1'b0,IR[5:3],n248,1'b0,IR[5:3]}),
    .i15({1'b0,IR[5:3],n221,4'b1000}),
    .i150({1'b0,IR[5:3],n253,1'b0,IR[5:3]}),
    .i151({1'b0,IR[5:3],n248,1'b0,IR[5:3]}),
    .i152({1'b0,IR[5:3],n248,1'b0,IR[5:3]}),
    .i153({1'b0,IR[5:3],n248,1'b0,IR[5:3]}),
    .i154({1'b0,IR[5:3],n248,1'b0,IR[5:3]}),
    .i155({1'b0,IR[5:3],n248,1'b0,IR[5:3]}),
    .i156({1'b0,IR[5:3],n248,1'b0,IR[5:3]}),
    .i157({1'b0,IR[5:3],n248,1'b0,IR[5:3]}),
    .i158({1'b0,IR[5:3],n253,1'b0,IR[5:3]}),
    .i159({1'b0,IR[5:3],n248,1'b0,IR[5:3]}),
    .i16({1'b0,IR[5:3],n221,n139}),
    .i160({n275,n248,1'b0,IR[5:3]}),
    .i161({n285,n248,1'b0,IR[5:3]}),
    .i162({n336,n248,1'b0,IR[5:3]}),
    .i163({n345,n248,1'b0,IR[5:3]}),
    .i164({1'b0,IR[5:3],n248,1'b0,IR[5:3]}),
    .i165({1'b0,IR[5:3],n248,1'b0,IR[5:3]}),
    .i166({1'b0,IR[5:3],n253,1'b0,IR[5:3]}),
    .i167({1'b0,IR[5:3],n248,1'b0,IR[5:3]}),
    .i168({n275,n248,1'b0,IR[5:3]}),
    .i169({n285,n248,1'b0,IR[5:3]}),
    .i17({1'b0,IR[5:3],n221,1'b0,IR[5:3]}),
    .i170({n336,n248,1'b0,IR[5:3]}),
    .i171({n345,n248,1'b0,IR[5:3]}),
    .i172({1'b0,IR[5:3],n248,1'b0,IR[5:3]}),
    .i173({1'b0,IR[5:3],n248,1'b0,IR[5:3]}),
    .i174({1'b0,IR[5:3],n253,1'b0,IR[5:3]}),
    .i175({1'b0,IR[5:3],n248,1'b0,IR[5:3]}),
    .i176({n275,n248,1'b0,IR[5:3]}),
    .i177({n285,n248,1'b0,IR[5:3]}),
    .i178({n336,n248,1'b0,IR[5:3]}),
    .i179({n345,n248,1'b0,IR[5:3]}),
    .i18({1'b0,IR[5:3],n221,1'b0,IR[5:3]}),
    .i180({1'b0,IR[5:3],n248,1'b0,IR[5:3]}),
    .i181({1'b0,IR[5:3],n248,1'b0,IR[5:3]}),
    .i182({1'b0,IR[5:3],n253,1'b0,IR[5:3]}),
    .i183({1'b0,IR[5:3],n248,1'b0,IR[5:3]}),
    .i184({n275,n248,1'b0,IR[5:3]}),
    .i185({n285,n248,1'b0,IR[5:3]}),
    .i186({n336,n248,1'b0,IR[5:3]}),
    .i187({n345,n248,1'b0,IR[5:3]}),
    .i188({1'b0,IR[5:3],n248,1'b0,IR[5:3]}),
    .i189({1'b0,IR[5:3],n248,1'b0,IR[5:3]}),
    .i19({1'b0,IR[5:3],n221,1'b0,IR[5:3]}),
    .i190({1'b0,IR[5:3],n253,1'b0,IR[5:3]}),
    .i191({1'b0,IR[5:3],n248,1'b0,IR[5:3]}),
    .i192({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i193({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i194({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i195({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i196({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i197({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i198({1'b0,IR[5:3],n244,1'b0,IR[5:3]}),
    .i199({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i2({1'b0,IR[5:3],n221,1'b0,IR[5:3]}),
    .i20({1'b0,IR[5:3],n221,4'b0000}),
    .i200({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i201({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i202({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i203({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i204({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i205({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i206({1'b0,IR[5:3],n244,1'b0,IR[5:3]}),
    .i207({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i208({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i209({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i21({1'b0,IR[5:3],n221,4'b0010}),
    .i210({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i211({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i212({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i213({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i214({1'b0,IR[5:3],n244,1'b0,IR[5:3]}),
    .i215({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i216({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i217({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i218({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i219({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i22({1'b0,IR[5:3],n224,1'b0,IR[5:3]}),
    .i220({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i221({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i222({1'b0,IR[5:3],n244,1'b0,IR[5:3]}),
    .i223({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i224({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i225({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i226({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i227({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i228({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i229({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i23({1'b0,IR[5:3],n221,4'b1000}),
    .i230({1'b0,IR[5:3],n244,1'b0,IR[5:3]}),
    .i231({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i232({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i233({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i234({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i235({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i236({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i237({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i238({1'b0,IR[5:3],n244,1'b0,IR[5:3]}),
    .i239({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i24({1'b0,IR[5:3],n221,1'b0,IR[5:3]}),
    .i240({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i241({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i242({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i243({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i244({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i245({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i246({1'b0,IR[5:3],n244,1'b0,IR[5:3]}),
    .i247({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i248({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i249({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i25({1'b0,IR[5:3],n221,n117}),
    .i250({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i251({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i252({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i253({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i254({1'b0,IR[5:3],n244,1'b0,IR[5:3]}),
    .i255({1'b0,IR[5:3],n239,1'b0,IR[5:3]}),
    .i26({1'b0,IR[5:3],n221,1'b0,IR[5:3]}),
    .i27({1'b0,IR[5:3],n221,1'b0,IR[5:3]}),
    .i28({1'b0,IR[5:3],n221,4'b0000}),
    .i29({1'b0,IR[5:3],n221,4'b0010}),
    .i3({1'b0,IR[5:3],n221,1'b0,IR[5:3]}),
    .i30({1'b0,IR[5:3],n224,1'b0,IR[5:3]}),
    .i31({1'b0,IR[5:3],n221,4'b1000}),
    .i32({1'b0,IR[5:3],n221,1'b0,IR[5:3]}),
    .i33({1'b0,IR[5:3],n221,1'b0,IR[5:3]}),
    .i34({1'b0,IR[5:3],n221,1'b0,IR[5:3]}),
    .i35({1'b0,IR[5:3],n221,1'b0,IR[5:3]}),
    .i36({1'b0,IR[5:3],n221,4'b0000}),
    .i37({1'b0,IR[5:3],n221,4'b0010}),
    .i38({1'b0,IR[5:3],n224,1'b0,IR[5:3]}),
    .i39({1'b0,IR[5:3],n221,4'b1100}),
    .i4({1'b0,IR[5:3],n221,4'b0000}),
    .i40({1'b0,IR[5:3],n221,1'b0,IR[5:3]}),
    .i41({1'b0,IR[5:3],n221,n117}),
    .i42({1'b0,IR[5:3],n221,1'b0,IR[5:3]}),
    .i43({1'b0,IR[5:3],n221,1'b0,IR[5:3]}),
    .i44({1'b0,IR[5:3],n221,4'b0000}),
    .i45({1'b0,IR[5:3],n221,4'b0010}),
    .i46({1'b0,IR[5:3],n224,1'b0,IR[5:3]}),
    .i47({1'b0,IR[5:3],n221,1'b0,IR[5:3]}),
    .i48({1'b0,IR[5:3],n221,1'b0,IR[5:3]}),
    .i49({1'b0,IR[5:3],n221,1'b0,IR[5:3]}),
    .i5({1'b0,IR[5:3],n221,4'b0010}),
    .i50({1'b0,IR[5:3],n221,1'b0,IR[5:3]}),
    .i51({1'b0,IR[5:3],n221,1'b0,IR[5:3]}),
    .i52({1'b0,IR[5:3],n221,n82}),
    .i53({1'b0,IR[5:3],n221,n89}),
    .i54({1'b0,IR[5:3],n224,1'b0,IR[5:3]}),
    .i55({1'b0,IR[5:3],n221,1'b0,IR[5:3]}),
    .i56({1'b0,IR[5:3],n221,1'b0,IR[5:3]}),
    .i57({1'b0,IR[5:3],n221,n117}),
    .i58({1'b0,IR[5:3],n221,1'b0,IR[5:3]}),
    .i59({1'b0,IR[5:3],n221,1'b0,IR[5:3]}),
    .i6({1'b0,IR[5:3],n224,1'b0,IR[5:3]}),
    .i60({1'b0,IR[5:3],n221,4'b0000}),
    .i61({1'b0,IR[5:3],n221,4'b0010}),
    .i62({1'b0,IR[5:3],n224,1'b0,IR[5:3]}),
    .i63({1'b0,IR[5:3],n221,1'b0,IR[5:3]}),
    .i64({1'b0,IR[5:3],n229,1'b0,IR[5:3]}),
    .i65({1'b0,IR[5:3],n229,1'b0,IR[5:3]}),
    .i66({n296,n229,1'b0,IR[5:3]}),
    .i67({1'b0,IR[5:3],n229,1'b0,IR[5:3]}),
    .i68({4'b0010,n229,1'b0,IR[5:3]}),
    .i69({1'b0,IR[5:3],n229,1'b0,IR[5:3]}),
    .i7({1'b0,IR[5:3],n221,4'b1000}),
    .i70({1'b0,IR[5:3],n235,1'b0,IR[5:3]}),
    .i71({1'b0,IR[5:3],n229,1'b0,IR[5:3]}),
    .i72({1'b0,IR[5:3],n229,1'b0,IR[5:3]}),
    .i73({1'b0,IR[5:3],n229,1'b0,IR[5:3]}),
    .i74({n290,n229,1'b0,IR[5:3]}),
    .i75({1'b0,IR[5:3],n229,1'b0,IR[5:3]}),
    .i76({4'b0010,n229,1'b0,IR[5:3]}),
    .i77({1'b0,IR[5:3],n229,1'b0,IR[5:3]}),
    .i78({1'b0,IR[5:3],n235,1'b0,IR[5:3]}),
    .i79({1'b0,IR[5:3],n229,1'b0,IR[5:3]}),
    .i8({1'b0,IR[5:3],n221,1'b0,IR[5:3]}),
    .i80({1'b0,IR[5:3],n229,1'b0,IR[5:3]}),
    .i81({1'b0,IR[5:3],n229,1'b0,IR[5:3]}),
    .i82({n296,n229,1'b0,IR[5:3]}),
    .i83({1'b0,IR[5:3],n229,1'b0,IR[5:3]}),
    .i84({4'b0010,n229,1'b0,IR[5:3]}),
    .i85({1'b0,IR[5:3],n229,1'b0,IR[5:3]}),
    .i86({1'b0,IR[5:3],n235,1'b0,IR[5:3]}),
    .i87({1'b0,IR[5:3],n229,1'b0,IR[5:3]}),
    .i88({1'b0,IR[5:3],n229,1'b0,IR[5:3]}),
    .i89({1'b0,IR[5:3],n229,1'b0,IR[5:3]}),
    .i9({1'b0,IR[5:3],n221,n117}),
    .i90({n290,n229,1'b0,IR[5:3]}),
    .i91({1'b0,IR[5:3],n229,1'b0,IR[5:3]}),
    .i92({4'b0010,n229,1'b0,IR[5:3]}),
    .i93({1'b0,IR[5:3],n229,1'b0,IR[5:3]}),
    .i94({1'b0,IR[5:3],n235,1'b0,IR[5:3]}),
    .i95({1'b0,IR[5:3],n229,1'b0,IR[5:3]}),
    .i96({1'b0,IR[5:3],n229,1'b0,IR[5:3]}),
    .i97({1'b0,IR[5:3],n229,1'b0,IR[5:3]}),
    .i98({n296,n229,1'b0,IR[5:3]}),
    .i99({1'b0,IR[5:3],n229,1'b0,IR[5:3]}),
    .sel(IR),
    .o({n363,n255,n200}));  // ../../rtl/t80se/T80_MCode.vhd(1984)
  binary_mux_s2_w1 mux130 (
    .i0(n193),
    .i1(1'b0),
    .i2(1'b0),
    .i3(1'b0),
    .sel(ISet),
    .o(LDSPHL));  // ../../rtl/t80se/T80_MCode.vhd(1986)
  binary_mux_s2_w4 mux131 (
    .i0(n194),
    .i1(4'b0000),
    .i2(n362),
    .i3(n362),
    .sel(ISet),
    .o(IncDec_16));  // ../../rtl/t80se/T80_MCode.vhd(1986)
  binary_mux_s2_w1 mux132 (
    .i0(n195),
    .i1(1'b0),
    .i2(1'b0),
    .i3(1'b0),
    .sel(ISet),
    .o(ExchangeDH));  // ../../rtl/t80se/T80_MCode.vhd(1986)
  binary_mux_s2_w1 mux133 (
    .i0(n196),
    .i1(1'b0),
    .i2(1'b0),
    .i3(1'b0),
    .sel(ISet),
    .o(ExchangeAF));  // ../../rtl/t80se/T80_MCode.vhd(1986)
  binary_mux_s2_w1 mux134 (
    .i0(n197),
    .i1(1'b0),
    .i2(1'b0),
    .i3(1'b0),
    .sel(ISet),
    .o(ExchangeRS));  // ../../rtl/t80se/T80_MCode.vhd(1986)
  binary_mux_s2_w1 mux135 (
    .i0(n198),
    .i1(n256),
    .i2(n366),
    .i3(n366),
    .sel(ISet),
    .o(Save_ALU));  // ../../rtl/t80se/T80_MCode.vhd(1986)
  binary_mux_s2_w1 mux136 (
    .i0(n199),
    .i1(1'b0),
    .i2(n367),
    .i3(n367),
    .sel(ISet),
    .o(PreserveC));  // ../../rtl/t80se/T80_MCode.vhd(1986)
  binary_mux_s2_w4 mux137 (
    .i0(n200),
    .i1(n255),
    .i2(n363),
    .i3(n363),
    .sel(ISet),
    .o(ALU_Op));  // ../../rtl/t80se/T80_MCode.vhd(1986)
  binary_mux_s2_w1 mux138 (
    .i0(n201),
    .i1(1'b0),
    .i2(1'b0),
    .i3(1'b0),
    .sel(ISet),
    .o(I_CPL));  // ../../rtl/t80se/T80_MCode.vhd(1986)
  binary_mux_s2_w1 mux139 (
    .i0(n202),
    .i1(1'b0),
    .i2(1'b0),
    .i3(1'b0),
    .sel(ISet),
    .o(I_CCF));  // ../../rtl/t80se/T80_MCode.vhd(1986)
  binary_mux_s3_w1 mux14 (
    .i0(1'b0),
    .i1(1'b1),
    .i2(1'b0),
    .i3(1'b0),
    .i4(1'b1),
    .i5(1'b0),
    .i6(1'b0),
    .i7(1'b0),
    .sel(MCycle),
    .o(n97));  // ../../rtl/t80se/T80_MCode.vhd(844)
  binary_mux_s2_w1 mux140 (
    .i0(n203),
    .i1(1'b0),
    .i2(1'b0),
    .i3(1'b0),
    .sel(ISet),
    .o(I_SCF));  // ../../rtl/t80se/T80_MCode.vhd(1986)
  binary_mux_s2_w1 mux141 (
    .i0(n204),
    .i1(1'b0),
    .i2(n375),
    .i3(n375),
    .sel(ISet),
    .o(Jump));  // ../../rtl/t80se/T80_MCode.vhd(1986)
  binary_mux_s2_w1 mux142 (
    .i0(n205),
    .i1(1'b0),
    .i2(1'b0),
    .i3(1'b0),
    .sel(ISet),
    .o(Halt));  // ../../rtl/t80se/T80_MCode.vhd(1986)
  binary_mux_s2_w1 mux143 (
    .i0(n206),
    .i1(1'b0),
    .i2(1'b0),
    .i3(1'b0),
    .sel(ISet),
    .o(SetDI));  // ../../rtl/t80se/T80_MCode.vhd(1986)
  binary_mux_s2_w1 mux144 (
    .i0(n207),
    .i1(1'b0),
    .i2(1'b0),
    .i3(1'b0),
    .sel(ISet),
    .o(SetEI));  // ../../rtl/t80se/T80_MCode.vhd(1986)
  binary_mux_s2_w1 mux145 (
    .i0(n208),
    .i1(1'b0),
    .i2(n365),
    .i3(n365),
    .sel(ISet),
    .o(n383));  // ../../rtl/t80se/T80_MCode.vhd(1986)
  binary_mux_s2_w1 mux146 (
    .i0(n209),
    .i1(1'b0),
    .i2(1'b0),
    .i3(1'b0),
    .sel(ISet),
    .o(Arith16));  // ../../rtl/t80se/T80_MCode.vhd(1986)
  binary_mux_s2_w1 mux147 (
    .i0(n210),
    .i1(1'b0),
    .i2(1'b0),
    .i3(1'b0),
    .sel(ISet),
    .o(JumpE));  // ../../rtl/t80se/T80_MCode.vhd(1986)
  binary_mux_s2_w1 mux148 (
    .i0(n211),
    .i1(1'b0),
    .i2(1'b0),
    .i3(1'b0),
    .sel(ISet),
    .o(JumpXY));  // ../../rtl/t80se/T80_MCode.vhd(1986)
  binary_mux_s2_w1 mux149 (
    .i0(n212),
    .i1(1'b0),
    .i2(1'b0),
    .i3(1'b0),
    .sel(ISet),
    .o(I_DJNZ));  // ../../rtl/t80se/T80_MCode.vhd(1986)
  binary_mux_s3_w4 mux15 (
    .i0(4'b0000),
    .i1(4'b1111),
    .i2(4'b1111),
    .i3(4'b0000),
    .i4(4'b0000),
    .i5(4'b0000),
    .i6(4'b0000),
    .i7(4'b0000),
    .sel(MCycle),
    .o(n94));  // ../../rtl/t80se/T80_MCode.vhd(818)
  binary_mux_s2_w1 mux150 (
    .i0(n213),
    .i1(1'b0),
    .i2(1'b0),
    .i3(1'b0),
    .sel(ISet),
    .o(Call));  // ../../rtl/t80se/T80_MCode.vhd(1986)
  binary_mux_s2_w1 mux151 (
    .i0(n214),
    .i1(1'b0),
    .i2(1'b0),
    .i3(1'b0),
    .sel(ISet),
    .o(RstP));  // ../../rtl/t80se/T80_MCode.vhd(1986)
  binary_mux_s2_w1 mux152 (
    .i0(n215),
    .i1(1'b0),
    .i2(n376),
    .i3(n376),
    .sel(ISet),
    .o(IORQ));  // ../../rtl/t80se/T80_MCode.vhd(1986)
  binary_mux_s2_w2 mux153 (
    .i0(n216),
    .i1(2'b00),
    .i2(2'b00),
    .i3(2'b00),
    .sel(ISet),
    .o(Prefix));  // ../../rtl/t80se/T80_MCode.vhd(1986)
  binary_mux_s2_w1 mux154 (
    .i0(1'b0),
    .i1(n258),
    .i2(1'b0),
    .i3(1'b0),
    .sel(ISet),
    .o(XYbit_undoc));  // ../../rtl/t80se/T80_MCode.vhd(1986)
  binary_mux_s2_w3 mux155 (
    .i0(3'b000),
    .i1(3'b000),
    .i2({n347,n348,n349}),
    .i3({n347,n348,n349}),
    .sel(ISet),
    .o(Special_LD));  // ../../rtl/t80se/T80_MCode.vhd(1986)
  binary_mux_s2_w2 mux156 (
    .i0(2'b11),
    .i1(2'b11),
    .i2({n370,n371}),
    .i3({n370,n371}),
    .sel(ISet),
    .o(IMode));  // ../../rtl/t80se/T80_MCode.vhd(1986)
  binary_mux_s1_w3 mux157 (
    .i0(n381),
    .i1(3'b111),
    .sel(n387),
    .o(n388));  // ../../rtl/t80se/T80_MCode.vhd(2015)
  binary_mux_s1_w3 mux158 (
    .i0(n381),
    .i1(n388),
    .sel(n384),
    .o(n390));  // ../../rtl/t80se/T80_MCode.vhd(2016)
  binary_mux_s1_w3 mux159 (
    .i0(n390),
    .i1(3'b010),
    .sel(n392),
    .o(n393));  // ../../rtl/t80se/T80_MCode.vhd(2023)
  binary_mux_s3_w3 mux16 (
    .i0(3'b000),
    .i1(3'b111),
    .i2(3'b110),
    .i3(3'b000),
    .i4(3'b000),
    .i5(3'b000),
    .i6(3'b000),
    .i7(3'b000),
    .sel(MCycle),
    .o(n96));  // ../../rtl/t80se/T80_MCode.vhd(818)
  binary_mux_s1_w3 mux160 (
    .i0(n382),
    .i1(3'b101),
    .sel(n391),
    .o(TStates));  // ../../rtl/t80se/T80_MCode.vhd(2032)
  binary_mux_s1_w3 mux161 (
    .i0(n390),
    .i1(n393),
    .sel(n391),
    .o(Set_Addr_To));  // ../../rtl/t80se/T80_MCode.vhd(2032)
  binary_mux_s1_w4 mux162 (
    .i0(n379),
    .i1({1'b0,IR[2:0]}),
    .sel(n391),
    .o(Set_BusB_To));  // ../../rtl/t80se/T80_MCode.vhd(2032)
  binary_mux_s7_w2 mux163 (
    .i0(2'b01),
    .i1(2'b01),
    .i10(2'b01),
    .i100(2'b01),
    .i101(2'b01),
    .i102(2'b01),
    .i103(2'b01),
    .i104(2'b01),
    .i105(2'b01),
    .i106(2'b01),
    .i107(2'b01),
    .i108(2'b01),
    .i109(2'b01),
    .i11(2'b01),
    .i110(2'b01),
    .i111(2'b01),
    .i112(2'b01),
    .i113(2'b01),
    .i114(2'b01),
    .i115(2'b01),
    .i116(2'b01),
    .i117(2'b01),
    .i118(2'b01),
    .i119(2'b01),
    .i12(2'b01),
    .i120(2'b01),
    .i121(2'b01),
    .i122(2'b01),
    .i123(2'b01),
    .i124(2'b01),
    .i125(2'b01),
    .i126(2'b01),
    .i127(2'b01),
    .i13(2'b01),
    .i14(2'b01),
    .i15(2'b01),
    .i16(2'b01),
    .i17(2'b01),
    .i18(2'b01),
    .i19(2'b01),
    .i2(2'b01),
    .i20(2'b01),
    .i21(2'b01),
    .i22(2'b01),
    .i23(2'b01),
    .i24(2'b01),
    .i25(2'b01),
    .i26(2'b01),
    .i27(2'b01),
    .i28(2'b01),
    .i29(2'b01),
    .i3(2'b01),
    .i30(2'b01),
    .i31(2'b01),
    .i32(2'b00),
    .i33(2'b00),
    .i34(2'b01),
    .i35(2'b11),
    .i36(2'b01),
    .i37(2'b01),
    .i38(2'b01),
    .i39(2'b01),
    .i4(2'b01),
    .i40(2'b00),
    .i41(2'b00),
    .i42(2'b01),
    .i43(2'b11),
    .i44(2'b01),
    .i45(2'b01),
    .i46(2'b01),
    .i47(2'b01),
    .i48(2'b00),
    .i49(2'b00),
    .i5(2'b01),
    .i50(2'b01),
    .i51(2'b11),
    .i52(2'b01),
    .i53(2'b01),
    .i54(2'b01),
    .i55(2'b10),
    .i56(2'b00),
    .i57(2'b00),
    .i58(2'b01),
    .i59(2'b11),
    .i6(2'b01),
    .i60(2'b01),
    .i61(2'b01),
    .i62(2'b01),
    .i63(2'b01),
    .i64(2'b01),
    .i65(2'b01),
    .i66(2'b01),
    .i67(2'b01),
    .i68(2'b01),
    .i69(2'b01),
    .i7(2'b01),
    .i70(2'b01),
    .i71(2'b01),
    .i72(2'b01),
    .i73(2'b01),
    .i74(2'b01),
    .i75(2'b01),
    .i76(2'b01),
    .i77(2'b01),
    .i78(2'b01),
    .i79(2'b01),
    .i8(2'b01),
    .i80(2'b10),
    .i81(2'b10),
    .i82(2'b10),
    .i83(2'b10),
    .i84(2'b01),
    .i85(2'b01),
    .i86(2'b01),
    .i87(2'b01),
    .i88(2'b10),
    .i89(2'b10),
    .i9(2'b01),
    .i90(2'b10),
    .i91(2'b10),
    .i92(2'b01),
    .i93(2'b01),
    .i94(2'b01),
    .i95(2'b01),
    .i96(2'b01),
    .i97(2'b01),
    .i98(2'b01),
    .i99(2'b01),
    .sel({IR[7:4],IR[2:0]}),
    .o(n351));  // ../../rtl/t80se/T80_MCode.vhd(1984)
  binary_mux_s3_w1 mux17 (
    .i0(1'b0),
    .i1(1'b0),
    .i2(1'b0),
    .i3(1'b0),
    .i4(1'b0),
    .i5(1'b1),
    .i6(1'b0),
    .i7(1'b0),
    .sel(MCycle),
    .o(n157));  // ../../rtl/t80se/T80_MCode.vhd(844)
  binary_mux_s1_w3 mux18 (
    .i0({IntCycle,2'b01}),
    .i1(3'b011),
    .sel(NMICycle),
    .o(n98));  // ../../rtl/t80se/T80_MCode.vhd(847)
  binary_mux_s1_w3 mux19 (
    .i0({n0[2],n0[0],n0[0]}),
    .i1(n93),
    .sel(IntCycle),
    .o(n99));  // ../../rtl/t80se/T80_MCode.vhd(847)
  binary_mux_s2_w1 mux2 (
    .i0(1'b0),
    .i1(1'b1),
    .i2(1'b0),
    .i3(1'b0),
    .sel(MCycle[2:1]),
    .o(n39));  // ../../rtl/t80se/T80_MCode.vhd(372)
  binary_mux_s1_w3 mux20 (
    .i0(n99),
    .i1(n93),
    .sel(NMICycle),
    .o(n100));  // ../../rtl/t80se/T80_MCode.vhd(847)
  binary_mux_s1_w4 mux21 (
    .i0(4'b0000),
    .i1(n94),
    .sel(IntCycle),
    .o(n101));  // ../../rtl/t80se/T80_MCode.vhd(847)
  binary_mux_s1_w4 mux22 (
    .i0(n101),
    .i1(n94),
    .sel(NMICycle),
    .o(n102));  // ../../rtl/t80se/T80_MCode.vhd(847)
  binary_mux_s1_w3 mux23 (
    .i0(3'b111),
    .i1({1'b1,n95,1'b1}),
    .sel(IntCycle),
    .o(n103));  // ../../rtl/t80se/T80_MCode.vhd(847)
  binary_mux_s1_w3 mux24 (
    .i0(n103),
    .i1({1'b1,n95,1'b1}),
    .sel(NMICycle),
    .o(n104));  // ../../rtl/t80se/T80_MCode.vhd(847)
  binary_mux_s1_w4 mux25 (
    .i0(4'b0000),
    .i1({n96[2:1],1'b0,n96[0]}),
    .sel(IntCycle),
    .o(n105));  // ../../rtl/t80se/T80_MCode.vhd(847)
  binary_mux_s1_w4 mux26 (
    .i0(n105),
    .i1({n96[2:1],1'b0,n96[0]}),
    .sel(NMICycle),
    .o(n106));  // ../../rtl/t80se/T80_MCode.vhd(847)
  binary_mux_s3_w1 mux27 (
    .i0(n121),
    .i1(F[6]),
    .i2(n122),
    .i3(F[0]),
    .i4(n123),
    .i5(F[2]),
    .i6(n124),
    .i7(F[7]),
    .sel(IR[5:3]),
    .o(n149));  // ../../rtl/t80se/T80_MCode.vhd(188)
  binary_mux_s3_w1 mux28 (
    .i0(1'b0),
    .i1(1'b0),
    .i2(1'b0),
    .i3(n149),
    .i4(1'b0),
    .i5(1'b0),
    .i6(1'b0),
    .i7(1'b0),
    .sel(MCycle),
    .o(n125));  // ../../rtl/t80se/T80_MCode.vhd(1003)
  binary_mux_s3_w1 mux29 (
    .i0(1'b0),
    .i1(1'b1),
    .i2(1'b1),
    .i3(1'b0),
    .i4(1'b0),
    .i5(1'b0),
    .i6(1'b0),
    .i7(1'b0),
    .sel(MCycle),
    .o(n136));  // ../../rtl/t80se/T80_MCode.vhd(1113)
  binary_mux_s3_w1 mux3 (
    .i0(1'b0),
    .i1(1'b0),
    .i2(1'b0),
    .i3(1'b0),
    .i4(1'b1),
    .i5(1'b0),
    .i6(1'b0),
    .i7(1'b0),
    .sel(MCycle),
    .o(n19));  // ../../rtl/t80se/T80_MCode.vhd(372)
  binary_mux_s3_w1 mux30 (
    .i0(1'b0),
    .i1(1'b1),
    .i2(1'b0),
    .i3(1'b0),
    .i4(1'b0),
    .i5(1'b0),
    .i6(1'b0),
    .i7(1'b0),
    .sel(MCycle),
    .o(n335));  // ../../rtl/t80se/T80_MCode.vhd(1113)
  binary_mux_s1_w3 mux31 (
    .i0({n0[2],n0[0],n0[0]}),
    .i1(3'b100),
    .sel(n149),
    .o(n150));  // ../../rtl/t80se/T80_MCode.vhd(1159)
  binary_mux_s1_w16 mux32 (
    .i0({1'b0,IR[5:4],2'b00,IR[5:4],2'b10,IR[5:4],2'b00,IR[5:4],1'b1}),
    .i1(16'b1001100001111011),
    .sel(n36),
    .o({n38,n37,n47,n48}));  // ../../rtl/t80se/T80_MCode.vhd(451)
  binary_mux_s8_w9 mux33 (
    .i0({n0[2],n0[0],n0[0],n232,n100}),
    .i1({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i10({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i100({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i101({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i102({n0[2],n0[0],n0[0],n236,n0[2],n0[0],n0[0]}),
    .i103({n314,n232,n0[2],n0[0],n0[0]}),
    .i104({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i105({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i106({n293,n232,n0[2],n0[0],n0[0]}),
    .i107({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i108({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i109({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i11({n0[2],n0[0],n0[0],n232,3'b110}),
    .i110({n0[2],n0[0],n0[0],n236,n0[2],n0[0],n0[0]}),
    .i111({n307,n232,n0[2],n0[0],n0[0]}),
    .i112({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i113({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i114({n299,n232,n0[2],n0[0],n0[0]}),
    .i115({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i116({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i117({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i118({n0[2],n0[0],n0[0],n236,n0[2],n0[0],n0[0]}),
    .i119({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i12({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i120({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i121({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i122({n293,n232,n0[2],n0[0],n0[0]}),
    .i123({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i124({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i125({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i126({n0[2],n0[0],n0[0],n236,n0[2],n0[0],n0[0]}),
    .i127({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i128({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i129({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i13({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i130({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i131({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i132({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i133({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i134({n0[2],n0[0],n0[0],n254,n0[2],n0[0],n0[0]}),
    .i135({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i136({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i137({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i138({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i139({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i14({n0[2],n0[0],n0[0],n225,n0[2],n0[0],n0[0]}),
    .i140({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i141({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i142({n0[2],n0[0],n0[0],n254,n0[2],n0[0],n0[0]}),
    .i143({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i144({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i145({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i146({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i147({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i148({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i149({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i15({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i150({n0[2],n0[0],n0[0],n254,n0[2],n0[0],n0[0]}),
    .i151({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i152({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i153({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i154({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i155({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i156({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i157({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i158({n0[2],n0[0],n0[0],n254,n0[2],n0[0],n0[0]}),
    .i159({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i16({n0[2],n0[0],n0[0],n232,n135}),
    .i160({n276,n232,n0[2],n0[0],n0[0]}),
    .i161({n287,n232,n0[2],n0[0],n0[0]}),
    .i162({n328,n232,n0[2],n0[0],n0[0]}),
    .i163({n338,n232,n0[2],n0[0],n0[0]}),
    .i164({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i165({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i166({n0[2],n0[0],n0[0],n254,n0[2],n0[0],n0[0]}),
    .i167({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i168({n276,n232,n0[2],n0[0],n0[0]}),
    .i169({n287,n232,n0[2],n0[0],n0[0]}),
    .i17({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i170({n328,n232,n0[2],n0[0],n0[0]}),
    .i171({n338,n232,n0[2],n0[0],n0[0]}),
    .i172({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i173({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i174({n0[2],n0[0],n0[0],n254,n0[2],n0[0],n0[0]}),
    .i175({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i176({n276,n232,n0[2],n0[0],n0[0]}),
    .i177({n287,n232,n0[2],n0[0],n0[0]}),
    .i178({n328,n232,n0[2],n0[0],n0[0]}),
    .i179({n338,n232,n0[2],n0[0],n0[0]}),
    .i18({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i180({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i181({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i182({n0[2],n0[0],n0[0],n254,n0[2],n0[0],n0[0]}),
    .i183({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i184({n276,n232,n0[2],n0[0],n0[0]}),
    .i185({n287,n232,n0[2],n0[0],n0[0]}),
    .i186({n328,n232,n0[2],n0[0],n0[0]}),
    .i187({n338,n232,n0[2],n0[0],n0[0]}),
    .i188({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i189({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i19({n0[2],n0[0],n0[0],n232,3'b110}),
    .i190({n0[2],n0[0],n0[0],n254,n0[2],n0[0],n0[0]}),
    .i191({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i192({n0[2],n0[0],n0[0],n232,n162}),
    .i193({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i194({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i195({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i196({n0[2],n0[0],n0[0],n232,n153}),
    .i197({n0[2],n0[0],n0[0],n232,n49}),
    .i198({n0[2],n0[0],n0[0],n245,n0[2],n0[0],n0[0]}),
    .i199({n0[2],n0[0],n0[0],n232,n163}),
    .i2({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i20({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i200({n0[2],n0[0],n0[0],n232,n162}),
    .i201({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i202({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i203({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i204({n0[2],n0[0],n0[0],n232,n153}),
    .i205({n0[2],n0[0],n0[0],n232,n144}),
    .i206({n0[2],n0[0],n0[0],n245,n0[2],n0[0],n0[0]}),
    .i207({n0[2],n0[0],n0[0],n232,n163}),
    .i208({n0[2],n0[0],n0[0],n232,n162}),
    .i209({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i21({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i210({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i211({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i212({n0[2],n0[0],n0[0],n232,n153}),
    .i213({n0[2],n0[0],n0[0],n232,n49}),
    .i214({n0[2],n0[0],n0[0],n245,n0[2],n0[0],n0[0]}),
    .i215({n0[2],n0[0],n0[0],n232,n163}),
    .i216({n0[2],n0[0],n0[0],n232,n162}),
    .i217({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i218({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i219({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i22({n0[2],n0[0],n0[0],n225,n0[2],n0[0],n0[0]}),
    .i220({n0[2],n0[0],n0[0],n232,n153}),
    .i221({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i222({n0[2],n0[0],n0[0],n245,n0[2],n0[0],n0[0]}),
    .i223({n0[2],n0[0],n0[0],n232,n163}),
    .i224({n0[2],n0[0],n0[0],n232,n162}),
    .i225({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i226({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i227({n0[2],n0[0],n0[0],n232,n69}),
    .i228({n0[2],n0[0],n0[0],n232,n153}),
    .i229({n0[2],n0[0],n0[0],n232,n49}),
    .i23({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i230({n0[2],n0[0],n0[0],n245,n0[2],n0[0],n0[0]}),
    .i231({n0[2],n0[0],n0[0],n232,n163}),
    .i232({n0[2],n0[0],n0[0],n232,n162}),
    .i233({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i234({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i235({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i236({n0[2],n0[0],n0[0],n232,n153}),
    .i237({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i238({n0[2],n0[0],n0[0],n245,n0[2],n0[0],n0[0]}),
    .i239({n0[2],n0[0],n0[0],n232,n163}),
    .i24({n0[2],n0[0],n0[0],n232,n126}),
    .i240({n0[2],n0[0],n0[0],n232,n162}),
    .i241({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i242({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i243({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i244({n0[2],n0[0],n0[0],n232,n153}),
    .i245({n0[2],n0[0],n0[0],n232,n49}),
    .i246({n0[2],n0[0],n0[0],n245,n0[2],n0[0],n0[0]}),
    .i247({n0[2],n0[0],n0[0],n232,n163}),
    .i248({n0[2],n0[0],n0[0],n232,n162}),
    .i249({n0[2],n0[0],n0[0],n232,3'b110}),
    .i25({n0[2],n0[0],n0[0],n232,n120}),
    .i250({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i251({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i252({n0[2],n0[0],n0[0],n232,n153}),
    .i253({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i254({n0[2],n0[0],n0[0],n245,n0[2],n0[0],n0[0]}),
    .i255({n0[2],n0[0],n0[0],n232,n163}),
    .i26({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i27({n0[2],n0[0],n0[0],n232,3'b110}),
    .i28({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i29({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i3({n0[2],n0[0],n0[0],n232,3'b110}),
    .i30({n0[2],n0[0],n0[0],n225,n0[2],n0[0],n0[0]}),
    .i31({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i32({n0[2],n0[0],n0[0],n232,n134}),
    .i33({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i34({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i35({n0[2],n0[0],n0[0],n232,3'b110}),
    .i36({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i37({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i38({n0[2],n0[0],n0[0],n225,n0[2],n0[0],n0[0]}),
    .i39({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i4({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i40({n0[2],n0[0],n0[0],n232,n132}),
    .i41({n0[2],n0[0],n0[0],n232,n120}),
    .i42({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i43({n0[2],n0[0],n0[0],n232,3'b110}),
    .i44({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i45({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i46({n0[2],n0[0],n0[0],n225,n0[2],n0[0],n0[0]}),
    .i47({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i48({n0[2],n0[0],n0[0],n232,n130}),
    .i49({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i5({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i50({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i51({n0[2],n0[0],n0[0],n232,3'b110}),
    .i52({n0[2],n0[0],n0[0],n232,n81}),
    .i53({n0[2],n0[0],n0[0],n232,n88}),
    .i54({n0[2],n0[0],n0[0],n225,n0[2],n0[0],n0[0]}),
    .i55({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i56({n0[2],n0[0],n0[0],n232,n128}),
    .i57({n0[2],n0[0],n0[0],n232,n120}),
    .i58({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i59({n0[2],n0[0],n0[0],n232,3'b110}),
    .i6({n0[2],n0[0],n0[0],n225,n0[2],n0[0],n0[0]}),
    .i60({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i61({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i62({n0[2],n0[0],n0[0],n225,n0[2],n0[0],n0[0]}),
    .i63({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i64({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i65({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i66({n299,n232,n0[2],n0[0],n0[0]}),
    .i67({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i68({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i69({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i7({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i70({n0[2],n0[0],n0[0],n236,n0[2],n0[0],n0[0]}),
    .i71({3'b101,n232,n0[2],n0[0],n0[0]}),
    .i72({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i73({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i74({n293,n232,n0[2],n0[0],n0[0]}),
    .i75({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i76({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i77({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i78({n0[2],n0[0],n0[0],n236,n0[2],n0[0],n0[0]}),
    .i79({3'b101,n232,n0[2],n0[0],n0[0]}),
    .i8({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i80({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i81({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i82({n299,n232,n0[2],n0[0],n0[0]}),
    .i83({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i84({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i85({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i86({n0[2],n0[0],n0[0],n236,n0[2],n0[0],n0[0]}),
    .i87({3'b101,n232,n0[2],n0[0],n0[0]}),
    .i88({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i89({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i9({n0[2],n0[0],n0[0],n232,n120}),
    .i90({n293,n232,n0[2],n0[0],n0[0]}),
    .i91({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i92({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i93({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i94({n0[2],n0[0],n0[0],n236,n0[2],n0[0],n0[0]}),
    .i95({3'b101,n232,n0[2],n0[0],n0[0]}),
    .i96({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i97({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .i98({n299,n232,n0[2],n0[0],n0[0]}),
    .i99({n0[2],n0[0],n0[0],n232,n0[2],n0[0],n0[0]}),
    .sel(IR),
    .o({n350,n260,n192}));  // ../../rtl/t80se/T80_MCode.vhd(1984)
  binary_mux_s8_w2 mux34 (
    .i0(2'b00),
    .i1(2'b00),
    .i10(2'b00),
    .i100(2'b00),
    .i101(2'b00),
    .i102(2'b00),
    .i103(2'b00),
    .i104(2'b00),
    .i105(2'b00),
    .i106(2'b00),
    .i107(2'b00),
    .i108(2'b00),
    .i109(2'b00),
    .i11(2'b00),
    .i110(2'b00),
    .i111(2'b00),
    .i112(2'b00),
    .i113(2'b00),
    .i114(2'b00),
    .i115(2'b00),
    .i116(2'b00),
    .i117(2'b00),
    .i118(2'b00),
    .i119(2'b00),
    .i12(2'b00),
    .i120(2'b00),
    .i121(2'b00),
    .i122(2'b00),
    .i123(2'b00),
    .i124(2'b00),
    .i125(2'b00),
    .i126(2'b00),
    .i127(2'b00),
    .i128(2'b00),
    .i129(2'b00),
    .i13(2'b00),
    .i130(2'b00),
    .i131(2'b00),
    .i132(2'b00),
    .i133(2'b00),
    .i134(2'b00),
    .i135(2'b00),
    .i136(2'b00),
    .i137(2'b00),
    .i138(2'b00),
    .i139(2'b00),
    .i14(2'b00),
    .i140(2'b00),
    .i141(2'b00),
    .i142(2'b00),
    .i143(2'b00),
    .i144(2'b00),
    .i145(2'b00),
    .i146(2'b00),
    .i147(2'b00),
    .i148(2'b00),
    .i149(2'b00),
    .i15(2'b00),
    .i150(2'b00),
    .i151(2'b00),
    .i152(2'b00),
    .i153(2'b00),
    .i154(2'b00),
    .i155(2'b00),
    .i156(2'b00),
    .i157(2'b00),
    .i158(2'b00),
    .i159(2'b00),
    .i16(2'b00),
    .i160(2'b00),
    .i161(2'b00),
    .i162(2'b00),
    .i163(2'b00),
    .i164(2'b00),
    .i165(2'b00),
    .i166(2'b00),
    .i167(2'b00),
    .i168(2'b00),
    .i169(2'b00),
    .i17(2'b00),
    .i170(2'b00),
    .i171(2'b00),
    .i172(2'b00),
    .i173(2'b00),
    .i174(2'b00),
    .i175(2'b00),
    .i176(2'b00),
    .i177(2'b00),
    .i178(2'b00),
    .i179(2'b00),
    .i18(2'b00),
    .i180(2'b00),
    .i181(2'b00),
    .i182(2'b00),
    .i183(2'b00),
    .i184(2'b00),
    .i185(2'b00),
    .i186(2'b00),
    .i187(2'b00),
    .i188(2'b00),
    .i189(2'b00),
    .i19(2'b00),
    .i190(2'b00),
    .i191(2'b00),
    .i192(2'b00),
    .i193(2'b00),
    .i194(2'b00),
    .i195(2'b00),
    .i196(2'b00),
    .i197(2'b00),
    .i198(2'b00),
    .i199(2'b00),
    .i2(2'b00),
    .i20(2'b00),
    .i200(2'b00),
    .i201(2'b00),
    .i202(2'b00),
    .i203(2'b01),
    .i204(2'b00),
    .i205(2'b00),
    .i206(2'b00),
    .i207(2'b00),
    .i208(2'b00),
    .i209(2'b00),
    .i21(2'b00),
    .i210(2'b00),
    .i211(2'b00),
    .i212(2'b00),
    .i213(2'b00),
    .i214(2'b00),
    .i215(2'b00),
    .i216(2'b00),
    .i217(2'b00),
    .i218(2'b00),
    .i219(2'b00),
    .i22(2'b00),
    .i220(2'b00),
    .i221(2'b11),
    .i222(2'b00),
    .i223(2'b00),
    .i224(2'b00),
    .i225(2'b00),
    .i226(2'b00),
    .i227(2'b00),
    .i228(2'b00),
    .i229(2'b00),
    .i23(2'b00),
    .i230(2'b00),
    .i231(2'b00),
    .i232(2'b00),
    .i233(2'b00),
    .i234(2'b00),
    .i235(2'b00),
    .i236(2'b00),
    .i237(2'b10),
    .i238(2'b00),
    .i239(2'b00),
    .i24(2'b00),
    .i240(2'b00),
    .i241(2'b00),
    .i242(2'b00),
    .i243(2'b00),
    .i244(2'b00),
    .i245(2'b00),
    .i246(2'b00),
    .i247(2'b00),
    .i248(2'b00),
    .i249(2'b00),
    .i25(2'b00),
    .i250(2'b00),
    .i251(2'b00),
    .i252(2'b00),
    .i253(2'b11),
    .i254(2'b00),
    .i255(2'b00),
    .i26(2'b00),
    .i27(2'b00),
    .i28(2'b00),
    .i29(2'b00),
    .i3(2'b00),
    .i30(2'b00),
    .i31(2'b00),
    .i32(2'b00),
    .i33(2'b00),
    .i34(2'b00),
    .i35(2'b00),
    .i36(2'b00),
    .i37(2'b00),
    .i38(2'b00),
    .i39(2'b00),
    .i4(2'b00),
    .i40(2'b00),
    .i41(2'b00),
    .i42(2'b00),
    .i43(2'b00),
    .i44(2'b00),
    .i45(2'b00),
    .i46(2'b00),
    .i47(2'b00),
    .i48(2'b00),
    .i49(2'b00),
    .i5(2'b00),
    .i50(2'b00),
    .i51(2'b00),
    .i52(2'b00),
    .i53(2'b00),
    .i54(2'b00),
    .i55(2'b00),
    .i56(2'b00),
    .i57(2'b00),
    .i58(2'b00),
    .i59(2'b00),
    .i6(2'b00),
    .i60(2'b00),
    .i61(2'b00),
    .i62(2'b00),
    .i63(2'b00),
    .i64(2'b00),
    .i65(2'b00),
    .i66(2'b00),
    .i67(2'b00),
    .i68(2'b00),
    .i69(2'b00),
    .i7(2'b00),
    .i70(2'b00),
    .i71(2'b00),
    .i72(2'b00),
    .i73(2'b00),
    .i74(2'b00),
    .i75(2'b00),
    .i76(2'b00),
    .i77(2'b00),
    .i78(2'b00),
    .i79(2'b00),
    .i8(2'b00),
    .i80(2'b00),
    .i81(2'b00),
    .i82(2'b00),
    .i83(2'b00),
    .i84(2'b00),
    .i85(2'b00),
    .i86(2'b00),
    .i87(2'b00),
    .i88(2'b00),
    .i89(2'b00),
    .i9(2'b00),
    .i90(2'b00),
    .i91(2'b00),
    .i92(2'b00),
    .i93(2'b00),
    .i94(2'b00),
    .i95(2'b00),
    .i96(2'b00),
    .i97(2'b00),
    .i98(2'b00),
    .i99(2'b00),
    .sel(IR),
    .o(n216));  // ../../rtl/t80se/T80_MCode.vhd(1348)
  binary_mux_s2_w12 mux35 (
    .i0(12'b000000000000),
    .i1(12'b111111111111),
    .i2(12'b000000000000),
    .i3(12'b000000000000),
    .sel(MCycle[2:1]),
    .o(n57));  // ../../rtl/t80se/T80_MCode.vhd(1274)
  binary_mux_s2_w4 mux36 (
    .i0(4'b1111),
    .i1(4'b0000),
    .i2(4'b1111),
    .i3(4'b1111),
    .sel({MCycle[2],MCycle[0]}),
    .o(n300));  // ../../rtl/t80se/T80_MCode.vhd(1850)
  binary_mux_s2_w24 mux37 (
    .i0({1'b0,IR[5:4],2'b00,IR[5:4],2'b00,IR[5:4],2'b00,IR[5:4],2'b10,IR[5:4],2'b10,IR[5:4],1'b1}),
    .i1({1'b0,IR[5:4],2'b00,IR[5:4],2'b00,IR[5:4],2'b00,IR[5:4],2'b10,IR[5:4],2'b10,IR[5:4],1'b1}),
    .i2({1'b0,IR[5:4],2'b00,IR[5:4],2'b00,IR[5:4],2'b00,IR[5:4],2'b10,IR[5:4],2'b10,IR[5:4],1'b1}),
    .i3(24'b100110011001100010001000),
    .sel(IR[5:4]),
    .o({n289,n295,n116,n288,n294,n115}));  // ../../rtl/t80se/T80_MCode.vhd(1794)
  binary_mux_s8_w1 mux38 (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b0),
    .i100(1'b1),
    .i101(1'b1),
    .i102(1'b0),
    .i103(1'b1),
    .i104(1'b1),
    .i105(1'b1),
    .i106(1'b1),
    .i107(1'b1),
    .i108(1'b1),
    .i109(1'b1),
    .i11(1'b0),
    .i110(1'b0),
    .i111(1'b1),
    .i112(1'b0),
    .i113(1'b0),
    .i114(1'b0),
    .i115(1'b0),
    .i116(1'b0),
    .i117(1'b0),
    .i118(1'b0),
    .i119(1'b0),
    .i12(1'b0),
    .i120(1'b1),
    .i121(1'b1),
    .i122(1'b1),
    .i123(1'b1),
    .i124(1'b1),
    .i125(1'b1),
    .i126(1'b0),
    .i127(1'b1),
    .i128(1'b0),
    .i129(1'b0),
    .i13(1'b0),
    .i130(1'b0),
    .i131(1'b0),
    .i132(1'b0),
    .i133(1'b0),
    .i134(1'b0),
    .i135(1'b0),
    .i136(1'b0),
    .i137(1'b0),
    .i138(1'b0),
    .i139(1'b0),
    .i14(1'b0),
    .i140(1'b0),
    .i141(1'b0),
    .i142(1'b0),
    .i143(1'b0),
    .i144(1'b0),
    .i145(1'b0),
    .i146(1'b0),
    .i147(1'b0),
    .i148(1'b0),
    .i149(1'b0),
    .i15(1'b0),
    .i150(1'b0),
    .i151(1'b0),
    .i152(1'b0),
    .i153(1'b0),
    .i154(1'b0),
    .i155(1'b0),
    .i156(1'b0),
    .i157(1'b0),
    .i158(1'b0),
    .i159(1'b0),
    .i16(1'b0),
    .i160(1'b0),
    .i161(1'b0),
    .i162(1'b0),
    .i163(1'b0),
    .i164(1'b0),
    .i165(1'b0),
    .i166(1'b0),
    .i167(1'b0),
    .i168(1'b0),
    .i169(1'b0),
    .i17(1'b0),
    .i170(1'b0),
    .i171(1'b0),
    .i172(1'b0),
    .i173(1'b0),
    .i174(1'b0),
    .i175(1'b0),
    .i176(1'b0),
    .i177(1'b0),
    .i178(1'b0),
    .i179(1'b0),
    .i18(1'b0),
    .i180(1'b0),
    .i181(1'b0),
    .i182(1'b0),
    .i183(1'b0),
    .i184(1'b0),
    .i185(1'b0),
    .i186(1'b0),
    .i187(1'b0),
    .i188(1'b0),
    .i189(1'b0),
    .i19(1'b0),
    .i190(1'b0),
    .i191(1'b0),
    .i192(1'b0),
    .i193(1'b0),
    .i194(1'b0),
    .i195(1'b0),
    .i196(1'b0),
    .i197(1'b0),
    .i198(1'b0),
    .i199(1'b0),
    .i2(1'b0),
    .i20(1'b0),
    .i200(1'b0),
    .i201(1'b0),
    .i202(1'b0),
    .i203(1'b0),
    .i204(1'b0),
    .i205(1'b0),
    .i206(1'b0),
    .i207(1'b0),
    .i208(1'b0),
    .i209(1'b0),
    .i21(1'b0),
    .i210(1'b0),
    .i211(1'b0),
    .i212(1'b0),
    .i213(1'b0),
    .i214(1'b0),
    .i215(1'b0),
    .i216(1'b0),
    .i217(1'b0),
    .i218(1'b0),
    .i219(1'b0),
    .i22(1'b0),
    .i220(1'b0),
    .i221(1'b0),
    .i222(1'b0),
    .i223(1'b0),
    .i224(1'b0),
    .i225(1'b0),
    .i226(1'b0),
    .i227(1'b0),
    .i228(1'b0),
    .i229(1'b0),
    .i23(1'b0),
    .i230(1'b0),
    .i231(1'b0),
    .i232(1'b0),
    .i233(1'b0),
    .i234(1'b0),
    .i235(1'b0),
    .i236(1'b0),
    .i237(1'b0),
    .i238(1'b0),
    .i239(1'b0),
    .i24(1'b0),
    .i240(1'b0),
    .i241(1'b0),
    .i242(1'b0),
    .i243(1'b0),
    .i244(1'b0),
    .i245(1'b0),
    .i246(1'b0),
    .i247(1'b0),
    .i248(1'b0),
    .i249(1'b0),
    .i25(1'b0),
    .i250(1'b0),
    .i251(1'b0),
    .i252(1'b0),
    .i253(1'b0),
    .i254(1'b0),
    .i255(1'b0),
    .i26(1'b0),
    .i27(1'b0),
    .i28(1'b0),
    .i29(1'b0),
    .i3(1'b0),
    .i30(1'b0),
    .i31(1'b0),
    .i32(1'b0),
    .i33(1'b0),
    .i34(1'b0),
    .i35(1'b0),
    .i36(1'b0),
    .i37(1'b0),
    .i38(1'b0),
    .i39(1'b0),
    .i4(1'b0),
    .i40(1'b0),
    .i41(1'b0),
    .i42(1'b0),
    .i43(1'b0),
    .i44(1'b0),
    .i45(1'b0),
    .i46(1'b0),
    .i47(1'b0),
    .i48(1'b0),
    .i49(1'b0),
    .i5(1'b0),
    .i50(1'b0),
    .i51(1'b0),
    .i52(1'b0),
    .i53(1'b0),
    .i54(1'b0),
    .i55(1'b0),
    .i56(1'b0),
    .i57(1'b0),
    .i58(1'b0),
    .i59(1'b0),
    .i6(1'b0),
    .i60(1'b0),
    .i61(1'b0),
    .i62(1'b0),
    .i63(1'b0),
    .i64(1'b1),
    .i65(1'b1),
    .i66(1'b1),
    .i67(1'b1),
    .i68(1'b1),
    .i69(1'b1),
    .i7(1'b0),
    .i70(1'b0),
    .i71(1'b1),
    .i72(1'b1),
    .i73(1'b1),
    .i74(1'b1),
    .i75(1'b1),
    .i76(1'b1),
    .i77(1'b1),
    .i78(1'b0),
    .i79(1'b1),
    .i8(1'b0),
    .i80(1'b1),
    .i81(1'b1),
    .i82(1'b1),
    .i83(1'b1),
    .i84(1'b1),
    .i85(1'b1),
    .i86(1'b0),
    .i87(1'b1),
    .i88(1'b1),
    .i89(1'b1),
    .i9(1'b0),
    .i90(1'b1),
    .i91(1'b1),
    .i92(1'b1),
    .i93(1'b1),
    .i94(1'b0),
    .i95(1'b1),
    .i96(1'b1),
    .i97(1'b1),
    .i98(1'b1),
    .i99(1'b1),
    .sel(IR),
    .o(n180));  // ../../rtl/t80se/T80_MCode.vhd(1348)
  binary_mux_s8_w1 mux39 (
    .i0(1'b0),
    .i1(n39),
    .i10(1'b0),
    .i100(1'b1),
    .i101(1'b1),
    .i102(n1),
    .i103(1'b1),
    .i104(1'b1),
    .i105(1'b1),
    .i106(1'b1),
    .i107(1'b1),
    .i108(1'b1),
    .i109(1'b1),
    .i11(1'b0),
    .i110(n1),
    .i111(1'b1),
    .i112(1'b0),
    .i113(1'b0),
    .i114(1'b0),
    .i115(1'b0),
    .i116(1'b0),
    .i117(1'b0),
    .i118(1'b0),
    .i119(1'b0),
    .i12(1'b1),
    .i120(1'b1),
    .i121(1'b1),
    .i122(1'b1),
    .i123(1'b1),
    .i124(1'b1),
    .i125(1'b1),
    .i126(n1),
    .i127(1'b1),
    .i128(1'b1),
    .i129(1'b1),
    .i13(1'b1),
    .i130(1'b1),
    .i131(1'b1),
    .i132(1'b1),
    .i133(1'b1),
    .i134(n1),
    .i135(1'b1),
    .i136(1'b1),
    .i137(1'b1),
    .i138(1'b1),
    .i139(1'b1),
    .i14(n1),
    .i140(1'b1),
    .i141(1'b1),
    .i142(n1),
    .i143(1'b1),
    .i144(1'b1),
    .i145(1'b1),
    .i146(1'b1),
    .i147(1'b1),
    .i148(1'b1),
    .i149(1'b1),
    .i15(1'b1),
    .i150(n1),
    .i151(1'b1),
    .i152(1'b1),
    .i153(1'b1),
    .i154(1'b1),
    .i155(1'b1),
    .i156(1'b1),
    .i157(1'b1),
    .i158(n1),
    .i159(1'b1),
    .i16(n335),
    .i160(1'b1),
    .i161(1'b1),
    .i162(1'b1),
    .i163(1'b1),
    .i164(1'b1),
    .i165(1'b1),
    .i166(n1),
    .i167(1'b1),
    .i168(1'b1),
    .i169(1'b1),
    .i17(n39),
    .i170(1'b1),
    .i171(1'b1),
    .i172(1'b1),
    .i173(1'b1),
    .i174(n1),
    .i175(1'b1),
    .i176(1'b1),
    .i177(1'b1),
    .i178(1'b1),
    .i179(1'b1),
    .i18(1'b0),
    .i180(1'b1),
    .i181(1'b1),
    .i182(n1),
    .i183(1'b1),
    .i184(1'b1),
    .i185(1'b1),
    .i186(1'b1),
    .i187(1'b1),
    .i188(1'b1),
    .i189(1'b1),
    .i19(1'b0),
    .i190(n1),
    .i191(1'b1),
    .i192(1'b0),
    .i193(n39),
    .i194(1'b0),
    .i195(1'b0),
    .i196(1'b0),
    .i197(1'b0),
    .i198(n77),
    .i199(1'b0),
    .i2(1'b0),
    .i20(1'b1),
    .i200(1'b0),
    .i201(1'b0),
    .i202(1'b0),
    .i203(1'b0),
    .i204(1'b0),
    .i205(1'b0),
    .i206(n77),
    .i207(1'b0),
    .i208(1'b0),
    .i209(n39),
    .i21(1'b1),
    .i210(1'b0),
    .i211(1'b0),
    .i212(1'b0),
    .i213(1'b0),
    .i214(n77),
    .i215(1'b0),
    .i216(1'b0),
    .i217(1'b0),
    .i218(1'b0),
    .i219(1'b0),
    .i22(n1),
    .i220(1'b0),
    .i221(1'b0),
    .i222(n77),
    .i223(1'b0),
    .i224(1'b0),
    .i225(n39),
    .i226(1'b0),
    .i227(n60),
    .i228(1'b0),
    .i229(1'b0),
    .i23(1'b1),
    .i230(n77),
    .i231(1'b0),
    .i232(1'b0),
    .i233(1'b0),
    .i234(1'b0),
    .i235(1'b0),
    .i236(1'b0),
    .i237(1'b0),
    .i238(n77),
    .i239(1'b0),
    .i24(1'b0),
    .i240(1'b0),
    .i241(n39),
    .i242(1'b0),
    .i243(1'b0),
    .i244(1'b0),
    .i245(1'b0),
    .i246(n77),
    .i247(1'b0),
    .i248(1'b0),
    .i249(1'b0),
    .i25(n39),
    .i250(1'b0),
    .i251(1'b0),
    .i252(1'b0),
    .i253(1'b0),
    .i254(n77),
    .i255(1'b0),
    .i26(1'b0),
    .i27(1'b0),
    .i28(1'b1),
    .i29(1'b1),
    .i3(1'b0),
    .i30(n1),
    .i31(1'b1),
    .i32(1'b0),
    .i33(n39),
    .i34(1'b0),
    .i35(1'b0),
    .i36(1'b1),
    .i37(1'b1),
    .i38(n1),
    .i39(1'b1),
    .i4(1'b1),
    .i40(1'b0),
    .i41(n39),
    .i42(n156),
    .i43(1'b0),
    .i44(1'b1),
    .i45(1'b1),
    .i46(n1),
    .i47(1'b0),
    .i48(1'b0),
    .i49(n39),
    .i5(1'b1),
    .i50(1'b0),
    .i51(1'b0),
    .i52(n1),
    .i53(n1),
    .i54(1'b0),
    .i55(1'b0),
    .i56(1'b0),
    .i57(n39),
    .i58(1'b0),
    .i59(1'b0),
    .i6(n1),
    .i60(1'b1),
    .i61(1'b1),
    .i62(n1),
    .i63(1'b0),
    .i64(1'b1),
    .i65(1'b1),
    .i66(1'b1),
    .i67(1'b1),
    .i68(1'b1),
    .i69(1'b1),
    .i7(1'b1),
    .i70(n1),
    .i71(1'b1),
    .i72(1'b1),
    .i73(1'b1),
    .i74(1'b1),
    .i75(1'b1),
    .i76(1'b1),
    .i77(1'b1),
    .i78(n1),
    .i79(1'b1),
    .i8(1'b0),
    .i80(1'b1),
    .i81(1'b1),
    .i82(1'b1),
    .i83(1'b1),
    .i84(1'b1),
    .i85(1'b1),
    .i86(n1),
    .i87(1'b1),
    .i88(1'b1),
    .i89(1'b1),
    .i9(n39),
    .i90(1'b1),
    .i91(1'b1),
    .i92(1'b1),
    .i93(1'b1),
    .i94(n1),
    .i95(1'b1),
    .i96(1'b1),
    .i97(1'b1),
    .i98(1'b1),
    .i99(1'b1),
    .sel(IR),
    .o(n182));  // ../../rtl/t80se/T80_MCode.vhd(1348)
  binary_mux_s1_w16 mux4 (
    .i0({n238,n247,n228,n219}),
    .i1({n237,n246,n226,n217}),
    .sel(n230[0]),
    .o({n239,n248,n229,n221}));  // ../../rtl/t80se/T80_MCode.vhd(1497)
  binary_mux_s8_w1 mux40 (
    .i0(n112),
    .i1(n39),
    .i10(1'b0),
    .i100(1'b0),
    .i101(1'b0),
    .i102(1'b0),
    .i103(1'b0),
    .i104(1'b0),
    .i105(1'b0),
    .i106(1'b0),
    .i107(1'b0),
    .i108(1'b0),
    .i109(1'b0),
    .i11(1'b0),
    .i110(1'b0),
    .i111(1'b0),
    .i112(1'b0),
    .i113(1'b0),
    .i114(1'b0),
    .i115(1'b0),
    .i116(1'b0),
    .i117(1'b0),
    .i118(1'b0),
    .i119(1'b0),
    .i12(1'b0),
    .i120(1'b0),
    .i121(1'b0),
    .i122(1'b0),
    .i123(1'b0),
    .i124(1'b0),
    .i125(1'b0),
    .i126(1'b0),
    .i127(1'b0),
    .i128(1'b0),
    .i129(1'b0),
    .i13(1'b0),
    .i130(1'b0),
    .i131(1'b0),
    .i132(1'b0),
    .i133(1'b0),
    .i134(1'b0),
    .i135(1'b0),
    .i136(1'b0),
    .i137(1'b0),
    .i138(1'b0),
    .i139(1'b0),
    .i14(n1),
    .i140(1'b0),
    .i141(1'b0),
    .i142(1'b0),
    .i143(1'b0),
    .i144(1'b0),
    .i145(1'b0),
    .i146(1'b0),
    .i147(1'b0),
    .i148(1'b0),
    .i149(1'b0),
    .i15(1'b0),
    .i150(1'b0),
    .i151(1'b0),
    .i152(1'b0),
    .i153(1'b0),
    .i154(1'b0),
    .i155(1'b0),
    .i156(1'b0),
    .i157(1'b0),
    .i158(1'b0),
    .i159(1'b0),
    .i16(n1),
    .i160(1'b0),
    .i161(1'b0),
    .i162(1'b0),
    .i163(1'b0),
    .i164(1'b0),
    .i165(1'b0),
    .i166(1'b0),
    .i167(1'b0),
    .i168(1'b0),
    .i169(1'b0),
    .i17(n39),
    .i170(1'b0),
    .i171(1'b0),
    .i172(1'b0),
    .i173(1'b0),
    .i174(1'b0),
    .i175(1'b0),
    .i176(1'b0),
    .i177(1'b0),
    .i178(1'b0),
    .i179(1'b0),
    .i18(1'b0),
    .i180(1'b0),
    .i181(1'b0),
    .i182(1'b0),
    .i183(1'b0),
    .i184(1'b0),
    .i185(1'b0),
    .i186(1'b0),
    .i187(1'b0),
    .i188(1'b0),
    .i189(1'b0),
    .i19(1'b0),
    .i190(1'b0),
    .i191(1'b0),
    .i192(1'b0),
    .i193(1'b0),
    .i194(n39),
    .i195(n39),
    .i196(n39),
    .i197(1'b0),
    .i198(n77),
    .i199(1'b0),
    .i2(1'b0),
    .i20(1'b0),
    .i200(1'b0),
    .i201(1'b0),
    .i202(n39),
    .i203(1'b0),
    .i204(n39),
    .i205(n39),
    .i206(n77),
    .i207(1'b0),
    .i208(1'b0),
    .i209(1'b0),
    .i21(1'b0),
    .i210(n39),
    .i211(n1),
    .i212(n39),
    .i213(1'b0),
    .i214(n77),
    .i215(1'b0),
    .i216(1'b0),
    .i217(1'b0),
    .i218(n39),
    .i219(n1),
    .i22(n1),
    .i220(n39),
    .i221(1'b0),
    .i222(n77),
    .i223(1'b0),
    .i224(1'b0),
    .i225(1'b0),
    .i226(n39),
    .i227(1'b0),
    .i228(n39),
    .i229(1'b0),
    .i23(1'b0),
    .i230(n77),
    .i231(1'b0),
    .i232(1'b0),
    .i233(1'b0),
    .i234(n39),
    .i235(1'b0),
    .i236(n39),
    .i237(1'b0),
    .i238(n77),
    .i239(1'b0),
    .i24(n1),
    .i240(1'b0),
    .i241(1'b0),
    .i242(n39),
    .i243(1'b0),
    .i244(n39),
    .i245(1'b0),
    .i246(n77),
    .i247(1'b0),
    .i248(1'b0),
    .i249(1'b0),
    .i25(1'b0),
    .i250(n39),
    .i251(1'b0),
    .i252(n39),
    .i253(1'b0),
    .i254(n77),
    .i255(1'b0),
    .i26(1'b0),
    .i27(1'b0),
    .i28(1'b0),
    .i29(1'b0),
    .i3(1'b0),
    .i30(n1),
    .i31(1'b0),
    .i32(n1),
    .i33(n39),
    .i34(n39),
    .i35(1'b0),
    .i36(1'b0),
    .i37(1'b0),
    .i38(n1),
    .i39(1'b0),
    .i4(1'b0),
    .i40(n1),
    .i41(1'b0),
    .i42(n39),
    .i43(1'b0),
    .i44(1'b0),
    .i45(1'b0),
    .i46(n1),
    .i47(1'b0),
    .i48(n1),
    .i49(n39),
    .i5(1'b0),
    .i50(n39),
    .i51(1'b0),
    .i52(1'b0),
    .i53(1'b0),
    .i54(n1),
    .i55(1'b0),
    .i56(n1),
    .i57(1'b0),
    .i58(n39),
    .i59(1'b0),
    .i6(n1),
    .i60(1'b0),
    .i61(1'b0),
    .i62(n1),
    .i63(1'b0),
    .i64(1'b0),
    .i65(1'b0),
    .i66(1'b0),
    .i67(1'b0),
    .i68(1'b0),
    .i69(1'b0),
    .i7(1'b0),
    .i70(1'b0),
    .i71(1'b0),
    .i72(1'b0),
    .i73(1'b0),
    .i74(1'b0),
    .i75(1'b0),
    .i76(1'b0),
    .i77(1'b0),
    .i78(1'b0),
    .i79(1'b0),
    .i8(1'b0),
    .i80(1'b0),
    .i81(1'b0),
    .i82(1'b0),
    .i83(1'b0),
    .i84(1'b0),
    .i85(1'b0),
    .i86(1'b0),
    .i87(1'b0),
    .i88(1'b0),
    .i89(1'b0),
    .i9(1'b0),
    .i90(1'b0),
    .i91(1'b0),
    .i92(1'b0),
    .i93(1'b0),
    .i94(1'b0),
    .i95(1'b0),
    .i96(1'b0),
    .i97(1'b0),
    .i98(1'b0),
    .i99(1'b0),
    .sel(IR),
    .o(n184));  // ../../rtl/t80se/T80_MCode.vhd(1348)
  binary_mux_s8_w1 mux41 (
    .i0(n108),
    .i1(1'b0),
    .i10(1'b0),
    .i100(1'b0),
    .i101(1'b0),
    .i102(1'b0),
    .i103(1'b0),
    .i104(1'b0),
    .i105(1'b0),
    .i106(1'b0),
    .i107(1'b0),
    .i108(1'b0),
    .i109(1'b0),
    .i11(1'b0),
    .i110(1'b0),
    .i111(1'b0),
    .i112(n1),
    .i113(n1),
    .i114(n1),
    .i115(n1),
    .i116(n1),
    .i117(n1),
    .i118(1'b0),
    .i119(n1),
    .i12(1'b0),
    .i120(1'b0),
    .i121(1'b0),
    .i122(1'b0),
    .i123(1'b0),
    .i124(1'b0),
    .i125(1'b0),
    .i126(1'b0),
    .i127(1'b0),
    .i128(1'b0),
    .i129(1'b0),
    .i13(1'b0),
    .i130(1'b0),
    .i131(1'b0),
    .i132(1'b0),
    .i133(1'b0),
    .i134(1'b0),
    .i135(1'b0),
    .i136(1'b0),
    .i137(1'b0),
    .i138(1'b0),
    .i139(1'b0),
    .i14(1'b0),
    .i140(1'b0),
    .i141(1'b0),
    .i142(1'b0),
    .i143(1'b0),
    .i144(1'b0),
    .i145(1'b0),
    .i146(1'b0),
    .i147(1'b0),
    .i148(1'b0),
    .i149(1'b0),
    .i15(1'b0),
    .i150(1'b0),
    .i151(1'b0),
    .i152(1'b0),
    .i153(1'b0),
    .i154(1'b0),
    .i155(1'b0),
    .i156(1'b0),
    .i157(1'b0),
    .i158(1'b0),
    .i159(1'b0),
    .i16(1'b0),
    .i160(1'b0),
    .i161(1'b0),
    .i162(1'b0),
    .i163(1'b0),
    .i164(1'b0),
    .i165(1'b0),
    .i166(1'b0),
    .i167(1'b0),
    .i168(1'b0),
    .i169(1'b0),
    .i17(1'b0),
    .i170(1'b0),
    .i171(1'b0),
    .i172(1'b0),
    .i173(1'b0),
    .i174(1'b0),
    .i175(1'b0),
    .i176(1'b0),
    .i177(1'b0),
    .i178(1'b0),
    .i179(1'b0),
    .i18(n1),
    .i180(1'b0),
    .i181(1'b0),
    .i182(1'b0),
    .i183(1'b0),
    .i184(1'b0),
    .i185(1'b0),
    .i186(1'b0),
    .i187(1'b0),
    .i188(1'b0),
    .i189(1'b0),
    .i19(1'b0),
    .i190(1'b0),
    .i191(1'b0),
    .i192(1'b0),
    .i193(1'b0),
    .i194(1'b0),
    .i195(1'b0),
    .i196(n156),
    .i197(n39),
    .i198(1'b0),
    .i199(n39),
    .i2(n1),
    .i20(1'b0),
    .i200(1'b0),
    .i201(1'b0),
    .i202(1'b0),
    .i203(1'b0),
    .i204(n156),
    .i205(n156),
    .i206(1'b0),
    .i207(n39),
    .i208(1'b0),
    .i209(1'b0),
    .i21(1'b0),
    .i210(1'b0),
    .i211(n12),
    .i212(n156),
    .i213(n39),
    .i214(1'b0),
    .i215(n39),
    .i216(1'b0),
    .i217(1'b0),
    .i218(1'b0),
    .i219(1'b0),
    .i22(1'b0),
    .i220(n156),
    .i221(1'b0),
    .i222(1'b0),
    .i223(n39),
    .i224(1'b0),
    .i225(1'b0),
    .i226(1'b0),
    .i227(n70),
    .i228(n156),
    .i229(n39),
    .i23(1'b0),
    .i230(1'b0),
    .i231(n39),
    .i232(1'b0),
    .i233(1'b0),
    .i234(1'b0),
    .i235(1'b0),
    .i236(n156),
    .i237(1'b0),
    .i238(1'b0),
    .i239(n39),
    .i24(1'b0),
    .i240(1'b0),
    .i241(1'b0),
    .i242(1'b0),
    .i243(1'b0),
    .i244(n156),
    .i245(n39),
    .i246(1'b0),
    .i247(n39),
    .i248(1'b0),
    .i249(1'b0),
    .i25(1'b0),
    .i250(1'b0),
    .i251(1'b0),
    .i252(n156),
    .i253(1'b0),
    .i254(1'b0),
    .i255(n39),
    .i26(1'b0),
    .i27(1'b0),
    .i28(1'b0),
    .i29(1'b0),
    .i3(1'b0),
    .i30(1'b0),
    .i31(1'b0),
    .i32(1'b0),
    .i33(1'b0),
    .i34(n156),
    .i35(1'b0),
    .i36(1'b0),
    .i37(1'b0),
    .i38(1'b0),
    .i39(1'b0),
    .i4(1'b0),
    .i40(1'b0),
    .i41(1'b0),
    .i42(1'b0),
    .i43(1'b0),
    .i44(1'b0),
    .i45(1'b0),
    .i46(1'b0),
    .i47(1'b0),
    .i48(1'b0),
    .i49(1'b0),
    .i5(1'b0),
    .i50(n19),
    .i51(1'b0),
    .i52(n12),
    .i53(n12),
    .i54(n12),
    .i55(1'b0),
    .i56(1'b0),
    .i57(1'b0),
    .i58(1'b0),
    .i59(1'b0),
    .i6(1'b0),
    .i60(1'b0),
    .i61(1'b0),
    .i62(1'b0),
    .i63(1'b0),
    .i64(1'b0),
    .i65(1'b0),
    .i66(1'b0),
    .i67(1'b0),
    .i68(1'b0),
    .i69(1'b0),
    .i7(1'b0),
    .i70(1'b0),
    .i71(1'b0),
    .i72(1'b0),
    .i73(1'b0),
    .i74(1'b0),
    .i75(1'b0),
    .i76(1'b0),
    .i77(1'b0),
    .i78(1'b0),
    .i79(1'b0),
    .i8(1'b0),
    .i80(1'b0),
    .i81(1'b0),
    .i82(1'b0),
    .i83(1'b0),
    .i84(1'b0),
    .i85(1'b0),
    .i86(1'b0),
    .i87(1'b0),
    .i88(1'b0),
    .i89(1'b0),
    .i9(1'b0),
    .i90(1'b0),
    .i91(1'b0),
    .i92(1'b0),
    .i93(1'b0),
    .i94(1'b0),
    .i95(1'b0),
    .i96(1'b0),
    .i97(1'b0),
    .i98(1'b0),
    .i99(1'b0),
    .sel(IR),
    .o(n186));  // ../../rtl/t80se/T80_MCode.vhd(1348)
  binary_mux_s8_w1 mux42 (
    .i0(1'b0),
    .i1(1'b0),
    .i10(n1),
    .i100(1'b0),
    .i101(1'b0),
    .i102(1'b0),
    .i103(1'b0),
    .i104(1'b0),
    .i105(1'b0),
    .i106(1'b0),
    .i107(1'b0),
    .i108(1'b0),
    .i109(1'b0),
    .i11(1'b0),
    .i110(1'b0),
    .i111(1'b0),
    .i112(1'b0),
    .i113(1'b0),
    .i114(1'b0),
    .i115(1'b0),
    .i116(1'b0),
    .i117(1'b0),
    .i118(1'b0),
    .i119(1'b0),
    .i12(1'b0),
    .i120(1'b0),
    .i121(1'b0),
    .i122(1'b0),
    .i123(1'b0),
    .i124(1'b0),
    .i125(1'b0),
    .i126(1'b0),
    .i127(1'b0),
    .i128(1'b0),
    .i129(1'b0),
    .i13(1'b0),
    .i130(1'b0),
    .i131(1'b0),
    .i132(1'b0),
    .i133(1'b0),
    .i134(1'b0),
    .i135(1'b0),
    .i136(1'b0),
    .i137(1'b0),
    .i138(1'b0),
    .i139(1'b0),
    .i14(1'b0),
    .i140(1'b0),
    .i141(1'b0),
    .i142(1'b0),
    .i143(1'b0),
    .i144(1'b0),
    .i145(1'b0),
    .i146(1'b0),
    .i147(1'b0),
    .i148(1'b0),
    .i149(1'b0),
    .i15(1'b0),
    .i150(1'b0),
    .i151(1'b0),
    .i152(1'b0),
    .i153(1'b0),
    .i154(1'b0),
    .i155(1'b0),
    .i156(1'b0),
    .i157(1'b0),
    .i158(1'b0),
    .i159(1'b0),
    .i16(1'b0),
    .i160(1'b0),
    .i161(1'b0),
    .i162(1'b0),
    .i163(1'b0),
    .i164(1'b0),
    .i165(1'b0),
    .i166(1'b0),
    .i167(1'b0),
    .i168(1'b0),
    .i169(1'b0),
    .i17(1'b0),
    .i170(1'b0),
    .i171(1'b0),
    .i172(1'b0),
    .i173(1'b0),
    .i174(1'b0),
    .i175(1'b0),
    .i176(1'b0),
    .i177(1'b0),
    .i178(1'b0),
    .i179(1'b0),
    .i18(1'b0),
    .i180(1'b0),
    .i181(1'b0),
    .i182(1'b0),
    .i183(1'b0),
    .i184(1'b0),
    .i185(1'b0),
    .i186(1'b0),
    .i187(1'b0),
    .i188(1'b0),
    .i189(1'b0),
    .i19(1'b0),
    .i190(1'b0),
    .i191(1'b0),
    .i192(1'b0),
    .i193(1'b0),
    .i194(1'b0),
    .i195(1'b0),
    .i196(1'b0),
    .i197(1'b0),
    .i198(1'b0),
    .i199(1'b0),
    .i2(1'b0),
    .i20(1'b0),
    .i200(1'b0),
    .i201(1'b0),
    .i202(1'b0),
    .i203(1'b0),
    .i204(1'b0),
    .i205(1'b0),
    .i206(1'b0),
    .i207(1'b0),
    .i208(1'b0),
    .i209(1'b0),
    .i21(1'b0),
    .i210(1'b0),
    .i211(1'b0),
    .i212(1'b0),
    .i213(1'b0),
    .i214(1'b0),
    .i215(1'b0),
    .i216(1'b0),
    .i217(1'b0),
    .i218(1'b0),
    .i219(n12),
    .i22(1'b0),
    .i220(1'b0),
    .i221(1'b0),
    .i222(1'b0),
    .i223(1'b0),
    .i224(1'b0),
    .i225(1'b0),
    .i226(1'b0),
    .i227(1'b0),
    .i228(1'b0),
    .i229(1'b0),
    .i23(1'b0),
    .i230(1'b0),
    .i231(1'b0),
    .i232(1'b0),
    .i233(1'b0),
    .i234(1'b0),
    .i235(1'b0),
    .i236(1'b0),
    .i237(1'b0),
    .i238(1'b0),
    .i239(1'b0),
    .i24(1'b0),
    .i240(1'b0),
    .i241(1'b0),
    .i242(1'b0),
    .i243(1'b0),
    .i244(1'b0),
    .i245(1'b0),
    .i246(1'b0),
    .i247(1'b0),
    .i248(1'b0),
    .i249(1'b0),
    .i25(1'b0),
    .i250(1'b0),
    .i251(1'b0),
    .i252(1'b0),
    .i253(1'b0),
    .i254(1'b0),
    .i255(1'b0),
    .i26(n1),
    .i27(1'b0),
    .i28(1'b0),
    .i29(1'b0),
    .i3(1'b0),
    .i30(1'b0),
    .i31(1'b0),
    .i32(1'b0),
    .i33(1'b0),
    .i34(1'b0),
    .i35(1'b0),
    .i36(1'b0),
    .i37(1'b0),
    .i38(1'b0),
    .i39(1'b0),
    .i4(1'b0),
    .i40(1'b0),
    .i41(1'b0),
    .i42(1'b0),
    .i43(1'b0),
    .i44(1'b0),
    .i45(1'b0),
    .i46(1'b0),
    .i47(1'b0),
    .i48(1'b0),
    .i49(1'b0),
    .i5(1'b0),
    .i50(1'b0),
    .i51(1'b0),
    .i52(1'b0),
    .i53(1'b0),
    .i54(1'b0),
    .i55(1'b0),
    .i56(1'b0),
    .i57(1'b0),
    .i58(n19),
    .i59(1'b0),
    .i6(1'b0),
    .i60(1'b0),
    .i61(1'b0),
    .i62(1'b0),
    .i63(1'b0),
    .i64(1'b0),
    .i65(1'b0),
    .i66(1'b0),
    .i67(1'b0),
    .i68(1'b0),
    .i69(1'b0),
    .i7(1'b0),
    .i70(1'b0),
    .i71(1'b0),
    .i72(1'b0),
    .i73(1'b0),
    .i74(1'b0),
    .i75(1'b0),
    .i76(1'b0),
    .i77(1'b0),
    .i78(1'b0),
    .i79(1'b0),
    .i8(1'b0),
    .i80(1'b0),
    .i81(1'b0),
    .i82(1'b0),
    .i83(1'b0),
    .i84(1'b0),
    .i85(1'b0),
    .i86(1'b0),
    .i87(1'b0),
    .i88(1'b0),
    .i89(1'b0),
    .i9(1'b0),
    .i90(1'b0),
    .i91(1'b0),
    .i92(1'b0),
    .i93(1'b0),
    .i94(1'b0),
    .i95(1'b0),
    .i96(1'b0),
    .i97(1'b0),
    .i98(1'b0),
    .i99(1'b0),
    .sel(IR),
    .o(n187));  // ../../rtl/t80se/T80_MCode.vhd(1348)
  binary_mux_s8_w1 mux43 (
    .i0(n110),
    .i1(1'b0),
    .i10(1'b0),
    .i100(1'b0),
    .i101(1'b0),
    .i102(1'b0),
    .i103(1'b0),
    .i104(1'b0),
    .i105(1'b0),
    .i106(1'b0),
    .i107(1'b0),
    .i108(1'b0),
    .i109(1'b0),
    .i11(1'b0),
    .i110(1'b0),
    .i111(1'b0),
    .i112(1'b0),
    .i113(1'b0),
    .i114(1'b0),
    .i115(1'b0),
    .i116(1'b0),
    .i117(1'b0),
    .i118(1'b0),
    .i119(1'b0),
    .i12(1'b0),
    .i120(1'b0),
    .i121(1'b0),
    .i122(1'b0),
    .i123(1'b0),
    .i124(1'b0),
    .i125(1'b0),
    .i126(1'b0),
    .i127(1'b0),
    .i128(1'b0),
    .i129(1'b0),
    .i13(1'b0),
    .i130(1'b0),
    .i131(1'b0),
    .i132(1'b0),
    .i133(1'b0),
    .i134(1'b0),
    .i135(1'b0),
    .i136(1'b0),
    .i137(1'b0),
    .i138(1'b0),
    .i139(1'b0),
    .i14(1'b0),
    .i140(1'b0),
    .i141(1'b0),
    .i142(1'b0),
    .i143(1'b0),
    .i144(1'b0),
    .i145(1'b0),
    .i146(1'b0),
    .i147(1'b0),
    .i148(1'b0),
    .i149(1'b0),
    .i15(1'b0),
    .i150(1'b0),
    .i151(1'b0),
    .i152(1'b0),
    .i153(1'b0),
    .i154(1'b0),
    .i155(1'b0),
    .i156(1'b0),
    .i157(1'b0),
    .i158(1'b0),
    .i159(1'b0),
    .i16(1'b0),
    .i160(1'b0),
    .i161(1'b0),
    .i162(1'b0),
    .i163(1'b0),
    .i164(1'b0),
    .i165(1'b0),
    .i166(1'b0),
    .i167(1'b0),
    .i168(1'b0),
    .i169(1'b0),
    .i17(1'b0),
    .i170(1'b0),
    .i171(1'b0),
    .i172(1'b0),
    .i173(1'b0),
    .i174(1'b0),
    .i175(1'b0),
    .i176(1'b0),
    .i177(1'b0),
    .i178(1'b0),
    .i179(1'b0),
    .i18(1'b0),
    .i180(1'b0),
    .i181(1'b0),
    .i182(1'b0),
    .i183(1'b0),
    .i184(1'b0),
    .i185(1'b0),
    .i186(1'b0),
    .i187(1'b0),
    .i188(1'b0),
    .i189(1'b0),
    .i19(1'b0),
    .i190(1'b0),
    .i191(1'b0),
    .i192(n1),
    .i193(1'b0),
    .i194(n1),
    .i195(n1),
    .i196(n1),
    .i197(1'b0),
    .i198(1'b0),
    .i199(1'b0),
    .i2(1'b0),
    .i20(1'b0),
    .i200(n1),
    .i201(n1),
    .i202(n1),
    .i203(1'b0),
    .i204(n1),
    .i205(n1),
    .i206(1'b0),
    .i207(1'b0),
    .i208(n1),
    .i209(1'b0),
    .i21(1'b0),
    .i210(n1),
    .i211(1'b0),
    .i212(n1),
    .i213(1'b0),
    .i214(1'b0),
    .i215(1'b0),
    .i216(n1),
    .i217(1'b0),
    .i218(n1),
    .i219(1'b0),
    .i22(1'b0),
    .i220(n1),
    .i221(1'b0),
    .i222(1'b0),
    .i223(1'b0),
    .i224(n1),
    .i225(1'b0),
    .i226(n1),
    .i227(n1),
    .i228(n1),
    .i229(1'b0),
    .i23(1'b0),
    .i230(1'b0),
    .i231(1'b0),
    .i232(n1),
    .i233(1'b0),
    .i234(n1),
    .i235(1'b0),
    .i236(n1),
    .i237(1'b0),
    .i238(1'b0),
    .i239(1'b0),
    .i24(1'b0),
    .i240(n1),
    .i241(1'b0),
    .i242(n1),
    .i243(1'b0),
    .i244(n1),
    .i245(1'b0),
    .i246(1'b0),
    .i247(1'b0),
    .i248(n1),
    .i249(1'b0),
    .i25(1'b0),
    .i250(n1),
    .i251(1'b0),
    .i252(n1),
    .i253(1'b0),
    .i254(1'b0),
    .i255(1'b0),
    .i26(1'b0),
    .i27(1'b0),
    .i28(1'b0),
    .i29(1'b0),
    .i3(1'b0),
    .i30(1'b0),
    .i31(1'b0),
    .i32(1'b0),
    .i33(1'b0),
    .i34(n1),
    .i35(1'b0),
    .i36(1'b0),
    .i37(1'b0),
    .i38(1'b0),
    .i39(1'b0),
    .i4(1'b0),
    .i40(1'b0),
    .i41(1'b0),
    .i42(n1),
    .i43(1'b0),
    .i44(1'b0),
    .i45(1'b0),
    .i46(1'b0),
    .i47(1'b0),
    .i48(1'b0),
    .i49(1'b0),
    .i5(1'b0),
    .i50(n1),
    .i51(1'b0),
    .i52(1'b0),
    .i53(1'b0),
    .i54(1'b0),
    .i55(1'b0),
    .i56(1'b0),
    .i57(1'b0),
    .i58(n1),
    .i59(1'b0),
    .i6(1'b0),
    .i60(1'b0),
    .i61(1'b0),
    .i62(1'b0),
    .i63(1'b0),
    .i64(1'b0),
    .i65(1'b0),
    .i66(1'b0),
    .i67(1'b0),
    .i68(1'b0),
    .i69(1'b0),
    .i7(1'b0),
    .i70(1'b0),
    .i71(1'b0),
    .i72(1'b0),
    .i73(1'b0),
    .i74(1'b0),
    .i75(1'b0),
    .i76(1'b0),
    .i77(1'b0),
    .i78(1'b0),
    .i79(1'b0),
    .i8(1'b0),
    .i80(1'b0),
    .i81(1'b0),
    .i82(1'b0),
    .i83(1'b0),
    .i84(1'b0),
    .i85(1'b0),
    .i86(1'b0),
    .i87(1'b0),
    .i88(1'b0),
    .i89(1'b0),
    .i9(1'b0),
    .i90(1'b0),
    .i91(1'b0),
    .i92(1'b0),
    .i93(1'b0),
    .i94(1'b0),
    .i95(1'b0),
    .i96(1'b0),
    .i97(1'b0),
    .i98(1'b0),
    .i99(1'b0),
    .sel(IR),
    .o(n188));  // ../../rtl/t80se/T80_MCode.vhd(1348)
  binary_mux_s8_w1 mux44 (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b0),
    .i100(1'b0),
    .i101(1'b0),
    .i102(1'b0),
    .i103(1'b0),
    .i104(1'b0),
    .i105(1'b0),
    .i106(1'b0),
    .i107(1'b0),
    .i108(1'b0),
    .i109(1'b0),
    .i11(1'b0),
    .i110(1'b0),
    .i111(1'b0),
    .i112(1'b0),
    .i113(1'b0),
    .i114(1'b0),
    .i115(1'b0),
    .i116(1'b0),
    .i117(1'b0),
    .i118(1'b0),
    .i119(1'b0),
    .i12(1'b0),
    .i120(1'b0),
    .i121(1'b0),
    .i122(1'b0),
    .i123(1'b0),
    .i124(1'b0),
    .i125(1'b0),
    .i126(1'b0),
    .i127(1'b0),
    .i128(1'b0),
    .i129(1'b0),
    .i13(1'b0),
    .i130(1'b0),
    .i131(1'b0),
    .i132(1'b0),
    .i133(1'b0),
    .i134(1'b0),
    .i135(1'b0),
    .i136(1'b0),
    .i137(1'b0),
    .i138(1'b0),
    .i139(1'b0),
    .i14(1'b0),
    .i140(1'b0),
    .i141(1'b0),
    .i142(1'b0),
    .i143(1'b0),
    .i144(1'b0),
    .i145(1'b0),
    .i146(1'b0),
    .i147(1'b0),
    .i148(1'b0),
    .i149(1'b0),
    .i15(1'b0),
    .i150(1'b0),
    .i151(1'b0),
    .i152(1'b0),
    .i153(1'b0),
    .i154(1'b0),
    .i155(1'b0),
    .i156(1'b0),
    .i157(1'b0),
    .i158(1'b0),
    .i159(1'b0),
    .i16(1'b0),
    .i160(1'b0),
    .i161(1'b0),
    .i162(1'b0),
    .i163(1'b0),
    .i164(1'b0),
    .i165(1'b0),
    .i166(1'b0),
    .i167(1'b0),
    .i168(1'b0),
    .i169(1'b0),
    .i17(1'b0),
    .i170(1'b0),
    .i171(1'b0),
    .i172(1'b0),
    .i173(1'b0),
    .i174(1'b0),
    .i175(1'b0),
    .i176(1'b0),
    .i177(1'b0),
    .i178(1'b0),
    .i179(1'b0),
    .i18(1'b0),
    .i180(1'b0),
    .i181(1'b0),
    .i182(1'b0),
    .i183(1'b0),
    .i184(1'b0),
    .i185(1'b0),
    .i186(1'b0),
    .i187(1'b0),
    .i188(1'b0),
    .i189(1'b0),
    .i19(1'b0),
    .i190(1'b0),
    .i191(1'b0),
    .i192(1'b0),
    .i193(1'b0),
    .i194(n12),
    .i195(n12),
    .i196(n12),
    .i197(1'b0),
    .i198(1'b0),
    .i199(1'b0),
    .i2(1'b0),
    .i20(1'b0),
    .i200(1'b0),
    .i201(1'b0),
    .i202(n12),
    .i203(1'b0),
    .i204(n12),
    .i205(n12),
    .i206(1'b0),
    .i207(1'b0),
    .i208(1'b0),
    .i209(1'b0),
    .i21(1'b0),
    .i210(n12),
    .i211(1'b0),
    .i212(n12),
    .i213(1'b0),
    .i214(1'b0),
    .i215(1'b0),
    .i216(1'b0),
    .i217(1'b0),
    .i218(n12),
    .i219(1'b0),
    .i22(1'b0),
    .i220(n12),
    .i221(1'b0),
    .i222(1'b0),
    .i223(1'b0),
    .i224(1'b0),
    .i225(1'b0),
    .i226(n12),
    .i227(n19),
    .i228(n12),
    .i229(1'b0),
    .i23(1'b0),
    .i230(1'b0),
    .i231(1'b0),
    .i232(1'b0),
    .i233(1'b0),
    .i234(n12),
    .i235(1'b0),
    .i236(n12),
    .i237(1'b0),
    .i238(1'b0),
    .i239(1'b0),
    .i24(1'b0),
    .i240(1'b0),
    .i241(1'b0),
    .i242(n12),
    .i243(1'b0),
    .i244(n12),
    .i245(1'b0),
    .i246(1'b0),
    .i247(1'b0),
    .i248(1'b0),
    .i249(1'b0),
    .i25(1'b0),
    .i250(n12),
    .i251(1'b0),
    .i252(n12),
    .i253(1'b0),
    .i254(1'b0),
    .i255(1'b0),
    .i26(1'b0),
    .i27(1'b0),
    .i28(1'b0),
    .i29(1'b0),
    .i3(1'b0),
    .i30(1'b0),
    .i31(1'b0),
    .i32(1'b0),
    .i33(1'b0),
    .i34(n12),
    .i35(1'b0),
    .i36(1'b0),
    .i37(1'b0),
    .i38(1'b0),
    .i39(1'b0),
    .i4(1'b0),
    .i40(1'b0),
    .i41(1'b0),
    .i42(n12),
    .i43(1'b0),
    .i44(1'b0),
    .i45(1'b0),
    .i46(1'b0),
    .i47(1'b0),
    .i48(1'b0),
    .i49(1'b0),
    .i5(1'b0),
    .i50(1'b0),
    .i51(1'b0),
    .i52(1'b0),
    .i53(1'b0),
    .i54(1'b0),
    .i55(1'b0),
    .i56(1'b0),
    .i57(1'b0),
    .i58(1'b0),
    .i59(1'b0),
    .i6(1'b0),
    .i60(1'b0),
    .i61(1'b0),
    .i62(1'b0),
    .i63(1'b0),
    .i64(1'b0),
    .i65(1'b0),
    .i66(1'b0),
    .i67(1'b0),
    .i68(1'b0),
    .i69(1'b0),
    .i7(1'b0),
    .i70(1'b0),
    .i71(1'b0),
    .i72(1'b0),
    .i73(1'b0),
    .i74(1'b0),
    .i75(1'b0),
    .i76(1'b0),
    .i77(1'b0),
    .i78(1'b0),
    .i79(1'b0),
    .i8(1'b0),
    .i80(1'b0),
    .i81(1'b0),
    .i82(1'b0),
    .i83(1'b0),
    .i84(1'b0),
    .i85(1'b0),
    .i86(1'b0),
    .i87(1'b0),
    .i88(1'b0),
    .i89(1'b0),
    .i9(1'b0),
    .i90(1'b0),
    .i91(1'b0),
    .i92(1'b0),
    .i93(1'b0),
    .i94(1'b0),
    .i95(1'b0),
    .i96(1'b0),
    .i97(1'b0),
    .i98(1'b0),
    .i99(1'b0),
    .sel(IR),
    .o(n190));  // ../../rtl/t80se/T80_MCode.vhd(1348)
  binary_mux_s8_w1 mux45 (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b0),
    .i100(1'b0),
    .i101(1'b0),
    .i102(1'b0),
    .i103(1'b0),
    .i104(1'b0),
    .i105(1'b0),
    .i106(1'b0),
    .i107(1'b0),
    .i108(1'b0),
    .i109(1'b0),
    .i11(1'b0),
    .i110(1'b0),
    .i111(1'b0),
    .i112(1'b0),
    .i113(1'b0),
    .i114(1'b0),
    .i115(1'b0),
    .i116(1'b0),
    .i117(1'b0),
    .i118(1'b0),
    .i119(1'b0),
    .i12(1'b0),
    .i120(1'b0),
    .i121(1'b0),
    .i122(1'b0),
    .i123(1'b0),
    .i124(1'b0),
    .i125(1'b0),
    .i126(1'b0),
    .i127(1'b0),
    .i128(1'b0),
    .i129(1'b0),
    .i13(1'b0),
    .i130(1'b0),
    .i131(1'b0),
    .i132(1'b0),
    .i133(1'b0),
    .i134(1'b0),
    .i135(1'b0),
    .i136(1'b0),
    .i137(1'b0),
    .i138(1'b0),
    .i139(1'b0),
    .i14(1'b0),
    .i140(1'b0),
    .i141(1'b0),
    .i142(1'b0),
    .i143(1'b0),
    .i144(1'b0),
    .i145(1'b0),
    .i146(1'b0),
    .i147(1'b0),
    .i148(1'b0),
    .i149(1'b0),
    .i15(1'b0),
    .i150(1'b0),
    .i151(1'b0),
    .i152(1'b0),
    .i153(1'b0),
    .i154(1'b0),
    .i155(1'b0),
    .i156(1'b0),
    .i157(1'b0),
    .i158(1'b0),
    .i159(1'b0),
    .i16(1'b0),
    .i160(1'b0),
    .i161(1'b0),
    .i162(1'b0),
    .i163(1'b0),
    .i164(1'b0),
    .i165(1'b0),
    .i166(1'b0),
    .i167(1'b0),
    .i168(1'b0),
    .i169(1'b0),
    .i17(1'b0),
    .i170(1'b0),
    .i171(1'b0),
    .i172(1'b0),
    .i173(1'b0),
    .i174(1'b0),
    .i175(1'b0),
    .i176(1'b0),
    .i177(1'b0),
    .i178(1'b0),
    .i179(1'b0),
    .i18(1'b0),
    .i180(1'b0),
    .i181(1'b0),
    .i182(1'b0),
    .i183(1'b0),
    .i184(1'b0),
    .i185(1'b0),
    .i186(1'b0),
    .i187(1'b0),
    .i188(1'b0),
    .i189(1'b0),
    .i19(1'b0),
    .i190(1'b0),
    .i191(1'b0),
    .i192(1'b0),
    .i193(1'b0),
    .i194(1'b0),
    .i195(1'b0),
    .i196(1'b0),
    .i197(1'b0),
    .i198(1'b0),
    .i199(1'b0),
    .i2(1'b0),
    .i20(1'b0),
    .i200(1'b0),
    .i201(1'b0),
    .i202(1'b0),
    .i203(1'b0),
    .i204(1'b0),
    .i205(1'b0),
    .i206(1'b0),
    .i207(1'b0),
    .i208(1'b0),
    .i209(1'b0),
    .i21(1'b0),
    .i210(1'b0),
    .i211(1'b0),
    .i212(1'b0),
    .i213(1'b0),
    .i214(1'b0),
    .i215(1'b0),
    .i216(1'b0),
    .i217(1'b0),
    .i218(1'b0),
    .i219(1'b0),
    .i22(1'b0),
    .i220(1'b0),
    .i221(1'b0),
    .i222(1'b0),
    .i223(1'b0),
    .i224(1'b0),
    .i225(1'b0),
    .i226(1'b0),
    .i227(1'b0),
    .i228(1'b0),
    .i229(1'b0),
    .i23(1'b0),
    .i230(1'b0),
    .i231(1'b0),
    .i232(1'b0),
    .i233(1'b0),
    .i234(1'b0),
    .i235(1'b0),
    .i236(1'b0),
    .i237(1'b0),
    .i238(1'b0),
    .i239(1'b0),
    .i24(1'b0),
    .i240(1'b0),
    .i241(1'b0),
    .i242(1'b0),
    .i243(1'b0),
    .i244(1'b0),
    .i245(1'b0),
    .i246(1'b0),
    .i247(1'b0),
    .i248(1'b0),
    .i249(1'b0),
    .i25(1'b0),
    .i250(1'b0),
    .i251(1'b0),
    .i252(1'b0),
    .i253(1'b0),
    .i254(1'b0),
    .i255(1'b0),
    .i26(1'b0),
    .i27(1'b0),
    .i28(1'b0),
    .i29(1'b0),
    .i3(1'b0),
    .i30(1'b0),
    .i31(1'b0),
    .i32(1'b0),
    .i33(1'b0),
    .i34(n19),
    .i35(1'b0),
    .i36(1'b0),
    .i37(1'b0),
    .i38(1'b0),
    .i39(1'b0),
    .i4(1'b0),
    .i40(1'b0),
    .i41(1'b0),
    .i42(n19),
    .i43(1'b0),
    .i44(1'b0),
    .i45(1'b0),
    .i46(1'b0),
    .i47(1'b0),
    .i48(1'b0),
    .i49(1'b0),
    .i5(1'b0),
    .i50(1'b0),
    .i51(1'b0),
    .i52(1'b0),
    .i53(1'b0),
    .i54(1'b0),
    .i55(1'b0),
    .i56(1'b0),
    .i57(1'b0),
    .i58(1'b0),
    .i59(1'b0),
    .i6(1'b0),
    .i60(1'b0),
    .i61(1'b0),
    .i62(1'b0),
    .i63(1'b0),
    .i64(1'b0),
    .i65(1'b0),
    .i66(1'b0),
    .i67(1'b0),
    .i68(1'b0),
    .i69(1'b0),
    .i7(1'b0),
    .i70(1'b0),
    .i71(1'b0),
    .i72(1'b0),
    .i73(1'b0),
    .i74(1'b0),
    .i75(1'b0),
    .i76(1'b0),
    .i77(1'b0),
    .i78(1'b0),
    .i79(1'b0),
    .i8(1'b0),
    .i80(1'b0),
    .i81(1'b0),
    .i82(1'b0),
    .i83(1'b0),
    .i84(1'b0),
    .i85(1'b0),
    .i86(1'b0),
    .i87(1'b0),
    .i88(1'b0),
    .i89(1'b0),
    .i9(1'b0),
    .i90(1'b0),
    .i91(1'b0),
    .i92(1'b0),
    .i93(1'b0),
    .i94(1'b0),
    .i95(1'b0),
    .i96(1'b0),
    .i97(1'b0),
    .i98(1'b0),
    .i99(1'b0),
    .sel(IR),
    .o(n191));  // ../../rtl/t80se/T80_MCode.vhd(1348)
  binary_mux_s8_w1 mux46 (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b0),
    .i100(1'b0),
    .i101(1'b0),
    .i102(1'b0),
    .i103(1'b0),
    .i104(1'b0),
    .i105(1'b0),
    .i106(1'b0),
    .i107(1'b0),
    .i108(1'b0),
    .i109(1'b0),
    .i11(1'b0),
    .i110(1'b0),
    .i111(1'b0),
    .i112(1'b0),
    .i113(1'b0),
    .i114(1'b0),
    .i115(1'b0),
    .i116(1'b0),
    .i117(1'b0),
    .i118(1'b0),
    .i119(1'b0),
    .i12(1'b0),
    .i120(1'b0),
    .i121(1'b0),
    .i122(1'b0),
    .i123(1'b0),
    .i124(1'b0),
    .i125(1'b0),
    .i126(1'b0),
    .i127(1'b0),
    .i128(1'b0),
    .i129(1'b0),
    .i13(1'b0),
    .i130(1'b0),
    .i131(1'b0),
    .i132(1'b0),
    .i133(1'b0),
    .i134(1'b0),
    .i135(1'b0),
    .i136(1'b0),
    .i137(1'b0),
    .i138(1'b0),
    .i139(1'b0),
    .i14(1'b0),
    .i140(1'b0),
    .i141(1'b0),
    .i142(1'b0),
    .i143(1'b0),
    .i144(1'b0),
    .i145(1'b0),
    .i146(1'b0),
    .i147(1'b0),
    .i148(1'b0),
    .i149(1'b0),
    .i15(1'b0),
    .i150(1'b0),
    .i151(1'b0),
    .i152(1'b0),
    .i153(1'b0),
    .i154(1'b0),
    .i155(1'b0),
    .i156(1'b0),
    .i157(1'b0),
    .i158(1'b0),
    .i159(1'b0),
    .i16(1'b0),
    .i160(1'b0),
    .i161(1'b0),
    .i162(1'b0),
    .i163(1'b0),
    .i164(1'b0),
    .i165(1'b0),
    .i166(1'b0),
    .i167(1'b0),
    .i168(1'b0),
    .i169(1'b0),
    .i17(1'b0),
    .i170(1'b0),
    .i171(1'b0),
    .i172(1'b0),
    .i173(1'b0),
    .i174(1'b0),
    .i175(1'b0),
    .i176(1'b0),
    .i177(1'b0),
    .i178(1'b0),
    .i179(1'b0),
    .i18(1'b0),
    .i180(1'b0),
    .i181(1'b0),
    .i182(1'b0),
    .i183(1'b0),
    .i184(1'b0),
    .i185(1'b0),
    .i186(1'b0),
    .i187(1'b0),
    .i188(1'b0),
    .i189(1'b0),
    .i19(1'b0),
    .i190(1'b0),
    .i191(1'b0),
    .i192(1'b0),
    .i193(1'b0),
    .i194(1'b0),
    .i195(1'b0),
    .i196(1'b0),
    .i197(1'b0),
    .i198(1'b0),
    .i199(1'b0),
    .i2(1'b0),
    .i20(1'b0),
    .i200(1'b0),
    .i201(1'b0),
    .i202(1'b0),
    .i203(1'b0),
    .i204(1'b0),
    .i205(1'b0),
    .i206(1'b0),
    .i207(1'b0),
    .i208(1'b0),
    .i209(1'b0),
    .i21(1'b0),
    .i210(1'b0),
    .i211(1'b0),
    .i212(1'b0),
    .i213(1'b0),
    .i214(1'b0),
    .i215(1'b0),
    .i216(1'b0),
    .i217(1'b0),
    .i218(1'b0),
    .i219(1'b0),
    .i22(1'b0),
    .i220(1'b0),
    .i221(1'b0),
    .i222(1'b0),
    .i223(1'b0),
    .i224(1'b0),
    .i225(1'b0),
    .i226(1'b0),
    .i227(1'b0),
    .i228(1'b0),
    .i229(1'b0),
    .i23(1'b0),
    .i230(1'b0),
    .i231(1'b0),
    .i232(1'b0),
    .i233(1'b0),
    .i234(1'b0),
    .i235(1'b0),
    .i236(1'b0),
    .i237(1'b0),
    .i238(1'b0),
    .i239(1'b0),
    .i24(1'b0),
    .i240(1'b0),
    .i241(1'b0),
    .i242(1'b0),
    .i243(1'b0),
    .i244(1'b0),
    .i245(1'b0),
    .i246(1'b0),
    .i247(1'b0),
    .i248(1'b0),
    .i249(1'b1),
    .i25(1'b0),
    .i250(1'b0),
    .i251(1'b0),
    .i252(1'b0),
    .i253(1'b0),
    .i254(1'b0),
    .i255(1'b0),
    .i26(1'b0),
    .i27(1'b0),
    .i28(1'b0),
    .i29(1'b0),
    .i3(1'b0),
    .i30(1'b0),
    .i31(1'b0),
    .i32(1'b0),
    .i33(1'b0),
    .i34(1'b0),
    .i35(1'b0),
    .i36(1'b0),
    .i37(1'b0),
    .i38(1'b0),
    .i39(1'b0),
    .i4(1'b0),
    .i40(1'b0),
    .i41(1'b0),
    .i42(1'b0),
    .i43(1'b0),
    .i44(1'b0),
    .i45(1'b0),
    .i46(1'b0),
    .i47(1'b0),
    .i48(1'b0),
    .i49(1'b0),
    .i5(1'b0),
    .i50(1'b0),
    .i51(1'b0),
    .i52(1'b0),
    .i53(1'b0),
    .i54(1'b0),
    .i55(1'b0),
    .i56(1'b0),
    .i57(1'b0),
    .i58(1'b0),
    .i59(1'b0),
    .i6(1'b0),
    .i60(1'b0),
    .i61(1'b0),
    .i62(1'b0),
    .i63(1'b0),
    .i64(1'b0),
    .i65(1'b0),
    .i66(1'b0),
    .i67(1'b0),
    .i68(1'b0),
    .i69(1'b0),
    .i7(1'b0),
    .i70(1'b0),
    .i71(1'b0),
    .i72(1'b0),
    .i73(1'b0),
    .i74(1'b0),
    .i75(1'b0),
    .i76(1'b0),
    .i77(1'b0),
    .i78(1'b0),
    .i79(1'b0),
    .i8(1'b0),
    .i80(1'b0),
    .i81(1'b0),
    .i82(1'b0),
    .i83(1'b0),
    .i84(1'b0),
    .i85(1'b0),
    .i86(1'b0),
    .i87(1'b0),
    .i88(1'b0),
    .i89(1'b0),
    .i9(1'b0),
    .i90(1'b0),
    .i91(1'b0),
    .i92(1'b0),
    .i93(1'b0),
    .i94(1'b0),
    .i95(1'b0),
    .i96(1'b0),
    .i97(1'b0),
    .i98(1'b0),
    .i99(1'b0),
    .sel(IR),
    .o(n193));  // ../../rtl/t80se/T80_MCode.vhd(1348)
  binary_mux_s8_w1 mux47 (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b0),
    .i100(1'b0),
    .i101(1'b0),
    .i102(1'b0),
    .i103(1'b0),
    .i104(1'b0),
    .i105(1'b0),
    .i106(1'b0),
    .i107(1'b0),
    .i108(1'b0),
    .i109(1'b0),
    .i11(1'b0),
    .i110(1'b0),
    .i111(1'b0),
    .i112(1'b0),
    .i113(1'b0),
    .i114(1'b0),
    .i115(1'b0),
    .i116(1'b0),
    .i117(1'b0),
    .i118(1'b0),
    .i119(1'b0),
    .i12(1'b0),
    .i120(1'b0),
    .i121(1'b0),
    .i122(1'b0),
    .i123(1'b0),
    .i124(1'b0),
    .i125(1'b0),
    .i126(1'b0),
    .i127(1'b0),
    .i128(1'b0),
    .i129(1'b0),
    .i13(1'b0),
    .i130(1'b0),
    .i131(1'b0),
    .i132(1'b0),
    .i133(1'b0),
    .i134(1'b0),
    .i135(1'b0),
    .i136(1'b0),
    .i137(1'b0),
    .i138(1'b0),
    .i139(1'b0),
    .i14(1'b0),
    .i140(1'b0),
    .i141(1'b0),
    .i142(1'b0),
    .i143(1'b0),
    .i144(1'b0),
    .i145(1'b0),
    .i146(1'b0),
    .i147(1'b0),
    .i148(1'b0),
    .i149(1'b0),
    .i15(1'b0),
    .i150(1'b0),
    .i151(1'b0),
    .i152(1'b0),
    .i153(1'b0),
    .i154(1'b0),
    .i155(1'b0),
    .i156(1'b0),
    .i157(1'b0),
    .i158(1'b0),
    .i159(1'b0),
    .i16(1'b0),
    .i160(1'b0),
    .i161(1'b0),
    .i162(1'b0),
    .i163(1'b0),
    .i164(1'b0),
    .i165(1'b0),
    .i166(1'b0),
    .i167(1'b0),
    .i168(1'b0),
    .i169(1'b0),
    .i17(1'b0),
    .i170(1'b0),
    .i171(1'b0),
    .i172(1'b0),
    .i173(1'b0),
    .i174(1'b0),
    .i175(1'b0),
    .i176(1'b0),
    .i177(1'b0),
    .i178(1'b0),
    .i179(1'b0),
    .i18(1'b0),
    .i180(1'b0),
    .i181(1'b0),
    .i182(1'b0),
    .i183(1'b0),
    .i184(1'b0),
    .i185(1'b0),
    .i186(1'b0),
    .i187(1'b0),
    .i188(1'b0),
    .i189(1'b0),
    .i19(1'b0),
    .i190(1'b0),
    .i191(1'b0),
    .i192(1'b0),
    .i193(1'b0),
    .i194(1'b0),
    .i195(1'b0),
    .i196(1'b0),
    .i197(1'b0),
    .i198(1'b0),
    .i199(1'b0),
    .i2(1'b0),
    .i20(1'b0),
    .i200(1'b0),
    .i201(1'b0),
    .i202(1'b0),
    .i203(1'b0),
    .i204(1'b0),
    .i205(1'b0),
    .i206(1'b0),
    .i207(1'b0),
    .i208(1'b0),
    .i209(1'b0),
    .i21(1'b0),
    .i210(1'b0),
    .i211(1'b0),
    .i212(1'b0),
    .i213(1'b0),
    .i214(1'b0),
    .i215(1'b0),
    .i216(1'b0),
    .i217(1'b0),
    .i218(1'b0),
    .i219(1'b0),
    .i22(1'b0),
    .i220(1'b0),
    .i221(1'b0),
    .i222(1'b0),
    .i223(1'b0),
    .i224(1'b0),
    .i225(1'b0),
    .i226(1'b0),
    .i227(1'b0),
    .i228(1'b0),
    .i229(1'b0),
    .i23(1'b0),
    .i230(1'b0),
    .i231(1'b0),
    .i232(1'b0),
    .i233(1'b0),
    .i234(1'b0),
    .i235(1'b1),
    .i236(1'b0),
    .i237(1'b0),
    .i238(1'b0),
    .i239(1'b0),
    .i24(1'b0),
    .i240(1'b0),
    .i241(1'b0),
    .i242(1'b0),
    .i243(1'b0),
    .i244(1'b0),
    .i245(1'b0),
    .i246(1'b0),
    .i247(1'b0),
    .i248(1'b0),
    .i249(1'b0),
    .i25(1'b0),
    .i250(1'b0),
    .i251(1'b0),
    .i252(1'b0),
    .i253(1'b0),
    .i254(1'b0),
    .i255(1'b0),
    .i26(1'b0),
    .i27(1'b0),
    .i28(1'b0),
    .i29(1'b0),
    .i3(1'b0),
    .i30(1'b0),
    .i31(1'b0),
    .i32(1'b0),
    .i33(1'b0),
    .i34(1'b0),
    .i35(1'b0),
    .i36(1'b0),
    .i37(1'b0),
    .i38(1'b0),
    .i39(1'b0),
    .i4(1'b0),
    .i40(1'b0),
    .i41(1'b0),
    .i42(1'b0),
    .i43(1'b0),
    .i44(1'b0),
    .i45(1'b0),
    .i46(1'b0),
    .i47(1'b0),
    .i48(1'b0),
    .i49(1'b0),
    .i5(1'b0),
    .i50(1'b0),
    .i51(1'b0),
    .i52(1'b0),
    .i53(1'b0),
    .i54(1'b0),
    .i55(1'b0),
    .i56(1'b0),
    .i57(1'b0),
    .i58(1'b0),
    .i59(1'b0),
    .i6(1'b0),
    .i60(1'b0),
    .i61(1'b0),
    .i62(1'b0),
    .i63(1'b0),
    .i64(1'b0),
    .i65(1'b0),
    .i66(1'b0),
    .i67(1'b0),
    .i68(1'b0),
    .i69(1'b0),
    .i7(1'b0),
    .i70(1'b0),
    .i71(1'b0),
    .i72(1'b0),
    .i73(1'b0),
    .i74(1'b0),
    .i75(1'b0),
    .i76(1'b0),
    .i77(1'b0),
    .i78(1'b0),
    .i79(1'b0),
    .i8(1'b0),
    .i80(1'b0),
    .i81(1'b0),
    .i82(1'b0),
    .i83(1'b0),
    .i84(1'b0),
    .i85(1'b0),
    .i86(1'b0),
    .i87(1'b0),
    .i88(1'b0),
    .i89(1'b0),
    .i9(1'b0),
    .i90(1'b0),
    .i91(1'b0),
    .i92(1'b0),
    .i93(1'b0),
    .i94(1'b0),
    .i95(1'b0),
    .i96(1'b0),
    .i97(1'b0),
    .i98(1'b0),
    .i99(1'b0),
    .sel(IR),
    .o(n195));  // ../../rtl/t80se/T80_MCode.vhd(1348)
  binary_mux_s8_w1 mux48 (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b0),
    .i100(1'b0),
    .i101(1'b0),
    .i102(1'b0),
    .i103(1'b0),
    .i104(1'b0),
    .i105(1'b0),
    .i106(1'b0),
    .i107(1'b0),
    .i108(1'b0),
    .i109(1'b0),
    .i11(1'b0),
    .i110(1'b0),
    .i111(1'b0),
    .i112(1'b0),
    .i113(1'b0),
    .i114(1'b0),
    .i115(1'b0),
    .i116(1'b0),
    .i117(1'b0),
    .i118(1'b0),
    .i119(1'b0),
    .i12(1'b0),
    .i120(1'b0),
    .i121(1'b0),
    .i122(1'b0),
    .i123(1'b0),
    .i124(1'b0),
    .i125(1'b0),
    .i126(1'b0),
    .i127(1'b0),
    .i128(1'b0),
    .i129(1'b0),
    .i13(1'b0),
    .i130(1'b0),
    .i131(1'b0),
    .i132(1'b0),
    .i133(1'b0),
    .i134(1'b0),
    .i135(1'b0),
    .i136(1'b0),
    .i137(1'b0),
    .i138(1'b0),
    .i139(1'b0),
    .i14(1'b0),
    .i140(1'b0),
    .i141(1'b0),
    .i142(1'b0),
    .i143(1'b0),
    .i144(1'b0),
    .i145(1'b0),
    .i146(1'b0),
    .i147(1'b0),
    .i148(1'b0),
    .i149(1'b0),
    .i15(1'b0),
    .i150(1'b0),
    .i151(1'b0),
    .i152(1'b0),
    .i153(1'b0),
    .i154(1'b0),
    .i155(1'b0),
    .i156(1'b0),
    .i157(1'b0),
    .i158(1'b0),
    .i159(1'b0),
    .i16(1'b0),
    .i160(1'b0),
    .i161(1'b0),
    .i162(1'b0),
    .i163(1'b0),
    .i164(1'b0),
    .i165(1'b0),
    .i166(1'b0),
    .i167(1'b0),
    .i168(1'b0),
    .i169(1'b0),
    .i17(1'b0),
    .i170(1'b0),
    .i171(1'b0),
    .i172(1'b0),
    .i173(1'b0),
    .i174(1'b0),
    .i175(1'b0),
    .i176(1'b0),
    .i177(1'b0),
    .i178(1'b0),
    .i179(1'b0),
    .i18(1'b0),
    .i180(1'b0),
    .i181(1'b0),
    .i182(1'b0),
    .i183(1'b0),
    .i184(1'b0),
    .i185(1'b0),
    .i186(1'b0),
    .i187(1'b0),
    .i188(1'b0),
    .i189(1'b0),
    .i19(1'b0),
    .i190(1'b0),
    .i191(1'b0),
    .i192(1'b0),
    .i193(1'b0),
    .i194(1'b0),
    .i195(1'b0),
    .i196(1'b0),
    .i197(1'b0),
    .i198(1'b0),
    .i199(1'b0),
    .i2(1'b0),
    .i20(1'b0),
    .i200(1'b0),
    .i201(1'b0),
    .i202(1'b0),
    .i203(1'b0),
    .i204(1'b0),
    .i205(1'b0),
    .i206(1'b0),
    .i207(1'b0),
    .i208(1'b0),
    .i209(1'b0),
    .i21(1'b0),
    .i210(1'b0),
    .i211(1'b0),
    .i212(1'b0),
    .i213(1'b0),
    .i214(1'b0),
    .i215(1'b0),
    .i216(1'b0),
    .i217(1'b0),
    .i218(1'b0),
    .i219(1'b0),
    .i22(1'b0),
    .i220(1'b0),
    .i221(1'b0),
    .i222(1'b0),
    .i223(1'b0),
    .i224(1'b0),
    .i225(1'b0),
    .i226(1'b0),
    .i227(1'b0),
    .i228(1'b0),
    .i229(1'b0),
    .i23(1'b0),
    .i230(1'b0),
    .i231(1'b0),
    .i232(1'b0),
    .i233(1'b0),
    .i234(1'b0),
    .i235(1'b0),
    .i236(1'b0),
    .i237(1'b0),
    .i238(1'b0),
    .i239(1'b0),
    .i24(1'b0),
    .i240(1'b0),
    .i241(1'b0),
    .i242(1'b0),
    .i243(1'b0),
    .i244(1'b0),
    .i245(1'b0),
    .i246(1'b0),
    .i247(1'b0),
    .i248(1'b0),
    .i249(1'b0),
    .i25(1'b0),
    .i250(1'b0),
    .i251(1'b0),
    .i252(1'b0),
    .i253(1'b0),
    .i254(1'b0),
    .i255(1'b0),
    .i26(1'b0),
    .i27(1'b0),
    .i28(1'b0),
    .i29(1'b0),
    .i3(1'b0),
    .i30(1'b0),
    .i31(1'b0),
    .i32(1'b0),
    .i33(1'b0),
    .i34(1'b0),
    .i35(1'b0),
    .i36(1'b0),
    .i37(1'b0),
    .i38(1'b0),
    .i39(1'b0),
    .i4(1'b0),
    .i40(1'b0),
    .i41(1'b0),
    .i42(1'b0),
    .i43(1'b0),
    .i44(1'b0),
    .i45(1'b0),
    .i46(1'b0),
    .i47(1'b0),
    .i48(1'b0),
    .i49(1'b0),
    .i5(1'b0),
    .i50(1'b0),
    .i51(1'b0),
    .i52(1'b0),
    .i53(1'b0),
    .i54(1'b0),
    .i55(1'b0),
    .i56(1'b0),
    .i57(1'b0),
    .i58(1'b0),
    .i59(1'b0),
    .i6(1'b0),
    .i60(1'b0),
    .i61(1'b0),
    .i62(1'b0),
    .i63(1'b0),
    .i64(1'b0),
    .i65(1'b0),
    .i66(1'b0),
    .i67(1'b0),
    .i68(1'b0),
    .i69(1'b0),
    .i7(1'b0),
    .i70(1'b0),
    .i71(1'b0),
    .i72(1'b0),
    .i73(1'b0),
    .i74(1'b0),
    .i75(1'b0),
    .i76(1'b0),
    .i77(1'b0),
    .i78(1'b0),
    .i79(1'b0),
    .i8(1'b1),
    .i80(1'b0),
    .i81(1'b0),
    .i82(1'b0),
    .i83(1'b0),
    .i84(1'b0),
    .i85(1'b0),
    .i86(1'b0),
    .i87(1'b0),
    .i88(1'b0),
    .i89(1'b0),
    .i9(1'b0),
    .i90(1'b0),
    .i91(1'b0),
    .i92(1'b0),
    .i93(1'b0),
    .i94(1'b0),
    .i95(1'b0),
    .i96(1'b0),
    .i97(1'b0),
    .i98(1'b0),
    .i99(1'b0),
    .sel(IR),
    .o(n196));  // ../../rtl/t80se/T80_MCode.vhd(1348)
  binary_mux_s8_w1 mux49 (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b0),
    .i100(1'b0),
    .i101(1'b0),
    .i102(1'b0),
    .i103(1'b0),
    .i104(1'b0),
    .i105(1'b0),
    .i106(1'b0),
    .i107(1'b0),
    .i108(1'b0),
    .i109(1'b0),
    .i11(1'b0),
    .i110(1'b0),
    .i111(1'b0),
    .i112(1'b0),
    .i113(1'b0),
    .i114(1'b0),
    .i115(1'b0),
    .i116(1'b0),
    .i117(1'b0),
    .i118(1'b0),
    .i119(1'b0),
    .i12(1'b0),
    .i120(1'b0),
    .i121(1'b0),
    .i122(1'b0),
    .i123(1'b0),
    .i124(1'b0),
    .i125(1'b0),
    .i126(1'b0),
    .i127(1'b0),
    .i128(1'b0),
    .i129(1'b0),
    .i13(1'b0),
    .i130(1'b0),
    .i131(1'b0),
    .i132(1'b0),
    .i133(1'b0),
    .i134(1'b0),
    .i135(1'b0),
    .i136(1'b0),
    .i137(1'b0),
    .i138(1'b0),
    .i139(1'b0),
    .i14(1'b0),
    .i140(1'b0),
    .i141(1'b0),
    .i142(1'b0),
    .i143(1'b0),
    .i144(1'b0),
    .i145(1'b0),
    .i146(1'b0),
    .i147(1'b0),
    .i148(1'b0),
    .i149(1'b0),
    .i15(1'b0),
    .i150(1'b0),
    .i151(1'b0),
    .i152(1'b0),
    .i153(1'b0),
    .i154(1'b0),
    .i155(1'b0),
    .i156(1'b0),
    .i157(1'b0),
    .i158(1'b0),
    .i159(1'b0),
    .i16(1'b0),
    .i160(1'b0),
    .i161(1'b0),
    .i162(1'b0),
    .i163(1'b0),
    .i164(1'b0),
    .i165(1'b0),
    .i166(1'b0),
    .i167(1'b0),
    .i168(1'b0),
    .i169(1'b0),
    .i17(1'b0),
    .i170(1'b0),
    .i171(1'b0),
    .i172(1'b0),
    .i173(1'b0),
    .i174(1'b0),
    .i175(1'b0),
    .i176(1'b0),
    .i177(1'b0),
    .i178(1'b0),
    .i179(1'b0),
    .i18(1'b0),
    .i180(1'b0),
    .i181(1'b0),
    .i182(1'b0),
    .i183(1'b0),
    .i184(1'b0),
    .i185(1'b0),
    .i186(1'b0),
    .i187(1'b0),
    .i188(1'b0),
    .i189(1'b0),
    .i19(1'b0),
    .i190(1'b0),
    .i191(1'b0),
    .i192(1'b0),
    .i193(1'b0),
    .i194(1'b0),
    .i195(1'b0),
    .i196(1'b0),
    .i197(1'b0),
    .i198(1'b0),
    .i199(1'b0),
    .i2(1'b0),
    .i20(1'b0),
    .i200(1'b0),
    .i201(1'b0),
    .i202(1'b0),
    .i203(1'b0),
    .i204(1'b0),
    .i205(1'b0),
    .i206(1'b0),
    .i207(1'b0),
    .i208(1'b0),
    .i209(1'b0),
    .i21(1'b0),
    .i210(1'b0),
    .i211(1'b0),
    .i212(1'b0),
    .i213(1'b0),
    .i214(1'b0),
    .i215(1'b0),
    .i216(1'b0),
    .i217(1'b1),
    .i218(1'b0),
    .i219(1'b0),
    .i22(1'b0),
    .i220(1'b0),
    .i221(1'b0),
    .i222(1'b0),
    .i223(1'b0),
    .i224(1'b0),
    .i225(1'b0),
    .i226(1'b0),
    .i227(1'b0),
    .i228(1'b0),
    .i229(1'b0),
    .i23(1'b0),
    .i230(1'b0),
    .i231(1'b0),
    .i232(1'b0),
    .i233(1'b0),
    .i234(1'b0),
    .i235(1'b0),
    .i236(1'b0),
    .i237(1'b0),
    .i238(1'b0),
    .i239(1'b0),
    .i24(1'b0),
    .i240(1'b0),
    .i241(1'b0),
    .i242(1'b0),
    .i243(1'b0),
    .i244(1'b0),
    .i245(1'b0),
    .i246(1'b0),
    .i247(1'b0),
    .i248(1'b0),
    .i249(1'b0),
    .i25(1'b0),
    .i250(1'b0),
    .i251(1'b0),
    .i252(1'b0),
    .i253(1'b0),
    .i254(1'b0),
    .i255(1'b0),
    .i26(1'b0),
    .i27(1'b0),
    .i28(1'b0),
    .i29(1'b0),
    .i3(1'b0),
    .i30(1'b0),
    .i31(1'b0),
    .i32(1'b0),
    .i33(1'b0),
    .i34(1'b0),
    .i35(1'b0),
    .i36(1'b0),
    .i37(1'b0),
    .i38(1'b0),
    .i39(1'b0),
    .i4(1'b0),
    .i40(1'b0),
    .i41(1'b0),
    .i42(1'b0),
    .i43(1'b0),
    .i44(1'b0),
    .i45(1'b0),
    .i46(1'b0),
    .i47(1'b0),
    .i48(1'b0),
    .i49(1'b0),
    .i5(1'b0),
    .i50(1'b0),
    .i51(1'b0),
    .i52(1'b0),
    .i53(1'b0),
    .i54(1'b0),
    .i55(1'b0),
    .i56(1'b0),
    .i57(1'b0),
    .i58(1'b0),
    .i59(1'b0),
    .i6(1'b0),
    .i60(1'b0),
    .i61(1'b0),
    .i62(1'b0),
    .i63(1'b0),
    .i64(1'b0),
    .i65(1'b0),
    .i66(1'b0),
    .i67(1'b0),
    .i68(1'b0),
    .i69(1'b0),
    .i7(1'b0),
    .i70(1'b0),
    .i71(1'b0),
    .i72(1'b0),
    .i73(1'b0),
    .i74(1'b0),
    .i75(1'b0),
    .i76(1'b0),
    .i77(1'b0),
    .i78(1'b0),
    .i79(1'b0),
    .i8(1'b0),
    .i80(1'b0),
    .i81(1'b0),
    .i82(1'b0),
    .i83(1'b0),
    .i84(1'b0),
    .i85(1'b0),
    .i86(1'b0),
    .i87(1'b0),
    .i88(1'b0),
    .i89(1'b0),
    .i9(1'b0),
    .i90(1'b0),
    .i91(1'b0),
    .i92(1'b0),
    .i93(1'b0),
    .i94(1'b0),
    .i95(1'b0),
    .i96(1'b0),
    .i97(1'b0),
    .i98(1'b0),
    .i99(1'b0),
    .sel(IR),
    .o(n197));  // ../../rtl/t80se/T80_MCode.vhd(1348)
  binary_mux_s2_w1 mux5 (
    .i0(1'b0),
    .i1(1'b0),
    .i2(1'b1),
    .i3(1'b0),
    .sel(MCycle[2:1]),
    .o(n156));  // ../../rtl/t80se/T80_MCode.vhd(486)
  binary_mux_s8_w1 mux50 (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b0),
    .i100(1'b0),
    .i101(1'b0),
    .i102(1'b0),
    .i103(1'b0),
    .i104(1'b0),
    .i105(1'b0),
    .i106(1'b0),
    .i107(1'b0),
    .i108(1'b0),
    .i109(1'b0),
    .i11(1'b0),
    .i110(1'b0),
    .i111(1'b0),
    .i112(1'b0),
    .i113(1'b0),
    .i114(1'b0),
    .i115(1'b0),
    .i116(1'b0),
    .i117(1'b0),
    .i118(1'b0),
    .i119(1'b0),
    .i12(1'b1),
    .i120(1'b0),
    .i121(1'b0),
    .i122(1'b0),
    .i123(1'b0),
    .i124(1'b0),
    .i125(1'b0),
    .i126(1'b0),
    .i127(1'b0),
    .i128(1'b1),
    .i129(1'b1),
    .i13(1'b1),
    .i130(1'b1),
    .i131(1'b1),
    .i132(1'b1),
    .i133(1'b1),
    .i134(n1),
    .i135(1'b1),
    .i136(1'b1),
    .i137(1'b1),
    .i138(1'b1),
    .i139(1'b1),
    .i14(1'b0),
    .i140(1'b1),
    .i141(1'b1),
    .i142(n1),
    .i143(1'b1),
    .i144(1'b1),
    .i145(1'b1),
    .i146(1'b1),
    .i147(1'b1),
    .i148(1'b1),
    .i149(1'b1),
    .i15(1'b1),
    .i150(n1),
    .i151(1'b1),
    .i152(1'b1),
    .i153(1'b1),
    .i154(1'b1),
    .i155(1'b1),
    .i156(1'b1),
    .i157(1'b1),
    .i158(n1),
    .i159(1'b1),
    .i16(n335),
    .i160(1'b1),
    .i161(1'b1),
    .i162(1'b1),
    .i163(1'b1),
    .i164(1'b1),
    .i165(1'b1),
    .i166(n1),
    .i167(1'b1),
    .i168(1'b1),
    .i169(1'b1),
    .i17(1'b0),
    .i170(1'b1),
    .i171(1'b1),
    .i172(1'b1),
    .i173(1'b1),
    .i174(n1),
    .i175(1'b1),
    .i176(1'b1),
    .i177(1'b1),
    .i178(1'b1),
    .i179(1'b1),
    .i18(1'b0),
    .i180(1'b1),
    .i181(1'b1),
    .i182(n1),
    .i183(1'b1),
    .i184(1'b1),
    .i185(1'b1),
    .i186(1'b1),
    .i187(1'b1),
    .i188(1'b1),
    .i189(1'b1),
    .i19(1'b0),
    .i190(n1),
    .i191(1'b1),
    .i192(1'b0),
    .i193(1'b0),
    .i194(1'b0),
    .i195(1'b0),
    .i196(1'b0),
    .i197(1'b0),
    .i198(n77),
    .i199(1'b0),
    .i2(1'b0),
    .i20(1'b1),
    .i200(1'b0),
    .i201(1'b0),
    .i202(1'b0),
    .i203(1'b0),
    .i204(1'b0),
    .i205(1'b0),
    .i206(n77),
    .i207(1'b0),
    .i208(1'b0),
    .i209(1'b0),
    .i21(1'b1),
    .i210(1'b0),
    .i211(1'b0),
    .i212(1'b0),
    .i213(1'b0),
    .i214(n77),
    .i215(1'b0),
    .i216(1'b0),
    .i217(1'b0),
    .i218(1'b0),
    .i219(1'b0),
    .i22(1'b0),
    .i220(1'b0),
    .i221(1'b0),
    .i222(n77),
    .i223(1'b0),
    .i224(1'b0),
    .i225(1'b0),
    .i226(1'b0),
    .i227(1'b0),
    .i228(1'b0),
    .i229(1'b0),
    .i23(1'b1),
    .i230(n77),
    .i231(1'b0),
    .i232(1'b0),
    .i233(1'b0),
    .i234(1'b0),
    .i235(1'b0),
    .i236(1'b0),
    .i237(1'b0),
    .i238(n77),
    .i239(1'b0),
    .i24(1'b0),
    .i240(1'b0),
    .i241(1'b0),
    .i242(1'b0),
    .i243(1'b0),
    .i244(1'b0),
    .i245(1'b0),
    .i246(n77),
    .i247(1'b0),
    .i248(1'b0),
    .i249(1'b0),
    .i25(n39),
    .i250(1'b0),
    .i251(1'b0),
    .i252(1'b0),
    .i253(1'b0),
    .i254(n77),
    .i255(1'b0),
    .i26(1'b0),
    .i27(1'b0),
    .i28(1'b1),
    .i29(1'b1),
    .i3(1'b0),
    .i30(1'b0),
    .i31(1'b1),
    .i32(1'b0),
    .i33(1'b0),
    .i34(1'b0),
    .i35(1'b0),
    .i36(1'b1),
    .i37(1'b1),
    .i38(1'b0),
    .i39(1'b1),
    .i4(1'b1),
    .i40(1'b0),
    .i41(n39),
    .i42(1'b0),
    .i43(1'b0),
    .i44(1'b1),
    .i45(1'b1),
    .i46(1'b0),
    .i47(1'b0),
    .i48(1'b0),
    .i49(1'b0),
    .i5(1'b1),
    .i50(1'b0),
    .i51(1'b0),
    .i52(n1),
    .i53(n1),
    .i54(1'b0),
    .i55(1'b0),
    .i56(1'b0),
    .i57(n39),
    .i58(1'b0),
    .i59(1'b0),
    .i6(1'b0),
    .i60(1'b1),
    .i61(1'b1),
    .i62(1'b0),
    .i63(1'b0),
    .i64(1'b0),
    .i65(1'b0),
    .i66(1'b0),
    .i67(1'b0),
    .i68(1'b0),
    .i69(1'b0),
    .i7(1'b1),
    .i70(1'b0),
    .i71(1'b0),
    .i72(1'b0),
    .i73(1'b0),
    .i74(1'b0),
    .i75(1'b0),
    .i76(1'b0),
    .i77(1'b0),
    .i78(1'b0),
    .i79(1'b0),
    .i8(1'b0),
    .i80(1'b0),
    .i81(1'b0),
    .i82(1'b0),
    .i83(1'b0),
    .i84(1'b0),
    .i85(1'b0),
    .i86(1'b0),
    .i87(1'b0),
    .i88(1'b0),
    .i89(1'b0),
    .i9(n39),
    .i90(1'b0),
    .i91(1'b0),
    .i92(1'b0),
    .i93(1'b0),
    .i94(1'b0),
    .i95(1'b0),
    .i96(1'b0),
    .i97(1'b0),
    .i98(1'b0),
    .i99(1'b0),
    .sel(IR),
    .o(n198));  // ../../rtl/t80se/T80_MCode.vhd(1348)
  binary_mux_s8_w1 mux51 (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b0),
    .i100(1'b0),
    .i101(1'b0),
    .i102(1'b0),
    .i103(1'b0),
    .i104(1'b0),
    .i105(1'b0),
    .i106(1'b0),
    .i107(1'b0),
    .i108(1'b0),
    .i109(1'b0),
    .i11(1'b0),
    .i110(1'b0),
    .i111(1'b0),
    .i112(1'b0),
    .i113(1'b0),
    .i114(1'b0),
    .i115(1'b0),
    .i116(1'b0),
    .i117(1'b0),
    .i118(1'b0),
    .i119(1'b0),
    .i12(1'b1),
    .i120(1'b0),
    .i121(1'b0),
    .i122(1'b0),
    .i123(1'b0),
    .i124(1'b0),
    .i125(1'b0),
    .i126(1'b0),
    .i127(1'b0),
    .i128(1'b0),
    .i129(1'b0),
    .i13(1'b1),
    .i130(1'b0),
    .i131(1'b0),
    .i132(1'b0),
    .i133(1'b0),
    .i134(1'b0),
    .i135(1'b0),
    .i136(1'b0),
    .i137(1'b0),
    .i138(1'b0),
    .i139(1'b0),
    .i14(1'b0),
    .i140(1'b0),
    .i141(1'b0),
    .i142(1'b0),
    .i143(1'b0),
    .i144(1'b0),
    .i145(1'b0),
    .i146(1'b0),
    .i147(1'b0),
    .i148(1'b0),
    .i149(1'b0),
    .i15(1'b0),
    .i150(1'b0),
    .i151(1'b0),
    .i152(1'b0),
    .i153(1'b0),
    .i154(1'b0),
    .i155(1'b0),
    .i156(1'b0),
    .i157(1'b0),
    .i158(1'b0),
    .i159(1'b0),
    .i16(1'b0),
    .i160(1'b0),
    .i161(1'b0),
    .i162(1'b0),
    .i163(1'b0),
    .i164(1'b0),
    .i165(1'b0),
    .i166(1'b0),
    .i167(1'b0),
    .i168(1'b0),
    .i169(1'b0),
    .i17(1'b0),
    .i170(1'b0),
    .i171(1'b0),
    .i172(1'b0),
    .i173(1'b0),
    .i174(1'b0),
    .i175(1'b0),
    .i176(1'b0),
    .i177(1'b0),
    .i178(1'b0),
    .i179(1'b0),
    .i18(1'b0),
    .i180(1'b0),
    .i181(1'b0),
    .i182(1'b0),
    .i183(1'b0),
    .i184(1'b0),
    .i185(1'b0),
    .i186(1'b0),
    .i187(1'b0),
    .i188(1'b0),
    .i189(1'b0),
    .i19(1'b0),
    .i190(1'b0),
    .i191(1'b0),
    .i192(1'b0),
    .i193(1'b0),
    .i194(1'b0),
    .i195(1'b0),
    .i196(1'b0),
    .i197(1'b0),
    .i198(1'b0),
    .i199(1'b0),
    .i2(1'b0),
    .i20(1'b1),
    .i200(1'b0),
    .i201(1'b0),
    .i202(1'b0),
    .i203(1'b0),
    .i204(1'b0),
    .i205(1'b0),
    .i206(1'b0),
    .i207(1'b0),
    .i208(1'b0),
    .i209(1'b0),
    .i21(1'b1),
    .i210(1'b0),
    .i211(1'b0),
    .i212(1'b0),
    .i213(1'b0),
    .i214(1'b0),
    .i215(1'b0),
    .i216(1'b0),
    .i217(1'b0),
    .i218(1'b0),
    .i219(1'b0),
    .i22(1'b0),
    .i220(1'b0),
    .i221(1'b0),
    .i222(1'b0),
    .i223(1'b0),
    .i224(1'b0),
    .i225(1'b0),
    .i226(1'b0),
    .i227(1'b0),
    .i228(1'b0),
    .i229(1'b0),
    .i23(1'b0),
    .i230(1'b0),
    .i231(1'b0),
    .i232(1'b0),
    .i233(1'b0),
    .i234(1'b0),
    .i235(1'b0),
    .i236(1'b0),
    .i237(1'b0),
    .i238(1'b0),
    .i239(1'b0),
    .i24(1'b0),
    .i240(1'b0),
    .i241(1'b0),
    .i242(1'b0),
    .i243(1'b0),
    .i244(1'b0),
    .i245(1'b0),
    .i246(1'b0),
    .i247(1'b0),
    .i248(1'b0),
    .i249(1'b0),
    .i25(1'b0),
    .i250(1'b0),
    .i251(1'b0),
    .i252(1'b0),
    .i253(1'b0),
    .i254(1'b0),
    .i255(1'b0),
    .i26(1'b0),
    .i27(1'b0),
    .i28(1'b1),
    .i29(1'b1),
    .i3(1'b0),
    .i30(1'b0),
    .i31(1'b0),
    .i32(1'b0),
    .i33(1'b0),
    .i34(1'b0),
    .i35(1'b0),
    .i36(1'b1),
    .i37(1'b1),
    .i38(1'b0),
    .i39(1'b0),
    .i4(1'b1),
    .i40(1'b0),
    .i41(1'b0),
    .i42(1'b0),
    .i43(1'b0),
    .i44(1'b1),
    .i45(1'b1),
    .i46(1'b0),
    .i47(1'b0),
    .i48(1'b0),
    .i49(1'b0),
    .i5(1'b1),
    .i50(1'b0),
    .i51(1'b0),
    .i52(n1),
    .i53(n1),
    .i54(1'b0),
    .i55(1'b0),
    .i56(1'b0),
    .i57(1'b0),
    .i58(1'b0),
    .i59(1'b0),
    .i6(1'b0),
    .i60(1'b1),
    .i61(1'b1),
    .i62(1'b0),
    .i63(1'b0),
    .i64(1'b0),
    .i65(1'b0),
    .i66(1'b0),
    .i67(1'b0),
    .i68(1'b0),
    .i69(1'b0),
    .i7(1'b0),
    .i70(1'b0),
    .i71(1'b0),
    .i72(1'b0),
    .i73(1'b0),
    .i74(1'b0),
    .i75(1'b0),
    .i76(1'b0),
    .i77(1'b0),
    .i78(1'b0),
    .i79(1'b0),
    .i8(1'b0),
    .i80(1'b0),
    .i81(1'b0),
    .i82(1'b0),
    .i83(1'b0),
    .i84(1'b0),
    .i85(1'b0),
    .i86(1'b0),
    .i87(1'b0),
    .i88(1'b0),
    .i89(1'b0),
    .i9(1'b0),
    .i90(1'b0),
    .i91(1'b0),
    .i92(1'b0),
    .i93(1'b0),
    .i94(1'b0),
    .i95(1'b0),
    .i96(1'b0),
    .i97(1'b0),
    .i98(1'b0),
    .i99(1'b0),
    .sel(IR),
    .o(n199));  // ../../rtl/t80se/T80_MCode.vhd(1348)
  binary_mux_s8_w1 mux52 (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b0),
    .i100(1'b0),
    .i101(1'b0),
    .i102(1'b0),
    .i103(1'b0),
    .i104(1'b0),
    .i105(1'b0),
    .i106(1'b0),
    .i107(1'b0),
    .i108(1'b0),
    .i109(1'b0),
    .i11(1'b0),
    .i110(1'b0),
    .i111(1'b0),
    .i112(1'b0),
    .i113(1'b0),
    .i114(1'b0),
    .i115(1'b0),
    .i116(1'b0),
    .i117(1'b0),
    .i118(1'b0),
    .i119(1'b0),
    .i12(1'b0),
    .i120(1'b0),
    .i121(1'b0),
    .i122(1'b0),
    .i123(1'b0),
    .i124(1'b0),
    .i125(1'b0),
    .i126(1'b0),
    .i127(1'b0),
    .i128(1'b0),
    .i129(1'b0),
    .i13(1'b0),
    .i130(1'b0),
    .i131(1'b0),
    .i132(1'b0),
    .i133(1'b0),
    .i134(1'b0),
    .i135(1'b0),
    .i136(1'b0),
    .i137(1'b0),
    .i138(1'b0),
    .i139(1'b0),
    .i14(1'b0),
    .i140(1'b0),
    .i141(1'b0),
    .i142(1'b0),
    .i143(1'b0),
    .i144(1'b0),
    .i145(1'b0),
    .i146(1'b0),
    .i147(1'b0),
    .i148(1'b0),
    .i149(1'b0),
    .i15(1'b0),
    .i150(1'b0),
    .i151(1'b0),
    .i152(1'b0),
    .i153(1'b0),
    .i154(1'b0),
    .i155(1'b0),
    .i156(1'b0),
    .i157(1'b0),
    .i158(1'b0),
    .i159(1'b0),
    .i16(1'b0),
    .i160(1'b0),
    .i161(1'b0),
    .i162(1'b0),
    .i163(1'b0),
    .i164(1'b0),
    .i165(1'b0),
    .i166(1'b0),
    .i167(1'b0),
    .i168(1'b0),
    .i169(1'b0),
    .i17(1'b0),
    .i170(1'b0),
    .i171(1'b0),
    .i172(1'b0),
    .i173(1'b0),
    .i174(1'b0),
    .i175(1'b0),
    .i176(1'b0),
    .i177(1'b0),
    .i178(1'b0),
    .i179(1'b0),
    .i18(1'b0),
    .i180(1'b0),
    .i181(1'b0),
    .i182(1'b0),
    .i183(1'b0),
    .i184(1'b0),
    .i185(1'b0),
    .i186(1'b0),
    .i187(1'b0),
    .i188(1'b0),
    .i189(1'b0),
    .i19(1'b0),
    .i190(1'b0),
    .i191(1'b0),
    .i192(1'b0),
    .i193(1'b0),
    .i194(1'b0),
    .i195(1'b0),
    .i196(1'b0),
    .i197(1'b0),
    .i198(1'b0),
    .i199(1'b0),
    .i2(1'b0),
    .i20(1'b0),
    .i200(1'b0),
    .i201(1'b0),
    .i202(1'b0),
    .i203(1'b0),
    .i204(1'b0),
    .i205(1'b0),
    .i206(1'b0),
    .i207(1'b0),
    .i208(1'b0),
    .i209(1'b0),
    .i21(1'b0),
    .i210(1'b0),
    .i211(1'b0),
    .i212(1'b0),
    .i213(1'b0),
    .i214(1'b0),
    .i215(1'b0),
    .i216(1'b0),
    .i217(1'b0),
    .i218(1'b0),
    .i219(1'b0),
    .i22(1'b0),
    .i220(1'b0),
    .i221(1'b0),
    .i222(1'b0),
    .i223(1'b0),
    .i224(1'b0),
    .i225(1'b0),
    .i226(1'b0),
    .i227(1'b0),
    .i228(1'b0),
    .i229(1'b0),
    .i23(1'b0),
    .i230(1'b0),
    .i231(1'b0),
    .i232(1'b0),
    .i233(1'b0),
    .i234(1'b0),
    .i235(1'b0),
    .i236(1'b0),
    .i237(1'b0),
    .i238(1'b0),
    .i239(1'b0),
    .i24(1'b0),
    .i240(1'b0),
    .i241(1'b0),
    .i242(1'b0),
    .i243(1'b0),
    .i244(1'b0),
    .i245(1'b0),
    .i246(1'b0),
    .i247(1'b0),
    .i248(1'b0),
    .i249(1'b0),
    .i25(1'b0),
    .i250(1'b0),
    .i251(1'b0),
    .i252(1'b0),
    .i253(1'b0),
    .i254(1'b0),
    .i255(1'b0),
    .i26(1'b0),
    .i27(1'b0),
    .i28(1'b0),
    .i29(1'b0),
    .i3(1'b0),
    .i30(1'b0),
    .i31(1'b0),
    .i32(1'b0),
    .i33(1'b0),
    .i34(1'b0),
    .i35(1'b0),
    .i36(1'b0),
    .i37(1'b0),
    .i38(1'b0),
    .i39(1'b0),
    .i4(1'b0),
    .i40(1'b0),
    .i41(1'b0),
    .i42(1'b0),
    .i43(1'b0),
    .i44(1'b0),
    .i45(1'b0),
    .i46(1'b0),
    .i47(1'b1),
    .i48(1'b0),
    .i49(1'b0),
    .i5(1'b0),
    .i50(1'b0),
    .i51(1'b0),
    .i52(1'b0),
    .i53(1'b0),
    .i54(1'b0),
    .i55(1'b0),
    .i56(1'b0),
    .i57(1'b0),
    .i58(1'b0),
    .i59(1'b0),
    .i6(1'b0),
    .i60(1'b0),
    .i61(1'b0),
    .i62(1'b0),
    .i63(1'b0),
    .i64(1'b0),
    .i65(1'b0),
    .i66(1'b0),
    .i67(1'b0),
    .i68(1'b0),
    .i69(1'b0),
    .i7(1'b0),
    .i70(1'b0),
    .i71(1'b0),
    .i72(1'b0),
    .i73(1'b0),
    .i74(1'b0),
    .i75(1'b0),
    .i76(1'b0),
    .i77(1'b0),
    .i78(1'b0),
    .i79(1'b0),
    .i8(1'b0),
    .i80(1'b0),
    .i81(1'b0),
    .i82(1'b0),
    .i83(1'b0),
    .i84(1'b0),
    .i85(1'b0),
    .i86(1'b0),
    .i87(1'b0),
    .i88(1'b0),
    .i89(1'b0),
    .i9(1'b0),
    .i90(1'b0),
    .i91(1'b0),
    .i92(1'b0),
    .i93(1'b0),
    .i94(1'b0),
    .i95(1'b0),
    .i96(1'b0),
    .i97(1'b0),
    .i98(1'b0),
    .i99(1'b0),
    .sel(IR),
    .o(n201));  // ../../rtl/t80se/T80_MCode.vhd(1348)
  binary_mux_s8_w1 mux53 (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b0),
    .i100(1'b0),
    .i101(1'b0),
    .i102(1'b0),
    .i103(1'b0),
    .i104(1'b0),
    .i105(1'b0),
    .i106(1'b0),
    .i107(1'b0),
    .i108(1'b0),
    .i109(1'b0),
    .i11(1'b0),
    .i110(1'b0),
    .i111(1'b0),
    .i112(1'b0),
    .i113(1'b0),
    .i114(1'b0),
    .i115(1'b0),
    .i116(1'b0),
    .i117(1'b0),
    .i118(1'b0),
    .i119(1'b0),
    .i12(1'b0),
    .i120(1'b0),
    .i121(1'b0),
    .i122(1'b0),
    .i123(1'b0),
    .i124(1'b0),
    .i125(1'b0),
    .i126(1'b0),
    .i127(1'b0),
    .i128(1'b0),
    .i129(1'b0),
    .i13(1'b0),
    .i130(1'b0),
    .i131(1'b0),
    .i132(1'b0),
    .i133(1'b0),
    .i134(1'b0),
    .i135(1'b0),
    .i136(1'b0),
    .i137(1'b0),
    .i138(1'b0),
    .i139(1'b0),
    .i14(1'b0),
    .i140(1'b0),
    .i141(1'b0),
    .i142(1'b0),
    .i143(1'b0),
    .i144(1'b0),
    .i145(1'b0),
    .i146(1'b0),
    .i147(1'b0),
    .i148(1'b0),
    .i149(1'b0),
    .i15(1'b0),
    .i150(1'b0),
    .i151(1'b0),
    .i152(1'b0),
    .i153(1'b0),
    .i154(1'b0),
    .i155(1'b0),
    .i156(1'b0),
    .i157(1'b0),
    .i158(1'b0),
    .i159(1'b0),
    .i16(1'b0),
    .i160(1'b0),
    .i161(1'b0),
    .i162(1'b0),
    .i163(1'b0),
    .i164(1'b0),
    .i165(1'b0),
    .i166(1'b0),
    .i167(1'b0),
    .i168(1'b0),
    .i169(1'b0),
    .i17(1'b0),
    .i170(1'b0),
    .i171(1'b0),
    .i172(1'b0),
    .i173(1'b0),
    .i174(1'b0),
    .i175(1'b0),
    .i176(1'b0),
    .i177(1'b0),
    .i178(1'b0),
    .i179(1'b0),
    .i18(1'b0),
    .i180(1'b0),
    .i181(1'b0),
    .i182(1'b0),
    .i183(1'b0),
    .i184(1'b0),
    .i185(1'b0),
    .i186(1'b0),
    .i187(1'b0),
    .i188(1'b0),
    .i189(1'b0),
    .i19(1'b0),
    .i190(1'b0),
    .i191(1'b0),
    .i192(1'b0),
    .i193(1'b0),
    .i194(1'b0),
    .i195(1'b0),
    .i196(1'b0),
    .i197(1'b0),
    .i198(1'b0),
    .i199(1'b0),
    .i2(1'b0),
    .i20(1'b0),
    .i200(1'b0),
    .i201(1'b0),
    .i202(1'b0),
    .i203(1'b0),
    .i204(1'b0),
    .i205(1'b0),
    .i206(1'b0),
    .i207(1'b0),
    .i208(1'b0),
    .i209(1'b0),
    .i21(1'b0),
    .i210(1'b0),
    .i211(1'b0),
    .i212(1'b0),
    .i213(1'b0),
    .i214(1'b0),
    .i215(1'b0),
    .i216(1'b0),
    .i217(1'b0),
    .i218(1'b0),
    .i219(1'b0),
    .i22(1'b0),
    .i220(1'b0),
    .i221(1'b0),
    .i222(1'b0),
    .i223(1'b0),
    .i224(1'b0),
    .i225(1'b0),
    .i226(1'b0),
    .i227(1'b0),
    .i228(1'b0),
    .i229(1'b0),
    .i23(1'b0),
    .i230(1'b0),
    .i231(1'b0),
    .i232(1'b0),
    .i233(1'b0),
    .i234(1'b0),
    .i235(1'b0),
    .i236(1'b0),
    .i237(1'b0),
    .i238(1'b0),
    .i239(1'b0),
    .i24(1'b0),
    .i240(1'b0),
    .i241(1'b0),
    .i242(1'b0),
    .i243(1'b0),
    .i244(1'b0),
    .i245(1'b0),
    .i246(1'b0),
    .i247(1'b0),
    .i248(1'b0),
    .i249(1'b0),
    .i25(1'b0),
    .i250(1'b0),
    .i251(1'b0),
    .i252(1'b0),
    .i253(1'b0),
    .i254(1'b0),
    .i255(1'b0),
    .i26(1'b0),
    .i27(1'b0),
    .i28(1'b0),
    .i29(1'b0),
    .i3(1'b0),
    .i30(1'b0),
    .i31(1'b0),
    .i32(1'b0),
    .i33(1'b0),
    .i34(1'b0),
    .i35(1'b0),
    .i36(1'b0),
    .i37(1'b0),
    .i38(1'b0),
    .i39(1'b0),
    .i4(1'b0),
    .i40(1'b0),
    .i41(1'b0),
    .i42(1'b0),
    .i43(1'b0),
    .i44(1'b0),
    .i45(1'b0),
    .i46(1'b0),
    .i47(1'b0),
    .i48(1'b0),
    .i49(1'b0),
    .i5(1'b0),
    .i50(1'b0),
    .i51(1'b0),
    .i52(1'b0),
    .i53(1'b0),
    .i54(1'b0),
    .i55(1'b0),
    .i56(1'b0),
    .i57(1'b0),
    .i58(1'b0),
    .i59(1'b0),
    .i6(1'b0),
    .i60(1'b0),
    .i61(1'b0),
    .i62(1'b0),
    .i63(1'b1),
    .i64(1'b0),
    .i65(1'b0),
    .i66(1'b0),
    .i67(1'b0),
    .i68(1'b0),
    .i69(1'b0),
    .i7(1'b0),
    .i70(1'b0),
    .i71(1'b0),
    .i72(1'b0),
    .i73(1'b0),
    .i74(1'b0),
    .i75(1'b0),
    .i76(1'b0),
    .i77(1'b0),
    .i78(1'b0),
    .i79(1'b0),
    .i8(1'b0),
    .i80(1'b0),
    .i81(1'b0),
    .i82(1'b0),
    .i83(1'b0),
    .i84(1'b0),
    .i85(1'b0),
    .i86(1'b0),
    .i87(1'b0),
    .i88(1'b0),
    .i89(1'b0),
    .i9(1'b0),
    .i90(1'b0),
    .i91(1'b0),
    .i92(1'b0),
    .i93(1'b0),
    .i94(1'b0),
    .i95(1'b0),
    .i96(1'b0),
    .i97(1'b0),
    .i98(1'b0),
    .i99(1'b0),
    .sel(IR),
    .o(n202));  // ../../rtl/t80se/T80_MCode.vhd(1348)
  binary_mux_s8_w1 mux54 (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b0),
    .i100(1'b0),
    .i101(1'b0),
    .i102(1'b0),
    .i103(1'b0),
    .i104(1'b0),
    .i105(1'b0),
    .i106(1'b0),
    .i107(1'b0),
    .i108(1'b0),
    .i109(1'b0),
    .i11(1'b0),
    .i110(1'b0),
    .i111(1'b0),
    .i112(1'b0),
    .i113(1'b0),
    .i114(1'b0),
    .i115(1'b0),
    .i116(1'b0),
    .i117(1'b0),
    .i118(1'b0),
    .i119(1'b0),
    .i12(1'b0),
    .i120(1'b0),
    .i121(1'b0),
    .i122(1'b0),
    .i123(1'b0),
    .i124(1'b0),
    .i125(1'b0),
    .i126(1'b0),
    .i127(1'b0),
    .i128(1'b0),
    .i129(1'b0),
    .i13(1'b0),
    .i130(1'b0),
    .i131(1'b0),
    .i132(1'b0),
    .i133(1'b0),
    .i134(1'b0),
    .i135(1'b0),
    .i136(1'b0),
    .i137(1'b0),
    .i138(1'b0),
    .i139(1'b0),
    .i14(1'b0),
    .i140(1'b0),
    .i141(1'b0),
    .i142(1'b0),
    .i143(1'b0),
    .i144(1'b0),
    .i145(1'b0),
    .i146(1'b0),
    .i147(1'b0),
    .i148(1'b0),
    .i149(1'b0),
    .i15(1'b0),
    .i150(1'b0),
    .i151(1'b0),
    .i152(1'b0),
    .i153(1'b0),
    .i154(1'b0),
    .i155(1'b0),
    .i156(1'b0),
    .i157(1'b0),
    .i158(1'b0),
    .i159(1'b0),
    .i16(1'b0),
    .i160(1'b0),
    .i161(1'b0),
    .i162(1'b0),
    .i163(1'b0),
    .i164(1'b0),
    .i165(1'b0),
    .i166(1'b0),
    .i167(1'b0),
    .i168(1'b0),
    .i169(1'b0),
    .i17(1'b0),
    .i170(1'b0),
    .i171(1'b0),
    .i172(1'b0),
    .i173(1'b0),
    .i174(1'b0),
    .i175(1'b0),
    .i176(1'b0),
    .i177(1'b0),
    .i178(1'b0),
    .i179(1'b0),
    .i18(1'b0),
    .i180(1'b0),
    .i181(1'b0),
    .i182(1'b0),
    .i183(1'b0),
    .i184(1'b0),
    .i185(1'b0),
    .i186(1'b0),
    .i187(1'b0),
    .i188(1'b0),
    .i189(1'b0),
    .i19(1'b0),
    .i190(1'b0),
    .i191(1'b0),
    .i192(1'b0),
    .i193(1'b0),
    .i194(1'b0),
    .i195(1'b0),
    .i196(1'b0),
    .i197(1'b0),
    .i198(1'b0),
    .i199(1'b0),
    .i2(1'b0),
    .i20(1'b0),
    .i200(1'b0),
    .i201(1'b0),
    .i202(1'b0),
    .i203(1'b0),
    .i204(1'b0),
    .i205(1'b0),
    .i206(1'b0),
    .i207(1'b0),
    .i208(1'b0),
    .i209(1'b0),
    .i21(1'b0),
    .i210(1'b0),
    .i211(1'b0),
    .i212(1'b0),
    .i213(1'b0),
    .i214(1'b0),
    .i215(1'b0),
    .i216(1'b0),
    .i217(1'b0),
    .i218(1'b0),
    .i219(1'b0),
    .i22(1'b0),
    .i220(1'b0),
    .i221(1'b0),
    .i222(1'b0),
    .i223(1'b0),
    .i224(1'b0),
    .i225(1'b0),
    .i226(1'b0),
    .i227(1'b0),
    .i228(1'b0),
    .i229(1'b0),
    .i23(1'b0),
    .i230(1'b0),
    .i231(1'b0),
    .i232(1'b0),
    .i233(1'b0),
    .i234(1'b0),
    .i235(1'b0),
    .i236(1'b0),
    .i237(1'b0),
    .i238(1'b0),
    .i239(1'b0),
    .i24(1'b0),
    .i240(1'b0),
    .i241(1'b0),
    .i242(1'b0),
    .i243(1'b0),
    .i244(1'b0),
    .i245(1'b0),
    .i246(1'b0),
    .i247(1'b0),
    .i248(1'b0),
    .i249(1'b0),
    .i25(1'b0),
    .i250(1'b0),
    .i251(1'b0),
    .i252(1'b0),
    .i253(1'b0),
    .i254(1'b0),
    .i255(1'b0),
    .i26(1'b0),
    .i27(1'b0),
    .i28(1'b0),
    .i29(1'b0),
    .i3(1'b0),
    .i30(1'b0),
    .i31(1'b0),
    .i32(1'b0),
    .i33(1'b0),
    .i34(1'b0),
    .i35(1'b0),
    .i36(1'b0),
    .i37(1'b0),
    .i38(1'b0),
    .i39(1'b0),
    .i4(1'b0),
    .i40(1'b0),
    .i41(1'b0),
    .i42(1'b0),
    .i43(1'b0),
    .i44(1'b0),
    .i45(1'b0),
    .i46(1'b0),
    .i47(1'b0),
    .i48(1'b0),
    .i49(1'b0),
    .i5(1'b0),
    .i50(1'b0),
    .i51(1'b0),
    .i52(1'b0),
    .i53(1'b0),
    .i54(1'b0),
    .i55(1'b1),
    .i56(1'b0),
    .i57(1'b0),
    .i58(1'b0),
    .i59(1'b0),
    .i6(1'b0),
    .i60(1'b0),
    .i61(1'b0),
    .i62(1'b0),
    .i63(1'b0),
    .i64(1'b0),
    .i65(1'b0),
    .i66(1'b0),
    .i67(1'b0),
    .i68(1'b0),
    .i69(1'b0),
    .i7(1'b0),
    .i70(1'b0),
    .i71(1'b0),
    .i72(1'b0),
    .i73(1'b0),
    .i74(1'b0),
    .i75(1'b0),
    .i76(1'b0),
    .i77(1'b0),
    .i78(1'b0),
    .i79(1'b0),
    .i8(1'b0),
    .i80(1'b0),
    .i81(1'b0),
    .i82(1'b0),
    .i83(1'b0),
    .i84(1'b0),
    .i85(1'b0),
    .i86(1'b0),
    .i87(1'b0),
    .i88(1'b0),
    .i89(1'b0),
    .i9(1'b0),
    .i90(1'b0),
    .i91(1'b0),
    .i92(1'b0),
    .i93(1'b0),
    .i94(1'b0),
    .i95(1'b0),
    .i96(1'b0),
    .i97(1'b0),
    .i98(1'b0),
    .i99(1'b0),
    .sel(IR),
    .o(n203));  // ../../rtl/t80se/T80_MCode.vhd(1348)
  binary_mux_s8_w1 mux55 (
    .i0(n114),
    .i1(1'b0),
    .i10(1'b0),
    .i100(1'b0),
    .i101(1'b0),
    .i102(1'b0),
    .i103(1'b0),
    .i104(1'b0),
    .i105(1'b0),
    .i106(1'b0),
    .i107(1'b0),
    .i108(1'b0),
    .i109(1'b0),
    .i11(1'b0),
    .i110(1'b0),
    .i111(1'b0),
    .i112(1'b0),
    .i113(1'b0),
    .i114(1'b0),
    .i115(1'b0),
    .i116(1'b0),
    .i117(1'b0),
    .i118(1'b0),
    .i119(1'b0),
    .i12(1'b0),
    .i120(1'b0),
    .i121(1'b0),
    .i122(1'b0),
    .i123(1'b0),
    .i124(1'b0),
    .i125(1'b0),
    .i126(1'b0),
    .i127(1'b0),
    .i128(1'b0),
    .i129(1'b0),
    .i13(1'b0),
    .i130(1'b0),
    .i131(1'b0),
    .i132(1'b0),
    .i133(1'b0),
    .i134(1'b0),
    .i135(1'b0),
    .i136(1'b0),
    .i137(1'b0),
    .i138(1'b0),
    .i139(1'b0),
    .i14(1'b0),
    .i140(1'b0),
    .i141(1'b0),
    .i142(1'b0),
    .i143(1'b0),
    .i144(1'b0),
    .i145(1'b0),
    .i146(1'b0),
    .i147(1'b0),
    .i148(1'b0),
    .i149(1'b0),
    .i15(1'b0),
    .i150(1'b0),
    .i151(1'b0),
    .i152(1'b0),
    .i153(1'b0),
    .i154(1'b0),
    .i155(1'b0),
    .i156(1'b0),
    .i157(1'b0),
    .i158(1'b0),
    .i159(1'b0),
    .i16(1'b0),
    .i160(1'b0),
    .i161(1'b0),
    .i162(1'b0),
    .i163(1'b0),
    .i164(1'b0),
    .i165(1'b0),
    .i166(1'b0),
    .i167(1'b0),
    .i168(1'b0),
    .i169(1'b0),
    .i17(1'b0),
    .i170(1'b0),
    .i171(1'b0),
    .i172(1'b0),
    .i173(1'b0),
    .i174(1'b0),
    .i175(1'b0),
    .i176(1'b0),
    .i177(1'b0),
    .i178(1'b0),
    .i179(1'b0),
    .i18(1'b0),
    .i180(1'b0),
    .i181(1'b0),
    .i182(1'b0),
    .i183(1'b0),
    .i184(1'b0),
    .i185(1'b0),
    .i186(1'b0),
    .i187(1'b0),
    .i188(1'b0),
    .i189(1'b0),
    .i19(1'b0),
    .i190(1'b0),
    .i191(1'b0),
    .i192(n12),
    .i193(1'b0),
    .i194(n125),
    .i195(n12),
    .i196(1'b0),
    .i197(1'b0),
    .i198(1'b0),
    .i199(1'b0),
    .i2(1'b0),
    .i20(1'b0),
    .i200(n12),
    .i201(n12),
    .i202(n125),
    .i203(1'b0),
    .i204(1'b0),
    .i205(1'b0),
    .i206(1'b0),
    .i207(1'b0),
    .i208(n12),
    .i209(1'b0),
    .i21(1'b0),
    .i210(n125),
    .i211(1'b0),
    .i212(1'b0),
    .i213(1'b0),
    .i214(1'b0),
    .i215(1'b0),
    .i216(n12),
    .i217(1'b0),
    .i218(n125),
    .i219(1'b0),
    .i22(1'b0),
    .i220(1'b0),
    .i221(1'b0),
    .i222(1'b0),
    .i223(1'b0),
    .i224(n12),
    .i225(1'b0),
    .i226(n125),
    .i227(1'b0),
    .i228(1'b0),
    .i229(1'b0),
    .i23(1'b0),
    .i230(1'b0),
    .i231(1'b0),
    .i232(n12),
    .i233(1'b0),
    .i234(n125),
    .i235(1'b0),
    .i236(1'b0),
    .i237(1'b0),
    .i238(1'b0),
    .i239(1'b0),
    .i24(1'b0),
    .i240(n12),
    .i241(1'b0),
    .i242(n125),
    .i243(1'b0),
    .i244(1'b0),
    .i245(1'b0),
    .i246(1'b0),
    .i247(1'b0),
    .i248(n12),
    .i249(1'b0),
    .i25(1'b0),
    .i250(n125),
    .i251(1'b0),
    .i252(1'b0),
    .i253(1'b0),
    .i254(1'b0),
    .i255(1'b0),
    .i26(1'b0),
    .i27(1'b0),
    .i28(1'b0),
    .i29(1'b0),
    .i3(1'b0),
    .i30(1'b0),
    .i31(1'b0),
    .i32(1'b0),
    .i33(1'b0),
    .i34(1'b0),
    .i35(1'b0),
    .i36(1'b0),
    .i37(1'b0),
    .i38(1'b0),
    .i39(1'b0),
    .i4(1'b0),
    .i40(1'b0),
    .i41(1'b0),
    .i42(1'b0),
    .i43(1'b0),
    .i44(1'b0),
    .i45(1'b0),
    .i46(1'b0),
    .i47(1'b0),
    .i48(1'b0),
    .i49(1'b0),
    .i5(1'b0),
    .i50(1'b0),
    .i51(1'b0),
    .i52(1'b0),
    .i53(1'b0),
    .i54(1'b0),
    .i55(1'b0),
    .i56(1'b0),
    .i57(1'b0),
    .i58(1'b0),
    .i59(1'b0),
    .i6(1'b0),
    .i60(1'b0),
    .i61(1'b0),
    .i62(1'b0),
    .i63(1'b0),
    .i64(1'b0),
    .i65(1'b0),
    .i66(1'b0),
    .i67(1'b0),
    .i68(1'b0),
    .i69(1'b0),
    .i7(1'b0),
    .i70(1'b0),
    .i71(1'b0),
    .i72(1'b0),
    .i73(1'b0),
    .i74(1'b0),
    .i75(1'b0),
    .i76(1'b0),
    .i77(1'b0),
    .i78(1'b0),
    .i79(1'b0),
    .i8(1'b0),
    .i80(1'b0),
    .i81(1'b0),
    .i82(1'b0),
    .i83(1'b0),
    .i84(1'b0),
    .i85(1'b0),
    .i86(1'b0),
    .i87(1'b0),
    .i88(1'b0),
    .i89(1'b0),
    .i9(1'b0),
    .i90(1'b0),
    .i91(1'b0),
    .i92(1'b0),
    .i93(1'b0),
    .i94(1'b0),
    .i95(1'b0),
    .i96(1'b0),
    .i97(1'b0),
    .i98(1'b0),
    .i99(1'b0),
    .sel(IR),
    .o(n204));  // ../../rtl/t80se/T80_MCode.vhd(1348)
  binary_mux_s8_w1 mux56 (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b0),
    .i100(1'b0),
    .i101(1'b0),
    .i102(1'b0),
    .i103(1'b0),
    .i104(1'b0),
    .i105(1'b0),
    .i106(1'b0),
    .i107(1'b0),
    .i108(1'b0),
    .i109(1'b0),
    .i11(1'b0),
    .i110(1'b0),
    .i111(1'b0),
    .i112(1'b0),
    .i113(1'b0),
    .i114(1'b0),
    .i115(1'b0),
    .i116(1'b0),
    .i117(1'b0),
    .i118(1'b1),
    .i119(1'b0),
    .i12(1'b0),
    .i120(1'b0),
    .i121(1'b0),
    .i122(1'b0),
    .i123(1'b0),
    .i124(1'b0),
    .i125(1'b0),
    .i126(1'b0),
    .i127(1'b0),
    .i128(1'b0),
    .i129(1'b0),
    .i13(1'b0),
    .i130(1'b0),
    .i131(1'b0),
    .i132(1'b0),
    .i133(1'b0),
    .i134(1'b0),
    .i135(1'b0),
    .i136(1'b0),
    .i137(1'b0),
    .i138(1'b0),
    .i139(1'b0),
    .i14(1'b0),
    .i140(1'b0),
    .i141(1'b0),
    .i142(1'b0),
    .i143(1'b0),
    .i144(1'b0),
    .i145(1'b0),
    .i146(1'b0),
    .i147(1'b0),
    .i148(1'b0),
    .i149(1'b0),
    .i15(1'b0),
    .i150(1'b0),
    .i151(1'b0),
    .i152(1'b0),
    .i153(1'b0),
    .i154(1'b0),
    .i155(1'b0),
    .i156(1'b0),
    .i157(1'b0),
    .i158(1'b0),
    .i159(1'b0),
    .i16(1'b0),
    .i160(1'b0),
    .i161(1'b0),
    .i162(1'b0),
    .i163(1'b0),
    .i164(1'b0),
    .i165(1'b0),
    .i166(1'b0),
    .i167(1'b0),
    .i168(1'b0),
    .i169(1'b0),
    .i17(1'b0),
    .i170(1'b0),
    .i171(1'b0),
    .i172(1'b0),
    .i173(1'b0),
    .i174(1'b0),
    .i175(1'b0),
    .i176(1'b0),
    .i177(1'b0),
    .i178(1'b0),
    .i179(1'b0),
    .i18(1'b0),
    .i180(1'b0),
    .i181(1'b0),
    .i182(1'b0),
    .i183(1'b0),
    .i184(1'b0),
    .i185(1'b0),
    .i186(1'b0),
    .i187(1'b0),
    .i188(1'b0),
    .i189(1'b0),
    .i19(1'b0),
    .i190(1'b0),
    .i191(1'b0),
    .i192(1'b0),
    .i193(1'b0),
    .i194(1'b0),
    .i195(1'b0),
    .i196(1'b0),
    .i197(1'b0),
    .i198(1'b0),
    .i199(1'b0),
    .i2(1'b0),
    .i20(1'b0),
    .i200(1'b0),
    .i201(1'b0),
    .i202(1'b0),
    .i203(1'b0),
    .i204(1'b0),
    .i205(1'b0),
    .i206(1'b0),
    .i207(1'b0),
    .i208(1'b0),
    .i209(1'b0),
    .i21(1'b0),
    .i210(1'b0),
    .i211(1'b0),
    .i212(1'b0),
    .i213(1'b0),
    .i214(1'b0),
    .i215(1'b0),
    .i216(1'b0),
    .i217(1'b0),
    .i218(1'b0),
    .i219(1'b0),
    .i22(1'b0),
    .i220(1'b0),
    .i221(1'b0),
    .i222(1'b0),
    .i223(1'b0),
    .i224(1'b0),
    .i225(1'b0),
    .i226(1'b0),
    .i227(1'b0),
    .i228(1'b0),
    .i229(1'b0),
    .i23(1'b0),
    .i230(1'b0),
    .i231(1'b0),
    .i232(1'b0),
    .i233(1'b0),
    .i234(1'b0),
    .i235(1'b0),
    .i236(1'b0),
    .i237(1'b0),
    .i238(1'b0),
    .i239(1'b0),
    .i24(1'b0),
    .i240(1'b0),
    .i241(1'b0),
    .i242(1'b0),
    .i243(1'b0),
    .i244(1'b0),
    .i245(1'b0),
    .i246(1'b0),
    .i247(1'b0),
    .i248(1'b0),
    .i249(1'b0),
    .i25(1'b0),
    .i250(1'b0),
    .i251(1'b0),
    .i252(1'b0),
    .i253(1'b0),
    .i254(1'b0),
    .i255(1'b0),
    .i26(1'b0),
    .i27(1'b0),
    .i28(1'b0),
    .i29(1'b0),
    .i3(1'b0),
    .i30(1'b0),
    .i31(1'b0),
    .i32(1'b0),
    .i33(1'b0),
    .i34(1'b0),
    .i35(1'b0),
    .i36(1'b0),
    .i37(1'b0),
    .i38(1'b0),
    .i39(1'b0),
    .i4(1'b0),
    .i40(1'b0),
    .i41(1'b0),
    .i42(1'b0),
    .i43(1'b0),
    .i44(1'b0),
    .i45(1'b0),
    .i46(1'b0),
    .i47(1'b0),
    .i48(1'b0),
    .i49(1'b0),
    .i5(1'b0),
    .i50(1'b0),
    .i51(1'b0),
    .i52(1'b0),
    .i53(1'b0),
    .i54(1'b0),
    .i55(1'b0),
    .i56(1'b0),
    .i57(1'b0),
    .i58(1'b0),
    .i59(1'b0),
    .i6(1'b0),
    .i60(1'b0),
    .i61(1'b0),
    .i62(1'b0),
    .i63(1'b0),
    .i64(1'b0),
    .i65(1'b0),
    .i66(1'b0),
    .i67(1'b0),
    .i68(1'b0),
    .i69(1'b0),
    .i7(1'b0),
    .i70(1'b0),
    .i71(1'b0),
    .i72(1'b0),
    .i73(1'b0),
    .i74(1'b0),
    .i75(1'b0),
    .i76(1'b0),
    .i77(1'b0),
    .i78(1'b0),
    .i79(1'b0),
    .i8(1'b0),
    .i80(1'b0),
    .i81(1'b0),
    .i82(1'b0),
    .i83(1'b0),
    .i84(1'b0),
    .i85(1'b0),
    .i86(1'b0),
    .i87(1'b0),
    .i88(1'b0),
    .i89(1'b0),
    .i9(1'b0),
    .i90(1'b0),
    .i91(1'b0),
    .i92(1'b0),
    .i93(1'b0),
    .i94(1'b0),
    .i95(1'b0),
    .i96(1'b0),
    .i97(1'b0),
    .i98(1'b0),
    .i99(1'b0),
    .sel(IR),
    .o(n205));  // ../../rtl/t80se/T80_MCode.vhd(1348)
  binary_mux_s8_w1 mux57 (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b0),
    .i100(1'b0),
    .i101(1'b0),
    .i102(1'b0),
    .i103(1'b0),
    .i104(1'b0),
    .i105(1'b0),
    .i106(1'b0),
    .i107(1'b0),
    .i108(1'b0),
    .i109(1'b0),
    .i11(1'b0),
    .i110(1'b0),
    .i111(1'b0),
    .i112(1'b0),
    .i113(1'b0),
    .i114(1'b0),
    .i115(1'b0),
    .i116(1'b0),
    .i117(1'b0),
    .i118(1'b0),
    .i119(1'b0),
    .i12(1'b0),
    .i120(1'b0),
    .i121(1'b0),
    .i122(1'b0),
    .i123(1'b0),
    .i124(1'b0),
    .i125(1'b0),
    .i126(1'b0),
    .i127(1'b0),
    .i128(1'b0),
    .i129(1'b0),
    .i13(1'b0),
    .i130(1'b0),
    .i131(1'b0),
    .i132(1'b0),
    .i133(1'b0),
    .i134(1'b0),
    .i135(1'b0),
    .i136(1'b0),
    .i137(1'b0),
    .i138(1'b0),
    .i139(1'b0),
    .i14(1'b0),
    .i140(1'b0),
    .i141(1'b0),
    .i142(1'b0),
    .i143(1'b0),
    .i144(1'b0),
    .i145(1'b0),
    .i146(1'b0),
    .i147(1'b0),
    .i148(1'b0),
    .i149(1'b0),
    .i15(1'b0),
    .i150(1'b0),
    .i151(1'b0),
    .i152(1'b0),
    .i153(1'b0),
    .i154(1'b0),
    .i155(1'b0),
    .i156(1'b0),
    .i157(1'b0),
    .i158(1'b0),
    .i159(1'b0),
    .i16(1'b0),
    .i160(1'b0),
    .i161(1'b0),
    .i162(1'b0),
    .i163(1'b0),
    .i164(1'b0),
    .i165(1'b0),
    .i166(1'b0),
    .i167(1'b0),
    .i168(1'b0),
    .i169(1'b0),
    .i17(1'b0),
    .i170(1'b0),
    .i171(1'b0),
    .i172(1'b0),
    .i173(1'b0),
    .i174(1'b0),
    .i175(1'b0),
    .i176(1'b0),
    .i177(1'b0),
    .i178(1'b0),
    .i179(1'b0),
    .i18(1'b0),
    .i180(1'b0),
    .i181(1'b0),
    .i182(1'b0),
    .i183(1'b0),
    .i184(1'b0),
    .i185(1'b0),
    .i186(1'b0),
    .i187(1'b0),
    .i188(1'b0),
    .i189(1'b0),
    .i19(1'b0),
    .i190(1'b0),
    .i191(1'b0),
    .i192(1'b0),
    .i193(1'b0),
    .i194(1'b0),
    .i195(1'b0),
    .i196(1'b0),
    .i197(1'b0),
    .i198(1'b0),
    .i199(1'b0),
    .i2(1'b0),
    .i20(1'b0),
    .i200(1'b0),
    .i201(1'b0),
    .i202(1'b0),
    .i203(1'b0),
    .i204(1'b0),
    .i205(1'b0),
    .i206(1'b0),
    .i207(1'b0),
    .i208(1'b0),
    .i209(1'b0),
    .i21(1'b0),
    .i210(1'b0),
    .i211(1'b0),
    .i212(1'b0),
    .i213(1'b0),
    .i214(1'b0),
    .i215(1'b0),
    .i216(1'b0),
    .i217(1'b0),
    .i218(1'b0),
    .i219(1'b0),
    .i22(1'b0),
    .i220(1'b0),
    .i221(1'b0),
    .i222(1'b0),
    .i223(1'b0),
    .i224(1'b0),
    .i225(1'b0),
    .i226(1'b0),
    .i227(1'b0),
    .i228(1'b0),
    .i229(1'b0),
    .i23(1'b0),
    .i230(1'b0),
    .i231(1'b0),
    .i232(1'b0),
    .i233(1'b0),
    .i234(1'b0),
    .i235(1'b0),
    .i236(1'b0),
    .i237(1'b0),
    .i238(1'b0),
    .i239(1'b0),
    .i24(1'b0),
    .i240(1'b0),
    .i241(1'b0),
    .i242(1'b0),
    .i243(1'b1),
    .i244(1'b0),
    .i245(1'b0),
    .i246(1'b0),
    .i247(1'b0),
    .i248(1'b0),
    .i249(1'b0),
    .i25(1'b0),
    .i250(1'b0),
    .i251(1'b0),
    .i252(1'b0),
    .i253(1'b0),
    .i254(1'b0),
    .i255(1'b0),
    .i26(1'b0),
    .i27(1'b0),
    .i28(1'b0),
    .i29(1'b0),
    .i3(1'b0),
    .i30(1'b0),
    .i31(1'b0),
    .i32(1'b0),
    .i33(1'b0),
    .i34(1'b0),
    .i35(1'b0),
    .i36(1'b0),
    .i37(1'b0),
    .i38(1'b0),
    .i39(1'b0),
    .i4(1'b0),
    .i40(1'b0),
    .i41(1'b0),
    .i42(1'b0),
    .i43(1'b0),
    .i44(1'b0),
    .i45(1'b0),
    .i46(1'b0),
    .i47(1'b0),
    .i48(1'b0),
    .i49(1'b0),
    .i5(1'b0),
    .i50(1'b0),
    .i51(1'b0),
    .i52(1'b0),
    .i53(1'b0),
    .i54(1'b0),
    .i55(1'b0),
    .i56(1'b0),
    .i57(1'b0),
    .i58(1'b0),
    .i59(1'b0),
    .i6(1'b0),
    .i60(1'b0),
    .i61(1'b0),
    .i62(1'b0),
    .i63(1'b0),
    .i64(1'b0),
    .i65(1'b0),
    .i66(1'b0),
    .i67(1'b0),
    .i68(1'b0),
    .i69(1'b0),
    .i7(1'b0),
    .i70(1'b0),
    .i71(1'b0),
    .i72(1'b0),
    .i73(1'b0),
    .i74(1'b0),
    .i75(1'b0),
    .i76(1'b0),
    .i77(1'b0),
    .i78(1'b0),
    .i79(1'b0),
    .i8(1'b0),
    .i80(1'b0),
    .i81(1'b0),
    .i82(1'b0),
    .i83(1'b0),
    .i84(1'b0),
    .i85(1'b0),
    .i86(1'b0),
    .i87(1'b0),
    .i88(1'b0),
    .i89(1'b0),
    .i9(1'b0),
    .i90(1'b0),
    .i91(1'b0),
    .i92(1'b0),
    .i93(1'b0),
    .i94(1'b0),
    .i95(1'b0),
    .i96(1'b0),
    .i97(1'b0),
    .i98(1'b0),
    .i99(1'b0),
    .sel(IR),
    .o(n206));  // ../../rtl/t80se/T80_MCode.vhd(1348)
  binary_mux_s8_w1 mux58 (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b0),
    .i100(1'b0),
    .i101(1'b0),
    .i102(1'b0),
    .i103(1'b0),
    .i104(1'b0),
    .i105(1'b0),
    .i106(1'b0),
    .i107(1'b0),
    .i108(1'b0),
    .i109(1'b0),
    .i11(1'b0),
    .i110(1'b0),
    .i111(1'b0),
    .i112(1'b0),
    .i113(1'b0),
    .i114(1'b0),
    .i115(1'b0),
    .i116(1'b0),
    .i117(1'b0),
    .i118(1'b0),
    .i119(1'b0),
    .i12(1'b0),
    .i120(1'b0),
    .i121(1'b0),
    .i122(1'b0),
    .i123(1'b0),
    .i124(1'b0),
    .i125(1'b0),
    .i126(1'b0),
    .i127(1'b0),
    .i128(1'b0),
    .i129(1'b0),
    .i13(1'b0),
    .i130(1'b0),
    .i131(1'b0),
    .i132(1'b0),
    .i133(1'b0),
    .i134(1'b0),
    .i135(1'b0),
    .i136(1'b0),
    .i137(1'b0),
    .i138(1'b0),
    .i139(1'b0),
    .i14(1'b0),
    .i140(1'b0),
    .i141(1'b0),
    .i142(1'b0),
    .i143(1'b0),
    .i144(1'b0),
    .i145(1'b0),
    .i146(1'b0),
    .i147(1'b0),
    .i148(1'b0),
    .i149(1'b0),
    .i15(1'b0),
    .i150(1'b0),
    .i151(1'b0),
    .i152(1'b0),
    .i153(1'b0),
    .i154(1'b0),
    .i155(1'b0),
    .i156(1'b0),
    .i157(1'b0),
    .i158(1'b0),
    .i159(1'b0),
    .i16(1'b0),
    .i160(1'b0),
    .i161(1'b0),
    .i162(1'b0),
    .i163(1'b0),
    .i164(1'b0),
    .i165(1'b0),
    .i166(1'b0),
    .i167(1'b0),
    .i168(1'b0),
    .i169(1'b0),
    .i17(1'b0),
    .i170(1'b0),
    .i171(1'b0),
    .i172(1'b0),
    .i173(1'b0),
    .i174(1'b0),
    .i175(1'b0),
    .i176(1'b0),
    .i177(1'b0),
    .i178(1'b0),
    .i179(1'b0),
    .i18(1'b0),
    .i180(1'b0),
    .i181(1'b0),
    .i182(1'b0),
    .i183(1'b0),
    .i184(1'b0),
    .i185(1'b0),
    .i186(1'b0),
    .i187(1'b0),
    .i188(1'b0),
    .i189(1'b0),
    .i19(1'b0),
    .i190(1'b0),
    .i191(1'b0),
    .i192(1'b0),
    .i193(1'b0),
    .i194(1'b0),
    .i195(1'b0),
    .i196(1'b0),
    .i197(1'b0),
    .i198(1'b0),
    .i199(1'b0),
    .i2(1'b0),
    .i20(1'b0),
    .i200(1'b0),
    .i201(1'b0),
    .i202(1'b0),
    .i203(1'b0),
    .i204(1'b0),
    .i205(1'b0),
    .i206(1'b0),
    .i207(1'b0),
    .i208(1'b0),
    .i209(1'b0),
    .i21(1'b0),
    .i210(1'b0),
    .i211(1'b0),
    .i212(1'b0),
    .i213(1'b0),
    .i214(1'b0),
    .i215(1'b0),
    .i216(1'b0),
    .i217(1'b0),
    .i218(1'b0),
    .i219(1'b0),
    .i22(1'b0),
    .i220(1'b0),
    .i221(1'b0),
    .i222(1'b0),
    .i223(1'b0),
    .i224(1'b0),
    .i225(1'b0),
    .i226(1'b0),
    .i227(1'b0),
    .i228(1'b0),
    .i229(1'b0),
    .i23(1'b0),
    .i230(1'b0),
    .i231(1'b0),
    .i232(1'b0),
    .i233(1'b0),
    .i234(1'b0),
    .i235(1'b0),
    .i236(1'b0),
    .i237(1'b0),
    .i238(1'b0),
    .i239(1'b0),
    .i24(1'b0),
    .i240(1'b0),
    .i241(1'b0),
    .i242(1'b0),
    .i243(1'b0),
    .i244(1'b0),
    .i245(1'b0),
    .i246(1'b0),
    .i247(1'b0),
    .i248(1'b0),
    .i249(1'b0),
    .i25(1'b0),
    .i250(1'b0),
    .i251(1'b1),
    .i252(1'b0),
    .i253(1'b0),
    .i254(1'b0),
    .i255(1'b0),
    .i26(1'b0),
    .i27(1'b0),
    .i28(1'b0),
    .i29(1'b0),
    .i3(1'b0),
    .i30(1'b0),
    .i31(1'b0),
    .i32(1'b0),
    .i33(1'b0),
    .i34(1'b0),
    .i35(1'b0),
    .i36(1'b0),
    .i37(1'b0),
    .i38(1'b0),
    .i39(1'b0),
    .i4(1'b0),
    .i40(1'b0),
    .i41(1'b0),
    .i42(1'b0),
    .i43(1'b0),
    .i44(1'b0),
    .i45(1'b0),
    .i46(1'b0),
    .i47(1'b0),
    .i48(1'b0),
    .i49(1'b0),
    .i5(1'b0),
    .i50(1'b0),
    .i51(1'b0),
    .i52(1'b0),
    .i53(1'b0),
    .i54(1'b0),
    .i55(1'b0),
    .i56(1'b0),
    .i57(1'b0),
    .i58(1'b0),
    .i59(1'b0),
    .i6(1'b0),
    .i60(1'b0),
    .i61(1'b0),
    .i62(1'b0),
    .i63(1'b0),
    .i64(1'b0),
    .i65(1'b0),
    .i66(1'b0),
    .i67(1'b0),
    .i68(1'b0),
    .i69(1'b0),
    .i7(1'b0),
    .i70(1'b0),
    .i71(1'b0),
    .i72(1'b0),
    .i73(1'b0),
    .i74(1'b0),
    .i75(1'b0),
    .i76(1'b0),
    .i77(1'b0),
    .i78(1'b0),
    .i79(1'b0),
    .i8(1'b0),
    .i80(1'b0),
    .i81(1'b0),
    .i82(1'b0),
    .i83(1'b0),
    .i84(1'b0),
    .i85(1'b0),
    .i86(1'b0),
    .i87(1'b0),
    .i88(1'b0),
    .i89(1'b0),
    .i9(1'b0),
    .i90(1'b0),
    .i91(1'b0),
    .i92(1'b0),
    .i93(1'b0),
    .i94(1'b0),
    .i95(1'b0),
    .i96(1'b0),
    .i97(1'b0),
    .i98(1'b0),
    .i99(1'b0),
    .sel(IR),
    .o(n207));  // ../../rtl/t80se/T80_MCode.vhd(1348)
  binary_mux_s8_w1 mux59 (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b0),
    .i100(1'b0),
    .i101(1'b0),
    .i102(1'b0),
    .i103(1'b0),
    .i104(1'b0),
    .i105(1'b0),
    .i106(1'b0),
    .i107(1'b0),
    .i108(1'b0),
    .i109(1'b0),
    .i11(1'b0),
    .i110(1'b0),
    .i111(1'b0),
    .i112(1'b0),
    .i113(1'b0),
    .i114(1'b0),
    .i115(1'b0),
    .i116(1'b0),
    .i117(1'b0),
    .i118(1'b0),
    .i119(1'b0),
    .i12(1'b0),
    .i120(1'b0),
    .i121(1'b0),
    .i122(1'b0),
    .i123(1'b0),
    .i124(1'b0),
    .i125(1'b0),
    .i126(1'b0),
    .i127(1'b0),
    .i128(1'b0),
    .i129(1'b0),
    .i13(1'b0),
    .i130(1'b0),
    .i131(1'b0),
    .i132(1'b0),
    .i133(1'b0),
    .i134(1'b0),
    .i135(1'b0),
    .i136(1'b0),
    .i137(1'b0),
    .i138(1'b0),
    .i139(1'b0),
    .i14(1'b0),
    .i140(1'b0),
    .i141(1'b0),
    .i142(1'b0),
    .i143(1'b0),
    .i144(1'b0),
    .i145(1'b0),
    .i146(1'b0),
    .i147(1'b0),
    .i148(1'b0),
    .i149(1'b0),
    .i15(1'b0),
    .i150(1'b0),
    .i151(1'b0),
    .i152(1'b0),
    .i153(1'b0),
    .i154(1'b0),
    .i155(1'b0),
    .i156(1'b0),
    .i157(1'b0),
    .i158(1'b0),
    .i159(1'b0),
    .i16(n12),
    .i160(1'b0),
    .i161(1'b0),
    .i162(1'b0),
    .i163(1'b0),
    .i164(1'b0),
    .i165(1'b0),
    .i166(1'b0),
    .i167(1'b0),
    .i168(1'b0),
    .i169(1'b0),
    .i17(1'b0),
    .i170(1'b0),
    .i171(1'b0),
    .i172(1'b0),
    .i173(1'b0),
    .i174(1'b0),
    .i175(1'b0),
    .i176(1'b0),
    .i177(1'b0),
    .i178(1'b0),
    .i179(1'b0),
    .i18(1'b0),
    .i180(1'b0),
    .i181(1'b0),
    .i182(1'b0),
    .i183(1'b0),
    .i184(1'b0),
    .i185(1'b0),
    .i186(1'b0),
    .i187(1'b0),
    .i188(1'b0),
    .i189(1'b0),
    .i19(1'b0),
    .i190(1'b0),
    .i191(1'b0),
    .i192(1'b0),
    .i193(1'b0),
    .i194(1'b0),
    .i195(1'b0),
    .i196(1'b0),
    .i197(1'b0),
    .i198(1'b0),
    .i199(1'b0),
    .i2(1'b0),
    .i20(1'b0),
    .i200(1'b0),
    .i201(1'b0),
    .i202(1'b0),
    .i203(1'b0),
    .i204(1'b0),
    .i205(1'b0),
    .i206(1'b0),
    .i207(1'b0),
    .i208(1'b0),
    .i209(1'b0),
    .i21(1'b0),
    .i210(1'b0),
    .i211(1'b0),
    .i212(1'b0),
    .i213(1'b0),
    .i214(1'b0),
    .i215(1'b0),
    .i216(1'b0),
    .i217(1'b0),
    .i218(1'b0),
    .i219(1'b0),
    .i22(1'b0),
    .i220(1'b0),
    .i221(1'b0),
    .i222(1'b0),
    .i223(1'b0),
    .i224(1'b0),
    .i225(1'b0),
    .i226(1'b0),
    .i227(1'b0),
    .i228(1'b0),
    .i229(1'b0),
    .i23(1'b0),
    .i230(1'b0),
    .i231(1'b0),
    .i232(1'b0),
    .i233(1'b0),
    .i234(1'b0),
    .i235(1'b0),
    .i236(1'b0),
    .i237(1'b0),
    .i238(1'b0),
    .i239(1'b0),
    .i24(n12),
    .i240(1'b0),
    .i241(1'b0),
    .i242(1'b0),
    .i243(1'b0),
    .i244(1'b0),
    .i245(1'b0),
    .i246(1'b0),
    .i247(1'b0),
    .i248(1'b0),
    .i249(1'b0),
    .i25(n39),
    .i250(1'b0),
    .i251(1'b0),
    .i252(1'b0),
    .i253(1'b0),
    .i254(1'b0),
    .i255(1'b0),
    .i26(1'b0),
    .i27(1'b0),
    .i28(1'b0),
    .i29(1'b0),
    .i3(1'b0),
    .i30(1'b0),
    .i31(1'b0),
    .i32(n12),
    .i33(1'b0),
    .i34(1'b0),
    .i35(1'b0),
    .i36(1'b0),
    .i37(1'b0),
    .i38(1'b0),
    .i39(1'b0),
    .i4(1'b0),
    .i40(n12),
    .i41(n39),
    .i42(1'b0),
    .i43(1'b0),
    .i44(1'b0),
    .i45(1'b0),
    .i46(1'b0),
    .i47(1'b0),
    .i48(n12),
    .i49(1'b0),
    .i5(1'b0),
    .i50(1'b0),
    .i51(1'b0),
    .i52(1'b0),
    .i53(1'b0),
    .i54(1'b0),
    .i55(1'b0),
    .i56(n12),
    .i57(n39),
    .i58(1'b0),
    .i59(1'b0),
    .i6(1'b0),
    .i60(1'b0),
    .i61(1'b0),
    .i62(1'b0),
    .i63(1'b0),
    .i64(1'b0),
    .i65(1'b0),
    .i66(1'b0),
    .i67(1'b0),
    .i68(1'b0),
    .i69(1'b0),
    .i7(1'b0),
    .i70(1'b0),
    .i71(1'b0),
    .i72(1'b0),
    .i73(1'b0),
    .i74(1'b0),
    .i75(1'b0),
    .i76(1'b0),
    .i77(1'b0),
    .i78(1'b0),
    .i79(1'b0),
    .i8(1'b0),
    .i80(1'b0),
    .i81(1'b0),
    .i82(1'b0),
    .i83(1'b0),
    .i84(1'b0),
    .i85(1'b0),
    .i86(1'b0),
    .i87(1'b0),
    .i88(1'b0),
    .i89(1'b0),
    .i9(n39),
    .i90(1'b0),
    .i91(1'b0),
    .i92(1'b0),
    .i93(1'b0),
    .i94(1'b0),
    .i95(1'b0),
    .i96(1'b0),
    .i97(1'b0),
    .i98(1'b0),
    .i99(1'b0),
    .sel(IR),
    .o(n208));  // ../../rtl/t80se/T80_MCode.vhd(1348)
  binary_mux_s2_w4 mux6 (
    .i0(4'b0000),
    .i1(4'b1110),
    .i2(4'b0001),
    .i3(4'b0000),
    .sel(MCycle[2:1]),
    .o(n42));  // ../../rtl/t80se/T80_MCode.vhd(1796)
  binary_mux_s6_w1 mux60 (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b0),
    .i11(1'b0),
    .i12(1'b0),
    .i13(1'b0),
    .i14(1'b0),
    .i15(1'b0),
    .i16(1'b0),
    .i17(1'b0),
    .i18(1'b0),
    .i19(1'b0),
    .i2(1'b0),
    .i20(1'b0),
    .i21(1'b0),
    .i22(1'b0),
    .i23(1'b0),
    .i24(1'b0),
    .i25(1'b0),
    .i26(1'b0),
    .i27(1'b0),
    .i28(1'b0),
    .i29(1'b0),
    .i3(1'b0),
    .i30(1'b0),
    .i31(1'b0),
    .i32(1'b0),
    .i33(1'b0),
    .i34(1'b0),
    .i35(1'b0),
    .i36(1'b0),
    .i37(1'b0),
    .i38(1'b0),
    .i39(1'b0),
    .i4(1'b0),
    .i40(1'b0),
    .i41(1'b0),
    .i42(1'b0),
    .i43(1'b0),
    .i44(1'b0),
    .i45(1'b0),
    .i46(1'b0),
    .i47(1'b0),
    .i48(1'b0),
    .i49(1'b0),
    .i5(1'b0),
    .i50(1'b0),
    .i51(1'b0),
    .i52(1'b0),
    .i53(1'b0),
    .i54(1'b0),
    .i55(1'b0),
    .i56(1'b0),
    .i57(1'b0),
    .i58(1'b0),
    .i59(1'b0),
    .i6(1'b0),
    .i60(1'b0),
    .i61(1'b0),
    .i62(1'b0),
    .i63(1'b0),
    .i7(1'b0),
    .i8(1'b0),
    .i9(n39),
    .sel({IR[7:6],IR[3:0]}),
    .o(n209));  // ../../rtl/t80se/T80_MCode.vhd(1348)
  binary_mux_s8_w1 mux61 (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b0),
    .i100(1'b0),
    .i101(1'b0),
    .i102(1'b0),
    .i103(1'b0),
    .i104(1'b0),
    .i105(1'b0),
    .i106(1'b0),
    .i107(1'b0),
    .i108(1'b0),
    .i109(1'b0),
    .i11(1'b0),
    .i110(1'b0),
    .i111(1'b0),
    .i112(1'b0),
    .i113(1'b0),
    .i114(1'b0),
    .i115(1'b0),
    .i116(1'b0),
    .i117(1'b0),
    .i118(1'b0),
    .i119(1'b0),
    .i12(1'b0),
    .i120(1'b0),
    .i121(1'b0),
    .i122(1'b0),
    .i123(1'b0),
    .i124(1'b0),
    .i125(1'b0),
    .i126(1'b0),
    .i127(1'b0),
    .i128(1'b0),
    .i129(1'b0),
    .i13(1'b0),
    .i130(1'b0),
    .i131(1'b0),
    .i132(1'b0),
    .i133(1'b0),
    .i134(1'b0),
    .i135(1'b0),
    .i136(1'b0),
    .i137(1'b0),
    .i138(1'b0),
    .i139(1'b0),
    .i14(1'b0),
    .i140(1'b0),
    .i141(1'b0),
    .i142(1'b0),
    .i143(1'b0),
    .i144(1'b0),
    .i145(1'b0),
    .i146(1'b0),
    .i147(1'b0),
    .i148(1'b0),
    .i149(1'b0),
    .i15(1'b0),
    .i150(1'b0),
    .i151(1'b0),
    .i152(1'b0),
    .i153(1'b0),
    .i154(1'b0),
    .i155(1'b0),
    .i156(1'b0),
    .i157(1'b0),
    .i158(1'b0),
    .i159(1'b0),
    .i16(n12),
    .i160(1'b0),
    .i161(1'b0),
    .i162(1'b0),
    .i163(1'b0),
    .i164(1'b0),
    .i165(1'b0),
    .i166(1'b0),
    .i167(1'b0),
    .i168(1'b0),
    .i169(1'b0),
    .i17(1'b0),
    .i170(1'b0),
    .i171(1'b0),
    .i172(1'b0),
    .i173(1'b0),
    .i174(1'b0),
    .i175(1'b0),
    .i176(1'b0),
    .i177(1'b0),
    .i178(1'b0),
    .i179(1'b0),
    .i18(1'b0),
    .i180(1'b0),
    .i181(1'b0),
    .i182(1'b0),
    .i183(1'b0),
    .i184(1'b0),
    .i185(1'b0),
    .i186(1'b0),
    .i187(1'b0),
    .i188(1'b0),
    .i189(1'b0),
    .i19(1'b0),
    .i190(1'b0),
    .i191(1'b0),
    .i192(1'b0),
    .i193(1'b0),
    .i194(1'b0),
    .i195(1'b0),
    .i196(1'b0),
    .i197(1'b0),
    .i198(1'b0),
    .i199(1'b0),
    .i2(1'b0),
    .i20(1'b0),
    .i200(1'b0),
    .i201(1'b0),
    .i202(1'b0),
    .i203(1'b0),
    .i204(1'b0),
    .i205(1'b0),
    .i206(1'b0),
    .i207(1'b0),
    .i208(1'b0),
    .i209(1'b0),
    .i21(1'b0),
    .i210(1'b0),
    .i211(1'b0),
    .i212(1'b0),
    .i213(1'b0),
    .i214(1'b0),
    .i215(1'b0),
    .i216(1'b0),
    .i217(1'b0),
    .i218(1'b0),
    .i219(1'b0),
    .i22(1'b0),
    .i220(1'b0),
    .i221(1'b0),
    .i222(1'b0),
    .i223(1'b0),
    .i224(1'b0),
    .i225(1'b0),
    .i226(1'b0),
    .i227(1'b0),
    .i228(1'b0),
    .i229(1'b0),
    .i23(1'b0),
    .i230(1'b0),
    .i231(1'b0),
    .i232(1'b0),
    .i233(1'b0),
    .i234(1'b0),
    .i235(1'b0),
    .i236(1'b0),
    .i237(1'b0),
    .i238(1'b0),
    .i239(1'b0),
    .i24(n12),
    .i240(1'b0),
    .i241(1'b0),
    .i242(1'b0),
    .i243(1'b0),
    .i244(1'b0),
    .i245(1'b0),
    .i246(1'b0),
    .i247(1'b0),
    .i248(1'b0),
    .i249(1'b0),
    .i25(1'b0),
    .i250(1'b0),
    .i251(1'b0),
    .i252(1'b0),
    .i253(1'b0),
    .i254(1'b0),
    .i255(1'b0),
    .i26(1'b0),
    .i27(1'b0),
    .i28(1'b0),
    .i29(1'b0),
    .i3(1'b0),
    .i30(1'b0),
    .i31(1'b0),
    .i32(n12),
    .i33(1'b0),
    .i34(1'b0),
    .i35(1'b0),
    .i36(1'b0),
    .i37(1'b0),
    .i38(1'b0),
    .i39(1'b0),
    .i4(1'b0),
    .i40(n12),
    .i41(1'b0),
    .i42(1'b0),
    .i43(1'b0),
    .i44(1'b0),
    .i45(1'b0),
    .i46(1'b0),
    .i47(1'b0),
    .i48(n12),
    .i49(1'b0),
    .i5(1'b0),
    .i50(1'b0),
    .i51(1'b0),
    .i52(1'b0),
    .i53(1'b0),
    .i54(1'b0),
    .i55(1'b0),
    .i56(n12),
    .i57(1'b0),
    .i58(1'b0),
    .i59(1'b0),
    .i6(1'b0),
    .i60(1'b0),
    .i61(1'b0),
    .i62(1'b0),
    .i63(1'b0),
    .i64(1'b0),
    .i65(1'b0),
    .i66(1'b0),
    .i67(1'b0),
    .i68(1'b0),
    .i69(1'b0),
    .i7(1'b0),
    .i70(1'b0),
    .i71(1'b0),
    .i72(1'b0),
    .i73(1'b0),
    .i74(1'b0),
    .i75(1'b0),
    .i76(1'b0),
    .i77(1'b0),
    .i78(1'b0),
    .i79(1'b0),
    .i8(1'b0),
    .i80(1'b0),
    .i81(1'b0),
    .i82(1'b0),
    .i83(1'b0),
    .i84(1'b0),
    .i85(1'b0),
    .i86(1'b0),
    .i87(1'b0),
    .i88(1'b0),
    .i89(1'b0),
    .i9(1'b0),
    .i90(1'b0),
    .i91(1'b0),
    .i92(1'b0),
    .i93(1'b0),
    .i94(1'b0),
    .i95(1'b0),
    .i96(1'b0),
    .i97(1'b0),
    .i98(1'b0),
    .i99(1'b0),
    .sel(IR),
    .o(n210));  // ../../rtl/t80se/T80_MCode.vhd(1348)
  binary_mux_s8_w1 mux62 (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b0),
    .i100(1'b0),
    .i101(1'b0),
    .i102(1'b0),
    .i103(1'b0),
    .i104(1'b0),
    .i105(1'b0),
    .i106(1'b0),
    .i107(1'b0),
    .i108(1'b0),
    .i109(1'b0),
    .i11(1'b0),
    .i110(1'b0),
    .i111(1'b0),
    .i112(1'b0),
    .i113(1'b0),
    .i114(1'b0),
    .i115(1'b0),
    .i116(1'b0),
    .i117(1'b0),
    .i118(1'b0),
    .i119(1'b0),
    .i12(1'b0),
    .i120(1'b0),
    .i121(1'b0),
    .i122(1'b0),
    .i123(1'b0),
    .i124(1'b0),
    .i125(1'b0),
    .i126(1'b0),
    .i127(1'b0),
    .i128(1'b0),
    .i129(1'b0),
    .i13(1'b0),
    .i130(1'b0),
    .i131(1'b0),
    .i132(1'b0),
    .i133(1'b0),
    .i134(1'b0),
    .i135(1'b0),
    .i136(1'b0),
    .i137(1'b0),
    .i138(1'b0),
    .i139(1'b0),
    .i14(1'b0),
    .i140(1'b0),
    .i141(1'b0),
    .i142(1'b0),
    .i143(1'b0),
    .i144(1'b0),
    .i145(1'b0),
    .i146(1'b0),
    .i147(1'b0),
    .i148(1'b0),
    .i149(1'b0),
    .i15(1'b0),
    .i150(1'b0),
    .i151(1'b0),
    .i152(1'b0),
    .i153(1'b0),
    .i154(1'b0),
    .i155(1'b0),
    .i156(1'b0),
    .i157(1'b0),
    .i158(1'b0),
    .i159(1'b0),
    .i16(1'b0),
    .i160(1'b0),
    .i161(1'b0),
    .i162(1'b0),
    .i163(1'b0),
    .i164(1'b0),
    .i165(1'b0),
    .i166(1'b0),
    .i167(1'b0),
    .i168(1'b0),
    .i169(1'b0),
    .i17(1'b0),
    .i170(1'b0),
    .i171(1'b0),
    .i172(1'b0),
    .i173(1'b0),
    .i174(1'b0),
    .i175(1'b0),
    .i176(1'b0),
    .i177(1'b0),
    .i178(1'b0),
    .i179(1'b0),
    .i18(1'b0),
    .i180(1'b0),
    .i181(1'b0),
    .i182(1'b0),
    .i183(1'b0),
    .i184(1'b0),
    .i185(1'b0),
    .i186(1'b0),
    .i187(1'b0),
    .i188(1'b0),
    .i189(1'b0),
    .i19(1'b0),
    .i190(1'b0),
    .i191(1'b0),
    .i192(1'b0),
    .i193(1'b0),
    .i194(1'b0),
    .i195(1'b0),
    .i196(1'b0),
    .i197(1'b0),
    .i198(1'b0),
    .i199(1'b0),
    .i2(1'b0),
    .i20(1'b0),
    .i200(1'b0),
    .i201(1'b0),
    .i202(1'b0),
    .i203(1'b0),
    .i204(1'b0),
    .i205(1'b0),
    .i206(1'b0),
    .i207(1'b0),
    .i208(1'b0),
    .i209(1'b0),
    .i21(1'b0),
    .i210(1'b0),
    .i211(1'b0),
    .i212(1'b0),
    .i213(1'b0),
    .i214(1'b0),
    .i215(1'b0),
    .i216(1'b0),
    .i217(1'b0),
    .i218(1'b0),
    .i219(1'b0),
    .i22(1'b0),
    .i220(1'b0),
    .i221(1'b0),
    .i222(1'b0),
    .i223(1'b0),
    .i224(1'b0),
    .i225(1'b0),
    .i226(1'b0),
    .i227(1'b0),
    .i228(1'b0),
    .i229(1'b0),
    .i23(1'b0),
    .i230(1'b0),
    .i231(1'b0),
    .i232(1'b0),
    .i233(1'b1),
    .i234(1'b0),
    .i235(1'b0),
    .i236(1'b0),
    .i237(1'b0),
    .i238(1'b0),
    .i239(1'b0),
    .i24(1'b0),
    .i240(1'b0),
    .i241(1'b0),
    .i242(1'b0),
    .i243(1'b0),
    .i244(1'b0),
    .i245(1'b0),
    .i246(1'b0),
    .i247(1'b0),
    .i248(1'b0),
    .i249(1'b0),
    .i25(1'b0),
    .i250(1'b0),
    .i251(1'b0),
    .i252(1'b0),
    .i253(1'b0),
    .i254(1'b0),
    .i255(1'b0),
    .i26(1'b0),
    .i27(1'b0),
    .i28(1'b0),
    .i29(1'b0),
    .i3(1'b0),
    .i30(1'b0),
    .i31(1'b0),
    .i32(1'b0),
    .i33(1'b0),
    .i34(1'b0),
    .i35(1'b0),
    .i36(1'b0),
    .i37(1'b0),
    .i38(1'b0),
    .i39(1'b0),
    .i4(1'b0),
    .i40(1'b0),
    .i41(1'b0),
    .i42(1'b0),
    .i43(1'b0),
    .i44(1'b0),
    .i45(1'b0),
    .i46(1'b0),
    .i47(1'b0),
    .i48(1'b0),
    .i49(1'b0),
    .i5(1'b0),
    .i50(1'b0),
    .i51(1'b0),
    .i52(1'b0),
    .i53(1'b0),
    .i54(1'b0),
    .i55(1'b0),
    .i56(1'b0),
    .i57(1'b0),
    .i58(1'b0),
    .i59(1'b0),
    .i6(1'b0),
    .i60(1'b0),
    .i61(1'b0),
    .i62(1'b0),
    .i63(1'b0),
    .i64(1'b0),
    .i65(1'b0),
    .i66(1'b0),
    .i67(1'b0),
    .i68(1'b0),
    .i69(1'b0),
    .i7(1'b0),
    .i70(1'b0),
    .i71(1'b0),
    .i72(1'b0),
    .i73(1'b0),
    .i74(1'b0),
    .i75(1'b0),
    .i76(1'b0),
    .i77(1'b0),
    .i78(1'b0),
    .i79(1'b0),
    .i8(1'b0),
    .i80(1'b0),
    .i81(1'b0),
    .i82(1'b0),
    .i83(1'b0),
    .i84(1'b0),
    .i85(1'b0),
    .i86(1'b0),
    .i87(1'b0),
    .i88(1'b0),
    .i89(1'b0),
    .i9(1'b0),
    .i90(1'b0),
    .i91(1'b0),
    .i92(1'b0),
    .i93(1'b0),
    .i94(1'b0),
    .i95(1'b0),
    .i96(1'b0),
    .i97(1'b0),
    .i98(1'b0),
    .i99(1'b0),
    .sel(IR),
    .o(n211));  // ../../rtl/t80se/T80_MCode.vhd(1348)
  binary_mux_s8_w1 mux63 (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b0),
    .i100(1'b0),
    .i101(1'b0),
    .i102(1'b0),
    .i103(1'b0),
    .i104(1'b0),
    .i105(1'b0),
    .i106(1'b0),
    .i107(1'b0),
    .i108(1'b0),
    .i109(1'b0),
    .i11(1'b0),
    .i110(1'b0),
    .i111(1'b0),
    .i112(1'b0),
    .i113(1'b0),
    .i114(1'b0),
    .i115(1'b0),
    .i116(1'b0),
    .i117(1'b0),
    .i118(1'b0),
    .i119(1'b0),
    .i12(1'b0),
    .i120(1'b0),
    .i121(1'b0),
    .i122(1'b0),
    .i123(1'b0),
    .i124(1'b0),
    .i125(1'b0),
    .i126(1'b0),
    .i127(1'b0),
    .i128(1'b0),
    .i129(1'b0),
    .i13(1'b0),
    .i130(1'b0),
    .i131(1'b0),
    .i132(1'b0),
    .i133(1'b0),
    .i134(1'b0),
    .i135(1'b0),
    .i136(1'b0),
    .i137(1'b0),
    .i138(1'b0),
    .i139(1'b0),
    .i14(1'b0),
    .i140(1'b0),
    .i141(1'b0),
    .i142(1'b0),
    .i143(1'b0),
    .i144(1'b0),
    .i145(1'b0),
    .i146(1'b0),
    .i147(1'b0),
    .i148(1'b0),
    .i149(1'b0),
    .i15(1'b0),
    .i150(1'b0),
    .i151(1'b0),
    .i152(1'b0),
    .i153(1'b0),
    .i154(1'b0),
    .i155(1'b0),
    .i156(1'b0),
    .i157(1'b0),
    .i158(1'b0),
    .i159(1'b0),
    .i16(n136),
    .i160(1'b0),
    .i161(1'b0),
    .i162(1'b0),
    .i163(1'b0),
    .i164(1'b0),
    .i165(1'b0),
    .i166(1'b0),
    .i167(1'b0),
    .i168(1'b0),
    .i169(1'b0),
    .i17(1'b0),
    .i170(1'b0),
    .i171(1'b0),
    .i172(1'b0),
    .i173(1'b0),
    .i174(1'b0),
    .i175(1'b0),
    .i176(1'b0),
    .i177(1'b0),
    .i178(1'b0),
    .i179(1'b0),
    .i18(1'b0),
    .i180(1'b0),
    .i181(1'b0),
    .i182(1'b0),
    .i183(1'b0),
    .i184(1'b0),
    .i185(1'b0),
    .i186(1'b0),
    .i187(1'b0),
    .i188(1'b0),
    .i189(1'b0),
    .i19(1'b0),
    .i190(1'b0),
    .i191(1'b0),
    .i192(1'b0),
    .i193(1'b0),
    .i194(1'b0),
    .i195(1'b0),
    .i196(1'b0),
    .i197(1'b0),
    .i198(1'b0),
    .i199(1'b0),
    .i2(1'b0),
    .i20(1'b0),
    .i200(1'b0),
    .i201(1'b0),
    .i202(1'b0),
    .i203(1'b0),
    .i204(1'b0),
    .i205(1'b0),
    .i206(1'b0),
    .i207(1'b0),
    .i208(1'b0),
    .i209(1'b0),
    .i21(1'b0),
    .i210(1'b0),
    .i211(1'b0),
    .i212(1'b0),
    .i213(1'b0),
    .i214(1'b0),
    .i215(1'b0),
    .i216(1'b0),
    .i217(1'b0),
    .i218(1'b0),
    .i219(1'b0),
    .i22(1'b0),
    .i220(1'b0),
    .i221(1'b0),
    .i222(1'b0),
    .i223(1'b0),
    .i224(1'b0),
    .i225(1'b0),
    .i226(1'b0),
    .i227(1'b0),
    .i228(1'b0),
    .i229(1'b0),
    .i23(1'b0),
    .i230(1'b0),
    .i231(1'b0),
    .i232(1'b0),
    .i233(1'b0),
    .i234(1'b0),
    .i235(1'b0),
    .i236(1'b0),
    .i237(1'b0),
    .i238(1'b0),
    .i239(1'b0),
    .i24(1'b0),
    .i240(1'b0),
    .i241(1'b0),
    .i242(1'b0),
    .i243(1'b0),
    .i244(1'b0),
    .i245(1'b0),
    .i246(1'b0),
    .i247(1'b0),
    .i248(1'b0),
    .i249(1'b0),
    .i25(1'b0),
    .i250(1'b0),
    .i251(1'b0),
    .i252(1'b0),
    .i253(1'b0),
    .i254(1'b0),
    .i255(1'b0),
    .i26(1'b0),
    .i27(1'b0),
    .i28(1'b0),
    .i29(1'b0),
    .i3(1'b0),
    .i30(1'b0),
    .i31(1'b0),
    .i32(1'b0),
    .i33(1'b0),
    .i34(1'b0),
    .i35(1'b0),
    .i36(1'b0),
    .i37(1'b0),
    .i38(1'b0),
    .i39(1'b0),
    .i4(1'b0),
    .i40(1'b0),
    .i41(1'b0),
    .i42(1'b0),
    .i43(1'b0),
    .i44(1'b0),
    .i45(1'b0),
    .i46(1'b0),
    .i47(1'b0),
    .i48(1'b0),
    .i49(1'b0),
    .i5(1'b0),
    .i50(1'b0),
    .i51(1'b0),
    .i52(1'b0),
    .i53(1'b0),
    .i54(1'b0),
    .i55(1'b0),
    .i56(1'b0),
    .i57(1'b0),
    .i58(1'b0),
    .i59(1'b0),
    .i6(1'b0),
    .i60(1'b0),
    .i61(1'b0),
    .i62(1'b0),
    .i63(1'b0),
    .i64(1'b0),
    .i65(1'b0),
    .i66(1'b0),
    .i67(1'b0),
    .i68(1'b0),
    .i69(1'b0),
    .i7(1'b0),
    .i70(1'b0),
    .i71(1'b0),
    .i72(1'b0),
    .i73(1'b0),
    .i74(1'b0),
    .i75(1'b0),
    .i76(1'b0),
    .i77(1'b0),
    .i78(1'b0),
    .i79(1'b0),
    .i8(1'b0),
    .i80(1'b0),
    .i81(1'b0),
    .i82(1'b0),
    .i83(1'b0),
    .i84(1'b0),
    .i85(1'b0),
    .i86(1'b0),
    .i87(1'b0),
    .i88(1'b0),
    .i89(1'b0),
    .i9(1'b0),
    .i90(1'b0),
    .i91(1'b0),
    .i92(1'b0),
    .i93(1'b0),
    .i94(1'b0),
    .i95(1'b0),
    .i96(1'b0),
    .i97(1'b0),
    .i98(1'b0),
    .i99(1'b0),
    .sel(IR),
    .o(n212));  // ../../rtl/t80se/T80_MCode.vhd(1348)
  binary_mux_s8_w1 mux64 (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b0),
    .i100(1'b0),
    .i101(1'b0),
    .i102(1'b0),
    .i103(1'b0),
    .i104(1'b0),
    .i105(1'b0),
    .i106(1'b0),
    .i107(1'b0),
    .i108(1'b0),
    .i109(1'b0),
    .i11(1'b0),
    .i110(1'b0),
    .i111(1'b0),
    .i112(1'b0),
    .i113(1'b0),
    .i114(1'b0),
    .i115(1'b0),
    .i116(1'b0),
    .i117(1'b0),
    .i118(1'b0),
    .i119(1'b0),
    .i12(1'b0),
    .i120(1'b0),
    .i121(1'b0),
    .i122(1'b0),
    .i123(1'b0),
    .i124(1'b0),
    .i125(1'b0),
    .i126(1'b0),
    .i127(1'b0),
    .i128(1'b0),
    .i129(1'b0),
    .i13(1'b0),
    .i130(1'b0),
    .i131(1'b0),
    .i132(1'b0),
    .i133(1'b0),
    .i134(1'b0),
    .i135(1'b0),
    .i136(1'b0),
    .i137(1'b0),
    .i138(1'b0),
    .i139(1'b0),
    .i14(1'b0),
    .i140(1'b0),
    .i141(1'b0),
    .i142(1'b0),
    .i143(1'b0),
    .i144(1'b0),
    .i145(1'b0),
    .i146(1'b0),
    .i147(1'b0),
    .i148(1'b0),
    .i149(1'b0),
    .i15(1'b0),
    .i150(1'b0),
    .i151(1'b0),
    .i152(1'b0),
    .i153(1'b0),
    .i154(1'b0),
    .i155(1'b0),
    .i156(1'b0),
    .i157(1'b0),
    .i158(1'b0),
    .i159(1'b0),
    .i16(1'b0),
    .i160(1'b0),
    .i161(1'b0),
    .i162(1'b0),
    .i163(1'b0),
    .i164(1'b0),
    .i165(1'b0),
    .i166(1'b0),
    .i167(1'b0),
    .i168(1'b0),
    .i169(1'b0),
    .i17(1'b0),
    .i170(1'b0),
    .i171(1'b0),
    .i172(1'b0),
    .i173(1'b0),
    .i174(1'b0),
    .i175(1'b0),
    .i176(1'b0),
    .i177(1'b0),
    .i178(1'b0),
    .i179(1'b0),
    .i18(1'b0),
    .i180(1'b0),
    .i181(1'b0),
    .i182(1'b0),
    .i183(1'b0),
    .i184(1'b0),
    .i185(1'b0),
    .i186(1'b0),
    .i187(1'b0),
    .i188(1'b0),
    .i189(1'b0),
    .i19(1'b0),
    .i190(1'b0),
    .i191(1'b0),
    .i192(1'b0),
    .i193(1'b0),
    .i194(1'b0),
    .i195(1'b0),
    .i196(n157),
    .i197(1'b0),
    .i198(1'b0),
    .i199(1'b0),
    .i2(1'b0),
    .i20(1'b0),
    .i200(1'b0),
    .i201(1'b0),
    .i202(1'b0),
    .i203(1'b0),
    .i204(n157),
    .i205(n157),
    .i206(1'b0),
    .i207(1'b0),
    .i208(1'b0),
    .i209(1'b0),
    .i21(1'b0),
    .i210(1'b0),
    .i211(1'b0),
    .i212(n157),
    .i213(1'b0),
    .i214(1'b0),
    .i215(1'b0),
    .i216(1'b0),
    .i217(1'b0),
    .i218(1'b0),
    .i219(1'b0),
    .i22(1'b0),
    .i220(n157),
    .i221(1'b0),
    .i222(1'b0),
    .i223(1'b0),
    .i224(1'b0),
    .i225(1'b0),
    .i226(1'b0),
    .i227(1'b0),
    .i228(n157),
    .i229(1'b0),
    .i23(1'b0),
    .i230(1'b0),
    .i231(1'b0),
    .i232(1'b0),
    .i233(1'b0),
    .i234(1'b0),
    .i235(1'b0),
    .i236(n157),
    .i237(1'b0),
    .i238(1'b0),
    .i239(1'b0),
    .i24(1'b0),
    .i240(1'b0),
    .i241(1'b0),
    .i242(1'b0),
    .i243(1'b0),
    .i244(n157),
    .i245(1'b0),
    .i246(1'b0),
    .i247(1'b0),
    .i248(1'b0),
    .i249(1'b0),
    .i25(1'b0),
    .i250(1'b0),
    .i251(1'b0),
    .i252(n157),
    .i253(1'b0),
    .i254(1'b0),
    .i255(1'b0),
    .i26(1'b0),
    .i27(1'b0),
    .i28(1'b0),
    .i29(1'b0),
    .i3(1'b0),
    .i30(1'b0),
    .i31(1'b0),
    .i32(1'b0),
    .i33(1'b0),
    .i34(1'b0),
    .i35(1'b0),
    .i36(1'b0),
    .i37(1'b0),
    .i38(1'b0),
    .i39(1'b0),
    .i4(1'b0),
    .i40(1'b0),
    .i41(1'b0),
    .i42(1'b0),
    .i43(1'b0),
    .i44(1'b0),
    .i45(1'b0),
    .i46(1'b0),
    .i47(1'b0),
    .i48(1'b0),
    .i49(1'b0),
    .i5(1'b0),
    .i50(1'b0),
    .i51(1'b0),
    .i52(1'b0),
    .i53(1'b0),
    .i54(1'b0),
    .i55(1'b0),
    .i56(1'b0),
    .i57(1'b0),
    .i58(1'b0),
    .i59(1'b0),
    .i6(1'b0),
    .i60(1'b0),
    .i61(1'b0),
    .i62(1'b0),
    .i63(1'b0),
    .i64(1'b0),
    .i65(1'b0),
    .i66(1'b0),
    .i67(1'b0),
    .i68(1'b0),
    .i69(1'b0),
    .i7(1'b0),
    .i70(1'b0),
    .i71(1'b0),
    .i72(1'b0),
    .i73(1'b0),
    .i74(1'b0),
    .i75(1'b0),
    .i76(1'b0),
    .i77(1'b0),
    .i78(1'b0),
    .i79(1'b0),
    .i8(1'b0),
    .i80(1'b0),
    .i81(1'b0),
    .i82(1'b0),
    .i83(1'b0),
    .i84(1'b0),
    .i85(1'b0),
    .i86(1'b0),
    .i87(1'b0),
    .i88(1'b0),
    .i89(1'b0),
    .i9(1'b0),
    .i90(1'b0),
    .i91(1'b0),
    .i92(1'b0),
    .i93(1'b0),
    .i94(1'b0),
    .i95(1'b0),
    .i96(1'b0),
    .i97(1'b0),
    .i98(1'b0),
    .i99(1'b0),
    .sel(IR),
    .o(n213));  // ../../rtl/t80se/T80_MCode.vhd(1348)
  binary_mux_s5_w1 mux65 (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b0),
    .i11(1'b0),
    .i12(1'b0),
    .i13(1'b0),
    .i14(1'b0),
    .i15(1'b0),
    .i16(1'b0),
    .i17(1'b0),
    .i18(1'b0),
    .i19(1'b0),
    .i2(1'b0),
    .i20(1'b0),
    .i21(1'b0),
    .i22(1'b0),
    .i23(1'b0),
    .i24(1'b0),
    .i25(1'b0),
    .i26(1'b0),
    .i27(1'b0),
    .i28(1'b0),
    .i29(1'b0),
    .i3(1'b0),
    .i30(1'b0),
    .i31(n12),
    .i4(1'b0),
    .i5(1'b0),
    .i6(1'b0),
    .i7(1'b0),
    .i8(1'b0),
    .i9(1'b0),
    .sel({IR[7:6],IR[2:0]}),
    .o(n214));  // ../../rtl/t80se/T80_MCode.vhd(1348)
  binary_mux_s8_w1 mux66 (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b0),
    .i100(1'b0),
    .i101(1'b0),
    .i102(1'b0),
    .i103(1'b0),
    .i104(1'b0),
    .i105(1'b0),
    .i106(1'b0),
    .i107(1'b0),
    .i108(1'b0),
    .i109(1'b0),
    .i11(1'b0),
    .i110(1'b0),
    .i111(1'b0),
    .i112(1'b0),
    .i113(1'b0),
    .i114(1'b0),
    .i115(1'b0),
    .i116(1'b0),
    .i117(1'b0),
    .i118(1'b0),
    .i119(1'b0),
    .i12(1'b0),
    .i120(1'b0),
    .i121(1'b0),
    .i122(1'b0),
    .i123(1'b0),
    .i124(1'b0),
    .i125(1'b0),
    .i126(1'b0),
    .i127(1'b0),
    .i128(1'b0),
    .i129(1'b0),
    .i13(1'b0),
    .i130(1'b0),
    .i131(1'b0),
    .i132(1'b0),
    .i133(1'b0),
    .i134(1'b0),
    .i135(1'b0),
    .i136(1'b0),
    .i137(1'b0),
    .i138(1'b0),
    .i139(1'b0),
    .i14(1'b0),
    .i140(1'b0),
    .i141(1'b0),
    .i142(1'b0),
    .i143(1'b0),
    .i144(1'b0),
    .i145(1'b0),
    .i146(1'b0),
    .i147(1'b0),
    .i148(1'b0),
    .i149(1'b0),
    .i15(1'b0),
    .i150(1'b0),
    .i151(1'b0),
    .i152(1'b0),
    .i153(1'b0),
    .i154(1'b0),
    .i155(1'b0),
    .i156(1'b0),
    .i157(1'b0),
    .i158(1'b0),
    .i159(1'b0),
    .i16(1'b0),
    .i160(1'b0),
    .i161(1'b0),
    .i162(1'b0),
    .i163(1'b0),
    .i164(1'b0),
    .i165(1'b0),
    .i166(1'b0),
    .i167(1'b0),
    .i168(1'b0),
    .i169(1'b0),
    .i17(1'b0),
    .i170(1'b0),
    .i171(1'b0),
    .i172(1'b0),
    .i173(1'b0),
    .i174(1'b0),
    .i175(1'b0),
    .i176(1'b0),
    .i177(1'b0),
    .i178(1'b0),
    .i179(1'b0),
    .i18(1'b0),
    .i180(1'b0),
    .i181(1'b0),
    .i182(1'b0),
    .i183(1'b0),
    .i184(1'b0),
    .i185(1'b0),
    .i186(1'b0),
    .i187(1'b0),
    .i188(1'b0),
    .i189(1'b0),
    .i19(1'b0),
    .i190(1'b0),
    .i191(1'b0),
    .i192(1'b0),
    .i193(1'b0),
    .i194(1'b0),
    .i195(1'b0),
    .i196(1'b0),
    .i197(1'b0),
    .i198(1'b0),
    .i199(1'b0),
    .i2(1'b0),
    .i20(1'b0),
    .i200(1'b0),
    .i201(1'b0),
    .i202(1'b0),
    .i203(1'b0),
    .i204(1'b0),
    .i205(1'b0),
    .i206(1'b0),
    .i207(1'b0),
    .i208(1'b0),
    .i209(1'b0),
    .i21(1'b0),
    .i210(1'b0),
    .i211(n12),
    .i212(1'b0),
    .i213(1'b0),
    .i214(1'b0),
    .i215(1'b0),
    .i216(1'b0),
    .i217(1'b0),
    .i218(1'b0),
    .i219(n12),
    .i22(1'b0),
    .i220(1'b0),
    .i221(1'b0),
    .i222(1'b0),
    .i223(1'b0),
    .i224(1'b0),
    .i225(1'b0),
    .i226(1'b0),
    .i227(1'b0),
    .i228(1'b0),
    .i229(1'b0),
    .i23(1'b0),
    .i230(1'b0),
    .i231(1'b0),
    .i232(1'b0),
    .i233(1'b0),
    .i234(1'b0),
    .i235(1'b0),
    .i236(1'b0),
    .i237(1'b0),
    .i238(1'b0),
    .i239(1'b0),
    .i24(1'b0),
    .i240(1'b0),
    .i241(1'b0),
    .i242(1'b0),
    .i243(1'b0),
    .i244(1'b0),
    .i245(1'b0),
    .i246(1'b0),
    .i247(1'b0),
    .i248(1'b0),
    .i249(1'b0),
    .i25(1'b0),
    .i250(1'b0),
    .i251(1'b0),
    .i252(1'b0),
    .i253(1'b0),
    .i254(1'b0),
    .i255(1'b0),
    .i26(1'b0),
    .i27(1'b0),
    .i28(1'b0),
    .i29(1'b0),
    .i3(1'b0),
    .i30(1'b0),
    .i31(1'b0),
    .i32(1'b0),
    .i33(1'b0),
    .i34(1'b0),
    .i35(1'b0),
    .i36(1'b0),
    .i37(1'b0),
    .i38(1'b0),
    .i39(1'b0),
    .i4(1'b0),
    .i40(1'b0),
    .i41(1'b0),
    .i42(1'b0),
    .i43(1'b0),
    .i44(1'b0),
    .i45(1'b0),
    .i46(1'b0),
    .i47(1'b0),
    .i48(1'b0),
    .i49(1'b0),
    .i5(1'b0),
    .i50(1'b0),
    .i51(1'b0),
    .i52(1'b0),
    .i53(1'b0),
    .i54(1'b0),
    .i55(1'b0),
    .i56(1'b0),
    .i57(1'b0),
    .i58(1'b0),
    .i59(1'b0),
    .i6(1'b0),
    .i60(1'b0),
    .i61(1'b0),
    .i62(1'b0),
    .i63(1'b0),
    .i64(1'b0),
    .i65(1'b0),
    .i66(1'b0),
    .i67(1'b0),
    .i68(1'b0),
    .i69(1'b0),
    .i7(1'b0),
    .i70(1'b0),
    .i71(1'b0),
    .i72(1'b0),
    .i73(1'b0),
    .i74(1'b0),
    .i75(1'b0),
    .i76(1'b0),
    .i77(1'b0),
    .i78(1'b0),
    .i79(1'b0),
    .i8(1'b0),
    .i80(1'b0),
    .i81(1'b0),
    .i82(1'b0),
    .i83(1'b0),
    .i84(1'b0),
    .i85(1'b0),
    .i86(1'b0),
    .i87(1'b0),
    .i88(1'b0),
    .i89(1'b0),
    .i9(1'b0),
    .i90(1'b0),
    .i91(1'b0),
    .i92(1'b0),
    .i93(1'b0),
    .i94(1'b0),
    .i95(1'b0),
    .i96(1'b0),
    .i97(1'b0),
    .i98(1'b0),
    .i99(1'b0),
    .sel(IR),
    .o(n215));  // ../../rtl/t80se/T80_MCode.vhd(1348)
  binary_mux_s8_w8 mux67 (
    .i0({4'b0000,n102}),
    .i1(8'b00000000),
    .i10(8'b00000000),
    .i100(8'b00000000),
    .i101({1'b0,n57[2:0],4'b0000}),
    .i102(8'b00000000),
    .i103(8'b00000000),
    .i104(8'b00000000),
    .i105(8'b00000000),
    .i106(8'b00000000),
    .i107(8'b00000000),
    .i108(8'b00000000),
    .i109({1'b0,n57[2:0],4'b0000}),
    .i11({6'b000011,IR[5:4]}),
    .i110(8'b00000000),
    .i111(8'b00000000),
    .i112(8'b00000000),
    .i113(8'b00000000),
    .i114(8'b00000000),
    .i115(8'b00000000),
    .i116(8'b00000000),
    .i117({1'b0,n57[2:0],4'b0000}),
    .i118(8'b00000000),
    .i119(8'b00000000),
    .i12(8'b00000000),
    .i120(8'b00000000),
    .i121(8'b00000000),
    .i122(8'b00000000),
    .i123(8'b00000000),
    .i124(8'b00000000),
    .i125({1'b0,n57[2:0],4'b0000}),
    .i126(8'b00000000),
    .i127(8'b00000000),
    .i128(8'b00000000),
    .i129(8'b00000000),
    .i13(8'b00000000),
    .i130(8'b00000000),
    .i131(8'b00000000),
    .i132(8'b00000000),
    .i133(8'b00000000),
    .i134(8'b00000000),
    .i135(8'b00000000),
    .i136(8'b00000000),
    .i137(8'b00000000),
    .i138(8'b00000000),
    .i139(8'b00000000),
    .i14(8'b00000000),
    .i140(8'b00000000),
    .i141(8'b00000000),
    .i142(8'b00000000),
    .i143(8'b00000000),
    .i144(8'b00000000),
    .i145(8'b00000000),
    .i146(8'b00000000),
    .i147(8'b00000000),
    .i148(8'b00000000),
    .i149(8'b00000000),
    .i15(8'b00000000),
    .i150(8'b00000000),
    .i151(8'b00000000),
    .i152(8'b00000000),
    .i153(8'b00000000),
    .i154(8'b00000000),
    .i155(8'b00000000),
    .i156(8'b00000000),
    .i157(8'b00000000),
    .i158(8'b00000000),
    .i159(8'b00000000),
    .i16(8'b00000000),
    .i160({n269,4'b0000}),
    .i161({n279,4'b0000}),
    .i162({n337,4'b0000}),
    .i163({n346,4'b0000}),
    .i164(8'b00000000),
    .i165(8'b00000000),
    .i166(8'b00000000),
    .i167(8'b00000000),
    .i168({n269,4'b0000}),
    .i169({n279,4'b0000}),
    .i17(8'b00000000),
    .i170({n337,4'b0000}),
    .i171({n346,4'b0000}),
    .i172(8'b00000000),
    .i173(8'b00000000),
    .i174(8'b00000000),
    .i175(8'b00000000),
    .i176({n269,4'b0000}),
    .i177({n279,4'b0000}),
    .i178({n337,4'b0000}),
    .i179({n346,4'b0000}),
    .i18(8'b00000000),
    .i180(8'b00000000),
    .i181(8'b00000000),
    .i182(8'b00000000),
    .i183(8'b00000000),
    .i184({n269,4'b0000}),
    .i185({n279,4'b0000}),
    .i186({n337,4'b0000}),
    .i187({n346,4'b0000}),
    .i188(8'b00000000),
    .i189(8'b00000000),
    .i19({6'b000001,IR[5:4]}),
    .i190(8'b00000000),
    .i191(8'b00000000),
    .i192({5'b00000,n57[11:9]}),
    .i193({5'b00000,n57[8:6]}),
    .i194(8'b00000000),
    .i195(8'b00000000),
    .i196({4'b0000,n151}),
    .i197({4'b0000,n50,n51,n52,n53}),
    .i198(8'b00000000),
    .i199({4'b0000,n164,n165,n166,n167}),
    .i2(8'b00000000),
    .i20(8'b00000000),
    .i200({5'b00000,n57[11:9]}),
    .i201({5'b00000,n57[5:3]}),
    .i202(8'b00000000),
    .i203(8'b00000000),
    .i204({4'b0000,n151}),
    .i205({4'b0000,n140,n141,n142,n143}),
    .i206(8'b00000000),
    .i207({4'b0000,n164,n165,n166,n167}),
    .i208({5'b00000,n57[11:9]}),
    .i209({5'b00000,n57[8:6]}),
    .i21(8'b00000000),
    .i210(8'b00000000),
    .i211(8'b00000000),
    .i212({4'b0000,n151}),
    .i213({4'b0000,n50,n51,n52,n53}),
    .i214(8'b00000000),
    .i215({4'b0000,n164,n165,n166,n167}),
    .i216({5'b00000,n57[11:9]}),
    .i217(8'b00000000),
    .i218(8'b00000000),
    .i219(8'b00000000),
    .i22(8'b00000000),
    .i220({4'b0000,n151}),
    .i221(8'b00000000),
    .i222(8'b00000000),
    .i223({4'b0000,n164,n165,n166,n167}),
    .i224({5'b00000,n57[11:9]}),
    .i225({5'b00000,n57[8:6]}),
    .i226(8'b00000000),
    .i227({4'b0000,n65,n66,n67,n68}),
    .i228({4'b0000,n151}),
    .i229({4'b0000,n50,n51,n52,n53}),
    .i23(8'b00000000),
    .i230(8'b00000000),
    .i231({4'b0000,n164,n165,n166,n167}),
    .i232({5'b00000,n57[11:9]}),
    .i233(8'b00000000),
    .i234(8'b00000000),
    .i235(8'b00000000),
    .i236({4'b0000,n151}),
    .i237(8'b00000000),
    .i238(8'b00000000),
    .i239({4'b0000,n164,n165,n166,n167}),
    .i24(8'b00000000),
    .i240({5'b00000,n57[11:9]}),
    .i241({5'b00000,n57[8:6]}),
    .i242(8'b00000000),
    .i243(8'b00000000),
    .i244({4'b0000,n151}),
    .i245({4'b0000,n50,n51,n52,n53}),
    .i246(8'b00000000),
    .i247({4'b0000,n164,n165,n166,n167}),
    .i248({5'b00000,n57[11:9]}),
    .i249(8'b00000000),
    .i25(8'b00000000),
    .i250(8'b00000000),
    .i251(8'b00000000),
    .i252({4'b0000,n151}),
    .i253(8'b00000000),
    .i254(8'b00000000),
    .i255({4'b0000,n164,n165,n166,n167}),
    .i26(8'b00000000),
    .i27({6'b000011,IR[5:4]}),
    .i28(8'b00000000),
    .i29(8'b00000000),
    .i3({6'b000001,IR[5:4]}),
    .i30(8'b00000000),
    .i31(8'b00000000),
    .i32(8'b00000000),
    .i33(8'b00000000),
    .i34(8'b00000000),
    .i35({6'b000001,IR[5:4]}),
    .i36(8'b00000000),
    .i37(8'b00000000),
    .i38(8'b00000000),
    .i39(8'b00000000),
    .i4(8'b00000000),
    .i40(8'b00000000),
    .i41(8'b00000000),
    .i42(8'b00000000),
    .i43({6'b000011,IR[5:4]}),
    .i44(8'b00000000),
    .i45(8'b00000000),
    .i46(8'b00000000),
    .i47(8'b00000000),
    .i48(8'b00000000),
    .i49(8'b00000000),
    .i5(8'b00000000),
    .i50(8'b00000000),
    .i51({6'b000001,IR[5:4]}),
    .i52(8'b00000000),
    .i53(8'b00000000),
    .i54(8'b00000000),
    .i55(8'b00000000),
    .i56(8'b00000000),
    .i57(8'b00000000),
    .i58(8'b00000000),
    .i59({6'b000011,IR[5:4]}),
    .i6(8'b00000000),
    .i60(8'b00000000),
    .i61(8'b00000000),
    .i62(8'b00000000),
    .i63(8'b00000000),
    .i64(8'b00000000),
    .i65(8'b00000000),
    .i66(8'b00000000),
    .i67(8'b00000000),
    .i68(8'b00000000),
    .i69({1'b0,n57[2:0],4'b0000}),
    .i7(8'b00000000),
    .i70(8'b00000000),
    .i71(8'b00000000),
    .i72(8'b00000000),
    .i73(8'b00000000),
    .i74(8'b00000000),
    .i75(8'b00000000),
    .i76(8'b00000000),
    .i77({1'b0,n57[2:0],4'b0000}),
    .i78(8'b00000000),
    .i79(8'b00000000),
    .i8(8'b00000000),
    .i80(8'b00000000),
    .i81(8'b00000000),
    .i82(8'b00000000),
    .i83(8'b00000000),
    .i84(8'b00000000),
    .i85({1'b0,n57[2:0],4'b0000}),
    .i86(8'b00000000),
    .i87(8'b00000000),
    .i88(8'b00000000),
    .i89(8'b00000000),
    .i9(8'b00000000),
    .i90(8'b00000000),
    .i91(8'b00000000),
    .i92(8'b00000000),
    .i93({1'b0,n57[2:0],4'b0000}),
    .i94(8'b00000000),
    .i95(8'b00000000),
    .i96(8'b00000000),
    .i97(8'b00000000),
    .i98(8'b00000000),
    .i99(8'b00000000),
    .sel(IR),
    .o({n362,n194}));  // ../../rtl/t80se/T80_MCode.vhd(1984)
  binary_mux_s3_w70 mux68 (
    .i0(70'b1111111111111111111111111111111111111111111111111111111111111111111111),
    .i1({7'b0001111,n159[1],62'b10001111100000010000000100000010000000010011100001110000000000}),
    .i2(70'b0001111010000000100011000010110011111011111111110010000001111111111111),
    .i3({4'b1111,n159[1],65'b11111101111011111111111111111111101111111101101111110001111111111}),
    .i4(70'b1111011111101111011111111111111111111101111111101111111111001111111111),
    .i5(70'b1111111111111111111111111111111111111111111111111111111111111111111111),
    .i6(70'b1111111111111111111111111111111111111111111111111111111111111111111111),
    .i7(70'b1001111111111111110011111111111110011111111111110011111111111111111111),
    .sel(MCycle),
    .o({n168,n242,n243,n152,n160,n54,n56,n59,n172,n173,n174,n175,n145,n158,n251,n252,n71,n72,n339,n340,n341,n329,n330,n331,n277,n278,n266,n267,n268,n233,n234,n3,n4,n315,n262,n324,n325,n326,n318,n319,n320,n6,n7,n264,n222,n223,n18,n9,n10,n86,n87,n79,n80,n32,n41,n44,n16,n17,n27,n28,n13,n14,n15,n20,n21,n22}));  // ../../rtl/t80se/T80_MCode.vhd(1294)
  binary_mux_s3_w3 mux69 (
    .i0({n0[2],n0[0],n0[0]}),
    .i1({n0[2],n0[0],n0[0]}),
    .i2(3'b100),
    .i3({n0[2],n0[0],n0[0]}),
    .i4({n0[2],n0[0],n0[0]}),
    .i5({n0[2],n0[0],n0[0]}),
    .i6({n0[2],n0[0],n0[0]}),
    .i7({n0[2],n0[0],n0[0]}),
    .sel(MCycle),
    .o(n220));  // ../../rtl/t80se/T80_MCode.vhd(1400)
  binary_mux_s3_w1 mux7 (
    .i0(1'b0),
    .i1(1'b0),
    .i2(1'b1),
    .i3(1'b0),
    .i4(1'b1),
    .i5(1'b0),
    .i6(1'b0),
    .i7(1'b0),
    .sel(MCycle),
    .o(n60));  // ../../rtl/t80se/T80_MCode.vhd(668)
  binary_mux_s1_w3 mux70 (
    .i0(n220),
    .i1({n0[2],n0[0],n0[0]}),
    .sel(n230[0]),
    .o(n232));  // ../../rtl/t80se/T80_MCode.vhd(1452)
  binary_mux_s1_w6 mux71 (
    .i0({n218[1],1'b1,n218[0],n227[1],1'b1,n227[0]}),
    .i1(6'b111111),
    .sel(n230[0]),
    .o({n250,n231}));  // ../../rtl/t80se/T80_MCode.vhd(1547)
  binary_mux_s1_w16 mux72 (
    .i0({1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3]}),
    .i1(16'b1010101110011000),
    .sel(n0[2]),
    .o({n237,n246,n226,n217}));  // ../../rtl/t80se/T80_MCode.vhd(1479)
  binary_mux_s3_w16 mux73 (
    .i0({1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3]}),
    .i1({1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3]}),
    .i2(16'b1010101110011000),
    .i3({1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3]}),
    .i4({1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3]}),
    .i5({1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3]}),
    .i6({1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3]}),
    .i7({1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3],1'b0,IR[5:3]}),
    .sel(MCycle),
    .o({n238,n247,n228,n219}));  // ../../rtl/t80se/T80_MCode.vhd(1496)
  binary_mux_s8_w9 mux74 (
    .i0({3'b111,n250,n104}),
    .i1({3'b111,n250,3'b111}),
    .i10({3'b111,n250,n13,n14,n15}),
    .i100({3'b111,n231,3'b111}),
    .i101({1'b1,n315,1'b1,n231,3'b111}),
    .i102({3'b111,n233,1'b1,n234,n3,1'b1,n4}),
    .i103({n300[1],1'b1,n300[0],n231,3'b111}),
    .i104({n318,n319,n320,n231,3'b111}),
    .i105({n324,n325,n326,n231,3'b111}),
    .i106({3'b111,n231,3'b111}),
    .i107({2'b11,n262,n231,3'b111}),
    .i108({3'b111,n231,3'b111}),
    .i109({1'b1,n315,1'b1,n231,3'b111}),
    .i11({3'b111,n250,3'b111}),
    .i110({3'b111,n233,1'b1,n234,n3,1'b1,n4}),
    .i111({n300[3],1'b1,n300[2],n231,3'b111}),
    .i112({n318,n319,n320,n231,n6,1'b1,n7}),
    .i113({n324,n325,n326,n231,n6,1'b1,n7}),
    .i114({3'b111,n231,n6,1'b1,n7}),
    .i115({2'b11,n264,n231,n6,1'b1,n7}),
    .i116({3'b111,n231,n6,1'b1,n7}),
    .i117({1'b1,n315,1'b1,n231,n6,1'b1,n7}),
    .i118({3'b111,n233,1'b1,n234,3'b111}),
    .i119({3'b111,n231,n6,1'b1,n7}),
    .i12({3'b111,n250,3'b111}),
    .i120({n318,n319,n320,n231,3'b111}),
    .i121({n324,n325,n326,n231,3'b111}),
    .i122({3'b111,n231,3'b111}),
    .i123({2'b11,n262,n231,3'b111}),
    .i124({3'b111,n231,3'b111}),
    .i125({1'b1,n315,1'b1,n231,3'b111}),
    .i126({3'b111,n233,1'b1,n234,n3,1'b1,n4}),
    .i127({3'b111,n231,3'b111}),
    .i128({3'b111,n250,3'b111}),
    .i129({3'b111,n250,3'b111}),
    .i13({3'b111,n250,3'b111}),
    .i130({3'b111,n250,3'b111}),
    .i131({3'b111,n250,3'b111}),
    .i132({3'b111,n250,3'b111}),
    .i133({3'b111,n250,3'b111}),
    .i134({3'b111,n251,1'b1,n252,n71,1'b1,n72}),
    .i135({3'b111,n250,3'b111}),
    .i136({3'b111,n250,3'b111}),
    .i137({3'b111,n250,3'b111}),
    .i138({3'b111,n250,3'b111}),
    .i139({3'b111,n250,3'b111}),
    .i14({3'b111,n222,1'b1,n223,3'b111}),
    .i140({3'b111,n250,3'b111}),
    .i141({3'b111,n250,3'b111}),
    .i142({3'b111,n251,1'b1,n252,n71,1'b1,n72}),
    .i143({3'b111,n250,3'b111}),
    .i144({3'b111,n250,3'b111}),
    .i145({3'b111,n250,3'b111}),
    .i146({3'b111,n250,3'b111}),
    .i147({3'b111,n250,3'b111}),
    .i148({3'b111,n250,3'b111}),
    .i149({3'b111,n250,3'b111}),
    .i15({3'b111,n250,3'b111}),
    .i150({3'b111,n251,1'b1,n252,n71,1'b1,n72}),
    .i151({3'b111,n250,3'b111}),
    .i152({3'b111,n250,3'b111}),
    .i153({3'b111,n250,3'b111}),
    .i154({3'b111,n250,3'b111}),
    .i155({3'b111,n250,3'b111}),
    .i156({3'b111,n250,3'b111}),
    .i157({3'b111,n250,3'b111}),
    .i158({3'b111,n251,1'b1,n252,n71,1'b1,n72}),
    .i159({3'b111,n250,3'b111}),
    .i16({3'b111,n250,3'b111}),
    .i160({n266,n267,n268,n250,3'b111}),
    .i161({n277,1'b1,n278,n250,3'b111}),
    .i162({n329,n330,n331,n250,3'b111}),
    .i163({n339,n340,n341,n250,3'b111}),
    .i164({3'b111,n250,3'b111}),
    .i165({3'b111,n250,3'b111}),
    .i166({3'b111,n251,1'b1,n252,n71,1'b1,n72}),
    .i167({3'b111,n250,3'b111}),
    .i168({n266,n267,n268,n250,3'b111}),
    .i169({n277,1'b1,n278,n250,3'b111}),
    .i17({3'b111,n250,3'b111}),
    .i170({n329,n330,n331,n250,3'b111}),
    .i171({n339,n340,n341,n250,3'b111}),
    .i172({3'b111,n250,3'b111}),
    .i173({3'b111,n250,3'b111}),
    .i174({3'b111,n251,1'b1,n252,n71,1'b1,n72}),
    .i175({3'b111,n250,3'b111}),
    .i176({n266,n267,n268,n250,3'b111}),
    .i177({n277,1'b1,n278,n250,3'b111}),
    .i178({n329,n330,n331,n250,3'b111}),
    .i179({n339,n340,n341,n250,3'b111}),
    .i18({3'b111,n250,n27,n28,1'b1}),
    .i180({3'b111,n250,3'b111}),
    .i181({3'b111,n250,3'b111}),
    .i182({3'b111,n251,1'b1,n252,n71,1'b1,n72}),
    .i183({3'b111,n250,3'b111}),
    .i184({n266,n267,n268,n250,3'b111}),
    .i185({n277,1'b1,n278,n250,3'b111}),
    .i186({n329,n330,n331,n250,3'b111}),
    .i187({n339,n340,n341,n250,3'b111}),
    .i188({3'b111,n250,3'b111}),
    .i189({3'b111,n250,3'b111}),
    .i19({3'b111,n250,3'b111}),
    .i190({3'b111,n251,1'b1,n252,n71,1'b1,n72}),
    .i191({3'b111,n250,3'b111}),
    .i192({3'b111,n250,n160}),
    .i193({3'b111,n250,1'b1,n56,1'b1}),
    .i194({3'b111,n250,3'b111}),
    .i195({3'b111,n250,3'b111}),
    .i196({3'b111,n250,n152}),
    .i197({3'b111,n250,1'b1,n54,1'b1}),
    .i198({3'b111,n242,1'b1,n243,3'b111}),
    .i199({3'b111,n250,1'b1,n168,1'b1}),
    .i2({3'b111,n250,n20,n21,n22}),
    .i20({3'b111,n250,3'b111}),
    .i200({3'b111,n250,n160}),
    .i201({3'b111,n250,1'b1,n158,1'b1}),
    .i202({3'b111,n250,3'b111}),
    .i203({3'b111,n250,3'b111}),
    .i204({3'b111,n250,n152}),
    .i205({3'b111,n250,1'b1,n145,1'b1}),
    .i206({3'b111,n242,1'b1,n243,3'b111}),
    .i207({3'b111,n250,1'b1,n168,1'b1}),
    .i208({3'b111,n250,n160}),
    .i209({3'b111,n250,1'b1,n56,1'b1}),
    .i21({3'b111,n250,3'b111}),
    .i210({3'b111,n250,3'b111}),
    .i211({3'b111,n250,1'b1,n174,n175}),
    .i212({3'b111,n250,n152}),
    .i213({3'b111,n250,1'b1,n54,1'b1}),
    .i214({3'b111,n242,1'b1,n243,3'b111}),
    .i215({3'b111,n250,1'b1,n168,1'b1}),
    .i216({3'b111,n250,n160}),
    .i217({3'b111,n250,3'b111}),
    .i218({3'b111,n250,3'b111}),
    .i219({3'b111,n250,1'b1,n172,n173}),
    .i22({3'b111,n222,1'b1,n223,3'b111}),
    .i220({3'b111,n250,n152}),
    .i221({3'b111,n250,3'b111}),
    .i222({3'b111,n242,1'b1,n243,3'b111}),
    .i223({3'b111,n250,1'b1,n168,1'b1}),
    .i224({3'b111,n250,n160}),
    .i225({3'b111,n250,1'b1,n56,1'b1}),
    .i226({3'b111,n250,3'b111}),
    .i227({3'b111,n250,1'b1,n59,1'b1}),
    .i228({3'b111,n250,n152}),
    .i229({3'b111,n250,1'b1,n54,1'b1}),
    .i23({3'b111,n250,3'b111}),
    .i230({3'b111,n242,1'b1,n243,3'b111}),
    .i231({3'b111,n250,1'b1,n168,1'b1}),
    .i232({3'b111,n250,n160}),
    .i233({3'b111,n250,3'b111}),
    .i234({3'b111,n250,3'b111}),
    .i235({3'b111,n250,3'b111}),
    .i236({3'b111,n250,n152}),
    .i237({3'b111,n250,3'b111}),
    .i238({3'b111,n242,1'b1,n243,3'b111}),
    .i239({3'b111,n250,1'b1,n168,1'b1}),
    .i24({3'b111,n250,3'b111}),
    .i240({3'b111,n250,n160}),
    .i241({3'b111,n250,1'b1,n56,1'b1}),
    .i242({3'b111,n250,3'b111}),
    .i243({3'b111,n250,3'b111}),
    .i244({3'b111,n250,n152}),
    .i245({3'b111,n250,1'b1,n54,1'b1}),
    .i246({3'b111,n242,1'b1,n243,3'b111}),
    .i247({3'b111,n250,1'b1,n168,1'b1}),
    .i248({3'b111,n250,n160}),
    .i249({3'b111,n250,3'b111}),
    .i25({3'b111,n250,3'b111}),
    .i250({3'b111,n250,3'b111}),
    .i251({3'b111,n250,3'b111}),
    .i252({3'b111,n250,n152}),
    .i253({3'b111,n250,3'b111}),
    .i254({3'b111,n242,1'b1,n243,3'b111}),
    .i255({3'b111,n250,1'b1,n168,1'b1}),
    .i26({3'b111,n250,n16,n17,1'b1}),
    .i27({3'b111,n250,3'b111}),
    .i28({3'b111,n250,3'b111}),
    .i29({3'b111,n250,3'b111}),
    .i3({3'b111,n250,3'b111}),
    .i30({3'b111,n222,1'b1,n223,3'b111}),
    .i31({3'b111,n250,3'b111}),
    .i32({3'b111,n250,3'b111}),
    .i33({3'b111,n250,3'b111}),
    .i34({3'b111,n250,2'b11,n44}),
    .i35({3'b111,n250,3'b111}),
    .i36({3'b111,n250,3'b111}),
    .i37({3'b111,n250,3'b111}),
    .i38({3'b111,n222,1'b1,n223,3'b111}),
    .i39({3'b111,n250,3'b111}),
    .i4({3'b111,n250,3'b111}),
    .i40({3'b111,n250,3'b111}),
    .i41({3'b111,n250,3'b111}),
    .i42({3'b111,n250,2'b11,n41}),
    .i43({3'b111,n250,3'b111}),
    .i44({3'b111,n250,3'b111}),
    .i45({3'b111,n250,3'b111}),
    .i46({3'b111,n222,1'b1,n223,3'b111}),
    .i47({3'b111,n250,3'b111}),
    .i48({3'b111,n250,3'b111}),
    .i49({3'b111,n250,3'b111}),
    .i5({3'b111,n250,3'b111}),
    .i50({3'b111,n250,2'b11,n32}),
    .i51({3'b111,n250,3'b111}),
    .i52({3'b111,n250,n79,1'b1,n80}),
    .i53({3'b111,n250,n86,1'b1,n87}),
    .i54({3'b111,n222,1'b1,n223,n9,1'b1,n10}),
    .i55({3'b111,n250,3'b111}),
    .i56({3'b111,n250,3'b111}),
    .i57({3'b111,n250,3'b111}),
    .i58({3'b111,n250,2'b11,n18}),
    .i59({3'b111,n250,3'b111}),
    .i6({3'b111,n222,1'b1,n223,3'b111}),
    .i60({3'b111,n250,3'b111}),
    .i61({3'b111,n250,3'b111}),
    .i62({3'b111,n222,1'b1,n223,3'b111}),
    .i63({3'b111,n250,3'b111}),
    .i64({n318,n319,n320,n231,3'b111}),
    .i65({n324,n325,n326,n231,3'b111}),
    .i66({3'b111,n231,3'b111}),
    .i67({2'b11,n264,n231,3'b111}),
    .i68({3'b111,n231,3'b111}),
    .i69({1'b1,n315,1'b1,n231,3'b111}),
    .i7({3'b111,n250,3'b111}),
    .i70({3'b111,n233,1'b1,n234,n3,1'b1,n4}),
    .i71({3'b111,n231,3'b111}),
    .i72({n318,n319,n320,n231,3'b111}),
    .i73({n324,n325,n326,n231,3'b111}),
    .i74({3'b111,n231,3'b111}),
    .i75({2'b11,n262,n231,3'b111}),
    .i76({3'b111,n231,3'b111}),
    .i77({1'b1,n315,1'b1,n231,3'b111}),
    .i78({3'b111,n233,1'b1,n234,n3,1'b1,n4}),
    .i79({3'b111,n231,3'b111}),
    .i8({3'b111,n250,3'b111}),
    .i80({n318,n319,n320,n231,3'b111}),
    .i81({n324,n325,n326,n231,3'b111}),
    .i82({3'b111,n231,3'b111}),
    .i83({2'b11,n264,n231,3'b111}),
    .i84({3'b111,n231,3'b111}),
    .i85({1'b1,n315,1'b1,n231,3'b111}),
    .i86({3'b111,n233,1'b1,n234,n3,1'b1,n4}),
    .i87({3'b111,n231,3'b111}),
    .i88({n318,n319,n320,n231,3'b111}),
    .i89({n324,n325,n326,n231,3'b111}),
    .i9({3'b111,n250,3'b111}),
    .i90({3'b111,n231,3'b111}),
    .i91({2'b11,n262,n231,3'b111}),
    .i92({3'b111,n231,3'b111}),
    .i93({1'b1,n315,1'b1,n231,3'b111}),
    .i94({3'b111,n233,1'b1,n234,n3,1'b1,n4}),
    .i95({3'b111,n231,3'b111}),
    .i96({n318,n319,n320,n231,3'b111}),
    .i97({n324,n325,n326,n231,3'b111}),
    .i98({3'b111,n231,3'b111}),
    .i99({2'b11,n264,n231,3'b111}),
    .sel(IR),
    .o({n355,n259,n185}));  // ../../rtl/t80se/T80_MCode.vhd(1984)
  binary_mux_s3_w4 mux75 (
    .i0(4'b1111),
    .i1(4'b0000),
    .i2(4'b0011),
    .i3(4'b1111),
    .i4(4'b1111),
    .i5(4'b1111),
    .i6(4'b1111),
    .i7(4'b0000),
    .sel(MCycle),
    .o({n218,n227}));  // ../../rtl/t80se/T80_MCode.vhd(1400)
  binary_mux_s5_w1 mux76 (
    .i0(n240),
    .i1(n240),
    .i10(1'b0),
    .i11(1'b0),
    .i12(1'b0),
    .i13(1'b0),
    .i14(1'b0),
    .i15(1'b0),
    .i16(n240),
    .i17(n240),
    .i18(n240),
    .i19(n240),
    .i2(n240),
    .i20(n240),
    .i21(n240),
    .i22(n1),
    .i23(n240),
    .i24(n240),
    .i25(n240),
    .i26(n240),
    .i27(n240),
    .i28(n240),
    .i29(n240),
    .i3(n240),
    .i30(n1),
    .i31(n240),
    .i4(n240),
    .i5(n240),
    .i6(n1),
    .i7(n240),
    .i8(1'b0),
    .i9(1'b0),
    .sel({IR[7:6],IR[2:0]}),
    .o(n256));  // ../../rtl/t80se/T80_MCode.vhd(1565)
  binary_mux_s3_w18 mux77 (
    .i0(18'b101011011011011011),
    .i1({4'b1010,n149,13'b1011011011011}),
    .i2({8'b10101101,F[0],2'b01,n122,2'b01,F[6],2'b01,n121}),
    .i3({n149,n159[1],16'b1011011011011011}),
    .i4(18'b101011011011011011),
    .i5(18'b101011011011011011),
    .i6(18'b101011011011011011),
    .i7(18'b101011011011011011),
    .sel(MCycle),
    .o({n155,n161,n127,n129,n131,n133}));  // ../../rtl/t80se/T80_MCode.vhd(1169)
  binary_mux_s5_w1 mux78 (
    .i0(n249[1]),
    .i1(n249[1]),
    .i10(n249[1]),
    .i11(n249[1]),
    .i12(n249[1]),
    .i13(n249[1]),
    .i14(1'b0),
    .i15(n249[1]),
    .i16(n249[1]),
    .i17(n249[1]),
    .i18(n249[1]),
    .i19(n249[1]),
    .i2(n249[1]),
    .i20(n249[1]),
    .i21(n249[1]),
    .i22(1'b0),
    .i23(n249[1]),
    .i24(n249[1]),
    .i25(n249[1]),
    .i26(n249[1]),
    .i27(n249[1]),
    .i28(n249[1]),
    .i29(n249[1]),
    .i3(n249[1]),
    .i30(1'b0),
    .i31(n249[1]),
    .i4(n249[1]),
    .i5(n249[1]),
    .i6(1'b0),
    .i7(n249[1]),
    .i8(n249[1]),
    .i9(n249[1]),
    .sel({IR[7:6],IR[2:0]}),
    .o(n258));  // ../../rtl/t80se/T80_MCode.vhd(1565)
  binary_mux_s5_w1 mux79 (
    .i0(n241),
    .i1(n241),
    .i10(1'b0),
    .i11(1'b0),
    .i12(1'b0),
    .i13(1'b0),
    .i14(1'b0),
    .i15(1'b0),
    .i16(n241),
    .i17(n241),
    .i18(n241),
    .i19(n241),
    .i2(n241),
    .i20(n241),
    .i21(n241),
    .i22(n12),
    .i23(n241),
    .i24(n241),
    .i25(n241),
    .i26(n241),
    .i27(n241),
    .i28(n241),
    .i29(n241),
    .i3(n241),
    .i30(n12),
    .i31(n241),
    .i4(n241),
    .i5(n241),
    .i6(n12),
    .i7(n241),
    .i8(1'b0),
    .i9(1'b0),
    .sel({IR[7:6],IR[2:0]}),
    .o(n261));  // ../../rtl/t80se/T80_MCode.vhd(1565)
  binary_mux_s3_w1 mux8 (
    .i0(1'b0),
    .i1(1'b0),
    .i2(1'b0),
    .i3(1'b1),
    .i4(1'b0),
    .i5(1'b1),
    .i6(1'b0),
    .i7(1'b0),
    .sel(MCycle),
    .o(n70));  // ../../rtl/t80se/T80_MCode.vhd(668)
  binary_mux_s3_w1 mux80 (
    .i0(1'b0),
    .i1(1'b0),
    .i2(1'b0),
    .i3(1'b1),
    .i4(1'b1),
    .i5(1'b0),
    .i6(1'b0),
    .i7(1'b0),
    .sel(MCycle),
    .o(n286));  // ../../rtl/t80se/T80_MCode.vhd(1745)
  binary_mux_s8_w8 mux81 (
    .i0({4'b0000,n106}),
    .i1(8'b00000000),
    .i10(8'b00000000),
    .i100({5'b01110,IR[2:0]}),
    .i101({5'b00000,IR[2:0]}),
    .i102(8'b00000000),
    .i103({1'b0,n308,n309,2'b00,IR[2:0]}),
    .i104({5'b00000,IR[2:0]}),
    .i105({n327,1'b0,IR[2:0]}),
    .i106({n292,1'b0,IR[2:0]}),
    .i107({5'b00000,IR[2:0]}),
    .i108({5'b01110,IR[2:0]}),
    .i109({5'b00000,IR[2:0]}),
    .i11(8'b00000000),
    .i110(8'b00000000),
    .i111({1'b0,n301,n302,2'b00,IR[2:0]}),
    .i112({4'b0000,n8}),
    .i113({n327,n8}),
    .i114({n298,n8}),
    .i115({n265,n8}),
    .i116({4'b0111,n8}),
    .i117({4'b0000,n8}),
    .i118(8'b00000000),
    .i119({4'b0000,n8}),
    .i12(8'b00001010),
    .i120({5'b00000,IR[2:0]}),
    .i121({n327,1'b0,IR[2:0]}),
    .i122({n292,1'b0,IR[2:0]}),
    .i123({5'b00000,IR[2:0]}),
    .i124({5'b01110,IR[2:0]}),
    .i125({5'b00000,IR[2:0]}),
    .i126(8'b00000000),
    .i127({5'b00000,IR[2:0]}),
    .i128({5'b00000,IR[2:0]}),
    .i129({5'b00000,IR[2:0]}),
    .i13(8'b00001010),
    .i130({5'b00000,IR[2:0]}),
    .i131({5'b00000,IR[2:0]}),
    .i132({5'b00000,IR[2:0]}),
    .i133({5'b00000,IR[2:0]}),
    .i134({4'b0000,n73}),
    .i135({5'b00000,IR[2:0]}),
    .i136({5'b00000,IR[2:0]}),
    .i137({5'b00000,IR[2:0]}),
    .i138({5'b00000,IR[2:0]}),
    .i139({5'b00000,IR[2:0]}),
    .i14(8'b00000000),
    .i140({5'b00000,IR[2:0]}),
    .i141({5'b00000,IR[2:0]}),
    .i142({4'b0000,n73}),
    .i143({5'b00000,IR[2:0]}),
    .i144({5'b00000,IR[2:0]}),
    .i145({5'b00000,IR[2:0]}),
    .i146({5'b00000,IR[2:0]}),
    .i147({5'b00000,IR[2:0]}),
    .i148({5'b00000,IR[2:0]}),
    .i149({5'b00000,IR[2:0]}),
    .i15(8'b00000000),
    .i150({4'b0000,n73}),
    .i151({5'b00000,IR[2:0]}),
    .i152({5'b00000,IR[2:0]}),
    .i153({5'b00000,IR[2:0]}),
    .i154({5'b00000,IR[2:0]}),
    .i155({5'b00000,IR[2:0]}),
    .i156({5'b00000,IR[2:0]}),
    .i157({5'b00000,IR[2:0]}),
    .i158({4'b0000,n73}),
    .i159({5'b00000,IR[2:0]}),
    .i16({4'b0000,n137,1'b0,n138,1'b0}),
    .i160({1'b0,n270,n271,2'b00,IR[2:0]}),
    .i161({1'b0,n280,n281,2'b00,IR[2:0]}),
    .i162({n332,n333,n334,2'b00,IR[2:0]}),
    .i163({n342,n343,n344,2'b00,IR[2:0]}),
    .i164({5'b00000,IR[2:0]}),
    .i165({5'b00000,IR[2:0]}),
    .i166({4'b0000,n73}),
    .i167({5'b00000,IR[2:0]}),
    .i168({1'b0,n270,n271,2'b00,IR[2:0]}),
    .i169({1'b0,n280,n281,2'b00,IR[2:0]}),
    .i17(8'b00000000),
    .i170({n332,n333,n334,2'b00,IR[2:0]}),
    .i171({n342,n343,n344,2'b00,IR[2:0]}),
    .i172({5'b00000,IR[2:0]}),
    .i173({5'b00000,IR[2:0]}),
    .i174({4'b0000,n73}),
    .i175({5'b00000,IR[2:0]}),
    .i176({1'b0,n270,n271,2'b00,IR[2:0]}),
    .i177({1'b0,n280,n281,2'b00,IR[2:0]}),
    .i178({n332,n333,n334,2'b00,IR[2:0]}),
    .i179({n342,n343,n344,2'b00,IR[2:0]}),
    .i18({5'b00000,n29,n30,n31}),
    .i180({5'b00000,IR[2:0]}),
    .i181({5'b00000,IR[2:0]}),
    .i182({4'b0000,n73}),
    .i183({5'b00000,IR[2:0]}),
    .i184({1'b0,n270,n271,2'b00,IR[2:0]}),
    .i185({1'b0,n280,n281,2'b00,IR[2:0]}),
    .i186({n332,n333,n334,2'b00,IR[2:0]}),
    .i187({n342,n343,n344,2'b00,IR[2:0]}),
    .i188({5'b00000,IR[2:0]}),
    .i189({5'b00000,IR[2:0]}),
    .i19(8'b00000000),
    .i190({4'b0000,n73}),
    .i191({5'b00000,IR[2:0]}),
    .i192(8'b00000000),
    .i193(8'b00000000),
    .i194(8'b00000000),
    .i195(8'b00000000),
    .i196({4'b0000,n154}),
    .i197({4'b0000,n55}),
    .i198({4'b0000,n78}),
    .i199({4'b0000,n169,n170,1'b0,n171}),
    .i2({5'b00000,n23,n24,n25}),
    .i20(8'b00001010),
    .i200(8'b00000000),
    .i201(8'b00000000),
    .i202(8'b00000000),
    .i203(8'b00000000),
    .i204({4'b0000,n154}),
    .i205({4'b0000,n146,n147,1'b0,n148}),
    .i206({4'b0000,n78}),
    .i207({4'b0000,n169,n170,1'b0,n171}),
    .i208(8'b00000000),
    .i209(8'b00000000),
    .i21(8'b00001010),
    .i210(8'b00000000),
    .i211({5'b00000,n176,n177,n178}),
    .i212({4'b0000,n154}),
    .i213({4'b0000,n55}),
    .i214({4'b0000,n78}),
    .i215({4'b0000,n169,n170,1'b0,n171}),
    .i216(8'b00000000),
    .i217(8'b00000000),
    .i218(8'b00000000),
    .i219(8'b00000000),
    .i22(8'b00000000),
    .i220({4'b0000,n154}),
    .i221(8'b00000000),
    .i222({4'b0000,n78}),
    .i223({4'b0000,n169,n170,1'b0,n171}),
    .i224(8'b00000000),
    .i225(8'b00000000),
    .i226(8'b00000000),
    .i227({5'b00000,n63,1'b0,n64}),
    .i228({4'b0000,n154}),
    .i229({4'b0000,n55}),
    .i23(8'b00000000),
    .i230({4'b0000,n78}),
    .i231({4'b0000,n169,n170,1'b0,n171}),
    .i232(8'b00000000),
    .i233(8'b00000000),
    .i234(8'b00000000),
    .i235(8'b00000000),
    .i236({4'b0000,n154}),
    .i237(8'b00000000),
    .i238({4'b0000,n78}),
    .i239({4'b0000,n169,n170,1'b0,n171}),
    .i24(8'b00000000),
    .i240(8'b00000000),
    .i241(8'b00000000),
    .i242(8'b00000000),
    .i243(8'b00000000),
    .i244({4'b0000,n154}),
    .i245({4'b0000,n55}),
    .i246({4'b0000,n78}),
    .i247({4'b0000,n169,n170,1'b0,n171}),
    .i248(8'b00000000),
    .i249(8'b00000000),
    .i25({4'b0000,n119}),
    .i250(8'b00000000),
    .i251(8'b00000000),
    .i252({4'b0000,n154}),
    .i253(8'b00000000),
    .i254({4'b0000,n78}),
    .i255({4'b0000,n169,n170,1'b0,n171}),
    .i26(8'b00000000),
    .i27(8'b00000000),
    .i28(8'b00001010),
    .i29(8'b00001010),
    .i3(8'b00000000),
    .i30(8'b00000000),
    .i31(8'b00000000),
    .i32(8'b00000000),
    .i33(8'b00000000),
    .i34({5'b00000,n45,1'b0,n46}),
    .i35(8'b00000000),
    .i36(8'b00001010),
    .i37(8'b00001010),
    .i38(8'b00000000),
    .i39(8'b00000000),
    .i4(8'b00001010),
    .i40(8'b00000000),
    .i41({4'b0000,n119}),
    .i42(8'b00000000),
    .i43(8'b00000000),
    .i44(8'b00001010),
    .i45(8'b00001010),
    .i46(8'b00000000),
    .i47(8'b00000000),
    .i48(8'b00000000),
    .i49(8'b00000000),
    .i5(8'b00001010),
    .i50({5'b00000,n33,n34,n35}),
    .i51(8'b00000000),
    .i52({4'b0000,n83,1'b0,n84,1'b0}),
    .i53({4'b0000,n90,1'b0,n91,1'b0}),
    .i54({4'b0000,n11}),
    .i55(8'b00000000),
    .i56(8'b00000000),
    .i57({4'b0000,n119}),
    .i58(8'b00000000),
    .i59(8'b00000000),
    .i6(8'b00000000),
    .i60(8'b00001010),
    .i61(8'b00001010),
    .i62(8'b00000000),
    .i63(8'b00000000),
    .i64({5'b00000,IR[2:0]}),
    .i65({n327,1'b0,IR[2:0]}),
    .i66({n298,1'b0,IR[2:0]}),
    .i67({n265,1'b0,IR[2:0]}),
    .i68({5'b01110,IR[2:0]}),
    .i69({5'b00000,IR[2:0]}),
    .i7(8'b00000000),
    .i70(8'b00000000),
    .i71({5'b00000,IR[2:0]}),
    .i72({5'b00000,IR[2:0]}),
    .i73({n327,1'b0,IR[2:0]}),
    .i74({n292,1'b0,IR[2:0]}),
    .i75({5'b00000,IR[2:0]}),
    .i76({5'b01110,IR[2:0]}),
    .i77({5'b00000,IR[2:0]}),
    .i78(8'b00000000),
    .i79({5'b00000,IR[2:0]}),
    .i8(8'b00000000),
    .i80({5'b00000,IR[2:0]}),
    .i81({n327,1'b0,IR[2:0]}),
    .i82({n298,1'b0,IR[2:0]}),
    .i83({n265,1'b0,IR[2:0]}),
    .i84({5'b01110,IR[2:0]}),
    .i85({5'b00000,IR[2:0]}),
    .i86(8'b00000000),
    .i87({5'b00000,IR[2:0]}),
    .i88({5'b00000,IR[2:0]}),
    .i89({n327,1'b0,IR[2:0]}),
    .i9({4'b0000,n119}),
    .i90({n292,1'b0,IR[2:0]}),
    .i91({5'b00000,IR[2:0]}),
    .i92({5'b01110,IR[2:0]}),
    .i93({5'b00000,IR[2:0]}),
    .i94(8'b00000000),
    .i95({5'b00000,IR[2:0]}),
    .i96({5'b00000,IR[2:0]}),
    .i97({n327,1'b0,IR[2:0]}),
    .i98({n298,1'b0,IR[2:0]}),
    .i99({n265,1'b0,IR[2:0]}),
    .sel(IR),
    .o({n360,n179}));  // ../../rtl/t80se/T80_MCode.vhd(1984)
  binary_mux_s8_w4 mux82 (
    .i0(4'b0000),
    .i1(4'b0000),
    .i10(4'b0000),
    .i100(4'b0000),
    .i101(4'b0000),
    .i102(4'b0000),
    .i103(4'b0000),
    .i104({1'b0,n26[7],2'b00}),
    .i105({1'b0,n26[8],2'b00}),
    .i106({n26[10:9],2'b00}),
    .i107(4'b0000),
    .i108(4'b0000),
    .i109(4'b0000),
    .i11(4'b0000),
    .i110(4'b0000),
    .i111(4'b0000),
    .i112({1'b0,n26[7],2'b00}),
    .i113({1'b0,n26[8],2'b00}),
    .i114({n26[6:5],2'b00}),
    .i115(4'b0000),
    .i116(4'b0000),
    .i117(4'b0000),
    .i118(4'b0000),
    .i119(4'b0000),
    .i12(4'b0000),
    .i120({1'b0,n26[7],2'b00}),
    .i121({1'b0,n26[8],2'b00}),
    .i122({n26[10:9],2'b00}),
    .i123(4'b0000),
    .i124(4'b0000),
    .i125(4'b0000),
    .i126(4'b0000),
    .i127(4'b0000),
    .i128(4'b0000),
    .i129(4'b0000),
    .i13(4'b0000),
    .i130(4'b0000),
    .i131(4'b0000),
    .i132(4'b0000),
    .i133(4'b0000),
    .i134(4'b0000),
    .i135(4'b0000),
    .i136(4'b0000),
    .i137(4'b0000),
    .i138(4'b0000),
    .i139(4'b0000),
    .i14(4'b0000),
    .i140(4'b0000),
    .i141(4'b0000),
    .i142(4'b0000),
    .i143(4'b0000),
    .i144(4'b0000),
    .i145(4'b0000),
    .i146(4'b0000),
    .i147(4'b0000),
    .i148(4'b0000),
    .i149(4'b0000),
    .i15(4'b0000),
    .i150(4'b0000),
    .i151(4'b0000),
    .i152(4'b0000),
    .i153(4'b0000),
    .i154(4'b0000),
    .i155(4'b0000),
    .i156(4'b0000),
    .i157(4'b0000),
    .i158(4'b0000),
    .i159(4'b0000),
    .i16(4'b0000),
    .i160(4'b0000),
    .i161(4'b0000),
    .i162({n26[12:11],2'b00}),
    .i163({n26[14:13],2'b00}),
    .i164(4'b0000),
    .i165(4'b0000),
    .i166(4'b0000),
    .i167(4'b0000),
    .i168(4'b0000),
    .i169(4'b0000),
    .i17(4'b0000),
    .i170({n26[12:11],2'b00}),
    .i171({n26[14:13],2'b00}),
    .i172(4'b0000),
    .i173(4'b0000),
    .i174(4'b0000),
    .i175(4'b0000),
    .i176(4'b0000),
    .i177(4'b0000),
    .i178({n26[12:11],2'b00}),
    .i179({n26[14:13],2'b00}),
    .i18({2'b00,n26[1],1'b0}),
    .i180(4'b0000),
    .i181(4'b0000),
    .i182(4'b0000),
    .i183(4'b0000),
    .i184(4'b0000),
    .i185(4'b0000),
    .i186({n26[12:11],2'b00}),
    .i187({n26[14:13],2'b00}),
    .i188(4'b0000),
    .i189(4'b0000),
    .i19(4'b0000),
    .i190(4'b0000),
    .i191(4'b0000),
    .i192(4'b0000),
    .i193(4'b0000),
    .i194(4'b0000),
    .i195(4'b0000),
    .i196(4'b0000),
    .i197(4'b0000),
    .i198(4'b0000),
    .i199(4'b0000),
    .i2({2'b00,n26[0],1'b0}),
    .i20(4'b0000),
    .i200(4'b0000),
    .i201(4'b0000),
    .i202(4'b0000),
    .i203(4'b0000),
    .i204(4'b0000),
    .i205(4'b0000),
    .i206(4'b0000),
    .i207(4'b0000),
    .i208(4'b0000),
    .i209(4'b0000),
    .i21(4'b0000),
    .i210(4'b0000),
    .i211(4'b0000),
    .i212(4'b0000),
    .i213(4'b0000),
    .i214(4'b0000),
    .i215(4'b0000),
    .i216(4'b0000),
    .i217(4'b0000),
    .i218(4'b0000),
    .i219(4'b0000),
    .i22(4'b0000),
    .i220(4'b0000),
    .i221(4'b0000),
    .i222(4'b0000),
    .i223(4'b0000),
    .i224(4'b0000),
    .i225(4'b0000),
    .i226(4'b0000),
    .i227(4'b0000),
    .i228(4'b0000),
    .i229(4'b0000),
    .i23(4'b0000),
    .i230(4'b0000),
    .i231(4'b0000),
    .i232(4'b0000),
    .i233(4'b0000),
    .i234(4'b0000),
    .i235(4'b0000),
    .i236(4'b0000),
    .i237(4'b0000),
    .i238(4'b0000),
    .i239(4'b0000),
    .i24(4'b0000),
    .i240(4'b0000),
    .i241(4'b0000),
    .i242(4'b0000),
    .i243(4'b0000),
    .i244(4'b0000),
    .i245(4'b0000),
    .i246(4'b0000),
    .i247(4'b0000),
    .i248(4'b0000),
    .i249(4'b0000),
    .i25({2'b00,n26[4:3]}),
    .i250(4'b0000),
    .i251(4'b0000),
    .i252(4'b0000),
    .i253(4'b0000),
    .i254(4'b0000),
    .i255(4'b0000),
    .i26(4'b0000),
    .i27(4'b0000),
    .i28(4'b0000),
    .i29(4'b0000),
    .i3(4'b0000),
    .i30(4'b0000),
    .i31(4'b0000),
    .i32(4'b0000),
    .i33(4'b0000),
    .i34(4'b0000),
    .i35(4'b0000),
    .i36(4'b0000),
    .i37(4'b0000),
    .i38(4'b0000),
    .i39(4'b0000),
    .i4(4'b0000),
    .i40(4'b0000),
    .i41({2'b00,n26[4:3]}),
    .i42(4'b0000),
    .i43(4'b0000),
    .i44(4'b0000),
    .i45(4'b0000),
    .i46(4'b0000),
    .i47(4'b0000),
    .i48(4'b0000),
    .i49(4'b0000),
    .i5(4'b0000),
    .i50({2'b00,n26[2],1'b0}),
    .i51(4'b0000),
    .i52(4'b0000),
    .i53(4'b0000),
    .i54(4'b0000),
    .i55(4'b0000),
    .i56(4'b0000),
    .i57({2'b00,n26[4:3]}),
    .i58(4'b0000),
    .i59(4'b0000),
    .i6(4'b0000),
    .i60(4'b0000),
    .i61(4'b0000),
    .i62(4'b0000),
    .i63(4'b0000),
    .i64({1'b0,n26[7],2'b00}),
    .i65({1'b0,n26[8],2'b00}),
    .i66({n26[6:5],2'b00}),
    .i67(4'b0000),
    .i68(4'b0000),
    .i69(4'b0000),
    .i7(4'b0000),
    .i70(4'b0000),
    .i71(4'b0000),
    .i72({1'b0,n26[7],2'b00}),
    .i73({1'b0,n26[8],2'b00}),
    .i74({n26[10:9],2'b00}),
    .i75(4'b0000),
    .i76(4'b0000),
    .i77(4'b0000),
    .i78(4'b0000),
    .i79(4'b0000),
    .i8(4'b0000),
    .i80({1'b0,n26[7],2'b00}),
    .i81({1'b0,n26[8],2'b00}),
    .i82({n26[6:5],2'b00}),
    .i83(4'b0000),
    .i84(4'b0000),
    .i85(4'b0000),
    .i86(4'b0000),
    .i87(4'b0000),
    .i88({1'b0,n26[7],2'b00}),
    .i89({1'b0,n26[8],2'b00}),
    .i9({2'b00,n26[4:3]}),
    .i90({n26[10:9],2'b00}),
    .i91(4'b0000),
    .i92(4'b0000),
    .i93(4'b0000),
    .i94(4'b0000),
    .i95(4'b0000),
    .i96({1'b0,n26[7],2'b00}),
    .i97({1'b0,n26[8],2'b00}),
    .i98({n26[6:5],2'b00}),
    .i99(4'b0000),
    .sel(IR),
    .o({n372,n189}));  // ../../rtl/t80se/T80_MCode.vhd(1984)
  binary_mux_s1_w4 mux83 (
    .i0(4'b0000),
    .i1({1'b0,IR[5:3]}),
    .sel(n316),
    .o(n317));  // ../../rtl/t80se/T80_MCode.vhd(1901)
  binary_mux_s3_w1 mux84 (
    .i0(1'b0),
    .i1(1'b0),
    .i2(n316),
    .i3(1'b0),
    .i4(1'b0),
    .i5(1'b0),
    .i6(1'b0),
    .i7(1'b0),
    .sel(MCycle),
    .o(n321));  // ../../rtl/t80se/T80_MCode.vhd(1904)
  binary_mux_s6_w1 mux85 (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b0),
    .i11(1'b0),
    .i12(1'b0),
    .i13(1'b0),
    .i14(1'b0),
    .i15(1'b0),
    .i16(1'b0),
    .i17(1'b0),
    .i18(1'b0),
    .i19(1'b0),
    .i2(1'b0),
    .i20(1'b0),
    .i21(1'b0),
    .i22(1'b0),
    .i23(1'b1),
    .i24(1'b0),
    .i25(1'b0),
    .i26(1'b0),
    .i27(1'b0),
    .i28(1'b0),
    .i29(1'b0),
    .i3(1'b0),
    .i30(1'b0),
    .i31(1'b0),
    .i32(1'b0),
    .i33(1'b0),
    .i34(1'b0),
    .i35(1'b0),
    .i36(1'b0),
    .i37(1'b0),
    .i38(1'b0),
    .i39(1'b0),
    .i4(1'b0),
    .i40(1'b0),
    .i41(1'b0),
    .i42(1'b0),
    .i43(1'b0),
    .i44(1'b0),
    .i45(1'b0),
    .i46(1'b0),
    .i47(1'b0),
    .i48(1'b0),
    .i49(1'b0),
    .i5(1'b0),
    .i50(1'b0),
    .i51(1'b0),
    .i52(1'b0),
    .i53(1'b0),
    .i54(1'b0),
    .i55(1'b0),
    .i56(1'b0),
    .i57(1'b0),
    .i58(1'b0),
    .i59(1'b0),
    .i6(1'b0),
    .i60(1'b0),
    .i61(1'b0),
    .i62(1'b0),
    .i63(1'b0),
    .i7(1'b0),
    .i8(1'b0),
    .i9(1'b0),
    .sel({IR[7:5],IR[2:0]}),
    .o(n347));  // ../../rtl/t80se/T80_MCode.vhd(1984)
  binary_mux_s7_w1 mux86 (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b0),
    .i100(1'b0),
    .i101(1'b0),
    .i102(1'b0),
    .i103(1'b0),
    .i104(1'b0),
    .i105(1'b0),
    .i106(1'b0),
    .i107(1'b0),
    .i108(1'b0),
    .i109(1'b0),
    .i11(1'b0),
    .i110(1'b0),
    .i111(1'b0),
    .i112(1'b0),
    .i113(1'b0),
    .i114(1'b0),
    .i115(1'b0),
    .i116(1'b0),
    .i117(1'b0),
    .i118(1'b0),
    .i119(1'b0),
    .i12(1'b0),
    .i120(1'b0),
    .i121(1'b0),
    .i122(1'b0),
    .i123(1'b0),
    .i124(1'b0),
    .i125(1'b0),
    .i126(1'b0),
    .i127(1'b0),
    .i13(1'b0),
    .i14(1'b0),
    .i15(1'b0),
    .i16(1'b0),
    .i17(1'b0),
    .i18(1'b0),
    .i19(1'b0),
    .i2(1'b0),
    .i20(1'b0),
    .i21(1'b0),
    .i22(1'b0),
    .i23(1'b0),
    .i24(1'b0),
    .i25(1'b0),
    .i26(1'b0),
    .i27(1'b0),
    .i28(1'b0),
    .i29(1'b0),
    .i3(1'b0),
    .i30(1'b0),
    .i31(1'b0),
    .i32(1'b0),
    .i33(1'b0),
    .i34(1'b0),
    .i35(1'b0),
    .i36(1'b0),
    .i37(1'b0),
    .i38(1'b0),
    .i39(1'b1),
    .i4(1'b0),
    .i40(1'b0),
    .i41(1'b0),
    .i42(1'b0),
    .i43(1'b0),
    .i44(1'b0),
    .i45(1'b0),
    .i46(1'b0),
    .i47(1'b0),
    .i48(1'b0),
    .i49(1'b0),
    .i5(1'b0),
    .i50(1'b0),
    .i51(1'b0),
    .i52(1'b0),
    .i53(1'b0),
    .i54(1'b0),
    .i55(1'b0),
    .i56(1'b0),
    .i57(1'b0),
    .i58(1'b0),
    .i59(1'b0),
    .i6(1'b0),
    .i60(1'b0),
    .i61(1'b0),
    .i62(1'b0),
    .i63(1'b0),
    .i64(1'b0),
    .i65(1'b0),
    .i66(1'b0),
    .i67(1'b0),
    .i68(1'b0),
    .i69(1'b0),
    .i7(1'b0),
    .i70(1'b0),
    .i71(1'b0),
    .i72(1'b0),
    .i73(1'b0),
    .i74(1'b0),
    .i75(1'b0),
    .i76(1'b0),
    .i77(1'b0),
    .i78(1'b0),
    .i79(1'b0),
    .i8(1'b0),
    .i80(1'b0),
    .i81(1'b0),
    .i82(1'b0),
    .i83(1'b0),
    .i84(1'b0),
    .i85(1'b0),
    .i86(1'b0),
    .i87(1'b0),
    .i88(1'b0),
    .i89(1'b0),
    .i9(1'b0),
    .i90(1'b0),
    .i91(1'b0),
    .i92(1'b0),
    .i93(1'b0),
    .i94(1'b0),
    .i95(1'b0),
    .i96(1'b0),
    .i97(1'b0),
    .i98(1'b0),
    .i99(1'b0),
    .sel({IR[7:4],IR[2:0]}),
    .o(n348));  // ../../rtl/t80se/T80_MCode.vhd(1984)
  binary_mux_s7_w1 mux87 (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b0),
    .i100(1'b0),
    .i101(1'b0),
    .i102(1'b0),
    .i103(1'b0),
    .i104(1'b0),
    .i105(1'b0),
    .i106(1'b0),
    .i107(1'b0),
    .i108(1'b0),
    .i109(1'b0),
    .i11(1'b0),
    .i110(1'b0),
    .i111(1'b0),
    .i112(1'b0),
    .i113(1'b0),
    .i114(1'b0),
    .i115(1'b0),
    .i116(1'b0),
    .i117(1'b0),
    .i118(1'b0),
    .i119(1'b0),
    .i12(1'b0),
    .i120(1'b0),
    .i121(1'b0),
    .i122(1'b0),
    .i123(1'b0),
    .i124(1'b0),
    .i125(1'b0),
    .i126(1'b0),
    .i127(1'b0),
    .i13(1'b0),
    .i14(1'b0),
    .i15(1'b0),
    .i16(1'b0),
    .i17(1'b0),
    .i18(1'b0),
    .i19(1'b0),
    .i2(1'b0),
    .i20(1'b0),
    .i21(1'b0),
    .i22(1'b0),
    .i23(1'b0),
    .i24(1'b0),
    .i25(1'b0),
    .i26(1'b0),
    .i27(1'b0),
    .i28(1'b0),
    .i29(1'b0),
    .i3(1'b0),
    .i30(1'b0),
    .i31(1'b0),
    .i32(1'b0),
    .i33(1'b0),
    .i34(1'b0),
    .i35(1'b0),
    .i36(1'b0),
    .i37(1'b0),
    .i38(1'b0),
    .i39(1'b0),
    .i4(1'b0),
    .i40(1'b0),
    .i41(1'b0),
    .i42(1'b0),
    .i43(1'b0),
    .i44(1'b0),
    .i45(1'b0),
    .i46(1'b0),
    .i47(1'b1),
    .i48(1'b0),
    .i49(1'b0),
    .i5(1'b0),
    .i50(1'b0),
    .i51(1'b0),
    .i52(1'b0),
    .i53(1'b0),
    .i54(1'b0),
    .i55(1'b0),
    .i56(1'b0),
    .i57(1'b0),
    .i58(1'b0),
    .i59(1'b0),
    .i6(1'b0),
    .i60(1'b0),
    .i61(1'b0),
    .i62(1'b0),
    .i63(1'b0),
    .i64(1'b0),
    .i65(1'b0),
    .i66(1'b0),
    .i67(1'b0),
    .i68(1'b0),
    .i69(1'b0),
    .i7(1'b0),
    .i70(1'b0),
    .i71(1'b0),
    .i72(1'b0),
    .i73(1'b0),
    .i74(1'b0),
    .i75(1'b0),
    .i76(1'b0),
    .i77(1'b0),
    .i78(1'b0),
    .i79(1'b0),
    .i8(1'b0),
    .i80(1'b0),
    .i81(1'b0),
    .i82(1'b0),
    .i83(1'b0),
    .i84(1'b0),
    .i85(1'b0),
    .i86(1'b0),
    .i87(1'b0),
    .i88(1'b0),
    .i89(1'b0),
    .i9(1'b0),
    .i90(1'b0),
    .i91(1'b0),
    .i92(1'b0),
    .i93(1'b0),
    .i94(1'b0),
    .i95(1'b0),
    .i96(1'b0),
    .i97(1'b0),
    .i98(1'b0),
    .i99(1'b0),
    .sel({IR[7:5],IR[3:0]}),
    .o(n349));  // ../../rtl/t80se/T80_MCode.vhd(1984)
  binary_mux_s3_w81 mux88 (
    .i0({n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0]}),
    .i1({3'b101,n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],6'b101101,n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],6'b101101,n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],3'b101}),
    .i2({n0[2],n0[0],n0[0],3'b100,n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],3'b100,n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],9'b100100100,n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],6'b100100,n0[2],n0[0],n0[0],6'b100100,n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0]}),
    .i3({n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n150,n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],6'b100100,n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],6'b101101,n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],6'b100100,n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],3'b101,n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],15'b101101101101101}),
    .i4({n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],12'b101101101101,n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0]}),
    .i5({n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],3'b101,n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0]}),
    .i6({n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0]}),
    .i7({n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0],n0[2],n0[0],n0[0]}),
    .sel(MCycle),
    .o({n163,n245,n153,n162,n49,n69,n144,n254,n338,n328,n287,n276,n236,n293,n299,n307,n314,n225,n120,n128,n88,n81,n130,n132,n134,n126,n135}));  // ../../rtl/t80se/T80_MCode.vhd(1294)
  binary_mux_s8_w6 mux89 (
    .i0({1'b0,n249[1],1'b1,n98}),
    .i1({1'b0,n249[1],4'b1011}),
    .i10({1'b0,n249[1],4'b1010}),
    .i100({1'b0,n249[1],n230[0],3'b001}),
    .i101({1'b0,n249[1],n230[0],3'b001}),
    .i102(6'b010010),
    .i103({1'b0,n249[1],n230[0],3'b001}),
    .i104({1'b0,n249[1],n230[0],3'b001}),
    .i105({1'b0,n249[1],n230[0],3'b001}),
    .i106({1'b0,n249[1],n230[0],3'b001}),
    .i107({1'b0,n249[1],n230[0],3'b001}),
    .i108({1'b0,n249[1],n230[0],3'b001}),
    .i109({1'b0,n249[1],n230[0],3'b001}),
    .i11({1'b0,n249[1],4'b1001}),
    .i110(6'b010010),
    .i111({1'b0,n249[1],n230[0],3'b001}),
    .i112({1'b0,n249[1],n230[0],3'b010}),
    .i113({1'b0,n249[1],n230[0],3'b010}),
    .i114({1'b0,n249[1],n230[0],3'b010}),
    .i115({1'b0,n249[1],n230[0],3'b010}),
    .i116({1'b0,n249[1],n230[0],3'b010}),
    .i117({1'b0,n249[1],n230[0],3'b010}),
    .i118(6'b010001),
    .i119({1'b0,n249[1],n230[0],3'b010}),
    .i12({1'b0,n249[1],4'b1001}),
    .i120({1'b0,n249[1],n230[0],3'b001}),
    .i121({1'b0,n249[1],n230[0],3'b001}),
    .i122({1'b0,n249[1],n230[0],3'b001}),
    .i123({1'b0,n249[1],n230[0],3'b001}),
    .i124({1'b0,n249[1],n230[0],3'b001}),
    .i125({1'b0,n249[1],n230[0],3'b001}),
    .i126(6'b010010),
    .i127({1'b0,n249[1],n230[0],3'b001}),
    .i128({1'b0,n249[1],4'b1001}),
    .i129({1'b0,n249[1],4'b1001}),
    .i13({1'b0,n249[1],4'b1001}),
    .i130({1'b0,n249[1],4'b1001}),
    .i131({1'b0,n249[1],4'b1001}),
    .i132({1'b0,n249[1],4'b1001}),
    .i133({1'b0,n249[1],4'b1001}),
    .i134(6'b011010),
    .i135({1'b0,n249[1],4'b1001}),
    .i136({1'b0,n249[1],4'b1001}),
    .i137({1'b0,n249[1],4'b1001}),
    .i138({1'b0,n249[1],4'b1001}),
    .i139({1'b0,n249[1],4'b1001}),
    .i14(6'b011010),
    .i140({1'b0,n249[1],4'b1001}),
    .i141({1'b0,n249[1],4'b1001}),
    .i142(6'b011010),
    .i143({1'b0,n249[1],4'b1001}),
    .i144({1'b0,n249[1],4'b1001}),
    .i145({1'b0,n249[1],4'b1001}),
    .i146({1'b0,n249[1],4'b1001}),
    .i147({1'b0,n249[1],4'b1001}),
    .i148({1'b0,n249[1],4'b1001}),
    .i149({1'b0,n249[1],4'b1001}),
    .i15({1'b0,n249[1],4'b1001}),
    .i150(6'b011010),
    .i151({1'b0,n249[1],4'b1001}),
    .i152({1'b0,n249[1],4'b1001}),
    .i153({1'b0,n249[1],4'b1001}),
    .i154({1'b0,n249[1],4'b1001}),
    .i155({1'b0,n249[1],4'b1001}),
    .i156({1'b0,n249[1],4'b1001}),
    .i157({1'b0,n249[1],4'b1001}),
    .i158(6'b011010),
    .i159({1'b0,n249[1],4'b1001}),
    .i16({1'b0,n249[1],4'b1011}),
    .i160({1'b0,n249[1],4'b1001}),
    .i161({1'b0,n249[1],4'b1001}),
    .i162({1'b0,n249[1],4'b1001}),
    .i163({1'b0,n249[1],4'b1001}),
    .i164({1'b0,n249[1],4'b1001}),
    .i165({1'b0,n249[1],4'b1001}),
    .i166(6'b011010),
    .i167({1'b0,n249[1],4'b1001}),
    .i168({1'b0,n249[1],4'b1001}),
    .i169({1'b0,n249[1],4'b1001}),
    .i17({1'b0,n249[1],4'b1011}),
    .i170({1'b0,n249[1],4'b1001}),
    .i171({1'b0,n249[1],4'b1001}),
    .i172({1'b0,n249[1],4'b1001}),
    .i173({1'b0,n249[1],4'b1001}),
    .i174(6'b011010),
    .i175({1'b0,n249[1],4'b1001}),
    .i176({1'b0,n249[1],4'b1001}),
    .i177({1'b0,n249[1],4'b1001}),
    .i178({1'b0,n249[1],4'b1001}),
    .i179({1'b0,n249[1],4'b1001}),
    .i18({1'b0,n249[1],4'b1010}),
    .i180({1'b0,n249[1],4'b1001}),
    .i181({1'b0,n249[1],4'b1001}),
    .i182(6'b011010),
    .i183({1'b0,n249[1],4'b1001}),
    .i184({1'b0,n249[1],4'b1001}),
    .i185({1'b0,n249[1],4'b1001}),
    .i186({1'b0,n249[1],4'b1001}),
    .i187({1'b0,n249[1],4'b1001}),
    .i188({1'b0,n249[1],4'b1001}),
    .i189({1'b0,n249[1],4'b1001}),
    .i19({1'b0,n249[1],4'b1001}),
    .i190(6'b011010),
    .i191({1'b0,n249[1],4'b1001}),
    .i192({1'b0,n249[1],1'b1,n161}),
    .i193({1'b0,n249[1],4'b1011}),
    .i194({1'b0,n249[1],4'b1011}),
    .i195({1'b0,n249[1],4'b1011}),
    .i196({1'b0,n249[1],1'b1,n155}),
    .i197({1'b0,n249[1],4'b1011}),
    .i198(6'b011010),
    .i199({1'b0,n249[1],4'b1011}),
    .i2({1'b0,n249[1],4'b1010}),
    .i20({1'b0,n249[1],4'b1001}),
    .i200({1'b0,n249[1],1'b1,n161}),
    .i201({1'b0,n249[1],4'b1011}),
    .i202({1'b0,n249[1],4'b1011}),
    .i203({1'b0,n249[1],4'b1001}),
    .i204({1'b0,n249[1],1'b1,n155}),
    .i205({1'b0,n249[1],4'b1101}),
    .i206(6'b011010),
    .i207({1'b0,n249[1],4'b1011}),
    .i208({1'b0,n249[1],1'b1,n161}),
    .i209({1'b0,n249[1],4'b1011}),
    .i21({1'b0,n249[1],4'b1001}),
    .i210({1'b0,n249[1],4'b1011}),
    .i211({1'b0,n249[1],4'b1011}),
    .i212({1'b0,n249[1],1'b1,n155}),
    .i213({1'b0,n249[1],4'b1011}),
    .i214(6'b011010),
    .i215({1'b0,n249[1],4'b1011}),
    .i216({1'b0,n249[1],1'b1,n161}),
    .i217({1'b0,n249[1],4'b1001}),
    .i218({1'b0,n249[1],4'b1011}),
    .i219({1'b0,n249[1],4'b1011}),
    .i22(6'b011010),
    .i220({1'b0,n249[1],1'b1,n155}),
    .i221({1'b0,n249[1],4'b1001}),
    .i222(6'b011010),
    .i223({1'b0,n249[1],4'b1011}),
    .i224({1'b0,n249[1],1'b1,n161}),
    .i225({1'b0,n249[1],4'b1011}),
    .i226({1'b0,n249[1],4'b1011}),
    .i227({1'b0,n249[1],4'b1101}),
    .i228({1'b0,n249[1],1'b1,n155}),
    .i229({1'b0,n249[1],4'b1011}),
    .i23({1'b0,n249[1],4'b1001}),
    .i230(6'b011010),
    .i231({1'b0,n249[1],4'b1011}),
    .i232({1'b0,n249[1],1'b1,n161}),
    .i233({1'b0,n249[1],4'b1001}),
    .i234({1'b0,n249[1],4'b1011}),
    .i235({1'b0,n249[1],4'b1001}),
    .i236({1'b0,n249[1],1'b1,n155}),
    .i237({1'b0,n249[1],4'b1001}),
    .i238(6'b011010),
    .i239({1'b0,n249[1],4'b1011}),
    .i24({1'b0,n249[1],4'b1011}),
    .i240({1'b0,n249[1],1'b1,n161}),
    .i241({1'b0,n249[1],4'b1011}),
    .i242({1'b0,n249[1],4'b1011}),
    .i243({1'b0,n249[1],4'b1001}),
    .i244({1'b0,n249[1],1'b1,n155}),
    .i245({1'b0,n249[1],4'b1011}),
    .i246(6'b011010),
    .i247({1'b0,n249[1],4'b1011}),
    .i248({1'b0,n249[1],1'b1,n161}),
    .i249({1'b0,n249[1],4'b1001}),
    .i25({1'b0,n249[1],4'b1011}),
    .i250({1'b0,n249[1],4'b1011}),
    .i251({1'b0,n249[1],4'b1001}),
    .i252({1'b0,n249[1],1'b1,n155}),
    .i253({1'b0,n249[1],4'b1001}),
    .i254(6'b011010),
    .i255({1'b0,n249[1],4'b1011}),
    .i26({1'b0,n249[1],4'b1010}),
    .i27({1'b0,n249[1],4'b1001}),
    .i28({1'b0,n249[1],4'b1001}),
    .i29({1'b0,n249[1],4'b1001}),
    .i3({1'b0,n249[1],4'b1001}),
    .i30(6'b011010),
    .i31({1'b0,n249[1],4'b1001}),
    .i32({1'b0,n249[1],1'b1,n133}),
    .i33({1'b0,n249[1],4'b1011}),
    .i34({1'b0,n249[1],4'b1101}),
    .i35({1'b0,n249[1],4'b1001}),
    .i36({1'b0,n249[1],4'b1001}),
    .i37({1'b0,n249[1],4'b1001}),
    .i38(6'b011010),
    .i39({1'b0,n249[1],4'b1001}),
    .i4({1'b0,n249[1],4'b1001}),
    .i40({1'b0,n249[1],1'b1,n131}),
    .i41({1'b0,n249[1],4'b1011}),
    .i42({1'b0,n249[1],4'b1101}),
    .i43({1'b0,n249[1],4'b1001}),
    .i44({1'b0,n249[1],4'b1001}),
    .i45({1'b0,n249[1],4'b1001}),
    .i46(6'b011010),
    .i47({1'b0,n249[1],4'b1001}),
    .i48({1'b0,n249[1],1'b1,n129}),
    .i49({1'b0,n249[1],4'b1011}),
    .i5({1'b0,n249[1],4'b1001}),
    .i50({1'b0,n249[1],4'b1100}),
    .i51({1'b0,n249[1],4'b1001}),
    .i52({1'b0,n249[1],4'b1011}),
    .i53({1'b0,n249[1],4'b1011}),
    .i54(6'b011011),
    .i55({1'b0,n249[1],4'b1001}),
    .i56({1'b0,n249[1],1'b1,n127}),
    .i57({1'b0,n249[1],4'b1011}),
    .i58({1'b0,n249[1],4'b1100}),
    .i59({1'b0,n249[1],4'b1001}),
    .i6(6'b011010),
    .i60({1'b0,n249[1],4'b1001}),
    .i61({1'b0,n249[1],4'b1001}),
    .i62(6'b011010),
    .i63({1'b0,n249[1],4'b1001}),
    .i64({1'b0,n249[1],n230[0],3'b001}),
    .i65({1'b0,n249[1],n230[0],3'b001}),
    .i66({1'b0,n249[1],n230[0],3'b001}),
    .i67({1'b0,n249[1],n230[0],3'b001}),
    .i68({1'b0,n249[1],n230[0],3'b001}),
    .i69({1'b0,n249[1],n230[0],3'b001}),
    .i7({1'b0,n249[1],4'b1001}),
    .i70(6'b010010),
    .i71({1'b0,n249[1],n230[0],3'b001}),
    .i72({1'b0,n249[1],n230[0],3'b001}),
    .i73({1'b0,n249[1],n230[0],3'b001}),
    .i74({1'b0,n249[1],n230[0],3'b001}),
    .i75({1'b0,n249[1],n230[0],3'b001}),
    .i76({1'b0,n249[1],n230[0],3'b001}),
    .i77({1'b0,n249[1],n230[0],3'b001}),
    .i78(6'b010010),
    .i79({1'b0,n249[1],n230[0],3'b001}),
    .i8({1'b0,n249[1],4'b1001}),
    .i80({1'b0,n249[1],n230[0],3'b001}),
    .i81({1'b0,n249[1],n230[0],3'b001}),
    .i82({1'b0,n249[1],n230[0],3'b001}),
    .i83({1'b0,n249[1],n230[0],3'b001}),
    .i84({1'b0,n249[1],n230[0],3'b001}),
    .i85({1'b0,n249[1],n230[0],3'b001}),
    .i86(6'b010010),
    .i87({1'b0,n249[1],n230[0],3'b001}),
    .i88({1'b0,n249[1],n230[0],3'b001}),
    .i89({1'b0,n249[1],n230[0],3'b001}),
    .i9({1'b0,n249[1],4'b1011}),
    .i90({1'b0,n249[1],n230[0],3'b001}),
    .i91({1'b0,n249[1],n230[0],3'b001}),
    .i92({1'b0,n249[1],n230[0],3'b001}),
    .i93({1'b0,n249[1],n230[0],3'b001}),
    .i94(6'b010010),
    .i95({1'b0,n249[1],n230[0],3'b001}),
    .i96({1'b0,n249[1],n230[0],3'b001}),
    .i97({1'b0,n249[1],n230[0],3'b001}),
    .i98({1'b0,n249[1],n230[0],3'b001}),
    .i99({1'b0,n249[1],n230[0],3'b001}),
    .sel(IR),
    .o({n257,n183}));  // ../../rtl/t80se/T80_MCode.vhd(1565)
  binary_mux_s1_w4 mux9 (
    .i0(4'b0000),
    .i1({1'b0,IR[2:0]}),
    .sel(n77),
    .o(n78));  // ../../rtl/t80se/T80_MCode.vhd(728)
  binary_mux_s5_w1 mux90 (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b1),
    .i11(1'b0),
    .i12(1'b0),
    .i13(1'b1),
    .i14(1'b0),
    .i15(1'b0),
    .i16(1'b0),
    .i17(1'b0),
    .i18(1'b0),
    .i19(1'b0),
    .i2(1'b0),
    .i20(1'b0),
    .i21(1'b0),
    .i22(1'b0),
    .i23(1'b0),
    .i24(1'b0),
    .i25(1'b0),
    .i26(1'b0),
    .i27(1'b0),
    .i28(1'b0),
    .i29(1'b0),
    .i3(1'b0),
    .i30(1'b0),
    .i31(1'b0),
    .i4(1'b0),
    .i5(1'b0),
    .i6(1'b0),
    .i7(1'b0),
    .i8(1'b1),
    .i9(1'b1),
    .sel({IR[7:6],IR[2:0]}),
    .o(n352));  // ../../rtl/t80se/T80_MCode.vhd(1984)
  binary_mux_s6_w1 mux91 (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b0),
    .i11(1'b0),
    .i12(1'b0),
    .i13(1'b0),
    .i14(1'b0),
    .i15(1'b0),
    .i16(1'b0),
    .i17(1'b0),
    .i18(1'b0),
    .i19(n39),
    .i2(1'b0),
    .i20(1'b0),
    .i21(1'b0),
    .i22(1'b0),
    .i23(1'b0),
    .i24(1'b0),
    .i25(1'b0),
    .i26(1'b0),
    .i27(n39),
    .i28(1'b0),
    .i29(1'b0),
    .i3(1'b0),
    .i30(1'b0),
    .i31(1'b0),
    .i32(1'b0),
    .i33(1'b0),
    .i34(1'b0),
    .i35(1'b0),
    .i36(1'b0),
    .i37(1'b0),
    .i38(1'b0),
    .i39(1'b0),
    .i4(1'b0),
    .i40(1'b0),
    .i41(1'b0),
    .i42(1'b0),
    .i43(1'b0),
    .i44(1'b0),
    .i45(1'b0),
    .i46(1'b0),
    .i47(1'b0),
    .i48(1'b0),
    .i49(1'b0),
    .i5(1'b0),
    .i50(1'b0),
    .i51(1'b0),
    .i52(1'b0),
    .i53(1'b0),
    .i54(1'b0),
    .i55(1'b0),
    .i56(1'b0),
    .i57(1'b0),
    .i58(1'b0),
    .i59(1'b0),
    .i6(1'b0),
    .i60(1'b0),
    .i61(1'b0),
    .i62(1'b0),
    .i63(1'b0),
    .i7(1'b0),
    .i8(1'b0),
    .i9(1'b0),
    .sel({IR[7:6],IR[3:0]}),
    .o(n353));  // ../../rtl/t80se/T80_MCode.vhd(1984)
  binary_mux_s6_w1 mux92 (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b0),
    .i11(1'b0),
    .i12(1'b0),
    .i13(1'b0),
    .i14(1'b0),
    .i15(1'b0),
    .i16(1'b0),
    .i17(1'b0),
    .i18(1'b0),
    .i19(n1),
    .i2(1'b0),
    .i20(1'b0),
    .i21(n1),
    .i22(1'b0),
    .i23(1'b0),
    .i24(1'b0),
    .i25(1'b0),
    .i26(1'b0),
    .i27(n1),
    .i28(1'b0),
    .i29(n1),
    .i3(1'b0),
    .i30(1'b0),
    .i31(1'b0),
    .i32(1'b0),
    .i33(1'b0),
    .i34(1'b0),
    .i35(1'b0),
    .i36(1'b0),
    .i37(1'b0),
    .i38(1'b0),
    .i39(1'b0),
    .i4(1'b0),
    .i40(1'b0),
    .i41(1'b0),
    .i42(1'b0),
    .i43(1'b0),
    .i44(1'b0),
    .i45(1'b0),
    .i46(1'b0),
    .i47(1'b0),
    .i48(1'b0),
    .i49(1'b0),
    .i5(1'b0),
    .i50(1'b0),
    .i51(1'b0),
    .i52(1'b0),
    .i53(1'b0),
    .i54(1'b0),
    .i55(1'b0),
    .i56(1'b0),
    .i57(1'b0),
    .i58(1'b0),
    .i59(1'b0),
    .i6(1'b0),
    .i60(1'b0),
    .i61(1'b0),
    .i62(1'b0),
    .i63(1'b0),
    .i7(1'b0),
    .i8(1'b0),
    .i9(1'b0),
    .sel({IR[7:6],IR[3:0]}),
    .o(n354));  // ../../rtl/t80se/T80_MCode.vhd(1984)
  binary_mux_s6_w1 mux93 (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b0),
    .i11(1'b0),
    .i12(1'b0),
    .i13(1'b0),
    .i14(1'b0),
    .i15(1'b0),
    .i16(1'b0),
    .i17(1'b0),
    .i18(1'b0),
    .i19(n12),
    .i2(1'b0),
    .i20(1'b0),
    .i21(n12),
    .i22(1'b0),
    .i23(1'b0),
    .i24(1'b0),
    .i25(1'b0),
    .i26(1'b0),
    .i27(n12),
    .i28(1'b0),
    .i29(n12),
    .i3(1'b0),
    .i30(1'b0),
    .i31(1'b0),
    .i32(1'b0),
    .i33(1'b0),
    .i34(1'b0),
    .i35(1'b0),
    .i36(1'b0),
    .i37(1'b0),
    .i38(1'b0),
    .i39(1'b0),
    .i4(1'b0),
    .i40(1'b0),
    .i41(1'b0),
    .i42(1'b0),
    .i43(1'b0),
    .i44(1'b0),
    .i45(1'b0),
    .i46(1'b0),
    .i47(1'b0),
    .i48(1'b0),
    .i49(1'b0),
    .i5(1'b0),
    .i50(1'b0),
    .i51(1'b0),
    .i52(1'b0),
    .i53(1'b0),
    .i54(1'b0),
    .i55(1'b0),
    .i56(1'b0),
    .i57(1'b0),
    .i58(1'b0),
    .i59(1'b0),
    .i6(1'b0),
    .i60(1'b0),
    .i61(1'b0),
    .i62(1'b0),
    .i63(1'b0),
    .i7(1'b0),
    .i8(1'b0),
    .i9(1'b0),
    .sel({IR[7:6],IR[3:0]}),
    .o(n356));  // ../../rtl/t80se/T80_MCode.vhd(1984)
  binary_mux_s8_w1 mux94 (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b0),
    .i100(1'b0),
    .i101(1'b0),
    .i102(1'b0),
    .i103(n1),
    .i104(n321),
    .i105(1'b0),
    .i106(n39),
    .i107(n156),
    .i108(1'b0),
    .i109(1'b0),
    .i11(1'b0),
    .i110(1'b0),
    .i111(n1),
    .i112(n321),
    .i113(1'b0),
    .i114(n39),
    .i115(1'b0),
    .i116(1'b0),
    .i117(1'b0),
    .i118(1'b0),
    .i119(1'b0),
    .i12(1'b0),
    .i120(n321),
    .i121(1'b0),
    .i122(n39),
    .i123(n156),
    .i124(1'b0),
    .i125(1'b0),
    .i126(1'b0),
    .i127(1'b0),
    .i128(1'b0),
    .i129(1'b0),
    .i13(1'b0),
    .i130(1'b0),
    .i131(1'b0),
    .i132(1'b0),
    .i133(1'b0),
    .i134(1'b0),
    .i135(1'b0),
    .i136(1'b0),
    .i137(1'b0),
    .i138(1'b0),
    .i139(1'b0),
    .i14(1'b0),
    .i140(1'b0),
    .i141(1'b0),
    .i142(1'b0),
    .i143(1'b0),
    .i144(1'b0),
    .i145(1'b0),
    .i146(1'b0),
    .i147(1'b0),
    .i148(1'b0),
    .i149(1'b0),
    .i15(1'b0),
    .i150(1'b0),
    .i151(1'b0),
    .i152(1'b0),
    .i153(1'b0),
    .i154(1'b0),
    .i155(1'b0),
    .i156(1'b0),
    .i157(1'b0),
    .i158(1'b0),
    .i159(1'b0),
    .i16(1'b0),
    .i160(1'b0),
    .i161(1'b0),
    .i162(n335),
    .i163(n335),
    .i164(1'b0),
    .i165(1'b0),
    .i166(1'b0),
    .i167(1'b0),
    .i168(1'b0),
    .i169(1'b0),
    .i17(1'b0),
    .i170(n335),
    .i171(n335),
    .i172(1'b0),
    .i173(1'b0),
    .i174(1'b0),
    .i175(1'b0),
    .i176(1'b0),
    .i177(1'b0),
    .i178(n335),
    .i179(n335),
    .i18(1'b0),
    .i180(1'b0),
    .i181(1'b0),
    .i182(1'b0),
    .i183(1'b0),
    .i184(1'b0),
    .i185(1'b0),
    .i186(n335),
    .i187(n335),
    .i188(1'b0),
    .i189(1'b0),
    .i19(1'b0),
    .i190(1'b0),
    .i191(1'b0),
    .i192(1'b0),
    .i193(1'b0),
    .i194(1'b0),
    .i195(1'b0),
    .i196(1'b0),
    .i197(1'b0),
    .i198(1'b0),
    .i199(1'b0),
    .i2(1'b0),
    .i20(1'b0),
    .i200(1'b0),
    .i201(1'b0),
    .i202(1'b0),
    .i203(1'b0),
    .i204(1'b0),
    .i205(1'b0),
    .i206(1'b0),
    .i207(1'b0),
    .i208(1'b0),
    .i209(1'b0),
    .i21(1'b0),
    .i210(1'b0),
    .i211(1'b0),
    .i212(1'b0),
    .i213(1'b0),
    .i214(1'b0),
    .i215(1'b0),
    .i216(1'b0),
    .i217(1'b0),
    .i218(1'b0),
    .i219(1'b0),
    .i22(1'b0),
    .i220(1'b0),
    .i221(1'b0),
    .i222(1'b0),
    .i223(1'b0),
    .i224(1'b0),
    .i225(1'b0),
    .i226(1'b0),
    .i227(1'b0),
    .i228(1'b0),
    .i229(1'b0),
    .i23(1'b0),
    .i230(1'b0),
    .i231(1'b0),
    .i232(1'b0),
    .i233(1'b0),
    .i234(1'b0),
    .i235(1'b0),
    .i236(1'b0),
    .i237(1'b0),
    .i238(1'b0),
    .i239(1'b0),
    .i24(1'b0),
    .i240(1'b0),
    .i241(1'b0),
    .i242(1'b0),
    .i243(1'b0),
    .i244(1'b0),
    .i245(1'b0),
    .i246(1'b0),
    .i247(1'b0),
    .i248(1'b0),
    .i249(1'b0),
    .i25(1'b0),
    .i250(1'b0),
    .i251(1'b0),
    .i252(1'b0),
    .i253(1'b0),
    .i254(1'b0),
    .i255(1'b0),
    .i26(1'b0),
    .i27(1'b0),
    .i28(1'b0),
    .i29(1'b0),
    .i3(1'b0),
    .i30(1'b0),
    .i31(1'b0),
    .i32(1'b0),
    .i33(1'b0),
    .i34(1'b0),
    .i35(1'b0),
    .i36(1'b0),
    .i37(1'b0),
    .i38(1'b0),
    .i39(1'b0),
    .i4(1'b0),
    .i40(1'b0),
    .i41(1'b0),
    .i42(1'b0),
    .i43(1'b0),
    .i44(1'b0),
    .i45(1'b0),
    .i46(1'b0),
    .i47(1'b0),
    .i48(1'b0),
    .i49(1'b0),
    .i5(1'b0),
    .i50(1'b0),
    .i51(1'b0),
    .i52(1'b0),
    .i53(1'b0),
    .i54(1'b0),
    .i55(1'b0),
    .i56(1'b0),
    .i57(1'b0),
    .i58(1'b0),
    .i59(1'b0),
    .i6(1'b0),
    .i60(1'b0),
    .i61(1'b0),
    .i62(1'b0),
    .i63(1'b0),
    .i64(n321),
    .i65(1'b0),
    .i66(n39),
    .i67(1'b0),
    .i68(1'b0),
    .i69(1'b0),
    .i7(1'b0),
    .i70(1'b0),
    .i71(1'b0),
    .i72(n321),
    .i73(1'b0),
    .i74(n39),
    .i75(n156),
    .i76(1'b0),
    .i77(1'b0),
    .i78(1'b0),
    .i79(1'b0),
    .i8(1'b0),
    .i80(n321),
    .i81(1'b0),
    .i82(n39),
    .i83(1'b0),
    .i84(1'b0),
    .i85(1'b0),
    .i86(1'b0),
    .i87(1'b0),
    .i88(n321),
    .i89(1'b0),
    .i9(1'b0),
    .i90(n39),
    .i91(n156),
    .i92(1'b0),
    .i93(1'b0),
    .i94(1'b0),
    .i95(1'b0),
    .i96(n321),
    .i97(1'b0),
    .i98(n39),
    .i99(1'b0),
    .sel(IR),
    .o(n357));  // ../../rtl/t80se/T80_MCode.vhd(1984)
  binary_mux_s3_w53 mux95 (
    .i0(53'b00000000000000000000000000000000000000000000000000000),
    .i1(53'b00000000000000000000000000000000000000000000000000000),
    .i2({n48,12'b111111111110,IR[5:3],5'b00001,n317,8'b11111110,IR[5:3],2'b10,IR[5:3],1'b0,IR[5:3],n37,1'b0}),
    .i3({n47,44'b00000000000000000000000000000000000000000000,n38,1'b0}),
    .i4({19'b0000100000000000000,n37,30'b000000000000000000000000000001}),
    .i5({19'b0000000000000000000,n38,30'b000000000000000000000000000000}),
    .i6(53'b00000000000000000000000000000000000000000000000000000),
    .i7(53'b00000000000000000000000000000000000000000000000000000),
    .sel(MCycle),
    .o({n58,n61,n62,n74,n75,n76,n282,n283,n284,n272,n273,n274,n5,n263,n291,n322,n297,n303,n304,n305,n310,n311,n312,n2,n118,n92,n85,n40,n43}));  // ../../rtl/t80se/T80_MCode.vhd(583)
  binary_mux_s6_w1 mux96 (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b0),
    .i11(1'b0),
    .i12(1'b0),
    .i13(1'b0),
    .i14(1'b0),
    .i15(1'b0),
    .i16(1'b0),
    .i17(1'b0),
    .i18(1'b0),
    .i19(n19),
    .i2(1'b0),
    .i20(1'b0),
    .i21(1'b0),
    .i22(1'b0),
    .i23(1'b0),
    .i24(1'b0),
    .i25(1'b0),
    .i26(1'b0),
    .i27(n19),
    .i28(1'b0),
    .i29(1'b0),
    .i3(1'b0),
    .i30(1'b0),
    .i31(1'b0),
    .i32(1'b0),
    .i33(1'b0),
    .i34(1'b0),
    .i35(1'b0),
    .i36(1'b0),
    .i37(1'b0),
    .i38(1'b0),
    .i39(1'b0),
    .i4(1'b0),
    .i40(1'b0),
    .i41(1'b0),
    .i42(1'b0),
    .i43(1'b0),
    .i44(1'b0),
    .i45(1'b0),
    .i46(1'b0),
    .i47(1'b0),
    .i48(1'b0),
    .i49(1'b0),
    .i5(1'b0),
    .i50(1'b0),
    .i51(1'b0),
    .i52(1'b0),
    .i53(1'b0),
    .i54(1'b0),
    .i55(1'b0),
    .i56(1'b0),
    .i57(1'b0),
    .i58(1'b0),
    .i59(1'b0),
    .i6(1'b0),
    .i60(1'b0),
    .i61(1'b0),
    .i62(1'b0),
    .i63(1'b0),
    .i7(1'b0),
    .i8(1'b0),
    .i9(1'b0),
    .sel({IR[7:6],IR[3:0]}),
    .o(n359));  // ../../rtl/t80se/T80_MCode.vhd(1984)
  binary_mux_s3_w82 mux97 (
    .i0(82'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000),
    .i1({7'b1110000,n47,26'b00000000000010110100000000,n323,IR[5:3],1'b0,IR[2:0],37'b0000000000000000000000000000011111111}),
    .i2({7'b1100000,n48,9'b111110000,IR[2:0],10'b0110111111,n288,12'b000000000000,n294,4'b1111,n115,1'b0,IR[2:0],17'b11110000000000000}),
    .i3({3'b000,n149,n149,1'b0,n149,26'b00000000011100000000000000,n289,8'b00000000,n37,n295,4'b0000,n116,21'b000000001111100000000}),
    .i4({45'b000110000001000011000000000000000000000000000,n38,33'b000000000000000000000001000000000}),
    .i5(82'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000),
    .i6(82'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000),
    .i7(82'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000),
    .sel(MCycle),
    .o({n169,n170,n171,n154,n55,n63,n64,n176,n177,n178,n146,n147,n148,n73,n342,n343,n344,n332,n333,n334,n280,n281,n270,n271,n292,n327,n8,n265,n298,n301,n302,n308,n309,n119,n11,n90,n91,n83,n84,n33,n34,n35,n45,n46,n29,n30,n31,n137,n138,n23,n24,n25}));  // ../../rtl/t80se/T80_MCode.vhd(1294)
  binary_mux_s8_w1 mux98 (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b0),
    .i100(1'b0),
    .i101(1'b0),
    .i102(1'b0),
    .i103(n19),
    .i104(1'b0),
    .i105(n1),
    .i106(1'b0),
    .i107(1'b0),
    .i108(1'b0),
    .i109(1'b0),
    .i11(1'b0),
    .i110(1'b0),
    .i111(n19),
    .i112(1'b0),
    .i113(n1),
    .i114(1'b0),
    .i115(n156),
    .i116(1'b0),
    .i117(1'b0),
    .i118(1'b0),
    .i119(1'b0),
    .i12(1'b0),
    .i120(1'b0),
    .i121(n1),
    .i122(1'b0),
    .i123(1'b0),
    .i124(1'b0),
    .i125(1'b0),
    .i126(1'b0),
    .i127(1'b0),
    .i128(1'b0),
    .i129(1'b0),
    .i13(1'b0),
    .i130(1'b0),
    .i131(1'b0),
    .i132(1'b0),
    .i133(1'b0),
    .i134(1'b0),
    .i135(1'b0),
    .i136(1'b0),
    .i137(1'b0),
    .i138(1'b0),
    .i139(1'b0),
    .i14(1'b0),
    .i140(1'b0),
    .i141(1'b0),
    .i142(1'b0),
    .i143(1'b0),
    .i144(1'b0),
    .i145(1'b0),
    .i146(1'b0),
    .i147(1'b0),
    .i148(1'b0),
    .i149(1'b0),
    .i15(1'b0),
    .i150(1'b0),
    .i151(1'b0),
    .i152(1'b0),
    .i153(1'b0),
    .i154(1'b0),
    .i155(1'b0),
    .i156(1'b0),
    .i157(1'b0),
    .i158(1'b0),
    .i159(1'b0),
    .i16(1'b0),
    .i160(n12),
    .i161(1'b0),
    .i162(n12),
    .i163(n12),
    .i164(1'b0),
    .i165(1'b0),
    .i166(1'b0),
    .i167(1'b0),
    .i168(n12),
    .i169(1'b0),
    .i17(1'b0),
    .i170(n12),
    .i171(n12),
    .i172(1'b0),
    .i173(1'b0),
    .i174(1'b0),
    .i175(1'b0),
    .i176(n12),
    .i177(1'b0),
    .i178(n12),
    .i179(n12),
    .i18(1'b0),
    .i180(1'b0),
    .i181(1'b0),
    .i182(1'b0),
    .i183(1'b0),
    .i184(n12),
    .i185(1'b0),
    .i186(n12),
    .i187(n12),
    .i188(1'b0),
    .i189(1'b0),
    .i19(1'b0),
    .i190(1'b0),
    .i191(1'b0),
    .i192(1'b0),
    .i193(1'b0),
    .i194(1'b0),
    .i195(1'b0),
    .i196(1'b0),
    .i197(1'b0),
    .i198(1'b0),
    .i199(1'b0),
    .i2(1'b0),
    .i20(1'b0),
    .i200(1'b0),
    .i201(1'b0),
    .i202(1'b0),
    .i203(1'b0),
    .i204(1'b0),
    .i205(1'b0),
    .i206(1'b0),
    .i207(1'b0),
    .i208(1'b0),
    .i209(1'b0),
    .i21(1'b0),
    .i210(1'b0),
    .i211(1'b0),
    .i212(1'b0),
    .i213(1'b0),
    .i214(1'b0),
    .i215(1'b0),
    .i216(1'b0),
    .i217(1'b0),
    .i218(1'b0),
    .i219(1'b0),
    .i22(1'b0),
    .i220(1'b0),
    .i221(1'b0),
    .i222(1'b0),
    .i223(1'b0),
    .i224(1'b0),
    .i225(1'b0),
    .i226(1'b0),
    .i227(1'b0),
    .i228(1'b0),
    .i229(1'b0),
    .i23(1'b0),
    .i230(1'b0),
    .i231(1'b0),
    .i232(1'b0),
    .i233(1'b0),
    .i234(1'b0),
    .i235(1'b0),
    .i236(1'b0),
    .i237(1'b0),
    .i238(1'b0),
    .i239(1'b0),
    .i24(1'b0),
    .i240(1'b0),
    .i241(1'b0),
    .i242(1'b0),
    .i243(1'b0),
    .i244(1'b0),
    .i245(1'b0),
    .i246(1'b0),
    .i247(1'b0),
    .i248(1'b0),
    .i249(1'b0),
    .i25(1'b0),
    .i250(1'b0),
    .i251(1'b0),
    .i252(1'b0),
    .i253(1'b0),
    .i254(1'b0),
    .i255(1'b0),
    .i26(1'b0),
    .i27(1'b0),
    .i28(1'b0),
    .i29(1'b0),
    .i3(1'b0),
    .i30(1'b0),
    .i31(1'b0),
    .i32(1'b0),
    .i33(1'b0),
    .i34(1'b0),
    .i35(1'b0),
    .i36(1'b0),
    .i37(1'b0),
    .i38(1'b0),
    .i39(1'b0),
    .i4(1'b0),
    .i40(1'b0),
    .i41(1'b0),
    .i42(1'b0),
    .i43(1'b0),
    .i44(1'b0),
    .i45(1'b0),
    .i46(1'b0),
    .i47(1'b0),
    .i48(1'b0),
    .i49(1'b0),
    .i5(1'b0),
    .i50(1'b0),
    .i51(1'b0),
    .i52(1'b0),
    .i53(1'b0),
    .i54(1'b0),
    .i55(1'b0),
    .i56(1'b0),
    .i57(1'b0),
    .i58(1'b0),
    .i59(1'b0),
    .i6(1'b0),
    .i60(1'b0),
    .i61(1'b0),
    .i62(1'b0),
    .i63(1'b0),
    .i64(1'b0),
    .i65(n1),
    .i66(1'b0),
    .i67(n156),
    .i68(1'b0),
    .i69(1'b0),
    .i7(1'b0),
    .i70(1'b0),
    .i71(1'b0),
    .i72(1'b0),
    .i73(n1),
    .i74(1'b0),
    .i75(1'b0),
    .i76(1'b0),
    .i77(1'b0),
    .i78(1'b0),
    .i79(1'b0),
    .i8(1'b0),
    .i80(1'b0),
    .i81(n1),
    .i82(1'b0),
    .i83(n156),
    .i84(1'b0),
    .i85(1'b0),
    .i86(1'b0),
    .i87(1'b0),
    .i88(1'b0),
    .i89(n1),
    .i9(1'b0),
    .i90(1'b0),
    .i91(1'b0),
    .i92(1'b0),
    .i93(1'b0),
    .i94(1'b0),
    .i95(1'b0),
    .i96(1'b0),
    .i97(n1),
    .i98(1'b0),
    .i99(n156),
    .sel(IR),
    .o(n361));  // ../../rtl/t80se/T80_MCode.vhd(1984)
  binary_mux_s3_w36 mux99 (
    .i0(36'b000000000000000000000000000000000000),
    .i1({24'b111100001111000000000000,IR[3],11'b00011001100}),
    .i2({20'b11110000111100000000,IR[3],7'b0000000,IR[3],3'b110,IR[3],3'b110}),
    .i3({4'b0000,n149,n149,n149,n149,12'b000001111111,IR[3],3'b110,IR[3],7'b1100000,IR[3],3'b101}),
    .i4(36'b000011110000000011110000000000000000),
    .i5(36'b000000000000111100000000000000000000),
    .i6(36'b000000000000000000000000000000000000),
    .i7(36'b000000000000000000000000000000000000),
    .sel(MCycle),
    .o({n164,n165,n166,n167,n151,n50,n51,n52,n53,n65,n66,n67,n68,n140,n141,n142,n143,n346,n337,n279,n269}));  // ../../rtl/t80se/T80_MCode.vhd(1294)
  ne_w3 neq0 (
    .i0(3'b110),
    .i1(IR[5:3]),
    .o(n316));  // ../../rtl/t80se/T80_MCode.vhd(1898)
  ne_w2 neq1 (
    .i0(2'b01),
    .i1(ISet),
    .o(n392));  // ../../rtl/t80se/T80_MCode.vhd(2021)
  not u10 (n123, F[2]);  // ../../rtl/t80se/T80_MCode.vhd(184)
  not u11 (n124, F[7]);  // ../../rtl/t80se/T80_MCode.vhd(186)
  not u12 (n121, F[6]);  // ../../rtl/t80se/T80_MCode.vhd(1264)
  not u13 (n159[1], n149);  // ../../rtl/t80se/T80_MCode.vhd(1264)
  AL_MUX u14 (
    .i0(n1),
    .i1(n0[2]),
    .sel(n230[0]),
    .o(n240));  // ../../rtl/t80se/T80_MCode.vhd(1497)
  not u15 (n249[1], n230[0]);  // ../../rtl/t80se/T80_MCode.vhd(1547)
  AL_MUX u16 (
    .i0(n12),
    .i1(1'b0),
    .sel(n230[0]),
    .o(n241));  // ../../rtl/t80se/T80_MCode.vhd(1497)
  not u17 (n122, F[0]);  // ../../rtl/t80se/T80_MCode.vhd(1264)
  AL_MUX u18 (
    .i0(1'b0),
    .i1(n364),
    .sel(ISet[1]),
    .o(I_BT));  // ../../rtl/t80se/T80_MCode.vhd(1986)
  AL_MUX u19 (
    .i0(1'b0),
    .i1(n368),
    .sel(ISet[1]),
    .o(I_BC));  // ../../rtl/t80se/T80_MCode.vhd(1986)
  AL_MUX u2 (
    .i0(1'b0),
    .i1(n39),
    .sel(IntCycle),
    .o(n107));  // ../../rtl/t80se/T80_MCode.vhd(847)
  AL_MUX u20 (
    .i0(1'b0),
    .i1(n373),
    .sel(ISet[1]),
    .o(I_RLD));  // ../../rtl/t80se/T80_MCode.vhd(1986)
  AL_MUX u21 (
    .i0(1'b0),
    .i1(n374),
    .sel(ISet[1]),
    .o(I_RRD));  // ../../rtl/t80se/T80_MCode.vhd(1986)
  AL_MUX u22 (
    .i0(1'b0),
    .i1(n375),
    .sel(ISet[1]),
    .o(I_RETN));  // ../../rtl/t80se/T80_MCode.vhd(1986)
  AL_MUX u23 (
    .i0(1'b0),
    .i1(n377),
    .sel(ISet[1]),
    .o(I_INRC));  // ../../rtl/t80se/T80_MCode.vhd(1986)
  AL_MUX u24 (
    .i0(1'b0),
    .i1(n378),
    .sel(ISet[1]),
    .o(I_BTR));  // ../../rtl/t80se/T80_MCode.vhd(1986)
  or u25 (n387, n385, n386);  // ../../rtl/t80se/T80_MCode.vhd(2013)
  AL_MUX u26 (
    .i0(n380),
    .i1(1'b1),
    .sel(n384),
    .o(n389));  // ../../rtl/t80se/T80_MCode.vhd(2016)
  or u27 (n395, n385, n394);  // ../../rtl/t80se/T80_MCode.vhd(2026)
  AL_MUX u28 (
    .i0(n389),
    .i1(1'b1),
    .sel(n395),
    .o(n396));  // ../../rtl/t80se/T80_MCode.vhd(2031)
  AL_MUX u29 (
    .i0(1'b1),
    .i1(n383),
    .sel(n395),
    .o(n397));  // ../../rtl/t80se/T80_MCode.vhd(2031)
  AL_MUX u3 (
    .i0(n107),
    .i1(n39),
    .sel(NMICycle),
    .o(n108));  // ../../rtl/t80se/T80_MCode.vhd(847)
  AL_MUX u30 (
    .i0(n389),
    .i1(n396),
    .sel(n391),
    .o(Inc_PC));  // ../../rtl/t80se/T80_MCode.vhd(2032)
  AL_MUX u31 (
    .i0(n383),
    .i1(n397),
    .sel(n391),
    .o(NoRead));  // ../../rtl/t80se/T80_MCode.vhd(2032)
  not u32 (n0[0], n0[2]);  // ../../rtl/t80se/T80_MCode.vhd(210)
  AL_MUX u4 (
    .i0(1'b0),
    .i1(n97),
    .sel(IntCycle),
    .o(n109));  // ../../rtl/t80se/T80_MCode.vhd(847)
  AL_MUX u5 (
    .i0(n109),
    .i1(1'b0),
    .sel(NMICycle),
    .o(n110));  // ../../rtl/t80se/T80_MCode.vhd(847)
  AL_MUX u6 (
    .i0(1'b0),
    .i1(n19),
    .sel(IntCycle),
    .o(n111));  // ../../rtl/t80se/T80_MCode.vhd(847)
  AL_MUX u7 (
    .i0(n111),
    .i1(1'b0),
    .sel(NMICycle),
    .o(n112));  // ../../rtl/t80se/T80_MCode.vhd(847)
  AL_MUX u8 (
    .i0(1'b0),
    .i1(n157),
    .sel(IntCycle),
    .o(n113));  // ../../rtl/t80se/T80_MCode.vhd(847)
  AL_MUX u9 (
    .i0(n113),
    .i1(1'b0),
    .sel(NMICycle),
    .o(n114));  // ../../rtl/t80se/T80_MCode.vhd(847)

endmodule 

module binary_mux_s2_w4
  (
  i0,
  i1,
  i2,
  i3,
  sel,
  o
  );

  input [3:0] i0;
  input [3:0] i1;
  input [3:0] i2;
  input [3:0] i3;
  input [1:0] sel;
  output [3:0] o;



endmodule 

module binary_mux_s5_w8
  (
  i0,
  i1,
  i10,
  i11,
  i12,
  i13,
  i14,
  i15,
  i16,
  i17,
  i18,
  i19,
  i2,
  i20,
  i21,
  i22,
  i23,
  i24,
  i25,
  i26,
  i27,
  i28,
  i29,
  i3,
  i30,
  i31,
  i4,
  i5,
  i6,
  i7,
  i8,
  i9,
  sel,
  o
  );

  input [7:0] i0;
  input [7:0] i1;
  input [7:0] i10;
  input [7:0] i11;
  input [7:0] i12;
  input [7:0] i13;
  input [7:0] i14;
  input [7:0] i15;
  input [7:0] i16;
  input [7:0] i17;
  input [7:0] i18;
  input [7:0] i19;
  input [7:0] i2;
  input [7:0] i20;
  input [7:0] i21;
  input [7:0] i22;
  input [7:0] i23;
  input [7:0] i24;
  input [7:0] i25;
  input [7:0] i26;
  input [7:0] i27;
  input [7:0] i28;
  input [7:0] i29;
  input [7:0] i3;
  input [7:0] i30;
  input [7:0] i31;
  input [7:0] i4;
  input [7:0] i5;
  input [7:0] i6;
  input [7:0] i7;
  input [7:0] i8;
  input [7:0] i9;
  input [4:0] sel;
  output [7:0] o;



endmodule 

module binary_mux_s5_w16
  (
  i0,
  i1,
  i10,
  i11,
  i12,
  i13,
  i14,
  i15,
  i16,
  i17,
  i18,
  i19,
  i2,
  i20,
  i21,
  i22,
  i23,
  i24,
  i25,
  i26,
  i27,
  i28,
  i29,
  i3,
  i30,
  i31,
  i4,
  i5,
  i6,
  i7,
  i8,
  i9,
  sel,
  o
  );

  input [15:0] i0;
  input [15:0] i1;
  input [15:0] i10;
  input [15:0] i11;
  input [15:0] i12;
  input [15:0] i13;
  input [15:0] i14;
  input [15:0] i15;
  input [15:0] i16;
  input [15:0] i17;
  input [15:0] i18;
  input [15:0] i19;
  input [15:0] i2;
  input [15:0] i20;
  input [15:0] i21;
  input [15:0] i22;
  input [15:0] i23;
  input [15:0] i24;
  input [15:0] i25;
  input [15:0] i26;
  input [15:0] i27;
  input [15:0] i28;
  input [15:0] i29;
  input [15:0] i3;
  input [15:0] i30;
  input [15:0] i31;
  input [15:0] i4;
  input [15:0] i5;
  input [15:0] i6;
  input [15:0] i7;
  input [15:0] i8;
  input [15:0] i9;
  input [4:0] sel;
  output [15:0] o;



endmodule 

module binary_mux_s2_w1
  (
  i0,
  i1,
  i2,
  i3,
  sel,
  o
  );

  input i0;
  input i1;
  input i2;
  input i3;
  input [1:0] sel;
  output o;



endmodule 

module binary_mux_s3_w16
  (
  i0,
  i1,
  i2,
  i3,
  i4,
  i5,
  i6,
  i7,
  sel,
  o
  );

  input [15:0] i0;
  input [15:0] i1;
  input [15:0] i2;
  input [15:0] i3;
  input [15:0] i4;
  input [15:0] i5;
  input [15:0] i6;
  input [15:0] i7;
  input [2:0] sel;
  output [15:0] o;



endmodule 

module binary_mux_s2_w8
  (
  i0,
  i1,
  i2,
  i3,
  sel,
  o
  );

  input [7:0] i0;
  input [7:0] i1;
  input [7:0] i2;
  input [7:0] i3;
  input [1:0] sel;
  output [7:0] o;



endmodule 

module ne_w3
  (
  i0,
  i1,
  o
  );

  input [2:0] i0;
  input [2:0] i1;
  output o;



endmodule 

module add_pu17_mu17_o17
  (
  i0,
  i1,
  o
  );

  input [16:0] i0;
  input [16:0] i1;
  output [16:0] o;



endmodule 

module add_pu9_mu9_o9
  (
  i0,
  i1,
  o
  );

  input [8:0] i0;
  input [8:0] i1;
  output [8:0] o;



endmodule 

module ne_w6
  (
  i0,
  i1,
  o
  );

  input [5:0] i0;
  input [5:0] i1;
  output o;



endmodule 

module rom_font2  // al_ip/rom_font2.vhd(17)
  (
  addra,
  clka,
  rsta,
  doa
  );

  input [10:0] addra;  // al_ip/rom_font2.vhd(21)
  input clka;  // al_ip/rom_font2.vhd(22)
  input rsta;  // al_ip/rom_font2.vhd(23)
  output [0:0] doa;  // al_ip/rom_font2.vhd(19)


  AL_LOGIC_BRAM #(
    //.FORCE_KEEP("OFF"),
    //.INIT_FILE("../../../rtl/video/icons.mif"),
    .ADDR_WIDTH_A(11),
    .ADDR_WIDTH_B(11),
    .BYTE_A(1),
    .BYTE_B(1),
    .BYTE_ENABLE(0),
    .DATA_DEPTH_A(2048),
    .DATA_DEPTH_B(2048),
    .DATA_WIDTH_A(1),
    .DATA_WIDTH_B(1),
    .DEBUGGABLE("NO"),
    .FILL_ALL("NONE"),
    .IMPLEMENT("9K"),
    .MODE("SP"),
    .PACKABLE("NO"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst (
    .addra(addra),
    .addrb(11'b00000000000),
    .bea(1'b0),
    .beb(1'b0),
    .cea(1'b1),
    .ceb(1'b0),
    .clka(clka),
    .clkb(1'b0),
    .dia(1'b0),
    .dib(1'b0),
    .ocea(1'b0),
    .oceb(1'b0),
    .rsta(rsta),
    .rstb(1'b0),
    .wea(1'b0),
    .web(1'b0),
    .doa(doa));  // al_ip/rom_font2.vhd(30)

endmodule 

module latch_ar_as_w3
  (
  clk,
  d,
  en,
  reset,
  set,
  q
  );

  input clk;
  input [2:0] d;
  input en;
  input [2:0] reset;
  input [2:0] set;
  output [2:0] q;



endmodule 

module eq_w18
  (
  i0,
  i1,
  o
  );

  input [17:0] i0;
  input [17:0] i1;
  output o;



endmodule 

module binary_mux_s3_w3
  (
  i0,
  i1,
  i2,
  i3,
  i4,
  i5,
  i6,
  i7,
  sel,
  o
  );

  input [2:0] i0;
  input [2:0] i1;
  input [2:0] i2;
  input [2:0] i3;
  input [2:0] i4;
  input [2:0] i5;
  input [2:0] i6;
  input [2:0] i7;
  input [2:0] sel;
  output [2:0] o;



endmodule 

module binary_mux_s3_w18
  (
  i0,
  i1,
  i2,
  i3,
  i4,
  i5,
  i6,
  i7,
  sel,
  o
  );

  input [17:0] i0;
  input [17:0] i1;
  input [17:0] i2;
  input [17:0] i3;
  input [17:0] i4;
  input [17:0] i5;
  input [17:0] i6;
  input [17:0] i7;
  input [2:0] sel;
  output [17:0] o;



endmodule 

module add_pu10_mu10_o10
  (
  i0,
  i1,
  o
  );

  input [9:0] i0;
  input [9:0] i1;
  output [9:0] o;



endmodule 

module add_pu18_mu18_o18
  (
  i0,
  i1,
  o
  );

  input [17:0] i0;
  input [17:0] i1;
  output [17:0] o;



endmodule 

module add_pu3_mu3_o3
  (
  i0,
  i1,
  o
  );

  input [2:0] i0;
  input [2:0] i1;
  output [2:0] o;



endmodule 

module binary_mux_s2_w2
  (
  i0,
  i1,
  i2,
  i3,
  sel,
  o
  );

  input [1:0] i0;
  input [1:0] i1;
  input [1:0] i2;
  input [1:0] i3;
  input [1:0] sel;
  output [1:0] o;



endmodule 

module binary_mux_s2_w3
  (
  i0,
  i1,
  i2,
  i3,
  sel,
  o
  );

  input [2:0] i0;
  input [2:0] i1;
  input [2:0] i2;
  input [2:0] i3;
  input [1:0] sel;
  output [2:0] o;



endmodule 

module binary_mux_s2_w18
  (
  i0,
  i1,
  i2,
  i3,
  sel,
  o
  );

  input [17:0] i0;
  input [17:0] i1;
  input [17:0] i2;
  input [17:0] i3;
  input [1:0] sel;
  output [17:0] o;



endmodule 

module add_pu4_pu4_o5
  (
  i0,
  i1,
  o
  );

  input [3:0] i0;
  input [3:0] i1;
  output [4:0] o;



endmodule 

module add_pu7_pu7_o8
  (
  i0,
  i1,
  o
  );

  input [6:0] i0;
  input [6:0] i1;
  output [7:0] o;



endmodule 

module lt_u4_u4
  (
  ci,
  i0,
  i1,
  o
  );

  input ci;
  input [3:0] i0;
  input [3:0] i1;
  output o;



endmodule 

module lt_u8_u8
  (
  ci,
  i0,
  i1,
  o
  );

  input ci;
  input [7:0] i0;
  input [7:0] i1;
  output o;



endmodule 

module binary_mux_s3_w2
  (
  i0,
  i1,
  i2,
  i3,
  i4,
  i5,
  i6,
  i7,
  sel,
  o
  );

  input [1:0] i0;
  input [1:0] i1;
  input [1:0] i2;
  input [1:0] i3;
  input [1:0] i4;
  input [1:0] i5;
  input [1:0] i6;
  input [1:0] i7;
  input [2:0] sel;
  output [1:0] o;



endmodule 

module binary_mux_s3_w64
  (
  i0,
  i1,
  i2,
  i3,
  i4,
  i5,
  i6,
  i7,
  sel,
  o
  );

  input [63:0] i0;
  input [63:0] i1;
  input [63:0] i2;
  input [63:0] i3;
  input [63:0] i4;
  input [63:0] i5;
  input [63:0] i6;
  input [63:0] i7;
  input [2:0] sel;
  output [63:0] o;



endmodule 

module binary_mux_s6_w1
  (
  i0,
  i1,
  i10,
  i11,
  i12,
  i13,
  i14,
  i15,
  i16,
  i17,
  i18,
  i19,
  i2,
  i20,
  i21,
  i22,
  i23,
  i24,
  i25,
  i26,
  i27,
  i28,
  i29,
  i3,
  i30,
  i31,
  i32,
  i33,
  i34,
  i35,
  i36,
  i37,
  i38,
  i39,
  i4,
  i40,
  i41,
  i42,
  i43,
  i44,
  i45,
  i46,
  i47,
  i48,
  i49,
  i5,
  i50,
  i51,
  i52,
  i53,
  i54,
  i55,
  i56,
  i57,
  i58,
  i59,
  i6,
  i60,
  i61,
  i62,
  i63,
  i7,
  i8,
  i9,
  sel,
  o
  );

  input i0;
  input i1;
  input i10;
  input i11;
  input i12;
  input i13;
  input i14;
  input i15;
  input i16;
  input i17;
  input i18;
  input i19;
  input i2;
  input i20;
  input i21;
  input i22;
  input i23;
  input i24;
  input i25;
  input i26;
  input i27;
  input i28;
  input i29;
  input i3;
  input i30;
  input i31;
  input i32;
  input i33;
  input i34;
  input i35;
  input i36;
  input i37;
  input i38;
  input i39;
  input i4;
  input i40;
  input i41;
  input i42;
  input i43;
  input i44;
  input i45;
  input i46;
  input i47;
  input i48;
  input i49;
  input i5;
  input i50;
  input i51;
  input i52;
  input i53;
  input i54;
  input i55;
  input i56;
  input i57;
  input i58;
  input i59;
  input i6;
  input i60;
  input i61;
  input i62;
  input i63;
  input i7;
  input i8;
  input i9;
  input [5:0] sel;
  output o;



endmodule 

module binary_mux_s8_w1
  (
  i0,
  i1,
  i10,
  i100,
  i101,
  i102,
  i103,
  i104,
  i105,
  i106,
  i107,
  i108,
  i109,
  i11,
  i110,
  i111,
  i112,
  i113,
  i114,
  i115,
  i116,
  i117,
  i118,
  i119,
  i12,
  i120,
  i121,
  i122,
  i123,
  i124,
  i125,
  i126,
  i127,
  i128,
  i129,
  i13,
  i130,
  i131,
  i132,
  i133,
  i134,
  i135,
  i136,
  i137,
  i138,
  i139,
  i14,
  i140,
  i141,
  i142,
  i143,
  i144,
  i145,
  i146,
  i147,
  i148,
  i149,
  i15,
  i150,
  i151,
  i152,
  i153,
  i154,
  i155,
  i156,
  i157,
  i158,
  i159,
  i16,
  i160,
  i161,
  i162,
  i163,
  i164,
  i165,
  i166,
  i167,
  i168,
  i169,
  i17,
  i170,
  i171,
  i172,
  i173,
  i174,
  i175,
  i176,
  i177,
  i178,
  i179,
  i18,
  i180,
  i181,
  i182,
  i183,
  i184,
  i185,
  i186,
  i187,
  i188,
  i189,
  i19,
  i190,
  i191,
  i192,
  i193,
  i194,
  i195,
  i196,
  i197,
  i198,
  i199,
  i2,
  i20,
  i200,
  i201,
  i202,
  i203,
  i204,
  i205,
  i206,
  i207,
  i208,
  i209,
  i21,
  i210,
  i211,
  i212,
  i213,
  i214,
  i215,
  i216,
  i217,
  i218,
  i219,
  i22,
  i220,
  i221,
  i222,
  i223,
  i224,
  i225,
  i226,
  i227,
  i228,
  i229,
  i23,
  i230,
  i231,
  i232,
  i233,
  i234,
  i235,
  i236,
  i237,
  i238,
  i239,
  i24,
  i240,
  i241,
  i242,
  i243,
  i244,
  i245,
  i246,
  i247,
  i248,
  i249,
  i25,
  i250,
  i251,
  i252,
  i253,
  i254,
  i255,
  i26,
  i27,
  i28,
  i29,
  i3,
  i30,
  i31,
  i32,
  i33,
  i34,
  i35,
  i36,
  i37,
  i38,
  i39,
  i4,
  i40,
  i41,
  i42,
  i43,
  i44,
  i45,
  i46,
  i47,
  i48,
  i49,
  i5,
  i50,
  i51,
  i52,
  i53,
  i54,
  i55,
  i56,
  i57,
  i58,
  i59,
  i6,
  i60,
  i61,
  i62,
  i63,
  i64,
  i65,
  i66,
  i67,
  i68,
  i69,
  i7,
  i70,
  i71,
  i72,
  i73,
  i74,
  i75,
  i76,
  i77,
  i78,
  i79,
  i8,
  i80,
  i81,
  i82,
  i83,
  i84,
  i85,
  i86,
  i87,
  i88,
  i89,
  i9,
  i90,
  i91,
  i92,
  i93,
  i94,
  i95,
  i96,
  i97,
  i98,
  i99,
  sel,
  o
  );

  input i0;
  input i1;
  input i10;
  input i100;
  input i101;
  input i102;
  input i103;
  input i104;
  input i105;
  input i106;
  input i107;
  input i108;
  input i109;
  input i11;
  input i110;
  input i111;
  input i112;
  input i113;
  input i114;
  input i115;
  input i116;
  input i117;
  input i118;
  input i119;
  input i12;
  input i120;
  input i121;
  input i122;
  input i123;
  input i124;
  input i125;
  input i126;
  input i127;
  input i128;
  input i129;
  input i13;
  input i130;
  input i131;
  input i132;
  input i133;
  input i134;
  input i135;
  input i136;
  input i137;
  input i138;
  input i139;
  input i14;
  input i140;
  input i141;
  input i142;
  input i143;
  input i144;
  input i145;
  input i146;
  input i147;
  input i148;
  input i149;
  input i15;
  input i150;
  input i151;
  input i152;
  input i153;
  input i154;
  input i155;
  input i156;
  input i157;
  input i158;
  input i159;
  input i16;
  input i160;
  input i161;
  input i162;
  input i163;
  input i164;
  input i165;
  input i166;
  input i167;
  input i168;
  input i169;
  input i17;
  input i170;
  input i171;
  input i172;
  input i173;
  input i174;
  input i175;
  input i176;
  input i177;
  input i178;
  input i179;
  input i18;
  input i180;
  input i181;
  input i182;
  input i183;
  input i184;
  input i185;
  input i186;
  input i187;
  input i188;
  input i189;
  input i19;
  input i190;
  input i191;
  input i192;
  input i193;
  input i194;
  input i195;
  input i196;
  input i197;
  input i198;
  input i199;
  input i2;
  input i20;
  input i200;
  input i201;
  input i202;
  input i203;
  input i204;
  input i205;
  input i206;
  input i207;
  input i208;
  input i209;
  input i21;
  input i210;
  input i211;
  input i212;
  input i213;
  input i214;
  input i215;
  input i216;
  input i217;
  input i218;
  input i219;
  input i22;
  input i220;
  input i221;
  input i222;
  input i223;
  input i224;
  input i225;
  input i226;
  input i227;
  input i228;
  input i229;
  input i23;
  input i230;
  input i231;
  input i232;
  input i233;
  input i234;
  input i235;
  input i236;
  input i237;
  input i238;
  input i239;
  input i24;
  input i240;
  input i241;
  input i242;
  input i243;
  input i244;
  input i245;
  input i246;
  input i247;
  input i248;
  input i249;
  input i25;
  input i250;
  input i251;
  input i252;
  input i253;
  input i254;
  input i255;
  input i26;
  input i27;
  input i28;
  input i29;
  input i3;
  input i30;
  input i31;
  input i32;
  input i33;
  input i34;
  input i35;
  input i36;
  input i37;
  input i38;
  input i39;
  input i4;
  input i40;
  input i41;
  input i42;
  input i43;
  input i44;
  input i45;
  input i46;
  input i47;
  input i48;
  input i49;
  input i5;
  input i50;
  input i51;
  input i52;
  input i53;
  input i54;
  input i55;
  input i56;
  input i57;
  input i58;
  input i59;
  input i6;
  input i60;
  input i61;
  input i62;
  input i63;
  input i64;
  input i65;
  input i66;
  input i67;
  input i68;
  input i69;
  input i7;
  input i70;
  input i71;
  input i72;
  input i73;
  input i74;
  input i75;
  input i76;
  input i77;
  input i78;
  input i79;
  input i8;
  input i80;
  input i81;
  input i82;
  input i83;
  input i84;
  input i85;
  input i86;
  input i87;
  input i88;
  input i89;
  input i9;
  input i90;
  input i91;
  input i92;
  input i93;
  input i94;
  input i95;
  input i96;
  input i97;
  input i98;
  input i99;
  input [7:0] sel;
  output o;



endmodule 

module binary_mux_s5_w1
  (
  i0,
  i1,
  i10,
  i11,
  i12,
  i13,
  i14,
  i15,
  i16,
  i17,
  i18,
  i19,
  i2,
  i20,
  i21,
  i22,
  i23,
  i24,
  i25,
  i26,
  i27,
  i28,
  i29,
  i3,
  i30,
  i31,
  i4,
  i5,
  i6,
  i7,
  i8,
  i9,
  sel,
  o
  );

  input i0;
  input i1;
  input i10;
  input i11;
  input i12;
  input i13;
  input i14;
  input i15;
  input i16;
  input i17;
  input i18;
  input i19;
  input i2;
  input i20;
  input i21;
  input i22;
  input i23;
  input i24;
  input i25;
  input i26;
  input i27;
  input i28;
  input i29;
  input i3;
  input i30;
  input i31;
  input i4;
  input i5;
  input i6;
  input i7;
  input i8;
  input i9;
  input [4:0] sel;
  output o;



endmodule 

module binary_mux_s7_w1
  (
  i0,
  i1,
  i10,
  i100,
  i101,
  i102,
  i103,
  i104,
  i105,
  i106,
  i107,
  i108,
  i109,
  i11,
  i110,
  i111,
  i112,
  i113,
  i114,
  i115,
  i116,
  i117,
  i118,
  i119,
  i12,
  i120,
  i121,
  i122,
  i123,
  i124,
  i125,
  i126,
  i127,
  i13,
  i14,
  i15,
  i16,
  i17,
  i18,
  i19,
  i2,
  i20,
  i21,
  i22,
  i23,
  i24,
  i25,
  i26,
  i27,
  i28,
  i29,
  i3,
  i30,
  i31,
  i32,
  i33,
  i34,
  i35,
  i36,
  i37,
  i38,
  i39,
  i4,
  i40,
  i41,
  i42,
  i43,
  i44,
  i45,
  i46,
  i47,
  i48,
  i49,
  i5,
  i50,
  i51,
  i52,
  i53,
  i54,
  i55,
  i56,
  i57,
  i58,
  i59,
  i6,
  i60,
  i61,
  i62,
  i63,
  i64,
  i65,
  i66,
  i67,
  i68,
  i69,
  i7,
  i70,
  i71,
  i72,
  i73,
  i74,
  i75,
  i76,
  i77,
  i78,
  i79,
  i8,
  i80,
  i81,
  i82,
  i83,
  i84,
  i85,
  i86,
  i87,
  i88,
  i89,
  i9,
  i90,
  i91,
  i92,
  i93,
  i94,
  i95,
  i96,
  i97,
  i98,
  i99,
  sel,
  o
  );

  input i0;
  input i1;
  input i10;
  input i100;
  input i101;
  input i102;
  input i103;
  input i104;
  input i105;
  input i106;
  input i107;
  input i108;
  input i109;
  input i11;
  input i110;
  input i111;
  input i112;
  input i113;
  input i114;
  input i115;
  input i116;
  input i117;
  input i118;
  input i119;
  input i12;
  input i120;
  input i121;
  input i122;
  input i123;
  input i124;
  input i125;
  input i126;
  input i127;
  input i13;
  input i14;
  input i15;
  input i16;
  input i17;
  input i18;
  input i19;
  input i2;
  input i20;
  input i21;
  input i22;
  input i23;
  input i24;
  input i25;
  input i26;
  input i27;
  input i28;
  input i29;
  input i3;
  input i30;
  input i31;
  input i32;
  input i33;
  input i34;
  input i35;
  input i36;
  input i37;
  input i38;
  input i39;
  input i4;
  input i40;
  input i41;
  input i42;
  input i43;
  input i44;
  input i45;
  input i46;
  input i47;
  input i48;
  input i49;
  input i5;
  input i50;
  input i51;
  input i52;
  input i53;
  input i54;
  input i55;
  input i56;
  input i57;
  input i58;
  input i59;
  input i6;
  input i60;
  input i61;
  input i62;
  input i63;
  input i64;
  input i65;
  input i66;
  input i67;
  input i68;
  input i69;
  input i7;
  input i70;
  input i71;
  input i72;
  input i73;
  input i74;
  input i75;
  input i76;
  input i77;
  input i78;
  input i79;
  input i8;
  input i80;
  input i81;
  input i82;
  input i83;
  input i84;
  input i85;
  input i86;
  input i87;
  input i88;
  input i89;
  input i9;
  input i90;
  input i91;
  input i92;
  input i93;
  input i94;
  input i95;
  input i96;
  input i97;
  input i98;
  input i99;
  input [6:0] sel;
  output o;



endmodule 

module binary_mux_s3_w15
  (
  i0,
  i1,
  i2,
  i3,
  i4,
  i5,
  i6,
  i7,
  sel,
  o
  );

  input [14:0] i0;
  input [14:0] i1;
  input [14:0] i2;
  input [14:0] i3;
  input [14:0] i4;
  input [14:0] i5;
  input [14:0] i6;
  input [14:0] i7;
  input [2:0] sel;
  output [14:0] o;



endmodule 

module binary_mux_s8_w8
  (
  i0,
  i1,
  i10,
  i100,
  i101,
  i102,
  i103,
  i104,
  i105,
  i106,
  i107,
  i108,
  i109,
  i11,
  i110,
  i111,
  i112,
  i113,
  i114,
  i115,
  i116,
  i117,
  i118,
  i119,
  i12,
  i120,
  i121,
  i122,
  i123,
  i124,
  i125,
  i126,
  i127,
  i128,
  i129,
  i13,
  i130,
  i131,
  i132,
  i133,
  i134,
  i135,
  i136,
  i137,
  i138,
  i139,
  i14,
  i140,
  i141,
  i142,
  i143,
  i144,
  i145,
  i146,
  i147,
  i148,
  i149,
  i15,
  i150,
  i151,
  i152,
  i153,
  i154,
  i155,
  i156,
  i157,
  i158,
  i159,
  i16,
  i160,
  i161,
  i162,
  i163,
  i164,
  i165,
  i166,
  i167,
  i168,
  i169,
  i17,
  i170,
  i171,
  i172,
  i173,
  i174,
  i175,
  i176,
  i177,
  i178,
  i179,
  i18,
  i180,
  i181,
  i182,
  i183,
  i184,
  i185,
  i186,
  i187,
  i188,
  i189,
  i19,
  i190,
  i191,
  i192,
  i193,
  i194,
  i195,
  i196,
  i197,
  i198,
  i199,
  i2,
  i20,
  i200,
  i201,
  i202,
  i203,
  i204,
  i205,
  i206,
  i207,
  i208,
  i209,
  i21,
  i210,
  i211,
  i212,
  i213,
  i214,
  i215,
  i216,
  i217,
  i218,
  i219,
  i22,
  i220,
  i221,
  i222,
  i223,
  i224,
  i225,
  i226,
  i227,
  i228,
  i229,
  i23,
  i230,
  i231,
  i232,
  i233,
  i234,
  i235,
  i236,
  i237,
  i238,
  i239,
  i24,
  i240,
  i241,
  i242,
  i243,
  i244,
  i245,
  i246,
  i247,
  i248,
  i249,
  i25,
  i250,
  i251,
  i252,
  i253,
  i254,
  i255,
  i26,
  i27,
  i28,
  i29,
  i3,
  i30,
  i31,
  i32,
  i33,
  i34,
  i35,
  i36,
  i37,
  i38,
  i39,
  i4,
  i40,
  i41,
  i42,
  i43,
  i44,
  i45,
  i46,
  i47,
  i48,
  i49,
  i5,
  i50,
  i51,
  i52,
  i53,
  i54,
  i55,
  i56,
  i57,
  i58,
  i59,
  i6,
  i60,
  i61,
  i62,
  i63,
  i64,
  i65,
  i66,
  i67,
  i68,
  i69,
  i7,
  i70,
  i71,
  i72,
  i73,
  i74,
  i75,
  i76,
  i77,
  i78,
  i79,
  i8,
  i80,
  i81,
  i82,
  i83,
  i84,
  i85,
  i86,
  i87,
  i88,
  i89,
  i9,
  i90,
  i91,
  i92,
  i93,
  i94,
  i95,
  i96,
  i97,
  i98,
  i99,
  sel,
  o
  );

  input [7:0] i0;
  input [7:0] i1;
  input [7:0] i10;
  input [7:0] i100;
  input [7:0] i101;
  input [7:0] i102;
  input [7:0] i103;
  input [7:0] i104;
  input [7:0] i105;
  input [7:0] i106;
  input [7:0] i107;
  input [7:0] i108;
  input [7:0] i109;
  input [7:0] i11;
  input [7:0] i110;
  input [7:0] i111;
  input [7:0] i112;
  input [7:0] i113;
  input [7:0] i114;
  input [7:0] i115;
  input [7:0] i116;
  input [7:0] i117;
  input [7:0] i118;
  input [7:0] i119;
  input [7:0] i12;
  input [7:0] i120;
  input [7:0] i121;
  input [7:0] i122;
  input [7:0] i123;
  input [7:0] i124;
  input [7:0] i125;
  input [7:0] i126;
  input [7:0] i127;
  input [7:0] i128;
  input [7:0] i129;
  input [7:0] i13;
  input [7:0] i130;
  input [7:0] i131;
  input [7:0] i132;
  input [7:0] i133;
  input [7:0] i134;
  input [7:0] i135;
  input [7:0] i136;
  input [7:0] i137;
  input [7:0] i138;
  input [7:0] i139;
  input [7:0] i14;
  input [7:0] i140;
  input [7:0] i141;
  input [7:0] i142;
  input [7:0] i143;
  input [7:0] i144;
  input [7:0] i145;
  input [7:0] i146;
  input [7:0] i147;
  input [7:0] i148;
  input [7:0] i149;
  input [7:0] i15;
  input [7:0] i150;
  input [7:0] i151;
  input [7:0] i152;
  input [7:0] i153;
  input [7:0] i154;
  input [7:0] i155;
  input [7:0] i156;
  input [7:0] i157;
  input [7:0] i158;
  input [7:0] i159;
  input [7:0] i16;
  input [7:0] i160;
  input [7:0] i161;
  input [7:0] i162;
  input [7:0] i163;
  input [7:0] i164;
  input [7:0] i165;
  input [7:0] i166;
  input [7:0] i167;
  input [7:0] i168;
  input [7:0] i169;
  input [7:0] i17;
  input [7:0] i170;
  input [7:0] i171;
  input [7:0] i172;
  input [7:0] i173;
  input [7:0] i174;
  input [7:0] i175;
  input [7:0] i176;
  input [7:0] i177;
  input [7:0] i178;
  input [7:0] i179;
  input [7:0] i18;
  input [7:0] i180;
  input [7:0] i181;
  input [7:0] i182;
  input [7:0] i183;
  input [7:0] i184;
  input [7:0] i185;
  input [7:0] i186;
  input [7:0] i187;
  input [7:0] i188;
  input [7:0] i189;
  input [7:0] i19;
  input [7:0] i190;
  input [7:0] i191;
  input [7:0] i192;
  input [7:0] i193;
  input [7:0] i194;
  input [7:0] i195;
  input [7:0] i196;
  input [7:0] i197;
  input [7:0] i198;
  input [7:0] i199;
  input [7:0] i2;
  input [7:0] i20;
  input [7:0] i200;
  input [7:0] i201;
  input [7:0] i202;
  input [7:0] i203;
  input [7:0] i204;
  input [7:0] i205;
  input [7:0] i206;
  input [7:0] i207;
  input [7:0] i208;
  input [7:0] i209;
  input [7:0] i21;
  input [7:0] i210;
  input [7:0] i211;
  input [7:0] i212;
  input [7:0] i213;
  input [7:0] i214;
  input [7:0] i215;
  input [7:0] i216;
  input [7:0] i217;
  input [7:0] i218;
  input [7:0] i219;
  input [7:0] i22;
  input [7:0] i220;
  input [7:0] i221;
  input [7:0] i222;
  input [7:0] i223;
  input [7:0] i224;
  input [7:0] i225;
  input [7:0] i226;
  input [7:0] i227;
  input [7:0] i228;
  input [7:0] i229;
  input [7:0] i23;
  input [7:0] i230;
  input [7:0] i231;
  input [7:0] i232;
  input [7:0] i233;
  input [7:0] i234;
  input [7:0] i235;
  input [7:0] i236;
  input [7:0] i237;
  input [7:0] i238;
  input [7:0] i239;
  input [7:0] i24;
  input [7:0] i240;
  input [7:0] i241;
  input [7:0] i242;
  input [7:0] i243;
  input [7:0] i244;
  input [7:0] i245;
  input [7:0] i246;
  input [7:0] i247;
  input [7:0] i248;
  input [7:0] i249;
  input [7:0] i25;
  input [7:0] i250;
  input [7:0] i251;
  input [7:0] i252;
  input [7:0] i253;
  input [7:0] i254;
  input [7:0] i255;
  input [7:0] i26;
  input [7:0] i27;
  input [7:0] i28;
  input [7:0] i29;
  input [7:0] i3;
  input [7:0] i30;
  input [7:0] i31;
  input [7:0] i32;
  input [7:0] i33;
  input [7:0] i34;
  input [7:0] i35;
  input [7:0] i36;
  input [7:0] i37;
  input [7:0] i38;
  input [7:0] i39;
  input [7:0] i4;
  input [7:0] i40;
  input [7:0] i41;
  input [7:0] i42;
  input [7:0] i43;
  input [7:0] i44;
  input [7:0] i45;
  input [7:0] i46;
  input [7:0] i47;
  input [7:0] i48;
  input [7:0] i49;
  input [7:0] i5;
  input [7:0] i50;
  input [7:0] i51;
  input [7:0] i52;
  input [7:0] i53;
  input [7:0] i54;
  input [7:0] i55;
  input [7:0] i56;
  input [7:0] i57;
  input [7:0] i58;
  input [7:0] i59;
  input [7:0] i6;
  input [7:0] i60;
  input [7:0] i61;
  input [7:0] i62;
  input [7:0] i63;
  input [7:0] i64;
  input [7:0] i65;
  input [7:0] i66;
  input [7:0] i67;
  input [7:0] i68;
  input [7:0] i69;
  input [7:0] i7;
  input [7:0] i70;
  input [7:0] i71;
  input [7:0] i72;
  input [7:0] i73;
  input [7:0] i74;
  input [7:0] i75;
  input [7:0] i76;
  input [7:0] i77;
  input [7:0] i78;
  input [7:0] i79;
  input [7:0] i8;
  input [7:0] i80;
  input [7:0] i81;
  input [7:0] i82;
  input [7:0] i83;
  input [7:0] i84;
  input [7:0] i85;
  input [7:0] i86;
  input [7:0] i87;
  input [7:0] i88;
  input [7:0] i89;
  input [7:0] i9;
  input [7:0] i90;
  input [7:0] i91;
  input [7:0] i92;
  input [7:0] i93;
  input [7:0] i94;
  input [7:0] i95;
  input [7:0] i96;
  input [7:0] i97;
  input [7:0] i98;
  input [7:0] i99;
  input [7:0] sel;
  output [7:0] o;



endmodule 

module binary_mux_s8_w12
  (
  i0,
  i1,
  i10,
  i100,
  i101,
  i102,
  i103,
  i104,
  i105,
  i106,
  i107,
  i108,
  i109,
  i11,
  i110,
  i111,
  i112,
  i113,
  i114,
  i115,
  i116,
  i117,
  i118,
  i119,
  i12,
  i120,
  i121,
  i122,
  i123,
  i124,
  i125,
  i126,
  i127,
  i128,
  i129,
  i13,
  i130,
  i131,
  i132,
  i133,
  i134,
  i135,
  i136,
  i137,
  i138,
  i139,
  i14,
  i140,
  i141,
  i142,
  i143,
  i144,
  i145,
  i146,
  i147,
  i148,
  i149,
  i15,
  i150,
  i151,
  i152,
  i153,
  i154,
  i155,
  i156,
  i157,
  i158,
  i159,
  i16,
  i160,
  i161,
  i162,
  i163,
  i164,
  i165,
  i166,
  i167,
  i168,
  i169,
  i17,
  i170,
  i171,
  i172,
  i173,
  i174,
  i175,
  i176,
  i177,
  i178,
  i179,
  i18,
  i180,
  i181,
  i182,
  i183,
  i184,
  i185,
  i186,
  i187,
  i188,
  i189,
  i19,
  i190,
  i191,
  i192,
  i193,
  i194,
  i195,
  i196,
  i197,
  i198,
  i199,
  i2,
  i20,
  i200,
  i201,
  i202,
  i203,
  i204,
  i205,
  i206,
  i207,
  i208,
  i209,
  i21,
  i210,
  i211,
  i212,
  i213,
  i214,
  i215,
  i216,
  i217,
  i218,
  i219,
  i22,
  i220,
  i221,
  i222,
  i223,
  i224,
  i225,
  i226,
  i227,
  i228,
  i229,
  i23,
  i230,
  i231,
  i232,
  i233,
  i234,
  i235,
  i236,
  i237,
  i238,
  i239,
  i24,
  i240,
  i241,
  i242,
  i243,
  i244,
  i245,
  i246,
  i247,
  i248,
  i249,
  i25,
  i250,
  i251,
  i252,
  i253,
  i254,
  i255,
  i26,
  i27,
  i28,
  i29,
  i3,
  i30,
  i31,
  i32,
  i33,
  i34,
  i35,
  i36,
  i37,
  i38,
  i39,
  i4,
  i40,
  i41,
  i42,
  i43,
  i44,
  i45,
  i46,
  i47,
  i48,
  i49,
  i5,
  i50,
  i51,
  i52,
  i53,
  i54,
  i55,
  i56,
  i57,
  i58,
  i59,
  i6,
  i60,
  i61,
  i62,
  i63,
  i64,
  i65,
  i66,
  i67,
  i68,
  i69,
  i7,
  i70,
  i71,
  i72,
  i73,
  i74,
  i75,
  i76,
  i77,
  i78,
  i79,
  i8,
  i80,
  i81,
  i82,
  i83,
  i84,
  i85,
  i86,
  i87,
  i88,
  i89,
  i9,
  i90,
  i91,
  i92,
  i93,
  i94,
  i95,
  i96,
  i97,
  i98,
  i99,
  sel,
  o
  );

  input [11:0] i0;
  input [11:0] i1;
  input [11:0] i10;
  input [11:0] i100;
  input [11:0] i101;
  input [11:0] i102;
  input [11:0] i103;
  input [11:0] i104;
  input [11:0] i105;
  input [11:0] i106;
  input [11:0] i107;
  input [11:0] i108;
  input [11:0] i109;
  input [11:0] i11;
  input [11:0] i110;
  input [11:0] i111;
  input [11:0] i112;
  input [11:0] i113;
  input [11:0] i114;
  input [11:0] i115;
  input [11:0] i116;
  input [11:0] i117;
  input [11:0] i118;
  input [11:0] i119;
  input [11:0] i12;
  input [11:0] i120;
  input [11:0] i121;
  input [11:0] i122;
  input [11:0] i123;
  input [11:0] i124;
  input [11:0] i125;
  input [11:0] i126;
  input [11:0] i127;
  input [11:0] i128;
  input [11:0] i129;
  input [11:0] i13;
  input [11:0] i130;
  input [11:0] i131;
  input [11:0] i132;
  input [11:0] i133;
  input [11:0] i134;
  input [11:0] i135;
  input [11:0] i136;
  input [11:0] i137;
  input [11:0] i138;
  input [11:0] i139;
  input [11:0] i14;
  input [11:0] i140;
  input [11:0] i141;
  input [11:0] i142;
  input [11:0] i143;
  input [11:0] i144;
  input [11:0] i145;
  input [11:0] i146;
  input [11:0] i147;
  input [11:0] i148;
  input [11:0] i149;
  input [11:0] i15;
  input [11:0] i150;
  input [11:0] i151;
  input [11:0] i152;
  input [11:0] i153;
  input [11:0] i154;
  input [11:0] i155;
  input [11:0] i156;
  input [11:0] i157;
  input [11:0] i158;
  input [11:0] i159;
  input [11:0] i16;
  input [11:0] i160;
  input [11:0] i161;
  input [11:0] i162;
  input [11:0] i163;
  input [11:0] i164;
  input [11:0] i165;
  input [11:0] i166;
  input [11:0] i167;
  input [11:0] i168;
  input [11:0] i169;
  input [11:0] i17;
  input [11:0] i170;
  input [11:0] i171;
  input [11:0] i172;
  input [11:0] i173;
  input [11:0] i174;
  input [11:0] i175;
  input [11:0] i176;
  input [11:0] i177;
  input [11:0] i178;
  input [11:0] i179;
  input [11:0] i18;
  input [11:0] i180;
  input [11:0] i181;
  input [11:0] i182;
  input [11:0] i183;
  input [11:0] i184;
  input [11:0] i185;
  input [11:0] i186;
  input [11:0] i187;
  input [11:0] i188;
  input [11:0] i189;
  input [11:0] i19;
  input [11:0] i190;
  input [11:0] i191;
  input [11:0] i192;
  input [11:0] i193;
  input [11:0] i194;
  input [11:0] i195;
  input [11:0] i196;
  input [11:0] i197;
  input [11:0] i198;
  input [11:0] i199;
  input [11:0] i2;
  input [11:0] i20;
  input [11:0] i200;
  input [11:0] i201;
  input [11:0] i202;
  input [11:0] i203;
  input [11:0] i204;
  input [11:0] i205;
  input [11:0] i206;
  input [11:0] i207;
  input [11:0] i208;
  input [11:0] i209;
  input [11:0] i21;
  input [11:0] i210;
  input [11:0] i211;
  input [11:0] i212;
  input [11:0] i213;
  input [11:0] i214;
  input [11:0] i215;
  input [11:0] i216;
  input [11:0] i217;
  input [11:0] i218;
  input [11:0] i219;
  input [11:0] i22;
  input [11:0] i220;
  input [11:0] i221;
  input [11:0] i222;
  input [11:0] i223;
  input [11:0] i224;
  input [11:0] i225;
  input [11:0] i226;
  input [11:0] i227;
  input [11:0] i228;
  input [11:0] i229;
  input [11:0] i23;
  input [11:0] i230;
  input [11:0] i231;
  input [11:0] i232;
  input [11:0] i233;
  input [11:0] i234;
  input [11:0] i235;
  input [11:0] i236;
  input [11:0] i237;
  input [11:0] i238;
  input [11:0] i239;
  input [11:0] i24;
  input [11:0] i240;
  input [11:0] i241;
  input [11:0] i242;
  input [11:0] i243;
  input [11:0] i244;
  input [11:0] i245;
  input [11:0] i246;
  input [11:0] i247;
  input [11:0] i248;
  input [11:0] i249;
  input [11:0] i25;
  input [11:0] i250;
  input [11:0] i251;
  input [11:0] i252;
  input [11:0] i253;
  input [11:0] i254;
  input [11:0] i255;
  input [11:0] i26;
  input [11:0] i27;
  input [11:0] i28;
  input [11:0] i29;
  input [11:0] i3;
  input [11:0] i30;
  input [11:0] i31;
  input [11:0] i32;
  input [11:0] i33;
  input [11:0] i34;
  input [11:0] i35;
  input [11:0] i36;
  input [11:0] i37;
  input [11:0] i38;
  input [11:0] i39;
  input [11:0] i4;
  input [11:0] i40;
  input [11:0] i41;
  input [11:0] i42;
  input [11:0] i43;
  input [11:0] i44;
  input [11:0] i45;
  input [11:0] i46;
  input [11:0] i47;
  input [11:0] i48;
  input [11:0] i49;
  input [11:0] i5;
  input [11:0] i50;
  input [11:0] i51;
  input [11:0] i52;
  input [11:0] i53;
  input [11:0] i54;
  input [11:0] i55;
  input [11:0] i56;
  input [11:0] i57;
  input [11:0] i58;
  input [11:0] i59;
  input [11:0] i6;
  input [11:0] i60;
  input [11:0] i61;
  input [11:0] i62;
  input [11:0] i63;
  input [11:0] i64;
  input [11:0] i65;
  input [11:0] i66;
  input [11:0] i67;
  input [11:0] i68;
  input [11:0] i69;
  input [11:0] i7;
  input [11:0] i70;
  input [11:0] i71;
  input [11:0] i72;
  input [11:0] i73;
  input [11:0] i74;
  input [11:0] i75;
  input [11:0] i76;
  input [11:0] i77;
  input [11:0] i78;
  input [11:0] i79;
  input [11:0] i8;
  input [11:0] i80;
  input [11:0] i81;
  input [11:0] i82;
  input [11:0] i83;
  input [11:0] i84;
  input [11:0] i85;
  input [11:0] i86;
  input [11:0] i87;
  input [11:0] i88;
  input [11:0] i89;
  input [11:0] i9;
  input [11:0] i90;
  input [11:0] i91;
  input [11:0] i92;
  input [11:0] i93;
  input [11:0] i94;
  input [11:0] i95;
  input [11:0] i96;
  input [11:0] i97;
  input [11:0] i98;
  input [11:0] i99;
  input [7:0] sel;
  output [11:0] o;



endmodule 

module binary_mux_s3_w4
  (
  i0,
  i1,
  i2,
  i3,
  i4,
  i5,
  i6,
  i7,
  sel,
  o
  );

  input [3:0] i0;
  input [3:0] i1;
  input [3:0] i2;
  input [3:0] i3;
  input [3:0] i4;
  input [3:0] i5;
  input [3:0] i6;
  input [3:0] i7;
  input [2:0] sel;
  output [3:0] o;



endmodule 

module binary_mux_s7_w2
  (
  i0,
  i1,
  i10,
  i100,
  i101,
  i102,
  i103,
  i104,
  i105,
  i106,
  i107,
  i108,
  i109,
  i11,
  i110,
  i111,
  i112,
  i113,
  i114,
  i115,
  i116,
  i117,
  i118,
  i119,
  i12,
  i120,
  i121,
  i122,
  i123,
  i124,
  i125,
  i126,
  i127,
  i13,
  i14,
  i15,
  i16,
  i17,
  i18,
  i19,
  i2,
  i20,
  i21,
  i22,
  i23,
  i24,
  i25,
  i26,
  i27,
  i28,
  i29,
  i3,
  i30,
  i31,
  i32,
  i33,
  i34,
  i35,
  i36,
  i37,
  i38,
  i39,
  i4,
  i40,
  i41,
  i42,
  i43,
  i44,
  i45,
  i46,
  i47,
  i48,
  i49,
  i5,
  i50,
  i51,
  i52,
  i53,
  i54,
  i55,
  i56,
  i57,
  i58,
  i59,
  i6,
  i60,
  i61,
  i62,
  i63,
  i64,
  i65,
  i66,
  i67,
  i68,
  i69,
  i7,
  i70,
  i71,
  i72,
  i73,
  i74,
  i75,
  i76,
  i77,
  i78,
  i79,
  i8,
  i80,
  i81,
  i82,
  i83,
  i84,
  i85,
  i86,
  i87,
  i88,
  i89,
  i9,
  i90,
  i91,
  i92,
  i93,
  i94,
  i95,
  i96,
  i97,
  i98,
  i99,
  sel,
  o
  );

  input [1:0] i0;
  input [1:0] i1;
  input [1:0] i10;
  input [1:0] i100;
  input [1:0] i101;
  input [1:0] i102;
  input [1:0] i103;
  input [1:0] i104;
  input [1:0] i105;
  input [1:0] i106;
  input [1:0] i107;
  input [1:0] i108;
  input [1:0] i109;
  input [1:0] i11;
  input [1:0] i110;
  input [1:0] i111;
  input [1:0] i112;
  input [1:0] i113;
  input [1:0] i114;
  input [1:0] i115;
  input [1:0] i116;
  input [1:0] i117;
  input [1:0] i118;
  input [1:0] i119;
  input [1:0] i12;
  input [1:0] i120;
  input [1:0] i121;
  input [1:0] i122;
  input [1:0] i123;
  input [1:0] i124;
  input [1:0] i125;
  input [1:0] i126;
  input [1:0] i127;
  input [1:0] i13;
  input [1:0] i14;
  input [1:0] i15;
  input [1:0] i16;
  input [1:0] i17;
  input [1:0] i18;
  input [1:0] i19;
  input [1:0] i2;
  input [1:0] i20;
  input [1:0] i21;
  input [1:0] i22;
  input [1:0] i23;
  input [1:0] i24;
  input [1:0] i25;
  input [1:0] i26;
  input [1:0] i27;
  input [1:0] i28;
  input [1:0] i29;
  input [1:0] i3;
  input [1:0] i30;
  input [1:0] i31;
  input [1:0] i32;
  input [1:0] i33;
  input [1:0] i34;
  input [1:0] i35;
  input [1:0] i36;
  input [1:0] i37;
  input [1:0] i38;
  input [1:0] i39;
  input [1:0] i4;
  input [1:0] i40;
  input [1:0] i41;
  input [1:0] i42;
  input [1:0] i43;
  input [1:0] i44;
  input [1:0] i45;
  input [1:0] i46;
  input [1:0] i47;
  input [1:0] i48;
  input [1:0] i49;
  input [1:0] i5;
  input [1:0] i50;
  input [1:0] i51;
  input [1:0] i52;
  input [1:0] i53;
  input [1:0] i54;
  input [1:0] i55;
  input [1:0] i56;
  input [1:0] i57;
  input [1:0] i58;
  input [1:0] i59;
  input [1:0] i6;
  input [1:0] i60;
  input [1:0] i61;
  input [1:0] i62;
  input [1:0] i63;
  input [1:0] i64;
  input [1:0] i65;
  input [1:0] i66;
  input [1:0] i67;
  input [1:0] i68;
  input [1:0] i69;
  input [1:0] i7;
  input [1:0] i70;
  input [1:0] i71;
  input [1:0] i72;
  input [1:0] i73;
  input [1:0] i74;
  input [1:0] i75;
  input [1:0] i76;
  input [1:0] i77;
  input [1:0] i78;
  input [1:0] i79;
  input [1:0] i8;
  input [1:0] i80;
  input [1:0] i81;
  input [1:0] i82;
  input [1:0] i83;
  input [1:0] i84;
  input [1:0] i85;
  input [1:0] i86;
  input [1:0] i87;
  input [1:0] i88;
  input [1:0] i89;
  input [1:0] i9;
  input [1:0] i90;
  input [1:0] i91;
  input [1:0] i92;
  input [1:0] i93;
  input [1:0] i94;
  input [1:0] i95;
  input [1:0] i96;
  input [1:0] i97;
  input [1:0] i98;
  input [1:0] i99;
  input [6:0] sel;
  output [1:0] o;



endmodule 

module binary_mux_s8_w9
  (
  i0,
  i1,
  i10,
  i100,
  i101,
  i102,
  i103,
  i104,
  i105,
  i106,
  i107,
  i108,
  i109,
  i11,
  i110,
  i111,
  i112,
  i113,
  i114,
  i115,
  i116,
  i117,
  i118,
  i119,
  i12,
  i120,
  i121,
  i122,
  i123,
  i124,
  i125,
  i126,
  i127,
  i128,
  i129,
  i13,
  i130,
  i131,
  i132,
  i133,
  i134,
  i135,
  i136,
  i137,
  i138,
  i139,
  i14,
  i140,
  i141,
  i142,
  i143,
  i144,
  i145,
  i146,
  i147,
  i148,
  i149,
  i15,
  i150,
  i151,
  i152,
  i153,
  i154,
  i155,
  i156,
  i157,
  i158,
  i159,
  i16,
  i160,
  i161,
  i162,
  i163,
  i164,
  i165,
  i166,
  i167,
  i168,
  i169,
  i17,
  i170,
  i171,
  i172,
  i173,
  i174,
  i175,
  i176,
  i177,
  i178,
  i179,
  i18,
  i180,
  i181,
  i182,
  i183,
  i184,
  i185,
  i186,
  i187,
  i188,
  i189,
  i19,
  i190,
  i191,
  i192,
  i193,
  i194,
  i195,
  i196,
  i197,
  i198,
  i199,
  i2,
  i20,
  i200,
  i201,
  i202,
  i203,
  i204,
  i205,
  i206,
  i207,
  i208,
  i209,
  i21,
  i210,
  i211,
  i212,
  i213,
  i214,
  i215,
  i216,
  i217,
  i218,
  i219,
  i22,
  i220,
  i221,
  i222,
  i223,
  i224,
  i225,
  i226,
  i227,
  i228,
  i229,
  i23,
  i230,
  i231,
  i232,
  i233,
  i234,
  i235,
  i236,
  i237,
  i238,
  i239,
  i24,
  i240,
  i241,
  i242,
  i243,
  i244,
  i245,
  i246,
  i247,
  i248,
  i249,
  i25,
  i250,
  i251,
  i252,
  i253,
  i254,
  i255,
  i26,
  i27,
  i28,
  i29,
  i3,
  i30,
  i31,
  i32,
  i33,
  i34,
  i35,
  i36,
  i37,
  i38,
  i39,
  i4,
  i40,
  i41,
  i42,
  i43,
  i44,
  i45,
  i46,
  i47,
  i48,
  i49,
  i5,
  i50,
  i51,
  i52,
  i53,
  i54,
  i55,
  i56,
  i57,
  i58,
  i59,
  i6,
  i60,
  i61,
  i62,
  i63,
  i64,
  i65,
  i66,
  i67,
  i68,
  i69,
  i7,
  i70,
  i71,
  i72,
  i73,
  i74,
  i75,
  i76,
  i77,
  i78,
  i79,
  i8,
  i80,
  i81,
  i82,
  i83,
  i84,
  i85,
  i86,
  i87,
  i88,
  i89,
  i9,
  i90,
  i91,
  i92,
  i93,
  i94,
  i95,
  i96,
  i97,
  i98,
  i99,
  sel,
  o
  );

  input [8:0] i0;
  input [8:0] i1;
  input [8:0] i10;
  input [8:0] i100;
  input [8:0] i101;
  input [8:0] i102;
  input [8:0] i103;
  input [8:0] i104;
  input [8:0] i105;
  input [8:0] i106;
  input [8:0] i107;
  input [8:0] i108;
  input [8:0] i109;
  input [8:0] i11;
  input [8:0] i110;
  input [8:0] i111;
  input [8:0] i112;
  input [8:0] i113;
  input [8:0] i114;
  input [8:0] i115;
  input [8:0] i116;
  input [8:0] i117;
  input [8:0] i118;
  input [8:0] i119;
  input [8:0] i12;
  input [8:0] i120;
  input [8:0] i121;
  input [8:0] i122;
  input [8:0] i123;
  input [8:0] i124;
  input [8:0] i125;
  input [8:0] i126;
  input [8:0] i127;
  input [8:0] i128;
  input [8:0] i129;
  input [8:0] i13;
  input [8:0] i130;
  input [8:0] i131;
  input [8:0] i132;
  input [8:0] i133;
  input [8:0] i134;
  input [8:0] i135;
  input [8:0] i136;
  input [8:0] i137;
  input [8:0] i138;
  input [8:0] i139;
  input [8:0] i14;
  input [8:0] i140;
  input [8:0] i141;
  input [8:0] i142;
  input [8:0] i143;
  input [8:0] i144;
  input [8:0] i145;
  input [8:0] i146;
  input [8:0] i147;
  input [8:0] i148;
  input [8:0] i149;
  input [8:0] i15;
  input [8:0] i150;
  input [8:0] i151;
  input [8:0] i152;
  input [8:0] i153;
  input [8:0] i154;
  input [8:0] i155;
  input [8:0] i156;
  input [8:0] i157;
  input [8:0] i158;
  input [8:0] i159;
  input [8:0] i16;
  input [8:0] i160;
  input [8:0] i161;
  input [8:0] i162;
  input [8:0] i163;
  input [8:0] i164;
  input [8:0] i165;
  input [8:0] i166;
  input [8:0] i167;
  input [8:0] i168;
  input [8:0] i169;
  input [8:0] i17;
  input [8:0] i170;
  input [8:0] i171;
  input [8:0] i172;
  input [8:0] i173;
  input [8:0] i174;
  input [8:0] i175;
  input [8:0] i176;
  input [8:0] i177;
  input [8:0] i178;
  input [8:0] i179;
  input [8:0] i18;
  input [8:0] i180;
  input [8:0] i181;
  input [8:0] i182;
  input [8:0] i183;
  input [8:0] i184;
  input [8:0] i185;
  input [8:0] i186;
  input [8:0] i187;
  input [8:0] i188;
  input [8:0] i189;
  input [8:0] i19;
  input [8:0] i190;
  input [8:0] i191;
  input [8:0] i192;
  input [8:0] i193;
  input [8:0] i194;
  input [8:0] i195;
  input [8:0] i196;
  input [8:0] i197;
  input [8:0] i198;
  input [8:0] i199;
  input [8:0] i2;
  input [8:0] i20;
  input [8:0] i200;
  input [8:0] i201;
  input [8:0] i202;
  input [8:0] i203;
  input [8:0] i204;
  input [8:0] i205;
  input [8:0] i206;
  input [8:0] i207;
  input [8:0] i208;
  input [8:0] i209;
  input [8:0] i21;
  input [8:0] i210;
  input [8:0] i211;
  input [8:0] i212;
  input [8:0] i213;
  input [8:0] i214;
  input [8:0] i215;
  input [8:0] i216;
  input [8:0] i217;
  input [8:0] i218;
  input [8:0] i219;
  input [8:0] i22;
  input [8:0] i220;
  input [8:0] i221;
  input [8:0] i222;
  input [8:0] i223;
  input [8:0] i224;
  input [8:0] i225;
  input [8:0] i226;
  input [8:0] i227;
  input [8:0] i228;
  input [8:0] i229;
  input [8:0] i23;
  input [8:0] i230;
  input [8:0] i231;
  input [8:0] i232;
  input [8:0] i233;
  input [8:0] i234;
  input [8:0] i235;
  input [8:0] i236;
  input [8:0] i237;
  input [8:0] i238;
  input [8:0] i239;
  input [8:0] i24;
  input [8:0] i240;
  input [8:0] i241;
  input [8:0] i242;
  input [8:0] i243;
  input [8:0] i244;
  input [8:0] i245;
  input [8:0] i246;
  input [8:0] i247;
  input [8:0] i248;
  input [8:0] i249;
  input [8:0] i25;
  input [8:0] i250;
  input [8:0] i251;
  input [8:0] i252;
  input [8:0] i253;
  input [8:0] i254;
  input [8:0] i255;
  input [8:0] i26;
  input [8:0] i27;
  input [8:0] i28;
  input [8:0] i29;
  input [8:0] i3;
  input [8:0] i30;
  input [8:0] i31;
  input [8:0] i32;
  input [8:0] i33;
  input [8:0] i34;
  input [8:0] i35;
  input [8:0] i36;
  input [8:0] i37;
  input [8:0] i38;
  input [8:0] i39;
  input [8:0] i4;
  input [8:0] i40;
  input [8:0] i41;
  input [8:0] i42;
  input [8:0] i43;
  input [8:0] i44;
  input [8:0] i45;
  input [8:0] i46;
  input [8:0] i47;
  input [8:0] i48;
  input [8:0] i49;
  input [8:0] i5;
  input [8:0] i50;
  input [8:0] i51;
  input [8:0] i52;
  input [8:0] i53;
  input [8:0] i54;
  input [8:0] i55;
  input [8:0] i56;
  input [8:0] i57;
  input [8:0] i58;
  input [8:0] i59;
  input [8:0] i6;
  input [8:0] i60;
  input [8:0] i61;
  input [8:0] i62;
  input [8:0] i63;
  input [8:0] i64;
  input [8:0] i65;
  input [8:0] i66;
  input [8:0] i67;
  input [8:0] i68;
  input [8:0] i69;
  input [8:0] i7;
  input [8:0] i70;
  input [8:0] i71;
  input [8:0] i72;
  input [8:0] i73;
  input [8:0] i74;
  input [8:0] i75;
  input [8:0] i76;
  input [8:0] i77;
  input [8:0] i78;
  input [8:0] i79;
  input [8:0] i8;
  input [8:0] i80;
  input [8:0] i81;
  input [8:0] i82;
  input [8:0] i83;
  input [8:0] i84;
  input [8:0] i85;
  input [8:0] i86;
  input [8:0] i87;
  input [8:0] i88;
  input [8:0] i89;
  input [8:0] i9;
  input [8:0] i90;
  input [8:0] i91;
  input [8:0] i92;
  input [8:0] i93;
  input [8:0] i94;
  input [8:0] i95;
  input [8:0] i96;
  input [8:0] i97;
  input [8:0] i98;
  input [8:0] i99;
  input [7:0] sel;
  output [8:0] o;



endmodule 

module binary_mux_s8_w2
  (
  i0,
  i1,
  i10,
  i100,
  i101,
  i102,
  i103,
  i104,
  i105,
  i106,
  i107,
  i108,
  i109,
  i11,
  i110,
  i111,
  i112,
  i113,
  i114,
  i115,
  i116,
  i117,
  i118,
  i119,
  i12,
  i120,
  i121,
  i122,
  i123,
  i124,
  i125,
  i126,
  i127,
  i128,
  i129,
  i13,
  i130,
  i131,
  i132,
  i133,
  i134,
  i135,
  i136,
  i137,
  i138,
  i139,
  i14,
  i140,
  i141,
  i142,
  i143,
  i144,
  i145,
  i146,
  i147,
  i148,
  i149,
  i15,
  i150,
  i151,
  i152,
  i153,
  i154,
  i155,
  i156,
  i157,
  i158,
  i159,
  i16,
  i160,
  i161,
  i162,
  i163,
  i164,
  i165,
  i166,
  i167,
  i168,
  i169,
  i17,
  i170,
  i171,
  i172,
  i173,
  i174,
  i175,
  i176,
  i177,
  i178,
  i179,
  i18,
  i180,
  i181,
  i182,
  i183,
  i184,
  i185,
  i186,
  i187,
  i188,
  i189,
  i19,
  i190,
  i191,
  i192,
  i193,
  i194,
  i195,
  i196,
  i197,
  i198,
  i199,
  i2,
  i20,
  i200,
  i201,
  i202,
  i203,
  i204,
  i205,
  i206,
  i207,
  i208,
  i209,
  i21,
  i210,
  i211,
  i212,
  i213,
  i214,
  i215,
  i216,
  i217,
  i218,
  i219,
  i22,
  i220,
  i221,
  i222,
  i223,
  i224,
  i225,
  i226,
  i227,
  i228,
  i229,
  i23,
  i230,
  i231,
  i232,
  i233,
  i234,
  i235,
  i236,
  i237,
  i238,
  i239,
  i24,
  i240,
  i241,
  i242,
  i243,
  i244,
  i245,
  i246,
  i247,
  i248,
  i249,
  i25,
  i250,
  i251,
  i252,
  i253,
  i254,
  i255,
  i26,
  i27,
  i28,
  i29,
  i3,
  i30,
  i31,
  i32,
  i33,
  i34,
  i35,
  i36,
  i37,
  i38,
  i39,
  i4,
  i40,
  i41,
  i42,
  i43,
  i44,
  i45,
  i46,
  i47,
  i48,
  i49,
  i5,
  i50,
  i51,
  i52,
  i53,
  i54,
  i55,
  i56,
  i57,
  i58,
  i59,
  i6,
  i60,
  i61,
  i62,
  i63,
  i64,
  i65,
  i66,
  i67,
  i68,
  i69,
  i7,
  i70,
  i71,
  i72,
  i73,
  i74,
  i75,
  i76,
  i77,
  i78,
  i79,
  i8,
  i80,
  i81,
  i82,
  i83,
  i84,
  i85,
  i86,
  i87,
  i88,
  i89,
  i9,
  i90,
  i91,
  i92,
  i93,
  i94,
  i95,
  i96,
  i97,
  i98,
  i99,
  sel,
  o
  );

  input [1:0] i0;
  input [1:0] i1;
  input [1:0] i10;
  input [1:0] i100;
  input [1:0] i101;
  input [1:0] i102;
  input [1:0] i103;
  input [1:0] i104;
  input [1:0] i105;
  input [1:0] i106;
  input [1:0] i107;
  input [1:0] i108;
  input [1:0] i109;
  input [1:0] i11;
  input [1:0] i110;
  input [1:0] i111;
  input [1:0] i112;
  input [1:0] i113;
  input [1:0] i114;
  input [1:0] i115;
  input [1:0] i116;
  input [1:0] i117;
  input [1:0] i118;
  input [1:0] i119;
  input [1:0] i12;
  input [1:0] i120;
  input [1:0] i121;
  input [1:0] i122;
  input [1:0] i123;
  input [1:0] i124;
  input [1:0] i125;
  input [1:0] i126;
  input [1:0] i127;
  input [1:0] i128;
  input [1:0] i129;
  input [1:0] i13;
  input [1:0] i130;
  input [1:0] i131;
  input [1:0] i132;
  input [1:0] i133;
  input [1:0] i134;
  input [1:0] i135;
  input [1:0] i136;
  input [1:0] i137;
  input [1:0] i138;
  input [1:0] i139;
  input [1:0] i14;
  input [1:0] i140;
  input [1:0] i141;
  input [1:0] i142;
  input [1:0] i143;
  input [1:0] i144;
  input [1:0] i145;
  input [1:0] i146;
  input [1:0] i147;
  input [1:0] i148;
  input [1:0] i149;
  input [1:0] i15;
  input [1:0] i150;
  input [1:0] i151;
  input [1:0] i152;
  input [1:0] i153;
  input [1:0] i154;
  input [1:0] i155;
  input [1:0] i156;
  input [1:0] i157;
  input [1:0] i158;
  input [1:0] i159;
  input [1:0] i16;
  input [1:0] i160;
  input [1:0] i161;
  input [1:0] i162;
  input [1:0] i163;
  input [1:0] i164;
  input [1:0] i165;
  input [1:0] i166;
  input [1:0] i167;
  input [1:0] i168;
  input [1:0] i169;
  input [1:0] i17;
  input [1:0] i170;
  input [1:0] i171;
  input [1:0] i172;
  input [1:0] i173;
  input [1:0] i174;
  input [1:0] i175;
  input [1:0] i176;
  input [1:0] i177;
  input [1:0] i178;
  input [1:0] i179;
  input [1:0] i18;
  input [1:0] i180;
  input [1:0] i181;
  input [1:0] i182;
  input [1:0] i183;
  input [1:0] i184;
  input [1:0] i185;
  input [1:0] i186;
  input [1:0] i187;
  input [1:0] i188;
  input [1:0] i189;
  input [1:0] i19;
  input [1:0] i190;
  input [1:0] i191;
  input [1:0] i192;
  input [1:0] i193;
  input [1:0] i194;
  input [1:0] i195;
  input [1:0] i196;
  input [1:0] i197;
  input [1:0] i198;
  input [1:0] i199;
  input [1:0] i2;
  input [1:0] i20;
  input [1:0] i200;
  input [1:0] i201;
  input [1:0] i202;
  input [1:0] i203;
  input [1:0] i204;
  input [1:0] i205;
  input [1:0] i206;
  input [1:0] i207;
  input [1:0] i208;
  input [1:0] i209;
  input [1:0] i21;
  input [1:0] i210;
  input [1:0] i211;
  input [1:0] i212;
  input [1:0] i213;
  input [1:0] i214;
  input [1:0] i215;
  input [1:0] i216;
  input [1:0] i217;
  input [1:0] i218;
  input [1:0] i219;
  input [1:0] i22;
  input [1:0] i220;
  input [1:0] i221;
  input [1:0] i222;
  input [1:0] i223;
  input [1:0] i224;
  input [1:0] i225;
  input [1:0] i226;
  input [1:0] i227;
  input [1:0] i228;
  input [1:0] i229;
  input [1:0] i23;
  input [1:0] i230;
  input [1:0] i231;
  input [1:0] i232;
  input [1:0] i233;
  input [1:0] i234;
  input [1:0] i235;
  input [1:0] i236;
  input [1:0] i237;
  input [1:0] i238;
  input [1:0] i239;
  input [1:0] i24;
  input [1:0] i240;
  input [1:0] i241;
  input [1:0] i242;
  input [1:0] i243;
  input [1:0] i244;
  input [1:0] i245;
  input [1:0] i246;
  input [1:0] i247;
  input [1:0] i248;
  input [1:0] i249;
  input [1:0] i25;
  input [1:0] i250;
  input [1:0] i251;
  input [1:0] i252;
  input [1:0] i253;
  input [1:0] i254;
  input [1:0] i255;
  input [1:0] i26;
  input [1:0] i27;
  input [1:0] i28;
  input [1:0] i29;
  input [1:0] i3;
  input [1:0] i30;
  input [1:0] i31;
  input [1:0] i32;
  input [1:0] i33;
  input [1:0] i34;
  input [1:0] i35;
  input [1:0] i36;
  input [1:0] i37;
  input [1:0] i38;
  input [1:0] i39;
  input [1:0] i4;
  input [1:0] i40;
  input [1:0] i41;
  input [1:0] i42;
  input [1:0] i43;
  input [1:0] i44;
  input [1:0] i45;
  input [1:0] i46;
  input [1:0] i47;
  input [1:0] i48;
  input [1:0] i49;
  input [1:0] i5;
  input [1:0] i50;
  input [1:0] i51;
  input [1:0] i52;
  input [1:0] i53;
  input [1:0] i54;
  input [1:0] i55;
  input [1:0] i56;
  input [1:0] i57;
  input [1:0] i58;
  input [1:0] i59;
  input [1:0] i6;
  input [1:0] i60;
  input [1:0] i61;
  input [1:0] i62;
  input [1:0] i63;
  input [1:0] i64;
  input [1:0] i65;
  input [1:0] i66;
  input [1:0] i67;
  input [1:0] i68;
  input [1:0] i69;
  input [1:0] i7;
  input [1:0] i70;
  input [1:0] i71;
  input [1:0] i72;
  input [1:0] i73;
  input [1:0] i74;
  input [1:0] i75;
  input [1:0] i76;
  input [1:0] i77;
  input [1:0] i78;
  input [1:0] i79;
  input [1:0] i8;
  input [1:0] i80;
  input [1:0] i81;
  input [1:0] i82;
  input [1:0] i83;
  input [1:0] i84;
  input [1:0] i85;
  input [1:0] i86;
  input [1:0] i87;
  input [1:0] i88;
  input [1:0] i89;
  input [1:0] i9;
  input [1:0] i90;
  input [1:0] i91;
  input [1:0] i92;
  input [1:0] i93;
  input [1:0] i94;
  input [1:0] i95;
  input [1:0] i96;
  input [1:0] i97;
  input [1:0] i98;
  input [1:0] i99;
  input [7:0] sel;
  output [1:0] o;



endmodule 

module binary_mux_s2_w12
  (
  i0,
  i1,
  i2,
  i3,
  sel,
  o
  );

  input [11:0] i0;
  input [11:0] i1;
  input [11:0] i2;
  input [11:0] i3;
  input [1:0] sel;
  output [11:0] o;



endmodule 

module binary_mux_s2_w24
  (
  i0,
  i1,
  i2,
  i3,
  sel,
  o
  );

  input [23:0] i0;
  input [23:0] i1;
  input [23:0] i2;
  input [23:0] i3;
  input [1:0] sel;
  output [23:0] o;



endmodule 

module binary_mux_s3_w70
  (
  i0,
  i1,
  i2,
  i3,
  i4,
  i5,
  i6,
  i7,
  sel,
  o
  );

  input [69:0] i0;
  input [69:0] i1;
  input [69:0] i2;
  input [69:0] i3;
  input [69:0] i4;
  input [69:0] i5;
  input [69:0] i6;
  input [69:0] i7;
  input [2:0] sel;
  output [69:0] o;



endmodule 

module binary_mux_s8_w4
  (
  i0,
  i1,
  i10,
  i100,
  i101,
  i102,
  i103,
  i104,
  i105,
  i106,
  i107,
  i108,
  i109,
  i11,
  i110,
  i111,
  i112,
  i113,
  i114,
  i115,
  i116,
  i117,
  i118,
  i119,
  i12,
  i120,
  i121,
  i122,
  i123,
  i124,
  i125,
  i126,
  i127,
  i128,
  i129,
  i13,
  i130,
  i131,
  i132,
  i133,
  i134,
  i135,
  i136,
  i137,
  i138,
  i139,
  i14,
  i140,
  i141,
  i142,
  i143,
  i144,
  i145,
  i146,
  i147,
  i148,
  i149,
  i15,
  i150,
  i151,
  i152,
  i153,
  i154,
  i155,
  i156,
  i157,
  i158,
  i159,
  i16,
  i160,
  i161,
  i162,
  i163,
  i164,
  i165,
  i166,
  i167,
  i168,
  i169,
  i17,
  i170,
  i171,
  i172,
  i173,
  i174,
  i175,
  i176,
  i177,
  i178,
  i179,
  i18,
  i180,
  i181,
  i182,
  i183,
  i184,
  i185,
  i186,
  i187,
  i188,
  i189,
  i19,
  i190,
  i191,
  i192,
  i193,
  i194,
  i195,
  i196,
  i197,
  i198,
  i199,
  i2,
  i20,
  i200,
  i201,
  i202,
  i203,
  i204,
  i205,
  i206,
  i207,
  i208,
  i209,
  i21,
  i210,
  i211,
  i212,
  i213,
  i214,
  i215,
  i216,
  i217,
  i218,
  i219,
  i22,
  i220,
  i221,
  i222,
  i223,
  i224,
  i225,
  i226,
  i227,
  i228,
  i229,
  i23,
  i230,
  i231,
  i232,
  i233,
  i234,
  i235,
  i236,
  i237,
  i238,
  i239,
  i24,
  i240,
  i241,
  i242,
  i243,
  i244,
  i245,
  i246,
  i247,
  i248,
  i249,
  i25,
  i250,
  i251,
  i252,
  i253,
  i254,
  i255,
  i26,
  i27,
  i28,
  i29,
  i3,
  i30,
  i31,
  i32,
  i33,
  i34,
  i35,
  i36,
  i37,
  i38,
  i39,
  i4,
  i40,
  i41,
  i42,
  i43,
  i44,
  i45,
  i46,
  i47,
  i48,
  i49,
  i5,
  i50,
  i51,
  i52,
  i53,
  i54,
  i55,
  i56,
  i57,
  i58,
  i59,
  i6,
  i60,
  i61,
  i62,
  i63,
  i64,
  i65,
  i66,
  i67,
  i68,
  i69,
  i7,
  i70,
  i71,
  i72,
  i73,
  i74,
  i75,
  i76,
  i77,
  i78,
  i79,
  i8,
  i80,
  i81,
  i82,
  i83,
  i84,
  i85,
  i86,
  i87,
  i88,
  i89,
  i9,
  i90,
  i91,
  i92,
  i93,
  i94,
  i95,
  i96,
  i97,
  i98,
  i99,
  sel,
  o
  );

  input [3:0] i0;
  input [3:0] i1;
  input [3:0] i10;
  input [3:0] i100;
  input [3:0] i101;
  input [3:0] i102;
  input [3:0] i103;
  input [3:0] i104;
  input [3:0] i105;
  input [3:0] i106;
  input [3:0] i107;
  input [3:0] i108;
  input [3:0] i109;
  input [3:0] i11;
  input [3:0] i110;
  input [3:0] i111;
  input [3:0] i112;
  input [3:0] i113;
  input [3:0] i114;
  input [3:0] i115;
  input [3:0] i116;
  input [3:0] i117;
  input [3:0] i118;
  input [3:0] i119;
  input [3:0] i12;
  input [3:0] i120;
  input [3:0] i121;
  input [3:0] i122;
  input [3:0] i123;
  input [3:0] i124;
  input [3:0] i125;
  input [3:0] i126;
  input [3:0] i127;
  input [3:0] i128;
  input [3:0] i129;
  input [3:0] i13;
  input [3:0] i130;
  input [3:0] i131;
  input [3:0] i132;
  input [3:0] i133;
  input [3:0] i134;
  input [3:0] i135;
  input [3:0] i136;
  input [3:0] i137;
  input [3:0] i138;
  input [3:0] i139;
  input [3:0] i14;
  input [3:0] i140;
  input [3:0] i141;
  input [3:0] i142;
  input [3:0] i143;
  input [3:0] i144;
  input [3:0] i145;
  input [3:0] i146;
  input [3:0] i147;
  input [3:0] i148;
  input [3:0] i149;
  input [3:0] i15;
  input [3:0] i150;
  input [3:0] i151;
  input [3:0] i152;
  input [3:0] i153;
  input [3:0] i154;
  input [3:0] i155;
  input [3:0] i156;
  input [3:0] i157;
  input [3:0] i158;
  input [3:0] i159;
  input [3:0] i16;
  input [3:0] i160;
  input [3:0] i161;
  input [3:0] i162;
  input [3:0] i163;
  input [3:0] i164;
  input [3:0] i165;
  input [3:0] i166;
  input [3:0] i167;
  input [3:0] i168;
  input [3:0] i169;
  input [3:0] i17;
  input [3:0] i170;
  input [3:0] i171;
  input [3:0] i172;
  input [3:0] i173;
  input [3:0] i174;
  input [3:0] i175;
  input [3:0] i176;
  input [3:0] i177;
  input [3:0] i178;
  input [3:0] i179;
  input [3:0] i18;
  input [3:0] i180;
  input [3:0] i181;
  input [3:0] i182;
  input [3:0] i183;
  input [3:0] i184;
  input [3:0] i185;
  input [3:0] i186;
  input [3:0] i187;
  input [3:0] i188;
  input [3:0] i189;
  input [3:0] i19;
  input [3:0] i190;
  input [3:0] i191;
  input [3:0] i192;
  input [3:0] i193;
  input [3:0] i194;
  input [3:0] i195;
  input [3:0] i196;
  input [3:0] i197;
  input [3:0] i198;
  input [3:0] i199;
  input [3:0] i2;
  input [3:0] i20;
  input [3:0] i200;
  input [3:0] i201;
  input [3:0] i202;
  input [3:0] i203;
  input [3:0] i204;
  input [3:0] i205;
  input [3:0] i206;
  input [3:0] i207;
  input [3:0] i208;
  input [3:0] i209;
  input [3:0] i21;
  input [3:0] i210;
  input [3:0] i211;
  input [3:0] i212;
  input [3:0] i213;
  input [3:0] i214;
  input [3:0] i215;
  input [3:0] i216;
  input [3:0] i217;
  input [3:0] i218;
  input [3:0] i219;
  input [3:0] i22;
  input [3:0] i220;
  input [3:0] i221;
  input [3:0] i222;
  input [3:0] i223;
  input [3:0] i224;
  input [3:0] i225;
  input [3:0] i226;
  input [3:0] i227;
  input [3:0] i228;
  input [3:0] i229;
  input [3:0] i23;
  input [3:0] i230;
  input [3:0] i231;
  input [3:0] i232;
  input [3:0] i233;
  input [3:0] i234;
  input [3:0] i235;
  input [3:0] i236;
  input [3:0] i237;
  input [3:0] i238;
  input [3:0] i239;
  input [3:0] i24;
  input [3:0] i240;
  input [3:0] i241;
  input [3:0] i242;
  input [3:0] i243;
  input [3:0] i244;
  input [3:0] i245;
  input [3:0] i246;
  input [3:0] i247;
  input [3:0] i248;
  input [3:0] i249;
  input [3:0] i25;
  input [3:0] i250;
  input [3:0] i251;
  input [3:0] i252;
  input [3:0] i253;
  input [3:0] i254;
  input [3:0] i255;
  input [3:0] i26;
  input [3:0] i27;
  input [3:0] i28;
  input [3:0] i29;
  input [3:0] i3;
  input [3:0] i30;
  input [3:0] i31;
  input [3:0] i32;
  input [3:0] i33;
  input [3:0] i34;
  input [3:0] i35;
  input [3:0] i36;
  input [3:0] i37;
  input [3:0] i38;
  input [3:0] i39;
  input [3:0] i4;
  input [3:0] i40;
  input [3:0] i41;
  input [3:0] i42;
  input [3:0] i43;
  input [3:0] i44;
  input [3:0] i45;
  input [3:0] i46;
  input [3:0] i47;
  input [3:0] i48;
  input [3:0] i49;
  input [3:0] i5;
  input [3:0] i50;
  input [3:0] i51;
  input [3:0] i52;
  input [3:0] i53;
  input [3:0] i54;
  input [3:0] i55;
  input [3:0] i56;
  input [3:0] i57;
  input [3:0] i58;
  input [3:0] i59;
  input [3:0] i6;
  input [3:0] i60;
  input [3:0] i61;
  input [3:0] i62;
  input [3:0] i63;
  input [3:0] i64;
  input [3:0] i65;
  input [3:0] i66;
  input [3:0] i67;
  input [3:0] i68;
  input [3:0] i69;
  input [3:0] i7;
  input [3:0] i70;
  input [3:0] i71;
  input [3:0] i72;
  input [3:0] i73;
  input [3:0] i74;
  input [3:0] i75;
  input [3:0] i76;
  input [3:0] i77;
  input [3:0] i78;
  input [3:0] i79;
  input [3:0] i8;
  input [3:0] i80;
  input [3:0] i81;
  input [3:0] i82;
  input [3:0] i83;
  input [3:0] i84;
  input [3:0] i85;
  input [3:0] i86;
  input [3:0] i87;
  input [3:0] i88;
  input [3:0] i89;
  input [3:0] i9;
  input [3:0] i90;
  input [3:0] i91;
  input [3:0] i92;
  input [3:0] i93;
  input [3:0] i94;
  input [3:0] i95;
  input [3:0] i96;
  input [3:0] i97;
  input [3:0] i98;
  input [3:0] i99;
  input [7:0] sel;
  output [3:0] o;



endmodule 

module binary_mux_s3_w81
  (
  i0,
  i1,
  i2,
  i3,
  i4,
  i5,
  i6,
  i7,
  sel,
  o
  );

  input [80:0] i0;
  input [80:0] i1;
  input [80:0] i2;
  input [80:0] i3;
  input [80:0] i4;
  input [80:0] i5;
  input [80:0] i6;
  input [80:0] i7;
  input [2:0] sel;
  output [80:0] o;



endmodule 

module binary_mux_s8_w6
  (
  i0,
  i1,
  i10,
  i100,
  i101,
  i102,
  i103,
  i104,
  i105,
  i106,
  i107,
  i108,
  i109,
  i11,
  i110,
  i111,
  i112,
  i113,
  i114,
  i115,
  i116,
  i117,
  i118,
  i119,
  i12,
  i120,
  i121,
  i122,
  i123,
  i124,
  i125,
  i126,
  i127,
  i128,
  i129,
  i13,
  i130,
  i131,
  i132,
  i133,
  i134,
  i135,
  i136,
  i137,
  i138,
  i139,
  i14,
  i140,
  i141,
  i142,
  i143,
  i144,
  i145,
  i146,
  i147,
  i148,
  i149,
  i15,
  i150,
  i151,
  i152,
  i153,
  i154,
  i155,
  i156,
  i157,
  i158,
  i159,
  i16,
  i160,
  i161,
  i162,
  i163,
  i164,
  i165,
  i166,
  i167,
  i168,
  i169,
  i17,
  i170,
  i171,
  i172,
  i173,
  i174,
  i175,
  i176,
  i177,
  i178,
  i179,
  i18,
  i180,
  i181,
  i182,
  i183,
  i184,
  i185,
  i186,
  i187,
  i188,
  i189,
  i19,
  i190,
  i191,
  i192,
  i193,
  i194,
  i195,
  i196,
  i197,
  i198,
  i199,
  i2,
  i20,
  i200,
  i201,
  i202,
  i203,
  i204,
  i205,
  i206,
  i207,
  i208,
  i209,
  i21,
  i210,
  i211,
  i212,
  i213,
  i214,
  i215,
  i216,
  i217,
  i218,
  i219,
  i22,
  i220,
  i221,
  i222,
  i223,
  i224,
  i225,
  i226,
  i227,
  i228,
  i229,
  i23,
  i230,
  i231,
  i232,
  i233,
  i234,
  i235,
  i236,
  i237,
  i238,
  i239,
  i24,
  i240,
  i241,
  i242,
  i243,
  i244,
  i245,
  i246,
  i247,
  i248,
  i249,
  i25,
  i250,
  i251,
  i252,
  i253,
  i254,
  i255,
  i26,
  i27,
  i28,
  i29,
  i3,
  i30,
  i31,
  i32,
  i33,
  i34,
  i35,
  i36,
  i37,
  i38,
  i39,
  i4,
  i40,
  i41,
  i42,
  i43,
  i44,
  i45,
  i46,
  i47,
  i48,
  i49,
  i5,
  i50,
  i51,
  i52,
  i53,
  i54,
  i55,
  i56,
  i57,
  i58,
  i59,
  i6,
  i60,
  i61,
  i62,
  i63,
  i64,
  i65,
  i66,
  i67,
  i68,
  i69,
  i7,
  i70,
  i71,
  i72,
  i73,
  i74,
  i75,
  i76,
  i77,
  i78,
  i79,
  i8,
  i80,
  i81,
  i82,
  i83,
  i84,
  i85,
  i86,
  i87,
  i88,
  i89,
  i9,
  i90,
  i91,
  i92,
  i93,
  i94,
  i95,
  i96,
  i97,
  i98,
  i99,
  sel,
  o
  );

  input [5:0] i0;
  input [5:0] i1;
  input [5:0] i10;
  input [5:0] i100;
  input [5:0] i101;
  input [5:0] i102;
  input [5:0] i103;
  input [5:0] i104;
  input [5:0] i105;
  input [5:0] i106;
  input [5:0] i107;
  input [5:0] i108;
  input [5:0] i109;
  input [5:0] i11;
  input [5:0] i110;
  input [5:0] i111;
  input [5:0] i112;
  input [5:0] i113;
  input [5:0] i114;
  input [5:0] i115;
  input [5:0] i116;
  input [5:0] i117;
  input [5:0] i118;
  input [5:0] i119;
  input [5:0] i12;
  input [5:0] i120;
  input [5:0] i121;
  input [5:0] i122;
  input [5:0] i123;
  input [5:0] i124;
  input [5:0] i125;
  input [5:0] i126;
  input [5:0] i127;
  input [5:0] i128;
  input [5:0] i129;
  input [5:0] i13;
  input [5:0] i130;
  input [5:0] i131;
  input [5:0] i132;
  input [5:0] i133;
  input [5:0] i134;
  input [5:0] i135;
  input [5:0] i136;
  input [5:0] i137;
  input [5:0] i138;
  input [5:0] i139;
  input [5:0] i14;
  input [5:0] i140;
  input [5:0] i141;
  input [5:0] i142;
  input [5:0] i143;
  input [5:0] i144;
  input [5:0] i145;
  input [5:0] i146;
  input [5:0] i147;
  input [5:0] i148;
  input [5:0] i149;
  input [5:0] i15;
  input [5:0] i150;
  input [5:0] i151;
  input [5:0] i152;
  input [5:0] i153;
  input [5:0] i154;
  input [5:0] i155;
  input [5:0] i156;
  input [5:0] i157;
  input [5:0] i158;
  input [5:0] i159;
  input [5:0] i16;
  input [5:0] i160;
  input [5:0] i161;
  input [5:0] i162;
  input [5:0] i163;
  input [5:0] i164;
  input [5:0] i165;
  input [5:0] i166;
  input [5:0] i167;
  input [5:0] i168;
  input [5:0] i169;
  input [5:0] i17;
  input [5:0] i170;
  input [5:0] i171;
  input [5:0] i172;
  input [5:0] i173;
  input [5:0] i174;
  input [5:0] i175;
  input [5:0] i176;
  input [5:0] i177;
  input [5:0] i178;
  input [5:0] i179;
  input [5:0] i18;
  input [5:0] i180;
  input [5:0] i181;
  input [5:0] i182;
  input [5:0] i183;
  input [5:0] i184;
  input [5:0] i185;
  input [5:0] i186;
  input [5:0] i187;
  input [5:0] i188;
  input [5:0] i189;
  input [5:0] i19;
  input [5:0] i190;
  input [5:0] i191;
  input [5:0] i192;
  input [5:0] i193;
  input [5:0] i194;
  input [5:0] i195;
  input [5:0] i196;
  input [5:0] i197;
  input [5:0] i198;
  input [5:0] i199;
  input [5:0] i2;
  input [5:0] i20;
  input [5:0] i200;
  input [5:0] i201;
  input [5:0] i202;
  input [5:0] i203;
  input [5:0] i204;
  input [5:0] i205;
  input [5:0] i206;
  input [5:0] i207;
  input [5:0] i208;
  input [5:0] i209;
  input [5:0] i21;
  input [5:0] i210;
  input [5:0] i211;
  input [5:0] i212;
  input [5:0] i213;
  input [5:0] i214;
  input [5:0] i215;
  input [5:0] i216;
  input [5:0] i217;
  input [5:0] i218;
  input [5:0] i219;
  input [5:0] i22;
  input [5:0] i220;
  input [5:0] i221;
  input [5:0] i222;
  input [5:0] i223;
  input [5:0] i224;
  input [5:0] i225;
  input [5:0] i226;
  input [5:0] i227;
  input [5:0] i228;
  input [5:0] i229;
  input [5:0] i23;
  input [5:0] i230;
  input [5:0] i231;
  input [5:0] i232;
  input [5:0] i233;
  input [5:0] i234;
  input [5:0] i235;
  input [5:0] i236;
  input [5:0] i237;
  input [5:0] i238;
  input [5:0] i239;
  input [5:0] i24;
  input [5:0] i240;
  input [5:0] i241;
  input [5:0] i242;
  input [5:0] i243;
  input [5:0] i244;
  input [5:0] i245;
  input [5:0] i246;
  input [5:0] i247;
  input [5:0] i248;
  input [5:0] i249;
  input [5:0] i25;
  input [5:0] i250;
  input [5:0] i251;
  input [5:0] i252;
  input [5:0] i253;
  input [5:0] i254;
  input [5:0] i255;
  input [5:0] i26;
  input [5:0] i27;
  input [5:0] i28;
  input [5:0] i29;
  input [5:0] i3;
  input [5:0] i30;
  input [5:0] i31;
  input [5:0] i32;
  input [5:0] i33;
  input [5:0] i34;
  input [5:0] i35;
  input [5:0] i36;
  input [5:0] i37;
  input [5:0] i38;
  input [5:0] i39;
  input [5:0] i4;
  input [5:0] i40;
  input [5:0] i41;
  input [5:0] i42;
  input [5:0] i43;
  input [5:0] i44;
  input [5:0] i45;
  input [5:0] i46;
  input [5:0] i47;
  input [5:0] i48;
  input [5:0] i49;
  input [5:0] i5;
  input [5:0] i50;
  input [5:0] i51;
  input [5:0] i52;
  input [5:0] i53;
  input [5:0] i54;
  input [5:0] i55;
  input [5:0] i56;
  input [5:0] i57;
  input [5:0] i58;
  input [5:0] i59;
  input [5:0] i6;
  input [5:0] i60;
  input [5:0] i61;
  input [5:0] i62;
  input [5:0] i63;
  input [5:0] i64;
  input [5:0] i65;
  input [5:0] i66;
  input [5:0] i67;
  input [5:0] i68;
  input [5:0] i69;
  input [5:0] i7;
  input [5:0] i70;
  input [5:0] i71;
  input [5:0] i72;
  input [5:0] i73;
  input [5:0] i74;
  input [5:0] i75;
  input [5:0] i76;
  input [5:0] i77;
  input [5:0] i78;
  input [5:0] i79;
  input [5:0] i8;
  input [5:0] i80;
  input [5:0] i81;
  input [5:0] i82;
  input [5:0] i83;
  input [5:0] i84;
  input [5:0] i85;
  input [5:0] i86;
  input [5:0] i87;
  input [5:0] i88;
  input [5:0] i89;
  input [5:0] i9;
  input [5:0] i90;
  input [5:0] i91;
  input [5:0] i92;
  input [5:0] i93;
  input [5:0] i94;
  input [5:0] i95;
  input [5:0] i96;
  input [5:0] i97;
  input [5:0] i98;
  input [5:0] i99;
  input [7:0] sel;
  output [5:0] o;



endmodule 

module binary_mux_s3_w53
  (
  i0,
  i1,
  i2,
  i3,
  i4,
  i5,
  i6,
  i7,
  sel,
  o
  );

  input [52:0] i0;
  input [52:0] i1;
  input [52:0] i2;
  input [52:0] i3;
  input [52:0] i4;
  input [52:0] i5;
  input [52:0] i6;
  input [52:0] i7;
  input [2:0] sel;
  output [52:0] o;



endmodule 

module binary_mux_s3_w82
  (
  i0,
  i1,
  i2,
  i3,
  i4,
  i5,
  i6,
  i7,
  sel,
  o
  );

  input [81:0] i0;
  input [81:0] i1;
  input [81:0] i2;
  input [81:0] i3;
  input [81:0] i4;
  input [81:0] i5;
  input [81:0] i6;
  input [81:0] i7;
  input [2:0] sel;
  output [81:0] o;



endmodule 

module binary_mux_s3_w36
  (
  i0,
  i1,
  i2,
  i3,
  i4,
  i5,
  i6,
  i7,
  sel,
  o
  );

  input [35:0] i0;
  input [35:0] i1;
  input [35:0] i2;
  input [35:0] i3;
  input [35:0] i4;
  input [35:0] i5;
  input [35:0] i6;
  input [35:0] i7;
  input [2:0] sel;
  output [35:0] o;



endmodule 

module AL_DFF
  (
  input reset,
  input set,
  input clk,
  input d,
  output reg q
  );

  parameter INI = 1'b0;

  always @(posedge reset or posedge set or posedge clk)
  begin
    if (reset)
      q <= 1'b0;
    else if (set)
      q <= 1'b1;
    else
      q <= d;
  end

endmodule

module AL_MUX
  (
  input i0,
  input i1,
  input sel,
  output o
  );

  wire not_sel, sel_i0, sel_i1;
  not u0 (not_sel, sel);
  and u1 (sel_i1, sel, i1);
  and u2 (sel_i0, not_sel, i0);
  or u3 (o, sel_i1, sel_i0);

endmodule

module AL_LATCH
  (
  input reset,
  input set,
  input clk,
  input d,
  output reg q
  );

  always @(reset or set or clk or d)
  begin
    if (reset)
      q <= 1'b0;
    else if (set)
      q <= 1'b1;
    else if (clk)
      q <= d;
  end

endmodule

