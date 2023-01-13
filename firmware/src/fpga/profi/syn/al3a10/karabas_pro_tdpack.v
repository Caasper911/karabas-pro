// Verilog netlist created by TD v4.6.18154
// Fri Jan 13 13:44:45 2023

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
  wire [2:0] \G_UNO_UART$U22/uartchip/receiver/bitcnt ;  // ../../rtl/uart/uart.v(192)
  wire [17:0] \G_UNO_UART$U22/uartchip/receiver/bpscounter ;  // ../../rtl/uart/uart.v(190)
  wire [2:0] \G_UNO_UART$U22/uartchip/receiver/n17 ;
  wire [17:0] \G_UNO_UART$U22/uartchip/receiver/n3 ;
  wire [1:0] \G_UNO_UART$U22/uartchip/receiver/rx_ff ;  // ../../rtl/uart/uart.v(175)
  wire [7:0] \G_UNO_UART$U22/uartchip/receiver/rxvalues ;  // ../../rtl/uart/uart.v(182)
  wire [2:0] \G_UNO_UART$U22/uartchip/receiver/state ;  // ../../rtl/uart/uart.v(191)
  wire [2:0] \G_UNO_UART$U22/uartchip/transmitter/bitcnt ;  // ../../rtl/uart/uart.v(88)
  wire [17:0] \G_UNO_UART$U22/uartchip/transmitter/bpscounter ;  // ../../rtl/uart/uart.v(87)
  wire [17:0] \G_UNO_UART$U22/uartchip/transmitter/n10 ;
  wire [1:0] \G_UNO_UART$U22/uartchip/transmitter/state ;  // ../../rtl/uart/uart.v(86)
  wire [4:0] \U1/clkc_wire ;  // al_ip/altpll0.vhd(38)
  wire [5:0] \U15/U_SPI/n15 ;
  wire [23:0] \U15/U_SPI/sh_reg ;  // ../../rtl/spi/spi_slave.vhd(172)
  wire [23:0] \U15/spi_do ;  // ../../rtl/avr/avr.vhd(108)
  wire [4:0] \U2/clkc_wire ;  // al_ip/altpll1.vhd(46)
  wire [7:0] \U7/U_PENT/attr ;  // ../../rtl/video/pentagon_video.vhd(55)
  wire [7:0] \U7/U_PENT/bitmap ;  // ../../rtl/video/pentagon_video.vhd(56)
  wire [4:0] \U7/U_PENT/invert ;  // ../../rtl/video/pentagon_video.vhd(46)
  wire [5:0] \U7/U_PENT/n26 ;
  wire [5:0] \U7/U_PENT/n3 ;
  wire [2:0] \U7/U_PENT/n31 ;
  wire [7:0] \U7/U_PENT/shift_r ;  // ../../rtl/video/pentagon_video.vhd(62)
  wire [7:0] \U7/attr_o_spec ;  // ../../rtl/video/video.vhd(105)
  wire [9:0] \U7/hcnt_spec ;  // ../../rtl/video/video.vhd(107)
  wire [8:0] \U7/palette_grb ;  // ../../rtl/video/video.vhd(77)
  wire [2:0] \U7/rgb_spec ;  // ../../rtl/video/video.vhd(100)
  wire [8:0] \U7/vcnt_spec ;  // ../../rtl/video/video.vhd(108)
  wire [13:0] \U7/vid_a_spec ;  // ../../rtl/video/video.vhd(98)
  wire [20:0] \U8/U_ICONS/cnt_icon_cf ;  // ../../rtl/video/icons.vhd(57)
  wire [20:0] \U8/U_ICONS/cnt_icon_fd ;  // ../../rtl/video/icons.vhd(55)
  wire [20:0] \U8/U_ICONS/cnt_icon_sd ;  // ../../rtl/video/icons.vhd(56)
  wire [0:0] \U8/U_ICONS/icon_pixel ;  // ../../rtl/video/icons.vhd(36)
  wire [2:0] \U8/U_ICONS/icon_pos ;  // ../../rtl/video/icons.vhd(53)
  wire [20:0] \U8/U_ICONS/n23 ;
  wire [20:0] \U8/U_ICONS/n26 ;
  wire [20:0] \U8/U_ICONS/n29 ;
  wire [9:0] \U8/addr_read ;  // ../../rtl/video/overlay.vhd(48)
  wire [9:0] \U8/addr_write ;  // ../../rtl/video/overlay.vhd(49)
  wire [7:0] \U8/attr ;  // ../../rtl/video/overlay.vhd(35)
  wire [7:0] \U8/attr2 ;  // ../../rtl/video/overlay.vhd(35)
  wire [7:0] \U8/char_buf ;  // ../../rtl/video/overlay.vhd(61)
  wire [7:0] \U8/font_word ;  // ../../rtl/video/overlay.vhd(43)
  wire [15:0] \U8/last_osd_command ;  // ../../rtl/video/overlay.vhd(60)
  wire [10:0] \U8/rom_addr ;  // ../../rtl/video/overlay.vhd(40)
  wire [15:0] \U8/vram_di ;  // ../../rtl/video/overlay.vhd(50)
  wire [15:0] \U8/vram_do ;  // ../../rtl/video/overlay.vhd(51)
  wire [8:0] \U9/RGB ;  // ../../rtl/video/vga_pal.vhd(59)
  wire [8:0] \U9/VGA_H ;  // ../../rtl/video/vga_pal.vhd(79)
  wire [9:0] \U9/VGA_V ;  // ../../rtl/video/vga_pal.vhd(95)
  wire [9:0] \U9/VIDEO_H ;  // ../../rtl/video/vga_pal.vhd(106)
  wire [8:0] \U9/VIDEO_V ;  // ../../rtl/video/vga_pal.vhd(116)
  wire [0:0] \U9/n40_piped ;
  wire [8:0] \U9/n48 ;
  wire [1:0] kb_screen_mode;  // ../../rtl/karabas_pro.vhd(182)
  wire [15:0] osd_command;  // ../../rtl/karabas_pro.vhd(218)
  wire [1:10] soft_sw;  // ../../rtl/karabas_pro.vhd(447)
  wire [7:0] vid_do_bus;  // ../../rtl/karabas_pro.vhd(200)
  wire [8:0] vid_rgb_osd;  // ../../rtl/karabas_pro.vhd(207)
  wire AVR_NCS_pad;  // ../../rtl/karabas_pro.vhd(70)
  wire AVR_SCK_pad;  // ../../rtl/karabas_pro.vhd(67)
  wire CLK_50MHZ_pad;  // ../../rtl/karabas_pro.vhd(41)
  wire \G_UNO_UART$U22/txbusy ;  // ../../rtl/uart/zxunouart.v(41)
  wire \G_UNO_UART$U22/uartchip/receiver/sub1/c11 ;
  wire \G_UNO_UART$U22/uartchip/receiver/sub1/c15 ;
  wire \G_UNO_UART$U22/uartchip/receiver/sub1/c3 ;
  wire \G_UNO_UART$U22/uartchip/receiver/sub1/c7 ;
  wire \G_UNO_UART$U22/uartchip/receiver/u10_sel_is_3_o ;
  wire \G_UNO_UART$U22/uartchip/receiver/u18_sel_is_3_o ;
  wire \G_UNO_UART$U22/uartchip/transmitter/mux14_b0_sel_is_1_o ;
  wire \G_UNO_UART$U22/uartchip/transmitter/sub0/c11 ;
  wire \G_UNO_UART$U22/uartchip/transmitter/sub0/c15 ;
  wire \G_UNO_UART$U22/uartchip/transmitter/sub0/c3 ;
  wire \G_UNO_UART$U22/uartchip/transmitter/sub0/c7 ;
  wire \U15/U_SPI/do_transfer_o ;  // ../../rtl/spi/spi_slave.vhd(138)
  wire \U15/U_SPI/do_valid_A ;  // ../../rtl/spi/spi_slave.vhd(191)
  wire \U15/U_SPI/do_valid_B ;  // ../../rtl/spi/spi_slave.vhd(192)
  wire \U15/U_SPI/do_valid_C ;  // ../../rtl/spi/spi_slave.vhd(193)
  wire \U15/U_SPI/do_valid_D ;  // ../../rtl/spi/spi_slave.vhd(194)
  wire \U15/U_SPI/n22_lutinv ;
  wire \U15/U_SPI/n25 ;
  wire \U15/U_SPI/n26_lutinv ;
  wire \U15/U_SPI/n27_lutinv ;
  wire \U15/U_SPI/n5_lutinv ;
  wire \U15/U_SPI/rx_bit_reg_o ;  // ../../rtl/spi/spi_slave.vhd(141)
  wire \U15/U_SPI/state_dbg_o[0] ;  // ../../rtl/spi/spi_slave.vhd(142)
  wire \U15/U_SPI/state_dbg_o[1] ;  // ../../rtl/spi/spi_slave.vhd(142)
  wire \U15/U_SPI/state_dbg_o[2] ;  // ../../rtl/spi/spi_slave.vhd(142)
  wire \U15/U_SPI/state_dbg_o[3] ;  // ../../rtl/spi/spi_slave.vhd(142)
  wire \U15/U_SPI/state_dbg_o[4] ;  // ../../rtl/spi/spi_slave.vhd(142)
  wire \U15/U_SPI/sub0/c1 ;
  wire \U15/U_SPI/sub0/c3 ;
  wire \U15/mux13_b0_sel_is_3_o ;
  wire \U15/mux2_b0_sel_is_3_o ;
  wire \U15/mux3_b1_sel_is_3_o ;
  wire \U15/n1 ;
  wire \U15/n37_lutinv ;
  wire \U15/spi_do_valid ;  // ../../rtl/avr/avr.vhd(106)
  wire \U15/spi_miso ;  // ../../rtl/avr/avr.vhd(110)
  wire \U7/U_PENT/add0/c1 ;
  wire \U7/U_PENT/add0/c3 ;
  wire \U7/U_PENT/add0/c5 ;
  wire \U7/U_PENT/add1/c1 ;
  wire \U7/U_PENT/add1/c3 ;
  wire \U7/U_PENT/add2/c1 ;
  wire \U7/U_PENT/add2/c3 ;
  wire \U7/U_PENT/add2/c5 ;
  wire \U7/U_PENT/mux13_b0_sel_is_3_o ;
  wire \U7/U_PENT/mux14_b0_sel_is_3_o ;
  wire \U7/U_PENT/mux15_b0_sel_is_3_o ;
  wire \U7/U_PENT/mux21_b0_sel_is_3_o ;
  wire \U7/U_PENT/mux22_b0_sel_is_3_o ;
  wire \U7/U_PENT/mux27_b0_sel_is_3_o ;
  wire \U7/U_PENT/mux28_b0_sel_is_3_o ;
  wire \U7/U_PENT/n108_lutinv ;
  wire \U7/U_PENT/n2_lutinv ;
  wire \U7/U_PENT/paper ;  // ../../rtl/video/pentagon_video.vhd(65)
  wire \U7/U_PENT/paper_r ;  // ../../rtl/video/pentagon_video.vhd(58)
  wire \U7/hsync_spec ;  // ../../rtl/video/video.vhd(102)
  wire \U7/i_spec ;  // ../../rtl/video/video.vhd(101)
  wire \U7/vsync_spec ;  // ../../rtl/video/video.vhd(103)
  wire \U8/U_ICONS/add0/c11 ;
  wire \U8/U_ICONS/add0/c15 ;
  wire \U8/U_ICONS/add0/c19 ;
  wire \U8/U_ICONS/add0/c3 ;
  wire \U8/U_ICONS/add0/c7 ;
  wire \U8/U_ICONS/add1/c11 ;
  wire \U8/U_ICONS/add1/c15 ;
  wire \U8/U_ICONS/add1/c19 ;
  wire \U8/U_ICONS/add1/c3 ;
  wire \U8/U_ICONS/add1/c7 ;
  wire \U8/U_ICONS/add2/c11 ;
  wire \U8/U_ICONS/add2/c15 ;
  wire \U8/U_ICONS/add2/c19 ;
  wire \U8/U_ICONS/add2/c3 ;
  wire \U8/U_ICONS/add2/c7 ;
  wire \U8/U_ICONS/n35 ;
  wire \U8/U_ICONS/n37 ;
  wire \U8/U_ICONS/n38 ;
  wire \U8/U_ICONS/n40 ;
  wire \U8/char_x[1]_neg_lutinv ;
  wire \U8/mux18_b1_sel_is_2_o ;
  wire \U8/mux19_b0_sel_is_0_o ;
  wire \U8/mux22_b0_sel_is_3_o ;
  wire \U8/mux22_b5_sel_is_3_o ;
  wire \U8/mux23_b0_sel_is_3_o ;
  wire \U8/mux24_b0_sel_is_3_o ;
  wire \U8/mux5_b0_sel_is_30_o ;
  wire \U8/mux7_b0_sel_is_0_o ;
  wire \U8/mux9_b0_sel_is_14_o ;
  wire \U8/n21_lutinv ;
  wire \U8/n23_lutinv ;
  wire \U8/n26 ;
  wire \U8/n46_lutinv ;
  wire \U8/n63 ;
  wire \U8/n74 ;
  wire \U8/n78 ;
  wire \U8/paper ;  // ../../rtl/video/overlay.vhd(62)
  wire \U8/pixel ;  // ../../rtl/video/overlay.vhd(45)
  wire \U8/pixel_reg_al_n0 ;  // ../../rtl/video/overlay.vhd(46)
  wire \U8/vram_wr ;  // ../../rtl/video/overlay.vhd(52)
  wire \U9/KSI ;  // ../../rtl/video/vga_pal.vhd(62)
  wire \U9/KSI_2 ;  // ../../rtl/video/vga_pal.vhd(70)
  wire \U9/LINEBUF/inst_dob_i0_000 ;
  wire \U9/LINEBUF/inst_dob_i0_001 ;
  wire \U9/LINEBUF/inst_dob_i0_002 ;
  wire \U9/LINEBUF/inst_dob_i0_003 ;
  wire \U9/LINEBUF/inst_dob_i0_004 ;
  wire \U9/LINEBUF/inst_dob_i0_005 ;
  wire \U9/LINEBUF/inst_dob_i0_006 ;
  wire \U9/LINEBUF/inst_dob_i0_007 ;
  wire \U9/LINEBUF/inst_dob_i0_008 ;
  wire \U9/LINEBUF/inst_dob_i1_000 ;
  wire \U9/LINEBUF/inst_dob_i1_001 ;
  wire \U9/LINEBUF/inst_dob_i1_002 ;
  wire \U9/LINEBUF/inst_dob_i1_003 ;
  wire \U9/LINEBUF/inst_dob_i1_004 ;
  wire \U9/LINEBUF/inst_dob_i1_005 ;
  wire \U9/LINEBUF/inst_dob_i1_006 ;
  wire \U9/LINEBUF/inst_dob_i1_007 ;
  wire \U9/LINEBUF/inst_dob_i1_008 ;
  wire \U9/RESET_V ;  // ../../rtl/video/vga_pal.vhd(142)
  wire \U9/SSI ;  // ../../rtl/video/vga_pal.vhd(63)
  wire \U9/SSI_2 ;  // ../../rtl/video/vga_pal.vhd(71)
  wire \U9/VGA_BLANK ;  // ../../rtl/video/vga_pal.vhd(150)
  wire \U9/VGA_H0 ;  // ../../rtl/video/vga_pal.vhd(90)
  wire \U9/VGA_KGI_lutinv ;  // ../../rtl/video/vga_pal.vhd(148)
  wire \U9/VGA_V_CLK ;  // ../../rtl/video/vga_pal.vhd(94)
  wire \U9/VIDEO_V[0]_neg ;
  wire \U9/VIDEO_V_CLK ;  // ../../rtl/video/vga_pal.vhd(115)
  wire \U9/add0/c1 ;
  wire \U9/add0/c3 ;
  wire \U9/add0/c5 ;
  wire \U9/add0/c7 ;
  wire \U9/add1/c1 ;
  wire \U9/add1/c3 ;
  wire \U9/add1/c5 ;
  wire \U9/add1/c7 ;
  wire \U9/add1/c9 ;
  wire \U9/add2/c1 ;
  wire \U9/add2/c3 ;
  wire \U9/add2/c5 ;
  wire \U9/add2/c7 ;
  wire \U9/add2/c9 ;
  wire \U9/add3/c1 ;
  wire \U9/add3/c3 ;
  wire \U9/add3/c5 ;
  wire \U9/add3/c7 ;
  wire \U9/lt1_2/o_4_lutinv ;
  wire \U9/lt4_2/o_5_lutinv ;
  wire \U9/mux2_b0_sel_is_0_o ;
  wire \U9/mux3_b0_sel_is_0_o ;
  wire \U9/n45 ;
  wire \U9/n46 ;
  wire UART_CTS_pad;  // ../../rtl/karabas_pro.vhd(104)
  wire UART_TX_pad;  // ../../rtl/karabas_pro.vhd(103)
  wire _al_u1869_o;
  wire _al_u1870_o;
  wire _al_u1871_o;
  wire _al_u1872_o;
  wire _al_u1873_o;
  wire _al_u1874_o;
  wire _al_u1875_o;
  wire _al_u1876_o;
  wire _al_u1877_o;
  wire _al_u1878_o;
  wire _al_u1879_o;
  wire _al_u1880_o;
  wire _al_u1893_o;
  wire _al_u1909_o;
  wire _al_u1920_o;
  wire _al_u1931_o;
  wire _al_u1932_o;
  wire _al_u1934_o;
  wire _al_u1935_o;
  wire _al_u1941_o;
  wire _al_u1949_o;
  wire _al_u1950_o;
  wire _al_u1951_o;
  wire _al_u1952_o;
  wire _al_u1953_o;
  wire _al_u1973_o;
  wire _al_u1974_o;
  wire _al_u1976_o;
  wire _al_u1980_o;
  wire _al_u1981_o;
  wire _al_u1982_o;
  wire _al_u1984_o;
  wire _al_u1985_o;
  wire _al_u1988_o;
  wire _al_u2001_o;
  wire _al_u2002_o;
  wire _al_u2003_o;
  wire _al_u2004_o;
  wire _al_u2005_o;
  wire _al_u2006_o;
  wire _al_u2013_o;
  wire _al_u2014_o;
  wire _al_u2015_o;
  wire _al_u2016_o;
  wire _al_u2017_o;
  wire _al_u2018_o;
  wire _al_u2040_o;
  wire _al_u2041_o;
  wire _al_u2042_o;
  wire _al_u2043_o;
  wire _al_u2044_o;
  wire _al_u2045_o;
  wire _al_u2067_o;
  wire _al_u2068_o;
  wire _al_u2069_o;
  wire _al_u2070_o;
  wire _al_u2071_o;
  wire _al_u2072_o;
  wire _al_u2095_o;
  wire _al_u2098_o;
  wire _al_u2099_o;
  wire _al_u2102_o;
  wire _al_u2103_o;
  wire _al_u2105_o;
  wire _al_u2106_o;
  wire _al_u2107_o;
  wire _al_u2108_o;
  wire _al_u2109_o;
  wire _al_u2110_o;
  wire _al_u2111_o;
  wire _al_u2112_o;
  wire _al_u2113_o;
  wire _al_u2115_o;
  wire _al_u2117_o;
  wire _al_u2118_o;
  wire _al_u2119_o;
  wire _al_u2121_o;
  wire _al_u2122_o;
  wire _al_u2124_o;
  wire _al_u2127_o;
  wire _al_u2128_o;
  wire _al_u2129_o;
  wire _al_u2130_o;
  wire _al_u2132_o;
  wire _al_u2133_o;
  wire _al_u2136_o;
  wire _al_u2137_o;
  wire _al_u2141_o;
  wire _al_u2143_o;
  wire _al_u2145_o;
  wire _al_u2157_o;
  wire _al_u2164_o;
  wire _al_u2166_o;
  wire _al_u2168_o;
  wire _al_u2170_o;
  wire _al_u2173_o;
  wire _al_u2175_o;
  wire _al_u2177_o;
  wire _al_u2180_o;
  wire _al_u2181_o;
  wire _al_u2182_o;
  wire _al_u2184_o;
  wire _al_u2185_o;
  wire _al_u2186_o;
  wire _al_u2188_o;
  wire _al_u2215_o;
  wire _al_u2216_o;
  wire _al_u2222_o;
  wire _al_u2223_o;
  wire _al_u2224_o;
  wire _al_u2225_o;
  wire _al_u2232_o;
  wire _al_u2233_o;
  wire _al_u2234_o;
  wire _al_u2236_o;
  wire _al_u2238_o;
  wire _al_u2240_o;
  wire _al_u2242_o;
  wire _al_u2243_o;
  wire _al_u2245_o;
  wire _al_u2247_o;
  wire _al_u2248_o;
  wire _al_u2250_o;
  wire _al_u2252_o;
  wire _al_u2254_o;
  wire _al_u2256_o;
  wire _al_u2258_o;
  wire _al_u2260_o;
  wire _al_u2262_o;
  wire _al_u2264_o;
  wire blink;  // ../../rtl/karabas_pro.vhd(213)
  wire clk_112;  // ../../rtl/karabas_pro.vhd(315)
  wire clk_28;  // ../../rtl/karabas_pro.vhd(318)
  wire clk_8;  // ../../rtl/karabas_pro.vhd(320)
  wire clk_84;  // ../../rtl/karabas_pro.vhd(316)
  wire clk_div2;  // ../../rtl/karabas_pro.vhd(323)
  wire clk_div4;  // ../../rtl/karabas_pro.vhd(324)
  wire \net_U8/U_ICONS/reg3_b0_reset_q ;
  wire \net_U8/U_ICONS/reg3_b0_sel ;
  wire \net_U8/U_ICONS/reg3_b1_reset_q ;
  wire \net_U8/U_ICONS/reg3_b1_sel ;
  wire osd_overlay;  // ../../rtl/karabas_pro.vhd(216)
  wire osd_popup;  // ../../rtl/karabas_pro.vhd(217)
  wire vid_rd;  // ../../rtl/karabas_pro.vhd(353)

  // ../../rtl/uart/uart.v(185)
  // ../../rtl/uart/uart.v(185)
  AL_PHY_LSLICE #(
    //.LUTF0("(0*D*C*B*A)"),
    //.LUTF1("(~D*~C*~B*~A)"),
    //.LUTG0("(1*D*C*B*A)"),
    //.LUTG1("(~D*~C*~B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b0000000000000001),
    .INIT_LUTG0(16'b1000000000000000),
    .INIT_LUTG1(16'b0000000000000001),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \G_UNO_UART$U22/uartchip/receiver/reg0_b1|G_UNO_UART$U22/uartchip/receiver/reg0_b0  (
    .a({\G_UNO_UART$U22/uartchip/receiver/rxvalues [0],_al_u2107_o}),
    .b(\G_UNO_UART$U22/uartchip/receiver/rxvalues [1:0]),
    .c(\G_UNO_UART$U22/uartchip/receiver/rxvalues [2:1]),
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/receiver/rxvalues [3:2]),
    .e({open_n1,\G_UNO_UART$U22/uartchip/receiver/rxvalues [3]}),
    .mi({\G_UNO_UART$U22/uartchip/receiver/rxvalues [0],\G_UNO_UART$U22/uartchip/receiver/rx_ff [1]}),
    .f({_al_u2105_o,_al_u2108_o}),
    .q(\G_UNO_UART$U22/uartchip/receiver/rxvalues [1:0]));  // ../../rtl/uart/uart.v(185)
  // ../../rtl/uart/uart.v(185)
  // ../../rtl/uart/uart.v(185)
  AL_PHY_MSLICE #(
    //.LUT0("(C*D)"),
    //.LUT1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111000000000000),
    .INIT_LUT1(16'b0000000011110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \G_UNO_UART$U22/uartchip/receiver/reg0_b3|G_UNO_UART$U22/uartchip/receiver/reg0_b2  (
    .c({_al_u2113_o,_al_u2105_o}),
    .clk(clk_28),
    .d({_al_u2108_o,_al_u2107_o}),
    .mi(\G_UNO_UART$U22/uartchip/receiver/rxvalues [2:1]),
    .f({\G_UNO_UART$U22/uartchip/receiver/u18_sel_is_3_o ,_al_u2117_o}),
    .q(\G_UNO_UART$U22/uartchip/receiver/rxvalues [3:2]));  // ../../rtl/uart/uart.v(185)
  // ../../rtl/uart/uart.v(185)
  // ../../rtl/uart/uart.v(185)
  AL_PHY_LSLICE #(
    //.LUTF0("(0*~D*~C*~B*~A)"),
    //.LUTF1("(D*C*B*A)"),
    //.LUTG0("(1*~D*~C*~B*~A)"),
    //.LUTG1("(D*C*B*A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b1000000000000000),
    .INIT_LUTG0(16'b0000000000000001),
    .INIT_LUTG1(16'b1000000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \G_UNO_UART$U22/uartchip/receiver/reg0_b4|G_UNO_UART$U22/uartchip/receiver/reg0_b5  (
    .a({\G_UNO_UART$U22/uartchip/receiver/rxvalues [4],\G_UNO_UART$U22/uartchip/receiver/rxvalues [4]}),
    .b({\G_UNO_UART$U22/uartchip/receiver/rxvalues [5],\G_UNO_UART$U22/uartchip/receiver/rxvalues [5]}),
    .c({\G_UNO_UART$U22/uartchip/receiver/rxvalues [6],\G_UNO_UART$U22/uartchip/receiver/rxvalues [6]}),
    .clk(clk_28),
    .d({\G_UNO_UART$U22/uartchip/receiver/rxvalues [7],\G_UNO_UART$U22/uartchip/receiver/rxvalues [7]}),
    .e({open_n38,_al_u2105_o}),
    .mi({\G_UNO_UART$U22/uartchip/receiver/rxvalues [3],\G_UNO_UART$U22/uartchip/receiver/rxvalues [4]}),
    .f({_al_u2107_o,_al_u2106_o}),
    .q({\G_UNO_UART$U22/uartchip/receiver/rxvalues [4],\G_UNO_UART$U22/uartchip/receiver/rxvalues [5]}));  // ../../rtl/uart/uart.v(185)
  // ../../rtl/uart/uart.v(185)
  // ../../rtl/uart/uart.v(185)
  AL_PHY_LSLICE #(
    //.LUTF0("(D*~(C*~(B*~A)))"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(D*~(C*~(B*~A)))"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0100111100000000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0100111100000000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \G_UNO_UART$U22/uartchip/receiver/reg0_b6|G_UNO_UART$U22/uartchip/receiver/reg0_b7  (
    .a({open_n55,\G_UNO_UART$U22/uartchip/receiver/state [0]}),
    .b({open_n56,_al_u2106_o}),
    .c({_al_u2113_o,\G_UNO_UART$U22/uartchip/receiver/u18_sel_is_3_o }),
    .clk(clk_28),
    .d({_al_u2106_o,\G_UNO_UART$U22/uartchip/receiver/state [1]}),
    .mi({\G_UNO_UART$U22/uartchip/receiver/rxvalues [5],\G_UNO_UART$U22/uartchip/receiver/rxvalues [6]}),
    .f({\G_UNO_UART$U22/uartchip/receiver/u10_sel_is_3_o ,_al_u2115_o}),
    .q({\G_UNO_UART$U22/uartchip/receiver/rxvalues [6],\G_UNO_UART$U22/uartchip/receiver/rxvalues [7]}));  // ../../rtl/uart/uart.v(185)
  AL_PHY_MSLICE #(
    //.LUT0("~(~0*~(~(~D*~C)*~(B*~A)))"),
    //.LUT1("~(~1*~(~(~D*~C)*~(B*~A)))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1011101110110000),
    .INIT_LUT1(16'b1111111111111111),
    .MODE("LOGIC"),
    .MSFXMUX("ON"),
    .REG0_REGSET("RESET"),
    .REG0_SD("FX"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \G_UNO_UART$U22/uartchip/receiver/reg2_b0  (
    .a({\G_UNO_UART$U22/uartchip/receiver/n3 [0],\G_UNO_UART$U22/uartchip/receiver/n3 [0]}),
    .b({_al_u2136_o,_al_u2136_o}),
    .c({_al_u2133_o,_al_u2133_o}),
    .clk(clk_28),
    .d({\G_UNO_UART$U22/uartchip/receiver/bpscounter [0],\G_UNO_UART$U22/uartchip/receiver/bpscounter [0]}),
    .mi({open_n87,_al_u2137_o}),
    .q({open_n94,\G_UNO_UART$U22/uartchip/receiver/bpscounter [0]}));  // ../../rtl/uart/uart.v(272)
  AL_PHY_MSLICE #(
    //.LUT0("~(~0*~(~(~D*~C)*~(B*~A)))"),
    //.LUT1("~(~1*~(~(~D*~C)*~(B*~A)))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1011101110110000),
    .INIT_LUT1(16'b1111111111111111),
    .MODE("LOGIC"),
    .MSFXMUX("ON"),
    .REG0_REGSET("RESET"),
    .REG0_SD("FX"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \G_UNO_UART$U22/uartchip/receiver/reg2_b1  (
    .a({\G_UNO_UART$U22/uartchip/receiver/n3 [1],\G_UNO_UART$U22/uartchip/receiver/n3 [1]}),
    .b({_al_u2136_o,_al_u2136_o}),
    .c({_al_u2133_o,_al_u2133_o}),
    .clk(clk_28),
    .d({\G_UNO_UART$U22/uartchip/receiver/bpscounter [1],\G_UNO_UART$U22/uartchip/receiver/bpscounter [1]}),
    .mi({open_n106,_al_u2137_o}),
    .q({open_n113,\G_UNO_UART$U22/uartchip/receiver/bpscounter [1]}));  // ../../rtl/uart/uart.v(272)
  // ../../rtl/uart/uart.v(272)
  // ../../rtl/uart/uart.v(272)
  AL_PHY_MSLICE #(
    //.LUT0("~(~(D*~C)*~(B*A))"),
    //.LUT1("~(~(D*~C)*~(B*A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1000111110001000),
    .INIT_LUT1(16'b1000111110001000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \G_UNO_UART$U22/uartchip/receiver/reg2_b10|G_UNO_UART$U22/uartchip/receiver/reg2_b9  (
    .a({_al_u2132_o,_al_u2132_o}),
    .b(\G_UNO_UART$U22/uartchip/receiver/n3 [10:9]),
    .c({_al_u2133_o,_al_u2133_o}),
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/receiver/bpscounter [10:9]),
    .q(\G_UNO_UART$U22/uartchip/receiver/bpscounter [10:9]));  // ../../rtl/uart/uart.v(272)
  // ../../rtl/uart/uart.v(272)
  // ../../rtl/uart/uart.v(272)
  AL_PHY_LSLICE #(
    //.LUTF0("~(~(D*~C)*~(B*A))"),
    //.LUTF1("~(~(D*~C)*~(B*A))"),
    //.LUTG0("~(~(D*~C)*~(B*A))"),
    //.LUTG1("~(~(D*~C)*~(B*A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1000111110001000),
    .INIT_LUTF1(16'b1000111110001000),
    .INIT_LUTG0(16'b1000111110001000),
    .INIT_LUTG1(16'b1000111110001000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \G_UNO_UART$U22/uartchip/receiver/reg2_b11|G_UNO_UART$U22/uartchip/receiver/reg2_b8  (
    .a({_al_u2132_o,_al_u2132_o}),
    .b({\G_UNO_UART$U22/uartchip/receiver/n3 [11],\G_UNO_UART$U22/uartchip/receiver/n3 [8]}),
    .c({_al_u2133_o,_al_u2133_o}),
    .clk(clk_28),
    .d({\G_UNO_UART$U22/uartchip/receiver/bpscounter [11],\G_UNO_UART$U22/uartchip/receiver/bpscounter [8]}),
    .q({\G_UNO_UART$U22/uartchip/receiver/bpscounter [11],\G_UNO_UART$U22/uartchip/receiver/bpscounter [8]}));  // ../../rtl/uart/uart.v(272)
  // ../../rtl/uart/uart.v(272)
  // ../../rtl/uart/uart.v(272)
  AL_PHY_LSLICE #(
    //.LUTF0("~(~(D*~C)*~(B*A))"),
    //.LUTF1("~(~(D*~C)*~(B*A))"),
    //.LUTG0("~(~(D*~C)*~(B*A))"),
    //.LUTG1("~(~(D*~C)*~(B*A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1000111110001000),
    .INIT_LUTF1(16'b1000111110001000),
    .INIT_LUTG0(16'b1000111110001000),
    .INIT_LUTG1(16'b1000111110001000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \G_UNO_UART$U22/uartchip/receiver/reg2_b12|G_UNO_UART$U22/uartchip/receiver/reg2_b17  (
    .a({_al_u2132_o,_al_u2132_o}),
    .b({\G_UNO_UART$U22/uartchip/receiver/n3 [12],\G_UNO_UART$U22/uartchip/receiver/n3 [17]}),
    .c({_al_u2133_o,_al_u2133_o}),
    .clk(clk_28),
    .d({\G_UNO_UART$U22/uartchip/receiver/bpscounter [12],\G_UNO_UART$U22/uartchip/receiver/bpscounter [17]}),
    .q({\G_UNO_UART$U22/uartchip/receiver/bpscounter [12],\G_UNO_UART$U22/uartchip/receiver/bpscounter [17]}));  // ../../rtl/uart/uart.v(272)
  // ../../rtl/uart/uart.v(272)
  // ../../rtl/uart/uart.v(272)
  AL_PHY_MSLICE #(
    //.LUT0("~(~(D*~C)*~(B*A))"),
    //.LUT1("~(~(D*~C)*~(B*A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1000111110001000),
    .INIT_LUT1(16'b1000111110001000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \G_UNO_UART$U22/uartchip/receiver/reg2_b13|G_UNO_UART$U22/uartchip/receiver/reg2_b16  (
    .a({_al_u2132_o,_al_u2132_o}),
    .b({\G_UNO_UART$U22/uartchip/receiver/n3 [13],\G_UNO_UART$U22/uartchip/receiver/n3 [16]}),
    .c({_al_u2133_o,_al_u2133_o}),
    .clk(clk_28),
    .d({\G_UNO_UART$U22/uartchip/receiver/bpscounter [13],\G_UNO_UART$U22/uartchip/receiver/bpscounter [16]}),
    .q({\G_UNO_UART$U22/uartchip/receiver/bpscounter [13],\G_UNO_UART$U22/uartchip/receiver/bpscounter [16]}));  // ../../rtl/uart/uart.v(272)
  // ../../rtl/uart/uart.v(272)
  // ../../rtl/uart/uart.v(272)
  AL_PHY_MSLICE #(
    //.LUT0("~(~(D*~C)*~(B*A))"),
    //.LUT1("~(~(D*~C)*~(B*A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1000111110001000),
    .INIT_LUT1(16'b1000111110001000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \G_UNO_UART$U22/uartchip/receiver/reg2_b14|G_UNO_UART$U22/uartchip/receiver/reg2_b15  (
    .a({_al_u2132_o,_al_u2132_o}),
    .b({\G_UNO_UART$U22/uartchip/receiver/n3 [14],\G_UNO_UART$U22/uartchip/receiver/n3 [15]}),
    .c({_al_u2133_o,_al_u2133_o}),
    .clk(clk_28),
    .d({\G_UNO_UART$U22/uartchip/receiver/bpscounter [14],\G_UNO_UART$U22/uartchip/receiver/bpscounter [15]}),
    .q({\G_UNO_UART$U22/uartchip/receiver/bpscounter [14],\G_UNO_UART$U22/uartchip/receiver/bpscounter [15]}));  // ../../rtl/uart/uart.v(272)
  AL_PHY_MSLICE #(
    //.LUT0("(~((~B*~A))*~(C)*~(D)*~(0)+(~B*~A)*~(C)*~(D)*~(0)+~((~B*~A))*~(C)*~(D)*0+(~B*~A)*~(C)*~(D)*0+(~B*~A)*C*~(D)*0+~((~B*~A))*~(C)*D*0+(~B*~A)*~(C)*D*0+~((~B*~A))*C*D*0+(~B*~A)*C*D*0)"),
    //.LUT1("(~((~B*~A))*~(C)*~(D)*~(1)+(~B*~A)*~(C)*~(D)*~(1)+~((~B*~A))*~(C)*~(D)*1+(~B*~A)*~(C)*~(D)*1+(~B*~A)*C*~(D)*1+~((~B*~A))*~(C)*D*1+(~B*~A)*~(C)*D*1+~((~B*~A))*C*D*1+(~B*~A)*C*D*1)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000000001111),
    .INIT_LUT1(16'b1111111100011111),
    .MODE("LOGIC"),
    .MSFXMUX("ON"),
    .REG0_REGSET("RESET"),
    .REG0_SD("FX"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \G_UNO_UART$U22/uartchip/receiver/reg2_b2  (
    .a({\G_UNO_UART$U22/uartchip/receiver/state [1],\G_UNO_UART$U22/uartchip/receiver/state [1]}),
    .b({\G_UNO_UART$U22/uartchip/receiver/state [0],\G_UNO_UART$U22/uartchip/receiver/state [0]}),
    .c({_al_u2145_o,_al_u2145_o}),
    .clk(clk_28),
    .d({\G_UNO_UART$U22/uartchip/receiver/state [2],\G_UNO_UART$U22/uartchip/receiver/state [2]}),
    .mi({open_n228,\G_UNO_UART$U22/uartchip/receiver/bpscounter [2]}),
    .q({open_n235,\G_UNO_UART$U22/uartchip/receiver/bpscounter [2]}));  // ../../rtl/uart/uart.v(272)
  AL_PHY_MSLICE #(
    //.LUT0("(~((~B*~A))*~(C)*~(D)*~(0)+(~B*~A)*~(C)*~(D)*~(0)+~((~B*~A))*~(C)*~(D)*0+(~B*~A)*~(C)*~(D)*0+(~B*~A)*C*~(D)*0+~((~B*~A))*~(C)*D*0+(~B*~A)*~(C)*D*0+~((~B*~A))*C*D*0+(~B*~A)*C*D*0)"),
    //.LUT1("(~((~B*~A))*~(C)*~(D)*~(1)+(~B*~A)*~(C)*~(D)*~(1)+~((~B*~A))*~(C)*~(D)*1+(~B*~A)*~(C)*~(D)*1+(~B*~A)*C*~(D)*1+~((~B*~A))*~(C)*D*1+(~B*~A)*~(C)*D*1+~((~B*~A))*C*D*1+(~B*~A)*C*D*1)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000000001111),
    .INIT_LUT1(16'b1111111100011111),
    .MODE("LOGIC"),
    .MSFXMUX("ON"),
    .REG0_REGSET("RESET"),
    .REG0_SD("FX"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \G_UNO_UART$U22/uartchip/receiver/reg2_b3  (
    .a({\G_UNO_UART$U22/uartchip/receiver/state [1],\G_UNO_UART$U22/uartchip/receiver/state [1]}),
    .b({\G_UNO_UART$U22/uartchip/receiver/state [0],\G_UNO_UART$U22/uartchip/receiver/state [0]}),
    .c({_al_u2143_o,_al_u2143_o}),
    .clk(clk_28),
    .d({\G_UNO_UART$U22/uartchip/receiver/state [2],\G_UNO_UART$U22/uartchip/receiver/state [2]}),
    .mi({open_n247,\G_UNO_UART$U22/uartchip/receiver/bpscounter [3]}),
    .q({open_n254,\G_UNO_UART$U22/uartchip/receiver/bpscounter [3]}));  // ../../rtl/uart/uart.v(272)
  AL_PHY_MSLICE #(
    //.LUT0("~(~0*~(~(~D*~C)*~(B*~A)))"),
    //.LUT1("~(~1*~(~(~D*~C)*~(B*~A)))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1011101110110000),
    .INIT_LUT1(16'b1111111111111111),
    .MODE("LOGIC"),
    .MSFXMUX("ON"),
    .REG0_REGSET("RESET"),
    .REG0_SD("FX"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \G_UNO_UART$U22/uartchip/receiver/reg2_b5  (
    .a({\G_UNO_UART$U22/uartchip/receiver/n3 [5],\G_UNO_UART$U22/uartchip/receiver/n3 [5]}),
    .b({_al_u2136_o,_al_u2136_o}),
    .c({_al_u2133_o,_al_u2133_o}),
    .clk(clk_28),
    .d({\G_UNO_UART$U22/uartchip/receiver/bpscounter [5],\G_UNO_UART$U22/uartchip/receiver/bpscounter [5]}),
    .mi({open_n266,_al_u2137_o}),
    .q({open_n273,\G_UNO_UART$U22/uartchip/receiver/bpscounter [5]}));  // ../../rtl/uart/uart.v(272)
  AL_PHY_MSLICE #(
    //.LUT0("~(~0*~(~(~D*~C)*~(B*~A)))"),
    //.LUT1("~(~1*~(~(~D*~C)*~(B*~A)))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1011101110110000),
    .INIT_LUT1(16'b1111111111111111),
    .MODE("LOGIC"),
    .MSFXMUX("ON"),
    .REG0_REGSET("RESET"),
    .REG0_SD("FX"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \G_UNO_UART$U22/uartchip/receiver/reg2_b6  (
    .a({\G_UNO_UART$U22/uartchip/receiver/n3 [6],\G_UNO_UART$U22/uartchip/receiver/n3 [6]}),
    .b({_al_u2136_o,_al_u2136_o}),
    .c({_al_u2133_o,_al_u2133_o}),
    .clk(clk_28),
    .d({\G_UNO_UART$U22/uartchip/receiver/bpscounter [6],\G_UNO_UART$U22/uartchip/receiver/bpscounter [6]}),
    .mi({open_n285,_al_u2137_o}),
    .q({open_n292,\G_UNO_UART$U22/uartchip/receiver/bpscounter [6]}));  // ../../rtl/uart/uart.v(272)
  AL_PHY_MSLICE #(
    //.LUT0("~(~0*~(~(~D*~C)*~(B*~A)))"),
    //.LUT1("~(~1*~(~(~D*~C)*~(B*~A)))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1011101110110000),
    .INIT_LUT1(16'b1111111111111111),
    .MODE("LOGIC"),
    .MSFXMUX("ON"),
    .REG0_REGSET("RESET"),
    .REG0_SD("FX"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \G_UNO_UART$U22/uartchip/receiver/reg2_b7  (
    .a({\G_UNO_UART$U22/uartchip/receiver/n3 [7],\G_UNO_UART$U22/uartchip/receiver/n3 [7]}),
    .b({_al_u2136_o,_al_u2136_o}),
    .c({_al_u2133_o,_al_u2133_o}),
    .clk(clk_28),
    .d({\G_UNO_UART$U22/uartchip/receiver/bpscounter [7],\G_UNO_UART$U22/uartchip/receiver/bpscounter [7]}),
    .mi({open_n304,_al_u2137_o}),
    .q({open_n311,\G_UNO_UART$U22/uartchip/receiver/bpscounter [7]}));  // ../../rtl/uart/uart.v(272)
  // ../../rtl/uart/uart.v(272)
  // ../../rtl/uart/uart.v(272)
  AL_PHY_MSLICE #(
    //.LUT0("~(~D*~(C*~(B*~A)))"),
    //.LUT1("~(~D*~(C@B))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111111110110000),
    .INIT_LUT1(16'b1111111100111100),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \G_UNO_UART$U22/uartchip/receiver/reg5_b0|G_UNO_UART$U22/uartchip/receiver/reg2_b4  (
    .a({open_n312,\G_UNO_UART$U22/uartchip/receiver/n3 [4]}),
    .b({_al_u2137_o,_al_u2136_o}),
    .c({\G_UNO_UART$U22/uartchip/receiver/bitcnt [0],_al_u2141_o}),
    .clk(clk_28),
    .d({_al_u2157_o,_al_u2137_o}),
    .q({\G_UNO_UART$U22/uartchip/receiver/bitcnt [0],\G_UNO_UART$U22/uartchip/receiver/bpscounter [4]}));  // ../../rtl/uart/uart.v(272)
  AL_PHY_MSLICE #(
    //.LUT0("~(~D*~(0@(C*~B*~A)))"),
    //.LUT1("~(~D*~(1@(C*~B*~A)))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111111100010000),
    .INIT_LUT1(16'b1111111111101111),
    .MODE("LOGIC"),
    .MSFXMUX("ON"),
    .REG0_REGSET("RESET"),
    .REG0_SD("FX"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \G_UNO_UART$U22/uartchip/receiver/reg5_b2  (
    .a({\G_UNO_UART$U22/uartchip/receiver/bitcnt [0],\G_UNO_UART$U22/uartchip/receiver/bitcnt [0]}),
    .b({\G_UNO_UART$U22/uartchip/receiver/bitcnt [1],\G_UNO_UART$U22/uartchip/receiver/bitcnt [1]}),
    .c({_al_u2137_o,_al_u2137_o}),
    .clk(clk_28),
    .d({_al_u2157_o,_al_u2157_o}),
    .mi({open_n343,\G_UNO_UART$U22/uartchip/receiver/bitcnt [2]}),
    .q({open_n350,\G_UNO_UART$U22/uartchip/receiver/bitcnt [2]}));  // ../../rtl/uart/uart.v(272)
  AL_PHY_PAD #(
    //.CLKSRC("CLK"),
    //.LOCATION("P2"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    .INCEMUX("1"),
    .INCLKMUX("CLK"),
    .INRSTMUX("0"),
    .IN_DFFMODE("FF"),
    .IN_REGSET("RESET"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .SRMODE("ASYNC"),
    .TSMUX("1"))
    \G_UNO_UART$U22/uartchip/receiver/reg6_b0_IN  (
    .ce(1'b1),
    .clk(clk_28),
    .ipad(UART_RX),
    .itrue(\G_UNO_UART$U22/uartchip/receiver/rx_ff [0]));  // ../../rtl/uart/uart.v(179)
  AL_PHY_MSLICE #(
    //.LUT0("(~(A)*~(B)*~(C)*~((~0*~D))+A*~(B)*~(C)*~((~0*~D))+~(A)*B*~(C)*~((~0*~D))+A*B*~(C)*~((~0*~D))+~(A)*B*C*~((~0*~D))+A*B*C*~((~0*~D))+~(A)*B*~(C)*(~0*~D)+~(A)*B*C*(~0*~D)+A*B*C*(~0*~D))"),
    //.LUT1("(~(A)*~(B)*~(C)*~((~1*~D))+A*~(B)*~(C)*~((~1*~D))+~(A)*B*~(C)*~((~1*~D))+A*B*~(C)*~((~1*~D))+~(A)*B*C*~((~1*~D))+A*B*C*~((~1*~D))+~(A)*B*~(C)*(~1*~D)+~(A)*B*C*(~1*~D)+A*B*C*(~1*~D))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1100111111000100),
    .INIT_LUT1(16'b1100111111001111),
    .MODE("LOGIC"),
    .MSFXMUX("ON"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \G_UNO_UART$U22/uartchip/receiver/reg6_b1|_al_u2141  (
    .a({_al_u2117_o,_al_u2117_o}),
    .b({\G_UNO_UART$U22/uartchip/receiver/bpscounter [4],\G_UNO_UART$U22/uartchip/receiver/bpscounter [4]}),
    .c({\G_UNO_UART$U22/uartchip/receiver/state [2],\G_UNO_UART$U22/uartchip/receiver/state [2]}),
    .clk(clk_28),
    .d({\G_UNO_UART$U22/uartchip/receiver/state [1],\G_UNO_UART$U22/uartchip/receiver/state [1]}),
    .mi({\G_UNO_UART$U22/uartchip/receiver/rx_ff [0],\G_UNO_UART$U22/uartchip/receiver/state [0]}),
    .fx({open_n375,_al_u2141_o}),
    .q({\G_UNO_UART$U22/uartchip/receiver/rx_ff [1],open_n376}));  // ../../rtl/uart/uart.v(179)
  AL_PHY_LSLICE #(
    //.LUTF0("(0*(C*~((B*~A))*~(D)+C*(B*~A)*~(D)+~(C)*(B*~A)*D+C*(B*~A)*D))"),
    //.LUTF1("~(~D*~(C*~(~B*~A)))"),
    //.LUTG0("(1*(C*~((B*~A))*~(D)+C*(B*~A)*~(D)+~(C)*(B*~A)*D+C*(B*~A)*D))"),
    //.LUTG1("~(~D*~(C*~(~B*~A)))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b1111111111100000),
    .INIT_LUTG0(16'b0100010011110000),
    .INIT_LUTG1(16'b1111111111100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \G_UNO_UART$U22/uartchip/receiver/rts_reg|_al_u2119  (
    .a({_al_u2115_o,\G_UNO_UART$U22/uartchip/receiver/u10_sel_is_3_o }),
    .b({\G_UNO_UART$U22/uartchip/receiver/state [2],UART_CTS_pad}),
    .c({UART_CTS_pad,_al_u2117_o}),
    .clk(clk_28),
    .d({_al_u2119_o,\G_UNO_UART$U22/uartchip/receiver/state [0]}),
    .e({open_n378,_al_u2118_o}),
    .f({open_n394,_al_u2119_o}),
    .q({UART_CTS_pad,open_n398}));  // ../../rtl/uart/uart.v(272)
  AL_PHY_LSLICE #(
    //.MACRO("G_UNO_UART$U22/uartchip/receiver/sub1/ucin_al_u2295"),
    //.R_POSITION("X0Y1Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \G_UNO_UART$U22/uartchip/receiver/sub1/u11_al_u2298  (
    .a({\G_UNO_UART$U22/uartchip/receiver/bpscounter [13],\G_UNO_UART$U22/uartchip/receiver/bpscounter [11]}),
    .b({\G_UNO_UART$U22/uartchip/receiver/bpscounter [14],\G_UNO_UART$U22/uartchip/receiver/bpscounter [12]}),
    .c(2'b11),
    .d(2'b00),
    .e(2'b00),
    .fci(\G_UNO_UART$U22/uartchip/receiver/sub1/c11 ),
    .f({\G_UNO_UART$U22/uartchip/receiver/n3 [13],\G_UNO_UART$U22/uartchip/receiver/n3 [11]}),
    .fco(\G_UNO_UART$U22/uartchip/receiver/sub1/c15 ),
    .fx({\G_UNO_UART$U22/uartchip/receiver/n3 [14],\G_UNO_UART$U22/uartchip/receiver/n3 [12]}));
  AL_PHY_LSLICE #(
    //.MACRO("G_UNO_UART$U22/uartchip/receiver/sub1/ucin_al_u2295"),
    //.R_POSITION("X0Y2Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \G_UNO_UART$U22/uartchip/receiver/sub1/u15_al_u2299  (
    .a({\G_UNO_UART$U22/uartchip/receiver/bpscounter [17],\G_UNO_UART$U22/uartchip/receiver/bpscounter [15]}),
    .b({open_n417,\G_UNO_UART$U22/uartchip/receiver/bpscounter [16]}),
    .c(2'b11),
    .d(2'b00),
    .e({open_n420,1'b0}),
    .fci(\G_UNO_UART$U22/uartchip/receiver/sub1/c15 ),
    .f({\G_UNO_UART$U22/uartchip/receiver/n3 [17],\G_UNO_UART$U22/uartchip/receiver/n3 [15]}),
    .fx({open_n436,\G_UNO_UART$U22/uartchip/receiver/n3 [16]}));
  AL_PHY_LSLICE #(
    //.MACRO("G_UNO_UART$U22/uartchip/receiver/sub1/ucin_al_u2295"),
    //.R_POSITION("X0Y0Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \G_UNO_UART$U22/uartchip/receiver/sub1/u3_al_u2296  (
    .a({\G_UNO_UART$U22/uartchip/receiver/bpscounter [5],\G_UNO_UART$U22/uartchip/receiver/bpscounter [3]}),
    .b({\G_UNO_UART$U22/uartchip/receiver/bpscounter [6],\G_UNO_UART$U22/uartchip/receiver/bpscounter [4]}),
    .c(2'b11),
    .d(2'b00),
    .e(2'b00),
    .fci(\G_UNO_UART$U22/uartchip/receiver/sub1/c3 ),
    .f({\G_UNO_UART$U22/uartchip/receiver/n3 [5],\G_UNO_UART$U22/uartchip/receiver/n3 [3]}),
    .fco(\G_UNO_UART$U22/uartchip/receiver/sub1/c7 ),
    .fx({\G_UNO_UART$U22/uartchip/receiver/n3 [6],\G_UNO_UART$U22/uartchip/receiver/n3 [4]}));
  AL_PHY_LSLICE #(
    //.MACRO("G_UNO_UART$U22/uartchip/receiver/sub1/ucin_al_u2295"),
    //.R_POSITION("X0Y1Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \G_UNO_UART$U22/uartchip/receiver/sub1/u7_al_u2297  (
    .a({\G_UNO_UART$U22/uartchip/receiver/bpscounter [9],\G_UNO_UART$U22/uartchip/receiver/bpscounter [7]}),
    .b({\G_UNO_UART$U22/uartchip/receiver/bpscounter [10],\G_UNO_UART$U22/uartchip/receiver/bpscounter [8]}),
    .c(2'b11),
    .d(2'b00),
    .e(2'b00),
    .fci(\G_UNO_UART$U22/uartchip/receiver/sub1/c7 ),
    .f({\G_UNO_UART$U22/uartchip/receiver/n3 [9],\G_UNO_UART$U22/uartchip/receiver/n3 [7]}),
    .fco(\G_UNO_UART$U22/uartchip/receiver/sub1/c11 ),
    .fx({\G_UNO_UART$U22/uartchip/receiver/n3 [10],\G_UNO_UART$U22/uartchip/receiver/n3 [8]}));
  AL_PHY_LSLICE #(
    //.MACRO("G_UNO_UART$U22/uartchip/receiver/sub1/ucin_al_u2295"),
    //.R_POSITION("X0Y0Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'h0005),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \G_UNO_UART$U22/uartchip/receiver/sub1/ucin_al_u2295  (
    .a({\G_UNO_UART$U22/uartchip/receiver/bpscounter [1],1'b0}),
    .b({\G_UNO_UART$U22/uartchip/receiver/bpscounter [2],\G_UNO_UART$U22/uartchip/receiver/bpscounter [0]}),
    .c(2'b11),
    .d(2'b01),
    .e(2'b01),
    .f({\G_UNO_UART$U22/uartchip/receiver/n3 [1],open_n492}),
    .fco(\G_UNO_UART$U22/uartchip/receiver/sub1/c3 ),
    .fx({\G_UNO_UART$U22/uartchip/receiver/n3 [2],\G_UNO_UART$U22/uartchip/receiver/n3 [0]}));
  // ../../rtl/uart/uart.v(141)
  // ../../rtl/uart/uart.v(141)
  AL_PHY_LSLICE #(
    //.LUTF0("(A*B*~(C)*~(D)+A*~(B)*C*~(D)+~(A)*~(B)*~(C)*D+A*~(B)*~(C)*D+~(A)*B*~(C)*D+A*B*~(C)*D+~(A)*~(B)*C*D+~(A)*B*C*D+A*B*C*D)"),
    //.LUTF1("~(~(D*~C)*~(B*~A))"),
    //.LUTG0("(A*B*~(C)*~(D)+A*~(B)*C*~(D)+~(A)*~(B)*~(C)*D+A*~(B)*~(C)*D+~(A)*B*~(C)*D+A*B*~(C)*D+~(A)*~(B)*C*D+~(A)*B*C*D+A*B*C*D)"),
    //.LUTG1("~(~(D*~C)*~(B*~A))"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1101111100101000),
    .INIT_LUTF1(16'b0100111101000100),
    .INIT_LUTG0(16'b1101111100101000),
    .INIT_LUTG1(16'b0100111101000100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \G_UNO_UART$U22/uartchip/transmitter/reg0_b0|G_UNO_UART$U22/uartchip/transmitter/reg2_b0  (
    .a({\G_UNO_UART$U22/uartchip/transmitter/bitcnt [2],_al_u1953_o}),
    .b({_al_u1988_o,\G_UNO_UART$U22/uartchip/transmitter/state [0]}),
    .c({_al_u1953_o,\G_UNO_UART$U22/uartchip/transmitter/state [1]}),
    .ce(\G_UNO_UART$U22/txbusy ),
    .clk(clk_28),
    .d({\G_UNO_UART$U22/uartchip/transmitter/state [0],\G_UNO_UART$U22/uartchip/transmitter/bitcnt [0]}),
    .q({\G_UNO_UART$U22/uartchip/transmitter/state [0],\G_UNO_UART$U22/uartchip/transmitter/bitcnt [0]}));  // ../../rtl/uart/uart.v(141)
  // ../../rtl/uart/uart.v(141)
  // ../../rtl/uart/uart.v(141)
  AL_PHY_MSLICE #(
    //.LUT0("(D*(~(A)*B*~(C)+A*B*~(C)+~(A)*~(B)*C+A*~(B)*C+~(A)*B*C))"),
    //.LUT1("(C@(B*D))"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0111110000000000),
    .INIT_LUT1(16'b0011110011110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \G_UNO_UART$U22/uartchip/transmitter/reg0_b1|G_UNO_UART$U22/uartchip/transmitter/txbusy_ff_reg  (
    .a({open_n517,_al_u1953_o}),
    .b({\G_UNO_UART$U22/uartchip/transmitter/state [0],\G_UNO_UART$U22/uartchip/transmitter/state [0]}),
    .c({\G_UNO_UART$U22/uartchip/transmitter/state [1],\G_UNO_UART$U22/uartchip/transmitter/state [1]}),
    .ce(\G_UNO_UART$U22/txbusy ),
    .clk(clk_28),
    .d({_al_u1953_o,\G_UNO_UART$U22/txbusy }),
    .q({\G_UNO_UART$U22/uartchip/transmitter/state [1],\G_UNO_UART$U22/txbusy }));  // ../../rtl/uart/uart.v(141)
  // ../../rtl/uart/uart.v(141)
  // ../../rtl/uart/uart.v(141)
  AL_PHY_MSLICE #(
    //.LUT0("(C*~D)"),
    //.LUT1("~(~C*~D)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000011110000),
    .INIT_LUT1(16'b1111111111110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \G_UNO_UART$U22/uartchip/transmitter/reg1_b0|G_UNO_UART$U22/uartchip/transmitter/reg1_b9  (
    .c({\G_UNO_UART$U22/uartchip/transmitter/n10 [0],\G_UNO_UART$U22/uartchip/transmitter/n10 [9]}),
    .ce(\G_UNO_UART$U22/uartchip/transmitter/mux14_b0_sel_is_1_o ),
    .clk(clk_28),
    .d({_al_u1953_o,_al_u1953_o}),
    .q({\G_UNO_UART$U22/uartchip/transmitter/bpscounter [0],\G_UNO_UART$U22/uartchip/transmitter/bpscounter [9]}));  // ../../rtl/uart/uart.v(141)
  // ../../rtl/uart/uart.v(141)
  // ../../rtl/uart/uart.v(141)
  AL_PHY_MSLICE #(
    //.LUT0("(C*~D)"),
    //.LUT1("(C*~D)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000011110000),
    .INIT_LUT1(16'b0000000011110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \G_UNO_UART$U22/uartchip/transmitter/reg1_b10|G_UNO_UART$U22/uartchip/transmitter/reg1_b8  (
    .c({\G_UNO_UART$U22/uartchip/transmitter/n10 [10],\G_UNO_UART$U22/uartchip/transmitter/n10 [8]}),
    .ce(\G_UNO_UART$U22/uartchip/transmitter/mux14_b0_sel_is_1_o ),
    .clk(clk_28),
    .d({_al_u1953_o,_al_u1953_o}),
    .q({\G_UNO_UART$U22/uartchip/transmitter/bpscounter [10],\G_UNO_UART$U22/uartchip/transmitter/bpscounter [8]}));  // ../../rtl/uart/uart.v(141)
  // ../../rtl/uart/uart.v(141)
  // ../../rtl/uart/uart.v(141)
  AL_PHY_LSLICE #(
    //.LUTF0("~(~C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("~(~C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111111111110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b1111111111110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \G_UNO_UART$U22/uartchip/transmitter/reg1_b11|G_UNO_UART$U22/uartchip/transmitter/reg1_b7  (
    .c({\G_UNO_UART$U22/uartchip/transmitter/n10 [11],\G_UNO_UART$U22/uartchip/transmitter/n10 [7]}),
    .ce(\G_UNO_UART$U22/uartchip/transmitter/mux14_b0_sel_is_1_o ),
    .clk(clk_28),
    .d({_al_u1953_o,_al_u1953_o}),
    .q({\G_UNO_UART$U22/uartchip/transmitter/bpscounter [11],\G_UNO_UART$U22/uartchip/transmitter/bpscounter [7]}));  // ../../rtl/uart/uart.v(141)
  // ../../rtl/uart/uart.v(141)
  // ../../rtl/uart/uart.v(141)
  AL_PHY_LSLICE #(
    //.LUTF0("~(~C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("~(~C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111111111110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b1111111111110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \G_UNO_UART$U22/uartchip/transmitter/reg1_b12|G_UNO_UART$U22/uartchip/transmitter/reg1_b6  (
    .c({\G_UNO_UART$U22/uartchip/transmitter/n10 [12],\G_UNO_UART$U22/uartchip/transmitter/n10 [6]}),
    .ce(\G_UNO_UART$U22/uartchip/transmitter/mux14_b0_sel_is_1_o ),
    .clk(clk_28),
    .d({_al_u1953_o,_al_u1953_o}),
    .q({\G_UNO_UART$U22/uartchip/transmitter/bpscounter [12],\G_UNO_UART$U22/uartchip/transmitter/bpscounter [6]}));  // ../../rtl/uart/uart.v(141)
  // ../../rtl/uart/uart.v(141)
  // ../../rtl/uart/uart.v(141)
  AL_PHY_MSLICE #(
    //.LUT0("~(~C*~D)"),
    //.LUT1("(C*~D)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111111111110000),
    .INIT_LUT1(16'b0000000011110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \G_UNO_UART$U22/uartchip/transmitter/reg1_b13|G_UNO_UART$U22/uartchip/transmitter/reg1_b5  (
    .c({\G_UNO_UART$U22/uartchip/transmitter/n10 [13],\G_UNO_UART$U22/uartchip/transmitter/n10 [5]}),
    .ce(\G_UNO_UART$U22/uartchip/transmitter/mux14_b0_sel_is_1_o ),
    .clk(clk_28),
    .d({_al_u1953_o,_al_u1953_o}),
    .q({\G_UNO_UART$U22/uartchip/transmitter/bpscounter [13],\G_UNO_UART$U22/uartchip/transmitter/bpscounter [5]}));  // ../../rtl/uart/uart.v(141)
  // ../../rtl/uart/uart.v(141)
  // ../../rtl/uart/uart.v(141)
  AL_PHY_MSLICE #(
    //.LUT0("~(~C*~D)"),
    //.LUT1("(C*~D)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111111111110000),
    .INIT_LUT1(16'b0000000011110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \G_UNO_UART$U22/uartchip/transmitter/reg1_b14|G_UNO_UART$U22/uartchip/transmitter/reg1_b4  (
    .c({\G_UNO_UART$U22/uartchip/transmitter/n10 [14],\G_UNO_UART$U22/uartchip/transmitter/n10 [4]}),
    .ce(\G_UNO_UART$U22/uartchip/transmitter/mux14_b0_sel_is_1_o ),
    .clk(clk_28),
    .d({_al_u1953_o,_al_u1953_o}),
    .q({\G_UNO_UART$U22/uartchip/transmitter/bpscounter [14],\G_UNO_UART$U22/uartchip/transmitter/bpscounter [4]}));  // ../../rtl/uart/uart.v(141)
  // ../../rtl/uart/uart.v(141)
  // ../../rtl/uart/uart.v(141)
  AL_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \G_UNO_UART$U22/uartchip/transmitter/reg1_b15|G_UNO_UART$U22/uartchip/transmitter/reg1_b3  (
    .c({\G_UNO_UART$U22/uartchip/transmitter/n10 [15],\G_UNO_UART$U22/uartchip/transmitter/n10 [3]}),
    .ce(\G_UNO_UART$U22/uartchip/transmitter/mux14_b0_sel_is_1_o ),
    .clk(clk_28),
    .d({_al_u1953_o,_al_u1953_o}),
    .q({\G_UNO_UART$U22/uartchip/transmitter/bpscounter [15],\G_UNO_UART$U22/uartchip/transmitter/bpscounter [3]}));  // ../../rtl/uart/uart.v(141)
  // ../../rtl/uart/uart.v(141)
  // ../../rtl/uart/uart.v(141)
  AL_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \G_UNO_UART$U22/uartchip/transmitter/reg1_b16|G_UNO_UART$U22/uartchip/transmitter/reg1_b2  (
    .c({\G_UNO_UART$U22/uartchip/transmitter/n10 [16],\G_UNO_UART$U22/uartchip/transmitter/n10 [2]}),
    .ce(\G_UNO_UART$U22/uartchip/transmitter/mux14_b0_sel_is_1_o ),
    .clk(clk_28),
    .d({_al_u1953_o,_al_u1953_o}),
    .q({\G_UNO_UART$U22/uartchip/transmitter/bpscounter [16],\G_UNO_UART$U22/uartchip/transmitter/bpscounter [2]}));  // ../../rtl/uart/uart.v(141)
  AL_PHY_MSLICE #(
    //.LUT0("(~(A)*B*C*~(D)*~(0)+A*B*C*~(D)*~(0)+~(A)*B*~(C)*D*~(0)+~(A)*~(B)*~(C)*~(D)*0+A*~(B)*~(C)*~(D)*0+~(A)*B*~(C)*~(D)*0+A*B*~(C)*~(D)*0+~(A)*~(B)*C*~(D)*0+A*~(B)*C*~(D)*0+~(A)*B*C*~(D)*0+A*B*C*~(D)*0+~(A)*~(B)*~(C)*D*0+A*~(B)*~(C)*D*0+A*B*~(C)*D*0+~(A)*~(B)*C*D*0+A*~(B)*C*D*0+~(A)*B*C*D*0+A*B*C*D*0)"),
    //.LUT1("(~(A)*B*C*~(D)*~(1)+A*B*C*~(D)*~(1)+~(A)*B*~(C)*D*~(1)+~(A)*~(B)*~(C)*~(D)*1+A*~(B)*~(C)*~(D)*1+~(A)*B*~(C)*~(D)*1+A*B*~(C)*~(D)*1+~(A)*~(B)*C*~(D)*1+A*~(B)*C*~(D)*1+~(A)*B*C*~(D)*1+A*B*C*~(D)*1+~(A)*~(B)*~(C)*D*1+A*~(B)*~(C)*D*1+A*B*~(C)*D*1+~(A)*~(B)*C*D*1+A*~(B)*C*D*1+~(A)*B*C*D*1+A*B*C*D*1)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000010011000000),
    .INIT_LUT1(16'b1111101111111111),
    .MODE("LOGIC"),
    .MSFXMUX("ON"),
    .REG0_REGSET("RESET"),
    .REG0_SD("FX"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \G_UNO_UART$U22/uartchip/transmitter/reg2_b1  (
    .a({\G_UNO_UART$U22/uartchip/transmitter/bitcnt [0],\G_UNO_UART$U22/uartchip/transmitter/bitcnt [0]}),
    .b({_al_u1953_o,_al_u1953_o}),
    .c({\G_UNO_UART$U22/uartchip/transmitter/state [0],\G_UNO_UART$U22/uartchip/transmitter/state [0]}),
    .ce(\G_UNO_UART$U22/txbusy ),
    .clk(clk_28),
    .d({\G_UNO_UART$U22/uartchip/transmitter/state [1],\G_UNO_UART$U22/uartchip/transmitter/state [1]}),
    .mi({open_n738,\G_UNO_UART$U22/uartchip/transmitter/bitcnt [1]}),
    .q({open_n745,\G_UNO_UART$U22/uartchip/transmitter/bitcnt [1]}));  // ../../rtl/uart/uart.v(141)
  AL_PHY_MSLICE #(
    //.LUT0("~(~(0@D)*~(C*B*~A))"),
    //.LUT1("~(~(1@D)*~(C*B*~A))"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111111101000000),
    .INIT_LUT1(16'b0100000011111111),
    .MODE("LOGIC"),
    .MSFXMUX("ON"),
    .REG0_REGSET("RESET"),
    .REG0_SD("FX"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \G_UNO_UART$U22/uartchip/transmitter/reg2_b2  (
    .a({\G_UNO_UART$U22/uartchip/transmitter/state [1],\G_UNO_UART$U22/uartchip/transmitter/state [1]}),
    .b({_al_u1953_o,_al_u1953_o}),
    .c({\G_UNO_UART$U22/uartchip/transmitter/state [0],\G_UNO_UART$U22/uartchip/transmitter/state [0]}),
    .ce(\G_UNO_UART$U22/txbusy ),
    .clk(clk_28),
    .d({_al_u1988_o,_al_u1988_o}),
    .mi({open_n756,\G_UNO_UART$U22/uartchip/transmitter/bitcnt [2]}),
    .q({open_n763,\G_UNO_UART$U22/uartchip/transmitter/bitcnt [2]}));  // ../../rtl/uart/uart.v(141)
  AL_PHY_LSLICE #(
    //.MACRO("G_UNO_UART$U22/uartchip/transmitter/sub0/ucin_al_u2300"),
    //.R_POSITION("X0Y1Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \G_UNO_UART$U22/uartchip/transmitter/sub0/u11_al_u2303  (
    .a({\G_UNO_UART$U22/uartchip/transmitter/bpscounter [13],\G_UNO_UART$U22/uartchip/transmitter/bpscounter [11]}),
    .b({\G_UNO_UART$U22/uartchip/transmitter/bpscounter [14],\G_UNO_UART$U22/uartchip/transmitter/bpscounter [12]}),
    .c(2'b11),
    .d(2'b00),
    .e(2'b00),
    .fci(\G_UNO_UART$U22/uartchip/transmitter/sub0/c11 ),
    .f({\G_UNO_UART$U22/uartchip/transmitter/n10 [13],\G_UNO_UART$U22/uartchip/transmitter/n10 [11]}),
    .fco(\G_UNO_UART$U22/uartchip/transmitter/sub0/c15 ),
    .fx({\G_UNO_UART$U22/uartchip/transmitter/n10 [14],\G_UNO_UART$U22/uartchip/transmitter/n10 [12]}));
  AL_PHY_LSLICE #(
    //.MACRO("G_UNO_UART$U22/uartchip/transmitter/sub0/ucin_al_u2300"),
    //.R_POSITION("X0Y2Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \G_UNO_UART$U22/uartchip/transmitter/sub0/u15_al_u2304  (
    .a({\G_UNO_UART$U22/uartchip/transmitter/bpscounter [17],\G_UNO_UART$U22/uartchip/transmitter/bpscounter [15]}),
    .b({open_n782,\G_UNO_UART$U22/uartchip/transmitter/bpscounter [16]}),
    .c(2'b11),
    .d(2'b00),
    .e({open_n785,1'b0}),
    .fci(\G_UNO_UART$U22/uartchip/transmitter/sub0/c15 ),
    .f({\G_UNO_UART$U22/uartchip/transmitter/n10 [17],\G_UNO_UART$U22/uartchip/transmitter/n10 [15]}),
    .fx({open_n801,\G_UNO_UART$U22/uartchip/transmitter/n10 [16]}));
  AL_PHY_LSLICE #(
    //.MACRO("G_UNO_UART$U22/uartchip/transmitter/sub0/ucin_al_u2300"),
    //.R_POSITION("X0Y0Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \G_UNO_UART$U22/uartchip/transmitter/sub0/u3_al_u2301  (
    .a({\G_UNO_UART$U22/uartchip/transmitter/bpscounter [5],\G_UNO_UART$U22/uartchip/transmitter/bpscounter [3]}),
    .b({\G_UNO_UART$U22/uartchip/transmitter/bpscounter [6],\G_UNO_UART$U22/uartchip/transmitter/bpscounter [4]}),
    .c(2'b11),
    .d(2'b00),
    .e(2'b00),
    .fci(\G_UNO_UART$U22/uartchip/transmitter/sub0/c3 ),
    .f({\G_UNO_UART$U22/uartchip/transmitter/n10 [5],\G_UNO_UART$U22/uartchip/transmitter/n10 [3]}),
    .fco(\G_UNO_UART$U22/uartchip/transmitter/sub0/c7 ),
    .fx({\G_UNO_UART$U22/uartchip/transmitter/n10 [6],\G_UNO_UART$U22/uartchip/transmitter/n10 [4]}));
  AL_PHY_LSLICE #(
    //.MACRO("G_UNO_UART$U22/uartchip/transmitter/sub0/ucin_al_u2300"),
    //.R_POSITION("X0Y1Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \G_UNO_UART$U22/uartchip/transmitter/sub0/u7_al_u2302  (
    .a({\G_UNO_UART$U22/uartchip/transmitter/bpscounter [9],\G_UNO_UART$U22/uartchip/transmitter/bpscounter [7]}),
    .b({\G_UNO_UART$U22/uartchip/transmitter/bpscounter [10],\G_UNO_UART$U22/uartchip/transmitter/bpscounter [8]}),
    .c(2'b11),
    .d(2'b00),
    .e(2'b00),
    .fci(\G_UNO_UART$U22/uartchip/transmitter/sub0/c7 ),
    .f({\G_UNO_UART$U22/uartchip/transmitter/n10 [9],\G_UNO_UART$U22/uartchip/transmitter/n10 [7]}),
    .fco(\G_UNO_UART$U22/uartchip/transmitter/sub0/c11 ),
    .fx({\G_UNO_UART$U22/uartchip/transmitter/n10 [10],\G_UNO_UART$U22/uartchip/transmitter/n10 [8]}));
  AL_PHY_LSLICE #(
    //.MACRO("G_UNO_UART$U22/uartchip/transmitter/sub0/ucin_al_u2300"),
    //.R_POSITION("X0Y0Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'h0005),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \G_UNO_UART$U22/uartchip/transmitter/sub0/ucin_al_u2300  (
    .a({\G_UNO_UART$U22/uartchip/transmitter/bpscounter [1],1'b0}),
    .b({\G_UNO_UART$U22/uartchip/transmitter/bpscounter [2],\G_UNO_UART$U22/uartchip/transmitter/bpscounter [0]}),
    .c(2'b11),
    .d(2'b01),
    .e(2'b01),
    .f({\G_UNO_UART$U22/uartchip/transmitter/n10 [1],open_n857}),
    .fco(\G_UNO_UART$U22/uartchip/transmitter/sub0/c3 ),
    .fx({\G_UNO_UART$U22/uartchip/transmitter/n10 [2],\G_UNO_UART$U22/uartchip/transmitter/n10 [0]}));
  AL_PHY_LSLICE #(
    //.LUTF0("(D*~(B)*~(C)+~(D)*B*C+D*B*C)"),
    //.LUTG0("(D*~(B)*~(C)+~(D)*B*C+D*B*C)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1100001111000000),
    .INIT_LUTG0(16'b1100001111000000),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \G_UNO_UART$U22/uartchip/transmitter/tx_reg  (
    .b({open_n862,\G_UNO_UART$U22/uartchip/transmitter/state [1]}),
    .c({open_n863,\G_UNO_UART$U22/uartchip/transmitter/state [0]}),
    .ce(\G_UNO_UART$U22/txbusy ),
    .clk(clk_28),
    .d({open_n864,UART_TX_pad}),
    .q({open_n887,UART_TX_pad}));  // ../../rtl/uart/uart.v(141)
  AL_PHY_GCLK \U1/bufg_feedback  (
    .clki(\U1/clkc_wire [0]),
    .clko(clk_112));  // al_ip/altpll0.vhd(40)
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
    \U1/pll_inst  (
    .fbclk(clk_112),
    .phasestep(1'b0),
    .phaseupdown(1'b0),
    .phcntsel(3'b000),
    .pllreset(1'b0),
    .refclk(CLK_50MHZ_pad),
    .scanclk(1'b0),
    .stdby(1'b0),
    .clkc({open_n888,open_n889,open_n890,open_n891,\U1/clkc_wire [0]}));  // al_ip/altpll0.vhd(43)
  // ../../rtl/avr/avr.vhd(288)
  // ../../rtl/avr/avr.vhd(288)
  AL_PHY_LSLICE #(
    //.LUTF0("(~C*~D)"),
    //.LUTF1("(C*B*D)"),
    //.LUTG0("(~C*~D)"),
    //.LUTG1("(C*B*D)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000001111),
    .INIT_LUTF1(16'b1100000000000000),
    .INIT_LUTG0(16'b0000000000001111),
    .INIT_LUTG1(16'b1100000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U15/OSD_OVERLAY_reg|U15/OSD_POPUP_reg  (
    .b({_al_u1973_o,open_n896}),
    .c({_al_u1974_o,osd_popup}),
    .ce(\U15/mux3_b1_sel_is_3_o ),
    .clk(clk_28),
    .d({\U15/n37_lutinv ,osd_overlay}),
    .mi({\U15/spi_do [3],\U15/spi_do [7]}),
    .f({\U15/mux3_b1_sel_is_3_o ,\U8/mux19_b0_sel_is_0_o }),
    .q({osd_overlay,osd_popup}));  // ../../rtl/avr/avr.vhd(288)
  // ../../rtl/spi/spi_slave.vhd(272)
  // ../../rtl/spi/spi_slave.vhd(272)
  AL_PHY_LSLICE #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U15/U_SPI/do_valid_C_reg|U15/U_SPI/do_valid_B_reg  (
    .clk(clk_28),
    .mi({\U15/U_SPI/do_valid_B ,\U15/U_SPI/do_valid_A }),
    .q({\U15/U_SPI/do_valid_C ,\U15/U_SPI/do_valid_B }));  // ../../rtl/spi/spi_slave.vhd(272)
  AL_PHY_MSLICE #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U15/U_SPI/do_valid_D_reg  (
    .clk(clk_28),
    .mi({open_n963,\U15/U_SPI/do_valid_C }),
    .q({open_n970,\U15/U_SPI/do_valid_D }));  // ../../rtl/spi/spi_slave.vhd(272)
  // ../../rtl/spi/spi_slave.vhd(238)
  // ../../rtl/spi/spi_slave.vhd(238)
  AL_PHY_MSLICE #(
    //.LUT0("(~C*~(~B*~D))"),
    //.LUT1("~(~C*~(B*D))"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000111100001100),
    .INIT_LUT1(16'b1111110011110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("SR"))
    \U15/U_SPI/reg0_b0|U15/U_SPI/reg0_b4  (
    .b({\U15/U_SPI/n5_lutinv ,\U15/U_SPI/n15 [4]}),
    .c({\U15/U_SPI/n26_lutinv ,\U15/U_SPI/n27_lutinv }),
    .clk(AVR_SCK_pad),
    .d({\U15/U_SPI/n15 [0],\U15/U_SPI/n22_lutinv }),
    .sr(AVR_NCS_pad),
    .q({\U15/U_SPI/state_dbg_o[0] ,\U15/U_SPI/state_dbg_o[4] }));  // ../../rtl/spi/spi_slave.vhd(238)
  // ../../rtl/spi/spi_slave.vhd(238)
  // ../../rtl/spi/spi_slave.vhd(238)
  AL_PHY_MSLICE #(
    //.LUT0("~(~C*~(B*D))"),
    //.LUT1("~(~C*~(B*D))"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111110011110000),
    .INIT_LUT1(16'b1111110011110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("SR"))
    \U15/U_SPI/reg0_b1|U15/U_SPI/reg0_b3  (
    .b({\U15/U_SPI/n5_lutinv ,\U15/U_SPI/n5_lutinv }),
    .c({\U15/U_SPI/n26_lutinv ,\U15/U_SPI/n25 }),
    .clk(AVR_SCK_pad),
    .d({\U15/U_SPI/n15 [1],\U15/U_SPI/n15 [3]}),
    .sr(AVR_NCS_pad),
    .q({\U15/U_SPI/state_dbg_o[1] ,\U15/U_SPI/state_dbg_o[3] }));  // ../../rtl/spi/spi_slave.vhd(238)
  AL_PHY_MSLICE #(
    //.LUT0("(~(A)*B*C*~(D)*~(0)+A*B*C*~(D)*~(0)+~(A)*B*C*D*~(0)+A*B*C*D*~(0)+~(A)*~(B)*~(C)*~(D)*0+A*~(B)*~(C)*~(D)*0+~(A)*B*~(C)*~(D)*0+A*B*~(C)*~(D)*0+~(A)*B*C*~(D)*0+A*B*C*~(D)*0+~(A)*~(B)*~(C)*D*0+~(A)*B*~(C)*D*0+~(A)*~(B)*C*D*0+~(A)*B*C*D*0+A*B*C*D*0)"),
    //.LUT1("(~(A)*B*C*~(D)*~(1)+A*B*C*~(D)*~(1)+~(A)*B*C*D*~(1)+A*B*C*D*~(1)+~(A)*~(B)*~(C)*~(D)*1+A*~(B)*~(C)*~(D)*1+~(A)*B*~(C)*~(D)*1+A*B*~(C)*~(D)*1+~(A)*B*C*~(D)*1+A*B*C*~(D)*1+~(A)*~(B)*~(C)*D*1+~(A)*B*~(C)*D*1+~(A)*~(B)*C*D*1+~(A)*B*C*D*1+A*B*C*D*1)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1100000011000000),
    .INIT_LUT1(16'b1101010111001111),
    .MODE("LOGIC"),
    .MSFXMUX("ON"),
    .REG0_REGSET("RESET"),
    .REG0_SD("FX"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U15/U_SPI/reg1_b0  (
    .a({\U15/U_SPI/state_dbg_o[0] ,\U15/U_SPI/state_dbg_o[0] }),
    .b({\U15/U_SPI/sh_reg [0],\U15/U_SPI/sh_reg [0]}),
    .c({\U15/U_SPI/n27_lutinv ,\U15/U_SPI/n27_lutinv }),
    .clk(AVR_SCK_pad),
    .d({\U15/U_SPI/n22_lutinv ,\U15/U_SPI/n22_lutinv }),
    .mi({open_n1022,\U15/U_SPI/rx_bit_reg_o }),
    .q({open_n1029,\U15/U_SPI/sh_reg [0]}));  // ../../rtl/spi/spi_slave.vhd(245)
  // ../../rtl/spi/spi_slave.vhd(245)
  // ../../rtl/spi/spi_slave.vhd(245)
  AL_PHY_LSLICE #(
    //.LUTF0("((B*~A)*~(C)*~(D)+(B*~A)*C*~(D)+~((B*~A))*C*D+(B*~A)*C*D)"),
    //.LUTF1("((B*~A)*~(C)*~(D)+(B*~A)*C*~(D)+~((B*~A))*C*D+(B*~A)*C*D)"),
    //.LUTG0("((B*~A)*~(C)*~(D)+(B*~A)*C*~(D)+~((B*~A))*C*D+(B*~A)*C*D)"),
    //.LUTG1("((B*~A)*~(C)*~(D)+(B*~A)*C*~(D)+~((B*~A))*C*D+(B*~A)*C*D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111000001000100),
    .INIT_LUTF1(16'b1111000001000100),
    .INIT_LUTG0(16'b1111000001000100),
    .INIT_LUTG1(16'b1111000001000100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U15/U_SPI/reg1_b10|U15/U_SPI/reg1_b9  (
    .a({\U15/U_SPI/n22_lutinv ,\U15/U_SPI/n22_lutinv }),
    .b(\U15/U_SPI/sh_reg [9:8]),
    .c(\U15/U_SPI/sh_reg [10:9]),
    .clk(AVR_SCK_pad),
    .d({\U15/U_SPI/n27_lutinv ,\U15/U_SPI/n27_lutinv }),
    .q(\U15/U_SPI/sh_reg [10:9]));  // ../../rtl/spi/spi_slave.vhd(245)
  // ../../rtl/spi/spi_slave.vhd(245)
  // ../../rtl/spi/spi_slave.vhd(245)
  AL_PHY_MSLICE #(
    //.LUT0("((B*~A)*~(C)*~(D)+(B*~A)*C*~(D)+~((B*~A))*C*D+(B*~A)*C*D)"),
    //.LUT1("((B*~A)*~(C)*~(D)+(B*~A)*C*~(D)+~((B*~A))*C*D+(B*~A)*C*D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111000001000100),
    .INIT_LUT1(16'b1111000001000100),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U15/U_SPI/reg1_b11|U15/U_SPI/reg1_b12  (
    .a({\U15/U_SPI/n22_lutinv ,\U15/U_SPI/n22_lutinv }),
    .b({\U15/U_SPI/sh_reg [10],\U15/U_SPI/sh_reg [11]}),
    .c({\U15/U_SPI/sh_reg [11],\U15/U_SPI/sh_reg [12]}),
    .clk(AVR_SCK_pad),
    .d({\U15/U_SPI/n27_lutinv ,\U15/U_SPI/n27_lutinv }),
    .q({\U15/U_SPI/sh_reg [11],\U15/U_SPI/sh_reg [12]}));  // ../../rtl/spi/spi_slave.vhd(245)
  // ../../rtl/spi/spi_slave.vhd(245)
  // ../../rtl/spi/spi_slave.vhd(245)
  AL_PHY_LSLICE #(
    //.LUTF0("((B*~A)*~(C)*~(D)+(B*~A)*C*~(D)+~((B*~A))*C*D+(B*~A)*C*D)"),
    //.LUTF1("((B*~A)*~(C)*~(D)+(B*~A)*C*~(D)+~((B*~A))*C*D+(B*~A)*C*D)"),
    //.LUTG0("((B*~A)*~(C)*~(D)+(B*~A)*C*~(D)+~((B*~A))*C*D+(B*~A)*C*D)"),
    //.LUTG1("((B*~A)*~(C)*~(D)+(B*~A)*C*~(D)+~((B*~A))*C*D+(B*~A)*C*D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111000001000100),
    .INIT_LUTF1(16'b1111000001000100),
    .INIT_LUTG0(16'b1111000001000100),
    .INIT_LUTG1(16'b1111000001000100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U15/U_SPI/reg1_b13|U15/U_SPI/reg1_b14  (
    .a({\U15/U_SPI/n22_lutinv ,\U15/U_SPI/n22_lutinv }),
    .b({\U15/U_SPI/sh_reg [12],\U15/U_SPI/sh_reg [13]}),
    .c({\U15/U_SPI/sh_reg [13],\U15/U_SPI/sh_reg [14]}),
    .clk(AVR_SCK_pad),
    .d({\U15/U_SPI/n27_lutinv ,\U15/U_SPI/n27_lutinv }),
    .q({\U15/U_SPI/sh_reg [13],\U15/U_SPI/sh_reg [14]}));  // ../../rtl/spi/spi_slave.vhd(245)
  // ../../rtl/spi/spi_slave.vhd(245)
  // ../../rtl/spi/spi_slave.vhd(245)
  AL_PHY_LSLICE #(
    //.LUTF0("((B*~A)*~(C)*~(D)+(B*~A)*C*~(D)+~((B*~A))*C*D+(B*~A)*C*D)"),
    //.LUTF1("((B*~A)*~(C)*~(D)+(B*~A)*C*~(D)+~((B*~A))*C*D+(B*~A)*C*D)"),
    //.LUTG0("((B*~A)*~(C)*~(D)+(B*~A)*C*~(D)+~((B*~A))*C*D+(B*~A)*C*D)"),
    //.LUTG1("((B*~A)*~(C)*~(D)+(B*~A)*C*~(D)+~((B*~A))*C*D+(B*~A)*C*D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111000001000100),
    .INIT_LUTF1(16'b1111000001000100),
    .INIT_LUTG0(16'b1111000001000100),
    .INIT_LUTG1(16'b1111000001000100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U15/U_SPI/reg1_b15|U15/U_SPI/reg1_b16  (
    .a({\U15/U_SPI/n22_lutinv ,\U15/U_SPI/n22_lutinv }),
    .b({\U15/U_SPI/sh_reg [14],\U15/U_SPI/sh_reg [15]}),
    .c({\U15/U_SPI/sh_reg [15],\U15/U_SPI/sh_reg [16]}),
    .clk(AVR_SCK_pad),
    .d({\U15/U_SPI/n27_lutinv ,\U15/U_SPI/n27_lutinv }),
    .q({\U15/U_SPI/sh_reg [15],\U15/U_SPI/sh_reg [16]}));  // ../../rtl/spi/spi_slave.vhd(245)
  // ../../rtl/spi/spi_slave.vhd(245)
  // ../../rtl/spi/spi_slave.vhd(245)
  AL_PHY_MSLICE #(
    //.LUT0("((B*~A)*~(C)*~(D)+(B*~A)*C*~(D)+~((B*~A))*C*D+(B*~A)*C*D)"),
    //.LUT1("((B*~A)*~(C)*~(D)+(B*~A)*C*~(D)+~((B*~A))*C*D+(B*~A)*C*D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111000001000100),
    .INIT_LUT1(16'b1111000001000100),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U15/U_SPI/reg1_b17|U15/U_SPI/reg1_b18  (
    .a({\U15/U_SPI/n22_lutinv ,\U15/U_SPI/n22_lutinv }),
    .b({\U15/U_SPI/sh_reg [16],\U15/U_SPI/sh_reg [17]}),
    .c({\U15/U_SPI/sh_reg [17],\U15/U_SPI/sh_reg [18]}),
    .clk(AVR_SCK_pad),
    .d({\U15/U_SPI/n27_lutinv ,\U15/U_SPI/n27_lutinv }),
    .q({\U15/U_SPI/sh_reg [17],\U15/U_SPI/sh_reg [18]}));  // ../../rtl/spi/spi_slave.vhd(245)
  // ../../rtl/spi/spi_slave.vhd(245)
  // ../../rtl/spi/spi_slave.vhd(245)
  AL_PHY_LSLICE #(
    //.LUTF0("((B*~A)*~(C)*~(D)+(B*~A)*C*~(D)+~((B*~A))*C*D+(B*~A)*C*D)"),
    //.LUTF1("((B*~A)*~(C)*~(D)+(B*~A)*C*~(D)+~((B*~A))*C*D+(B*~A)*C*D)"),
    //.LUTG0("((B*~A)*~(C)*~(D)+(B*~A)*C*~(D)+~((B*~A))*C*D+(B*~A)*C*D)"),
    //.LUTG1("((B*~A)*~(C)*~(D)+(B*~A)*C*~(D)+~((B*~A))*C*D+(B*~A)*C*D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111000001000100),
    .INIT_LUTF1(16'b1111000001000100),
    .INIT_LUTG0(16'b1111000001000100),
    .INIT_LUTG1(16'b1111000001000100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U15/U_SPI/reg1_b19|U15/U_SPI/reg1_b20  (
    .a({\U15/U_SPI/n22_lutinv ,\U15/U_SPI/n22_lutinv }),
    .b({\U15/U_SPI/sh_reg [18],\U15/U_SPI/sh_reg [19]}),
    .c({\U15/U_SPI/sh_reg [19],\U15/U_SPI/sh_reg [20]}),
    .clk(AVR_SCK_pad),
    .d({\U15/U_SPI/n27_lutinv ,\U15/U_SPI/n27_lutinv }),
    .q({\U15/U_SPI/sh_reg [19],\U15/U_SPI/sh_reg [20]}));  // ../../rtl/spi/spi_slave.vhd(245)
  // ../../rtl/spi/spi_slave.vhd(245)
  // ../../rtl/spi/spi_slave.vhd(245)
  AL_PHY_MSLICE #(
    //.LUT0("((B*~A)*~(C)*~(D)+(B*~A)*C*~(D)+~((B*~A))*C*D+(B*~A)*C*D)"),
    //.LUT1("((B*~A)*~(C)*~(D)+(B*~A)*C*~(D)+~((B*~A))*C*D+(B*~A)*C*D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111000001000100),
    .INIT_LUT1(16'b1111000001000100),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U15/U_SPI/reg1_b1|U15/U_SPI/reg1_b2  (
    .a({\U15/U_SPI/n22_lutinv ,\U15/U_SPI/n22_lutinv }),
    .b({\U15/U_SPI/sh_reg [0],\U15/U_SPI/sh_reg [1]}),
    .c({\U15/U_SPI/sh_reg [1],\U15/U_SPI/sh_reg [2]}),
    .clk(AVR_SCK_pad),
    .d({\U15/U_SPI/n27_lutinv ,\U15/U_SPI/n27_lutinv }),
    .q({\U15/U_SPI/sh_reg [1],\U15/U_SPI/sh_reg [2]}));  // ../../rtl/spi/spi_slave.vhd(245)
  // ../../rtl/spi/spi_slave.vhd(245)
  // ../../rtl/spi/spi_slave.vhd(245)
  AL_PHY_LSLICE #(
    //.LUTF0("((B*~A)*~(C)*~(D)+(B*~A)*C*~(D)+~((B*~A))*C*D+(B*~A)*C*D)"),
    //.LUTF1("((B*~A)*~(C)*~(D)+(B*~A)*C*~(D)+~((B*~A))*C*D+(B*~A)*C*D)"),
    //.LUTG0("((B*~A)*~(C)*~(D)+(B*~A)*C*~(D)+~((B*~A))*C*D+(B*~A)*C*D)"),
    //.LUTG1("((B*~A)*~(C)*~(D)+(B*~A)*C*~(D)+~((B*~A))*C*D+(B*~A)*C*D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111000001000100),
    .INIT_LUTF1(16'b1111000001000100),
    .INIT_LUTG0(16'b1111000001000100),
    .INIT_LUTG1(16'b1111000001000100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U15/U_SPI/reg1_b21|U15/U_SPI/reg1_b22  (
    .a({\U15/U_SPI/n22_lutinv ,\U15/U_SPI/n22_lutinv }),
    .b({\U15/U_SPI/sh_reg [20],\U15/U_SPI/sh_reg [21]}),
    .c({\U15/U_SPI/sh_reg [21],\U15/U_SPI/sh_reg [22]}),
    .clk(AVR_SCK_pad),
    .d({\U15/U_SPI/n27_lutinv ,\U15/U_SPI/n27_lutinv }),
    .q({\U15/U_SPI/sh_reg [21],\U15/U_SPI/sh_reg [22]}));  // ../../rtl/spi/spi_slave.vhd(245)
  // ../../rtl/spi/spi_slave.vhd(245)
  // ../../rtl/spi/spi_slave.vhd(245)
  AL_PHY_MSLICE #(
    //.LUT0("((B*~A)*~(C)*~(D)+(B*~A)*C*~(D)+~((B*~A))*C*D+(B*~A)*C*D)"),
    //.LUT1("((B*~A)*~(C)*~(D)+(B*~A)*C*~(D)+~((B*~A))*C*D+(B*~A)*C*D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111000001000100),
    .INIT_LUT1(16'b1111000001000100),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U15/U_SPI/reg1_b3|U15/U_SPI/reg1_b4  (
    .a({\U15/U_SPI/n22_lutinv ,\U15/U_SPI/n22_lutinv }),
    .b({\U15/U_SPI/sh_reg [2],\U15/U_SPI/sh_reg [3]}),
    .c({\U15/U_SPI/sh_reg [3],\U15/U_SPI/sh_reg [4]}),
    .clk(AVR_SCK_pad),
    .d({\U15/U_SPI/n27_lutinv ,\U15/U_SPI/n27_lutinv }),
    .q({\U15/U_SPI/sh_reg [3],\U15/U_SPI/sh_reg [4]}));  // ../../rtl/spi/spi_slave.vhd(245)
  // ../../rtl/spi/spi_slave.vhd(245)
  // ../../rtl/spi/spi_slave.vhd(245)
  AL_PHY_MSLICE #(
    //.LUT0("((B*~A)*~(C)*~(D)+(B*~A)*C*~(D)+~((B*~A))*C*D+(B*~A)*C*D)"),
    //.LUT1("((B*~A)*~(C)*~(D)+(B*~A)*C*~(D)+~((B*~A))*C*D+(B*~A)*C*D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111000001000100),
    .INIT_LUT1(16'b1111000001000100),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U15/U_SPI/reg1_b5|U15/U_SPI/reg1_b6  (
    .a({\U15/U_SPI/n22_lutinv ,\U15/U_SPI/n22_lutinv }),
    .b({\U15/U_SPI/sh_reg [4],\U15/U_SPI/sh_reg [5]}),
    .c({\U15/U_SPI/sh_reg [5],\U15/U_SPI/sh_reg [6]}),
    .clk(AVR_SCK_pad),
    .d({\U15/U_SPI/n27_lutinv ,\U15/U_SPI/n27_lutinv }),
    .q({\U15/U_SPI/sh_reg [5],\U15/U_SPI/sh_reg [6]}));  // ../../rtl/spi/spi_slave.vhd(245)
  // ../../rtl/spi/spi_slave.vhd(245)
  // ../../rtl/spi/spi_slave.vhd(245)
  AL_PHY_LSLICE #(
    //.LUTF0("((B*~A)*~(C)*~(D)+(B*~A)*C*~(D)+~((B*~A))*C*D+(B*~A)*C*D)"),
    //.LUTF1("((B*~A)*~(C)*~(D)+(B*~A)*C*~(D)+~((B*~A))*C*D+(B*~A)*C*D)"),
    //.LUTG0("((B*~A)*~(C)*~(D)+(B*~A)*C*~(D)+~((B*~A))*C*D+(B*~A)*C*D)"),
    //.LUTG1("((B*~A)*~(C)*~(D)+(B*~A)*C*~(D)+~((B*~A))*C*D+(B*~A)*C*D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111000001000100),
    .INIT_LUTF1(16'b1111000001000100),
    .INIT_LUTG0(16'b1111000001000100),
    .INIT_LUTG1(16'b1111000001000100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U15/U_SPI/reg1_b7|U15/U_SPI/reg1_b8  (
    .a({\U15/U_SPI/n22_lutinv ,\U15/U_SPI/n22_lutinv }),
    .b({\U15/U_SPI/sh_reg [6],\U15/U_SPI/sh_reg [7]}),
    .c({\U15/U_SPI/sh_reg [7],\U15/U_SPI/sh_reg [8]}),
    .clk(AVR_SCK_pad),
    .d({\U15/U_SPI/n27_lutinv ,\U15/U_SPI/n27_lutinv }),
    .q({\U15/U_SPI/sh_reg [7],\U15/U_SPI/sh_reg [8]}));  // ../../rtl/spi/spi_slave.vhd(245)
  // ../../rtl/spi/spi_slave.vhd(245)
  // ../../rtl/spi/spi_slave.vhd(245)
  AL_PHY_LSLICE #(
    //.LUTF0("(0*D*C*~B*~A)"),
    //.LUTF1("(0*D*C*~B*~A)"),
    //.LUTG0("(1*D*C*~B*~A)"),
    //.LUTG1("(1*D*C*~B*~A)"),
    .CEMUX("CE"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b0000000000000000),
    .INIT_LUTG0(16'b0001000000000000),
    .INIT_LUTG1(16'b0001000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U15/U_SPI/reg2_b10|U15/U_SPI/reg2_b11  (
    .a(\U15/spi_do [11:10]),
    .b({\U15/spi_do [8],\U15/spi_do [9]}),
    .c({\U15/spi_do_valid ,\U15/spi_do [11]}),
    .ce(\U15/U_SPI/n25 ),
    .clk(AVR_SCK_pad),
    .d({\U15/spi_do [10],\U15/spi_do [8]}),
    .e({\U15/spi_do [9],\U15/spi_do_valid }),
    .mi({\U15/U_SPI/sh_reg [9],\U15/U_SPI/sh_reg [10]}),
    .f({_al_u1976_o,_al_u1974_o}),
    .q({\U15/spi_do [10],\U15/spi_do [11]}));  // ../../rtl/spi/spi_slave.vhd(245)
  // ../../rtl/spi/spi_slave.vhd(245)
  // ../../rtl/spi/spi_slave.vhd(245)
  AL_PHY_LSLICE #(
    //.LUTF0("(D*C*(B@A))"),
    //.LUTF1("(~D*~C*~B*~A)"),
    //.LUTG0("(D*C*(B@A))"),
    //.LUTG1("(~D*~C*~B*~A)"),
    .CEMUX("CE"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0110000000000000),
    .INIT_LUTF1(16'b0000000000000001),
    .INIT_LUTG0(16'b0110000000000000),
    .INIT_LUTG1(16'b0000000000000001),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U15/U_SPI/reg2_b12|U15/U_SPI/reg2_b7  (
    .a({\U15/spi_do [12],soft_sw[2]}),
    .b({\U15/spi_do [13],\U7/vid_a_spec [7]}),
    .c({\U15/spi_do [14],\U7/vid_a_spec [6]}),
    .ce(\U15/U_SPI/n25 ),
    .clk(AVR_SCK_pad),
    .d({\U15/spi_do [15],\U7/vid_a_spec [5]}),
    .mi({\U15/U_SPI/sh_reg [11],\U15/U_SPI/sh_reg [6]}),
    .f({_al_u1973_o,_al_u2185_o}),
    .q({\U15/spi_do [12],\U15/spi_do [7]}));  // ../../rtl/spi/spi_slave.vhd(245)
  // ../../rtl/spi/spi_slave.vhd(245)
  // ../../rtl/spi/spi_slave.vhd(245)
  AL_PHY_LSLICE #(
    .CEMUX("CE"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U15/U_SPI/reg2_b13|U15/U_SPI/reg2_b9  (
    .ce(\U15/U_SPI/n25 ),
    .clk(AVR_SCK_pad),
    .mi({\U15/U_SPI/sh_reg [12],\U15/U_SPI/sh_reg [8]}),
    .q({\U15/spi_do [13],\U15/spi_do [9]}));  // ../../rtl/spi/spi_slave.vhd(245)
  AL_PHY_MSLICE #(
    //.LUT0("(0*~C*(A*~(B)*~(D)+A*B*~(D)+~(A)*B*D+A*B*D))"),
    //.LUT1("(1*~C*(A*~(B)*~(D)+A*B*~(D)+~(A)*B*D+A*B*D))"),
    .CEMUX("CE"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000000000000),
    .INIT_LUT1(16'b0000110000001010),
    .MODE("LOGIC"),
    .MSFXMUX("ON"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U15/U_SPI/reg2_b15|_al_u2254  (
    .a({\U9/LINEBUF/inst_dob_i0_007 ,\U9/LINEBUF/inst_dob_i0_007 }),
    .b({\U9/LINEBUF/inst_dob_i1_007 ,\U9/LINEBUF/inst_dob_i1_007 }),
    .c({soft_sw[1],soft_sw[1]}),
    .ce(\U15/U_SPI/n25 ),
    .clk(AVR_SCK_pad),
    .d({\U9/n40_piped ,\U9/n40_piped }),
    .mi({\U15/U_SPI/sh_reg [14],\U9/VGA_BLANK }),
    .fx({open_n1339,_al_u2254_o}),
    .q({\U15/spi_do [15],open_n1340}));  // ../../rtl/spi/spi_slave.vhd(245)
  // ../../rtl/spi/spi_slave.vhd(245)
  // ../../rtl/spi/spi_slave.vhd(245)
  AL_PHY_LSLICE #(
    //.LUTF0("(D*C*B*~A)"),
    //.LUTF1("(C*B*~D)"),
    //.LUTG0("(D*C*B*~A)"),
    //.LUTG1("(C*B*~D)"),
    .CEMUX("CE"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0100000000000000),
    .INIT_LUTF1(16'b0000000011000000),
    .INIT_LUTG0(16'b0100000000000000),
    .INIT_LUTG1(16'b0000000011000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U15/U_SPI/reg2_b16|U15/U_SPI/reg2_b21  (
    .a({open_n1341,\U15/spi_do [16]}),
    .b({\U15/spi_do [16],\U15/spi_do_valid }),
    .c({_al_u1932_o,_al_u1932_o}),
    .ce(\U15/U_SPI/n25 ),
    .clk(AVR_SCK_pad),
    .d({\U15/spi_do [21],\U15/spi_do [21]}),
    .mi({\U15/U_SPI/sh_reg [15],\U15/U_SPI/sh_reg [20]}),
    .f({\U15/n37_lutinv ,\U15/mux13_b0_sel_is_3_o }),
    .q({\U15/spi_do [16],\U15/spi_do [21]}));  // ../../rtl/spi/spi_slave.vhd(245)
  // ../../rtl/spi/spi_slave.vhd(245)
  // ../../rtl/spi/spi_slave.vhd(245)
  AL_PHY_LSLICE #(
    //.LUTF0("(~D*~C*~B*~A)"),
    //.LUTF1("(C*~B*~D)"),
    //.LUTG0("(~D*~C*~B*~A)"),
    //.LUTG1("(C*~B*~D)"),
    .CEMUX("CE"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000000001),
    .INIT_LUTF1(16'b0000000000110000),
    .INIT_LUTG0(16'b0000000000000001),
    .INIT_LUTG1(16'b0000000000110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U15/U_SPI/reg2_b17|U15/U_SPI/reg2_b19  (
    .a({open_n1360,\U15/spi_do [19]}),
    .b({\U15/spi_do [18],\U15/spi_do [20]}),
    .c({_al_u1931_o,\U15/spi_do [22]}),
    .ce(\U15/U_SPI/n25 ),
    .clk(AVR_SCK_pad),
    .d({\U15/spi_do [17],\U15/spi_do [23]}),
    .mi({\U15/U_SPI/sh_reg [16],\U15/U_SPI/sh_reg [18]}),
    .f({_al_u1932_o,_al_u1931_o}),
    .q({\U15/spi_do [17],\U15/spi_do [19]}));  // ../../rtl/spi/spi_slave.vhd(245)
  // ../../rtl/spi/spi_slave.vhd(245)
  // ../../rtl/spi/spi_slave.vhd(245)
  AL_PHY_MSLICE #(
    .CEMUX("CE"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U15/U_SPI/reg2_b18|U15/U_SPI/reg2_b14  (
    .ce(\U15/U_SPI/n25 ),
    .clk(AVR_SCK_pad),
    .mi({\U15/U_SPI/sh_reg [17],\U15/U_SPI/sh_reg [13]}),
    .q({\U15/spi_do [18],\U15/spi_do [14]}));  // ../../rtl/spi/spi_slave.vhd(245)
  // ../../rtl/spi/spi_slave.vhd(245)
  // ../../rtl/spi/spi_slave.vhd(245)
  AL_PHY_MSLICE #(
    .CEMUX("CE"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U15/U_SPI/reg2_b20|U15/U_SPI/reg2_b4  (
    .ce(\U15/U_SPI/n25 ),
    .clk(AVR_SCK_pad),
    .mi({\U15/U_SPI/sh_reg [19],\U15/U_SPI/sh_reg [3]}),
    .q({\U15/spi_do [20],\U15/spi_do [4]}));  // ../../rtl/spi/spi_slave.vhd(245)
  AL_PHY_LSLICE #(
    .CEMUX("CE"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U15/U_SPI/reg2_b22  (
    .ce(\U15/U_SPI/n25 ),
    .clk(AVR_SCK_pad),
    .mi({open_n1438,\U15/U_SPI/sh_reg [21]}),
    .q({open_n1456,\U15/spi_do [22]}));  // ../../rtl/spi/spi_slave.vhd(245)
  // ../../rtl/spi/spi_slave.vhd(245)
  // ../../rtl/spi/spi_slave.vhd(245)
  AL_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("CE"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U15/U_SPI/reg2_b23|U15/U_SPI/reg2_b1  (
    .c({\U15/U_SPI/sh_reg [23],\U15/U_SPI/n22_lutinv }),
    .ce(\U15/U_SPI/n25 ),
    .clk(AVR_SCK_pad),
    .d({\U15/U_SPI/n26_lutinv ,\U15/U_SPI/state_dbg_o[0] }),
    .mi({\U15/U_SPI/sh_reg [22],\U15/U_SPI/sh_reg [0]}),
    .f({\U15/spi_miso ,\U15/U_SPI/n26_lutinv }),
    .q({\U15/spi_do [23],\U15/spi_do [1]}));  // ../../rtl/spi/spi_slave.vhd(245)
  // ../../rtl/spi/spi_slave.vhd(245)
  // ../../rtl/spi/spi_slave.vhd(245)
  AL_PHY_LSLICE #(
    //.LUTF0("(0*D*~(~C*~B*~A))"),
    //.LUTF1("(C*D)"),
    //.LUTG0("(1*D*~(~C*~B*~A))"),
    //.LUTG1("(C*D)"),
    .CEMUX("CE"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b1111000000000000),
    .INIT_LUTG0(16'b1111111000000000),
    .INIT_LUTG1(16'b1111000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U15/U_SPI/reg2_b2|U15/U_SPI/reg2_b0  (
    .a({open_n1479,\U15/U_SPI/state_dbg_o[0] }),
    .b({open_n1480,\U15/U_SPI/state_dbg_o[1] }),
    .c({\U15/U_SPI/state_dbg_o[0] ,\U15/U_SPI/state_dbg_o[2] }),
    .ce(\U15/U_SPI/n25 ),
    .clk(AVR_SCK_pad),
    .d({\U15/U_SPI/n22_lutinv ,\U15/U_SPI/state_dbg_o[3] }),
    .e({open_n1481,\U15/U_SPI/state_dbg_o[4] }),
    .mi({\U15/U_SPI/sh_reg [1],\U15/U_SPI/rx_bit_reg_o }),
    .f({\U15/U_SPI/n25 ,\U15/U_SPI/n27_lutinv }),
    .q({\U15/spi_do [2],\U15/spi_do [0]}));  // ../../rtl/spi/spi_slave.vhd(245)
  AL_PHY_MSLICE #(
    //.LUT0("(0*D*~C*~B*~A)"),
    //.LUT1("(1*D*~C*~B*~A)"),
    .CEMUX("CE"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000000000000),
    .INIT_LUT1(16'b0000000100000000),
    .MODE("LOGIC"),
    .MSFXMUX("ON"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U15/U_SPI/reg2_b8|_al_u2102  (
    .a({soft_sw[1],soft_sw[1]}),
    .b({\U9/VGA_V [6],\U9/VGA_V [6]}),
    .c({\U9/VGA_V [9],\U9/VGA_V [9]}),
    .ce(\U15/U_SPI/n25 ),
    .clk(AVR_SCK_pad),
    .d({_al_u2099_o,_al_u2099_o}),
    .mi({\U15/U_SPI/sh_reg [7],\U9/VGA_V [2]}),
    .fx({open_n1512,_al_u2102_o}),
    .q({\U15/spi_do [8],open_n1513}));  // ../../rtl/spi/spi_slave.vhd(245)
  AL_PHY_PAD #(
    //.CLKSRC("CLK"),
    //.LOCATION("P90"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    .INCEMUX("1"),
    .INCLKMUX("CLK"),
    .INRSTMUX("0"),
    .IN_DFFMODE("FF"),
    .IN_REGSET("RESET"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .SRMODE("ASYNC"),
    .TSMUX("1"))
    \U15/U_SPI/rx_bit_reg_reg_IN  (
    .ce(1'b1),
    .clk(AVR_SCK_pad),
    .ipad(AVR_MOSI),
    .itrue(\U15/U_SPI/rx_bit_reg_o ));  // ../../rtl/spi/spi_slave.vhd(224)
  AL_PHY_MSLICE #(
    //.MACRO("U15/U_SPI/sub0/u0|U15/U_SPI/sub0/ucin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("SUB_CARRY"),
    .INIT_LUT0(16'b0000000000000101),
    .INIT_LUT1(16'b1001100110011010),
    .MODE("RIPPLE"))
    \U15/U_SPI/sub0/u0|U15/U_SPI/sub0/ucin  (
    .a({\U15/U_SPI/state_dbg_o[0] ,1'b0}),
    .b({1'b1,open_n1523}),
    .f({\U15/U_SPI/n15 [0],open_n1543}),
    .fco(\U15/U_SPI/sub0/c1 ));
  AL_PHY_MSLICE #(
    //.MACRO("U15/U_SPI/sub0/u0|U15/U_SPI/sub0/ucin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("SUB"),
    .INIT_LUT0(16'b1001100110011010),
    .INIT_LUT1(16'b1001100110011010),
    .MODE("RIPPLE"))
    \U15/U_SPI/sub0/u2|U15/U_SPI/sub0/u1  (
    .a({\U15/U_SPI/state_dbg_o[2] ,\U15/U_SPI/state_dbg_o[1] }),
    .b(2'b00),
    .fci(\U15/U_SPI/sub0/c1 ),
    .f(\U15/U_SPI/n15 [2:1]),
    .fco(\U15/U_SPI/sub0/c3 ));
  AL_PHY_MSLICE #(
    //.MACRO("U15/U_SPI/sub0/u0|U15/U_SPI/sub0/ucin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("SUB"),
    .INIT_LUT0(16'b1001100110011010),
    .INIT_LUT1(16'b1001100110011010),
    .MODE("RIPPLE"))
    \U15/U_SPI/sub0/u4|U15/U_SPI/sub0/u3  (
    .a({\U15/U_SPI/state_dbg_o[4] ,\U15/U_SPI/state_dbg_o[3] }),
    .b(2'b00),
    .fci(\U15/U_SPI/sub0/c3 ),
    .f(\U15/U_SPI/n15 [4:3]));
  // ../../rtl/avr/avr.vhd(288)
  // ../../rtl/avr/avr.vhd(288)
  AL_PHY_LSLICE #(
    //.LUTF0("(0*D*~C*~B*~A)"),
    //.LUTF1("(D*C*~B*~A)"),
    //.LUTG0("(1*D*~C*~B*~A)"),
    //.LUTG1("(D*C*~B*~A)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b0001000000000000),
    .INIT_LUTG0(16'b0000000100000000),
    .INIT_LUTG1(16'b0001000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U15/reg12_b10|U15/reg12_b11  (
    .a({osd_command[10],osd_command[10]}),
    .b({osd_command[11],osd_command[11]}),
    .c({_al_u1935_o,osd_command[9]}),
    .ce(\U15/mux13_b0_sel_is_3_o ),
    .clk(clk_28),
    .d({osd_command[9],_al_u1909_o}),
    .e({open_n1593,\U8/n74 }),
    .mi({\U15/spi_do [10],\U15/spi_do [11]}),
    .f({\U8/mux23_b0_sel_is_3_o ,\U8/mux22_b5_sel_is_3_o }),
    .q({osd_command[10],osd_command[11]}));  // ../../rtl/avr/avr.vhd(288)
  // ../../rtl/avr/avr.vhd(288)
  // ../../rtl/avr/avr.vhd(288)
  AL_PHY_LSLICE #(
    //.LUTF0("(0*D*~C*~B*~A)"),
    //.LUTF1("(0*~D*~C*~B*~A)"),
    //.LUTG0("(1*D*~C*~B*~A)"),
    //.LUTG1("(1*~D*~C*~B*~A)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b0000000000000000),
    .INIT_LUTG0(16'b0000000100000000),
    .INIT_LUTG1(16'b0000000000000001),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U15/reg12_b12|U15/reg12_b13  (
    .a({osd_command[13],osd_command[13]}),
    .b({osd_command[14],osd_command[14]}),
    .c({osd_command[15],osd_command[15]}),
    .ce(\U15/mux13_b0_sel_is_3_o ),
    .clk(clk_28),
    .d({osd_command[8],osd_command[12]}),
    .e({osd_command[12],osd_command[8]}),
    .mi({\U15/spi_do [12],\U15/spi_do [13]}),
    .f({_al_u1934_o,_al_u1909_o}),
    .q({osd_command[12],osd_command[13]}));  // ../../rtl/avr/avr.vhd(288)
  // ../../rtl/avr/avr.vhd(288)
  // ../../rtl/avr/avr.vhd(288)
  AL_PHY_LSLICE #(
    //.LUTF0("(~(D@C)*~(B@A))"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(~(D@C)*~(B@A))"),
    //.LUTG1("(C*~D)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1001000000001001),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b1001000000001001),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U15/reg12_b14|U15/reg12_b2  (
    .a({open_n1626,osd_command[2]}),
    .b({open_n1627,\U8/last_osd_command [2]}),
    .c({osd_command[14],osd_command[8]}),
    .ce(\U15/mux13_b0_sel_is_3_o ),
    .clk(clk_28),
    .d({\U8/last_osd_command [14],\U8/last_osd_command [8]}),
    .mi({\U15/spi_do [14],\U15/spi_do [2]}),
    .f({_al_u1876_o,_al_u1873_o}),
    .q({osd_command[14],osd_command[2]}));  // ../../rtl/avr/avr.vhd(288)
  // ../../rtl/avr/avr.vhd(288)
  // ../../rtl/avr/avr.vhd(288)
  AL_PHY_LSLICE #(
    //.LUTF0("(0*~C*(A*~(B)*~(D)+A*B*~(D)+~(A)*B*D+A*B*D))"),
    //.LUTF1("~(~C*~(B*D))"),
    //.LUTG0("(1*~C*(A*~(B)*~(D)+A*B*~(D)+~(A)*B*D+A*B*D))"),
    //.LUTG1("~(~C*~(B*D))"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b1111110011110000),
    .INIT_LUTG0(16'b0000110000001010),
    .INIT_LUTG1(16'b1111110011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U15/reg12_b15|U15/reg12_b8  (
    .a({open_n1646,\U9/LINEBUF/inst_dob_i0_004 }),
    .b({vid_rgb_osd[4],\U9/LINEBUF/inst_dob_i1_004 }),
    .c({_al_u2262_o,soft_sw[1]}),
    .ce(\U15/mux13_b0_sel_is_3_o ),
    .clk(clk_28),
    .d({soft_sw[1],\U9/n40_piped }),
    .e({open_n1647,\U9/VGA_BLANK }),
    .mi({\U15/spi_do [15],\U15/spi_do [8]}),
    .f({\U9/n48 [4],_al_u2262_o}),
    .q({osd_command[15],osd_command[8]}));  // ../../rtl/avr/avr.vhd(288)
  // ../../rtl/avr/avr.vhd(288)
  // ../../rtl/avr/avr.vhd(288)
  AL_PHY_LSLICE #(
    //.LUTF0("(0*~(D@C)*~(B@A))"),
    //.LUTF1("(~(D@C)*~(B@A))"),
    //.LUTG0("(1*~(D@C)*~(B@A))"),
    //.LUTG1("(~(D@C)*~(B@A))"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b1001000000001001),
    .INIT_LUTG0(16'b1001000000001001),
    .INIT_LUTG1(16'b1001000000001001),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U15/reg12_b3|U15/reg12_b0  (
    .a({osd_command[13],osd_command[0]}),
    .b({\U8/last_osd_command [13],\U8/last_osd_command [0]}),
    .c({osd_command[3],osd_command[15]}),
    .ce(\U15/mux13_b0_sel_is_3_o ),
    .clk(clk_28),
    .d({\U8/last_osd_command [3],\U8/last_osd_command [15]}),
    .e({open_n1664,_al_u1879_o}),
    .mi({\U15/spi_do [3],\U15/spi_do [0]}),
    .f({_al_u1879_o,_al_u1880_o}),
    .q({osd_command[3],osd_command[0]}));  // ../../rtl/avr/avr.vhd(288)
  // ../../rtl/avr/avr.vhd(288)
  // ../../rtl/avr/avr.vhd(288)
  AL_PHY_MSLICE #(
    //.LUT0("(~(D*~C)*~(B*~A))"),
    //.LUT1("(D*C*~(B@A))"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1011000010111011),
    .INIT_LUT1(16'b1001000000000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U15/reg12_b4|U15/reg12_b5  (
    .a({osd_command[4],osd_command[5]}),
    .b({\U8/last_osd_command [4],\U8/last_osd_command [5]}),
    .c({_al_u1872_o,\U8/last_osd_command [6]}),
    .ce(\U15/mux13_b0_sel_is_3_o ),
    .clk(clk_28),
    .d({_al_u1873_o,osd_command[6]}),
    .mi({\U15/spi_do [4],\U15/spi_do [5]}),
    .f({_al_u1874_o,_al_u1872_o}),
    .q({osd_command[4],osd_command[5]}));  // ../../rtl/avr/avr.vhd(288)
  // ../../rtl/avr/avr.vhd(288)
  // ../../rtl/avr/avr.vhd(288)
  AL_PHY_LSLICE #(
    //.LUTF0("(0*~(~D*C)*~(B*~A))"),
    //.LUTF1("(~(D*~C)*~(B*~A))"),
    //.LUTG0("(1*~(~D*C)*~(B*~A))"),
    //.LUTG1("(~(D*~C)*~(B*~A))"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b1011000010111011),
    .INIT_LUTG0(16'b1011101100001011),
    .INIT_LUTG1(16'b1011000010111011),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U15/reg12_b6|U15/reg12_b7  (
    .a({\U8/last_osd_command [5],osd_command[11]}),
    .b({osd_command[5],\U8/last_osd_command [11]}),
    .c({osd_command[6],\U8/last_osd_command [7]}),
    .ce(\U15/mux13_b0_sel_is_3_o ),
    .clk(clk_28),
    .d({\U8/last_osd_command [6],osd_command[7]}),
    .e({open_n1695,_al_u1870_o}),
    .mi({\U15/spi_do [6],\U15/spi_do [7]}),
    .f({_al_u1870_o,_al_u1871_o}),
    .q({osd_command[6],osd_command[7]}));  // ../../rtl/avr/avr.vhd(288)
  // ../../rtl/avr/avr.vhd(288)
  // ../../rtl/avr/avr.vhd(288)
  AL_PHY_LSLICE #(
    //.LUTF0("(0*~(D@C)*~(B@A))"),
    //.LUTF1("(D*~C*~B*~A)"),
    //.LUTG0("(1*~(D@C)*~(B@A))"),
    //.LUTG1("(D*~C*~B*~A)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b0000000100000000),
    .INIT_LUTG0(16'b1001000000001001),
    .INIT_LUTG1(16'b0000000100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U15/reg12_b9|U15/reg12_b1  (
    .a({osd_command[10],osd_command[1]}),
    .b({osd_command[11],\U8/last_osd_command [1]}),
    .c({osd_command[9],osd_command[10]}),
    .ce(\U15/mux13_b0_sel_is_3_o ),
    .clk(clk_28),
    .d({_al_u1935_o,\U8/last_osd_command [10]}),
    .e({open_n1712,_al_u1877_o}),
    .mi({\U15/spi_do [9],\U15/spi_do [1]}),
    .f({\U8/mux22_b0_sel_is_3_o ,_al_u1878_o}),
    .q({osd_command[9],osd_command[1]}));  // ../../rtl/avr/avr.vhd(288)
  AL_PHY_PAD #(
    //.CLKSRC("CLK"),
    //.LOCATION("P111"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DO_DFFMODE("FF"),
    .DO_REGSET("RESET"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .OUTCEMUX("CE"),
    .OUTCLKMUX("CLK"),
    .OUTRSTMUX("0"),
    .SRMODE("ASYNC"),
    .TSMUX("0"))
    \U15/reg3_b0_DO  (
    .ce(\U15/mux3_b1_sel_is_3_o ),
    .clk(clk_28),
    .otrue(\U15/spi_do [1]),
    .opad(SDIR));  // ../../rtl/avr/avr.vhd(288)
  // ../../rtl/avr/avr.vhd(288)
  // ../../rtl/avr/avr.vhd(288)
  AL_PHY_LSLICE #(
    //.LUTF0("~(~C*~(B*D))"),
    //.LUTF1("(C*B*D)"),
    //.LUTG0("~(~C*~(B*D))"),
    //.LUTG1("(C*B*D)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111110011110000),
    .INIT_LUTF1(16'b1100000000000000),
    .INIT_LUTG0(16'b1111110011110000),
    .INIT_LUTG1(16'b1100000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U15/reg3_b8|U15/reg3_b9  (
    .b({_al_u1973_o,vid_rgb_osd[2]}),
    .c({_al_u1976_o,_al_u2264_o}),
    .ce(\U15/mux2_b0_sel_is_3_o ),
    .clk(clk_28),
    .d({\U15/n37_lutinv ,soft_sw[1]}),
    .mi(\U15/spi_do [7:6]),
    .f({\U15/mux2_b0_sel_is_3_o ,\U9/n48 [2]}),
    .q({soft_sw[2],soft_sw[1]}));  // ../../rtl/avr/avr.vhd(288)
  // ../../rtl/avr/avr.vhd(288)
  // ../../rtl/avr/avr.vhd(288)
  AL_PHY_MSLICE #(
    //.LUT0("(D*C*B*~A)"),
    //.LUT1("(~C*(~B*~(A)*~(D)+~B*A*~(D)+~(~B)*A*D+~B*A*D))"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0100000000000000),
    .INIT_LUT1(16'b0000101000000011),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U15/reg6_b0|U15/reg6_b1  (
    .a({_al_u2003_o,kb_screen_mode[1]}),
    .b({_al_u2004_o,soft_sw[2]}),
    .c(kb_screen_mode),
    .ce(\U15/mux3_b1_sel_is_3_o ),
    .clk(clk_28),
    .d({kb_screen_mode[0],_al_u2001_o}),
    .mi({\U15/spi_do [5],\U15/spi_do [6]}),
    .f({_al_u2005_o,_al_u2002_o}),
    .q({kb_screen_mode[0],kb_screen_mode[1]}));  // ../../rtl/avr/avr.vhd(288)
  AL_PHY_GCLK \U2/bufg_feedback  (
    .clki(\U2/clkc_wire [0]),
    .clko(clk_84));  // al_ip/altpll1.vhd(48)
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
    \U2/pll_inst  (
    .fbclk(clk_84),
    .phasestep(1'b0),
    .phaseupdown(1'b0),
    .phcntsel(3'b000),
    .pllreset(1'b0),
    .refclk(clk_112),
    .scanclk(1'b0),
    .stdby(1'b0),
    .clkc({clk_8,open_n1772,clk_28,open_n1773,\U2/clkc_wire [0]}));  // al_ip/altpll1.vhd(51)
  // ../../rtl/video/pentagon_video.vhd(260)
  // ../../rtl/video/pentagon_video.vhd(181)
  AL_PHY_LSLICE #(
    //.LUTF0("(0*D*C*~B*~A)"),
    //.LUTF1("~(D*C*~B*~A)"),
    //.LUTG0("(1*D*C*~B*~A)"),
    //.LUTG1("~(D*C*~B*~A)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b1110111111111111),
    .INIT_LUTG0(16'b0001000000000000),
    .INIT_LUTG1(16'b1110111111111111),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/U_PENT/HSYNC_reg|U7/U_PENT/reg4_b1  (
    .a({\U7/vid_a_spec [2],\U7/vid_a_spec [3]}),
    .b({\U7/vid_a_spec [4],\U7/vid_a_spec [4]}),
    .c({\U7/vid_a_spec [3],\U7/U_PENT/mux21_b0_sel_is_3_o }),
    .ce(\U7/U_PENT/mux21_b0_sel_is_3_o ),
    .clk(clk_28),
    .d({\U7/hcnt_spec [8],_al_u1941_o}),
    .e({open_n1776,\U7/hcnt_spec [8]}),
    .mi({open_n1778,\U7/U_PENT/attr [1]}),
    .f({open_n1791,\U7/U_PENT/mux15_b0_sel_is_3_o }),
    .q({\U7/hsync_spec ,\U7/attr_o_spec [1]}));  // ../../rtl/video/pentagon_video.vhd(260)
  // ../../rtl/video/pentagon_video.vhd(217)
  // ../../rtl/video/pentagon_video.vhd(217)
  AL_PHY_LSLICE #(
    //.LUTF0("(~C*(A*~(B)*~(D)+A*B*~(D)+~(A)*B*D+A*B*D))"),
    //.LUTF1("(~C*(A*~(B)*~(D)+A*B*~(D)+~(A)*B*D+A*B*D))"),
    //.LUTG0("(~C*(A*~(B)*~(D)+A*B*~(D)+~(A)*B*D+A*B*D))"),
    //.LUTG1("(~C*(A*~(B)*~(D)+A*B*~(D)+~(A)*B*D+A*B*D))"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000110000001010),
    .INIT_LUTF1(16'b0000110000001010),
    .INIT_LUTG0(16'b0000110000001010),
    .INIT_LUTG1(16'b0000110000001010),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/U_PENT/VIDEO_B_reg|U7/U_PENT/VIDEO_G_reg  (
    .a({\U7/attr_o_spec [3],\U7/attr_o_spec [5]}),
    .b({\U7/attr_o_spec [0],\U7/attr_o_spec [2]}),
    .c({\U7/U_PENT/paper_r ,\U7/U_PENT/paper_r }),
    .ce(\U7/U_PENT/mux22_b0_sel_is_3_o ),
    .clk(clk_28),
    .d({\U7/U_PENT/n108_lutinv ,\U7/U_PENT/n108_lutinv }),
    .q({\U7/rgb_spec [0],\U7/rgb_spec [1]}));  // ../../rtl/video/pentagon_video.vhd(217)
  // ../../rtl/video/pentagon_video.vhd(217)
  // ../../rtl/video/pentagon_video.vhd(217)
  AL_PHY_MSLICE #(
    //.LUT0("(~C*(A*~(B)*~(D)+A*B*~(D)+~(A)*B*D+A*B*D))"),
    //.LUT1("(C*~D)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000110000001010),
    .INIT_LUT1(16'b0000000011110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/U_PENT/VIDEO_I_reg|U7/U_PENT/VIDEO_R_reg  (
    .a({open_n1817,\U7/attr_o_spec [4]}),
    .b({open_n1818,\U7/attr_o_spec [1]}),
    .c({\U7/attr_o_spec [6],\U7/U_PENT/paper_r }),
    .ce(\U7/U_PENT/mux22_b0_sel_is_3_o ),
    .clk(clk_28),
    .d({\U7/U_PENT/paper_r ,\U7/U_PENT/n108_lutinv }),
    .q({\U7/i_spec ,\U7/rgb_spec [2]}));  // ../../rtl/video/pentagon_video.vhd(217)
  AL_PHY_MSLICE #(
    //.MACRO("U7/U_PENT/add0/u0|U7/U_PENT/add0/ucin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("ADD_CARRY"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("LATCH"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/U_PENT/add0/u0|U7/U_PENT/add0/ucin  (
    .a({\U7/vid_a_spec [0],1'b0}),
    .b({1'b1,open_n1837}),
    .clk(\U8/n26 ),
    .mi(\U8/vram_do [11:10]),
    .f({\U7/U_PENT/n3 [0],open_n1854}),
    .fco(\U7/U_PENT/add0/c1 ),
    .q(\U8/rom_addr [6:5]));
  AL_PHY_MSLICE #(
    //.MACRO("U7/U_PENT/add0/u0|U7/U_PENT/add0/ucin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("ADD"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/U_PENT/add0/u2|U7/U_PENT/add0/u1  (
    .a(\U7/vid_a_spec [2:1]),
    .b(2'b00),
    .ce(\U8/mux24_b0_sel_is_3_o ),
    .clk(clk_28),
    .fci(\U7/U_PENT/add0/c1 ),
    .mi(osd_command[5:4]),
    .f(\U7/U_PENT/n3 [2:1]),
    .fco(\U7/U_PENT/add0/c3 ),
    .q(\U8/vram_di [5:4]));
  AL_PHY_MSLICE #(
    //.MACRO("U7/U_PENT/add0/u0|U7/U_PENT/add0/ucin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("ADD"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/U_PENT/add0/u4|U7/U_PENT/add0/u3  (
    .a(\U7/vid_a_spec [4:3]),
    .b(2'b00),
    .ce(\U8/mux24_b0_sel_is_3_o ),
    .clk(clk_28),
    .fci(\U7/U_PENT/add0/c3 ),
    .mi(osd_command[3:2]),
    .f(\U7/U_PENT/n3 [4:3]),
    .fco(\U7/U_PENT/add0/c5 ),
    .q(\U8/vram_di [3:2]));
  AL_PHY_MSLICE #(
    //.MACRO("U7/U_PENT/add0/u0|U7/U_PENT/add0/ucin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("ADD"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"))
    \U7/U_PENT/add0/u5_al_u2305  (
    .a({open_n1889,\U7/hcnt_spec [8]}),
    .b({open_n1890,1'b0}),
    .fci(\U7/U_PENT/add0/c5 ),
    .f({open_n1909,\U7/U_PENT/n3 [5]}));
  AL_PHY_MSLICE #(
    //.MACRO("U7/U_PENT/add2/u0|U7/U_PENT/add2/ucin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("ADD_CARRY"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/U_PENT/add2/u0|U7/U_PENT/add2/ucin  (
    .a({\U7/vid_a_spec [5],1'b0}),
    .b({1'b1,open_n1915}),
    .ce(\U7/U_PENT/mux28_b0_sel_is_3_o ),
    .clk(clk_28),
    .mi(vid_do_bus[3:2]),
    .f({\U7/U_PENT/n26 [0],open_n1931}),
    .fco(\U7/U_PENT/add2/c1 ),
    .q(\U7/U_PENT/attr [3:2]));
  AL_PHY_MSLICE #(
    //.MACRO("U7/U_PENT/add2/u0|U7/U_PENT/add2/ucin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("ADD"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/U_PENT/add2/u2|U7/U_PENT/add2/u1  (
    .a(\U7/vid_a_spec [7:6]),
    .b(2'b00),
    .ce(\U8/mux24_b0_sel_is_3_o ),
    .clk(clk_28),
    .fci(\U7/U_PENT/add2/c1 ),
    .mi(\U8/char_buf [4:3]),
    .f(\U7/U_PENT/n26 [2:1]),
    .fco(\U7/U_PENT/add2/c3 ),
    .q(\U8/vram_di [12:11]));
  AL_PHY_MSLICE #(
    //.MACRO("U7/U_PENT/add2/u0|U7/U_PENT/add2/ucin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("ADD"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/U_PENT/add2/u4|U7/U_PENT/add2/u3  (
    .a(\U7/vcnt_spec [7:6]),
    .b(2'b00),
    .ce(\U8/mux24_b0_sel_is_3_o ),
    .clk(clk_28),
    .fci(\U7/U_PENT/add2/c3 ),
    .mi(osd_command[1:0]),
    .f(\U7/U_PENT/n26 [4:3]),
    .fco(\U7/U_PENT/add2/c5 ),
    .q(\U8/vram_di [1:0]));
  AL_PHY_MSLICE #(
    //.MACRO("U7/U_PENT/add2/u0|U7/U_PENT/add2/ucin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("ADD"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"))
    \U7/U_PENT/add2/u5_al_u2306  (
    .a({open_n1966,\U7/vcnt_spec [8]}),
    .b({open_n1967,1'b0}),
    .fci(\U7/U_PENT/add2/c5 ),
    .f({open_n1986,\U7/U_PENT/n26 [5]}));
  // ../../rtl/video/pentagon_video.vhd(260)
  // ../../rtl/video/pentagon_video.vhd(240)
  AL_PHY_LSLICE #(
    //.LUTF0("(0*D*C*~B*~A)"),
    //.LUTF1("~(~D*~C*~(B*A))"),
    //.LUTG0("(1*D*C*~B*~A)"),
    //.LUTG1("~(~D*~C*~(B*A))"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b1111111111111000),
    .INIT_LUTG0(16'b0001000000000000),
    .INIT_LUTG1(16'b1111111111111000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/U_PENT/paper_r_reg|U7/U_PENT/reg4_b3  (
    .a({\U7/vcnt_spec [6],\U7/U_PENT/paper }),
    .b({\U7/vcnt_spec [7],\U7/hcnt_spec [0]}),
    .c({\U7/vcnt_spec [8],\U7/hcnt_spec [1]}),
    .ce(\U7/U_PENT/mux21_b0_sel_is_3_o ),
    .clk(clk_28),
    .d({\U7/hcnt_spec [8],\U7/hcnt_spec [2]}),
    .e({open_n1992,\U7/vid_a_spec [0]}),
    .mi({open_n1994,\U7/U_PENT/attr [3]}),
    .f({\U7/U_PENT/paper ,\U8/mux5_b0_sel_is_30_o }),
    .q({\U7/U_PENT/paper_r ,\U7/attr_o_spec [3]}));  // ../../rtl/video/pentagon_video.vhd(260)
  // ../../rtl/video/pentagon_video.vhd(181)
  // ../../rtl/video/pentagon_video.vhd(181)
  AL_PHY_MSLICE #(
    //.LUT0("(C*D)"),
    //.LUT1("(C*D)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111000000000000),
    .INIT_LUT1(16'b1111000000000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/U_PENT/reg0_b0|U7/U_PENT/reg0_b2  (
    .c({\U7/U_PENT/n26 [0],\U7/U_PENT/n26 [2]}),
    .ce(\U7/U_PENT/mux13_b0_sel_is_3_o ),
    .clk(clk_28),
    .d({_al_u2006_o,_al_u2006_o}),
    .q({\U7/vid_a_spec [5],\U7/vid_a_spec [7]}));  // ../../rtl/video/pentagon_video.vhd(181)
  // ../../rtl/video/pentagon_video.vhd(181)
  // ../../rtl/video/pentagon_video.vhd(181)
  AL_PHY_LSLICE #(
    //.LUTF0("(C*D)"),
    //.LUTF1("(C*D)"),
    //.LUTG0("(C*D)"),
    //.LUTG1("(C*D)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111000000000000),
    .INIT_LUTF1(16'b1111000000000000),
    .INIT_LUTG0(16'b1111000000000000),
    .INIT_LUTG1(16'b1111000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/U_PENT/reg0_b3|U7/U_PENT/reg0_b1  (
    .c({\U7/U_PENT/n26 [3],\U7/U_PENT/n26 [1]}),
    .ce(\U7/U_PENT/mux13_b0_sel_is_3_o ),
    .clk(clk_28),
    .d({_al_u2006_o,_al_u2006_o}),
    .q({\U7/vcnt_spec [6],\U7/vid_a_spec [6]}));  // ../../rtl/video/pentagon_video.vhd(181)
  // ../../rtl/video/pentagon_video.vhd(181)
  // ../../rtl/video/pentagon_video.vhd(181)
  AL_PHY_LSLICE #(
    //.LUTF0("(C*D)"),
    //.LUTF1("(C*D)"),
    //.LUTG0("(C*D)"),
    //.LUTG1("(C*D)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111000000000000),
    .INIT_LUTF1(16'b1111000000000000),
    .INIT_LUTG0(16'b1111000000000000),
    .INIT_LUTG1(16'b1111000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/U_PENT/reg0_b5|U7/U_PENT/reg0_b4  (
    .c(\U7/U_PENT/n26 [5:4]),
    .ce(\U7/U_PENT/mux13_b0_sel_is_3_o ),
    .clk(clk_28),
    .d({_al_u2006_o,_al_u2006_o}),
    .q(\U7/vcnt_spec [8:7]));  // ../../rtl/video/pentagon_video.vhd(181)
  AL_PHY_MSLICE #(
    //.MACRO("U7/U_PENT/reg1_b0|U7/U_PENT/add1/ucin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("ADD_CARRY"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/U_PENT/reg1_b0|U7/U_PENT/add1/ucin  (
    .a({\U7/U_PENT/invert [0],1'b0}),
    .b({1'b1,open_n2084}),
    .ce(\U7/U_PENT/mux14_b0_sel_is_3_o ),
    .clk(clk_28),
    .fco(\U7/U_PENT/add1/c1 ),
    .q({\U7/U_PENT/invert [0],open_n2106}));
  AL_PHY_MSLICE #(
    //.MACRO("U7/U_PENT/reg1_b0|U7/U_PENT/add1/ucin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("ADD"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/U_PENT/reg1_b2|U7/U_PENT/reg1_b1  (
    .a(\U7/U_PENT/invert [2:1]),
    .b(2'b00),
    .ce(\U7/U_PENT/mux14_b0_sel_is_3_o ),
    .clk(clk_28),
    .fci(\U7/U_PENT/add1/c1 ),
    .fco(\U7/U_PENT/add1/c3 ),
    .q(\U7/U_PENT/invert [2:1]));
  AL_PHY_MSLICE #(
    //.MACRO("U7/U_PENT/reg1_b0|U7/U_PENT/add1/ucin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("ADD"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/U_PENT/reg1_b4|U7/U_PENT/reg1_b3  (
    .a({blink,\U7/U_PENT/invert [3]}),
    .b(2'b00),
    .ce(\U7/U_PENT/mux14_b0_sel_is_3_o ),
    .clk(clk_28),
    .fci(\U7/U_PENT/add1/c3 ),
    .q({blink,\U7/U_PENT/invert [3]}));
  // ../../rtl/video/pentagon_video.vhd(181)
  // ../../rtl/video/pentagon_video.vhd(181)
  AL_PHY_LSLICE #(
    //.LUTF0("(C@(B*D))"),
    //.LUTF1("(C@D)"),
    //.LUTG0("(C@(B*D))"),
    //.LUTG1("(C@D)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011110011110000),
    .INIT_LUTF1(16'b0000111111110000),
    .INIT_LUTG0(16'b0011110011110000),
    .INIT_LUTG1(16'b0000111111110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/U_PENT/reg2_b1|U7/U_PENT/reg2_b2  (
    .b({open_n2150,\U7/vcnt_spec [1]}),
    .c({\U7/vcnt_spec [1],\U7/vcnt_spec [2]}),
    .ce(\U7/U_PENT/mux15_b0_sel_is_3_o ),
    .clk(clk_28),
    .d({\U7/vcnt_spec [0],\U7/vcnt_spec [0]}),
    .f({open_n2168,\U7/U_PENT/n31 [2]}),
    .q({\U7/vcnt_spec [1],\U7/vcnt_spec [2]}));  // ../../rtl/video/pentagon_video.vhd(181)
  // ../../rtl/video/pentagon_video.vhd(181)
  // ../../rtl/video/pentagon_video.vhd(181)
  AL_PHY_LSLICE #(
    //.LUTF0("(C@D)"),
    //.LUTF1("(~D)"),
    //.LUTG0("(C@D)"),
    //.LUTG1("(~D)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111111110000),
    .INIT_LUTF1(16'b0000000011111111),
    .INIT_LUTG0(16'b0000111111110000),
    .INIT_LUTG1(16'b0000000011111111),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/U_PENT/reg3_b0|U7/U_PENT/reg3_b1  (
    .c({open_n2176,\U7/hcnt_spec [1]}),
    .ce(\U7/U_PENT/mux22_b0_sel_is_3_o ),
    .clk(clk_28),
    .d({\U7/hcnt_spec [0],\U7/hcnt_spec [0]}),
    .q({\U7/hcnt_spec [0],\U7/hcnt_spec [1]}));  // ../../rtl/video/pentagon_video.vhd(181)
  // ../../rtl/video/pentagon_video.vhd(260)
  // ../../rtl/video/pentagon_video.vhd(260)
  AL_PHY_LSLICE #(
    //.LUTF0("(C*D)"),
    //.LUTF1("(D*C*B*A)"),
    //.LUTG0("(C*D)"),
    //.LUTG1("(D*C*B*A)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111000000000000),
    .INIT_LUTF1(16'b1000000000000000),
    .INIT_LUTG0(16'b1111000000000000),
    .INIT_LUTG1(16'b1000000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/U_PENT/reg4_b0|U7/U_PENT/reg4_b2  (
    .a({\U7/U_PENT/mux22_b0_sel_is_3_o ,open_n2199}),
    .b({\U7/hcnt_spec [0],open_n2200}),
    .c({\U7/hcnt_spec [1],clk_div4}),
    .ce(\U7/U_PENT/mux21_b0_sel_is_3_o ),
    .clk(clk_28),
    .d({\U7/hcnt_spec [2],clk_div2}),
    .mi({\U7/U_PENT/attr [0],\U7/U_PENT/attr [2]}),
    .f({\U7/U_PENT/mux21_b0_sel_is_3_o ,\U7/U_PENT/mux22_b0_sel_is_3_o }),
    .q({\U7/attr_o_spec [0],\U7/attr_o_spec [2]}));  // ../../rtl/video/pentagon_video.vhd(260)
  // ../../rtl/video/pentagon_video.vhd(260)
  // ../../rtl/video/pentagon_video.vhd(260)
  AL_PHY_LSLICE #(
    //.LUTF0("(B*~(D)*~(C)+B*D*~(C)+~(B)*D*C+B*D*C)"),
    //.LUTF1("(~D*~C*~B*~A)"),
    //.LUTG0("(B*~(D)*~(C)+B*D*~(C)+~(B)*D*C+B*D*C)"),
    //.LUTG1("(~D*~C*~B*~A)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111110000001100),
    .INIT_LUTF1(16'b0000000000000001),
    .INIT_LUTG0(16'b1111110000001100),
    .INIT_LUTG1(16'b0000000000000001),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/U_PENT/reg4_b4|U7/U_PENT/reg4_b6  (
    .a({\U7/hcnt_spec [0],open_n2219}),
    .b(\U7/hcnt_spec [1:0]),
    .c({\U7/hcnt_spec [2],osd_popup}),
    .ce(\U7/U_PENT/mux21_b0_sel_is_3_o ),
    .clk(clk_28),
    .d({\U7/vid_a_spec [0],\U7/hcnt_spec [1]}),
    .mi({\U7/U_PENT/attr [4],\U7/U_PENT/attr [6]}),
    .f({\U8/mux7_b0_sel_is_0_o ,_al_u1893_o}),
    .q({\U7/attr_o_spec [4],\U7/attr_o_spec [6]}));  // ../../rtl/video/pentagon_video.vhd(260)
  // ../../rtl/video/pentagon_video.vhd(181)
  // ../../rtl/video/pentagon_video.vhd(260)
  AL_PHY_MSLICE #(
    //.LUT0("~(D*~(C*~(~B*~A)))"),
    //.LUT1("(C@(B*D))"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1110000011111111),
    .INIT_LUT1(16'b0011110011110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/U_PENT/reg4_b7|U7/U_PENT/VSYNC_reg  (
    .a({open_n2238,\U7/vcnt_spec [1]}),
    .b({\U7/attr_o_spec [7],_al_u2184_o}),
    .c({\U7/U_PENT/shift_r [7],\U7/vcnt_spec [2]}),
    .ce(\U7/U_PENT/mux21_b0_sel_is_3_o ),
    .clk(clk_28),
    .d({blink,_al_u2186_o}),
    .mi({\U7/U_PENT/attr [7],open_n2249}),
    .f({\U7/U_PENT/n108_lutinv ,open_n2251}),
    .q({\U7/attr_o_spec [7],\U7/vsync_spec }));  // ../../rtl/video/pentagon_video.vhd(181)
  // ../../rtl/video/pentagon_video.vhd(181)
  // ../../rtl/video/pentagon_video.vhd(260)
  AL_PHY_MSLICE #(
    //.LUT0("(C@(B*D))"),
    //.LUT1("(D*C*B*A)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0011110011110000),
    .INIT_LUT1(16'b1000000000000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/U_PENT/reg5_b0|U7/U_PENT/reg3_b2  (
    .a({\U7/hcnt_spec [0],open_n2255}),
    .b({\U7/hcnt_spec [1],\U7/hcnt_spec [1]}),
    .c({\U7/hcnt_spec [2],\U7/hcnt_spec [2]}),
    .ce(\U7/U_PENT/mux22_b0_sel_is_3_o ),
    .clk(clk_28),
    .d({\U7/U_PENT/bitmap [0],\U7/hcnt_spec [0]}),
    .q({\U7/U_PENT/shift_r [0],\U7/hcnt_spec [2]}));  // ../../rtl/video/pentagon_video.vhd(181)
  AL_PHY_MSLICE #(
    //.LUT0("(0*~(A)*~((D*C*B))+0*A*~((D*C*B))+~(0)*A*(D*C*B)+0*A*(D*C*B))"),
    //.LUT1("(1*~(A)*~((D*C*B))+1*A*~((D*C*B))+~(1)*A*(D*C*B)+1*A*(D*C*B))"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1000000000000000),
    .INIT_LUT1(16'b1011111111111111),
    .MODE("LOGIC"),
    .MSFXMUX("ON"),
    .REG0_REGSET("RESET"),
    .REG0_SD("FX"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/U_PENT/reg5_b1  (
    .a({\U7/U_PENT/bitmap [1],\U7/U_PENT/bitmap [1]}),
    .b({\U7/hcnt_spec [0],\U7/hcnt_spec [0]}),
    .c({\U7/hcnt_spec [1],\U7/hcnt_spec [1]}),
    .ce(\U7/U_PENT/mux22_b0_sel_is_3_o ),
    .clk(clk_28),
    .d({\U7/hcnt_spec [2],\U7/hcnt_spec [2]}),
    .mi({open_n2284,\U7/U_PENT/shift_r [0]}),
    .q({open_n2291,\U7/U_PENT/shift_r [1]}));  // ../../rtl/video/pentagon_video.vhd(260)
  // ../../rtl/video/pentagon_video.vhd(260)
  // ../../rtl/video/pentagon_video.vhd(260)
  AL_PHY_LSLICE #(
    //.LUTF0("(0*~(A)*~((D*C*B))+0*A*~((D*C*B))+~(0)*A*(D*C*B)+0*A*(D*C*B))"),
    //.LUTF1("(0*~(A)*~((D*C*B))+0*A*~((D*C*B))+~(0)*A*(D*C*B)+0*A*(D*C*B))"),
    //.LUTG0("(1*~(A)*~((D*C*B))+1*A*~((D*C*B))+~(1)*A*(D*C*B)+1*A*(D*C*B))"),
    //.LUTG1("(1*~(A)*~((D*C*B))+1*A*~((D*C*B))+~(1)*A*(D*C*B)+1*A*(D*C*B))"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1000000000000000),
    .INIT_LUTF1(16'b1000000000000000),
    .INIT_LUTG0(16'b1011111111111111),
    .INIT_LUTG1(16'b1011111111111111),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/U_PENT/reg5_b2|U7/U_PENT/reg5_b3  (
    .a({\U7/U_PENT/bitmap [2],\U7/U_PENT/bitmap [3]}),
    .b({\U7/hcnt_spec [0],\U7/hcnt_spec [0]}),
    .c({\U7/hcnt_spec [1],\U7/hcnt_spec [1]}),
    .ce(\U7/U_PENT/mux22_b0_sel_is_3_o ),
    .clk(clk_28),
    .d({\U7/hcnt_spec [2],\U7/hcnt_spec [2]}),
    .e({\U7/U_PENT/shift_r [1],\U7/U_PENT/shift_r [2]}),
    .q({\U7/U_PENT/shift_r [2],\U7/U_PENT/shift_r [3]}));  // ../../rtl/video/pentagon_video.vhd(260)
  // ../../rtl/video/pentagon_video.vhd(260)
  // ../../rtl/video/pentagon_video.vhd(260)
  AL_PHY_LSLICE #(
    //.LUTF0("(0*~(A)*~((D*C*B))+0*A*~((D*C*B))+~(0)*A*(D*C*B)+0*A*(D*C*B))"),
    //.LUTF1("(0*~(A)*~((D*C*B))+0*A*~((D*C*B))+~(0)*A*(D*C*B)+0*A*(D*C*B))"),
    //.LUTG0("(1*~(A)*~((D*C*B))+1*A*~((D*C*B))+~(1)*A*(D*C*B)+1*A*(D*C*B))"),
    //.LUTG1("(1*~(A)*~((D*C*B))+1*A*~((D*C*B))+~(1)*A*(D*C*B)+1*A*(D*C*B))"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1000000000000000),
    .INIT_LUTF1(16'b1000000000000000),
    .INIT_LUTG0(16'b1011111111111111),
    .INIT_LUTG1(16'b1011111111111111),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/U_PENT/reg5_b4|U7/U_PENT/reg5_b5  (
    .a({\U7/U_PENT/bitmap [4],\U7/U_PENT/bitmap [5]}),
    .b({\U7/hcnt_spec [0],\U7/hcnt_spec [0]}),
    .c({\U7/hcnt_spec [1],\U7/hcnt_spec [1]}),
    .ce(\U7/U_PENT/mux22_b0_sel_is_3_o ),
    .clk(clk_28),
    .d({\U7/hcnt_spec [2],\U7/hcnt_spec [2]}),
    .e({\U7/U_PENT/shift_r [3],\U7/U_PENT/shift_r [4]}),
    .q({\U7/U_PENT/shift_r [4],\U7/U_PENT/shift_r [5]}));  // ../../rtl/video/pentagon_video.vhd(260)
  AL_PHY_MSLICE #(
    //.LUT0("(0*~(A)*~((D*C*B))+0*A*~((D*C*B))+~(0)*A*(D*C*B)+0*A*(D*C*B))"),
    //.LUT1("(1*~(A)*~((D*C*B))+1*A*~((D*C*B))+~(1)*A*(D*C*B)+1*A*(D*C*B))"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1000000000000000),
    .INIT_LUT1(16'b1011111111111111),
    .MODE("LOGIC"),
    .MSFXMUX("ON"),
    .REG0_REGSET("RESET"),
    .REG0_SD("FX"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/U_PENT/reg5_b6  (
    .a({\U7/U_PENT/bitmap [6],\U7/U_PENT/bitmap [6]}),
    .b({\U7/hcnt_spec [0],\U7/hcnt_spec [0]}),
    .c({\U7/hcnt_spec [1],\U7/hcnt_spec [1]}),
    .ce(\U7/U_PENT/mux22_b0_sel_is_3_o ),
    .clk(clk_28),
    .d({\U7/hcnt_spec [2],\U7/hcnt_spec [2]}),
    .mi({open_n2342,\U7/U_PENT/shift_r [5]}),
    .q({open_n2349,\U7/U_PENT/shift_r [6]}));  // ../../rtl/video/pentagon_video.vhd(260)
  AL_PHY_MSLICE #(
    //.LUT0("(0*~(A)*~((D*C*B))+0*A*~((D*C*B))+~(0)*A*(D*C*B)+0*A*(D*C*B))"),
    //.LUT1("(1*~(A)*~((D*C*B))+1*A*~((D*C*B))+~(1)*A*(D*C*B)+1*A*(D*C*B))"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1000000000000000),
    .INIT_LUT1(16'b1011111111111111),
    .MODE("LOGIC"),
    .MSFXMUX("ON"),
    .REG0_REGSET("RESET"),
    .REG0_SD("FX"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/U_PENT/reg5_b7  (
    .a({\U7/U_PENT/bitmap [7],\U7/U_PENT/bitmap [7]}),
    .b({\U7/hcnt_spec [0],\U7/hcnt_spec [0]}),
    .c({\U7/hcnt_spec [1],\U7/hcnt_spec [1]}),
    .ce(\U7/U_PENT/mux22_b0_sel_is_3_o ),
    .clk(clk_28),
    .d({\U7/hcnt_spec [2],\U7/hcnt_spec [2]}),
    .mi({open_n2360,\U7/U_PENT/shift_r [6]}),
    .q({open_n2367,\U7/U_PENT/shift_r [7]}));  // ../../rtl/video/pentagon_video.vhd(260)
  // ../../rtl/video/pentagon_video.vhd(304)
  // ../../rtl/video/pentagon_video.vhd(304)
  AL_PHY_MSLICE #(
    //.LUT0("(C*~B*~D)"),
    //.LUT1("~(B*~(D)*~(C)+B*D*~(C)+~(B)*D*C+B*D*C)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000000110000),
    .INIT_LUT1(16'b0000001111110011),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/U_PENT/reg6_b1|U7/U_PENT/reg6_b0  (
    .b({\U7/hcnt_spec [1],clk_div2}),
    .c({osd_popup,\U7/hcnt_spec [0]}),
    .ce(\U7/U_PENT/mux27_b0_sel_is_3_o ),
    .clk(clk_28),
    .d({\U7/hcnt_spec [2],vid_rd}),
    .mi(vid_do_bus[1:0]),
    .f({\U8/char_x[1]_neg_lutinv ,\U7/U_PENT/mux27_b0_sel_is_3_o }),
    .q(\U7/U_PENT/bitmap [1:0]));  // ../../rtl/video/pentagon_video.vhd(304)
  // ../../rtl/video/pentagon_video.vhd(304)
  // ../../rtl/video/pentagon_video.vhd(304)
  AL_PHY_LSLICE #(
    //.LUTF0("(A*~(B)*~(C)*~(D)*~(0)+A*B*~(C)*~(D)*~(0)+A*~(B)*C*~(D)*~(0)+A*B*C*~(D)*~(0)+~(A)*B*~(C)*D*~(0)+A*B*~(C)*D*~(0)+~(A)*B*C*D*~(0)+A*B*C*D*~(0)+~(A)*~(B)*~(C)*~(D)*0+A*~(B)*~(C)*~(D)*0+~(A)*B*~(C)*~(D)*0+A*B*~(C)*~(D)*0+~(A)*~(B)*C*~(D)*0+A*~(B)*C*~(D)*0+~(A)*B*C*~(D)*0+A*B*C*~(D)*0+~(A)*~(B)*C*D*0+A*~(B)*C*D*0+~(A)*B*C*D*0+A*B*C*D*0)"),
    //.LUTF1("(~D*~C*~B*A)"),
    //.LUTG0("(A*~(B)*~(C)*~(D)*~(1)+A*B*~(C)*~(D)*~(1)+A*~(B)*C*~(D)*~(1)+A*B*C*~(D)*~(1)+~(A)*B*~(C)*D*~(1)+A*B*~(C)*D*~(1)+~(A)*B*C*D*~(1)+A*B*C*D*~(1)+~(A)*~(B)*~(C)*~(D)*1+A*~(B)*~(C)*~(D)*1+~(A)*B*~(C)*~(D)*1+A*B*~(C)*~(D)*1+~(A)*~(B)*C*~(D)*1+A*~(B)*C*~(D)*1+~(A)*B*C*~(D)*1+A*B*C*~(D)*1+~(A)*~(B)*C*D*1+A*~(B)*C*D*1+~(A)*B*C*D*1+A*B*C*D*1)"),
    //.LUTG1("(~D*~C*~B*A)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1100110010101010),
    .INIT_LUTF1(16'b0000000000000010),
    .INIT_LUTG0(16'b1111000011111111),
    .INIT_LUTG1(16'b0000000000000010),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/U_PENT/reg6_b3|U7/U_PENT/reg6_b4  (
    .a({\U8/n46_lutinv ,\U8/font_word [5]}),
    .b({\U7/U_PENT/paper ,\U8/font_word [4]}),
    .c({\U8/char_x[1]_neg_lutinv ,\U8/font_word [6]}),
    .ce(\U7/U_PENT/mux27_b0_sel_is_3_o ),
    .clk(clk_28),
    .d({_al_u1893_o,_al_u1893_o}),
    .e({open_n2384,\U8/char_x[1]_neg_lutinv }),
    .mi({vid_do_bus[3],vid_do_bus[4]}),
    .f({\U8/mux9_b0_sel_is_14_o ,_al_u2182_o}),
    .q({\U7/U_PENT/bitmap [3],\U7/U_PENT/bitmap [4]}));  // ../../rtl/video/pentagon_video.vhd(304)
  // ../../rtl/video/pentagon_video.vhd(304)
  // ../../rtl/video/pentagon_video.vhd(304)
  AL_PHY_LSLICE #(
    //.LUTF0("(~0*~(C*~(A*~(B)*~(D)+A*B*~(D)+~(A)*B*D+A*B*D)))"),
    //.LUTF1("(~D*~(A*~(B)*~(C)+A*B*~(C)+~(A)*B*C+A*B*C))"),
    //.LUTG0("(~1*~(C*~(A*~(B)*~(D)+A*B*~(D)+~(A)*B*D+A*B*D)))"),
    //.LUTG1("(~D*~(A*~(B)*~(C)+A*B*~(C)+~(A)*B*C+A*B*C))"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1100111110101111),
    .INIT_LUTF1(16'b0000000000110101),
    .INIT_LUTG0(16'b0000000000000000),
    .INIT_LUTG1(16'b0000000000110101),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/U_PENT/reg6_b6|U7/U_PENT/reg6_b5  (
    .a({\U8/font_word [1],\U8/font_word [3]}),
    .b({\U8/font_word [0],\U8/font_word [2]}),
    .c({_al_u1893_o,\U8/char_x[1]_neg_lutinv }),
    .ce(\U7/U_PENT/mux27_b0_sel_is_3_o ),
    .clk(clk_28),
    .d({\U8/char_x[1]_neg_lutinv ,_al_u1893_o}),
    .e({open_n2401,_al_u2180_o}),
    .mi(vid_do_bus[6:5]),
    .f({_al_u2180_o,_al_u2181_o}),
    .q(\U7/U_PENT/bitmap [6:5]));  // ../../rtl/video/pentagon_video.vhd(304)
  // ../../rtl/video/pentagon_video.vhd(304)
  // ../../rtl/video/pentagon_video.vhd(304)
  AL_PHY_LSLICE #(
    //.LUTF0("(B*~(D)*~(C)+B*D*~(C)+~(B)*D*C+B*D*C)"),
    //.LUTF1("(~C*~B*D)"),
    //.LUTG0("(B*~(D)*~(C)+B*D*~(C)+~(B)*D*C+B*D*C)"),
    //.LUTG1("(~C*~B*D)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111110000001100),
    .INIT_LUTF1(16'b0000001100000000),
    .INIT_LUTG0(16'b1111110000001100),
    .INIT_LUTG1(16'b0000001100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/U_PENT/reg6_b7|U7/U_PENT/reg6_b2  (
    .b({\U8/n46_lutinv ,\U7/hcnt_spec [2]}),
    .c({_al_u1893_o,osd_popup}),
    .ce(\U7/U_PENT/mux27_b0_sel_is_3_o ),
    .clk(clk_28),
    .d({\U8/char_x[1]_neg_lutinv ,\U7/vid_a_spec [0]}),
    .mi({vid_do_bus[7],vid_do_bus[2]}),
    .f({_al_u1920_o,\U8/n46_lutinv }),
    .q({\U7/U_PENT/bitmap [7],\U7/U_PENT/bitmap [2]}));  // ../../rtl/video/pentagon_video.vhd(304)
  // ../../rtl/video/pentagon_video.vhd(304)
  // ../../rtl/video/pentagon_video.vhd(304)
  AL_PHY_MSLICE #(
    //.LUT0("(C*B*~D)"),
    //.LUT1("(~C*B*D)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000011000000),
    .INIT_LUT1(16'b0000110000000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/U_PENT/reg7_b1|U7/U_PENT/reg7_b0  (
    .b({\U8/n46_lutinv ,\U7/hcnt_spec [0]}),
    .c({\U8/char_x[1]_neg_lutinv ,vid_rd}),
    .ce(\U7/U_PENT/mux28_b0_sel_is_3_o ),
    .clk(clk_28),
    .d({_al_u1893_o,clk_div2}),
    .mi(vid_do_bus[1:0]),
    .f({\U8/n23_lutinv ,\U7/U_PENT/mux28_b0_sel_is_3_o }),
    .q(\U7/U_PENT/attr [1:0]));  // ../../rtl/video/pentagon_video.vhd(304)
  // ../../rtl/video/pentagon_video.vhd(304)
  // ../../rtl/video/pentagon_video.vhd(304)
  AL_PHY_LSLICE #(
    //.LUTF0("~(~C*~D)"),
    //.LUTF1("~(~C*~D)"),
    //.LUTG0("~(~C*~D)"),
    //.LUTG1("~(~C*~D)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111111111110000),
    .INIT_LUTF1(16'b1111111111110000),
    .INIT_LUTG0(16'b1111111111110000),
    .INIT_LUTG1(16'b1111111111110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/U_PENT/reg7_b4|U7/U_PENT/reg7_b5  (
    .c({\net_U8/U_ICONS/reg3_b1_sel ,\net_U8/U_ICONS/reg3_b0_sel }),
    .ce(\U7/U_PENT/mux28_b0_sel_is_3_o ),
    .clk(clk_28),
    .d({\net_U8/U_ICONS/reg3_b1_reset_q ,\net_U8/U_ICONS/reg3_b0_reset_q }),
    .mi({vid_do_bus[4],vid_do_bus[5]}),
    .f(\U8/U_ICONS/icon_pos [1:0]),
    .q({\U7/U_PENT/attr [4],\U7/U_PENT/attr [5]}));  // ../../rtl/video/pentagon_video.vhd(304)
  // ../../rtl/video/pentagon_video.vhd(304)
  // ../../rtl/video/pentagon_video.vhd(304)
  AL_PHY_LSLICE #(
    //.LUTF0("(0*(~(A)*B*~(C)*~(D)+A*B*~(C)*~(D)+A*~(B)*C*~(D)+~(A)*B*C*~(D)+A*B*C*~(D)+~(A)*~(B)*~(C)*D+A*~(B)*~(C)*D))"),
    //.LUTF1("(D*C*B*A)"),
    //.LUTG0("(1*(~(A)*B*~(C)*~(D)+A*B*~(C)*~(D)+A*~(B)*C*~(D)+~(A)*B*C*~(D)+A*B*C*~(D)+~(A)*~(B)*~(C)*D+A*~(B)*~(C)*D))"),
    //.LUTG1("(D*C*B*A)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b1000000000000000),
    .INIT_LUTG0(16'b0000001111101100),
    .INIT_LUTG1(16'b1000000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/U_PENT/reg7_b6|U7/U_PENT/reg7_b7  (
    .a({\U7/U_PENT/mux15_b0_sel_is_3_o ,\U7/vid_a_spec [2]}),
    .b({\U7/vcnt_spec [0],\U7/vid_a_spec [4]}),
    .c({\U7/vcnt_spec [1],\U7/vid_a_spec [3]}),
    .ce(\U7/U_PENT/mux28_b0_sel_is_3_o ),
    .clk(clk_28),
    .d({\U7/vcnt_spec [2],\U7/hcnt_spec [8]}),
    .e({open_n2476,\U7/vcnt_spec [0]}),
    .mi({vid_do_bus[6],vid_do_bus[7]}),
    .f({\U7/U_PENT/mux13_b0_sel_is_3_o ,_al_u2184_o}),
    .q({\U7/U_PENT/attr [6],\U7/U_PENT/attr [7]}));  // ../../rtl/video/pentagon_video.vhd(304)
  // ../../rtl/video/pentagon_video.vhd(260)
  // ../../rtl/video/pentagon_video.vhd(181)
  AL_PHY_MSLICE #(
    //.LUT0("(D*C*B*A)"),
    //.LUT1("(C*~D)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1000000000000000),
    .INIT_LUT1(16'b0000000011110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/U_PENT/reg8_b0|U7/U_PENT/reg4_b5  (
    .a({open_n2493,\U7/hcnt_spec [0]}),
    .b({open_n2494,\U7/hcnt_spec [1]}),
    .c({\U7/U_PENT/n3 [0],\U7/hcnt_spec [2]}),
    .ce(\U7/U_PENT/mux21_b0_sel_is_3_o ),
    .clk(clk_28),
    .d({\U7/U_PENT/n2_lutinv ,\U7/vid_a_spec [0]}),
    .mi({open_n2505,\U7/U_PENT/attr [5]}),
    .f({open_n2507,\U8/n21_lutinv }),
    .q({\U7/vid_a_spec [0],\U7/attr_o_spec [5]}));  // ../../rtl/video/pentagon_video.vhd(260)
  // ../../rtl/video/pentagon_video.vhd(181)
  // ../../rtl/video/pentagon_video.vhd(181)
  AL_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/U_PENT/reg8_b1|U7/U_PENT/reg8_b4  (
    .c({\U7/U_PENT/n3 [1],\U7/U_PENT/n3 [4]}),
    .ce(\U7/U_PENT/mux21_b0_sel_is_3_o ),
    .clk(clk_28),
    .d({\U7/U_PENT/n2_lutinv ,\U7/U_PENT/n2_lutinv }),
    .q({\U7/vid_a_spec [1],\U7/vid_a_spec [4]}));  // ../../rtl/video/pentagon_video.vhd(181)
  // ../../rtl/video/pentagon_video.vhd(181)
  // ../../rtl/video/pentagon_video.vhd(181)
  AL_PHY_MSLICE #(
    //.LUT0("(C*~D)"),
    //.LUT1("(C*~D)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000011110000),
    .INIT_LUT1(16'b0000000011110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/U_PENT/reg8_b2|U7/U_PENT/reg8_b3  (
    .c({\U7/U_PENT/n3 [2],\U7/U_PENT/n3 [3]}),
    .ce(\U7/U_PENT/mux21_b0_sel_is_3_o ),
    .clk(clk_28),
    .d({\U7/U_PENT/n2_lutinv ,\U7/U_PENT/n2_lutinv }),
    .q({\U7/vid_a_spec [2],\U7/vid_a_spec [3]}));  // ../../rtl/video/pentagon_video.vhd(181)
  AL_PHY_MSLICE #(
    //.LUT0("(C*~D)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000011110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/U_PENT/reg8_b5  (
    .c({open_n2563,\U7/U_PENT/n3 [5]}),
    .ce(\U7/U_PENT/mux21_b0_sel_is_3_o ),
    .clk(clk_28),
    .d({open_n2564,\U7/U_PENT/n2_lutinv }),
    .q({open_n2583,\U7/hcnt_spec [8]}));  // ../../rtl/video/pentagon_video.vhd(181)
  AL_PHY_MSLICE #(
    //.LUT0("(C*~D)"),
    //.LUT1("(A*~B*~C*D+A*B*~C*D+A*~B*C*D+A*B*C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000011110000),
    .INIT_LUT1(16'b1010101000000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("SR"))
    \U7/mux37_b1_rom0|U8/U_ICONS/reg3_b1_bistable  (
    .a({\U7/rgb_spec [0],open_n2584}),
    .b({\U7/rgb_spec [2],open_n2585}),
    .c({\U7/rgb_spec [1],_al_u2216_o}),
    .clk(\U8/U_ICONS/n40 ),
    .d({\U7/i_spec ,\U7/vid_a_spec [7]}),
    .mi({open_n2597,1'b1}),
    .sr(\U8/U_ICONS/n38 ),
    .f({\U7/palette_grb [1],\U8/U_ICONS/n38 }),
    .q({open_n2601,\net_U8/U_ICONS/reg3_b1_sel }));
  // ../../rtl/video/overlay.vhd(171)
  AL_PHY_MSLICE #(
    //.LUT0("(C*B*D)"),
    //.LUT1("(A*~B*~C*~D+A*B*~C*~D+A*~B*C*~D+A*B*C*~D+A*~B*~C*D+A*B*~C*D+A*~B*C*D+A*B*C*D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("LATCH"),
    .INIT_LUT0(16'b1100000000000000),
    .INIT_LUT1(16'b1010101010101010),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/mux37_b2_rom0|U8/reg2_b9  (
    .a({\U7/rgb_spec [0],open_n2602}),
    .b({\U7/rgb_spec [2],\U7/vid_a_spec [6]}),
    .c({\U7/rgb_spec [1],\U7/vid_a_spec [7]}),
    .clk(\U8/n26 ),
    .d({\U7/i_spec ,\U7/vid_a_spec [5]}),
    .mi({open_n2614,\U8/vram_do [14]}),
    .f({\U7/palette_grb [2],_al_u2001_o}),
    .q({open_n2619,\U8/rom_addr [9]}));  // ../../rtl/video/overlay.vhd(171)
  // address_offset=0;data_offset=0;depth=2048;width=4;num_section=1;width_per_section=4;section_size=8;working_depth=2048;working_width=4;address_step=1;bytes_in_per_section=1;
  AL_PHY_BRAM #(
    //.RID("0x0004"),
    //.WID("0x0004"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("1"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("4"),
    .DATA_WIDTH_B("4"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h008CC800C8CEC800C8CEE8C8008CEC80008CEEECEFB7FBFEE159191E00000000),
    .INIT_01(256'h9AC77CA906733F3F00000F3F8E8C666C8CCCDF7FF39DD93F0C6226C0FF7337FF),
    .INIT_02(256'hF8CE8EC80EEE00008484480C044444E0060666668CE88EC804CCCCC40008C800),
    .INIT_03(256'h008CEF0000FEC8000046F64000E000000000E000008CEC8008CE888808888EC8),
    .INIT_04(256'h000000000A4A0800066084200E2E8E8004E44E40000008400000000000000000),
    .INIT_05(256'h0000842000000000000E0000000000000000C000048E84000844448008000080),
    .INIT_06(256'h000084E00C22C0C00C22C0E004E444C00C22C2C00E0C22C00E8888800C22A6C0),
    .INIT_07(256'h080C22C00008000000E0E0000480840008800800080080000C2E22C00C22C2C0),
    .INIT_08(256'h0C2E02C0000080E00E0080E00C2222C00C2002C00C22C2C0022E22C00E0EE2E0),
    .INIT_09(256'h0C2222C0026A22200222A6200E000000024808400C2222E00E8888E00222E220),
    .INIT_0A(256'h06991110084222200C222220088888E00C22C0C0022C22C00C6A22C0000C22C0),
    .INIT_0B(256'h0F000000000024800C4444C0024800000C0000C00E0084E00C2E222002248420),
    .INIT_0C(256'hC2E22E000000C0E00E0E2C000E22E2200C202C000C22C0000E2E2C000E0082C0),
    .INIT_0D(256'h0C222C0002222C0009999E000E88888002484200C22220200E8880800222C000),
    .INIT_0E(256'h06991100084222000C2222000E000C000C2C0C0000000E0032E22E0000C22C00),
    .INIT_0F(256'h0000842000000840000C000088808880488088400E008C00C2E2220002484200),
    .INIT_10(256'hCC000000FF000000CC000000FF000000CC000000FF000000CC00CC00FF000000),
    .INIT_11(256'hF119531FF111111FCC000000FF000000CC000000FF000000CC000000FF000000),
    .INIT_12(256'hCCCCCCCCFF0000000000000000000000CCCCCCCCFF00FF00CCCCCCCC00000000),
    .INIT_13(256'hC29DD92CC219512CCCCCCCCCFF0000000000CCCC0000FF00CCCCCC00FF00FF00),
    .INIT_14(256'h0000000000000000000000000000CC000E2E8E00088880000284440003474300),
    .INIT_15(256'hC6B5B5ACC211112CC0C0C0C0C0C0C000C0C00000C000000000AAAA0000888800),
    .INIT_16(256'h6666E000666666668888888888888888888888887D7D7D7DA5A5A5A541414141),
    .INIT_17(256'h88888000000088880000E6660000E666666666E0666666666666666688888880),
    .INIT_18(256'h666676668888F8F88888F8880000F0008888F8888888F0000000F8880000F888),
    .INIT_19(256'h0000F0F8666670760000F0F066667076666670F00000F076666670F00000F076),
    .INIT_1A(256'h6666F6666666F0008888F8F00000F8F80000F6666666F0008888F0F00000F666),
    .INIT_1B(256'h00000FFFFFFFFFFF00000000FFFFF000FFFFFFFF8888F000000088888888F8F8),
    .INIT_1C(256'h00FFFF0000EEEE0000CCCC000088880000000000000000000000000000000000),
    .INIT_1D(256'hCCCCCCCCCCCCCCC0CCCCCC00CCCCC000CCCC0000CCC00000CC000000C0000000),
    .INIT_1E(256'h00C60C60880E08800888888888888BBEC80008C008C6C8000C000C000E0E0E00),
    .INIT_1F(256'h0E20000000CCCC0000080080C291192C088C462300080000000880000008CC80),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .READBACK("ON"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    \U8/U_FONT/inst_2048x8_sub_000000_000  (
    .addra({\U8/rom_addr ,2'b11}),
    .clka(clk_div2),
    .dia({open_n2642,open_n2643,open_n2644,open_n2645,open_n2646,4'b0000}),
    .doa({open_n2662,open_n2663,open_n2664,open_n2665,open_n2666,\U8/font_word [3:0]}));
  // address_offset=0;data_offset=4;depth=2048;width=4;num_section=1;width_per_section=4;section_size=8;working_depth=2048;working_width=4;address_step=1;bytes_in_per_section=1;
  AL_PHY_BRAM #(
    //.RID("0x0005"),
    //.WID("0x0005"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("1"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("4"),
    .DATA_WIDTH_B("4"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h00133100737F7311737FF3730137F7310137FFF67FDEFEF778A98A8700000000),
    .INIT_01(256'h953EE359CE666767EF733333171366637CCC7000FC9BB9CF03644630FFECCEFF),
    .INIT_02(256'hF137173107770000301221210111757006066666137117310001310002333332),
    .INIT_03(256'h00013700007310000026F62000FCCC000036F6300010F0100137111101111731),
    .INIT_04(256'h0000021003421210042106601717470002722720000004200101111000000000),
    .INIT_05(256'h0421000001000000000700002110000000117110010301000000000000111100),
    .INIT_06(256'h0111007003447430034074700074210003400430074304300300010003654430),
    .INIT_07(256'h0000021002101200007070000001000010000000000000000303443003443430),
    .INIT_08(256'h0344443004447470074474700744447003444430074474700447443007455470),
    .INIT_09(256'h0344443004445640044456400744444004447440034000300300003004447440),
    .INIT_0A(256'h0344444001244440034444400000003003403430044744700344443004474470),
    .INIT_0B(256'h0F00000000002100030000300000124003222230072100700703444004421240),
    .INIT_0C(256'h7034430002223210034743000344300003444300074474400343030007227210),
    .INIT_0D(256'h0344430004444700044447000300001002232200120000000300100004447440),
    .INIT_0E(256'h0344440001244400034444000011131007034300044443000034430044744700),
    .INIT_0F(256'h0000012000000420211011200000000000030000072107007034440004212400),
    .INIT_10(256'hFF000000FFCCCC00FF000000FF000000FF000000FF000000FF00FF00FFCCCC00),
    .INIT_11(256'hF89AC88FF888888FFF000000FF000000FF000000FF000000FF000000FF000000),
    .INIT_12(256'hFF000000FFCCCCCC00000000CCCCCCCCFF00FF00FFCCFF0000000000CCCCCCCC),
    .INIT_13(256'h349BB943349A8843FF000000FFCCCCCC0000FF00CCCCFFCCFF00FF00FF00FFCC),
    .INIT_14(256'h00AAAA0000888800000000000000FF000CAAAC00088F870009222A0008888700),
    .INIT_15(256'h35ADAD63348888433030303030303000303000003000000000AAAA0000AAAA00),
    .INIT_16(256'h3333F0003333F3331111F1F11111F111111111117D7D7D7DA5A5A5A541414141),
    .INIT_17(256'h1111F0000000F1F10000F3330000F0F33333F0F0333333333333F0F31111F1F0),
    .INIT_18(256'h33333333111111111111F1110000F000111111111111F0000000F11100001111),
    .INIT_19(256'h0000F0F13333F0F30000F0F0333333333333F0F00000F0F33333333000003333),
    .INIT_1A(256'h3333F333333330001111111000001111000033333333F0001111F0F00000F333),
    .INIT_1B(256'h00000FFF00000000FFFFFFFFFFFFF000FFFFFFFF111110000000F1111111F1F1),
    .INIT_1C(256'h00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000EEEE0000CCCC0000888800),
    .INIT_1D(256'h3333333333333330333333003333300033330000333000003300000030000000),
    .INIT_1E(256'h00D70D70110701107DD11111111111100136310031000130070117110F0F0F00),
    .INIT_1F(256'h074000000077770000072143349AA943136C0000000100000001100000036630),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .READBACK("ON"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    \U8/U_FONT/inst_2048x8_sub_000000_004  (
    .addra({\U8/rom_addr ,2'b11}),
    .clka(clk_div2),
    .dia({open_n2698,open_n2699,open_n2700,open_n2701,open_n2702,4'b0000}),
    .doa({open_n2718,open_n2719,open_n2720,open_n2721,open_n2722,\U8/font_word [7:4]}));
  // address_offset=0;data_offset=0;depth=2048;width=1;num_section=1;width_per_section=1;section_size=1;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  AL_PHY_BRAM #(
    //.RID("0x0006"),
    //.WID("0x0006"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("1"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h707F7F6464647F0083FFF393969CF8007F7F787A7A381F00FFFF0F0F0F0FFF00),
    .INIT_01(256'h000000000000000000000000000000007C7C707C607F3F0083F3F3F383FFFE00),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h7F7F607F706C6C6CFFFF03FF839F83F37F70777077707F7FFF07F707F707FFFF),
    .INIT_05(256'h000000000000000000000000000000003F7F6A7F6A7F607FFEFFABFFABFF03FF),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .READBACK("ON"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    \U8/U_ICONS/U_FONT_ICONS/inst_2048x1_sub_000000_000  (
    .addra({2'b00,\U7/vid_a_spec [5],1'b0,\U8/U_ICONS/icon_pos [1:0],\U7/vid_a_spec [0],\U7/vcnt_spec [2:0],\U7/hcnt_spec [2:0]}),
    .clka(clk_28),
    .dia({open_n2754,open_n2755,open_n2756,open_n2757,open_n2758,open_n2759,open_n2760,1'b0,open_n2761}),
    .doa({open_n2777,open_n2778,open_n2779,open_n2780,open_n2781,open_n2782,open_n2783,open_n2784,\U8/U_ICONS/icon_pixel }));
  AL_PHY_LSLICE #(
    //.MACRO("U8/U_ICONS/add0/ucin_al_u2277"),
    //.R_POSITION("X0Y1Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U8/U_ICONS/add0/u11_al_u2280  (
    .a({\U8/U_ICONS/cnt_icon_fd [13],\U8/U_ICONS/cnt_icon_fd [11]}),
    .b({\U8/U_ICONS/cnt_icon_fd [14],\U8/U_ICONS/cnt_icon_fd [12]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U8/U_ICONS/add0/c11 ),
    .f({\U8/U_ICONS/n23 [13],\U8/U_ICONS/n23 [11]}),
    .fco(\U8/U_ICONS/add0/c15 ),
    .fx({\U8/U_ICONS/n23 [14],\U8/U_ICONS/n23 [12]}));
  AL_PHY_LSLICE #(
    //.MACRO("U8/U_ICONS/add0/ucin_al_u2277"),
    //.R_POSITION("X0Y2Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U8/U_ICONS/add0/u15_al_u2281  (
    .a({\U8/U_ICONS/cnt_icon_fd [17],\U8/U_ICONS/cnt_icon_fd [15]}),
    .b({\U8/U_ICONS/cnt_icon_fd [18],\U8/U_ICONS/cnt_icon_fd [16]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U8/U_ICONS/add0/c15 ),
    .f({\U8/U_ICONS/n23 [17],\U8/U_ICONS/n23 [15]}),
    .fco(\U8/U_ICONS/add0/c19 ),
    .fx({\U8/U_ICONS/n23 [18],\U8/U_ICONS/n23 [16]}));
  AL_PHY_LSLICE #(
    //.MACRO("U8/U_ICONS/add0/ucin_al_u2277"),
    //.R_POSITION("X0Y2Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U8/U_ICONS/add0/u19_al_u2282  (
    .a({open_n2830,\U8/U_ICONS/cnt_icon_fd [19]}),
    .b({open_n2831,\U8/U_ICONS/cnt_icon_fd [20]}),
    .c(2'b00),
    .d({open_n2834,1'b0}),
    .e({open_n2835,1'b0}),
    .fci(\U8/U_ICONS/add0/c19 ),
    .f({open_n2850,\U8/U_ICONS/n23 [19]}),
    .fx({open_n2852,\U8/U_ICONS/n23 [20]}));
  AL_PHY_LSLICE #(
    //.MACRO("U8/U_ICONS/add0/ucin_al_u2277"),
    //.R_POSITION("X0Y0Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U8/U_ICONS/add0/u3_al_u2278  (
    .a({\U8/U_ICONS/cnt_icon_fd [5],\U8/U_ICONS/cnt_icon_fd [3]}),
    .b({\U8/U_ICONS/cnt_icon_fd [6],\U8/U_ICONS/cnt_icon_fd [4]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U8/U_ICONS/add0/c3 ),
    .f({\U8/U_ICONS/n23 [5],\U8/U_ICONS/n23 [3]}),
    .fco(\U8/U_ICONS/add0/c7 ),
    .fx({\U8/U_ICONS/n23 [6],\U8/U_ICONS/n23 [4]}));
  AL_PHY_LSLICE #(
    //.MACRO("U8/U_ICONS/add0/ucin_al_u2277"),
    //.R_POSITION("X0Y1Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U8/U_ICONS/add0/u7_al_u2279  (
    .a({\U8/U_ICONS/cnt_icon_fd [9],\U8/U_ICONS/cnt_icon_fd [7]}),
    .b({\U8/U_ICONS/cnt_icon_fd [10],\U8/U_ICONS/cnt_icon_fd [8]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U8/U_ICONS/add0/c7 ),
    .f({\U8/U_ICONS/n23 [9],\U8/U_ICONS/n23 [7]}),
    .fco(\U8/U_ICONS/add0/c11 ),
    .fx({\U8/U_ICONS/n23 [10],\U8/U_ICONS/n23 [8]}));
  AL_PHY_LSLICE #(
    //.MACRO("U8/U_ICONS/add0/ucin_al_u2277"),
    //.R_POSITION("X0Y0Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'h000A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U8/U_ICONS/add0/ucin_al_u2277  (
    .a({\U8/U_ICONS/cnt_icon_fd [1],1'b0}),
    .b({\U8/U_ICONS/cnt_icon_fd [2],\U8/U_ICONS/cnt_icon_fd [0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\U8/U_ICONS/n23 [1],open_n2908}),
    .fco(\U8/U_ICONS/add0/c3 ),
    .fx({\U8/U_ICONS/n23 [2],\U8/U_ICONS/n23 [0]}));
  AL_PHY_LSLICE #(
    //.MACRO("U8/U_ICONS/add1/ucin_al_u2283"),
    //.R_POSITION("X0Y1Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U8/U_ICONS/add1/u11_al_u2286  (
    .a({\U8/U_ICONS/cnt_icon_sd [13],\U8/U_ICONS/cnt_icon_sd [11]}),
    .b({\U8/U_ICONS/cnt_icon_sd [14],\U8/U_ICONS/cnt_icon_sd [12]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U8/U_ICONS/add1/c11 ),
    .f({\U8/U_ICONS/n26 [13],\U8/U_ICONS/n26 [11]}),
    .fco(\U8/U_ICONS/add1/c15 ),
    .fx({\U8/U_ICONS/n26 [14],\U8/U_ICONS/n26 [12]}));
  AL_PHY_LSLICE #(
    //.MACRO("U8/U_ICONS/add1/ucin_al_u2283"),
    //.R_POSITION("X0Y2Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U8/U_ICONS/add1/u15_al_u2287  (
    .a({\U8/U_ICONS/cnt_icon_sd [17],\U8/U_ICONS/cnt_icon_sd [15]}),
    .b({\U8/U_ICONS/cnt_icon_sd [18],\U8/U_ICONS/cnt_icon_sd [16]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U8/U_ICONS/add1/c15 ),
    .f({\U8/U_ICONS/n26 [17],\U8/U_ICONS/n26 [15]}),
    .fco(\U8/U_ICONS/add1/c19 ),
    .fx({\U8/U_ICONS/n26 [18],\U8/U_ICONS/n26 [16]}));
  AL_PHY_LSLICE #(
    //.MACRO("U8/U_ICONS/add1/ucin_al_u2283"),
    //.R_POSITION("X0Y2Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U8/U_ICONS/add1/u19_al_u2288  (
    .a({open_n2947,\U8/U_ICONS/cnt_icon_sd [19]}),
    .b({open_n2948,\U8/U_ICONS/cnt_icon_sd [20]}),
    .c(2'b00),
    .d({open_n2951,1'b0}),
    .e({open_n2952,1'b0}),
    .fci(\U8/U_ICONS/add1/c19 ),
    .f({open_n2967,\U8/U_ICONS/n26 [19]}),
    .fx({open_n2969,\U8/U_ICONS/n26 [20]}));
  AL_PHY_LSLICE #(
    //.MACRO("U8/U_ICONS/add1/ucin_al_u2283"),
    //.R_POSITION("X0Y0Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U8/U_ICONS/add1/u3_al_u2284  (
    .a({\U8/U_ICONS/cnt_icon_sd [5],\U8/U_ICONS/cnt_icon_sd [3]}),
    .b({\U8/U_ICONS/cnt_icon_sd [6],\U8/U_ICONS/cnt_icon_sd [4]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U8/U_ICONS/add1/c3 ),
    .f({\U8/U_ICONS/n26 [5],\U8/U_ICONS/n26 [3]}),
    .fco(\U8/U_ICONS/add1/c7 ),
    .fx({\U8/U_ICONS/n26 [6],\U8/U_ICONS/n26 [4]}));
  AL_PHY_LSLICE #(
    //.MACRO("U8/U_ICONS/add1/ucin_al_u2283"),
    //.R_POSITION("X0Y1Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U8/U_ICONS/add1/u7_al_u2285  (
    .a({\U8/U_ICONS/cnt_icon_sd [9],\U8/U_ICONS/cnt_icon_sd [7]}),
    .b({\U8/U_ICONS/cnt_icon_sd [10],\U8/U_ICONS/cnt_icon_sd [8]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U8/U_ICONS/add1/c7 ),
    .f({\U8/U_ICONS/n26 [9],\U8/U_ICONS/n26 [7]}),
    .fco(\U8/U_ICONS/add1/c11 ),
    .fx({\U8/U_ICONS/n26 [10],\U8/U_ICONS/n26 [8]}));
  AL_PHY_LSLICE #(
    //.MACRO("U8/U_ICONS/add1/ucin_al_u2283"),
    //.R_POSITION("X0Y0Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'h000A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U8/U_ICONS/add1/ucin_al_u2283  (
    .a({\U8/U_ICONS/cnt_icon_sd [1],1'b0}),
    .b({\U8/U_ICONS/cnt_icon_sd [2],\U8/U_ICONS/cnt_icon_sd [0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\U8/U_ICONS/n26 [1],open_n3025}),
    .fco(\U8/U_ICONS/add1/c3 ),
    .fx({\U8/U_ICONS/n26 [2],\U8/U_ICONS/n26 [0]}));
  AL_PHY_LSLICE #(
    //.MACRO("U8/U_ICONS/add2/ucin_al_u2289"),
    //.R_POSITION("X0Y1Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U8/U_ICONS/add2/u11_al_u2292  (
    .a({\U8/U_ICONS/cnt_icon_cf [13],\U8/U_ICONS/cnt_icon_cf [11]}),
    .b({\U8/U_ICONS/cnt_icon_cf [14],\U8/U_ICONS/cnt_icon_cf [12]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U8/U_ICONS/add2/c11 ),
    .f({\U8/U_ICONS/n29 [13],\U8/U_ICONS/n29 [11]}),
    .fco(\U8/U_ICONS/add2/c15 ),
    .fx({\U8/U_ICONS/n29 [14],\U8/U_ICONS/n29 [12]}));
  AL_PHY_LSLICE #(
    //.MACRO("U8/U_ICONS/add2/ucin_al_u2289"),
    //.R_POSITION("X0Y2Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U8/U_ICONS/add2/u15_al_u2293  (
    .a({\U8/U_ICONS/cnt_icon_cf [17],\U8/U_ICONS/cnt_icon_cf [15]}),
    .b({\U8/U_ICONS/cnt_icon_cf [18],\U8/U_ICONS/cnt_icon_cf [16]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U8/U_ICONS/add2/c15 ),
    .f({\U8/U_ICONS/n29 [17],\U8/U_ICONS/n29 [15]}),
    .fco(\U8/U_ICONS/add2/c19 ),
    .fx({\U8/U_ICONS/n29 [18],\U8/U_ICONS/n29 [16]}));
  AL_PHY_LSLICE #(
    //.MACRO("U8/U_ICONS/add2/ucin_al_u2289"),
    //.R_POSITION("X0Y2Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U8/U_ICONS/add2/u19_al_u2294  (
    .a({open_n3064,\U8/U_ICONS/cnt_icon_cf [19]}),
    .b({open_n3065,\U8/U_ICONS/cnt_icon_cf [20]}),
    .c(2'b00),
    .d({open_n3068,1'b0}),
    .e({open_n3069,1'b0}),
    .fci(\U8/U_ICONS/add2/c19 ),
    .f({open_n3084,\U8/U_ICONS/n29 [19]}),
    .fx({open_n3086,\U8/U_ICONS/n29 [20]}));
  AL_PHY_LSLICE #(
    //.MACRO("U8/U_ICONS/add2/ucin_al_u2289"),
    //.R_POSITION("X0Y0Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U8/U_ICONS/add2/u3_al_u2290  (
    .a({\U8/U_ICONS/cnt_icon_cf [5],\U8/U_ICONS/cnt_icon_cf [3]}),
    .b({\U8/U_ICONS/cnt_icon_cf [6],\U8/U_ICONS/cnt_icon_cf [4]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U8/U_ICONS/add2/c3 ),
    .f({\U8/U_ICONS/n29 [5],\U8/U_ICONS/n29 [3]}),
    .fco(\U8/U_ICONS/add2/c7 ),
    .fx({\U8/U_ICONS/n29 [6],\U8/U_ICONS/n29 [4]}));
  AL_PHY_LSLICE #(
    //.MACRO("U8/U_ICONS/add2/ucin_al_u2289"),
    //.R_POSITION("X0Y1Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U8/U_ICONS/add2/u7_al_u2291  (
    .a({\U8/U_ICONS/cnt_icon_cf [9],\U8/U_ICONS/cnt_icon_cf [7]}),
    .b({\U8/U_ICONS/cnt_icon_cf [10],\U8/U_ICONS/cnt_icon_cf [8]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U8/U_ICONS/add2/c7 ),
    .f({\U8/U_ICONS/n29 [9],\U8/U_ICONS/n29 [7]}),
    .fco(\U8/U_ICONS/add2/c11 ),
    .fx({\U8/U_ICONS/n29 [10],\U8/U_ICONS/n29 [8]}));
  AL_PHY_LSLICE #(
    //.MACRO("U8/U_ICONS/add2/ucin_al_u2289"),
    //.R_POSITION("X0Y0Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'h000A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U8/U_ICONS/add2/ucin_al_u2289  (
    .a({\U8/U_ICONS/cnt_icon_cf [1],1'b0}),
    .b({\U8/U_ICONS/cnt_icon_cf [2],\U8/U_ICONS/cnt_icon_cf [0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\U8/U_ICONS/n29 [1],open_n3142}),
    .fco(\U8/U_ICONS/add2/c3 ),
    .fx({\U8/U_ICONS/n29 [2],\U8/U_ICONS/n29 [0]}));
  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  AL_PHY_LSLICE #(
    //.LUTF0("~(~C*~D)"),
    //.LUTF1("~(~C*~D)"),
    //.LUTG0("~(~C*~D)"),
    //.LUTG1("~(~C*~D)"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111111111110000),
    .INIT_LUTF1(16'b1111111111110000),
    .INIT_LUTG0(16'b1111111111110000),
    .INIT_LUTG1(16'b1111111111110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/U_ICONS/reg0_b0|U8/U_ICONS/reg0_b9  (
    .c({\U8/U_ICONS/n23 [0],\U8/U_ICONS/n23 [9]}),
    .ce(clk_div2),
    .clk(clk_28),
    .d({_al_u2018_o,_al_u2018_o}),
    .q({\U8/U_ICONS/cnt_icon_fd [0],\U8/U_ICONS/cnt_icon_fd [9]}));  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  AL_PHY_LSLICE #(
    //.LUTF0("~(~C*~D)"),
    //.LUTF1("~(~C*~D)"),
    //.LUTG0("~(~C*~D)"),
    //.LUTG1("~(~C*~D)"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111111111110000),
    .INIT_LUTF1(16'b1111111111110000),
    .INIT_LUTG0(16'b1111111111110000),
    .INIT_LUTG1(16'b1111111111110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/U_ICONS/reg0_b10|U8/U_ICONS/reg0_b8  (
    .c({\U8/U_ICONS/n23 [10],\U8/U_ICONS/n23 [8]}),
    .ce(clk_div2),
    .clk(clk_28),
    .d({_al_u2018_o,_al_u2018_o}),
    .q({\U8/U_ICONS/cnt_icon_fd [10],\U8/U_ICONS/cnt_icon_fd [8]}));  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  AL_PHY_MSLICE #(
    //.LUT0("~(~C*~D)"),
    //.LUT1("~(~C*~D)"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111111111110000),
    .INIT_LUT1(16'b1111111111110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/U_ICONS/reg0_b11|U8/U_ICONS/reg0_b7  (
    .c({\U8/U_ICONS/n23 [11],\U8/U_ICONS/n23 [7]}),
    .ce(clk_div2),
    .clk(clk_28),
    .d({_al_u2018_o,_al_u2018_o}),
    .q({\U8/U_ICONS/cnt_icon_fd [11],\U8/U_ICONS/cnt_icon_fd [7]}));  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  AL_PHY_LSLICE #(
    //.LUTF0("~(~C*~D)"),
    //.LUTF1("~(~C*~D)"),
    //.LUTG0("~(~C*~D)"),
    //.LUTG1("~(~C*~D)"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111111111110000),
    .INIT_LUTF1(16'b1111111111110000),
    .INIT_LUTG0(16'b1111111111110000),
    .INIT_LUTG1(16'b1111111111110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/U_ICONS/reg0_b12|U8/U_ICONS/reg0_b5  (
    .c({\U8/U_ICONS/n23 [12],\U8/U_ICONS/n23 [5]}),
    .ce(clk_div2),
    .clk(clk_28),
    .d({_al_u2018_o,_al_u2018_o}),
    .q({\U8/U_ICONS/cnt_icon_fd [12],\U8/U_ICONS/cnt_icon_fd [5]}));  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  AL_PHY_LSLICE #(
    //.LUTF0("~(~C*~D)"),
    //.LUTF1("~(~C*~D)"),
    //.LUTG0("~(~C*~D)"),
    //.LUTG1("~(~C*~D)"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111111111110000),
    .INIT_LUTF1(16'b1111111111110000),
    .INIT_LUTG0(16'b1111111111110000),
    .INIT_LUTG1(16'b1111111111110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/U_ICONS/reg0_b13|U8/U_ICONS/reg0_b4  (
    .c({\U8/U_ICONS/n23 [13],\U8/U_ICONS/n23 [4]}),
    .ce(clk_div2),
    .clk(clk_28),
    .d({_al_u2018_o,_al_u2018_o}),
    .q({\U8/U_ICONS/cnt_icon_fd [13],\U8/U_ICONS/cnt_icon_fd [4]}));  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  AL_PHY_MSLICE #(
    //.LUT0("~(~C*~D)"),
    //.LUT1("~(~C*~D)"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111111111110000),
    .INIT_LUT1(16'b1111111111110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/U_ICONS/reg0_b14|U8/U_ICONS/reg0_b3  (
    .c({\U8/U_ICONS/n23 [14],\U8/U_ICONS/n23 [3]}),
    .ce(clk_div2),
    .clk(clk_28),
    .d({_al_u2018_o,_al_u2018_o}),
    .q({\U8/U_ICONS/cnt_icon_fd [14],\U8/U_ICONS/cnt_icon_fd [3]}));  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  AL_PHY_MSLICE #(
    //.LUT0("~(~C*~D)"),
    //.LUT1("~(~C*~D)"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111111111110000),
    .INIT_LUT1(16'b1111111111110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/U_ICONS/reg0_b15|U8/U_ICONS/reg0_b20  (
    .c({\U8/U_ICONS/n23 [15],\U8/U_ICONS/n23 [20]}),
    .ce(clk_div2),
    .clk(clk_28),
    .d({_al_u2018_o,_al_u2018_o}),
    .q({\U8/U_ICONS/cnt_icon_fd [15],\U8/U_ICONS/cnt_icon_fd [20]}));  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  AL_PHY_LSLICE #(
    //.LUTF0("~(~C*~D)"),
    //.LUTF1("~(~C*~D)"),
    //.LUTG0("~(~C*~D)"),
    //.LUTG1("~(~C*~D)"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111111111110000),
    .INIT_LUTF1(16'b1111111111110000),
    .INIT_LUTG0(16'b1111111111110000),
    .INIT_LUTG1(16'b1111111111110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/U_ICONS/reg0_b16|U8/U_ICONS/reg0_b2  (
    .c({\U8/U_ICONS/n23 [16],\U8/U_ICONS/n23 [2]}),
    .ce(clk_div2),
    .clk(clk_28),
    .d({_al_u2018_o,_al_u2018_o}),
    .q({\U8/U_ICONS/cnt_icon_fd [16],\U8/U_ICONS/cnt_icon_fd [2]}));  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  AL_PHY_LSLICE #(
    //.LUTF0("~(~C*~D)"),
    //.LUTF1("~(~C*~D)"),
    //.LUTG0("~(~C*~D)"),
    //.LUTG1("~(~C*~D)"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111111111110000),
    .INIT_LUTF1(16'b1111111111110000),
    .INIT_LUTG0(16'b1111111111110000),
    .INIT_LUTG1(16'b1111111111110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/U_ICONS/reg0_b17|U8/U_ICONS/reg0_b19  (
    .c({\U8/U_ICONS/n23 [17],\U8/U_ICONS/n23 [19]}),
    .ce(clk_div2),
    .clk(clk_28),
    .d({_al_u2018_o,_al_u2018_o}),
    .q({\U8/U_ICONS/cnt_icon_fd [17],\U8/U_ICONS/cnt_icon_fd [19]}));  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  AL_PHY_MSLICE #(
    //.LUT0("~(~C*~D)"),
    //.LUT1("~(~C*~D)"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111111111110000),
    .INIT_LUT1(16'b1111111111110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/U_ICONS/reg0_b1|U8/U_ICONS/reg0_b18  (
    .c({\U8/U_ICONS/n23 [1],\U8/U_ICONS/n23 [18]}),
    .ce(clk_div2),
    .clk(clk_28),
    .d({_al_u2018_o,_al_u2018_o}),
    .q({\U8/U_ICONS/cnt_icon_fd [1],\U8/U_ICONS/cnt_icon_fd [18]}));  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  AL_PHY_LSLICE #(
    //.LUTF0("~(~C*~D)"),
    //.LUTF1("~(~C*~D)"),
    //.LUTG0("~(~C*~D)"),
    //.LUTG1("~(~C*~D)"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111111111110000),
    .INIT_LUTF1(16'b1111111111110000),
    .INIT_LUTG0(16'b1111111111110000),
    .INIT_LUTG1(16'b1111111111110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/U_ICONS/reg1_b0|U8/U_ICONS/reg1_b9  (
    .c({\U8/U_ICONS/n26 [0],\U8/U_ICONS/n26 [9]}),
    .ce(clk_div2),
    .clk(clk_28),
    .d({_al_u2045_o,_al_u2045_o}),
    .q({\U8/U_ICONS/cnt_icon_sd [0],\U8/U_ICONS/cnt_icon_sd [9]}));  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  AL_PHY_MSLICE #(
    //.LUT0("~(~C*~D)"),
    //.LUT1("~(~C*~D)"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111111111110000),
    .INIT_LUT1(16'b1111111111110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/U_ICONS/reg1_b10|U8/U_ICONS/reg1_b8  (
    .c({\U8/U_ICONS/n26 [10],\U8/U_ICONS/n26 [8]}),
    .ce(clk_div2),
    .clk(clk_28),
    .d({_al_u2045_o,_al_u2045_o}),
    .q({\U8/U_ICONS/cnt_icon_sd [10],\U8/U_ICONS/cnt_icon_sd [8]}));  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  AL_PHY_MSLICE #(
    //.LUT0("~(~C*~D)"),
    //.LUT1("~(~C*~D)"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111111111110000),
    .INIT_LUT1(16'b1111111111110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/U_ICONS/reg1_b11|U8/U_ICONS/reg1_b7  (
    .c({\U8/U_ICONS/n26 [11],\U8/U_ICONS/n26 [7]}),
    .ce(clk_div2),
    .clk(clk_28),
    .d({_al_u2045_o,_al_u2045_o}),
    .q({\U8/U_ICONS/cnt_icon_sd [11],\U8/U_ICONS/cnt_icon_sd [7]}));  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  AL_PHY_LSLICE #(
    //.LUTF0("~(~C*~D)"),
    //.LUTF1("~(~C*~D)"),
    //.LUTG0("~(~C*~D)"),
    //.LUTG1("~(~C*~D)"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111111111110000),
    .INIT_LUTF1(16'b1111111111110000),
    .INIT_LUTG0(16'b1111111111110000),
    .INIT_LUTG1(16'b1111111111110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/U_ICONS/reg1_b12|U8/U_ICONS/reg1_b5  (
    .c({\U8/U_ICONS/n26 [12],\U8/U_ICONS/n26 [5]}),
    .ce(clk_div2),
    .clk(clk_28),
    .d({_al_u2045_o,_al_u2045_o}),
    .q({\U8/U_ICONS/cnt_icon_sd [12],\U8/U_ICONS/cnt_icon_sd [5]}));  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  AL_PHY_MSLICE #(
    //.LUT0("~(~C*~D)"),
    //.LUT1("~(~C*~D)"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111111111110000),
    .INIT_LUT1(16'b1111111111110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/U_ICONS/reg1_b13|U8/U_ICONS/reg1_b4  (
    .c({\U8/U_ICONS/n26 [13],\U8/U_ICONS/n26 [4]}),
    .ce(clk_div2),
    .clk(clk_28),
    .d({_al_u2045_o,_al_u2045_o}),
    .q({\U8/U_ICONS/cnt_icon_sd [13],\U8/U_ICONS/cnt_icon_sd [4]}));  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  AL_PHY_MSLICE #(
    //.LUT0("~(~C*~D)"),
    //.LUT1("~(~C*~D)"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111111111110000),
    .INIT_LUT1(16'b1111111111110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/U_ICONS/reg1_b14|U8/U_ICONS/reg1_b3  (
    .c({\U8/U_ICONS/n26 [14],\U8/U_ICONS/n26 [3]}),
    .ce(clk_div2),
    .clk(clk_28),
    .d({_al_u2045_o,_al_u2045_o}),
    .q({\U8/U_ICONS/cnt_icon_sd [14],\U8/U_ICONS/cnt_icon_sd [3]}));  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  AL_PHY_LSLICE #(
    //.LUTF0("~(~C*~D)"),
    //.LUTF1("~(~C*~D)"),
    //.LUTG0("~(~C*~D)"),
    //.LUTG1("~(~C*~D)"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111111111110000),
    .INIT_LUTF1(16'b1111111111110000),
    .INIT_LUTG0(16'b1111111111110000),
    .INIT_LUTG1(16'b1111111111110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/U_ICONS/reg1_b15|U8/U_ICONS/reg1_b20  (
    .c({\U8/U_ICONS/n26 [15],\U8/U_ICONS/n26 [20]}),
    .ce(clk_div2),
    .clk(clk_28),
    .d({_al_u2045_o,_al_u2045_o}),
    .q({\U8/U_ICONS/cnt_icon_sd [15],\U8/U_ICONS/cnt_icon_sd [20]}));  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  AL_PHY_LSLICE #(
    //.LUTF0("~(~C*~D)"),
    //.LUTF1("~(~C*~D)"),
    //.LUTG0("~(~C*~D)"),
    //.LUTG1("~(~C*~D)"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111111111110000),
    .INIT_LUTF1(16'b1111111111110000),
    .INIT_LUTG0(16'b1111111111110000),
    .INIT_LUTG1(16'b1111111111110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/U_ICONS/reg1_b16|U8/U_ICONS/reg1_b2  (
    .c({\U8/U_ICONS/n26 [16],\U8/U_ICONS/n26 [2]}),
    .ce(clk_div2),
    .clk(clk_28),
    .d({_al_u2045_o,_al_u2045_o}),
    .q({\U8/U_ICONS/cnt_icon_sd [16],\U8/U_ICONS/cnt_icon_sd [2]}));  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  AL_PHY_MSLICE #(
    //.LUT0("~(~C*~D)"),
    //.LUT1("~(~C*~D)"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111111111110000),
    .INIT_LUT1(16'b1111111111110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/U_ICONS/reg1_b17|U8/U_ICONS/reg1_b19  (
    .c({\U8/U_ICONS/n26 [17],\U8/U_ICONS/n26 [19]}),
    .ce(clk_div2),
    .clk(clk_28),
    .d({_al_u2045_o,_al_u2045_o}),
    .q({\U8/U_ICONS/cnt_icon_sd [17],\U8/U_ICONS/cnt_icon_sd [19]}));  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  AL_PHY_MSLICE #(
    //.LUT0("~(~C*~D)"),
    //.LUT1("~(~C*~D)"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111111111110000),
    .INIT_LUT1(16'b1111111111110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/U_ICONS/reg1_b1|U8/U_ICONS/reg1_b18  (
    .c({\U8/U_ICONS/n26 [1],\U8/U_ICONS/n26 [18]}),
    .ce(clk_div2),
    .clk(clk_28),
    .d({_al_u2045_o,_al_u2045_o}),
    .q({\U8/U_ICONS/cnt_icon_sd [1],\U8/U_ICONS/cnt_icon_sd [18]}));  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  AL_PHY_MSLICE #(
    //.LUT0("~(~C*~D)"),
    //.LUT1("~(~C*~D)"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111111111110000),
    .INIT_LUT1(16'b1111111111110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/U_ICONS/reg2_b0|U8/U_ICONS/reg2_b9  (
    .c({\U8/U_ICONS/n29 [0],\U8/U_ICONS/n29 [9]}),
    .ce(clk_div2),
    .clk(clk_28),
    .d({_al_u2072_o,_al_u2072_o}),
    .q({\U8/U_ICONS/cnt_icon_cf [0],\U8/U_ICONS/cnt_icon_cf [9]}));  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  AL_PHY_MSLICE #(
    //.LUT0("~(~C*~D)"),
    //.LUT1("~(~C*~D)"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111111111110000),
    .INIT_LUT1(16'b1111111111110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/U_ICONS/reg2_b10|U8/U_ICONS/reg2_b8  (
    .c({\U8/U_ICONS/n29 [10],\U8/U_ICONS/n29 [8]}),
    .ce(clk_div2),
    .clk(clk_28),
    .d({_al_u2072_o,_al_u2072_o}),
    .q({\U8/U_ICONS/cnt_icon_cf [10],\U8/U_ICONS/cnt_icon_cf [8]}));  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  AL_PHY_LSLICE #(
    //.LUTF0("~(~C*~D)"),
    //.LUTF1("~(~C*~D)"),
    //.LUTG0("~(~C*~D)"),
    //.LUTG1("~(~C*~D)"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111111111110000),
    .INIT_LUTF1(16'b1111111111110000),
    .INIT_LUTG0(16'b1111111111110000),
    .INIT_LUTG1(16'b1111111111110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/U_ICONS/reg2_b11|U8/U_ICONS/reg2_b7  (
    .c({\U8/U_ICONS/n29 [11],\U8/U_ICONS/n29 [7]}),
    .ce(clk_div2),
    .clk(clk_28),
    .d({_al_u2072_o,_al_u2072_o}),
    .q({\U8/U_ICONS/cnt_icon_cf [11],\U8/U_ICONS/cnt_icon_cf [7]}));  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  AL_PHY_MSLICE #(
    //.LUT0("~(~C*~D)"),
    //.LUT1("~(~C*~D)"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111111111110000),
    .INIT_LUT1(16'b1111111111110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/U_ICONS/reg2_b12|U8/U_ICONS/reg2_b5  (
    .c({\U8/U_ICONS/n29 [12],\U8/U_ICONS/n29 [5]}),
    .ce(clk_div2),
    .clk(clk_28),
    .d({_al_u2072_o,_al_u2072_o}),
    .q({\U8/U_ICONS/cnt_icon_cf [12],\U8/U_ICONS/cnt_icon_cf [5]}));  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  AL_PHY_MSLICE #(
    //.LUT0("~(~C*~D)"),
    //.LUT1("~(~C*~D)"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111111111110000),
    .INIT_LUT1(16'b1111111111110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/U_ICONS/reg2_b13|U8/U_ICONS/reg2_b4  (
    .c({\U8/U_ICONS/n29 [13],\U8/U_ICONS/n29 [4]}),
    .ce(clk_div2),
    .clk(clk_28),
    .d({_al_u2072_o,_al_u2072_o}),
    .q({\U8/U_ICONS/cnt_icon_cf [13],\U8/U_ICONS/cnt_icon_cf [4]}));  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  AL_PHY_LSLICE #(
    //.LUTF0("~(~C*~D)"),
    //.LUTF1("~(~C*~D)"),
    //.LUTG0("~(~C*~D)"),
    //.LUTG1("~(~C*~D)"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111111111110000),
    .INIT_LUTF1(16'b1111111111110000),
    .INIT_LUTG0(16'b1111111111110000),
    .INIT_LUTG1(16'b1111111111110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/U_ICONS/reg2_b14|U8/U_ICONS/reg2_b3  (
    .c({\U8/U_ICONS/n29 [14],\U8/U_ICONS/n29 [3]}),
    .ce(clk_div2),
    .clk(clk_28),
    .d({_al_u2072_o,_al_u2072_o}),
    .q({\U8/U_ICONS/cnt_icon_cf [14],\U8/U_ICONS/cnt_icon_cf [3]}));  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  AL_PHY_LSLICE #(
    //.LUTF0("~(~C*~D)"),
    //.LUTF1("~(~C*~D)"),
    //.LUTG0("~(~C*~D)"),
    //.LUTG1("~(~C*~D)"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111111111110000),
    .INIT_LUTF1(16'b1111111111110000),
    .INIT_LUTG0(16'b1111111111110000),
    .INIT_LUTG1(16'b1111111111110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/U_ICONS/reg2_b15|U8/U_ICONS/reg2_b20  (
    .c({\U8/U_ICONS/n29 [15],\U8/U_ICONS/n29 [20]}),
    .ce(clk_div2),
    .clk(clk_28),
    .d({_al_u2072_o,_al_u2072_o}),
    .q({\U8/U_ICONS/cnt_icon_cf [15],\U8/U_ICONS/cnt_icon_cf [20]}));  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  AL_PHY_MSLICE #(
    //.LUT0("~(~C*~D)"),
    //.LUT1("~(~C*~D)"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111111111110000),
    .INIT_LUT1(16'b1111111111110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/U_ICONS/reg2_b16|U8/U_ICONS/reg2_b2  (
    .c({\U8/U_ICONS/n29 [16],\U8/U_ICONS/n29 [2]}),
    .ce(clk_div2),
    .clk(clk_28),
    .d({_al_u2072_o,_al_u2072_o}),
    .q({\U8/U_ICONS/cnt_icon_cf [16],\U8/U_ICONS/cnt_icon_cf [2]}));  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  AL_PHY_MSLICE #(
    //.LUT0("~(~C*~D)"),
    //.LUT1("~(~C*~D)"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111111111110000),
    .INIT_LUT1(16'b1111111111110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/U_ICONS/reg2_b17|U8/U_ICONS/reg2_b19  (
    .c({\U8/U_ICONS/n29 [17],\U8/U_ICONS/n29 [19]}),
    .ce(clk_div2),
    .clk(clk_28),
    .d({_al_u2072_o,_al_u2072_o}),
    .q({\U8/U_ICONS/cnt_icon_cf [17],\U8/U_ICONS/cnt_icon_cf [19]}));  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  // ../../rtl/video/icons.vhd(133)
  AL_PHY_LSLICE #(
    //.LUTF0("~(~C*~D)"),
    //.LUTF1("~(~C*~D)"),
    //.LUTG0("~(~C*~D)"),
    //.LUTG1("~(~C*~D)"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111111111110000),
    .INIT_LUTF1(16'b1111111111110000),
    .INIT_LUTG0(16'b1111111111110000),
    .INIT_LUTG1(16'b1111111111110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/U_ICONS/reg2_b1|U8/U_ICONS/reg2_b18  (
    .c({\U8/U_ICONS/n29 [1],\U8/U_ICONS/n29 [18]}),
    .ce(clk_div2),
    .clk(clk_28),
    .d({_al_u2072_o,_al_u2072_o}),
    .q({\U8/U_ICONS/cnt_icon_cf [1],\U8/U_ICONS/cnt_icon_cf [18]}));  // ../../rtl/video/icons.vhd(133)
  // address_offset=0;data_offset=0;depth=1024;width=9;num_section=1;width_per_section=9;section_size=16;working_depth=1024;working_width=9;address_step=1;bytes_in_per_section=1;
  AL_PHY_BRAM #(
    //.RID("0x0007"),
    //.WID("0x0007"),
    .CEAMUX("1"),
    .CEBMUX("1"),
    .CSA0("1"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("9"),
    .DATA_WIDTH_B("9"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .READBACK("OFF"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    \U8/U_VRAM/inst_1024x16_sub_000000_000  (
    .addra({\U8/addr_write ,3'b111}),
    .addrb({\U8/addr_read ,3'b111}),
    .clka(clk_28),
    .clkb(clk_div2),
    .dia(\U8/vram_di [8:0]),
    .dib(9'b111111111),
    .wea(\U8/vram_wr ),
    .dob(\U8/vram_do [8:0]));
  // address_offset=0;data_offset=9;depth=1024;width=7;num_section=1;width_per_section=7;section_size=16;working_depth=1024;working_width=9;address_step=1;bytes_in_per_section=1;
  AL_PHY_BRAM #(
    //.RID("0x0008"),
    //.WID("0x0008"),
    .CEAMUX("1"),
    .CEBMUX("1"),
    .CSA0("1"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("9"),
    .DATA_WIDTH_B("9"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .READBACK("OFF"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    \U8/U_VRAM/inst_1024x16_sub_000000_009  (
    .addra({\U8/addr_write ,3'b111}),
    .addrb({\U8/addr_read ,3'b111}),
    .clka(clk_28),
    .clkb(clk_div2),
    .dia({open_n3891,open_n3892,\U8/vram_di [15:9]}),
    .dib({open_n3893,open_n3894,7'b1111111}),
    .wea(\U8/vram_wr ),
    .dob({open_n3909,open_n3910,\U8/vram_do [15:9]}));
  // ../../rtl/video/overlay.vhd(167)
  // ../../rtl/video/overlay.vhd(167)
  AL_PHY_LSLICE #(
    //.LUTF0("(D*~(B)*~((A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0))+D*B*~((A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0))+~(D)*B*(A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0)+D*B*(A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0))"),
    //.LUTF1("(D*~(B)*~((A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0))+D*B*~((A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0))+~(D)*B*(A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0)+D*B*(A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0))"),
    //.LUTG0("(D*~(B)*~((A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1))+D*B*~((A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1))+~(D)*B*(A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1)+D*B*(A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1))"),
    //.LUTG1("(D*~(B)*~((A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1))+D*B*~((A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1))+~(D)*B*(A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1)+D*B*(A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1))"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1101110110001000),
    .INIT_LUTF1(16'b1101110110001000),
    .INIT_LUTG0(16'b1100111111000000),
    .INIT_LUTG1(16'b1100111111000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/reg0_b0|U8/reg1_b0  (
    .a({\U8/n23_lutinv ,_al_u1920_o}),
    .b({\U8/vram_do [0],\U8/attr2 [0]}),
    .c({\U8/n21_lutinv ,\U8/mux7_b0_sel_is_0_o }),
    .ce(clk_div2),
    .clk(clk_28),
    .d({\U8/attr2 [0],\U8/attr [0]}),
    .e({osd_popup,osd_popup}),
    .q({\U8/attr2 [0],\U8/attr [0]}));  // ../../rtl/video/overlay.vhd(167)
  // ../../rtl/video/overlay.vhd(167)
  // ../../rtl/video/overlay.vhd(167)
  AL_PHY_LSLICE #(
    //.LUTF0("(D*~(B)*~((A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0))+D*B*~((A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0))+~(D)*B*(A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0)+D*B*(A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0))"),
    //.LUTF1("(D*~(B)*~((A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0))+D*B*~((A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0))+~(D)*B*(A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0)+D*B*(A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0))"),
    //.LUTG0("(D*~(B)*~((A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1))+D*B*~((A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1))+~(D)*B*(A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1)+D*B*(A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1))"),
    //.LUTG1("(D*~(B)*~((A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1))+D*B*~((A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1))+~(D)*B*(A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1)+D*B*(A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1))"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1101110110001000),
    .INIT_LUTF1(16'b1101110110001000),
    .INIT_LUTG0(16'b1100111111000000),
    .INIT_LUTG1(16'b1100111111000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/reg0_b1|U8/reg1_b1  (
    .a({\U8/n23_lutinv ,_al_u1920_o}),
    .b({\U8/vram_do [1],\U8/attr2 [1]}),
    .c({\U8/n21_lutinv ,\U8/mux7_b0_sel_is_0_o }),
    .ce(clk_div2),
    .clk(clk_28),
    .d({\U8/attr2 [1],\U8/attr [1]}),
    .e({osd_popup,osd_popup}),
    .q({\U8/attr2 [1],\U8/attr [1]}));  // ../../rtl/video/overlay.vhd(167)
  // ../../rtl/video/overlay.vhd(167)
  // ../../rtl/video/overlay.vhd(167)
  AL_PHY_LSLICE #(
    //.LUTF0("(D*~(B)*~((A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0))+D*B*~((A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0))+~(D)*B*(A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0)+D*B*(A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0))"),
    //.LUTF1("(D*~(B)*~((A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0))+D*B*~((A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0))+~(D)*B*(A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0)+D*B*(A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0))"),
    //.LUTG0("(D*~(B)*~((A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1))+D*B*~((A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1))+~(D)*B*(A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1)+D*B*(A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1))"),
    //.LUTG1("(D*~(B)*~((A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1))+D*B*~((A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1))+~(D)*B*(A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1)+D*B*(A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1))"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1101110110001000),
    .INIT_LUTF1(16'b1101110110001000),
    .INIT_LUTG0(16'b1100111111000000),
    .INIT_LUTG1(16'b1100111111000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/reg0_b2|U8/reg1_b2  (
    .a({\U8/n23_lutinv ,_al_u1920_o}),
    .b({\U8/vram_do [2],\U8/attr2 [2]}),
    .c({\U8/n21_lutinv ,\U8/mux7_b0_sel_is_0_o }),
    .ce(clk_div2),
    .clk(clk_28),
    .d({\U8/attr2 [2],\U8/attr [2]}),
    .e({osd_popup,osd_popup}),
    .q({\U8/attr2 [2],\U8/attr [2]}));  // ../../rtl/video/overlay.vhd(167)
  AL_PHY_MSLICE #(
    //.LUT0("(D*~(B)*~((A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0))+D*B*~((A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0))+~(D)*B*(A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0)+D*B*(A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0))"),
    //.LUT1("(D*~(B)*~((A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1))+D*B*~((A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1))+~(D)*B*(A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1)+D*B*(A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1))"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1101110110001000),
    .INIT_LUT1(16'b1100111111000000),
    .MODE("LOGIC"),
    .MSFXMUX("ON"),
    .REG0_REGSET("RESET"),
    .REG0_SD("FX"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/reg0_b3  (
    .a({\U8/n23_lutinv ,\U8/n23_lutinv }),
    .b({\U8/vram_do [3],\U8/vram_do [3]}),
    .c({\U8/n21_lutinv ,\U8/n21_lutinv }),
    .ce(clk_div2),
    .clk(clk_28),
    .d({\U8/attr2 [3],\U8/attr2 [3]}),
    .mi({open_n3981,osd_popup}),
    .q({open_n3988,\U8/attr2 [3]}));  // ../../rtl/video/overlay.vhd(167)
  AL_PHY_MSLICE #(
    //.LUT0("(D*~(B)*~((A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0))+D*B*~((A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0))+~(D)*B*(A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0)+D*B*(A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0))"),
    //.LUT1("(D*~(B)*~((A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1))+D*B*~((A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1))+~(D)*B*(A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1)+D*B*(A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1))"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1101110110001000),
    .INIT_LUT1(16'b1100111111000000),
    .MODE("LOGIC"),
    .MSFXMUX("ON"),
    .REG0_REGSET("RESET"),
    .REG0_SD("FX"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/reg0_b4  (
    .a({\U8/n23_lutinv ,\U8/n23_lutinv }),
    .b({\U8/vram_do [4],\U8/vram_do [4]}),
    .c({\U8/n21_lutinv ,\U8/n21_lutinv }),
    .ce(clk_div2),
    .clk(clk_28),
    .d({\U8/attr2 [4],\U8/attr2 [4]}),
    .mi({open_n3999,osd_popup}),
    .q({open_n4006,\U8/attr2 [4]}));  // ../../rtl/video/overlay.vhd(167)
  // ../../rtl/video/overlay.vhd(167)
  // ../../rtl/video/overlay.vhd(167)
  AL_PHY_LSLICE #(
    //.LUTF0("(D*~(B)*~((A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0))+D*B*~((A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0))+~(D)*B*(A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0)+D*B*(A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0))"),
    //.LUTF1("(D*~(B)*~((A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0))+D*B*~((A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0))+~(D)*B*(A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0)+D*B*(A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0))"),
    //.LUTG0("(D*~(B)*~((A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1))+D*B*~((A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1))+~(D)*B*(A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1)+D*B*(A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1))"),
    //.LUTG1("(D*~(B)*~((A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1))+D*B*~((A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1))+~(D)*B*(A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1)+D*B*(A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1))"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1101110110001000),
    .INIT_LUTF1(16'b1101110110001000),
    .INIT_LUTG0(16'b1100111111000000),
    .INIT_LUTG1(16'b1100111111000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/reg0_b5|U8/reg1_b5  (
    .a({\U8/n23_lutinv ,_al_u1920_o}),
    .b({\U8/vram_do [5],\U8/attr2 [5]}),
    .c({\U8/n21_lutinv ,\U8/mux7_b0_sel_is_0_o }),
    .ce(clk_div2),
    .clk(clk_28),
    .d({\U8/attr2 [5],\U8/attr [5]}),
    .e({osd_popup,osd_popup}),
    .q({\U8/attr2 [5],\U8/attr [5]}));  // ../../rtl/video/overlay.vhd(167)
  // ../../rtl/video/overlay.vhd(167)
  // ../../rtl/video/overlay.vhd(167)
  AL_PHY_LSLICE #(
    //.LUTF0("(D*~(B)*~((A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0))+D*B*~((A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0))+~(D)*B*(A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0)+D*B*(A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0))"),
    //.LUTF1("(D*~(B)*~((A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0))+D*B*~((A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0))+~(D)*B*(A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0)+D*B*(A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0))"),
    //.LUTG0("(D*~(B)*~((A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1))+D*B*~((A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1))+~(D)*B*(A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1)+D*B*(A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1))"),
    //.LUTG1("(D*~(B)*~((A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1))+D*B*~((A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1))+~(D)*B*(A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1)+D*B*(A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1))"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1101110110001000),
    .INIT_LUTF1(16'b1101110110001000),
    .INIT_LUTG0(16'b1100111111000000),
    .INIT_LUTG1(16'b1100111111000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/reg0_b6|U8/reg1_b6  (
    .a({\U8/n23_lutinv ,_al_u1920_o}),
    .b({\U8/vram_do [6],\U8/attr2 [6]}),
    .c({\U8/n21_lutinv ,\U8/mux7_b0_sel_is_0_o }),
    .ce(clk_div2),
    .clk(clk_28),
    .d({\U8/attr2 [6],\U8/attr [6]}),
    .e({osd_popup,osd_popup}),
    .q({\U8/attr2 [6],\U8/attr [6]}));  // ../../rtl/video/overlay.vhd(167)
  // ../../rtl/video/overlay.vhd(167)
  // ../../rtl/video/overlay.vhd(167)
  AL_PHY_LSLICE #(
    //.LUTF0("(D*~(B)*~((A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0))+D*B*~((A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0))+~(D)*B*(A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0)+D*B*(A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0))"),
    //.LUTF1("(D*~(B)*~((A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0))+D*B*~((A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0))+~(D)*B*(A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0)+D*B*(A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0))"),
    //.LUTG0("(D*~(B)*~((A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1))+D*B*~((A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1))+~(D)*B*(A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1)+D*B*(A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1))"),
    //.LUTG1("(D*~(B)*~((A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1))+D*B*~((A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1))+~(D)*B*(A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1)+D*B*(A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1))"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1101110110001000),
    .INIT_LUTF1(16'b1101110110001000),
    .INIT_LUTG0(16'b1100111111000000),
    .INIT_LUTG1(16'b1100111111000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/reg0_b7|U8/reg1_b7  (
    .a({\U8/n23_lutinv ,_al_u1920_o}),
    .b({\U8/vram_do [7],\U8/attr2 [7]}),
    .c({\U8/n21_lutinv ,\U8/mux7_b0_sel_is_0_o }),
    .ce(clk_div2),
    .clk(clk_28),
    .d({\U8/attr2 [7],\U8/attr [7]}),
    .e({osd_popup,osd_popup}),
    .q({\U8/attr2 [7],\U8/attr [7]}));  // ../../rtl/video/overlay.vhd(167)
  AL_PHY_MSLICE #(
    //.LUT0("(D*~(B)*~((A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0))+D*B*~((A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0))+~(D)*B*(A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0)+D*B*(A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0))"),
    //.LUT1("(D*~(B)*~((A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1))+D*B*~((A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1))+~(D)*B*(A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1)+D*B*(A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1))"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1101110110001000),
    .INIT_LUT1(16'b1100111111000000),
    .MODE("LOGIC"),
    .MSFXMUX("ON"),
    .REG0_REGSET("RESET"),
    .REG0_SD("FX"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/reg1_b3  (
    .a({_al_u1920_o,_al_u1920_o}),
    .b({\U8/attr2 [3],\U8/attr2 [3]}),
    .c({\U8/mux7_b0_sel_is_0_o ,\U8/mux7_b0_sel_is_0_o }),
    .ce(clk_div2),
    .clk(clk_28),
    .d({\U8/attr [3],\U8/attr [3]}),
    .mi({open_n4077,osd_popup}),
    .q({open_n4084,\U8/attr [3]}));  // ../../rtl/video/overlay.vhd(167)
  AL_PHY_MSLICE #(
    //.LUT0("(D*~(B)*~((A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0))+D*B*~((A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0))+~(D)*B*(A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0)+D*B*(A*~(C)*~(0)+A*C*~(0)+~(A)*C*0+A*C*0))"),
    //.LUT1("(D*~(B)*~((A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1))+D*B*~((A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1))+~(D)*B*(A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1)+D*B*(A*~(C)*~(1)+A*C*~(1)+~(A)*C*1+A*C*1))"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1101110110001000),
    .INIT_LUT1(16'b1100111111000000),
    .MODE("LOGIC"),
    .MSFXMUX("ON"),
    .REG0_REGSET("RESET"),
    .REG0_SD("FX"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/reg1_b4  (
    .a({_al_u1920_o,_al_u1920_o}),
    .b({\U8/attr2 [4],\U8/attr2 [4]}),
    .c({\U8/mux7_b0_sel_is_0_o ,\U8/mux7_b0_sel_is_0_o }),
    .ce(clk_div2),
    .clk(clk_28),
    .d({\U8/attr [4],\U8/attr [4]}),
    .mi({open_n4095,osd_popup}),
    .q({open_n4102,\U8/attr [4]}));  // ../../rtl/video/overlay.vhd(167)
  // ../../rtl/video/overlay.vhd(171)
  // ../../rtl/video/overlay.vhd(171)
  AL_PHY_MSLICE #(
    //.LUT0("(B*~(D)*~(C)+B*D*~(C)+~(B)*D*C+B*D*C)"),
    //.LUT1("(B*~(D)*~(C)+B*D*~(C)+~(B)*D*C+B*D*C)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("LATCH"),
    .INIT_LUT0(16'b1111110000001100),
    .INIT_LUT1(16'b1111110000001100),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/reg2_b1|U8/reg2_b2  (
    .b({\U7/vcnt_spec [1],\U7/vcnt_spec [2]}),
    .c({osd_popup,osd_popup}),
    .clk(\U8/n26 ),
    .d({\U7/vcnt_spec [2],\U7/vid_a_spec [5]}),
    .q({\U8/rom_addr [1],\U8/rom_addr [2]}));  // ../../rtl/video/overlay.vhd(171)
  // ../../rtl/video/overlay.vhd(171)
  // ../../rtl/video/overlay.vhd(171)
  AL_PHY_LSLICE #(
    //.LUTF0("(0*D*C*~(~B*A))"),
    //.LUTF1("(~0*~D*~C*~B*~A)"),
    //.LUTG0("(1*D*C*~(~B*A))"),
    //.LUTG1("(~1*~D*~C*~B*~A)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("LATCH"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b0000000000000001),
    .INIT_LUTG0(16'b1101000000000000),
    .INIT_LUTG1(16'b0000000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/reg2_b3|U8/reg2_b10  (
    .a({\U7/vid_a_spec [0],osd_popup}),
    .b(\U7/vid_a_spec [1:0]),
    .c({\U7/vid_a_spec [2],\U7/hcnt_spec [1]}),
    .clk(\U8/n26 ),
    .d({\U7/vid_a_spec [3],\U7/hcnt_spec [2]}),
    .e({\U7/vid_a_spec [4],\U7/hcnt_spec [0]}),
    .mi({\U8/vram_do [8],\U8/vram_do [15]}),
    .f({_al_u2225_o,\U8/n26 }),
    .q({\U8/rom_addr [3],\U8/rom_addr [10]}));  // ../../rtl/video/overlay.vhd(171)
  // ../../rtl/video/overlay.vhd(171)
  // ../../rtl/video/overlay.vhd(171)
  AL_PHY_LSLICE #(
    //.LUTF0("(B*~(D)*~(C)+B*D*~(C)+~(B)*D*C+B*D*C)"),
    //.LUTF1("(C*B*D)"),
    //.LUTG0("(B*~(D)*~(C)+B*D*~(C)+~(B)*D*C+B*D*C)"),
    //.LUTG1("(C*B*D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("LATCH"),
    .INIT_LUTF0(16'b1111110000001100),
    .INIT_LUTF1(16'b1100000000000000),
    .INIT_LUTG0(16'b1111110000001100),
    .INIT_LUTG1(16'b1100000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/reg2_b4|U8/reg2_b0  (
    .b({\U7/vid_a_spec [1],\U7/vcnt_spec [0]}),
    .c({\U7/vid_a_spec [2],osd_popup}),
    .clk(\U8/n26 ),
    .d({\U7/vid_a_spec [0],\U7/vcnt_spec [1]}),
    .mi({\U8/vram_do [9],open_n4147}),
    .f({_al_u1941_o,open_n4160}),
    .q({\U8/rom_addr [4],\U8/rom_addr [0]}));  // ../../rtl/video/overlay.vhd(171)
  // ../../rtl/video/overlay.vhd(171)
  // ../../rtl/video/overlay.vhd(171)
  AL_PHY_LSLICE #(
    //.LUTF0("(D*C*~B*~A)"),
    //.LUTF1("(~(A)*~(B)*~(C)*~(D)+~(A)*B*~(C)*~(D)+A*B*~(C)*~(D)+~(A)*~(B)*C*~(D)+A*~(B)*C*~(D)+~(A)*B*C*~(D)+A*B*C*~(D)+~(A)*~(B)*~(C)*D+A*~(B)*~(C)*D+~(A)*B*~(C)*D+A*B*~(C)*D+~(A)*~(B)*C*D+A*~(B)*C*D+A*B*C*D)"),
    //.LUTG0("(D*C*~B*~A)"),
    //.LUTG1("(~(A)*~(B)*~(C)*~(D)+~(A)*B*~(C)*~(D)+A*B*~(C)*~(D)+~(A)*~(B)*C*~(D)+A*~(B)*C*~(D)+~(A)*B*C*~(D)+A*B*C*~(D)+~(A)*~(B)*~(C)*D+A*~(B)*~(C)*D+~(A)*B*~(C)*D+A*B*~(C)*D+~(A)*~(B)*C*D+A*~(B)*C*D+A*B*C*D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("LATCH"),
    .INIT_LUTF0(16'b0001000000000000),
    .INIT_LUTF1(16'b1011111111111101),
    .INIT_LUTG0(16'b0001000000000000),
    .INIT_LUTG1(16'b1011111111111101),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/reg2_b7|U8/reg2_b8  (
    .a({soft_sw[2],soft_sw[2]}),
    .b({\U7/vid_a_spec [5],\U7/vid_a_spec [5]}),
    .c({\U7/vid_a_spec [6],\U7/vid_a_spec [6]}),
    .clk(\U8/n26 ),
    .d({\U7/vid_a_spec [7],\U7/vid_a_spec [7]}),
    .mi({\U8/vram_do [12],\U8/vram_do [13]}),
    .f({_al_u2004_o,_al_u2003_o}),
    .q({\U8/rom_addr [7],\U8/rom_addr [8]}));  // ../../rtl/video/overlay.vhd(171)
  // ../../rtl/video/overlay.vhd(226)
  // ../../rtl/video/overlay.vhd(226)
  AL_PHY_LSLICE #(
    //.LUTF0("(0*D*C*~(B@A))"),
    //.LUTF1("~(C*B*D)"),
    //.LUTG0("(1*D*C*~(B@A))"),
    //.LUTG1("~(C*B*D)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b0011111111111111),
    .INIT_LUTG0(16'b1001000000000000),
    .INIT_LUTG1(16'b0011111111111111),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/reg3_b0|U8/reg3_b9  (
    .a({open_n4183,osd_command[9]}),
    .b({_al_u1878_o,\U8/last_osd_command [9]}),
    .c({_al_u1880_o,_al_u1869_o}),
    .ce(\U8/n74 ),
    .clk(clk_28),
    .d({_al_u1875_o,_al_u1871_o}),
    .e({open_n4184,_al_u1874_o}),
    .mi({osd_command[0],osd_command[9]}),
    .f({\U8/n74 ,_al_u1875_o}),
    .q({\U8/last_osd_command [0],\U8/last_osd_command [9]}));  // ../../rtl/video/overlay.vhd(226)
  // ../../rtl/video/overlay.vhd(226)
  // ../../rtl/video/overlay.vhd(226)
  AL_PHY_LSLICE #(
    //.LUTF0("(~C*~(0@D)*~(~B*A))"),
    //.LUTF1("(C*D)"),
    //.LUTG0("(~C*~(1@D)*~(~B*A))"),
    //.LUTG1("(C*D)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000001101),
    .INIT_LUTF1(16'b1111000000000000),
    .INIT_LUTG0(16'b0000110100000000),
    .INIT_LUTG1(16'b1111000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/reg3_b10|U8/reg3_b11  (
    .a({open_n4201,osd_command[11]}),
    .b({open_n4202,\U8/last_osd_command [11]}),
    .c({_al_u1934_o,_al_u1876_o}),
    .ce(\U8/n74 ),
    .clk(clk_28),
    .d({\U8/n74 ,osd_command[12]}),
    .e({open_n4203,\U8/last_osd_command [12]}),
    .mi({osd_command[10],osd_command[11]}),
    .f({_al_u1935_o,_al_u1877_o}),
    .q({\U8/last_osd_command [10],\U8/last_osd_command [11]}));  // ../../rtl/video/overlay.vhd(226)
  // ../../rtl/video/overlay.vhd(226)
  // ../../rtl/video/overlay.vhd(226)
  AL_PHY_MSLICE #(
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/reg3_b12|U8/reg3_b7  (
    .ce(\U8/n74 ),
    .clk(clk_28),
    .mi({osd_command[12],osd_command[7]}),
    .q({\U8/last_osd_command [12],\U8/last_osd_command [7]}));  // ../../rtl/video/overlay.vhd(226)
  // ../../rtl/video/overlay.vhd(226)
  // ../../rtl/video/overlay.vhd(226)
  AL_PHY_LSLICE #(
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/reg3_b13|U8/reg3_b5  (
    .ce(\U8/n74 ),
    .clk(clk_28),
    .mi({osd_command[13],osd_command[5]}),
    .q({\U8/last_osd_command [13],\U8/last_osd_command [5]}));  // ../../rtl/video/overlay.vhd(226)
  // ../../rtl/video/overlay.vhd(226)
  // ../../rtl/video/overlay.vhd(226)
  AL_PHY_MSLICE #(
    //.LUT0("(C*D)"),
    //.LUT1("(~(D*~C)*~(B*~A))"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111000000000000),
    .INIT_LUT1(16'b1011000010111011),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/reg3_b14|U8/reg3_b1  (
    .a({osd_command[14],open_n4272}),
    .b({\U8/last_osd_command [14],open_n4273}),
    .c({\U8/last_osd_command [7],\U8/n78 }),
    .ce(\U8/n74 ),
    .clk(clk_28),
    .d({osd_command[7],\U8/n74 }),
    .mi({osd_command[14],osd_command[1]}),
    .f({_al_u1869_o,\U8/mux24_b0_sel_is_3_o }),
    .q({\U8/last_osd_command [14],\U8/last_osd_command [1]}));  // ../../rtl/video/overlay.vhd(226)
  // ../../rtl/video/overlay.vhd(226)
  // ../../rtl/video/overlay.vhd(226)
  AL_PHY_LSLICE #(
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/reg3_b15|U8/reg3_b4  (
    .ce(\U8/n74 ),
    .clk(clk_28),
    .mi({osd_command[15],osd_command[4]}),
    .q({\U8/last_osd_command [15],\U8/last_osd_command [4]}));  // ../../rtl/video/overlay.vhd(226)
  // ../../rtl/video/overlay.vhd(226)
  // ../../rtl/video/overlay.vhd(226)
  AL_PHY_MSLICE #(
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/reg3_b2|U8/reg3_b3  (
    .ce(\U8/n74 ),
    .clk(clk_28),
    .mi({osd_command[2],osd_command[3]}),
    .q({\U8/last_osd_command [2],\U8/last_osd_command [3]}));  // ../../rtl/video/overlay.vhd(226)
  AL_PHY_LSLICE #(
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/reg3_b8  (
    .ce(\U8/n74 ),
    .clk(clk_28),
    .mi({open_n4351,osd_command[8]}),
    .q({open_n4369,\U8/last_osd_command [8]}));  // ../../rtl/video/overlay.vhd(226)
  // ../../rtl/video/overlay.vhd(226)
  // ../../rtl/video/overlay.vhd(226)
  AL_PHY_LSLICE #(
    //.LUTF0("(D*~(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTF1("(D*~(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTG0("(D*~(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTG1("(D*~(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0101001100000000),
    .INIT_LUTF1(16'b0101001100000000),
    .INIT_LUTG0(16'b0101001100000000),
    .INIT_LUTG1(16'b0101001100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/reg4_b0|U8/reg4_b2  (
    .a({\U7/vcnt_spec [7],\U7/vid_a_spec [7]}),
    .b({\U8/addr_read [8],\U8/addr_read [6]}),
    .c({\U8/mux5_b0_sel_is_30_o ,\U8/mux5_b0_sel_is_30_o }),
    .ce(\U8/mux22_b0_sel_is_3_o ),
    .clk(clk_28),
    .d({osd_popup,osd_popup}),
    .mi({osd_command[0],osd_command[2]}),
    .f({_al_u2164_o,_al_u2168_o}),
    .q({\U8/addr_write [0],\U8/addr_write [2]}));  // ../../rtl/video/overlay.vhd(226)
  // ../../rtl/video/overlay.vhd(226)
  // ../../rtl/video/overlay.vhd(226)
  AL_PHY_MSLICE #(
    //.LUT0("(D*~(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUT1("(D*~(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0101001100000000),
    .INIT_LUT1(16'b0101001100000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/reg4_b1|U8/reg4_b4  (
    .a({\U7/vcnt_spec [6],\U7/vid_a_spec [4]}),
    .b({\U8/addr_read [7],\U8/addr_read [3]}),
    .c({\U8/mux5_b0_sel_is_30_o ,\U8/mux5_b0_sel_is_30_o }),
    .ce(\U8/mux22_b0_sel_is_3_o ),
    .clk(clk_28),
    .d({osd_popup,osd_popup}),
    .mi({osd_command[1],osd_command[4]}),
    .f({_al_u2166_o,_al_u2173_o}),
    .q({\U8/addr_write [1],\U8/addr_write [4]}));  // ../../rtl/video/overlay.vhd(226)
  AL_PHY_MSLICE #(
    //.LUT0("(D*~(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0101001100000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/reg4_b3  (
    .a({open_n4402,\U7/vid_a_spec [6]}),
    .b({open_n4403,\U8/addr_read [5]}),
    .c({open_n4404,\U8/mux5_b0_sel_is_30_o }),
    .ce(\U8/mux22_b0_sel_is_3_o ),
    .clk(clk_28),
    .d({open_n4405,osd_popup}),
    .mi({open_n4416,osd_command[3]}),
    .f({open_n4418,_al_u2170_o}),
    .q({open_n4422,\U8/addr_write [3]}));  // ../../rtl/video/overlay.vhd(226)
  // ../../rtl/video/overlay.vhd(226)
  // ../../rtl/video/overlay.vhd(226)
  AL_PHY_LSLICE #(
    //.LUTF0("(0*D*C*~B*A)"),
    //.LUTF1("(D*~(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTG0("(1*D*C*~B*A)"),
    //.LUTG1("(D*~(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b0101001100000000),
    .INIT_LUTG0(16'b0010000000000000),
    .INIT_LUTG1(16'b0101001100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/reg4_b5|U8/reg4_b9  (
    .a({\U7/vid_a_spec [3],_al_u2185_o}),
    .b({\U8/addr_read [2],\U7/vcnt_spec [8]}),
    .c({\U8/mux5_b0_sel_is_30_o ,\U7/vcnt_spec [7]}),
    .ce(\U8/mux22_b5_sel_is_3_o ),
    .clk(clk_28),
    .d({osd_popup,\U7/vcnt_spec [6]}),
    .e({open_n4423,\U7/U_PENT/n31 [2]}),
    .mi({osd_command[0],osd_command[4]}),
    .f({_al_u2175_o,_al_u2186_o}),
    .q({\U8/addr_write [5],\U8/addr_write [9]}));  // ../../rtl/video/overlay.vhd(226)
  AL_PHY_LSLICE #(
    //.LUTF0("(D*~(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTG0("(D*~(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0101001100000000),
    .INIT_LUTG0(16'b0101001100000000),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/reg4_b6  (
    .a({open_n4440,\U7/vid_a_spec [2]}),
    .b({open_n4441,\U8/addr_read [1]}),
    .c({open_n4442,\U8/mux5_b0_sel_is_30_o }),
    .ce(\U8/mux22_b5_sel_is_3_o ),
    .clk(clk_28),
    .d({open_n4443,osd_popup}),
    .mi({open_n4447,osd_command[1]}),
    .f({open_n4460,_al_u2177_o}),
    .q({open_n4464,\U8/addr_write [6]}));  // ../../rtl/video/overlay.vhd(226)
  // ../../rtl/video/overlay.vhd(226)
  // ../../rtl/video/overlay.vhd(226)
  AL_PHY_LSLICE #(
    //.LUTF0("(0*~D*~C*~B*~A)"),
    //.LUTF1("(~C*~(0@D)*~(B*A))"),
    //.LUTG0("(1*~D*~C*~B*~A)"),
    //.LUTG1("(~C*~(1@D)*~(B*A))"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b0000000000000111),
    .INIT_LUTG0(16'b0000000000000001),
    .INIT_LUTG1(16'b0000011100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/reg4_b7|U8/reg4_b8  (
    .a({\U7/vcnt_spec [6],\U7/vcnt_spec [6]}),
    .b({\U7/vcnt_spec [7],\U7/vcnt_spec [7]}),
    .c({\U7/vcnt_spec [8],\U7/vcnt_spec [8]}),
    .ce(\U8/mux22_b5_sel_is_3_o ),
    .clk(clk_28),
    .d({_al_u2225_o,\U7/vid_a_spec [1]}),
    .e({\U7/hcnt_spec [8],\U7/vid_a_spec [2]}),
    .mi({osd_command[2],osd_command[3]}),
    .f({\U8/paper ,_al_u2215_o}),
    .q({\U8/addr_write [7],\U8/addr_write [8]}));  // ../../rtl/video/overlay.vhd(226)
  // ../../rtl/video/overlay.vhd(226)
  // ../../rtl/video/overlay.vhd(226)
  AL_PHY_MSLICE #(
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/reg5_b0|U8/reg5_b4  (
    .ce(\U8/mux23_b0_sel_is_3_o ),
    .clk(clk_28),
    .mi({osd_command[0],osd_command[4]}),
    .q({\U8/char_buf [0],\U8/char_buf [4]}));  // ../../rtl/video/overlay.vhd(226)
  // ../../rtl/video/overlay.vhd(226)
  // ../../rtl/video/overlay.vhd(226)
  AL_PHY_LSLICE #(
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/reg5_b1|U8/reg5_b3  (
    .ce(\U8/mux23_b0_sel_is_3_o ),
    .clk(clk_28),
    .mi({osd_command[1],osd_command[3]}),
    .q({\U8/char_buf [1],\U8/char_buf [3]}));  // ../../rtl/video/overlay.vhd(226)
  // ../../rtl/video/overlay.vhd(226)
  // ../../rtl/video/overlay.vhd(226)
  AL_PHY_LSLICE #(
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/reg5_b5|U8/reg5_b2  (
    .ce(\U8/mux23_b0_sel_is_3_o ),
    .clk(clk_28),
    .mi({osd_command[5],osd_command[2]}),
    .q({\U8/char_buf [5],\U8/char_buf [2]}));  // ../../rtl/video/overlay.vhd(226)
  AL_PHY_MSLICE #(
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/reg5_b7  (
    .ce(\U8/mux23_b0_sel_is_3_o ),
    .clk(clk_28),
    .mi({open_n4579,osd_command[7]}),
    .q({open_n4586,\U8/char_buf [7]}));  // ../../rtl/video/overlay.vhd(226)
  // ../../rtl/video/overlay.vhd(226)
  // ../../rtl/video/overlay.vhd(226)
  AL_PHY_LSLICE #(
    //.LUTF0("(0*D*~(A*~(B)*~(C)+A*B*~(C)+~(A)*B*C+A*B*C))"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(1*D*~(A*~(B)*~(C)+A*B*~(C)+~(A)*B*C+A*B*C))"),
    //.LUTG1("(C*~D)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0011010100000000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/reg6_b13|U8/reg6_b10  (
    .a({open_n4587,_al_u2018_o}),
    .b({open_n4588,_al_u2072_o}),
    .c({_al_u2216_o,\U7/vid_a_spec [7]}),
    .ce(\U8/mux24_b0_sel_is_3_o ),
    .clk(clk_28),
    .d({\U7/vid_a_spec [6],\U8/U_ICONS/n35 }),
    .e({open_n4589,\U8/U_ICONS/icon_pixel }),
    .mi({\U8/char_buf [5],\U8/char_buf [2]}),
    .f({\U8/U_ICONS/n35 ,_al_u2222_o}),
    .q({\U8/vram_di [13],\U8/vram_di [10]}));  // ../../rtl/video/overlay.vhd(226)
  // ../../rtl/video/overlay.vhd(226)
  // ../../rtl/video/overlay.vhd(226)
  AL_PHY_MSLICE #(
    //.LUT0("(D*C*B*~A)"),
    //.LUT1("(D*C*~B*~A)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0100000000000000),
    .INIT_LUT1(16'b0001000000000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/reg6_b14|U8/reg6_b15  (
    .a({\U7/vid_a_spec [3],\U7/vid_a_spec [3]}),
    .b({\U7/vid_a_spec [4],_al_u1941_o}),
    .c({_al_u2215_o,\U7/vid_a_spec [4]}),
    .ce(\U8/mux24_b0_sel_is_3_o ),
    .clk(clk_28),
    .d({\U7/hcnt_spec [8],\U7/hcnt_spec [8]}),
    .mi({\U8/char_buf [6],\U8/char_buf [7]}),
    .f({_al_u2216_o,\U7/U_PENT/n2_lutinv }),
    .q({\U8/vram_di [14],\U8/vram_di [15]}));  // ../../rtl/video/overlay.vhd(226)
  // ../../rtl/video/overlay.vhd(226)
  // ../../rtl/video/overlay.vhd(226)
  AL_PHY_MSLICE #(
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/reg6_b8|U8/reg6_b7  (
    .ce(\U8/mux24_b0_sel_is_3_o ),
    .clk(clk_28),
    .mi({\U8/char_buf [0],osd_command[7]}),
    .q(\U8/vram_di [8:7]));  // ../../rtl/video/overlay.vhd(226)
  AL_PHY_MSLICE #(
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/reg6_b9  (
    .ce(\U8/mux24_b0_sel_is_3_o ),
    .clk(clk_28),
    .mi({open_n4662,\U8/char_buf [1]}),
    .q({open_n4669,\U8/vram_di [9]}));  // ../../rtl/video/overlay.vhd(226)
  // ../../rtl/video/overlay.vhd(167)
  // ../../rtl/video/overlay.vhd(167)
  AL_PHY_LSLICE #(
    //.LUTF0("(~0*~(~C*~(B*~(A)*~(D)+B*A*~(D)+~(B)*A*D+B*A*D)))"),
    //.LUTF1("(~(A)*~(B)*C*~(D)*~(0)+A*~(B)*C*~(D)*~(0)+~(A)*B*C*~(D)*~(0)+A*B*C*~(D)*~(0)+~(A)*B*C*D*~(0)+A*B*C*D*~(0)+A*~(B)*~(C)*~(D)*0+A*B*~(C)*~(D)*0+A*~(B)*C*~(D)*0+A*B*C*~(D)*0+~(A)*B*~(C)*D*0+A*B*~(C)*D*0+~(A)*B*C*D*0+A*B*C*D*0)"),
    //.LUTG0("(~1*~(~C*~(B*~(A)*~(D)+B*A*~(D)+~(B)*A*D+B*A*D)))"),
    //.LUTG1("(~(A)*~(B)*C*~(D)*~(1)+A*~(B)*C*~(D)*~(1)+~(A)*B*C*~(D)*~(1)+A*B*C*~(D)*~(1)+~(A)*B*C*D*~(1)+A*B*C*D*~(1)+A*~(B)*~(C)*~(D)*1+A*B*~(C)*~(D)*1+A*~(B)*C*~(D)*1+A*B*C*~(D)*1+~(A)*B*~(C)*D*1+A*B*~(C)*D*1+~(A)*B*C*D*1+A*B*C*D*1)"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111101011111100),
    .INIT_LUTF1(16'b1100000011110000),
    .INIT_LUTG0(16'b0000000000000000),
    .INIT_LUTG1(16'b1100110010101010),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/reg7_b0|U8/reg7_b8  (
    .a({\U7/vid_a_spec [1],\U7/vcnt_spec [6]}),
    .b({\U7/vid_a_spec [0],\U8/addr_read [8]}),
    .c({\U8/addr_read [0],osd_popup}),
    .ce(clk_div2),
    .clk(clk_28),
    .d({\U8/mux9_b0_sel_is_14_o ,\U8/mux9_b0_sel_is_14_o }),
    .e({\U8/mux5_b0_sel_is_30_o ,_al_u2164_o}),
    .q({\U8/addr_read [0],\U8/addr_read [8]}));  // ../../rtl/video/overlay.vhd(167)
  // ../../rtl/video/overlay.vhd(167)
  // ../../rtl/video/overlay.vhd(167)
  AL_PHY_LSLICE #(
    //.LUTF0("(~0*~(~C*~(B*~(A)*~(D)+B*A*~(D)+~(B)*A*D+B*A*D)))"),
    //.LUTF1("(~0*~(~C*~(B*~(A)*~(D)+B*A*~(D)+~(B)*A*D+B*A*D)))"),
    //.LUTG0("(~1*~(~C*~(B*~(A)*~(D)+B*A*~(D)+~(B)*A*D+B*A*D)))"),
    //.LUTG1("(~1*~(~C*~(B*~(A)*~(D)+B*A*~(D)+~(B)*A*D+B*A*D)))"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111101011111100),
    .INIT_LUTF1(16'b1111101011111100),
    .INIT_LUTG0(16'b0000000000000000),
    .INIT_LUTG1(16'b0000000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/reg7_b1|U8/reg7_b7  (
    .a({\U7/vid_a_spec [1],\U7/vid_a_spec [7]}),
    .b({\U8/addr_read [1],\U8/addr_read [7]}),
    .c({osd_popup,osd_popup}),
    .ce(clk_div2),
    .clk(clk_28),
    .d({\U8/mux9_b0_sel_is_14_o ,\U8/mux9_b0_sel_is_14_o }),
    .e({_al_u2177_o,_al_u2166_o}),
    .q({\U8/addr_read [1],\U8/addr_read [7]}));  // ../../rtl/video/overlay.vhd(167)
  // ../../rtl/video/overlay.vhd(167)
  // ../../rtl/video/overlay.vhd(167)
  AL_PHY_LSLICE #(
    //.LUTF0("(~0*~(~C*~(B*~(A)*~(D)+B*A*~(D)+~(B)*A*D+B*A*D)))"),
    //.LUTF1("(~0*~(~C*~(B*~(A)*~(D)+B*A*~(D)+~(B)*A*D+B*A*D)))"),
    //.LUTG0("(~1*~(~C*~(B*~(A)*~(D)+B*A*~(D)+~(B)*A*D+B*A*D)))"),
    //.LUTG1("(~1*~(~C*~(B*~(A)*~(D)+B*A*~(D)+~(B)*A*D+B*A*D)))"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111101011111100),
    .INIT_LUTF1(16'b1111101011111100),
    .INIT_LUTG0(16'b0000000000000000),
    .INIT_LUTG1(16'b0000000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/reg7_b2|U8/reg7_b6  (
    .a({\U7/vid_a_spec [2],\U7/vid_a_spec [6]}),
    .b({\U8/addr_read [2],\U8/addr_read [6]}),
    .c({osd_popup,osd_popup}),
    .ce(clk_div2),
    .clk(clk_28),
    .d({\U8/mux9_b0_sel_is_14_o ,\U8/mux9_b0_sel_is_14_o }),
    .e({_al_u2175_o,_al_u2168_o}),
    .q({\U8/addr_read [2],\U8/addr_read [6]}));  // ../../rtl/video/overlay.vhd(167)
  // ../../rtl/video/overlay.vhd(167)
  // ../../rtl/video/overlay.vhd(167)
  AL_PHY_LSLICE #(
    //.LUTF0("(~0*~(~C*~(B*~(A)*~(D)+B*A*~(D)+~(B)*A*D+B*A*D)))"),
    //.LUTF1("(~0*~(~C*~(B*~(A)*~(D)+B*A*~(D)+~(B)*A*D+B*A*D)))"),
    //.LUTG0("(~1*~(~C*~(B*~(A)*~(D)+B*A*~(D)+~(B)*A*D+B*A*D)))"),
    //.LUTG1("(~1*~(~C*~(B*~(A)*~(D)+B*A*~(D)+~(B)*A*D+B*A*D)))"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111101011111100),
    .INIT_LUTF1(16'b1111101011111100),
    .INIT_LUTG0(16'b0000000000000000),
    .INIT_LUTG1(16'b0000000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/reg7_b5|U8/reg7_b3  (
    .a({\U7/vid_a_spec [5],\U7/vid_a_spec [3]}),
    .b({\U8/addr_read [5],\U8/addr_read [3]}),
    .c({osd_popup,osd_popup}),
    .ce(clk_div2),
    .clk(clk_28),
    .d({\U8/mux9_b0_sel_is_14_o ,\U8/mux9_b0_sel_is_14_o }),
    .e({_al_u2170_o,_al_u2173_o}),
    .q({\U8/addr_read [5],\U8/addr_read [3]}));  // ../../rtl/video/overlay.vhd(167)
  // ../../rtl/video/overlay.vhd(167)
  // ../../rtl/video/overlay.vhd(167)
  AL_PHY_LSLICE #(
    //.LUTF0("(~(A)*B*C*~(D)*~(0)+A*B*C*~(D)*~(0)+~(A)*~(B)*~(C)*D*~(0)+A*~(B)*~(C)*D*~(0)+~(A)*B*~(C)*D*~(0)+A*B*~(C)*D*~(0)+~(A)*B*C*D*~(0)+A*B*C*D*~(0)+~(A)*~(B)*~(C)*D*0+~(A)*B*~(C)*D*0+~(A)*~(B)*C*D*0+~(A)*B*C*D*0)"),
    //.LUTF1("(~(A)*B*C*~(D)*~(0)+A*B*C*~(D)*~(0)+~(A)*~(B)*~(C)*D*~(0)+A*~(B)*~(C)*D*~(0)+~(A)*B*~(C)*D*~(0)+A*B*~(C)*D*~(0)+~(A)*B*C*D*~(0)+A*B*C*D*~(0)+~(A)*~(B)*~(C)*D*0+~(A)*B*~(C)*D*0+~(A)*~(B)*C*D*0+~(A)*B*C*D*0)"),
    //.LUTG0("(~(A)*B*C*~(D)*~(1)+A*B*C*~(D)*~(1)+~(A)*~(B)*~(C)*D*~(1)+A*~(B)*~(C)*D*~(1)+~(A)*B*~(C)*D*~(1)+A*B*~(C)*D*~(1)+~(A)*B*C*D*~(1)+A*B*C*D*~(1)+~(A)*~(B)*~(C)*D*1+~(A)*B*~(C)*D*1+~(A)*~(B)*C*D*1+~(A)*B*C*D*1)"),
    //.LUTG1("(~(A)*B*C*~(D)*~(1)+A*B*C*~(D)*~(1)+~(A)*~(B)*~(C)*D*~(1)+A*~(B)*~(C)*D*~(1)+~(A)*B*~(C)*D*~(1)+A*B*~(C)*D*~(1)+~(A)*B*C*D*~(1)+A*B*C*D*~(1)+~(A)*~(B)*~(C)*D*1+~(A)*B*~(C)*D*1+~(A)*~(B)*C*D*1+~(A)*B*C*D*1)"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1100111111000000),
    .INIT_LUTF1(16'b1100111111000000),
    .INIT_LUTG0(16'b0101010100000000),
    .INIT_LUTG1(16'b0101010100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U8/reg7_b9|U8/reg7_b4  (
    .a({\U8/mux5_b0_sel_is_30_o ,\U8/mux5_b0_sel_is_30_o }),
    .b({\U7/vcnt_spec [7],\U7/vid_a_spec [4]}),
    .c({\U8/mux9_b0_sel_is_14_o ,\U8/mux9_b0_sel_is_14_o }),
    .ce(clk_div2),
    .clk(clk_28),
    .d({\U8/addr_read [9],\U8/addr_read [4]}),
    .e({osd_popup,osd_popup}),
    .q({\U8/addr_read [9],\U8/addr_read [4]}));  // ../../rtl/video/overlay.vhd(167)
  AL_PHY_LSLICE #(
    //.LUTF0("(D*C*~B*~A)"),
    //.LUTG0("(D*C*~B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0001000000000000),
    .INIT_LUTG0(16'b0001000000000000),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U8/vram_wr_reg  (
    .a({open_n4770,osd_command[10]}),
    .b({open_n4771,osd_command[11]}),
    .c({open_n4772,_al_u1909_o}),
    .clk(clk_28),
    .d({open_n4774,osd_command[9]}),
    .sr(\U8/n74 ),
    .f({open_n4791,\U8/n78 }),
    .q({open_n4795,\U8/vram_wr }));  // ../../rtl/video/overlay.vhd(226)
  AL_PHY_PAD #(
    //.CLKSRC("CLK"),
    //.LOCATION("P125"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DO_DFFMODE("FF"),
    .DO_REGSET("RESET"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .OUTCEMUX("1"),
    .OUTCLKMUX("CLK"),
    .OUTRSTMUX("0"),
    .SRMODE("ASYNC"),
    .TSMUX("0"))
    \U9/HSYNC_VGA_reg_DO  (
    .ce(1'b1),
    .clk(clk_div2),
    .otrue(\U9/n46 ),
    .opad(VGA_HS));  // ../../rtl/video/vga_pal.vhd(482)
  // ../../rtl/video/vga_pal.vhd(210)
  // ../../rtl/video/vga_pal.vhd(210)
  AL_PHY_MSLICE #(
    //.LUT0("(D*C*B*~A)"),
    //.LUT1("(~D)"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0100000000000000),
    .INIT_LUT1(16'b0000000011111111),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U9/KSI_2_reg|U9/KSI_reg  (
    .a({open_n4805,\U9/VIDEO_H [7]}),
    .b({open_n4806,\U9/VIDEO_H [6]}),
    .c({open_n4807,\U9/VIDEO_H [8]}),
    .ce(\U9/VIDEO_H [9]),
    .clk(\U9/VIDEO_H [8]),
    .d({\U9/KSI ,\U9/VIDEO_H [9]}),
    .mi({open_n4818,\U7/vsync_spec }),
    .f({open_n4820,_al_u1985_o}),
    .q({\U9/KSI_2 ,\U9/KSI }));  // ../../rtl/video/vga_pal.vhd(210)
  // address_offset=0;data_offset=0;depth=1024;width=9;num_section=1;width_per_section=9;section_size=9;working_depth=1024;working_width=9;address_step=1;bytes_in_per_section=1;
  AL_PHY_BRAM #(
    //.RID("0x0009"),
    //.WID("0x0009"),
    .CEAMUX("1"),
    .CEBMUX("1"),
    .CSA0("INV"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("INV"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("9"),
    .DATA_WIDTH_B("9"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .READBACK("OFF"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    \U9/LINEBUF/inst_2048x9_sub_000000_000  (
    .addra({\U9/VIDEO_H ,3'b111}),
    .addrb({\U9/VGA_H ,\U9/VGA_H0 ,3'b111}),
    .clka(clk_28),
    .clkb(clk_28),
    .csa({open_n4826,open_n4827,\U9/VIDEO_V [0]}),
    .csb({open_n4828,open_n4829,\U9/VIDEO_V[0]_neg }),
    .dia(\U9/RGB ),
    .dib(9'b111111111),
    .dob({\U9/LINEBUF/inst_dob_i0_008 ,\U9/LINEBUF/inst_dob_i0_007 ,\U9/LINEBUF/inst_dob_i0_006 ,\U9/LINEBUF/inst_dob_i0_005 ,\U9/LINEBUF/inst_dob_i0_004 ,\U9/LINEBUF/inst_dob_i0_003 ,\U9/LINEBUF/inst_dob_i0_002 ,\U9/LINEBUF/inst_dob_i0_001 ,\U9/LINEBUF/inst_dob_i0_000 }));
  // address_offset=1024;data_offset=0;depth=1024;width=9;num_section=1;width_per_section=9;section_size=9;working_depth=1024;working_width=9;address_step=1;bytes_in_per_section=1;
  AL_PHY_BRAM #(
    //.RID("0x000A"),
    //.WID("0x000A"),
    .CEAMUX("1"),
    .CEBMUX("1"),
    .CSA0("SIG"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("INV"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("9"),
    .DATA_WIDTH_B("9"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .READBACK("OFF"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    \U9/LINEBUF/inst_2048x9_sub_001024_000  (
    .addra({\U9/VIDEO_H ,3'b111}),
    .addrb({\U9/VGA_H ,\U9/VGA_H0 ,3'b111}),
    .clka(clk_28),
    .clkb(clk_28),
    .csa({open_n4847,open_n4848,\U9/VIDEO_V [0]}),
    .csb({open_n4849,open_n4850,\U9/VIDEO_V [0]}),
    .dia(\U9/RGB ),
    .dib(9'b111111111),
    .dob({\U9/LINEBUF/inst_dob_i1_008 ,\U9/LINEBUF/inst_dob_i1_007 ,\U9/LINEBUF/inst_dob_i1_006 ,\U9/LINEBUF/inst_dob_i1_005 ,\U9/LINEBUF/inst_dob_i1_004 ,\U9/LINEBUF/inst_dob_i1_003 ,\U9/LINEBUF/inst_dob_i1_002 ,\U9/LINEBUF/inst_dob_i1_001 ,\U9/LINEBUF/inst_dob_i1_000 }));
  AL_PHY_LSLICE #(
    //.LUTF0("(~0*~D*~(C*~(~B*~A)))"),
    //.LUTF1("(D*~(~C*~(B*~A)))"),
    //.LUTG0("(~1*~D*~(C*~(~B*~A)))"),
    //.LUTG1("(D*~(~C*~(B*~A)))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000011111),
    .INIT_LUTF1(16'b1111010000000000),
    .INIT_LUTG0(16'b0000000000000000),
    .INIT_LUTG1(16'b1111010000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U9/VGA_BLANK_reg|_al_u2097  (
    .a({\U9/lt4_2/o_5_lutinv ,\U9/VGA_H [1]}),
    .b({\U9/VGA_H [6],\U9/VGA_H [2]}),
    .c({\U9/VGA_V_CLK ,\U9/VGA_H [3]}),
    .clk(clk_div2),
    .d({\U9/VGA_KGI_lutinv ,\U9/VGA_H [4]}),
    .e({open_n4867,\U9/VGA_H [5]}),
    .f({open_n4883,\U9/lt4_2/o_5_lutinv }),
    .q({\U9/VGA_BLANK ,open_n4887}));  // ../../rtl/video/vga_pal.vhd(482)
  // ../../rtl/spi/spi_slave.vhd(272)
  // ../../rtl/video/vga_pal.vhd(463)
  AL_PHY_LSLICE #(
    //.LUTF0("(C*B*~D)"),
    //.LUTF1("(~D)"),
    //.LUTG0("(C*B*~D)"),
    //.LUTG1("(~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011000000),
    .INIT_LUTF1(16'b0000000011111111),
    .INIT_LUTG0(16'b0000000011000000),
    .INIT_LUTG1(16'b0000000011111111),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U9/VGA_H0_reg|U15/U_SPI/do_valid_o_reg_reg  (
    .b({open_n4890,\U15/U_SPI/do_valid_B }),
    .c({open_n4891,\U15/U_SPI/do_valid_A }),
    .clk(clk_28),
    .d({\U9/VGA_H0 ,\U15/U_SPI/do_valid_D }),
    .q({\U9/VGA_H0 ,\U15/spi_do_valid }));  // ../../rtl/spi/spi_slave.vhd(272)
  AL_PHY_PAD #(
    //.CLKSRC("CLK"),
    //.LOCATION("P124"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DO_DFFMODE("FF"),
    .DO_REGSET("RESET"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .OUTCEMUX("1"),
    .OUTCLKMUX("CLK"),
    .OUTRSTMUX("0"),
    .SRMODE("ASYNC"),
    .TSMUX("0"))
    \U9/VSYNC_VGA_reg_DO  (
    .ce(1'b1),
    .clk(clk_div2),
    .otrue(\U9/n45 ),
    .opad(VGA_VS));  // ../../rtl/video/vga_pal.vhd(482)
  AL_PHY_MSLICE #(
    //.MACRO("U9/reg0_b0|U9/add0/ucin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("ADD_CARRY"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U9/reg0_b0|U9/add0/ucin  (
    .a({\U9/VGA_H [0],1'b0}),
    .b({1'b1,open_n4924}),
    .clk(clk_div2),
    .sr(\U9/mux2_b0_sel_is_0_o ),
    .fco(\U9/add0/c1 ),
    .q({\U9/VGA_H [0],open_n4946}));
  AL_PHY_MSLICE #(
    //.MACRO("U9/reg0_b0|U9/add0/ucin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U9/reg0_b2|U9/reg0_b1  (
    .a(\U9/VGA_H [2:1]),
    .b(2'b00),
    .clk(clk_div2),
    .fci(\U9/add0/c1 ),
    .sr(\U9/mux2_b0_sel_is_0_o ),
    .fco(\U9/add0/c3 ),
    .q(\U9/VGA_H [2:1]));
  AL_PHY_MSLICE #(
    //.MACRO("U9/reg0_b0|U9/add0/ucin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U9/reg0_b4|U9/reg0_b3  (
    .a(\U9/VGA_H [4:3]),
    .b(2'b00),
    .clk(clk_div2),
    .fci(\U9/add0/c3 ),
    .sr(\U9/mux2_b0_sel_is_0_o ),
    .fco(\U9/add0/c5 ),
    .q(\U9/VGA_H [4:3]));
  AL_PHY_MSLICE #(
    //.MACRO("U9/reg0_b0|U9/add0/ucin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U9/reg0_b6|U9/reg0_b5  (
    .a(\U9/VGA_H [6:5]),
    .b(2'b00),
    .clk(clk_div2),
    .fci(\U9/add0/c5 ),
    .sr(\U9/mux2_b0_sel_is_0_o ),
    .fco(\U9/add0/c7 ),
    .q(\U9/VGA_H [6:5]));
  AL_PHY_MSLICE #(
    //.MACRO("U9/reg0_b0|U9/add0/ucin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U9/reg0_b8|U9/reg0_b7  (
    .a(\U9/VGA_H [8:7]),
    .b(2'b00),
    .clk(clk_div2),
    .fci(\U9/add0/c7 ),
    .sr(\U9/mux2_b0_sel_is_0_o ),
    .q(\U9/VGA_H [8:7]));
  AL_PHY_MSLICE #(
    //.MACRO("U9/reg1_b0|U9/add1/ucin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("ADD_CARRY"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U9/reg1_b0|U9/add1/ucin  (
    .a({\U9/VIDEO_H [0],1'b0}),
    .b({1'b1,open_n5028}),
    .clk(clk_div2),
    .sr(\U9/mux3_b0_sel_is_0_o ),
    .fco(\U9/add1/c1 ),
    .q({\U9/VIDEO_H [0],open_n5050}));
  AL_PHY_MSLICE #(
    //.MACRO("U9/reg1_b0|U9/add1/ucin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U9/reg1_b2|U9/reg1_b1  (
    .a(\U9/VIDEO_H [2:1]),
    .b(2'b00),
    .clk(clk_div2),
    .fci(\U9/add1/c1 ),
    .sr(\U9/mux3_b0_sel_is_0_o ),
    .fco(\U9/add1/c3 ),
    .q(\U9/VIDEO_H [2:1]));
  AL_PHY_MSLICE #(
    //.MACRO("U9/reg1_b0|U9/add1/ucin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U9/reg1_b4|U9/reg1_b3  (
    .a(\U9/VIDEO_H [4:3]),
    .b(2'b00),
    .clk(clk_div2),
    .fci(\U9/add1/c3 ),
    .sr(\U9/mux3_b0_sel_is_0_o ),
    .fco(\U9/add1/c5 ),
    .q(\U9/VIDEO_H [4:3]));
  AL_PHY_MSLICE #(
    //.MACRO("U9/reg1_b0|U9/add1/ucin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U9/reg1_b6|U9/reg1_b5  (
    .a(\U9/VIDEO_H [6:5]),
    .b(2'b00),
    .clk(clk_div2),
    .fci(\U9/add1/c5 ),
    .sr(\U9/mux3_b0_sel_is_0_o ),
    .fco(\U9/add1/c7 ),
    .q(\U9/VIDEO_H [6:5]));
  AL_PHY_MSLICE #(
    //.MACRO("U9/reg1_b0|U9/add1/ucin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U9/reg1_b8|U9/reg1_b7  (
    .a(\U9/VIDEO_H [8:7]),
    .b(2'b00),
    .clk(clk_div2),
    .fci(\U9/add1/c7 ),
    .sr(\U9/mux3_b0_sel_is_0_o ),
    .fco(\U9/add1/c9 ),
    .q(\U9/VIDEO_H [8:7]));
  AL_PHY_MSLICE #(
    //.MACRO("U9/reg1_b0|U9/add1/ucin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U9/reg1_b9_al_u2307  (
    .a({open_n5131,\U9/VIDEO_H [9]}),
    .b({open_n5132,1'b0}),
    .clk(clk_div2),
    .fci(\U9/add1/c9 ),
    .sr(\U9/mux3_b0_sel_is_0_o ),
    .q({open_n5154,\U9/VIDEO_H [9]}));
  AL_PHY_MSLICE #(
    //.MACRO("U9/reg2_b0|U9/add2/ucin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("ADD_CARRY"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U9/reg2_b0|U9/add2/ucin  (
    .a({\U9/VGA_V [0],1'b0}),
    .b({1'b1,open_n5155}),
    .clk(\U9/VGA_V_CLK ),
    .sr(\U9/RESET_V ),
    .fco(\U9/add2/c1 ),
    .q({\U9/VGA_V [0],open_n5177}));
  AL_PHY_MSLICE #(
    //.MACRO("U9/reg2_b0|U9/add2/ucin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U9/reg2_b2|U9/reg2_b1  (
    .a(\U9/VGA_V [2:1]),
    .b(2'b00),
    .clk(\U9/VGA_V_CLK ),
    .fci(\U9/add2/c1 ),
    .sr(\U9/RESET_V ),
    .fco(\U9/add2/c3 ),
    .q(\U9/VGA_V [2:1]));
  AL_PHY_MSLICE #(
    //.MACRO("U9/reg2_b0|U9/add2/ucin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U9/reg2_b4|U9/reg2_b3  (
    .a(\U9/VGA_V [4:3]),
    .b(2'b00),
    .clk(\U9/VGA_V_CLK ),
    .fci(\U9/add2/c3 ),
    .sr(\U9/RESET_V ),
    .fco(\U9/add2/c5 ),
    .q(\U9/VGA_V [4:3]));
  AL_PHY_MSLICE #(
    //.MACRO("U9/reg2_b0|U9/add2/ucin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U9/reg2_b6|U9/reg2_b5  (
    .a(\U9/VGA_V [6:5]),
    .b(2'b00),
    .clk(\U9/VGA_V_CLK ),
    .fci(\U9/add2/c5 ),
    .sr(\U9/RESET_V ),
    .fco(\U9/add2/c7 ),
    .q(\U9/VGA_V [6:5]));
  AL_PHY_MSLICE #(
    //.MACRO("U9/reg2_b0|U9/add2/ucin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U9/reg2_b8|U9/reg2_b7  (
    .a(\U9/VGA_V [8:7]),
    .b(2'b00),
    .clk(\U9/VGA_V_CLK ),
    .fci(\U9/add2/c7 ),
    .sr(\U9/RESET_V ),
    .fco(\U9/add2/c9 ),
    .q(\U9/VGA_V [8:7]));
  AL_PHY_MSLICE #(
    //.MACRO("U9/reg2_b0|U9/add2/ucin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U9/reg2_b9_al_u2308  (
    .a({open_n5258,\U9/VGA_V [9]}),
    .b({open_n5259,1'b0}),
    .clk(\U9/VGA_V_CLK ),
    .fci(\U9/add2/c9 ),
    .sr(\U9/RESET_V ),
    .q({open_n5281,\U9/VGA_V [9]}));
  AL_PHY_MSLICE #(
    //.MACRO("U9/reg3_b0|U9/add3/ucin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("ADD_CARRY"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U9/reg3_b0|U9/add3/ucin  (
    .a({\U9/VIDEO_V [0],1'b0}),
    .b({1'b1,open_n5282}),
    .clk(\U9/VIDEO_V_CLK ),
    .sr(\U9/RESET_V ),
    .fco(\U9/add3/c1 ),
    .q({\U9/VIDEO_V [0],open_n5304}));
  AL_PHY_MSLICE #(
    //.MACRO("U9/reg3_b0|U9/add3/ucin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U9/reg3_b2|U9/reg3_b1  (
    .a(\U9/VIDEO_V [2:1]),
    .b(2'b00),
    .clk(\U9/VIDEO_V_CLK ),
    .fci(\U9/add3/c1 ),
    .sr(\U9/RESET_V ),
    .fco(\U9/add3/c3 ),
    .q(\U9/VIDEO_V [2:1]));
  AL_PHY_MSLICE #(
    //.MACRO("U9/reg3_b0|U9/add3/ucin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U9/reg3_b4|U9/reg3_b3  (
    .a(\U9/VIDEO_V [4:3]),
    .b(2'b00),
    .clk(\U9/VIDEO_V_CLK ),
    .fci(\U9/add3/c3 ),
    .sr(\U9/RESET_V ),
    .fco(\U9/add3/c5 ),
    .q(\U9/VIDEO_V [4:3]));
  AL_PHY_MSLICE #(
    //.MACRO("U9/reg3_b0|U9/add3/ucin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U9/reg3_b6|U9/reg3_b5  (
    .a(\U9/VIDEO_V [6:5]),
    .b(2'b00),
    .clk(\U9/VIDEO_V_CLK ),
    .fci(\U9/add3/c5 ),
    .sr(\U9/RESET_V ),
    .fco(\U9/add3/c7 ),
    .q(\U9/VIDEO_V [6:5]));
  AL_PHY_MSLICE #(
    //.MACRO("U9/reg3_b0|U9/add3/ucin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U9/reg3_b8|U9/reg3_b7  (
    .a(\U9/VIDEO_V [8:7]),
    .b(2'b00),
    .clk(\U9/VIDEO_V_CLK ),
    .fci(\U9/add3/c7 ),
    .sr(\U9/RESET_V ),
    .q(\U9/VIDEO_V [8:7]));
  AL_PHY_PAD #(
    //.CLKSRC("CLK"),
    //.LOCATION("P126"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DO_DFFMODE("FF"),
    .DO_REGSET("RESET"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .OUTCEMUX("1"),
    .OUTCLKMUX("CLK"),
    .OUTRSTMUX("0"),
    .SRMODE("ASYNC"),
    .TSMUX("0"))
    \U9/reg4_b0_DO  (
    .ce(1'b1),
    .clk(clk_28),
    .otrue(\U9/n48 [0]),
    .opad(VGA_B[0]));  // ../../rtl/video/vga_pal.vhd(503)
  AL_PHY_PAD #(
    //.CLKSRC("CLK"),
    //.LOCATION("P127"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DO_DFFMODE("FF"),
    .DO_REGSET("RESET"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .OUTCEMUX("1"),
    .OUTCLKMUX("CLK"),
    .OUTRSTMUX("0"),
    .SRMODE("ASYNC"),
    .TSMUX("0"))
    \U9/reg4_b1_DO  (
    .ce(1'b1),
    .clk(clk_28),
    .otrue(\U9/n48 [1]),
    .opad(VGA_B[1]));  // ../../rtl/video/vga_pal.vhd(503)
  AL_PHY_PAD #(
    //.CLKSRC("CLK"),
    //.LOCATION("P128"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DO_DFFMODE("FF"),
    .DO_REGSET("RESET"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .OUTCEMUX("1"),
    .OUTCLKMUX("CLK"),
    .OUTRSTMUX("0"),
    .SRMODE("ASYNC"),
    .TSMUX("0"))
    \U9/reg4_b2_DO  (
    .ce(1'b1),
    .clk(clk_28),
    .otrue(\U9/n48 [2]),
    .opad(VGA_B[2]));  // ../../rtl/video/vga_pal.vhd(503)
  AL_PHY_PAD #(
    //.CLKSRC("CLK"),
    //.LOCATION("P129"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DO_DFFMODE("FF"),
    .DO_REGSET("RESET"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .OUTCEMUX("1"),
    .OUTCLKMUX("CLK"),
    .OUTRSTMUX("0"),
    .SRMODE("ASYNC"),
    .TSMUX("0"))
    \U9/reg4_b3_DO  (
    .ce(1'b1),
    .clk(clk_28),
    .otrue(\U9/n48 [3]),
    .opad(VGA_G[0]));  // ../../rtl/video/vga_pal.vhd(503)
  AL_PHY_PAD #(
    //.CLKSRC("CLK"),
    //.LOCATION("P132"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DO_DFFMODE("FF"),
    .DO_REGSET("RESET"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .OUTCEMUX("1"),
    .OUTCLKMUX("CLK"),
    .OUTRSTMUX("0"),
    .SRMODE("ASYNC"),
    .TSMUX("0"))
    \U9/reg4_b4_DO  (
    .ce(1'b1),
    .clk(clk_28),
    .otrue(\U9/n48 [4]),
    .opad(VGA_G[1]));  // ../../rtl/video/vga_pal.vhd(503)
  AL_PHY_PAD #(
    //.CLKSRC("CLK"),
    //.LOCATION("P133"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DO_DFFMODE("FF"),
    .DO_REGSET("RESET"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .OUTCEMUX("1"),
    .OUTCLKMUX("CLK"),
    .OUTRSTMUX("0"),
    .SRMODE("ASYNC"),
    .TSMUX("0"))
    \U9/reg4_b5_DO  (
    .ce(1'b1),
    .clk(clk_28),
    .otrue(\U9/n48 [5]),
    .opad(VGA_G[2]));  // ../../rtl/video/vga_pal.vhd(503)
  AL_PHY_PAD #(
    //.CLKSRC("CLK"),
    //.LOCATION("P135"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DO_DFFMODE("FF"),
    .DO_REGSET("RESET"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .OUTCEMUX("1"),
    .OUTCLKMUX("CLK"),
    .OUTRSTMUX("0"),
    .SRMODE("ASYNC"),
    .TSMUX("0"))
    \U9/reg4_b6_DO  (
    .ce(1'b1),
    .clk(clk_28),
    .otrue(\U9/n48 [6]),
    .opad(VGA_R[0]));  // ../../rtl/video/vga_pal.vhd(503)
  AL_PHY_PAD #(
    //.CLKSRC("CLK"),
    //.LOCATION("P136"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DO_DFFMODE("FF"),
    .DO_REGSET("RESET"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .OUTCEMUX("1"),
    .OUTCLKMUX("CLK"),
    .OUTRSTMUX("0"),
    .SRMODE("ASYNC"),
    .TSMUX("0"))
    \U9/reg4_b7_DO  (
    .ce(1'b1),
    .clk(clk_28),
    .otrue(\U9/n48 [7]),
    .opad(VGA_R[1]));  // ../../rtl/video/vga_pal.vhd(503)
  AL_PHY_PAD #(
    //.CLKSRC("CLK"),
    //.LOCATION("P137"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DO_DFFMODE("FF"),
    .DO_REGSET("RESET"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .OUTCEMUX("1"),
    .OUTCLKMUX("CLK"),
    .OUTRSTMUX("0"),
    .SRMODE("ASYNC"),
    .TSMUX("0"))
    \U9/reg4_b8_DO  (
    .ce(1'b1),
    .clk(clk_28),
    .otrue(\U9/n48 [8]),
    .opad(VGA_R[2]));  // ../../rtl/video/vga_pal.vhd(503)
  AL_PHY_MSLICE #(
    //.LUT0("((~(A)*C*~(D)+A*C*~(D)+A*~(C)*D)*~(B)*~(0)+(~(A)*C*~(D)+A*C*~(D)+A*~(C)*D)*B*~(0)+~((~(A)*C*~(D)+A*C*~(D)+A*~(C)*D))*B*0+(~(A)*C*~(D)+A*C*~(D)+A*~(C)*D)*B*0)"),
    //.LUT1("((~(A)*C*~(D)+A*C*~(D)+A*~(C)*D)*~(B)*~(1)+(~(A)*C*~(D)+A*C*~(D)+A*~(C)*D)*B*~(1)+~((~(A)*C*~(D)+A*C*~(D)+A*~(C)*D))*B*1+(~(A)*C*~(D)+A*C*~(D)+A*~(C)*D)*B*1)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000101011110000),
    .INIT_LUT1(16'b1100110011001100),
    .MODE("LOGIC"),
    .MSFXMUX("ON"),
    .REG0_REGSET("RESET"),
    .REG0_SD("FX"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U9/reg5_b0  (
    .a({\U7/palette_grb [2],\U7/palette_grb [2]}),
    .b({\U8/attr [5],\U8/attr [5]}),
    .c({\U8/mux19_b0_sel_is_0_o ,\U8/mux19_b0_sel_is_0_o }),
    .clk(clk_28),
    .d({_al_u2223_o,_al_u2223_o}),
    .mi({open_n5478,\U8/n63 }),
    .fx({open_n5483,vid_rgb_osd[0]}),
    .q({open_n5484,\U9/RGB [0]}));  // ../../rtl/video/vga_pal.vhd(181)
  // ../../rtl/video/vga_pal.vhd(181)
  // ../../rtl/video/vga_pal.vhd(181)
  AL_PHY_LSLICE #(
    //.LUTF0("~(D*~(C*B*A))"),
    //.LUTF1("~(C*~(B*D))"),
    //.LUTG0("~(D*~(C*B*A))"),
    //.LUTG1("~(C*~(B*D))"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1000000011111111),
    .INIT_LUTF1(16'b1100111100001111),
    .INIT_LUTG0(16'b1000000011111111),
    .INIT_LUTG1(16'b1100111100001111),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U9/reg5_b1|U9/reg5_b2  (
    .a({open_n5485,\U8/attr [4]}),
    .b({\U8/n63 ,\U8/attr [5]}),
    .c({_al_u2236_o,\U8/n63 }),
    .clk(clk_28),
    .d({\U8/attr [5],_al_u2248_o}),
    .f({vid_rgb_osd[1],vid_rgb_osd[2]}),
    .q({\U9/RGB [1],\U9/RGB [2]}));  // ../../rtl/video/vga_pal.vhd(181)
  AL_PHY_MSLICE #(
    //.LUT0("((~(A)*C*~(D)+A*C*~(D)+A*~(C)*D)*~(B)*~(0)+(~(A)*C*~(D)+A*C*~(D)+A*~(C)*D)*B*~(0)+~((~(A)*C*~(D)+A*C*~(D)+A*~(C)*D))*B*0+(~(A)*C*~(D)+A*C*~(D)+A*~(C)*D)*B*0)"),
    //.LUT1("((~(A)*C*~(D)+A*C*~(D)+A*~(C)*D)*~(B)*~(1)+(~(A)*C*~(D)+A*C*~(D)+A*~(C)*D)*B*~(1)+~((~(A)*C*~(D)+A*C*~(D)+A*~(C)*D))*B*1+(~(A)*C*~(D)+A*C*~(D)+A*~(C)*D)*B*1)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000101011110000),
    .INIT_LUT1(16'b1100110011001100),
    .MODE("LOGIC"),
    .MSFXMUX("ON"),
    .REG0_REGSET("RESET"),
    .REG0_SD("FX"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U9/reg5_b3  (
    .a({\U7/rgb_spec [1],\U7/rgb_spec [1]}),
    .b({\U8/attr [6],\U8/attr [6]}),
    .c({\U8/mux19_b0_sel_is_0_o ,\U8/mux19_b0_sel_is_0_o }),
    .clk(clk_28),
    .d({_al_u2223_o,_al_u2223_o}),
    .mi({open_n5518,\U8/n63 }),
    .fx({open_n5523,vid_rgb_osd[3]}),
    .q({open_n5524,\U9/RGB [3]}));  // ../../rtl/video/vga_pal.vhd(181)
  AL_PHY_MSLICE #(
    //.LUT0("~(~0*~(D*C)*~(B*A))"),
    //.LUT1("~(~1*~(D*C)*~(B*A))"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111100010001000),
    .INIT_LUT1(16'b1111111111111111),
    .MODE("LOGIC"),
    .MSFXMUX("ON"),
    .REG0_REGSET("RESET"),
    .REG0_SD("FX"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U9/reg5_b4  (
    .a({\U8/n63 ,\U8/n63 }),
    .b({\U8/attr [6],\U8/attr [6]}),
    .c({\U8/attr [2],\U8/attr [2]}),
    .clk(clk_28),
    .d({_al_u2233_o,_al_u2233_o}),
    .mi({open_n5536,_al_u2245_o}),
    .fx({open_n5541,vid_rgb_osd[4]}),
    .q({open_n5542,\U9/RGB [4]}));  // ../../rtl/video/vga_pal.vhd(181)
  AL_PHY_MSLICE #(
    //.LUT0("((C*B*~A)*~(D)*~(0)+(C*B*~A)*D*~(0)+~((C*B*~A))*D*0+(C*B*~A)*D*0)"),
    //.LUT1("((C*B*~A)*~(D)*~(1)+(C*B*~A)*D*~(1)+~((C*B*~A))*D*1+(C*B*~A)*D*1)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0100000001000000),
    .INIT_LUT1(16'b1111111100000000),
    .MODE("LOGIC"),
    .MSFXMUX("ON"),
    .REG0_REGSET("RESET"),
    .REG0_SD("FX"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U9/reg5_b6  (
    .a({\U8/mux19_b0_sel_is_0_o ,\U8/mux19_b0_sel_is_0_o }),
    .b({_al_u2223_o,_al_u2223_o}),
    .c({\U7/rgb_spec [2],\U7/rgb_spec [2]}),
    .clk(clk_28),
    .d({\U8/attr [7],\U8/attr [7]}),
    .mi({open_n5554,\U8/n63 }),
    .fx({open_n5559,vid_rgb_osd[6]}),
    .q({open_n5560,\U9/RGB [6]}));  // ../../rtl/video/vga_pal.vhd(181)
  AL_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("INV"))
    _al_u1648 (
    .otrue(1'b0),
    .ts(1'b0),
    .opad(ASDO));  // ../../rtl/karabas_pro.vhd(1214)
  AL_PHY_PAD #(
    //.LOCATION("P87"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("INV"))
    _al_u1649 (
    .otrue(\U15/spi_miso ),
    .ts(\U15/n1 ),
    .opad(AVR_MISO));  // ../../rtl/avr/avr.vhd(190)
  AL_PHY_PAD #(
    //.LOCATION("P88"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("1"))
    _al_u1650 (
    .ipad(AVR_NCS),
    .di(AVR_NCS_pad));  // ../../rtl/karabas_pro.vhd(70)
  AL_PHY_PAD #(
    //.LOCATION("P89"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("1"))
    _al_u1651 (
    .ipad(AVR_SCK),
    .di(AVR_SCK_pad));  // ../../rtl/karabas_pro.vhd(67)
  AL_PHY_PAD #(
    //.LOCATION("P86"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u1652 (
    .otrue(1'b0),
    .opad(BUZZER));  // ../../rtl/karabas_pro.vhd(99)
  AL_PHY_PAD #(
    //.LOCATION("P23"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("1"))
    _al_u1653 (
    .ipad(CLK_50MHZ),
    .di(CLK_50MHZ_pad));  // ../../rtl/karabas_pro.vhd(41)
  AL_PHY_PAD #(
    //.LOCATION("P113"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u1654 (
    .otrue(clk_84),
    .opad(CPLD_CLK));  // ../../rtl/karabas_pro.vhd(74)
  AL_PHY_PAD #(
    //.LOCATION("P112"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u1655 (
    .otrue(clk_8),
    .opad(CPLD_CLK2));  // ../../rtl/karabas_pro.vhd(75)
  AL_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u1656 (
    .otrue(1'b0),
    .opad(DCLK));  // ../../rtl/karabas_pro.vhd(52)
  AL_PHY_PAD #(
    //.LOCATION("P8"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u1657 (
    .otrue(1'b1),
    .opad(NCSO));  // ../../rtl/karabas_pro.vhd(51)
  AL_PHY_PAD #(
    //.LOCATION("P114"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u1658 (
    .otrue(1'b0),
    .opad(NRESET));  // ../../rtl/karabas_pro.vhd(73)
  AL_PHY_PAD #(
    //.LOCATION("P120"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u1659 (
    .otrue(1'b1),
    .opad(PIN_120));  // ../../rtl/karabas_pro.vhd(92)
  AL_PHY_PAD #(
    //.LOCATION("P121"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u1660 (
    .otrue(1'b0),
    .opad(PIN_121));  // ../../rtl/karabas_pro.vhd(91)
  AL_PHY_PAD #(
    //.LOCATION("P138"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("INV"))
    _al_u1661 (
    .otrue(1'b0),
    .ts(1'b0),
    .opad(PIN_138));
  AL_PHY_PAD #(
    //.LOCATION("P141"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("INV"))
    _al_u1662 (
    .otrue(1'b0),
    .ts(1'b0),
    .opad(PIN_141));
  AL_PHY_PAD #(
    //.LOCATION("P25"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("1"))
    _al_u1663 (
    .ipad(PIN_25));  // ../../rtl/karabas_pro.vhd(88)
  AL_PHY_PAD #(
    //.LOCATION("P7"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u1664 (
    .otrue(1'b1),
    .opad(PIN_7));  // ../../rtl/karabas_pro.vhd(93)
  AL_PHY_PAD #(
    //.LOCATION("P106"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u1665 (
    .otrue(1'b1),
    .opad(SA[1]));  // ../../rtl/karabas_pro.vhd(77)
  AL_PHY_PAD #(
    //.LOCATION("P110"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u1666 (
    .otrue(1'b1),
    .opad(SA[0]));  // ../../rtl/karabas_pro.vhd(77)
  AL_PHY_PAD #(
    //.LOCATION("P73"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("BI"),
    .TSMUX("1"))
    _al_u1667 (
    .bpad(SD[15]));  // ../../rtl/karabas_pro.vhd(78)
  AL_PHY_PAD #(
    //.LOCATION("P74"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("BI"),
    .TSMUX("1"))
    _al_u1668 (
    .bpad(SD[14]));  // ../../rtl/karabas_pro.vhd(78)
  AL_PHY_PAD #(
    //.LOCATION("P75"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("BI"),
    .TSMUX("1"))
    _al_u1669 (
    .bpad(SD[13]));  // ../../rtl/karabas_pro.vhd(78)
  AL_PHY_PAD #(
    //.LOCATION("P76"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("BI"),
    .TSMUX("1"))
    _al_u1670 (
    .bpad(SD[12]));  // ../../rtl/karabas_pro.vhd(78)
  AL_PHY_PAD #(
    //.LOCATION("P77"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("BI"),
    .TSMUX("1"))
    _al_u1671 (
    .bpad(SD[11]));  // ../../rtl/karabas_pro.vhd(78)
  AL_PHY_PAD #(
    //.LOCATION("P80"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("BI"),
    .TSMUX("1"))
    _al_u1672 (
    .bpad(SD[10]));  // ../../rtl/karabas_pro.vhd(78)
  AL_PHY_PAD #(
    //.LOCATION("P83"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("BI"),
    .TSMUX("1"))
    _al_u1673 (
    .bpad(SD[9]));  // ../../rtl/karabas_pro.vhd(78)
  AL_PHY_PAD #(
    //.LOCATION("P84"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("BI"),
    .TSMUX("1"))
    _al_u1674 (
    .bpad(SD[8]));  // ../../rtl/karabas_pro.vhd(78)
  AL_PHY_PAD #(
    //.LOCATION("P85"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("BI"),
    .TSMUX("0"))
    _al_u1675 (
    .otrue(1'b1),
    .bpad(SD[7]));  // ../../rtl/karabas_pro.vhd(78)
  AL_PHY_PAD #(
    //.LOCATION("P98"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("BI"),
    .TSMUX("0"))
    _al_u1676 (
    .otrue(1'b1),
    .bpad(SD[6]));  // ../../rtl/karabas_pro.vhd(78)
  AL_PHY_PAD #(
    //.LOCATION("P99"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("BI"),
    .TSMUX("0"))
    _al_u1677 (
    .otrue(1'b1),
    .bpad(SD[5]));  // ../../rtl/karabas_pro.vhd(78)
  AL_PHY_PAD #(
    //.LOCATION("P100"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("BI"),
    .TSMUX("0"))
    _al_u1678 (
    .otrue(1'b1),
    .bpad(SD[4]));  // ../../rtl/karabas_pro.vhd(78)
  AL_PHY_PAD #(
    //.LOCATION("P101"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("BI"),
    .TSMUX("0"))
    _al_u1679 (
    .otrue(1'b1),
    .bpad(SD[3]));  // ../../rtl/karabas_pro.vhd(78)
  AL_PHY_PAD #(
    //.LOCATION("P103"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("BI"),
    .TSMUX("0"))
    _al_u1680 (
    .otrue(1'b1),
    .bpad(SD[2]));  // ../../rtl/karabas_pro.vhd(78)
  AL_PHY_PAD #(
    //.LOCATION("P104"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("BI"),
    .TSMUX("0"))
    _al_u1681 (
    .otrue(1'b1),
    .bpad(SD[1]));  // ../../rtl/karabas_pro.vhd(78)
  AL_PHY_PAD #(
    //.LOCATION("P105"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("BI"),
    .TSMUX("0"))
    _al_u1682 (
    .otrue(1'b1),
    .bpad(SD[0]));  // ../../rtl/karabas_pro.vhd(78)
  AL_PHY_PAD #(
    //.LOCATION("P115"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("BI"),
    .TSMUX("0"))
    _al_u1683 (
    .otrue(1'b1),
    .bpad(SD_MOSI));  // ../../rtl/karabas_pro.vhd(96)
  AL_PHY_PAD #(
    //.LOCATION("P11"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u1684 (
    .otrue(1'b1),
    .opad(SD_NCS));  // ../../rtl/karabas_pro.vhd(56)
  AL_PHY_PAD #(
    //.LOCATION("P91"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("1"))
    _al_u1685 (
    .ipad(SD_NDET));  // ../../rtl/karabas_pro.vhd(57)
  AL_PHY_PAD #(
    //.LOCATION("P144"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u1686 (
    .otrue(1'b1),
    .opad(SND_BS));  // ../../rtl/karabas_pro.vhd(81)
  AL_PHY_PAD #(
    //.LOCATION("P142"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u1687 (
    .otrue(1'b0),
    .opad(SND_DAT));  // ../../rtl/karabas_pro.vhd(83)
  AL_PHY_PAD #(
    //.LOCATION("P143"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u1688 (
    .otrue(1'b0),
    .opad(SND_WS));  // ../../rtl/karabas_pro.vhd(82)
  AL_PHY_PAD #(
    //.LOCATION("P44"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u1689 (
    .otrue(1'b1),
    .opad(SRAM_A[20]));  // ../../rtl/karabas_pro.vhd(45)
  AL_PHY_PAD #(
    //.LOCATION("P59"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u1690 (
    .otrue(1'b0),
    .opad(SRAM_A[19]));  // ../../rtl/karabas_pro.vhd(45)
  AL_PHY_PAD #(
    //.LOCATION("P64"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u1691 (
    .otrue(1'b0),
    .opad(SRAM_A[18]));  // ../../rtl/karabas_pro.vhd(45)
  AL_PHY_PAD #(
    //.LOCATION("P65"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u1692 (
    .otrue(1'b0),
    .opad(SRAM_A[17]));  // ../../rtl/karabas_pro.vhd(45)
  AL_PHY_PAD #(
    //.LOCATION("P46"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u1693 (
    .otrue(1'b0),
    .opad(SRAM_A[16]));  // ../../rtl/karabas_pro.vhd(45)
  AL_PHY_PAD #(
    //.LOCATION("P49"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u1694 (
    .otrue(1'b0),
    .opad(SRAM_A[15]));  // ../../rtl/karabas_pro.vhd(45)
  AL_PHY_PAD #(
    //.LOCATION("P50"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u1695 (
    .otrue(1'b0),
    .opad(SRAM_A[14]));  // ../../rtl/karabas_pro.vhd(45)
  AL_PHY_PAD #(
    //.LOCATION("P51"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u1696 (
    .otrue(1'b0),
    .opad(SRAM_A[13]));  // ../../rtl/karabas_pro.vhd(45)
  AL_PHY_PAD #(
    //.LOCATION("P52"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u1697 (
    .otrue(1'b0),
    .opad(SRAM_A[12]));  // ../../rtl/karabas_pro.vhd(45)
  AL_PHY_PAD #(
    //.LOCATION("P53"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u1698 (
    .otrue(1'b0),
    .opad(SRAM_A[11]));  // ../../rtl/karabas_pro.vhd(45)
  AL_PHY_PAD #(
    //.LOCATION("P54"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u1699 (
    .otrue(1'b0),
    .opad(SRAM_A[10]));  // ../../rtl/karabas_pro.vhd(45)
  AL_PHY_PAD #(
    //.LOCATION("P55"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u1700 (
    .otrue(1'b0),
    .opad(SRAM_A[9]));  // ../../rtl/karabas_pro.vhd(45)
  AL_PHY_PAD #(
    //.LOCATION("P58"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u1701 (
    .otrue(1'b0),
    .opad(SRAM_A[8]));  // ../../rtl/karabas_pro.vhd(45)
  AL_PHY_PAD #(
    //.LOCATION("P66"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u1702 (
    .otrue(1'b0),
    .opad(SRAM_A[7]));  // ../../rtl/karabas_pro.vhd(45)
  AL_PHY_PAD #(
    //.LOCATION("P67"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u1703 (
    .otrue(1'b0),
    .opad(SRAM_A[6]));  // ../../rtl/karabas_pro.vhd(45)
  AL_PHY_PAD #(
    //.LOCATION("P68"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u1704 (
    .otrue(1'b0),
    .opad(SRAM_A[5]));  // ../../rtl/karabas_pro.vhd(45)
  AL_PHY_PAD #(
    //.LOCATION("P69"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u1705 (
    .otrue(1'b0),
    .opad(SRAM_A[4]));  // ../../rtl/karabas_pro.vhd(45)
  AL_PHY_PAD #(
    //.LOCATION("P70"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u1706 (
    .otrue(1'b0),
    .opad(SRAM_A[3]));  // ../../rtl/karabas_pro.vhd(45)
  AL_PHY_PAD #(
    //.LOCATION("P71"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u1707 (
    .otrue(1'b0),
    .opad(SRAM_A[2]));  // ../../rtl/karabas_pro.vhd(45)
  AL_PHY_PAD #(
    //.LOCATION("P72"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u1708 (
    .otrue(1'b0),
    .opad(SRAM_A[1]));  // ../../rtl/karabas_pro.vhd(45)
  AL_PHY_PAD #(
    //.LOCATION("P33"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u1709 (
    .otrue(1'b0),
    .opad(SRAM_A[0]));  // ../../rtl/karabas_pro.vhd(45)
  AL_PHY_PAD #(
    //.LOCATION("P43"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("BI"),
    .TSMUX("INV"))
    _al_u1710 (
    .otrue(1'b0),
    .ts(1'b1),
    .di(vid_do_bus[7]),
    .bpad(SRAM_D[7]));  // ../../rtl/memory/memory.vhd(39)
  AL_PHY_PAD #(
    //.LOCATION("P42"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("BI"),
    .TSMUX("INV"))
    _al_u1711 (
    .otrue(1'b0),
    .ts(1'b1),
    .di(vid_do_bus[6]),
    .bpad(SRAM_D[6]));  // ../../rtl/memory/memory.vhd(39)
  AL_PHY_PAD #(
    //.LOCATION("P39"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("BI"),
    .TSMUX("INV"))
    _al_u1712 (
    .otrue(1'b0),
    .ts(1'b1),
    .di(vid_do_bus[5]),
    .bpad(SRAM_D[5]));  // ../../rtl/memory/memory.vhd(39)
  AL_PHY_PAD #(
    //.LOCATION("P38"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("BI"),
    .TSMUX("INV"))
    _al_u1713 (
    .otrue(1'b0),
    .ts(1'b1),
    .di(vid_do_bus[4]),
    .bpad(SRAM_D[4]));  // ../../rtl/memory/memory.vhd(39)
  AL_PHY_PAD #(
    //.LOCATION("P28"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("BI"),
    .TSMUX("INV"))
    _al_u1714 (
    .otrue(1'b0),
    .ts(1'b1),
    .di(vid_do_bus[3]),
    .bpad(SRAM_D[3]));  // ../../rtl/memory/memory.vhd(39)
  AL_PHY_PAD #(
    //.LOCATION("P30"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("BI"),
    .TSMUX("INV"))
    _al_u1715 (
    .otrue(1'b0),
    .ts(1'b1),
    .di(vid_do_bus[2]),
    .bpad(SRAM_D[2]));  // ../../rtl/memory/memory.vhd(39)
  AL_PHY_PAD #(
    //.LOCATION("P31"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("BI"),
    .TSMUX("INV"))
    _al_u1716 (
    .otrue(1'b0),
    .ts(1'b1),
    .di(vid_do_bus[1]),
    .bpad(SRAM_D[1]));  // ../../rtl/memory/memory.vhd(39)
  AL_PHY_PAD #(
    //.LOCATION("P32"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("BI"),
    .TSMUX("INV"))
    _al_u1717 (
    .otrue(1'b0),
    .ts(1'b1),
    .di(vid_do_bus[0]),
    .bpad(SRAM_D[0]));  // ../../rtl/memory/memory.vhd(39)
  AL_PHY_PAD #(
    //.LOCATION("P34"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u1718 (
    .otrue(1'b1),
    .opad(SRAM_NRD));  // ../../rtl/karabas_pro.vhd(47)
  AL_PHY_PAD #(
    //.LOCATION("P60"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u1719 (
    .otrue(1'b1),
    .opad(SRAM_NWR));  // ../../rtl/karabas_pro.vhd(46)
  AL_PHY_PAD #(
    //.LOCATION("P10"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("INV"))
    _al_u1720 (
    .otrue(1'b0),
    .ts(1'b1),
    .opad(TAPE_OUT));  // ../../rtl/karabas_pro.vhd(1546)
  AL_PHY_PAD #(
    //.LOCATION("P3"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u1721 (
    .otrue(UART_CTS_pad),
    .opad(UART_CTS));  // ../../rtl/karabas_pro.vhd(104)
  AL_PHY_PAD #(
    //.LOCATION("P1"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u1722 (
    .otrue(UART_TX_pad),
    .opad(UART_TX));  // ../../rtl/karabas_pro.vhd(103)
  AL_PHY_LSLICE #(
    //.LUTF0("~(~C*~D)"),
    //.LUTF1("~(~C*~D)"),
    //.LUTG0("~(~C*~D)"),
    //.LUTG1("~(~C*~D)"),
    .INIT_LUTF0(16'b1111111111110000),
    .INIT_LUTF1(16'b1111111111110000),
    .INIT_LUTG0(16'b1111111111110000),
    .INIT_LUTG1(16'b1111111111110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u1860|_al_u1862  (
    .c({\U9/KSI ,\U9/VIDEO_H [9]}),
    .d({\U9/KSI_2 ,\U9/VIDEO_H [8]}),
    .f({\U9/RESET_V ,\U9/VIDEO_V_CLK }));
  // ../../rtl/uart/uart.v(141)
  AL_PHY_MSLICE #(
    //.LUT0("~(~C*~D)"),
    //.LUT1("(C*~(~B*~D))"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111111111110000),
    .INIT_LUT1(16'b1111000011000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \_al_u1886|G_UNO_UART$U22/uartchip/transmitter/reg1_b1  (
    .b({\G_UNO_UART$U22/uartchip/transmitter/state [1],open_n6405}),
    .c({\G_UNO_UART$U22/txbusy ,\G_UNO_UART$U22/uartchip/transmitter/n10 [1]}),
    .ce(\G_UNO_UART$U22/uartchip/transmitter/mux14_b0_sel_is_1_o ),
    .clk(clk_28),
    .d({\G_UNO_UART$U22/uartchip/transmitter/state [0],_al_u1953_o}),
    .f({\G_UNO_UART$U22/uartchip/transmitter/mux14_b0_sel_is_1_o ,open_n6419}),
    .q({open_n6423,\G_UNO_UART$U22/uartchip/transmitter/bpscounter [1]}));  // ../../rtl/uart/uart.v(141)
  // ../../rtl/spi/spi_slave.vhd(272)
  AL_PHY_LSLICE #(
    //.LUTF0("(~(A)*~(B)*~(C)*~(D)*~(0)+A*~(B)*~(C)*~(D)*~(0)+A*~(B)*C*~(D)*~(0)+~(A)*B*C*~(D)*~(0)+A*B*C*~(D)*~(0)+~(A)*~(B)*~(C)*D*~(0)+A*~(B)*~(C)*D*~(0)+~(A)*B*~(C)*D*~(0)+A*B*~(C)*D*~(0)+~(A)*~(B)*C*D*~(0)+A*~(B)*C*D*~(0)+~(A)*B*C*D*~(0)+A*B*C*D*~(0)+~(A)*~(B)*~(C)*~(D)*0+A*~(B)*~(C)*~(D)*0+~(A)*B*~(C)*~(D)*0+A*B*~(C)*~(D)*0+~(A)*~(B)*C*~(D)*0+A*~(B)*C*~(D)*0+~(A)*B*C*~(D)*0+A*B*C*~(D)*0+~(A)*~(B)*~(C)*D*0)"),
    //.LUTF1("(~D*~C*~B*~A)"),
    //.LUTG0("(~(A)*~(B)*~(C)*~(D)*~(1)+A*~(B)*~(C)*~(D)*~(1)+A*~(B)*C*~(D)*~(1)+~(A)*B*C*~(D)*~(1)+A*B*C*~(D)*~(1)+~(A)*~(B)*~(C)*D*~(1)+A*~(B)*~(C)*D*~(1)+~(A)*B*~(C)*D*~(1)+A*B*~(C)*D*~(1)+~(A)*~(B)*C*D*~(1)+A*~(B)*C*D*~(1)+~(A)*B*C*D*~(1)+A*B*C*D*~(1)+~(A)*~(B)*~(C)*~(D)*1+A*~(B)*~(C)*~(D)*1+~(A)*B*~(C)*~(D)*1+A*B*~(C)*~(D)*1+~(A)*~(B)*C*~(D)*1+A*~(B)*C*~(D)*1+~(A)*B*C*~(D)*1+A*B*C*~(D)*1+~(A)*~(B)*~(C)*D*1)"),
    //.LUTG1("(~D*~C*~B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111111111100011),
    .INIT_LUTF1(16'b0000000000000001),
    .INIT_LUTG0(16'b0000000111111111),
    .INIT_LUTG1(16'b0000000000000001),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \_al_u1887|U15/U_SPI/do_valid_A_reg  (
    .a({\U15/U_SPI/state_dbg_o[1] ,\U15/U_SPI/state_dbg_o[0] }),
    .b({\U15/U_SPI/state_dbg_o[2] ,\U15/U_SPI/state_dbg_o[1] }),
    .c({\U15/U_SPI/state_dbg_o[3] ,\U15/U_SPI/state_dbg_o[2] }),
    .clk(clk_28),
    .d({\U15/U_SPI/state_dbg_o[4] ,\U15/U_SPI/state_dbg_o[3] }),
    .e({open_n6425,\U15/U_SPI/state_dbg_o[4] }),
    .mi({open_n6427,\U15/U_SPI/do_transfer_o }),
    .f({\U15/U_SPI/n22_lutinv ,_al_u2188_o}),
    .q({open_n6443,\U15/U_SPI/do_valid_A }));  // ../../rtl/spi/spi_slave.vhd(272)
  // ../../rtl/uart/uart.v(141)
  AL_PHY_MSLICE #(
    //.LUT0("(C*~D)"),
    //.LUT1("(~D*~C*~B*~A)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000011110000),
    .INIT_LUT1(16'b0000000000000001),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \_al_u1949|G_UNO_UART$U22/uartchip/transmitter/reg1_b17  (
    .a({\G_UNO_UART$U22/uartchip/transmitter/bpscounter [14],open_n6444}),
    .b({\G_UNO_UART$U22/uartchip/transmitter/bpscounter [15],open_n6445}),
    .c({\G_UNO_UART$U22/uartchip/transmitter/bpscounter [16],\G_UNO_UART$U22/uartchip/transmitter/n10 [17]}),
    .ce(\G_UNO_UART$U22/uartchip/transmitter/mux14_b0_sel_is_1_o ),
    .clk(clk_28),
    .d({\G_UNO_UART$U22/uartchip/transmitter/bpscounter [17],_al_u1953_o}),
    .f({_al_u1949_o,open_n6459}),
    .q({open_n6463,\G_UNO_UART$U22/uartchip/transmitter/bpscounter [17]}));  // ../../rtl/uart/uart.v(141)
  AL_PHY_MSLICE #(
    //.LUT0("(0*~D*~C*~B*~A)"),
    //.LUT1("(1*~D*~C*~B*~A)"),
    .INIT_LUT0(16'b0000000000000000),
    .INIT_LUT1(16'b0000000000000001),
    .MODE("LOGIC"),
    .MSFXMUX("ON"))
    _al_u1950 (
    .a({\G_UNO_UART$U22/uartchip/transmitter/bpscounter [2],\G_UNO_UART$U22/uartchip/transmitter/bpscounter [2]}),
    .b({\G_UNO_UART$U22/uartchip/transmitter/bpscounter [3],\G_UNO_UART$U22/uartchip/transmitter/bpscounter [3]}),
    .c({\G_UNO_UART$U22/uartchip/transmitter/bpscounter [4],\G_UNO_UART$U22/uartchip/transmitter/bpscounter [4]}),
    .d({\G_UNO_UART$U22/uartchip/transmitter/bpscounter [5],\G_UNO_UART$U22/uartchip/transmitter/bpscounter [5]}),
    .mi({open_n6476,_al_u1949_o}),
    .fx({open_n6481,_al_u1950_o}));
  AL_PHY_LSLICE #(
    //.LUTF0("(D*C*B*A)"),
    //.LUTF1("(~D*~C*~B*~A)"),
    //.LUTG0("(D*C*B*A)"),
    //.LUTG1("(~D*~C*~B*~A)"),
    .INIT_LUTF0(16'b1000000000000000),
    .INIT_LUTF1(16'b0000000000000001),
    .INIT_LUTG0(16'b1000000000000000),
    .INIT_LUTG1(16'b0000000000000001),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u1952|_al_u2013  (
    .a({\G_UNO_UART$U22/uartchip/transmitter/bpscounter [10],\U8/U_ICONS/cnt_icon_fd [14]}),
    .b({\G_UNO_UART$U22/uartchip/transmitter/bpscounter [11],\U8/U_ICONS/cnt_icon_fd [15]}),
    .c({\G_UNO_UART$U22/uartchip/transmitter/bpscounter [12],\U8/U_ICONS/cnt_icon_fd [16]}),
    .d({\G_UNO_UART$U22/uartchip/transmitter/bpscounter [13],\U8/U_ICONS/cnt_icon_fd [17]}),
    .f({_al_u1952_o,_al_u2013_o}));
  AL_PHY_LSLICE #(
    //.LUTF0("(0*~D*~C*~B*~A)"),
    //.LUTF1("(D*C*~B*~A)"),
    //.LUTG0("(1*~D*~C*~B*~A)"),
    //.LUTG1("(D*C*~B*~A)"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b0001000000000000),
    .INIT_LUTG0(16'b0000000000000001),
    .INIT_LUTG1(16'b0001000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u1953|_al_u1951  (
    .a({\G_UNO_UART$U22/uartchip/transmitter/bpscounter [0],\G_UNO_UART$U22/uartchip/transmitter/bpscounter [6]}),
    .b({\G_UNO_UART$U22/uartchip/transmitter/bpscounter [1],\G_UNO_UART$U22/uartchip/transmitter/bpscounter [7]}),
    .c({_al_u1951_o,\G_UNO_UART$U22/uartchip/transmitter/bpscounter [8]}),
    .d({_al_u1952_o,\G_UNO_UART$U22/uartchip/transmitter/bpscounter [9]}),
    .e({open_n6510,_al_u1950_o}),
    .f({_al_u1953_o,_al_u1951_o}));
  // ../../rtl/karabas_pro.vhd(1086)
  AL_PHY_MSLICE #(
    //.LUT0("(~D)"),
    //.LUT1("(D*C*B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000011111111),
    .INIT_LUT1(16'b0100000000000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \_al_u1980|clk_div4_reg  (
    .a({\U9/VGA_H [6],open_n6531}),
    .b({\U9/VGA_H [5],open_n6532}),
    .c({\U9/VGA_H [7],open_n6533}),
    .clk(clk_div2),
    .d({\U9/VGA_H [8],clk_div4}),
    .f({_al_u1980_o,open_n6548}),
    .q({open_n6552,clk_div4}));  // ../../rtl/karabas_pro.vhd(1086)
  AL_PHY_MSLICE #(
    //.LUT0("~(~C*~D)"),
    //.LUT1("(C*B*D)"),
    .INIT_LUT0(16'b1111111111110000),
    .INIT_LUT1(16'b1100000000000000),
    .MODE("LOGIC"))
    \_al_u1981|_al_u1861  (
    .b({\U9/VGA_H [1],open_n6555}),
    .c({\U9/VGA_H [2],\U9/VGA_H [8]}),
    .d({\U9/VGA_H [0],\U9/VGA_H [7]}),
    .f({_al_u1981_o,\U9/VGA_V_CLK }));
  // ../../rtl/video/vga_pal.vhd(197)
  AL_PHY_MSLICE #(
    //.LUT0("(~D)"),
    //.LUT1("(D*~C*~B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000011111111),
    .INIT_LUT1(16'b0000000100000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \_al_u1982|U9/SSI_2_reg  (
    .a({\U9/SSI_2 ,open_n6576}),
    .b({\U9/SSI ,open_n6577}),
    .c({\U9/VIDEO_V [8],open_n6578}),
    .clk(clk_div2),
    .d({\U9/VIDEO_V [7],\U9/SSI }),
    .f({_al_u1982_o,open_n6593}),
    .q({open_n6597,\U9/SSI_2 }));  // ../../rtl/video/vga_pal.vhd(197)
  // ../../rtl/memory/memory.vhd(248)
  AL_PHY_MSLICE #(
    //.LUT0("(~D)"),
    //.LUT1("(D*C*B*A)"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000011111111),
    .INIT_LUT1(16'b1000000000000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \_al_u1984|U6/vid_rd_reg  (
    .a({\U9/VIDEO_H [2],open_n6598}),
    .b({\U9/VIDEO_H [3],open_n6599}),
    .c({\U9/VIDEO_H [4],open_n6600}),
    .ce(clk_div2),
    .clk(clk_28),
    .d({\U9/VIDEO_H [5],vid_rd}),
    .f({_al_u1984_o,open_n6614}),
    .q({open_n6618,vid_rd}));  // ../../rtl/memory/memory.vhd(248)
  AL_PHY_MSLICE #(
    //.LUT0("(~0*~(D*C*B*A))"),
    //.LUT1("(~1*~(D*C*B*A))"),
    .INIT_LUT0(16'b0111111111111111),
    .INIT_LUT1(16'b0000000000000000),
    .MODE("LOGIC"),
    .MSFXMUX("ON"))
    _al_u1986 (
    .a({_al_u1984_o,_al_u1984_o}),
    .b({\U9/VIDEO_H [0],\U9/VIDEO_H [0]}),
    .c({\U9/VIDEO_H [1],\U9/VIDEO_H [1]}),
    .d({_al_u1985_o,_al_u1985_o}),
    .mi({open_n6631,_al_u1982_o}),
    .fx({open_n6636,\U9/mux3_b0_sel_is_0_o }));
  AL_PHY_MSLICE #(
    //.LUT0("(0*D*~C*~B*~A)"),
    //.LUT1("(1*D*~C*~B*~A)"),
    .INIT_LUT0(16'b0000000000000000),
    .INIT_LUT1(16'b0000000100000000),
    .MODE("LOGIC"),
    .MSFXMUX("ON"))
    _al_u1988 (
    .a({\G_UNO_UART$U22/uartchip/transmitter/state [0],\G_UNO_UART$U22/uartchip/transmitter/state [0]}),
    .b({\G_UNO_UART$U22/uartchip/transmitter/bitcnt [0],\G_UNO_UART$U22/uartchip/transmitter/bitcnt [0]}),
    .c({\G_UNO_UART$U22/uartchip/transmitter/bitcnt [1],\G_UNO_UART$U22/uartchip/transmitter/bitcnt [1]}),
    .d({_al_u1953_o,_al_u1953_o}),
    .mi({open_n6651,\G_UNO_UART$U22/uartchip/transmitter/state [1]}),
    .fx({open_n6656,_al_u1988_o}));
  // ../../rtl/spi/spi_slave.vhd(245)
  AL_PHY_LSLICE #(
    //.LUTF0("((B*~A)*~(C)*~(D)+(B*~A)*C*~(D)+~((B*~A))*C*D+(B*~A)*C*D)"),
    //.LUTF1("(~C*~D)"),
    //.LUTG0("((B*~A)*~(C)*~(D)+(B*~A)*C*~(D)+~((B*~A))*C*D+(B*~A)*C*D)"),
    //.LUTG1("(~C*~D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111000001000100),
    .INIT_LUTF1(16'b0000000000001111),
    .INIT_LUTG0(16'b1111000001000100),
    .INIT_LUTG1(16'b0000000000001111),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \_al_u1996|U15/U_SPI/reg1_b23  (
    .a({open_n6659,\U15/U_SPI/n22_lutinv }),
    .b({open_n6660,\U15/U_SPI/sh_reg [22]}),
    .c({\U15/U_SPI/n27_lutinv ,\U15/U_SPI/sh_reg [23]}),
    .clk(AVR_SCK_pad),
    .d({\U15/U_SPI/n22_lutinv ,\U15/U_SPI/n27_lutinv }),
    .f({\U15/U_SPI/n5_lutinv ,open_n6679}),
    .q({open_n6683,\U15/U_SPI/sh_reg [23]}));  // ../../rtl/spi/spi_slave.vhd(245)
  // ../../rtl/video/icons.vhd(133)
  AL_PHY_MSLICE #(
    //.LUT0("~(~C*~D)"),
    //.LUT1("(D*C*B*A)"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111111111110000),
    .INIT_LUT1(16'b1000000000000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \_al_u2015|U8/U_ICONS/reg0_b6  (
    .a({\U8/U_ICONS/cnt_icon_fd [3],open_n6684}),
    .b({\U8/U_ICONS/cnt_icon_fd [4],open_n6685}),
    .c({\U8/U_ICONS/cnt_icon_fd [5],\U8/U_ICONS/n23 [6]}),
    .ce(clk_div2),
    .clk(clk_28),
    .d({\U8/U_ICONS/cnt_icon_fd [6],_al_u2018_o}),
    .f({_al_u2015_o,open_n6699}),
    .q({open_n6703,\U8/U_ICONS/cnt_icon_fd [6]}));  // ../../rtl/video/icons.vhd(133)
  AL_PHY_LSLICE #(
    //.LUTF0("(0*D*C*B*A)"),
    //.LUTF1("(0*D*C*B*A)"),
    //.LUTG0("(1*D*C*B*A)"),
    //.LUTG1("(1*D*C*B*A)"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b0000000000000000),
    .INIT_LUTG0(16'b1000000000000000),
    .INIT_LUTG1(16'b1000000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u2016|_al_u2014  (
    .a({_al_u2014_o,_al_u2013_o}),
    .b({_al_u2015_o,\U8/U_ICONS/cnt_icon_fd [18]}),
    .c({\U8/U_ICONS/cnt_icon_fd [7],\U8/U_ICONS/cnt_icon_fd [19]}),
    .d({\U8/U_ICONS/cnt_icon_fd [8],\U8/U_ICONS/cnt_icon_fd [2]}),
    .e({\U8/U_ICONS/cnt_icon_fd [9],\U8/U_ICONS/cnt_icon_fd [20]}),
    .f({_al_u2016_o,_al_u2014_o}));
  AL_PHY_MSLICE #(
    //.LUT0("(D*C*B*A)"),
    //.LUT1("(D*C*B*A)"),
    .INIT_LUT0(16'b1000000000000000),
    .INIT_LUT1(16'b1000000000000000),
    .MODE("LOGIC"))
    \_al_u2017|_al_u2018  (
    .a({\U8/U_ICONS/cnt_icon_fd [10],_al_u2016_o}),
    .b({\U8/U_ICONS/cnt_icon_fd [11],_al_u2017_o}),
    .c({\U8/U_ICONS/cnt_icon_fd [12],\U8/U_ICONS/cnt_icon_fd [0]}),
    .d({\U8/U_ICONS/cnt_icon_fd [13],\U8/U_ICONS/cnt_icon_fd [1]}),
    .f({_al_u2017_o,_al_u2018_o}));
  AL_PHY_LSLICE #(
    //.LUTF0("(D*C*B*A)"),
    //.LUTF1("(D*C*B*A)"),
    //.LUTG0("(D*C*B*A)"),
    //.LUTG1("(D*C*B*A)"),
    .INIT_LUTF0(16'b1000000000000000),
    .INIT_LUTF1(16'b1000000000000000),
    .INIT_LUTG0(16'b1000000000000000),
    .INIT_LUTG1(16'b1000000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u2040|_al_u2044  (
    .a({\U8/U_ICONS/cnt_icon_sd [14],\U8/U_ICONS/cnt_icon_sd [10]}),
    .b({\U8/U_ICONS/cnt_icon_sd [15],\U8/U_ICONS/cnt_icon_sd [11]}),
    .c({\U8/U_ICONS/cnt_icon_sd [16],\U8/U_ICONS/cnt_icon_sd [12]}),
    .d({\U8/U_ICONS/cnt_icon_sd [17],\U8/U_ICONS/cnt_icon_sd [13]}),
    .f({_al_u2040_o,_al_u2044_o}));
  AL_PHY_MSLICE #(
    //.LUT0("(0*D*C*B*A)"),
    //.LUT1("(1*D*C*B*A)"),
    .INIT_LUT0(16'b0000000000000000),
    .INIT_LUT1(16'b1000000000000000),
    .MODE("LOGIC"),
    .MSFXMUX("ON"))
    _al_u2041 (
    .a({_al_u2040_o,_al_u2040_o}),
    .b({\U8/U_ICONS/cnt_icon_sd [18],\U8/U_ICONS/cnt_icon_sd [18]}),
    .c({\U8/U_ICONS/cnt_icon_sd [19],\U8/U_ICONS/cnt_icon_sd [19]}),
    .d({\U8/U_ICONS/cnt_icon_sd [2],\U8/U_ICONS/cnt_icon_sd [2]}),
    .mi({open_n6782,\U8/U_ICONS/cnt_icon_sd [20]}),
    .fx({open_n6787,_al_u2041_o}));
  // ../../rtl/video/icons.vhd(133)
  AL_PHY_LSLICE #(
    //.LUTF0("~(~C*~D)"),
    //.LUTF1("(D*C*B*A)"),
    //.LUTG0("~(~C*~D)"),
    //.LUTG1("(D*C*B*A)"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111111111110000),
    .INIT_LUTF1(16'b1000000000000000),
    .INIT_LUTG0(16'b1111111111110000),
    .INIT_LUTG1(16'b1000000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \_al_u2042|U8/U_ICONS/reg1_b6  (
    .a({\U8/U_ICONS/cnt_icon_sd [3],open_n6790}),
    .b({\U8/U_ICONS/cnt_icon_sd [4],open_n6791}),
    .c({\U8/U_ICONS/cnt_icon_sd [5],\U8/U_ICONS/n26 [6]}),
    .ce(clk_div2),
    .clk(clk_28),
    .d({\U8/U_ICONS/cnt_icon_sd [6],_al_u2045_o}),
    .f({_al_u2042_o,open_n6809}),
    .q({open_n6813,\U8/U_ICONS/cnt_icon_sd [6]}));  // ../../rtl/video/icons.vhd(133)
  AL_PHY_LSLICE #(
    //.LUTF0("(0*D*C*B*A)"),
    //.LUTF1("(D*C*B*A)"),
    //.LUTG0("(1*D*C*B*A)"),
    //.LUTG1("(D*C*B*A)"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b1000000000000000),
    .INIT_LUTG0(16'b1000000000000000),
    .INIT_LUTG1(16'b1000000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u2045|_al_u2043  (
    .a({_al_u2043_o,_al_u2041_o}),
    .b({_al_u2044_o,_al_u2042_o}),
    .c({\U8/U_ICONS/cnt_icon_sd [0],\U8/U_ICONS/cnt_icon_sd [7]}),
    .d({\U8/U_ICONS/cnt_icon_sd [1],\U8/U_ICONS/cnt_icon_sd [8]}),
    .e({open_n6816,\U8/U_ICONS/cnt_icon_sd [9]}),
    .f({_al_u2045_o,_al_u2043_o}));
  AL_PHY_MSLICE #(
    //.LUT0("(~D*~C*~B*~A)"),
    //.LUT1("(D*C*B*A)"),
    .INIT_LUT0(16'b0000000000000001),
    .INIT_LUT1(16'b1000000000000000),
    .MODE("LOGIC"))
    \_al_u2067|_al_u2109  (
    .a({\U8/U_ICONS/cnt_icon_cf [14],\G_UNO_UART$U22/uartchip/receiver/bpscounter [10]}),
    .b({\U8/U_ICONS/cnt_icon_cf [15],\G_UNO_UART$U22/uartchip/receiver/bpscounter [11]}),
    .c({\U8/U_ICONS/cnt_icon_cf [16],\G_UNO_UART$U22/uartchip/receiver/bpscounter [12]}),
    .d({\U8/U_ICONS/cnt_icon_cf [17],\G_UNO_UART$U22/uartchip/receiver/bpscounter [13]}),
    .f({_al_u2067_o,_al_u2109_o}));
  AL_PHY_MSLICE #(
    //.LUT0("(0*D*C*B*A)"),
    //.LUT1("(1*D*C*B*A)"),
    .INIT_LUT0(16'b0000000000000000),
    .INIT_LUT1(16'b1000000000000000),
    .MODE("LOGIC"),
    .MSFXMUX("ON"))
    _al_u2068 (
    .a({_al_u2067_o,_al_u2067_o}),
    .b({\U8/U_ICONS/cnt_icon_cf [18],\U8/U_ICONS/cnt_icon_cf [18]}),
    .c({\U8/U_ICONS/cnt_icon_cf [19],\U8/U_ICONS/cnt_icon_cf [19]}),
    .d({\U8/U_ICONS/cnt_icon_cf [2],\U8/U_ICONS/cnt_icon_cf [2]}),
    .mi({open_n6869,\U8/U_ICONS/cnt_icon_cf [20]}),
    .fx({open_n6874,_al_u2068_o}));
  // ../../rtl/video/icons.vhd(133)
  AL_PHY_LSLICE #(
    //.LUTF0("~(~C*~D)"),
    //.LUTF1("(D*C*B*A)"),
    //.LUTG0("~(~C*~D)"),
    //.LUTG1("(D*C*B*A)"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111111111110000),
    .INIT_LUTF1(16'b1000000000000000),
    .INIT_LUTG0(16'b1111111111110000),
    .INIT_LUTG1(16'b1000000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \_al_u2069|U8/U_ICONS/reg2_b6  (
    .a({\U8/U_ICONS/cnt_icon_cf [3],open_n6877}),
    .b({\U8/U_ICONS/cnt_icon_cf [4],open_n6878}),
    .c({\U8/U_ICONS/cnt_icon_cf [5],\U8/U_ICONS/n29 [6]}),
    .ce(clk_div2),
    .clk(clk_28),
    .d({\U8/U_ICONS/cnt_icon_cf [6],_al_u2072_o}),
    .f({_al_u2069_o,open_n6896}),
    .q({open_n6900,\U8/U_ICONS/cnt_icon_cf [6]}));  // ../../rtl/video/icons.vhd(133)
  AL_PHY_MSLICE #(
    //.LUT0("(0*D*C*B*A)"),
    //.LUT1("(1*D*C*B*A)"),
    .INIT_LUT0(16'b0000000000000000),
    .INIT_LUT1(16'b1000000000000000),
    .MODE("LOGIC"),
    .MSFXMUX("ON"))
    _al_u2070 (
    .a({_al_u2068_o,_al_u2068_o}),
    .b({_al_u2069_o,_al_u2069_o}),
    .c({\U8/U_ICONS/cnt_icon_cf [7],\U8/U_ICONS/cnt_icon_cf [7]}),
    .d({\U8/U_ICONS/cnt_icon_cf [8],\U8/U_ICONS/cnt_icon_cf [8]}),
    .mi({open_n6913,\U8/U_ICONS/cnt_icon_cf [9]}),
    .fx({open_n6918,_al_u2070_o}));
  AL_PHY_MSLICE #(
    //.LUT0("(D*C*B*A)"),
    //.LUT1("(D*C*B*A)"),
    .INIT_LUT0(16'b1000000000000000),
    .INIT_LUT1(16'b1000000000000000),
    .MODE("LOGIC"))
    \_al_u2071|_al_u2072  (
    .a({\U8/U_ICONS/cnt_icon_cf [10],_al_u2070_o}),
    .b({\U8/U_ICONS/cnt_icon_cf [11],_al_u2071_o}),
    .c({\U8/U_ICONS/cnt_icon_cf [12],\U8/U_ICONS/cnt_icon_cf [0]}),
    .d({\U8/U_ICONS/cnt_icon_cf [13],\U8/U_ICONS/cnt_icon_cf [1]}),
    .f({_al_u2071_o,_al_u2072_o}));
  AL_PHY_LSLICE #(
    //.LUTF0("(~0*~(D*C*B*A))"),
    //.LUTF1("(~C*~B*~D)"),
    //.LUTG0("(~1*~(D*C*B*A))"),
    //.LUTG1("(~C*~B*~D)"),
    .INIT_LUTF0(16'b0111111111111111),
    .INIT_LUTF1(16'b0000000000000011),
    .INIT_LUTG0(16'b0000000000000000),
    .INIT_LUTG1(16'b0000000000000011),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u2094|_al_u1983  (
    .a({open_n6941,_al_u1980_o}),
    .b({\U9/VGA_H [3],\U9/VGA_H [3]}),
    .c({\U9/VGA_H [4],\U9/VGA_H [4]}),
    .d({_al_u1981_o,_al_u1981_o}),
    .e({open_n6944,_al_u1982_o}),
    .f({\U9/lt1_2/o_4_lutinv ,\U9/mux2_b0_sel_is_0_o }));
  // ../../rtl/video/vga_pal.vhd(197)
  AL_PHY_MSLICE #(
    //.LUT0("~(A*~((C@B))*~(D)+A*(C@B)*~(D)+~(A)*(C@B)*D+A*(C@B)*D)"),
    //.LUT1("(~D*~C*~(B*~A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1100001101010101),
    .INIT_LUT1(16'b0000000000001011),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \_al_u2095|U9/SSI_reg  (
    .a({\U9/lt1_2/o_4_lutinv ,_al_u2095_o}),
    .b({\U9/VGA_H [5],\U7/hsync_spec }),
    .c({\U9/VGA_V_CLK ,\U7/vsync_spec }),
    .clk(clk_div2),
    .d({\U9/VGA_H [6],soft_sw[1]}),
    .mi({open_n6976,\U7/hsync_spec }),
    .f({_al_u2095_o,\U9/n46 }),
    .q({open_n6981,\U9/SSI }));  // ../../rtl/video/vga_pal.vhd(197)
  AL_PHY_MSLICE #(
    //.LUT0("~(~C*~(B*D))"),
    //.LUT1("(~C*~D)"),
    .INIT_LUT0(16'b1111110011110000),
    .INIT_LUT1(16'b0000000000001111),
    .MODE("LOGIC"))
    \_al_u2099|_al_u2253  (
    .b({open_n6984,vid_rgb_osd[0]}),
    .c({\U9/VGA_V [8],_al_u2252_o}),
    .d({\U9/VGA_V [7],soft_sw[1]}),
    .f({_al_u2099_o,\U9/n48 [0]}));
  // ../../rtl/spi/spi_slave.vhd(245)
  AL_PHY_LSLICE #(
    //.LUTF0("~(~C*~(B*~D))"),
    //.LUTF1("(~((~B*~A))*~(C)*~(D)+(~B*~A)*~(C)*~(D)+~((~B*~A))*~(C)*D+~((~B*~A))*C*D+(~B*~A)*C*D)"),
    //.LUTG0("~(~C*~(B*~D))"),
    //.LUTG1("(~((~B*~A))*~(C)*~(D)+(~B*~A)*~(C)*~(D)+~((~B*~A))*~(C)*D+~((~B*~A))*C*D+(~B*~A)*C*D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111000011111100),
    .INIT_LUTF1(16'b1111111000001111),
    .INIT_LUTG0(16'b1111000011111100),
    .INIT_LUTG1(16'b1111111000001111),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \_al_u2100|U15/U_SPI/do_transfer_reg_reg  (
    .a({_al_u2098_o,open_n7005}),
    .b({\U9/VGA_V [6],\U15/U_SPI/do_transfer_o }),
    .c({\U9/VGA_V [9],\U15/U_SPI/n25 }),
    .clk(AVR_SCK_pad),
    .d({_al_u2099_o,_al_u2188_o}),
    .f({\U9/VGA_KGI_lutinv ,open_n7024}),
    .q({open_n7028,\U15/U_SPI/do_transfer_o }));  // ../../rtl/spi/spi_slave.vhd(245)
  AL_PHY_LSLICE #(
    //.LUTF0("(0*~(~D*~C*~B*~A))"),
    //.LUTF1("(0*~B*~A*(D@C))"),
    //.LUTG0("(1*~(~D*~C*~B*~A))"),
    //.LUTG1("(1*~B*~A*(D@C))"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b0000000000000000),
    .INIT_LUTG0(16'b1111111111111110),
    .INIT_LUTG1(16'b0000000100010000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u2103|_al_u2098  (
    .a({\U9/VGA_V [3],\U9/VGA_V [3]}),
    .b(\U9/VGA_V [5:4]),
    .c({\U9/VGA_V [0],\U9/VGA_V [1]}),
    .d({\U9/VGA_V [1],\U9/VGA_V [2]}),
    .e({\U9/VGA_V [4],\U9/VGA_V [5]}),
    .f({_al_u2103_o,_al_u2098_o}));
  // ../../rtl/video/overlay.vhd(226)
  AL_PHY_MSLICE #(
    //.LUT0("~(~C*~(B*D))"),
    //.LUT1("(~(D*~C)*~(B*A))"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111110011110000),
    .INIT_LUT1(16'b0111000001110111),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \_al_u2104|U8/reg3_b6  (
    .a({_al_u2102_o,open_n7051}),
    .b({_al_u2103_o,vid_rgb_osd[5]}),
    .c({\U7/vsync_spec ,_al_u2260_o}),
    .ce(\U8/n74 ),
    .clk(clk_28),
    .d({soft_sw[1],soft_sw[1]}),
    .mi({open_n7062,osd_command[6]}),
    .f({\U9/n45 ,\U9/n48 [5]}),
    .q({open_n7067,\U8/last_osd_command [6]}));  // ../../rtl/video/overlay.vhd(226)
  AL_PHY_LSLICE #(
    //.LUTF0("(0*~D*~C*~B*~A)"),
    //.LUTF1("(D*~C*~B*~A)"),
    //.LUTG0("(1*~D*~C*~B*~A)"),
    //.LUTG1("(D*~C*~B*~A)"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b0000000100000000),
    .INIT_LUTG0(16'b0000000000000001),
    .INIT_LUTG1(16'b0000000100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u2111|_al_u2110  (
    .a({\G_UNO_UART$U22/uartchip/receiver/bpscounter [7],\G_UNO_UART$U22/uartchip/receiver/bpscounter [14]}),
    .b({\G_UNO_UART$U22/uartchip/receiver/bpscounter [8],\G_UNO_UART$U22/uartchip/receiver/bpscounter [15]}),
    .c({\G_UNO_UART$U22/uartchip/receiver/bpscounter [9],\G_UNO_UART$U22/uartchip/receiver/bpscounter [16]}),
    .d({_al_u2110_o,\G_UNO_UART$U22/uartchip/receiver/bpscounter [17]}),
    .e({open_n7070,_al_u2109_o}),
    .f({_al_u2111_o,_al_u2110_o}));
  AL_PHY_LSLICE #(
    //.LUTF0("(~D*~C*~B*~A)"),
    //.LUTF1("(D*C*~B*~A)"),
    //.LUTG0("(~D*~C*~B*~A)"),
    //.LUTG1("(D*C*~B*~A)"),
    .INIT_LUTF0(16'b0000000000000001),
    .INIT_LUTF1(16'b0001000000000000),
    .INIT_LUTG0(16'b0000000000000001),
    .INIT_LUTG1(16'b0001000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u2112|_al_u2121  (
    .a(\G_UNO_UART$U22/uartchip/receiver/bpscounter [1:0]),
    .b(\G_UNO_UART$U22/uartchip/receiver/bpscounter [2:1]),
    .c({\G_UNO_UART$U22/uartchip/receiver/bpscounter [0],\G_UNO_UART$U22/uartchip/receiver/bpscounter [2]}),
    .d({\G_UNO_UART$U22/uartchip/receiver/bpscounter [3],\G_UNO_UART$U22/uartchip/receiver/bpscounter [3]}),
    .f({_al_u2112_o,_al_u2121_o}));
  AL_PHY_MSLICE #(
    //.LUT0("(0*D*C*B*A)"),
    //.LUT1("(1*D*C*B*A)"),
    .INIT_LUT0(16'b0000000000000000),
    .INIT_LUT1(16'b1000000000000000),
    .MODE("LOGIC"),
    .MSFXMUX("ON"))
    _al_u2113 (
    .a({_al_u2111_o,_al_u2111_o}),
    .b({_al_u2112_o,_al_u2112_o}),
    .c({\G_UNO_UART$U22/uartchip/receiver/bpscounter [4],\G_UNO_UART$U22/uartchip/receiver/bpscounter [4]}),
    .d({\G_UNO_UART$U22/uartchip/receiver/bpscounter [5],\G_UNO_UART$U22/uartchip/receiver/bpscounter [5]}),
    .mi({open_n7127,\G_UNO_UART$U22/uartchip/receiver/bpscounter [6]}),
    .fx({open_n7132,_al_u2113_o}));
  AL_PHY_MSLICE #(
    //.LUT0("(0*D*~C*~B*~A)"),
    //.LUT1("(1*D*~C*~B*~A)"),
    .INIT_LUT0(16'b0000000000000000),
    .INIT_LUT1(16'b0000000100000000),
    .MODE("LOGIC"),
    .MSFXMUX("ON"))
    _al_u2122 (
    .a({\G_UNO_UART$U22/uartchip/receiver/bpscounter [4],\G_UNO_UART$U22/uartchip/receiver/bpscounter [4]}),
    .b({\G_UNO_UART$U22/uartchip/receiver/bpscounter [5],\G_UNO_UART$U22/uartchip/receiver/bpscounter [5]}),
    .c({\G_UNO_UART$U22/uartchip/receiver/bpscounter [6],\G_UNO_UART$U22/uartchip/receiver/bpscounter [6]}),
    .d({_al_u2121_o,_al_u2121_o}),
    .mi({open_n7147,_al_u2111_o}),
    .fx({open_n7152,_al_u2122_o}));
  AL_PHY_LSLICE #(
    //.LUTF0("(~C*~D)"),
    //.LUTF1("(C*D)"),
    //.LUTG0("(~C*~D)"),
    //.LUTG1("(C*D)"),
    .INIT_LUTF0(16'b0000000000001111),
    .INIT_LUTF1(16'b1111000000000000),
    .INIT_LUTG0(16'b0000000000001111),
    .INIT_LUTG1(16'b1111000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u2124|_al_u2118  (
    .c({\G_UNO_UART$U22/uartchip/receiver/state [0],\G_UNO_UART$U22/uartchip/receiver/state [2]}),
    .d({_al_u2122_o,\G_UNO_UART$U22/uartchip/receiver/state [1]}),
    .f({_al_u2124_o,_al_u2118_o}));
  AL_PHY_LSLICE #(
    //.LUTF0("(~C*~(~B*~D))"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(~C*~(~B*~D))"),
    //.LUTG1("(C*~D)"),
    .INIT_LUTF0(16'b0000111100001100),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000111100001100),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u2126|_al_u2136  (
    .b({open_n7185,\G_UNO_UART$U22/uartchip/receiver/state [1]}),
    .c({\G_UNO_UART$U22/uartchip/receiver/state [0],\G_UNO_UART$U22/uartchip/receiver/state [2]}),
    .d({_al_u2122_o,\G_UNO_UART$U22/uartchip/receiver/n17 [0]}),
    .f({\G_UNO_UART$U22/uartchip/receiver/n17 [0],_al_u2136_o}));
  AL_PHY_LSLICE #(
    //.LUTF0("(C*B*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*B*~D)"),
    //.LUTG1("(C*~D)"),
    .INIT_LUTF0(16'b0000000011000000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011000000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u2127|_al_u2137  (
    .b({open_n7212,\G_UNO_UART$U22/uartchip/receiver/state [1]}),
    .c({_al_u2122_o,_al_u2127_o}),
    .d({\G_UNO_UART$U22/uartchip/receiver/state [0],\G_UNO_UART$U22/uartchip/receiver/state [2]}),
    .f({_al_u2127_o,_al_u2137_o}));
  // ../../rtl/uart/uart.v(272)
  AL_PHY_LSLICE #(
    //.LUTF0("~(~C*~(D@(B*~A)))"),
    //.LUTF1("(D*~C*~B*~A)"),
    //.LUTG0("~(~C*~(D@(B*~A)))"),
    //.LUTG1("(D*~C*~B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111101111110100),
    .INIT_LUTF1(16'b0000000100000000),
    .INIT_LUTG0(16'b1111101111110100),
    .INIT_LUTG1(16'b0000000100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \_al_u2128|G_UNO_UART$U22/uartchip/receiver/reg5_b1  (
    .a({\G_UNO_UART$U22/uartchip/receiver/bitcnt [0],\G_UNO_UART$U22/uartchip/receiver/bitcnt [0]}),
    .b({\G_UNO_UART$U22/uartchip/receiver/bitcnt [1],_al_u2137_o}),
    .c({\G_UNO_UART$U22/uartchip/receiver/bitcnt [2],_al_u2157_o}),
    .clk(clk_28),
    .d({_al_u2127_o,\G_UNO_UART$U22/uartchip/receiver/bitcnt [1]}),
    .f({_al_u2128_o,open_n7255}),
    .q({open_n7259,\G_UNO_UART$U22/uartchip/receiver/bitcnt [1]}));  // ../../rtl/uart/uart.v(272)
  // ../../rtl/uart/uart.v(272)
  AL_PHY_MSLICE #(
    //.LUT0("(~C*~B*~D)"),
    //.LUT1("(D*~C*~(B*~A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000000000011),
    .INIT_LUT1(16'b0000101100000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \_al_u2129|G_UNO_UART$U22/uartchip/receiver/reg1_b0  (
    .a({\G_UNO_UART$U22/uartchip/receiver/u18_sel_is_3_o ,open_n7260}),
    .b({\G_UNO_UART$U22/uartchip/receiver/n17 [0],_al_u2130_o}),
    .c({_al_u2128_o,\G_UNO_UART$U22/uartchip/receiver/state [2]}),
    .clk(clk_28),
    .d({\G_UNO_UART$U22/uartchip/receiver/state [1],_al_u2129_o}),
    .f({_al_u2129_o,open_n7275}),
    .q({open_n7279,\G_UNO_UART$U22/uartchip/receiver/state [0]}));  // ../../rtl/uart/uart.v(272)
  AL_PHY_MSLICE #(
    //.LUT0("(~0*~(~D*C)*~(B*~A))"),
    //.LUT1("(~1*~(~D*C)*~(B*~A))"),
    .INIT_LUT0(16'b1011101100001011),
    .INIT_LUT1(16'b0000000000000000),
    .MODE("LOGIC"),
    .MSFXMUX("ON"))
    _al_u2130 (
    .a({\G_UNO_UART$U22/uartchip/receiver/u10_sel_is_3_o ,\G_UNO_UART$U22/uartchip/receiver/u10_sel_is_3_o }),
    .b({\G_UNO_UART$U22/uartchip/receiver/n17 [0],\G_UNO_UART$U22/uartchip/receiver/n17 [0]}),
    .c({_al_u2117_o,_al_u2117_o}),
    .d({\G_UNO_UART$U22/uartchip/receiver/state [0],\G_UNO_UART$U22/uartchip/receiver/state [0]}),
    .mi({open_n7292,\G_UNO_UART$U22/uartchip/receiver/state [1]}),
    .fx({open_n7297,_al_u2130_o}));
  // ../../rtl/uart/uart.v(272)
  AL_PHY_LSLICE #(
    //.LUTF0("(~(A)*B*~(C)*~(D)+A*B*~(C)*~(D)+A*~(B)*C*D)"),
    //.LUTF1("(~D*(~(A)*B*~(C)+~(A)*~(B)*C+~(A)*B*C+A*B*C))"),
    //.LUTG0("(~(A)*B*~(C)*~(D)+A*B*~(C)*~(D)+A*~(B)*C*D)"),
    //.LUTG1("(~D*(~(A)*B*~(C)+~(A)*~(B)*C+~(A)*B*C+A*B*C))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0010000000001100),
    .INIT_LUTF1(16'b0000000011010100),
    .INIT_LUTG0(16'b0010000000001100),
    .INIT_LUTG1(16'b0000000011010100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \_al_u2132|G_UNO_UART$U22/uartchip/receiver/reg1_b2  (
    .a({_al_u2122_o,_al_u2122_o}),
    .b({\G_UNO_UART$U22/uartchip/receiver/state [0],\G_UNO_UART$U22/uartchip/receiver/state [2]}),
    .c({\G_UNO_UART$U22/uartchip/receiver/state [1],\G_UNO_UART$U22/uartchip/receiver/state [1]}),
    .clk(clk_28),
    .d({\G_UNO_UART$U22/uartchip/receiver/state [2],\G_UNO_UART$U22/uartchip/receiver/state [0]}),
    .f({_al_u2132_o,open_n7318}),
    .q({open_n7322,\G_UNO_UART$U22/uartchip/receiver/state [2]}));  // ../../rtl/uart/uart.v(272)
  // ../../rtl/video/pentagon_video.vhd(181)
  AL_PHY_LSLICE #(
    //.LUTF0("(~D)"),
    //.LUTF1("(~D*~(~C*~B*~A))"),
    //.LUTG0("(~D)"),
    //.LUTG1("(~D*~(~C*~B*~A))"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011111111),
    .INIT_LUTF1(16'b0000000011111110),
    .INIT_LUTG0(16'b0000000011111111),
    .INIT_LUTG1(16'b0000000011111110),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \_al_u2133|U7/U_PENT/reg2_b0  (
    .a({\G_UNO_UART$U22/uartchip/receiver/state [1],open_n7323}),
    .b({_al_u2117_o,open_n7324}),
    .c({\G_UNO_UART$U22/uartchip/receiver/state [0],open_n7325}),
    .ce(\U7/U_PENT/mux15_b0_sel_is_3_o ),
    .clk(clk_28),
    .d({\G_UNO_UART$U22/uartchip/receiver/state [2],\U7/vcnt_spec [0]}),
    .f({_al_u2133_o,open_n7343}),
    .q({open_n7347,\U7/vcnt_spec [0]}));  // ../../rtl/video/pentagon_video.vhd(181)
  AL_PHY_MSLICE #(
    //.LUT0("(~(A)*~(B)*~(C)*~(D)*~(0)+~(A)*B*~(C)*~(D)*~(0)+~(A)*~(B)*C*~(D)*~(0)+A*~(B)*C*~(D)*~(0)+~(A)*B*C*~(D)*~(0)+A*B*C*~(D)*~(0)+~(A)*~(B)*~(C)*D*~(0)+A*~(B)*~(C)*D*~(0)+~(A)*B*~(C)*D*~(0)+A*B*~(C)*D*~(0)+~(A)*~(B)*C*D*~(0)+A*~(B)*C*D*~(0)+~(A)*B*C*D*~(0)+A*B*C*D*~(0)+~(A)*~(B)*~(C)*~(D)*0+~(A)*B*~(C)*~(D)*0+~(A)*B*C*~(D)*0+A*B*C*~(D)*0+~(A)*B*~(C)*D*0+A*B*~(C)*D*0)"),
    //.LUT1("(~(A)*~(B)*~(C)*~(D)*~(1)+~(A)*B*~(C)*~(D)*~(1)+~(A)*~(B)*C*~(D)*~(1)+A*~(B)*C*~(D)*~(1)+~(A)*B*C*~(D)*~(1)+A*B*C*~(D)*~(1)+~(A)*~(B)*~(C)*D*~(1)+A*~(B)*~(C)*D*~(1)+~(A)*B*~(C)*D*~(1)+A*B*~(C)*D*~(1)+~(A)*~(B)*C*D*~(1)+A*~(B)*C*D*~(1)+~(A)*B*C*D*~(1)+A*B*C*D*~(1)+~(A)*~(B)*~(C)*~(D)*1+~(A)*B*~(C)*~(D)*1+~(A)*B*C*~(D)*1+A*B*C*~(D)*1+~(A)*B*~(C)*D*1+A*B*~(C)*D*1)"),
    .INIT_LUT0(16'b1111111111110101),
    .INIT_LUT1(16'b0000110011000101),
    .MODE("LOGIC"),
    .MSFXMUX("ON"))
    _al_u2143 (
    .a({_al_u2117_o,_al_u2117_o}),
    .b({_al_u2122_o,_al_u2122_o}),
    .c({\G_UNO_UART$U22/uartchip/receiver/state [0],\G_UNO_UART$U22/uartchip/receiver/state [0]}),
    .d({\G_UNO_UART$U22/uartchip/receiver/state [1],\G_UNO_UART$U22/uartchip/receiver/state [1]}),
    .mi({open_n7360,\G_UNO_UART$U22/uartchip/receiver/n3 [3]}),
    .fx({open_n7365,_al_u2143_o}));
  AL_PHY_MSLICE #(
    //.LUT0("(~(A)*~(B)*~(C)*~(D)*~(0)+~(A)*B*~(C)*~(D)*~(0)+~(A)*~(B)*C*~(D)*~(0)+A*~(B)*C*~(D)*~(0)+~(A)*B*C*~(D)*~(0)+A*B*C*~(D)*~(0)+~(A)*~(B)*~(C)*D*~(0)+A*~(B)*~(C)*D*~(0)+~(A)*B*~(C)*D*~(0)+A*B*~(C)*D*~(0)+~(A)*~(B)*C*D*~(0)+A*~(B)*C*D*~(0)+~(A)*B*C*D*~(0)+A*B*C*D*~(0)+~(A)*~(B)*~(C)*~(D)*0+~(A)*B*~(C)*~(D)*0+~(A)*B*C*~(D)*0+A*B*C*~(D)*0+~(A)*B*~(C)*D*0+A*B*~(C)*D*0)"),
    //.LUT1("(~(A)*~(B)*~(C)*~(D)*~(1)+~(A)*B*~(C)*~(D)*~(1)+~(A)*~(B)*C*~(D)*~(1)+A*~(B)*C*~(D)*~(1)+~(A)*B*C*~(D)*~(1)+A*B*C*~(D)*~(1)+~(A)*~(B)*~(C)*D*~(1)+A*~(B)*~(C)*D*~(1)+~(A)*B*~(C)*D*~(1)+A*B*~(C)*D*~(1)+~(A)*~(B)*C*D*~(1)+A*~(B)*C*D*~(1)+~(A)*B*C*D*~(1)+A*B*C*D*~(1)+~(A)*~(B)*~(C)*~(D)*1+~(A)*B*~(C)*~(D)*1+~(A)*B*C*~(D)*1+A*B*C*~(D)*1+~(A)*B*~(C)*D*1+A*B*~(C)*D*1)"),
    .INIT_LUT0(16'b1111111111110101),
    .INIT_LUT1(16'b0000110011000101),
    .MODE("LOGIC"),
    .MSFXMUX("ON"))
    _al_u2145 (
    .a({_al_u2117_o,_al_u2117_o}),
    .b({_al_u2122_o,_al_u2122_o}),
    .c({\G_UNO_UART$U22/uartchip/receiver/state [0],\G_UNO_UART$U22/uartchip/receiver/state [0]}),
    .d({\G_UNO_UART$U22/uartchip/receiver/state [1],\G_UNO_UART$U22/uartchip/receiver/state [1]}),
    .mi({open_n7380,\G_UNO_UART$U22/uartchip/receiver/n3 [2]}),
    .fx({open_n7385,_al_u2145_o}));
  // ../../rtl/uart/uart.v(272)
  AL_PHY_LSLICE #(
    //.LUTF0("(~D*(C@B))"),
    //.LUTF1("(C*D)"),
    //.LUTG0("(~D*(C@B))"),
    //.LUTG1("(C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000111100),
    .INIT_LUTF1(16'b1111000000000000),
    .INIT_LUTG0(16'b0000000000111100),
    .INIT_LUTG1(16'b1111000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \_al_u2157|G_UNO_UART$U22/uartchip/receiver/reg1_b1  (
    .b({open_n7390,_al_u2115_o}),
    .c({_al_u2118_o,_al_u2124_o}),
    .clk(clk_28),
    .d({_al_u2124_o,\G_UNO_UART$U22/uartchip/receiver/state [2]}),
    .f({_al_u2157_o,open_n7409}),
    .q({open_n7413,\G_UNO_UART$U22/uartchip/receiver/state [1]}));  // ../../rtl/uart/uart.v(272)
  // ../../rtl/spi/spi_slave.vhd(245)
  AL_PHY_LSLICE #(
    //.LUTF0("(~(A)*~(B)*~(C)*~(D)*~(0)+A*~(B)*~(C)*~(D)*~(0)+~(A)*B*~(C)*~(D)*~(0)+A*B*~(C)*~(D)*~(0)+~(A)*~(B)*C*~(D)*~(0)+A*~(B)*C*~(D)*~(0)+~(A)*~(B)*~(C)*D*~(0)+A*~(B)*~(C)*D*~(0)+~(A)*B*~(C)*D*~(0)+A*B*~(C)*D*~(0)+~(A)*~(B)*C*D*~(0)+A*~(B)*C*D*~(0)+~(A)*B*C*D*~(0)+A*B*C*D*~(0)+~(A)*~(B)*~(C)*~(D)*0+A*~(B)*~(C)*~(D)*0+~(A)*B*~(C)*~(D)*0+A*B*~(C)*~(D)*0+~(A)*~(B)*C*~(D)*0+A*~(B)*C*~(D)*0+~(A)*B*C*~(D)*0+A*B*C*~(D)*0+~(A)*~(B)*~(C)*D*0+~(A)*B*~(C)*D*0+~(A)*~(B)*C*D*0+A*~(B)*C*D*0+~(A)*B*C*D*0+A*B*C*D*0)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(~(A)*~(B)*~(C)*~(D)*~(1)+A*~(B)*~(C)*~(D)*~(1)+~(A)*B*~(C)*~(D)*~(1)+A*B*~(C)*~(D)*~(1)+~(A)*~(B)*C*~(D)*~(1)+A*~(B)*C*~(D)*~(1)+~(A)*~(B)*~(C)*D*~(1)+A*~(B)*~(C)*D*~(1)+~(A)*B*~(C)*D*~(1)+A*B*~(C)*D*~(1)+~(A)*~(B)*C*D*~(1)+A*~(B)*C*D*~(1)+~(A)*B*C*D*~(1)+A*B*C*D*~(1)+~(A)*~(B)*~(C)*~(D)*1+A*~(B)*~(C)*~(D)*1+~(A)*B*~(C)*~(D)*1+A*B*~(C)*~(D)*1+~(A)*~(B)*C*~(D)*1+A*~(B)*C*~(D)*1+~(A)*B*C*~(D)*1+A*B*C*~(D)*1+~(A)*~(B)*~(C)*D*1+~(A)*B*~(C)*D*1+~(A)*~(B)*C*D*1+A*~(B)*C*D*1+~(A)*B*C*D*1+A*B*C*D*1)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("CE"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111111100111111),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b1111010111111111),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \_al_u2214|U15/U_SPI/reg2_b5  (
    .a({open_n7414,_al_u2002_o}),
    .b({open_n7415,_al_u2005_o}),
    .c({\U7/U_PENT/mux13_b0_sel_is_3_o ,\U7/vcnt_spec [8]}),
    .ce(\U15/U_SPI/n25 ),
    .clk(AVR_SCK_pad),
    .d({_al_u2006_o,\U7/vcnt_spec [7]}),
    .e({open_n7416,\U7/vcnt_spec [6]}),
    .mi({open_n7418,\U15/U_SPI/sh_reg [4]}),
    .f({\U7/U_PENT/mux14_b0_sel_is_3_o ,_al_u2006_o}),
    .q({open_n7434,\U15/spi_do [5]}));  // ../../rtl/spi/spi_slave.vhd(245)
  AL_PHY_MSLICE #(
    //.LUT0("(0*~D*~C*~B*~A)"),
    //.LUT1("(1*~D*~C*~B*~A)"),
    .INIT_LUT0(16'b0000000000000000),
    .INIT_LUT1(16'b0000000000000001),
    .MODE("LOGIC"),
    .MSFXMUX("ON"))
    _al_u2224 (
    .a({blink,blink}),
    .b({\U8/attr [1],\U8/attr [1]}),
    .c({\U8/attr [2],\U8/attr [2]}),
    .d({\U8/attr [3],\U8/attr [3]}),
    .mi({open_n7447,\U8/attr [0]}),
    .fx({open_n7452,_al_u2224_o}));
  // ../../rtl/video/overlay.vhd(181)
  AL_PHY_LSLICE #(
    //.LUTF0("((D*~(A)*~(0)+D*A*~(0)+~(D)*A*0+D*A*0)*~(C*~B))"),
    //.LUTF1("(D*~A*(C@B))"),
    //.LUTG0("((D*~(A)*~(1)+D*A*~(1)+~(D)*A*1+D*A*1)*~(C*~B))"),
    //.LUTG1("(D*~A*(C@B))"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("LATCH"),
    .INIT_LUTF0(16'b1100111100000000),
    .INIT_LUTF1(16'b0001010000000000),
    .INIT_LUTG0(16'b1000101010001010),
    .INIT_LUTG1(16'b0001010000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \_al_u2227|U8/pixel_reg  (
    .a({\U8/mux19_b0_sel_is_0_o ,_al_u2181_o}),
    .b({_al_u2224_o,\U8/font_word [7]}),
    .c({\U8/pixel_reg_al_n0 ,_al_u1920_o}),
    .clk(1'b1),
    .d({\U8/paper ,_al_u2182_o}),
    .e({open_n7456,\U8/n46_lutinv }),
    .f({\U8/n63 ,open_n7472}),
    .q({open_n7476,\U8/pixel }));  // ../../rtl/video/overlay.vhd(181)
  AL_PHY_MSLICE #(
    //.LUT0("(~D*~(C*B*~A))"),
    //.LUT1("(C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000010111111),
    .INIT_LUT1(16'b1111000000000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("SR"))
    \_al_u2231|U8/U_ICONS/reg3_b0_bistable  (
    .a({open_n7477,_al_u2045_o}),
    .b({open_n7478,\U8/U_ICONS/icon_pixel }),
    .c({\U8/mux19_b0_sel_is_0_o ,\U8/U_ICONS/n37 }),
    .clk(\U8/U_ICONS/n37 ),
    .d({_al_u2223_o,_al_u2222_o}),
    .mi({open_n7490,1'b1}),
    .sr(\U8/U_ICONS/n35 ),
    .f({\U8/mux18_b1_sel_is_2_o ,_al_u2223_o}),
    .q({open_n7494,\net_U8/U_ICONS/reg3_b0_sel }));
  // ../../rtl/video/icons.vhd(80)
  AL_PHY_LSLICE #(
    //.LUTF0("(C*D)"),
    //.LUTF1("(C*D)"),
    //.LUTG0("(C*D)"),
    //.LUTG1("(C*D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("LATCH"),
    .INIT_LUTF0(16'b1111000000000000),
    .INIT_LUTF1(16'b1111000000000000),
    .INIT_LUTG0(16'b1111000000000000),
    .INIT_LUTG1(16'b1111000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("SR"))
    \_al_u2232|U8/U_ICONS/reg3_b0  (
    .c({\U7/rgb_spec [2],\U7/vid_a_spec [6]}),
    .clk(\U8/U_ICONS/n37 ),
    .d({\U8/mux18_b1_sel_is_2_o ,\U8/U_ICONS/n38 }),
    .mi({open_n7503,1'b1}),
    .sr(\U8/U_ICONS/n35 ),
    .f({_al_u2232_o,\U8/U_ICONS/n37 }),
    .q({open_n7518,\net_U8/U_ICONS/reg3_b0_reset_q }));  // ../../rtl/video/icons.vhd(80)
  // ../../rtl/video/overlay.vhd(197)
  AL_PHY_LSLICE #(
    //.LUTF0("(D*~A*~(C@B))"),
    //.LUTF1("~((B*A)*~(C)*~(D)+(B*A)*C*~(D)+~((B*A))*C*D+(B*A)*C*D)"),
    //.LUTG0("(D*~A*~(C@B))"),
    //.LUTG1("~((B*A)*~(C)*~(D)+(B*A)*C*~(D)+~((B*A))*C*D+(B*A)*C*D)"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0100000100000000),
    .INIT_LUTF1(16'b0000111101110111),
    .INIT_LUTG0(16'b0100000100000000),
    .INIT_LUTG1(16'b0000111101110111),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \_al_u2234|U8/pixel_reg_reg  (
    .a({_al_u2232_o,\U8/mux19_b0_sel_is_0_o }),
    .b({\U7/i_spec ,_al_u2224_o}),
    .c({\U8/attr [3],\U8/pixel_reg_al_n0 }),
    .ce(clk_div2),
    .clk(clk_28),
    .d({_al_u2233_o,\U8/paper }),
    .mi({open_n7522,\U8/pixel }),
    .f({_al_u2234_o,_al_u2233_o}),
    .q({open_n7538,\U8/pixel_reg_al_n0 }));  // ../../rtl/video/overlay.vhd(197)
  // ../../rtl/video/icons.vhd(80)
  AL_PHY_LSLICE #(
    //.LUTF0("(C*D)"),
    //.LUTF1("~((B*A)*~(C)*~(D)+(B*A)*C*~(D)+~((B*A))*C*D+(B*A)*C*D)"),
    //.LUTG0("(C*D)"),
    //.LUTG1("~((B*A)*~(C)*~(D)+(B*A)*C*~(D)+~((B*A))*C*D+(B*A)*C*D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("LATCH"),
    .INIT_LUTF0(16'b1111000000000000),
    .INIT_LUTF1(16'b0000111101110111),
    .INIT_LUTG0(16'b1111000000000000),
    .INIT_LUTG1(16'b0000111101110111),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("SR"))
    \_al_u2236|U8/U_ICONS/reg3_b1  (
    .a({\U8/mux18_b1_sel_is_2_o ,open_n7539}),
    .b({\U7/palette_grb [1],open_n7540}),
    .c({\U8/attr [1],\U7/vid_a_spec [7]}),
    .clk(\U8/U_ICONS/n40 ),
    .d({_al_u2233_o,\U8/U_ICONS/n35 }),
    .mi({open_n7545,1'b1}),
    .sr(\U8/U_ICONS/n38 ),
    .f({_al_u2236_o,\U8/U_ICONS/n40 }),
    .q({open_n7560,\net_U8/U_ICONS/reg3_b1_reset_q }));  // ../../rtl/video/icons.vhd(80)
  AL_PHY_MSLICE #(
    //.LUT0("(~D)"),
    //.LUT1("~(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000011111111),
    .INIT_LUT1(16'b0011000000111111),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \_al_u2238|U9/n40_pipe  (
    .b({\U9/LINEBUF/inst_dob_i1_006 ,open_n7563}),
    .c({\U9/n40_piped ,open_n7564}),
    .clk(clk_28),
    .d({\U9/LINEBUF/inst_dob_i0_006 ,\U9/VIDEO_V [0]}),
    .f({_al_u2238_o,\U9/VIDEO_V[0]_neg }),
    .q({open_n7582,\U9/n40_piped }));
  // ../../rtl/video/overlay.vhd(226)
  AL_PHY_LSLICE #(
    //.LUTF0("~(~C*~(B*D))"),
    //.LUTF1("((~B*A)*~(C)*~(D)+(~B*A)*C*~(D)+~((~B*A))*C*D+(~B*A)*C*D)"),
    //.LUTG0("~(~C*~(B*D))"),
    //.LUTG1("((~B*A)*~(C)*~(D)+(~B*A)*C*~(D)+~((~B*A))*C*D+(~B*A)*C*D)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111110011110000),
    .INIT_LUTF1(16'b1111000000100010),
    .INIT_LUTG0(16'b1111110011110000),
    .INIT_LUTG1(16'b1111000000100010),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \_al_u2239|U8/reg6_b6  (
    .a({\U9/VGA_BLANK ,open_n7583}),
    .b({_al_u2238_o,vid_rgb_osd[8]}),
    .c({vid_rgb_osd[6],_al_u2258_o}),
    .ce(\U8/mux24_b0_sel_is_3_o ),
    .clk(clk_28),
    .d({soft_sw[1],soft_sw[1]}),
    .mi({open_n7587,osd_command[6]}),
    .f({\U9/n48 [6],\U9/n48 [8]}),
    .q({open_n7603,\U8/vram_di [6]}));  // ../../rtl/video/overlay.vhd(226)
  // ../../rtl/video/vga_pal.vhd(181)
  AL_PHY_MSLICE #(
    //.LUT0("~(D*~(C*B*A))"),
    //.LUT1("(~D*~(C*B*A))"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1000000011111111),
    .INIT_LUT1(16'b0000000001111111),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \_al_u2240|U9/reg5_b8  (
    .a({\U8/attr [0],\U8/attr [4]}),
    .b({\U8/attr [3],\U8/attr [7]}),
    .c({_al_u2233_o,\U8/n63 }),
    .clk(clk_28),
    .d({_al_u2232_o,_al_u2240_o}),
    .f({_al_u2240_o,vid_rgb_osd[8]}),
    .q({open_n7621,\U9/RGB [8]}));  // ../../rtl/video/vga_pal.vhd(181)
  AL_PHY_LSLICE #(
    //.LUTF0("(D*~(C*~(B*A)))"),
    //.LUTF1("(C*B*D)"),
    //.LUTG0("(D*~(C*~(B*A)))"),
    //.LUTG1("(C*B*D)"),
    .INIT_LUTF0(16'b1000111100000000),
    .INIT_LUTF1(16'b1100000000000000),
    .INIT_LUTG0(16'b1000111100000000),
    .INIT_LUTG1(16'b1100000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u2242|_al_u2245  (
    .a({open_n7622,\U7/i_spec }),
    .b({\U8/attr [0],\U7/rgb_spec [1]}),
    .c({\U8/attr [2],_al_u2223_o}),
    .d({_al_u2233_o,\U8/mux19_b0_sel_is_0_o }),
    .f({_al_u2242_o,_al_u2245_o}));
  // ../../rtl/video/vga_pal.vhd(181)
  AL_PHY_MSLICE #(
    //.LUT0("~(D*~(C*B*A))"),
    //.LUT1("(~D*~(C*B*A))"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1000000011111111),
    .INIT_LUT1(16'b0000000001111111),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \_al_u2243|U9/reg5_b5  (
    .a({\U8/mux19_b0_sel_is_0_o ,\U8/attr [4]}),
    .b({\U7/rgb_spec [1],\U8/attr [6]}),
    .c({_al_u2223_o,\U8/n63 }),
    .clk(clk_28),
    .d({_al_u2242_o,_al_u2243_o}),
    .f({_al_u2243_o,vid_rgb_osd[5]}),
    .q({open_n7664,\U9/RGB [5]}));  // ../../rtl/video/vga_pal.vhd(181)
  // ../../rtl/spi/spi_slave.vhd(245)
  AL_PHY_MSLICE #(
    //.LUT0("(~D*~(C*B*A))"),
    //.LUT1("(C*B*D)"),
    .CEMUX("CE"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000001111111),
    .INIT_LUT1(16'b1100000000000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \_al_u2247|U15/U_SPI/reg2_b3  (
    .a({open_n7665,\U8/mux19_b0_sel_is_0_o }),
    .b({\U8/attr [0],\U7/palette_grb [2]}),
    .c({\U8/attr [1],_al_u2223_o}),
    .ce(\U15/U_SPI/n25 ),
    .clk(AVR_SCK_pad),
    .d({_al_u2233_o,_al_u2247_o}),
    .mi({open_n7676,\U15/U_SPI/sh_reg [2]}),
    .f({_al_u2247_o,_al_u2248_o}),
    .q({open_n7681,\U15/spi_do [3]}));  // ../../rtl/spi/spi_slave.vhd(245)
  // ../../rtl/video/overlay.vhd(226)
  AL_PHY_LSLICE #(
    //.LUTF0("(0*~C*(A*~(B)*~(D)+A*B*~(D)+~(A)*B*D+A*B*D))"),
    //.LUTF1("(0*~C*(A*~(B)*~(D)+A*B*~(D)+~(A)*B*D+A*B*D))"),
    //.LUTG0("(1*~C*(A*~(B)*~(D)+A*B*~(D)+~(A)*B*D+A*B*D))"),
    //.LUTG1("(1*~C*(A*~(B)*~(D)+A*B*~(D)+~(A)*B*D+A*B*D))"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b0000000000000000),
    .INIT_LUTG0(16'b0000110000001010),
    .INIT_LUTG1(16'b0000110000001010),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \_al_u2250|U8/reg5_b6  (
    .a({\U9/LINEBUF/inst_dob_i0_003 ,\U9/LINEBUF/inst_dob_i0_005 }),
    .b({\U9/LINEBUF/inst_dob_i1_003 ,\U9/LINEBUF/inst_dob_i1_005 }),
    .c({soft_sw[1],soft_sw[1]}),
    .ce(\U8/mux23_b0_sel_is_3_o ),
    .clk(clk_28),
    .d({\U9/n40_piped ,\U9/n40_piped }),
    .e({\U9/VGA_BLANK ,\U9/VGA_BLANK }),
    .mi({open_n7683,osd_command[6]}),
    .f({_al_u2250_o,_al_u2260_o}),
    .q({open_n7699,\U8/char_buf [6]}));  // ../../rtl/video/overlay.vhd(226)
  AL_PHY_MSLICE #(
    //.LUT0("~(~C*~(B*D))"),
    //.LUT1("~(~C*~(B*D))"),
    .INIT_LUT0(16'b1111110011110000),
    .INIT_LUT1(16'b1111110011110000),
    .MODE("LOGIC"))
    \_al_u2251|_al_u2257  (
    .b({vid_rgb_osd[3],vid_rgb_osd[1]}),
    .c({_al_u2250_o,_al_u2256_o}),
    .d({soft_sw[1],soft_sw[1]}),
    .f({\U9/n48 [3],\U9/n48 [1]}));
  // ../../rtl/spi/spi_slave.vhd(245)
  AL_PHY_LSLICE #(
    //.LUTF0("(0*~C*(A*~(B)*~(D)+A*B*~(D)+~(A)*B*D+A*B*D))"),
    //.LUTF1("(0*~C*(A*~(B)*~(D)+A*B*~(D)+~(A)*B*D+A*B*D))"),
    //.LUTG0("(1*~C*(A*~(B)*~(D)+A*B*~(D)+~(A)*B*D+A*B*D))"),
    //.LUTG1("(1*~C*(A*~(B)*~(D)+A*B*~(D)+~(A)*B*D+A*B*D))"),
    .CEMUX("CE"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b0000000000000000),
    .INIT_LUTG0(16'b0000110000001010),
    .INIT_LUTG1(16'b0000110000001010),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \_al_u2252|U15/U_SPI/reg2_b6  (
    .a({\U9/LINEBUF/inst_dob_i0_000 ,\U9/LINEBUF/inst_dob_i0_002 }),
    .b({\U9/LINEBUF/inst_dob_i1_000 ,\U9/LINEBUF/inst_dob_i1_002 }),
    .c({soft_sw[1],soft_sw[1]}),
    .ce(\U15/U_SPI/n25 ),
    .clk(AVR_SCK_pad),
    .d({\U9/n40_piped ,\U9/n40_piped }),
    .e({\U9/VGA_BLANK ,\U9/VGA_BLANK }),
    .mi({open_n7723,\U15/U_SPI/sh_reg [5]}),
    .f({_al_u2252_o,_al_u2264_o}),
    .q({open_n7739,\U15/spi_do [6]}));  // ../../rtl/spi/spi_slave.vhd(245)
  // ../../rtl/video/vga_pal.vhd(181)
  AL_PHY_LSLICE #(
    //.LUTF0("~(C*~(B*D))"),
    //.LUTF1("~(~C*~(B*D))"),
    //.LUTG0("~(C*~(B*D))"),
    //.LUTG1("~(~C*~(B*D))"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1100111100001111),
    .INIT_LUTF1(16'b1111110011110000),
    .INIT_LUTG0(16'b1100111100001111),
    .INIT_LUTG1(16'b1111110011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \_al_u2255|U9/reg5_b7  (
    .b({vid_rgb_osd[7],\U8/n63 }),
    .c({_al_u2254_o,_al_u2234_o}),
    .clk(clk_28),
    .d({soft_sw[1],\U8/attr [7]}),
    .f({\U9/n48 [7],vid_rgb_osd[7]}),
    .q({open_n7763,\U9/RGB [7]}));  // ../../rtl/video/vga_pal.vhd(181)
  AL_PHY_MSLICE #(
    //.LUT0("(0*~C*(A*~(B)*~(D)+A*B*~(D)+~(A)*B*D+A*B*D))"),
    //.LUT1("(1*~C*(A*~(B)*~(D)+A*B*~(D)+~(A)*B*D+A*B*D))"),
    .INIT_LUT0(16'b0000000000000000),
    .INIT_LUT1(16'b0000110000001010),
    .MODE("LOGIC"),
    .MSFXMUX("ON"))
    _al_u2256 (
    .a({\U9/LINEBUF/inst_dob_i0_001 ,\U9/LINEBUF/inst_dob_i0_001 }),
    .b({\U9/LINEBUF/inst_dob_i1_001 ,\U9/LINEBUF/inst_dob_i1_001 }),
    .c({soft_sw[1],soft_sw[1]}),
    .d({\U9/n40_piped ,\U9/n40_piped }),
    .mi({open_n7776,\U9/VGA_BLANK }),
    .fx({open_n7781,_al_u2256_o}));
  AL_PHY_MSLICE #(
    //.LUT0("(0*~C*(A*~(B)*~(D)+A*B*~(D)+~(A)*B*D+A*B*D))"),
    //.LUT1("(1*~C*(A*~(B)*~(D)+A*B*~(D)+~(A)*B*D+A*B*D))"),
    .INIT_LUT0(16'b0000000000000000),
    .INIT_LUT1(16'b0000110000001010),
    .MODE("LOGIC"),
    .MSFXMUX("ON"))
    _al_u2258 (
    .a({\U9/LINEBUF/inst_dob_i0_008 ,\U9/LINEBUF/inst_dob_i0_008 }),
    .b({\U9/LINEBUF/inst_dob_i1_008 ,\U9/LINEBUF/inst_dob_i1_008 }),
    .c({soft_sw[1],soft_sw[1]}),
    .d({\U9/n40_piped ,\U9/n40_piped }),
    .mi({open_n7796,\U9/VGA_BLANK }),
    .fx({open_n7801,_al_u2258_o}));
  // ../../rtl/spi/spi_slave.vhd(238)
  AL_PHY_MSLICE #(
    //.LUT0("~(~C*~(B*D))"),
    //.LUT1("(~D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111110011110000),
    .INIT_LUT1(16'b0000000011111111),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("SR"))
    \_al_u2273|U15/U_SPI/reg0_b2  (
    .b({open_n7806,\U15/U_SPI/n5_lutinv }),
    .c({open_n7807,\U15/U_SPI/n26_lutinv }),
    .clk(AVR_SCK_pad),
    .d({AVR_NCS_pad,\U15/U_SPI/n15 [2]}),
    .sr(AVR_NCS_pad),
    .f({\U15/n1 ,open_n7821}),
    .q({open_n7825,\U15/U_SPI/state_dbg_o[2] }));  // ../../rtl/spi/spi_slave.vhd(238)
  AL_PHY_LSLICE #(
    //.LUTF0("(~D)"),
    //.LUTG0("(~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011111111),
    .INIT_LUTG0(16'b0000000011111111),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    clk_div2_reg (
    .clk(clk_28),
    .d({open_n7833,clk_div2}),
    .q({open_n7856,clk_div2}));  // ../../rtl/karabas_pro.vhd(1079)

endmodule 

