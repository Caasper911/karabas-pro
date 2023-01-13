// Verilog netlist created by TD v4.6.18154
// Fri Jan 13 13:44:42 2023

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
  wire [17:0] \G_UNO_UART$U22/uartchip/receiver/n1 ;
  wire [2:0] \G_UNO_UART$U22/uartchip/receiver/n10 ;
  wire [2:0] \G_UNO_UART$U22/uartchip/receiver/n17 ;
  wire [2:0] \G_UNO_UART$U22/uartchip/receiver/n18 ;
  wire [2:0] \G_UNO_UART$U22/uartchip/receiver/n2 ;
  wire [17:0] \G_UNO_UART$U22/uartchip/receiver/n20 ;
  wire [2:0] \G_UNO_UART$U22/uartchip/receiver/n22 ;
  wire [2:0] \G_UNO_UART$U22/uartchip/receiver/n28 ;
  wire [17:0] \G_UNO_UART$U22/uartchip/receiver/n3 ;
  wire [2:0] \G_UNO_UART$U22/uartchip/receiver/n30 ;
  wire [2:0] \G_UNO_UART$U22/uartchip/receiver/n35 ;
  wire [2:0] \G_UNO_UART$U22/uartchip/receiver/n37 ;
  wire [2:0] \G_UNO_UART$U22/uartchip/receiver/n39 ;
  wire [2:0] \G_UNO_UART$U22/uartchip/receiver/n41 ;
  wire [2:0] \G_UNO_UART$U22/uartchip/receiver/n45 ;
  wire [2:0] \G_UNO_UART$U22/uartchip/receiver/n46 ;
  wire [2:0] \G_UNO_UART$U22/uartchip/receiver/n52 ;
  wire [17:0] \G_UNO_UART$U22/uartchip/receiver/n55 ;
  wire [2:0] \G_UNO_UART$U22/uartchip/receiver/n58 ;
  wire [1:0] \G_UNO_UART$U22/uartchip/receiver/rx_ff ;  // ../../rtl/uart/uart.v(175)
  wire [7:0] \G_UNO_UART$U22/uartchip/receiver/rxvalues ;  // ../../rtl/uart/uart.v(182)
  wire [2:0] \G_UNO_UART$U22/uartchip/receiver/state ;  // ../../rtl/uart/uart.v(191)
  wire [2:0] \G_UNO_UART$U22/uartchip/transmitter/bitcnt ;  // ../../rtl/uart/uart.v(88)
  wire [17:0] \G_UNO_UART$U22/uartchip/transmitter/bpscounter ;  // ../../rtl/uart/uart.v(87)
  wire [17:0] \G_UNO_UART$U22/uartchip/transmitter/n10 ;
  wire [2:0] \G_UNO_UART$U22/uartchip/transmitter/n13 ;
  wire [1:0] \G_UNO_UART$U22/uartchip/transmitter/n14 ;
  wire [2:0] \G_UNO_UART$U22/uartchip/transmitter/n15 ;
  wire [2:0] \G_UNO_UART$U22/uartchip/transmitter/n19 ;
  wire [1:0] \G_UNO_UART$U22/uartchip/transmitter/n20 ;
  wire [17:0] \G_UNO_UART$U22/uartchip/transmitter/n21 ;
  wire [1:0] \G_UNO_UART$U22/uartchip/transmitter/n23 ;
  wire [1:0] \G_UNO_UART$U22/uartchip/transmitter/n27 ;
  wire [2:0] \G_UNO_UART$U22/uartchip/transmitter/n29 ;
  wire [1:0] \G_UNO_UART$U22/uartchip/transmitter/state ;  // ../../rtl/uart/uart.v(86)
  wire [4:0] \U1/clkc_wire ;  // al_ip/altpll0.vhd(38)
  wire [23:0] \U15/U_SPI/di_reg ;  // ../../rtl/spi/spi_slave.vhd(176)
  wire [5:0] \U15/U_SPI/n15 ;
  wire [23:0] \U15/U_SPI/n16 ;
  wire  \U15/U_SPI/sel0/B1 ;
  wire  \U15/U_SPI/sel1_b0/B0 ;
  wire  \U15/U_SPI/sel1_b0/B1 ;
  wire  \U15/U_SPI/sel1_b0/B2 ;
  wire  \U15/U_SPI/sel1_b0/B3 ;
  wire  \U15/U_SPI/sel1_b0/B4 ;
  wire  \U15/U_SPI/sel1_b0/B5 ;
  wire  \U15/U_SPI/sel1_b1/B0 ;
  wire  \U15/U_SPI/sel1_b1/B1 ;
  wire  \U15/U_SPI/sel1_b1/B2 ;
  wire  \U15/U_SPI/sel1_b1/B3 ;
  wire  \U15/U_SPI/sel1_b1/B4 ;
  wire  \U15/U_SPI/sel1_b1/B5 ;
  wire  \U15/U_SPI/sel1_b10/B0 ;
  wire  \U15/U_SPI/sel1_b10/B1 ;
  wire  \U15/U_SPI/sel1_b10/B2 ;
  wire  \U15/U_SPI/sel1_b10/B3 ;
  wire  \U15/U_SPI/sel1_b10/B4 ;
  wire  \U15/U_SPI/sel1_b10/B5 ;
  wire  \U15/U_SPI/sel1_b11/B0 ;
  wire  \U15/U_SPI/sel1_b11/B1 ;
  wire  \U15/U_SPI/sel1_b11/B2 ;
  wire  \U15/U_SPI/sel1_b11/B3 ;
  wire  \U15/U_SPI/sel1_b11/B4 ;
  wire  \U15/U_SPI/sel1_b11/B5 ;
  wire  \U15/U_SPI/sel1_b12/B0 ;
  wire  \U15/U_SPI/sel1_b12/B1 ;
  wire  \U15/U_SPI/sel1_b12/B2 ;
  wire  \U15/U_SPI/sel1_b12/B3 ;
  wire  \U15/U_SPI/sel1_b12/B4 ;
  wire  \U15/U_SPI/sel1_b12/B5 ;
  wire  \U15/U_SPI/sel1_b13/B0 ;
  wire  \U15/U_SPI/sel1_b13/B1 ;
  wire  \U15/U_SPI/sel1_b13/B2 ;
  wire  \U15/U_SPI/sel1_b13/B3 ;
  wire  \U15/U_SPI/sel1_b13/B4 ;
  wire  \U15/U_SPI/sel1_b13/B5 ;
  wire  \U15/U_SPI/sel1_b14/B0 ;
  wire  \U15/U_SPI/sel1_b14/B1 ;
  wire  \U15/U_SPI/sel1_b14/B2 ;
  wire  \U15/U_SPI/sel1_b14/B3 ;
  wire  \U15/U_SPI/sel1_b14/B4 ;
  wire  \U15/U_SPI/sel1_b14/B5 ;
  wire  \U15/U_SPI/sel1_b15/B0 ;
  wire  \U15/U_SPI/sel1_b15/B1 ;
  wire  \U15/U_SPI/sel1_b15/B2 ;
  wire  \U15/U_SPI/sel1_b15/B3 ;
  wire  \U15/U_SPI/sel1_b15/B4 ;
  wire  \U15/U_SPI/sel1_b15/B5 ;
  wire  \U15/U_SPI/sel1_b16/B0 ;
  wire  \U15/U_SPI/sel1_b16/B1 ;
  wire  \U15/U_SPI/sel1_b16/B2 ;
  wire  \U15/U_SPI/sel1_b16/B3 ;
  wire  \U15/U_SPI/sel1_b16/B4 ;
  wire  \U15/U_SPI/sel1_b16/B5 ;
  wire  \U15/U_SPI/sel1_b17/B0 ;
  wire  \U15/U_SPI/sel1_b17/B1 ;
  wire  \U15/U_SPI/sel1_b17/B2 ;
  wire  \U15/U_SPI/sel1_b17/B3 ;
  wire  \U15/U_SPI/sel1_b17/B4 ;
  wire  \U15/U_SPI/sel1_b17/B5 ;
  wire  \U15/U_SPI/sel1_b18/B0 ;
  wire  \U15/U_SPI/sel1_b18/B1 ;
  wire  \U15/U_SPI/sel1_b18/B2 ;
  wire  \U15/U_SPI/sel1_b18/B3 ;
  wire  \U15/U_SPI/sel1_b18/B4 ;
  wire  \U15/U_SPI/sel1_b18/B5 ;
  wire  \U15/U_SPI/sel1_b19/B0 ;
  wire  \U15/U_SPI/sel1_b19/B1 ;
  wire  \U15/U_SPI/sel1_b19/B2 ;
  wire  \U15/U_SPI/sel1_b19/B3 ;
  wire  \U15/U_SPI/sel1_b19/B4 ;
  wire  \U15/U_SPI/sel1_b19/B5 ;
  wire  \U15/U_SPI/sel1_b2/B0 ;
  wire  \U15/U_SPI/sel1_b2/B1 ;
  wire  \U15/U_SPI/sel1_b2/B2 ;
  wire  \U15/U_SPI/sel1_b2/B3 ;
  wire  \U15/U_SPI/sel1_b2/B4 ;
  wire  \U15/U_SPI/sel1_b2/B5 ;
  wire  \U15/U_SPI/sel1_b20/B0 ;
  wire  \U15/U_SPI/sel1_b20/B1 ;
  wire  \U15/U_SPI/sel1_b20/B2 ;
  wire  \U15/U_SPI/sel1_b20/B3 ;
  wire  \U15/U_SPI/sel1_b20/B4 ;
  wire  \U15/U_SPI/sel1_b20/B5 ;
  wire  \U15/U_SPI/sel1_b21/B0 ;
  wire  \U15/U_SPI/sel1_b21/B1 ;
  wire  \U15/U_SPI/sel1_b21/B2 ;
  wire  \U15/U_SPI/sel1_b21/B3 ;
  wire  \U15/U_SPI/sel1_b21/B4 ;
  wire  \U15/U_SPI/sel1_b21/B5 ;
  wire  \U15/U_SPI/sel1_b22/B0 ;
  wire  \U15/U_SPI/sel1_b22/B1 ;
  wire  \U15/U_SPI/sel1_b22/B2 ;
  wire  \U15/U_SPI/sel1_b22/B3 ;
  wire  \U15/U_SPI/sel1_b22/B4 ;
  wire  \U15/U_SPI/sel1_b22/B5 ;
  wire  \U15/U_SPI/sel1_b23/B0 ;
  wire  \U15/U_SPI/sel1_b23/B1 ;
  wire  \U15/U_SPI/sel1_b23/B2 ;
  wire  \U15/U_SPI/sel1_b23/B3 ;
  wire  \U15/U_SPI/sel1_b23/B4 ;
  wire  \U15/U_SPI/sel1_b23/B5 ;
  wire  \U15/U_SPI/sel1_b3/B0 ;
  wire  \U15/U_SPI/sel1_b3/B1 ;
  wire  \U15/U_SPI/sel1_b3/B2 ;
  wire  \U15/U_SPI/sel1_b3/B3 ;
  wire  \U15/U_SPI/sel1_b3/B4 ;
  wire  \U15/U_SPI/sel1_b3/B5 ;
  wire  \U15/U_SPI/sel1_b4/B0 ;
  wire  \U15/U_SPI/sel1_b4/B1 ;
  wire  \U15/U_SPI/sel1_b4/B2 ;
  wire  \U15/U_SPI/sel1_b4/B3 ;
  wire  \U15/U_SPI/sel1_b4/B4 ;
  wire  \U15/U_SPI/sel1_b4/B5 ;
  wire  \U15/U_SPI/sel1_b5/B0 ;
  wire  \U15/U_SPI/sel1_b5/B1 ;
  wire  \U15/U_SPI/sel1_b5/B2 ;
  wire  \U15/U_SPI/sel1_b5/B3 ;
  wire  \U15/U_SPI/sel1_b5/B4 ;
  wire  \U15/U_SPI/sel1_b5/B5 ;
  wire  \U15/U_SPI/sel1_b6/B0 ;
  wire  \U15/U_SPI/sel1_b6/B1 ;
  wire  \U15/U_SPI/sel1_b6/B2 ;
  wire  \U15/U_SPI/sel1_b6/B3 ;
  wire  \U15/U_SPI/sel1_b6/B4 ;
  wire  \U15/U_SPI/sel1_b6/B5 ;
  wire  \U15/U_SPI/sel1_b7/B0 ;
  wire  \U15/U_SPI/sel1_b7/B1 ;
  wire  \U15/U_SPI/sel1_b7/B2 ;
  wire  \U15/U_SPI/sel1_b7/B3 ;
  wire  \U15/U_SPI/sel1_b7/B4 ;
  wire  \U15/U_SPI/sel1_b7/B5 ;
  wire  \U15/U_SPI/sel1_b8/B0 ;
  wire  \U15/U_SPI/sel1_b8/B1 ;
  wire  \U15/U_SPI/sel1_b8/B2 ;
  wire  \U15/U_SPI/sel1_b8/B3 ;
  wire  \U15/U_SPI/sel1_b8/B4 ;
  wire  \U15/U_SPI/sel1_b8/B5 ;
  wire  \U15/U_SPI/sel1_b9/B0 ;
  wire  \U15/U_SPI/sel1_b9/B1 ;
  wire  \U15/U_SPI/sel1_b9/B2 ;
  wire  \U15/U_SPI/sel1_b9/B3 ;
  wire  \U15/U_SPI/sel1_b9/B4 ;
  wire  \U15/U_SPI/sel1_b9/B5 ;
  wire  \U15/U_SPI/sel2/B0 ;
  wire  \U15/U_SPI/sel4_b0/B3 ;
  wire  \U15/U_SPI/sel4_b0/B4 ;
  wire  \U15/U_SPI/sel4_b0/B5 ;
  wire  \U15/U_SPI/sel4_b1/B3 ;
  wire  \U15/U_SPI/sel4_b1/B4 ;
  wire  \U15/U_SPI/sel4_b1/B5 ;
  wire  \U15/U_SPI/sel4_b2/B3 ;
  wire  \U15/U_SPI/sel4_b2/B4 ;
  wire  \U15/U_SPI/sel4_b2/B5 ;
  wire  \U15/U_SPI/sel4_b3/B3 ;
  wire  \U15/U_SPI/sel4_b3/B4 ;
  wire  \U15/U_SPI/sel4_b3/B5 ;
  wire  \U15/U_SPI/sel4_b4/B3 ;
  wire  \U15/U_SPI/sel4_b4/B4 ;
  wire  \U15/U_SPI/sel4_b4/B5 ;
  wire  \U15/U_SPI/sel5/B1 ;
  wire [23:0] \U15/U_SPI/sh_next ;  // ../../rtl/spi/spi_slave.vhd(171)
  wire [23:0] \U15/U_SPI/sh_reg ;  // ../../rtl/spi/spi_slave.vhd(172)
  wire [4:0] \U15/U_SPI/state_next ;  // ../../rtl/spi/spi_slave.vhd(168)
  wire [23:0] \U15/queue_do ;  // ../../rtl/avr/avr.vhd(130)
  wire [23:0] \U15/spi_di ;  // ../../rtl/avr/avr.vhd(107)
  wire [23:0] \U15/spi_do ;  // ../../rtl/avr/avr.vhd(108)
  wire [4:0] \U2/clkc_wire ;  // al_ip/altpll1.vhd(46)
  wire [7:0] \U7/U_PENT/attr ;  // ../../rtl/video/pentagon_video.vhd(55)
  wire [7:0] \U7/U_PENT/bitmap ;  // ../../rtl/video/pentagon_video.vhd(56)
  wire [4:0] \U7/U_PENT/invert ;  // ../../rtl/video/pentagon_video.vhd(46)
  wire [7:0] \U7/U_PENT/n151 ;
  wire [4:0] \U7/U_PENT/n25 ;
  wire [5:0] \U7/U_PENT/n26 ;
  wire [5:0] \U7/U_PENT/n27 ;
  wire [5:0] \U7/U_PENT/n3 ;
  wire [2:0] \U7/U_PENT/n31 ;
  wire [5:0] \U7/U_PENT/n4 ;
  wire [2:0] \U7/U_PENT/n97 ;
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
  wire [20:0] \U8/U_ICONS/n24 ;
  wire [20:0] \U8/U_ICONS/n26 ;
  wire [20:0] \U8/U_ICONS/n27 ;
  wire [20:0] \U8/U_ICONS/n29 ;
  wire [20:0] \U8/U_ICONS/n30 ;
  wire [9:0] \U8/addr_read ;  // ../../rtl/video/overlay.vhd(48)
  wire [9:0] \U8/addr_write ;  // ../../rtl/video/overlay.vhd(49)
  wire [7:0] \U8/attr ;  // ../../rtl/video/overlay.vhd(35)
  wire [7:0] \U8/attr2 ;  // ../../rtl/video/overlay.vhd(35)
  wire [7:0] \U8/char_buf ;  // ../../rtl/video/overlay.vhd(61)
  wire [2:0] \U8/char_x ;  // ../../rtl/video/overlay.vhd(37)
  wire [2:0] \U8/char_y ;  // ../../rtl/video/overlay.vhd(38)
  wire [7:0] \U8/font_word ;  // ../../rtl/video/overlay.vhd(43)
  wire [15:0] \U8/last_osd_command ;  // ../../rtl/video/overlay.vhd(60)
  wire [7:0] \U8/n10 ;
  wire [9:0] \U8/n12 ;
  wire [7:0] \U8/n13 ;
  wire [7:0] \U8/n14 ;
  wire [9:0] \U8/n15 ;
  wire [7:0] \U8/n16 ;
  wire [7:0] \U8/n17 ;
  wire [8:0] \U8/n72 ;
  wire [8:0] \U8/n73 ;
  wire [9:0] \U8/n8 ;
  wire [7:0] \U8/n9 ;
  wire [8:0] \U8/rgb ;  // ../../rtl/video/overlay.vhd(33)
  wire [8:0] \U8/rgb_bg ;  // ../../rtl/video/overlay.vhd(57)
  wire [8:0] \U8/rgb_fg ;  // ../../rtl/video/overlay.vhd(56)
  wire [10:0] \U8/rom_addr ;  // ../../rtl/video/overlay.vhd(40)
  wire [15:0] \U8/vram_di ;  // ../../rtl/video/overlay.vhd(50)
  wire [15:0] \U8/vram_do ;  // ../../rtl/video/overlay.vhd(51)
  wire [8:0] \U9/RD_REG ;  // ../../rtl/video/vga_pal.vhd(160)
  wire [8:0] \U9/RGB ;  // ../../rtl/video/vga_pal.vhd(59)
  wire [8:0] \U9/VGA_H ;  // ../../rtl/video/vga_pal.vhd(79)
  wire [9:0] \U9/VGA_V ;  // ../../rtl/video/vga_pal.vhd(95)
  wire [9:0] \U9/VIDEO_H ;  // ../../rtl/video/vga_pal.vhd(106)
  wire [8:0] \U9/VIDEO_V ;  // ../../rtl/video/vga_pal.vhd(116)
  wire [8:0] \U9/n11 ;
  wire [9:0] \U9/n14 ;
  wire [9:0] \U9/n19 ;
  wire [8:0] \U9/n22 ;
  wire [8:0] \U9/n47 ;
  wire [8:0] \U9/n48 ;
  wire [7:0] cpld_do;  // ../../rtl/karabas_pro.vhd(421)
  wire [1:0] kb_screen_mode;  // ../../rtl/karabas_pro.vhd(182)
  wire [15:0] osd_command;  // ../../rtl/karabas_pro.vhd(218)
  wire [1:10] soft_sw;  // ../../rtl/karabas_pro.vhd(447)
  wire [7:0] vid_do_bus;  // ../../rtl/karabas_pro.vhd(200)
  wire [8:0] vid_rgb_osd;  // ../../rtl/karabas_pro.vhd(207)
  wire \G_UNO_UART$U22/txbusy ;  // ../../rtl/uart/zxunouart.v(41)
  wire \G_UNO_UART$U22/uartchip/receiver/mux10_b0_sel_is_2_o ;
  wire \G_UNO_UART$U22/uartchip/receiver/mux17_b3_sel_is_3_o ;
  wire \G_UNO_UART$U22/uartchip/receiver/mux7_b0_sel_is_0_o ;
  wire \G_UNO_UART$U22/uartchip/receiver/n12 ;
  wire \G_UNO_UART$U22/uartchip/receiver/n19 ;
  wire \G_UNO_UART$U22/uartchip/receiver/n31 ;
  wire \G_UNO_UART$U22/uartchip/receiver/n38 ;
  wire \G_UNO_UART$U22/uartchip/receiver/n47 ;
  wire \G_UNO_UART$U22/uartchip/receiver/n54 ;
  wire \G_UNO_UART$U22/uartchip/receiver/n6 ;
  wire \G_UNO_UART$U22/uartchip/receiver/n8_neg ;
  wire \G_UNO_UART$U22/uartchip/receiver/rx_is_0 ;  // ../../rtl/uart/uart.v(187)
  wire \G_UNO_UART$U22/uartchip/receiver/rx_is_0_neg ;
  wire \G_UNO_UART$U22/uartchip/receiver/rx_is_1 ;  // ../../rtl/uart/uart.v(186)
  wire \G_UNO_UART$U22/uartchip/receiver/rx_is_1_neg ;
  wire \G_UNO_UART$U22/uartchip/receiver/rx_negedge ;  // ../../rtl/uart/uart.v(188)
  wire \G_UNO_UART$U22/uartchip/receiver/u10_sel_is_3_o ;
  wire \G_UNO_UART$U22/uartchip/receiver/u14_sel_is_3_o ;
  wire \G_UNO_UART$U22/uartchip/receiver/u18_sel_is_3_o ;
  wire \G_UNO_UART$U22/uartchip/transmitter/mux14_b0_sel_is_1_o ;
  wire \G_UNO_UART$U22/uartchip/transmitter/mux3_b2_sel_is_3_o ;
  wire \G_UNO_UART$U22/uartchip/transmitter/mux9_b0_sel_is_0_o ;
  wire \G_UNO_UART$U22/uartchip/transmitter/mux9_b0_sel_is_0_o_neg ;
  wire \G_UNO_UART$U22/uartchip/transmitter/n11 ;
  wire \G_UNO_UART$U22/uartchip/transmitter/n16 ;
  wire \G_UNO_UART$U22/uartchip/transmitter/n22 ;
  wire \G_UNO_UART$U22/uartchip/transmitter/n24 ;
  wire \G_UNO_UART$U22/uartchip/transmitter/n26 ;
  wire \G_UNO_UART$U22/uartchip/transmitter/state[0]_neg ;
  wire \G_UNO_UART$U22/uartchip/transmitter/state[1]_neg ;
  wire \U15/U_SPI/di_req ;  // ../../rtl/spi/spi_slave.vhd(188)
  wire \U15/U_SPI/di_req_o_A ;  // ../../rtl/spi/spi_slave.vhd(198)
  wire \U15/U_SPI/di_req_o_B ;  // ../../rtl/spi/spi_slave.vhd(199)
  wire \U15/U_SPI/di_req_o_C ;  // ../../rtl/spi/spi_slave.vhd(200)
  wire \U15/U_SPI/di_req_o_D ;  // ../../rtl/spi/spi_slave.vhd(201)
  wire \U15/U_SPI/di_req_o_next ;  // ../../rtl/spi/spi_slave.vhd(197)
  wire \U15/U_SPI/do_transfer_next ;  // ../../rtl/spi/spi_slave.vhd(185)
  wire \U15/U_SPI/do_transfer_o ;  // ../../rtl/spi/spi_slave.vhd(138)
  wire \U15/U_SPI/do_valid_A ;  // ../../rtl/spi/spi_slave.vhd(191)
  wire \U15/U_SPI/do_valid_B ;  // ../../rtl/spi/spi_slave.vhd(192)
  wire \U15/U_SPI/do_valid_C ;  // ../../rtl/spi/spi_slave.vhd(193)
  wire \U15/U_SPI/do_valid_D ;  // ../../rtl/spi/spi_slave.vhd(194)
  wire \U15/U_SPI/do_valid_next ;  // ../../rtl/spi/spi_slave.vhd(190)
  wire \U15/U_SPI/n1 ;
  wire \U15/U_SPI/n10 ;
  wire \U15/U_SPI/n17 ;
  wire \U15/U_SPI/n18 ;
  wire \U15/U_SPI/n19 ;
  wire \U15/U_SPI/n20 ;
  wire \U15/U_SPI/n21 ;
  wire \U15/U_SPI/n22 ;
  wire \U15/U_SPI/n23 ;
  wire \U15/U_SPI/n24 ;
  wire \U15/U_SPI/n25 ;
  wire \U15/U_SPI/n26 ;
  wire \U15/U_SPI/n27 ;
  wire \U15/U_SPI/n29 ;
  wire \U15/U_SPI/n31 ;
  wire \U15/U_SPI/n5 ;
  wire \U15/U_SPI/n6 ;
  wire \U15/U_SPI/n7 ;
  wire \U15/U_SPI/n8 ;
  wire \U15/U_SPI/n9 ;
  wire \U15/U_SPI/rx_bit_reg_o ;  // ../../rtl/spi/spi_slave.vhd(141)
  wire \U15/U_SPI/sel1_b0/or_B0_or_B1_B2_o_o ;
  wire \U15/U_SPI/sel1_b0/or_B1_B2_o ;
  wire \U15/U_SPI/sel1_b0/or_B3_or_B4_B5_o_o ;
  wire \U15/U_SPI/sel1_b0/or_B4_B5_o ;
  wire \U15/U_SPI/sel1_b1/or_B0_or_B1_B2_o_o ;
  wire \U15/U_SPI/sel1_b1/or_B1_B2_o ;
  wire \U15/U_SPI/sel1_b1/or_B3_or_B4_B5_o_o ;
  wire \U15/U_SPI/sel1_b1/or_B4_B5_o ;
  wire \U15/U_SPI/sel1_b10/or_B0_or_B1_B2_o_o ;
  wire \U15/U_SPI/sel1_b10/or_B1_B2_o ;
  wire \U15/U_SPI/sel1_b10/or_B3_or_B4_B5_o_o ;
  wire \U15/U_SPI/sel1_b10/or_B4_B5_o ;
  wire \U15/U_SPI/sel1_b11/or_B0_or_B1_B2_o_o ;
  wire \U15/U_SPI/sel1_b11/or_B1_B2_o ;
  wire \U15/U_SPI/sel1_b11/or_B3_or_B4_B5_o_o ;
  wire \U15/U_SPI/sel1_b11/or_B4_B5_o ;
  wire \U15/U_SPI/sel1_b12/or_B0_or_B1_B2_o_o ;
  wire \U15/U_SPI/sel1_b12/or_B1_B2_o ;
  wire \U15/U_SPI/sel1_b12/or_B3_or_B4_B5_o_o ;
  wire \U15/U_SPI/sel1_b12/or_B4_B5_o ;
  wire \U15/U_SPI/sel1_b13/or_B0_or_B1_B2_o_o ;
  wire \U15/U_SPI/sel1_b13/or_B1_B2_o ;
  wire \U15/U_SPI/sel1_b13/or_B3_or_B4_B5_o_o ;
  wire \U15/U_SPI/sel1_b13/or_B4_B5_o ;
  wire \U15/U_SPI/sel1_b14/or_B0_or_B1_B2_o_o ;
  wire \U15/U_SPI/sel1_b14/or_B1_B2_o ;
  wire \U15/U_SPI/sel1_b14/or_B3_or_B4_B5_o_o ;
  wire \U15/U_SPI/sel1_b14/or_B4_B5_o ;
  wire \U15/U_SPI/sel1_b15/or_B0_or_B1_B2_o_o ;
  wire \U15/U_SPI/sel1_b15/or_B1_B2_o ;
  wire \U15/U_SPI/sel1_b15/or_B3_or_B4_B5_o_o ;
  wire \U15/U_SPI/sel1_b15/or_B4_B5_o ;
  wire \U15/U_SPI/sel1_b16/or_B0_or_B1_B2_o_o ;
  wire \U15/U_SPI/sel1_b16/or_B1_B2_o ;
  wire \U15/U_SPI/sel1_b16/or_B3_or_B4_B5_o_o ;
  wire \U15/U_SPI/sel1_b16/or_B4_B5_o ;
  wire \U15/U_SPI/sel1_b17/or_B0_or_B1_B2_o_o ;
  wire \U15/U_SPI/sel1_b17/or_B1_B2_o ;
  wire \U15/U_SPI/sel1_b17/or_B3_or_B4_B5_o_o ;
  wire \U15/U_SPI/sel1_b17/or_B4_B5_o ;
  wire \U15/U_SPI/sel1_b18/or_B0_or_B1_B2_o_o ;
  wire \U15/U_SPI/sel1_b18/or_B1_B2_o ;
  wire \U15/U_SPI/sel1_b18/or_B3_or_B4_B5_o_o ;
  wire \U15/U_SPI/sel1_b18/or_B4_B5_o ;
  wire \U15/U_SPI/sel1_b19/or_B0_or_B1_B2_o_o ;
  wire \U15/U_SPI/sel1_b19/or_B1_B2_o ;
  wire \U15/U_SPI/sel1_b19/or_B3_or_B4_B5_o_o ;
  wire \U15/U_SPI/sel1_b19/or_B4_B5_o ;
  wire \U15/U_SPI/sel1_b2/or_B0_or_B1_B2_o_o ;
  wire \U15/U_SPI/sel1_b2/or_B1_B2_o ;
  wire \U15/U_SPI/sel1_b2/or_B3_or_B4_B5_o_o ;
  wire \U15/U_SPI/sel1_b2/or_B4_B5_o ;
  wire \U15/U_SPI/sel1_b20/or_B0_or_B1_B2_o_o ;
  wire \U15/U_SPI/sel1_b20/or_B1_B2_o ;
  wire \U15/U_SPI/sel1_b20/or_B3_or_B4_B5_o_o ;
  wire \U15/U_SPI/sel1_b20/or_B4_B5_o ;
  wire \U15/U_SPI/sel1_b21/or_B0_or_B1_B2_o_o ;
  wire \U15/U_SPI/sel1_b21/or_B1_B2_o ;
  wire \U15/U_SPI/sel1_b21/or_B3_or_B4_B5_o_o ;
  wire \U15/U_SPI/sel1_b21/or_B4_B5_o ;
  wire \U15/U_SPI/sel1_b22/or_B0_or_B1_B2_o_o ;
  wire \U15/U_SPI/sel1_b22/or_B1_B2_o ;
  wire \U15/U_SPI/sel1_b22/or_B3_or_B4_B5_o_o ;
  wire \U15/U_SPI/sel1_b22/or_B4_B5_o ;
  wire \U15/U_SPI/sel1_b23/or_B0_or_B1_B2_o_o ;
  wire \U15/U_SPI/sel1_b23/or_B1_B2_o ;
  wire \U15/U_SPI/sel1_b23/or_B3_or_B4_B5_o_o ;
  wire \U15/U_SPI/sel1_b23/or_B4_B5_o ;
  wire \U15/U_SPI/sel1_b3/or_B0_or_B1_B2_o_o ;
  wire \U15/U_SPI/sel1_b3/or_B1_B2_o ;
  wire \U15/U_SPI/sel1_b3/or_B3_or_B4_B5_o_o ;
  wire \U15/U_SPI/sel1_b3/or_B4_B5_o ;
  wire \U15/U_SPI/sel1_b4/or_B0_or_B1_B2_o_o ;
  wire \U15/U_SPI/sel1_b4/or_B1_B2_o ;
  wire \U15/U_SPI/sel1_b4/or_B3_or_B4_B5_o_o ;
  wire \U15/U_SPI/sel1_b4/or_B4_B5_o ;
  wire \U15/U_SPI/sel1_b5/or_B0_or_B1_B2_o_o ;
  wire \U15/U_SPI/sel1_b5/or_B1_B2_o ;
  wire \U15/U_SPI/sel1_b5/or_B3_or_B4_B5_o_o ;
  wire \U15/U_SPI/sel1_b5/or_B4_B5_o ;
  wire \U15/U_SPI/sel1_b6/or_B0_or_B1_B2_o_o ;
  wire \U15/U_SPI/sel1_b6/or_B1_B2_o ;
  wire \U15/U_SPI/sel1_b6/or_B3_or_B4_B5_o_o ;
  wire \U15/U_SPI/sel1_b6/or_B4_B5_o ;
  wire \U15/U_SPI/sel1_b7/or_B0_or_B1_B2_o_o ;
  wire \U15/U_SPI/sel1_b7/or_B1_B2_o ;
  wire \U15/U_SPI/sel1_b7/or_B3_or_B4_B5_o_o ;
  wire \U15/U_SPI/sel1_b7/or_B4_B5_o ;
  wire \U15/U_SPI/sel1_b8/or_B0_or_B1_B2_o_o ;
  wire \U15/U_SPI/sel1_b8/or_B1_B2_o ;
  wire \U15/U_SPI/sel1_b8/or_B3_or_B4_B5_o_o ;
  wire \U15/U_SPI/sel1_b8/or_B4_B5_o ;
  wire \U15/U_SPI/sel1_b9/or_B0_or_B1_B2_o_o ;
  wire \U15/U_SPI/sel1_b9/or_B1_B2_o ;
  wire \U15/U_SPI/sel1_b9/or_B3_or_B4_B5_o_o ;
  wire \U15/U_SPI/sel1_b9/or_B4_B5_o ;
  wire \U15/U_SPI/sel4_b0/or_B3_or_B4_B5_o_o ;
  wire \U15/U_SPI/sel4_b0/or_B4_B5_o ;
  wire \U15/U_SPI/sel4_b1/or_B3_or_B4_B5_o_o ;
  wire \U15/U_SPI/sel4_b1/or_B4_B5_o ;
  wire \U15/U_SPI/sel4_b2/or_B3_or_B4_B5_o_o ;
  wire \U15/U_SPI/sel4_b2/or_B4_B5_o ;
  wire \U15/U_SPI/sel4_b3/or_B3_or_B4_B5_o_o ;
  wire \U15/U_SPI/sel4_b3/or_B4_B5_o ;
  wire \U15/U_SPI/sel4_b4/or_B1_B2_o ;
  wire \U15/U_SPI/sel4_b4/or_B3_or_B4_B5_o_o ;
  wire \U15/U_SPI/sel4_b4/or_B4_B5_o ;
  wire \U15/U_SPI/state_dbg_o[0] ;  // ../../rtl/spi/spi_slave.vhd(142)
  wire \U15/U_SPI/state_dbg_o[1] ;  // ../../rtl/spi/spi_slave.vhd(142)
  wire \U15/U_SPI/state_dbg_o[2] ;  // ../../rtl/spi/spi_slave.vhd(142)
  wire \U15/U_SPI/state_dbg_o[3] ;  // ../../rtl/spi/spi_slave.vhd(142)
  wire \U15/U_SPI/state_dbg_o[4] ;  // ../../rtl/spi/spi_slave.vhd(142)
  wire \U15/U_SPI/wren_ack_next ;  // ../../rtl/spi/spi_slave.vhd(179)
  wire \U15/U_SPI/wren_ack_o ;  // ../../rtl/spi/spi_slave.vhd(140)
  wire \U15/U_SPI/wren_o ;  // ../../rtl/spi/spi_slave.vhd(139)
  wire \U15/mux13_b0_sel_is_3_o ;
  wire \U15/mux2_b0_sel_is_3_o ;
  wire \U15/mux3_b1_sel_is_3_o ;
  wire \U15/n1 ;
  wire \U15/n10 ;
  wire \U15/n37 ;
  wire \U15/n41 ;
  wire \U15/n7 ;
  wire \U15/queue_rd_empty ;  // ../../rtl/avr/avr.vhd(131)
  wire \U15/sel12_b0_sel_is_3_o ;
  wire \U15/sel13_b1_sel_is_3_o ;
  wire \U15/spi_di_req ;  // ../../rtl/avr/avr.vhd(109)
  wire \U15/spi_do_valid ;  // ../../rtl/avr/avr.vhd(106)
  wire \U15/spi_miso ;  // ../../rtl/avr/avr.vhd(110)
  wire \U6/n24 ;
  wire \U6/n48 ;
  wire \U7/U_PENT/mux10_b0_sel_is_3_o ;
  wire \U7/U_PENT/mux11_b0_sel_is_3_o ;
  wire \U7/U_PENT/mux12_b0_sel_is_3_o ;
  wire \U7/U_PENT/mux13_b0_sel_is_3_o ;
  wire \U7/U_PENT/mux14_b0_sel_is_3_o ;
  wire \U7/U_PENT/mux15_b0_sel_is_3_o ;
  wire \U7/U_PENT/mux19_b0_sel_is_3_o ;
  wire \U7/U_PENT/mux21_b0_sel_is_3_o ;
  wire \U7/U_PENT/mux22_b0_sel_is_3_o ;
  wire \U7/U_PENT/mux27_b0_sel_is_3_o ;
  wire \U7/U_PENT/mux28_b0_sel_is_3_o ;
  wire \U7/U_PENT/mux4_b0_sel_is_3_o ;
  wire \U7/U_PENT/mux5_b0_sel_is_3_o ;
  wire \U7/U_PENT/mux6_b0_sel_is_3_o ;
  wire \U7/U_PENT/mux9_b0_sel_is_3_o ;
  wire \U7/U_PENT/n1 ;
  wire \U7/U_PENT/n10 ;
  wire \U7/U_PENT/n106 ;
  wire \U7/U_PENT/n107 ;
  wire \U7/U_PENT/n108 ;
  wire \U7/U_PENT/n109 ;
  wire \U7/U_PENT/n11 ;
  wire \U7/U_PENT/n110 ;
  wire \U7/U_PENT/n111 ;
  wire \U7/U_PENT/n116 ;
  wire \U7/U_PENT/n117 ;
  wire \U7/U_PENT/n118 ;
  wire \U7/U_PENT/n119 ;
  wire \U7/U_PENT/n12 ;
  wire \U7/U_PENT/n13 ;
  wire \U7/U_PENT/n14 ;
  wire \U7/U_PENT/n15 ;
  wire \U7/U_PENT/n157 ;
  wire \U7/U_PENT/n16 ;
  wire \U7/U_PENT/n166 ;
  wire \U7/U_PENT/n167 ;
  wire \U7/U_PENT/n168 ;
  wire \U7/U_PENT/n169 ;
  wire \U7/U_PENT/n17 ;
  wire \U7/U_PENT/n170 ;
  wire \U7/U_PENT/n171 ;
  wire \U7/U_PENT/n172 ;
  wire \U7/U_PENT/n173 ;
  wire \U7/U_PENT/n18 ;
  wire \U7/U_PENT/n19 ;
  wire \U7/U_PENT/n2 ;
  wire \U7/U_PENT/n20 ;
  wire \U7/U_PENT/n21 ;
  wire \U7/U_PENT/n22 ;
  wire \U7/U_PENT/n23 ;
  wire \U7/U_PENT/n24 ;
  wire \U7/U_PENT/n39 ;
  wire \U7/U_PENT/n40 ;
  wire \U7/U_PENT/n41 ;
  wire \U7/U_PENT/n43 ;
  wire \U7/U_PENT/n45 ;
  wire \U7/U_PENT/n46 ;
  wire \U7/U_PENT/n47 ;
  wire \U7/U_PENT/n48 ;
  wire \U7/U_PENT/n49 ;
  wire \U7/U_PENT/n5 ;
  wire \U7/U_PENT/n50 ;
  wire \U7/U_PENT/n51 ;
  wire \U7/U_PENT/n52 ;
  wire \U7/U_PENT/n53 ;
  wire \U7/U_PENT/n54 ;
  wire \U7/U_PENT/n55 ;
  wire \U7/U_PENT/n56 ;
  wire \U7/U_PENT/n6 ;
  wire \U7/U_PENT/n7 ;
  wire \U7/U_PENT/n8 ;
  wire \U7/U_PENT/n9 ;
  wire \U7/U_PENT/paper ;  // ../../rtl/video/pentagon_video.vhd(65)
  wire \U7/U_PENT/paper_r ;  // ../../rtl/video/pentagon_video.vhd(58)
  wire \U7/hsync_spec ;  // ../../rtl/video/video.vhd(102)
  wire \U7/i_spec ;  // ../../rtl/video/video.vhd(101)
  wire \U7/pFF_CS_spec ;  // ../../rtl/video/video.vhd(104)
  wire \U7/vsync_spec ;  // ../../rtl/video/video.vhd(103)
  wire \U8/U_ICONS/is_icon_cf ;  // ../../rtl/video/icons.vhd(40)
  wire \U8/U_ICONS/is_icon_fd ;  // ../../rtl/video/icons.vhd(38)
  wire \U8/U_ICONS/is_icon_sd ;  // ../../rtl/video/icons.vhd(39)
  wire \U8/U_ICONS/mux10_b0_sel_is_0_o ;
  wire \U8/U_ICONS/mux11_b0_sel_is_2_o ;
  wire \U8/U_ICONS/n10 ;
  wire \U8/U_ICONS/n11 ;
  wire \U8/U_ICONS/n12 ;
  wire \U8/U_ICONS/n13 ;
  wire \U8/U_ICONS/n14 ;
  wire \U8/U_ICONS/n15 ;
  wire \U8/U_ICONS/n16 ;
  wire \U8/U_ICONS/n17 ;
  wire \U8/U_ICONS/n18 ;
  wire \U8/U_ICONS/n19 ;
  wire \U8/U_ICONS/n20 ;
  wire \U8/U_ICONS/n35 ;
  wire \U8/U_ICONS/n36 ;
  wire \U8/U_ICONS/n37 ;
  wire \U8/U_ICONS/n38 ;
  wire \U8/U_ICONS/n39 ;
  wire \U8/U_ICONS/n40 ;
  wire \U8/U_ICONS/n41 ;
  wire \U8/U_ICONS/n42 ;
  wire \U8/U_ICONS/n42_neg ;
  wire \U8/U_ICONS/n43 ;
  wire \U8/U_ICONS/n44 ;
  wire \U8/U_ICONS/n44_neg ;
  wire \U8/U_ICONS/n45 ;
  wire \U8/U_ICONS/n46 ;
  wire \U8/U_ICONS/n46_neg ;
  wire \U8/U_ICONS/n5 ;
  wire \U8/U_ICONS/n6 ;
  wire \U8/U_ICONS/n8 ;
  wire \U8/U_ICONS/n9 ;
  wire \U8/U_ICONS/paper_icon_cf ;  // ../../rtl/video/icons.vhd(30)
  wire \U8/U_ICONS/paper_icon_fd ;  // ../../rtl/video/icons.vhd(28)
  wire \U8/U_ICONS/paper_icon_sd ;  // ../../rtl/video/icons.vhd(29)
  wire \U8/char_x[0]_neg ;
  wire \U8/char_x[1]_neg ;
  wire \U8/char_x[2]_neg ;
  wire \U8/hcnt[0]_neg ;
  wire \U8/hcnt[1]_neg ;
  wire \U8/is_flash ;  // ../../rtl/video/overlay.vhd(55)
  wire \U8/mux10_b0_sel_is_7_o ;
  wire \U8/mux11_b0_sel_is_0_o ;
  wire \U8/mux18_b1_sel_is_2_o ;
  wire \U8/mux19_b0_sel_is_0_o ;
  wire \U8/mux22_b0_sel_is_3_o ;
  wire \U8/mux22_b5_sel_is_3_o ;
  wire \U8/mux23_b0_sel_is_3_o ;
  wire \U8/mux24_b0_sel_is_3_o ;
  wire \U8/mux5_b0_sel_is_30_o ;
  wire \U8/mux6_b0_sel_is_15_o ;
  wire \U8/mux7_b0_sel_is_0_o ;
  wire \U8/mux9_b0_sel_is_14_o ;
  wire \U8/n1 ;
  wire \U8/n2 ;
  wire \U8/n21 ;
  wire \U8/n23 ;
  wire \U8/n26 ;
  wire \U8/n3 ;
  wire \U8/n33 ;
  wire \U8/n34 ;
  wire \U8/n35 ;
  wire \U8/n36 ;
  wire \U8/n37 ;
  wire \U8/n38 ;
  wire \U8/n39 ;
  wire \U8/n4 ;
  wire \U8/n41 ;
  wire \U8/n42 ;
  wire \U8/n43 ;
  wire \U8/n44 ;
  wire \U8/n45 ;
  wire \U8/n46 ;
  wire \U8/n47 ;
  wire \U8/n48 ;
  wire \U8/n49 ;
  wire \U8/n5 ;
  wire \U8/n50 ;
  wire \U8/n51 ;
  wire \U8/n52 ;
  wire \U8/n53 ;
  wire \U8/n54 ;
  wire \U8/n56 ;
  wire \U8/n57 ;
  wire \U8/n58 ;
  wire \U8/n59 ;
  wire \U8/n60 ;
  wire \U8/n61 ;
  wire \U8/n62 ;
  wire \U8/n63 ;
  wire \U8/n64 ;
  wire \U8/n65 ;
  wire \U8/n66 ;
  wire \U8/n67 ;
  wire \U8/n68 ;
  wire \U8/n69 ;
  wire \U8/n70 ;
  wire \U8/n71 ;
  wire \U8/n71_neg ;
  wire \U8/n74 ;
  wire \U8/n75 ;
  wire \U8/n76 ;
  wire \U8/n77 ;
  wire \U8/n78 ;
  wire \U8/paper ;  // ../../rtl/video/overlay.vhd(62)
  wire \U8/paper2 ;  // ../../rtl/video/overlay.vhd(63)
  wire \U8/pixel ;  // ../../rtl/video/overlay.vhd(45)
  wire \U8/pixel_reg_al_n0 ;  // ../../rtl/video/overlay.vhd(46)
  wire \U8/video_on ;  // ../../rtl/video/overlay.vhd(32)
  wire \U8/video_on_neg ;
  wire \U8/vram_wr ;  // ../../rtl/video/overlay.vhd(52)
  wire \U9/KSI ;  // ../../rtl/video/vga_pal.vhd(62)
  wire \U9/KSI_2 ;  // ../../rtl/video/vga_pal.vhd(70)
  wire \U9/RESET_H ;  // ../../rtl/video/vga_pal.vhd(141)
  wire \U9/RESET_V ;  // ../../rtl/video/vga_pal.vhd(142)
  wire \U9/RESET_ZONE ;  // ../../rtl/video/vga_pal.vhd(140)
  wire \U9/SSI ;  // ../../rtl/video/vga_pal.vhd(63)
  wire \U9/SSI_2 ;  // ../../rtl/video/vga_pal.vhd(71)
  wire \U9/VGA_BLANK ;  // ../../rtl/video/vga_pal.vhd(150)
  wire \U9/VGA_H0 ;  // ../../rtl/video/vga_pal.vhd(90)
  wire \U9/VGA_KGI ;  // ../../rtl/video/vga_pal.vhd(148)
  wire \U9/VGA_KSI ;  // ../../rtl/video/vga_pal.vhd(130)
  wire \U9/VGA_SGI ;  // ../../rtl/video/vga_pal.vhd(149)
  wire \U9/VGA_SSI ;  // ../../rtl/video/vga_pal.vhd(131)
  wire \U9/VGA_V_CLK ;  // ../../rtl/video/vga_pal.vhd(94)
  wire \U9/VIDEO_V_CLK ;  // ../../rtl/video/vga_pal.vhd(115)
  wire \U9/mux2_b0_sel_is_0_o ;
  wire \U9/mux3_b0_sel_is_0_o ;
  wire \U9/n1 ;
  wire \U9/n10 ;
  wire \U9/n10_neg ;
  wire \U9/n13 ;
  wire \U9/n13_neg ;
  wire \U9/n24 ;
  wire \U9/n25 ;
  wire \U9/n26 ;
  wire \U9/n3 ;
  wire \U9/n31 ;
  wire \U9/n34 ;
  wire \U9/n35 ;
  wire \U9/n36 ;
  wire \U9/n37 ;
  wire \U9/n38 ;
  wire \U9/n39 ;
  wire \U9/n40 ;
  wire \U9/n41 ;
  wire \U9/n42 ;
  wire \U9/n43 ;
  wire \U9/n44 ;
  wire \U9/n45 ;
  wire \U9/n46 ;
  wire \U9/n6 ;
  wire \U9/n8 ;
  wire blink;  // ../../rtl/karabas_pro.vhd(213)
  wire clk_112;  // ../../rtl/karabas_pro.vhd(315)
  wire clk_28;  // ../../rtl/karabas_pro.vhd(318)
  wire clk_8;  // ../../rtl/karabas_pro.vhd(320)
  wire clk_84;  // ../../rtl/karabas_pro.vhd(316)
  wire clk_div2;  // ../../rtl/karabas_pro.vhd(323)
  wire clk_div4;  // ../../rtl/karabas_pro.vhd(324)
  wire n15;
  wire osd_overlay;  // ../../rtl/karabas_pro.vhd(216)
  wire osd_popup;  // ../../rtl/karabas_pro.vhd(217)
  wire vid_rd;  // ../../rtl/karabas_pro.vhd(353)
  wire vid_scandoubler_enable;  // ../../rtl/karabas_pro.vhd(212)

  assign BUZZER = 1'b0;
  assign CPLD_CLK = clk_84;
  assign CPLD_CLK2 = clk_8;
  assign DCLK = 1'b0;
  assign NCSO = 1'b1;
  assign NRESET = 1'b0;
  assign PIN_120 = 1'b1;
  assign PIN_121 = 1'b0;
  assign PIN_7 = 1'b1;
  assign SA[1] = 1'b1;
  assign SA[0] = 1'b1;
  assign SDIR = soft_sw[10];
  assign SD_NCS = 1'b1;
  assign SND_BS = 1'b1;
  assign SND_DAT = 1'b0;
  assign SND_WS = 1'b0;
  assign SRAM_A[20] = 1'b1;
  assign SRAM_A[19] = 1'b0;
  assign SRAM_A[18] = 1'b0;
  assign SRAM_A[17] = 1'b0;
  assign SRAM_A[16] = 1'b0;
  assign SRAM_A[15] = 1'b0;
  assign SRAM_A[14] = 1'b0;
  assign SRAM_A[13] = 1'b0;
  assign SRAM_A[12] = 1'b0;
  assign SRAM_A[11] = 1'b0;
  assign SRAM_A[10] = 1'b0;
  assign SRAM_A[9] = 1'b0;
  assign SRAM_A[8] = 1'b0;
  assign SRAM_A[7] = 1'b0;
  assign SRAM_A[6] = 1'b0;
  assign SRAM_A[5] = 1'b0;
  assign SRAM_A[4] = 1'b0;
  assign SRAM_A[3] = 1'b0;
  assign SRAM_A[2] = 1'b0;
  assign SRAM_A[1] = 1'b0;
  assign SRAM_A[0] = 1'b0;
  assign SRAM_NRD = 1'b1;
  assign SRAM_NWR = 1'b1;
  assign SD[7] = 1'b1;
  assign SD[6] = 1'b1;
  assign SD[5] = 1'b1;
  assign SD[4] = 1'b1;
  assign SD[3] = 1'b1;
  assign SD[2] = 1'b1;
  assign SD[1] = 1'b1;
  assign SD[0] = 1'b1;
  assign SD_MOSI = 1'b1;
  assign SRAM_D[7] = vid_do_bus[7];
  assign SRAM_D[6] = vid_do_bus[6];
  assign SRAM_D[5] = vid_do_bus[5];
  assign SRAM_D[4] = vid_do_bus[4];
  assign SRAM_D[3] = vid_do_bus[3];
  assign SRAM_D[2] = vid_do_bus[2];
  assign SRAM_D[1] = vid_do_bus[1];
  assign SRAM_D[0] = vid_do_bus[0];
  bufif1 ASDO_tribuf (ASDO, 1'b0, 1'b0);  // ../../rtl/karabas_pro.vhd(1214)
  eq_w8 \G_UNO_UART$U22/uartchip/receiver/eq0  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/rxvalues ),
    .i1(8'b11111111),
    .o(\G_UNO_UART$U22/uartchip/receiver/rx_is_1 ));  // ../../rtl/uart/uart.v(186)
  eq_w8 \G_UNO_UART$U22/uartchip/receiver/eq1  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/rxvalues ),
    .i1(8'b00000000),
    .o(\G_UNO_UART$U22/uartchip/receiver/rx_is_0 ));  // ../../rtl/uart/uart.v(187)
  eq_w8 \G_UNO_UART$U22/uartchip/receiver/eq2  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/rxvalues ),
    .i1(8'b11110000),
    .o(\G_UNO_UART$U22/uartchip/receiver/rx_negedge ));  // ../../rtl/uart/uart.v(188)
  eq_w18 \G_UNO_UART$U22/uartchip/receiver/eq4  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/bpscounter ),
    .i1(18'b000000000001111001),
    .o(\G_UNO_UART$U22/uartchip/receiver/n6 ));  // ../../rtl/uart/uart.v(211)
  eq_w18 \G_UNO_UART$U22/uartchip/receiver/eq5  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/bpscounter ),
    .i1(18'b000000000000000000),
    .o(\G_UNO_UART$U22/uartchip/receiver/n12 ));  // ../../rtl/uart/uart.v(217)
  eq_w3 \G_UNO_UART$U22/uartchip/receiver/eq6  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/bitcnt ),
    .i1(3'b000),
    .o(\G_UNO_UART$U22/uartchip/receiver/n31 ));  // ../../rtl/uart/uart.v(243)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/receiver/mux0_b0  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/bpscounter [0]),
    .i1(1'b1),
    .sel(\G_UNO_UART$U22/uartchip/receiver/rx_negedge ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n1 [0]));  // ../../rtl/uart/uart.v(206)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/receiver/mux0_b1  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/bpscounter [1]),
    .i1(1'b1),
    .sel(\G_UNO_UART$U22/uartchip/receiver/rx_negedge ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n1 [1]));  // ../../rtl/uart/uart.v(206)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/receiver/mux0_b10  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/bpscounter [10]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/receiver/rx_negedge ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n1 [10]));  // ../../rtl/uart/uart.v(206)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/receiver/mux0_b11  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/bpscounter [11]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/receiver/rx_negedge ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n1 [11]));  // ../../rtl/uart/uart.v(206)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/receiver/mux0_b12  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/bpscounter [12]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/receiver/rx_negedge ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n1 [12]));  // ../../rtl/uart/uart.v(206)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/receiver/mux0_b13  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/bpscounter [13]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/receiver/rx_negedge ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n1 [13]));  // ../../rtl/uart/uart.v(206)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/receiver/mux0_b14  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/bpscounter [14]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/receiver/rx_negedge ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n1 [14]));  // ../../rtl/uart/uart.v(206)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/receiver/mux0_b15  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/bpscounter [15]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/receiver/rx_negedge ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n1 [15]));  // ../../rtl/uart/uart.v(206)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/receiver/mux0_b16  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/bpscounter [16]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/receiver/rx_negedge ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n1 [16]));  // ../../rtl/uart/uart.v(206)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/receiver/mux0_b17  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/bpscounter [17]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/receiver/rx_negedge ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n1 [17]));  // ../../rtl/uart/uart.v(206)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/receiver/mux0_b2  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/bpscounter [2]),
    .i1(1'b1),
    .sel(\G_UNO_UART$U22/uartchip/receiver/rx_negedge ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n1 [2]));  // ../../rtl/uart/uart.v(206)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/receiver/mux0_b3  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/bpscounter [3]),
    .i1(1'b1),
    .sel(\G_UNO_UART$U22/uartchip/receiver/rx_negedge ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n1 [3]));  // ../../rtl/uart/uart.v(206)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/receiver/mux0_b4  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/bpscounter [4]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/receiver/rx_negedge ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n1 [4]));  // ../../rtl/uart/uart.v(206)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/receiver/mux0_b5  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/bpscounter [5]),
    .i1(1'b1),
    .sel(\G_UNO_UART$U22/uartchip/receiver/rx_negedge ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n1 [5]));  // ../../rtl/uart/uart.v(206)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/receiver/mux0_b6  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/bpscounter [6]),
    .i1(1'b1),
    .sel(\G_UNO_UART$U22/uartchip/receiver/rx_negedge ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n1 [6]));  // ../../rtl/uart/uart.v(206)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/receiver/mux0_b7  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/bpscounter [7]),
    .i1(1'b1),
    .sel(\G_UNO_UART$U22/uartchip/receiver/rx_negedge ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n1 [7]));  // ../../rtl/uart/uart.v(206)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/receiver/mux0_b8  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/bpscounter [8]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/receiver/rx_negedge ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n1 [8]));  // ../../rtl/uart/uart.v(206)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/receiver/mux0_b9  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/bpscounter [9]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/receiver/rx_negedge ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n1 [9]));  // ../../rtl/uart/uart.v(206)
  and \G_UNO_UART$U22/uartchip/receiver/mux10_b0_sel_is_2  (\G_UNO_UART$U22/uartchip/receiver/mux10_b0_sel_is_2_o , \G_UNO_UART$U22/uartchip/receiver/n8_neg , \G_UNO_UART$U22/uartchip/receiver/n12 );
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/receiver/mux13_b0  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/n17 [0]),
    .i1(\G_UNO_UART$U22/uartchip/receiver/n10 [0]),
    .sel(\G_UNO_UART$U22/uartchip/receiver/n6 ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n18 [0]));  // ../../rtl/uart/uart.v(260)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/receiver/mux13_b1  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/n17 [1]),
    .i1(\G_UNO_UART$U22/uartchip/receiver/n10 [1]),
    .sel(\G_UNO_UART$U22/uartchip/receiver/n6 ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n18 [1]));  // ../../rtl/uart/uart.v(260)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/receiver/mux13_b2  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/n17 [2]),
    .i1(\G_UNO_UART$U22/uartchip/receiver/n10 [2]),
    .sel(\G_UNO_UART$U22/uartchip/receiver/n6 ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n18 [2]));  // ../../rtl/uart/uart.v(260)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/receiver/mux13_b3  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/n35 [0]),
    .i1(\G_UNO_UART$U22/uartchip/receiver/n28 [0]),
    .sel(\G_UNO_UART$U22/uartchip/receiver/n6 ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n37 [0]));  // ../../rtl/uart/uart.v(260)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/receiver/mux13_b4  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/n35 [1]),
    .i1(\G_UNO_UART$U22/uartchip/receiver/n28 [1]),
    .sel(\G_UNO_UART$U22/uartchip/receiver/n6 ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n37 [1]));  // ../../rtl/uart/uart.v(260)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/receiver/mux13_b5  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/n35 [2]),
    .i1(\G_UNO_UART$U22/uartchip/receiver/n28 [2]),
    .sel(\G_UNO_UART$U22/uartchip/receiver/n6 ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n37 [2]));  // ../../rtl/uart/uart.v(260)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/receiver/mux13_b6  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/n17 [0]),
    .i1(\G_UNO_UART$U22/uartchip/receiver/n41 [0]),
    .sel(\G_UNO_UART$U22/uartchip/receiver/n6 ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n46 [0]));  // ../../rtl/uart/uart.v(260)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/receiver/mux13_b7  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/n45 [1]),
    .i1(\G_UNO_UART$U22/uartchip/receiver/n41 [1]),
    .sel(\G_UNO_UART$U22/uartchip/receiver/n6 ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n46 [1]));  // ../../rtl/uart/uart.v(260)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/receiver/mux13_b8  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/n45 [2]),
    .i1(\G_UNO_UART$U22/uartchip/receiver/n41 [2]),
    .sel(\G_UNO_UART$U22/uartchip/receiver/n6 ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n46 [2]));  // ../../rtl/uart/uart.v(260)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/receiver/mux14_b0  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/state [0]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/receiver/rx_is_1_neg ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n41 [0]));  // ../../rtl/uart/uart.v(254)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/receiver/mux14_b1  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/state [1]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/receiver/rx_is_1_neg ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n41 [1]));  // ../../rtl/uart/uart.v(254)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/receiver/mux14_b2  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/state [2]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/receiver/rx_is_1_neg ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n41 [2]));  // ../../rtl/uart/uart.v(254)
  AL_MUX \G_UNO_UART$U22/uartchip/receiver/mux16_b0  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/bitcnt [0]),
    .i1(1'b1),
    .sel(\G_UNO_UART$U22/uartchip/receiver/mux10_b0_sel_is_2_o ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n22 [0]));
  AL_MUX \G_UNO_UART$U22/uartchip/receiver/mux16_b1  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/bitcnt [1]),
    .i1(1'b1),
    .sel(\G_UNO_UART$U22/uartchip/receiver/mux10_b0_sel_is_2_o ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n22 [1]));
  AL_MUX \G_UNO_UART$U22/uartchip/receiver/mux16_b2  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/bitcnt [2]),
    .i1(1'b1),
    .sel(\G_UNO_UART$U22/uartchip/receiver/mux10_b0_sel_is_2_o ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n22 [2]));
  AL_MUX \G_UNO_UART$U22/uartchip/receiver/mux16_b3  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/bitcnt [0]),
    .i1(\G_UNO_UART$U22/uartchip/receiver/n30 [0]),
    .sel(\G_UNO_UART$U22/uartchip/receiver/mux10_b0_sel_is_2_o ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n39 [0]));
  AL_MUX \G_UNO_UART$U22/uartchip/receiver/mux16_b4  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/bitcnt [1]),
    .i1(\G_UNO_UART$U22/uartchip/receiver/n30 [1]),
    .sel(\G_UNO_UART$U22/uartchip/receiver/mux10_b0_sel_is_2_o ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n39 [1]));
  AL_MUX \G_UNO_UART$U22/uartchip/receiver/mux16_b5  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/bitcnt [2]),
    .i1(\G_UNO_UART$U22/uartchip/receiver/n30 [2]),
    .sel(\G_UNO_UART$U22/uartchip/receiver/mux10_b0_sel_is_2_o ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n39 [2]));
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/receiver/mux17_b0  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/state [0]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/receiver/n12 ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n17 [0]));  // ../../rtl/uart/uart.v(260)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/receiver/mux17_b1  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/state [1]),
    .i1(1'b1),
    .sel(\G_UNO_UART$U22/uartchip/receiver/n12 ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n17 [1]));  // ../../rtl/uart/uart.v(260)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/receiver/mux17_b2  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/state [2]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/receiver/n12 ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n17 [2]));  // ../../rtl/uart/uart.v(260)
  AL_MUX \G_UNO_UART$U22/uartchip/receiver/mux17_b3  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/state [0]),
    .i1(1'b1),
    .sel(\G_UNO_UART$U22/uartchip/receiver/mux17_b3_sel_is_3_o ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n35 [0]));
  and \G_UNO_UART$U22/uartchip/receiver/mux17_b3_sel_is_3  (\G_UNO_UART$U22/uartchip/receiver/mux17_b3_sel_is_3_o , \G_UNO_UART$U22/uartchip/receiver/n12 , \G_UNO_UART$U22/uartchip/receiver/n31 );
  AL_MUX \G_UNO_UART$U22/uartchip/receiver/mux17_b4  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/state [1]),
    .i1(1'b1),
    .sel(\G_UNO_UART$U22/uartchip/receiver/mux17_b3_sel_is_3_o ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n35 [1]));
  AL_MUX \G_UNO_UART$U22/uartchip/receiver/mux17_b5  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/state [2]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/receiver/mux17_b3_sel_is_3_o ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n35 [2]));
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/receiver/mux17_b7  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/state [1]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/receiver/n12 ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n45 [1]));  // ../../rtl/uart/uart.v(260)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/receiver/mux17_b8  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/state [2]),
    .i1(1'b1),
    .sel(\G_UNO_UART$U22/uartchip/receiver/n12 ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n45 [2]));  // ../../rtl/uart/uart.v(260)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/receiver/mux1_b0  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/state [0]),
    .i1(1'b1),
    .sel(\G_UNO_UART$U22/uartchip/receiver/rx_negedge ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n2 [0]));  // ../../rtl/uart/uart.v(206)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/receiver/mux1_b1  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/state [1]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/receiver/rx_negedge ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n2 [1]));  // ../../rtl/uart/uart.v(206)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/receiver/mux1_b2  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/state [2]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/receiver/rx_negedge ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n2 [2]));  // ../../rtl/uart/uart.v(206)
  binary_mux_s3_w1 \G_UNO_UART$U22/uartchip/receiver/mux20_b0  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/n2 [0]),
    .i1(\G_UNO_UART$U22/uartchip/receiver/n18 [0]),
    .i2(\G_UNO_UART$U22/uartchip/receiver/n37 [0]),
    .i3(\G_UNO_UART$U22/uartchip/receiver/n46 [0]),
    .i4(\G_UNO_UART$U22/uartchip/receiver/state [0]),
    .i5(1'b0),
    .i6(1'b0),
    .i7(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/receiver/state ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n52 [0]));  // ../../rtl/uart/uart.v(271)
  binary_mux_s3_w1 \G_UNO_UART$U22/uartchip/receiver/mux20_b1  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/n2 [1]),
    .i1(\G_UNO_UART$U22/uartchip/receiver/n18 [1]),
    .i2(\G_UNO_UART$U22/uartchip/receiver/n37 [1]),
    .i3(\G_UNO_UART$U22/uartchip/receiver/n46 [1]),
    .i4(\G_UNO_UART$U22/uartchip/receiver/state [1]),
    .i5(1'b0),
    .i6(1'b0),
    .i7(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/receiver/state ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n52 [1]));  // ../../rtl/uart/uart.v(271)
  binary_mux_s3_w1 \G_UNO_UART$U22/uartchip/receiver/mux20_b2  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/n2 [2]),
    .i1(\G_UNO_UART$U22/uartchip/receiver/n18 [2]),
    .i2(\G_UNO_UART$U22/uartchip/receiver/n37 [2]),
    .i3(\G_UNO_UART$U22/uartchip/receiver/n46 [2]),
    .i4(\G_UNO_UART$U22/uartchip/receiver/state [2]),
    .i5(1'b0),
    .i6(1'b0),
    .i7(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/receiver/state ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n52 [2]));  // ../../rtl/uart/uart.v(271)
  binary_mux_s3_w1 \G_UNO_UART$U22/uartchip/receiver/mux22  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/rx_negedge ),
    .i1(\G_UNO_UART$U22/uartchip/receiver/n19 ),
    .i2(\G_UNO_UART$U22/uartchip/receiver/n38 ),
    .i3(\G_UNO_UART$U22/uartchip/receiver/n47 ),
    .i4(UART_CTS),
    .i5(UART_CTS),
    .i6(UART_CTS),
    .i7(UART_CTS),
    .sel(\G_UNO_UART$U22/uartchip/receiver/state ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n54 ));  // ../../rtl/uart/uart.v(271)
  binary_mux_s3_w1 \G_UNO_UART$U22/uartchip/receiver/mux23_b0  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/n1 [0]),
    .i1(\G_UNO_UART$U22/uartchip/receiver/n20 [0]),
    .i2(\G_UNO_UART$U22/uartchip/receiver/n20 [0]),
    .i3(\G_UNO_UART$U22/uartchip/receiver/n3 [0]),
    .i4(\G_UNO_UART$U22/uartchip/receiver/bpscounter [0]),
    .i5(\G_UNO_UART$U22/uartchip/receiver/bpscounter [0]),
    .i6(\G_UNO_UART$U22/uartchip/receiver/bpscounter [0]),
    .i7(\G_UNO_UART$U22/uartchip/receiver/bpscounter [0]),
    .sel(\G_UNO_UART$U22/uartchip/receiver/state ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n55 [0]));  // ../../rtl/uart/uart.v(271)
  binary_mux_s3_w1 \G_UNO_UART$U22/uartchip/receiver/mux23_b1  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/n1 [1]),
    .i1(\G_UNO_UART$U22/uartchip/receiver/n20 [1]),
    .i2(\G_UNO_UART$U22/uartchip/receiver/n20 [1]),
    .i3(\G_UNO_UART$U22/uartchip/receiver/n3 [1]),
    .i4(\G_UNO_UART$U22/uartchip/receiver/bpscounter [1]),
    .i5(\G_UNO_UART$U22/uartchip/receiver/bpscounter [1]),
    .i6(\G_UNO_UART$U22/uartchip/receiver/bpscounter [1]),
    .i7(\G_UNO_UART$U22/uartchip/receiver/bpscounter [1]),
    .sel(\G_UNO_UART$U22/uartchip/receiver/state ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n55 [1]));  // ../../rtl/uart/uart.v(271)
  binary_mux_s3_w1 \G_UNO_UART$U22/uartchip/receiver/mux23_b10  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/n1 [10]),
    .i1(\G_UNO_UART$U22/uartchip/receiver/n20 [10]),
    .i2(\G_UNO_UART$U22/uartchip/receiver/n20 [10]),
    .i3(\G_UNO_UART$U22/uartchip/receiver/n3 [10]),
    .i4(\G_UNO_UART$U22/uartchip/receiver/bpscounter [10]),
    .i5(\G_UNO_UART$U22/uartchip/receiver/bpscounter [10]),
    .i6(\G_UNO_UART$U22/uartchip/receiver/bpscounter [10]),
    .i7(\G_UNO_UART$U22/uartchip/receiver/bpscounter [10]),
    .sel(\G_UNO_UART$U22/uartchip/receiver/state ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n55 [10]));  // ../../rtl/uart/uart.v(271)
  binary_mux_s3_w1 \G_UNO_UART$U22/uartchip/receiver/mux23_b11  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/n1 [11]),
    .i1(\G_UNO_UART$U22/uartchip/receiver/n20 [11]),
    .i2(\G_UNO_UART$U22/uartchip/receiver/n20 [11]),
    .i3(\G_UNO_UART$U22/uartchip/receiver/n3 [11]),
    .i4(\G_UNO_UART$U22/uartchip/receiver/bpscounter [11]),
    .i5(\G_UNO_UART$U22/uartchip/receiver/bpscounter [11]),
    .i6(\G_UNO_UART$U22/uartchip/receiver/bpscounter [11]),
    .i7(\G_UNO_UART$U22/uartchip/receiver/bpscounter [11]),
    .sel(\G_UNO_UART$U22/uartchip/receiver/state ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n55 [11]));  // ../../rtl/uart/uart.v(271)
  binary_mux_s3_w1 \G_UNO_UART$U22/uartchip/receiver/mux23_b12  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/n1 [12]),
    .i1(\G_UNO_UART$U22/uartchip/receiver/n20 [12]),
    .i2(\G_UNO_UART$U22/uartchip/receiver/n20 [12]),
    .i3(\G_UNO_UART$U22/uartchip/receiver/n3 [12]),
    .i4(\G_UNO_UART$U22/uartchip/receiver/bpscounter [12]),
    .i5(\G_UNO_UART$U22/uartchip/receiver/bpscounter [12]),
    .i6(\G_UNO_UART$U22/uartchip/receiver/bpscounter [12]),
    .i7(\G_UNO_UART$U22/uartchip/receiver/bpscounter [12]),
    .sel(\G_UNO_UART$U22/uartchip/receiver/state ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n55 [12]));  // ../../rtl/uart/uart.v(271)
  binary_mux_s3_w1 \G_UNO_UART$U22/uartchip/receiver/mux23_b13  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/n1 [13]),
    .i1(\G_UNO_UART$U22/uartchip/receiver/n20 [13]),
    .i2(\G_UNO_UART$U22/uartchip/receiver/n20 [13]),
    .i3(\G_UNO_UART$U22/uartchip/receiver/n3 [13]),
    .i4(\G_UNO_UART$U22/uartchip/receiver/bpscounter [13]),
    .i5(\G_UNO_UART$U22/uartchip/receiver/bpscounter [13]),
    .i6(\G_UNO_UART$U22/uartchip/receiver/bpscounter [13]),
    .i7(\G_UNO_UART$U22/uartchip/receiver/bpscounter [13]),
    .sel(\G_UNO_UART$U22/uartchip/receiver/state ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n55 [13]));  // ../../rtl/uart/uart.v(271)
  binary_mux_s3_w1 \G_UNO_UART$U22/uartchip/receiver/mux23_b14  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/n1 [14]),
    .i1(\G_UNO_UART$U22/uartchip/receiver/n20 [14]),
    .i2(\G_UNO_UART$U22/uartchip/receiver/n20 [14]),
    .i3(\G_UNO_UART$U22/uartchip/receiver/n3 [14]),
    .i4(\G_UNO_UART$U22/uartchip/receiver/bpscounter [14]),
    .i5(\G_UNO_UART$U22/uartchip/receiver/bpscounter [14]),
    .i6(\G_UNO_UART$U22/uartchip/receiver/bpscounter [14]),
    .i7(\G_UNO_UART$U22/uartchip/receiver/bpscounter [14]),
    .sel(\G_UNO_UART$U22/uartchip/receiver/state ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n55 [14]));  // ../../rtl/uart/uart.v(271)
  binary_mux_s3_w1 \G_UNO_UART$U22/uartchip/receiver/mux23_b15  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/n1 [15]),
    .i1(\G_UNO_UART$U22/uartchip/receiver/n20 [15]),
    .i2(\G_UNO_UART$U22/uartchip/receiver/n20 [15]),
    .i3(\G_UNO_UART$U22/uartchip/receiver/n3 [15]),
    .i4(\G_UNO_UART$U22/uartchip/receiver/bpscounter [15]),
    .i5(\G_UNO_UART$U22/uartchip/receiver/bpscounter [15]),
    .i6(\G_UNO_UART$U22/uartchip/receiver/bpscounter [15]),
    .i7(\G_UNO_UART$U22/uartchip/receiver/bpscounter [15]),
    .sel(\G_UNO_UART$U22/uartchip/receiver/state ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n55 [15]));  // ../../rtl/uart/uart.v(271)
  binary_mux_s3_w1 \G_UNO_UART$U22/uartchip/receiver/mux23_b16  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/n1 [16]),
    .i1(\G_UNO_UART$U22/uartchip/receiver/n20 [16]),
    .i2(\G_UNO_UART$U22/uartchip/receiver/n20 [16]),
    .i3(\G_UNO_UART$U22/uartchip/receiver/n3 [16]),
    .i4(\G_UNO_UART$U22/uartchip/receiver/bpscounter [16]),
    .i5(\G_UNO_UART$U22/uartchip/receiver/bpscounter [16]),
    .i6(\G_UNO_UART$U22/uartchip/receiver/bpscounter [16]),
    .i7(\G_UNO_UART$U22/uartchip/receiver/bpscounter [16]),
    .sel(\G_UNO_UART$U22/uartchip/receiver/state ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n55 [16]));  // ../../rtl/uart/uart.v(271)
  binary_mux_s3_w1 \G_UNO_UART$U22/uartchip/receiver/mux23_b17  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/n1 [17]),
    .i1(\G_UNO_UART$U22/uartchip/receiver/n20 [17]),
    .i2(\G_UNO_UART$U22/uartchip/receiver/n20 [17]),
    .i3(\G_UNO_UART$U22/uartchip/receiver/n3 [17]),
    .i4(\G_UNO_UART$U22/uartchip/receiver/bpscounter [17]),
    .i5(\G_UNO_UART$U22/uartchip/receiver/bpscounter [17]),
    .i6(\G_UNO_UART$U22/uartchip/receiver/bpscounter [17]),
    .i7(\G_UNO_UART$U22/uartchip/receiver/bpscounter [17]),
    .sel(\G_UNO_UART$U22/uartchip/receiver/state ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n55 [17]));  // ../../rtl/uart/uart.v(271)
  binary_mux_s3_w1 \G_UNO_UART$U22/uartchip/receiver/mux23_b2  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/n1 [2]),
    .i1(\G_UNO_UART$U22/uartchip/receiver/n20 [2]),
    .i2(\G_UNO_UART$U22/uartchip/receiver/n20 [2]),
    .i3(\G_UNO_UART$U22/uartchip/receiver/n3 [2]),
    .i4(\G_UNO_UART$U22/uartchip/receiver/bpscounter [2]),
    .i5(\G_UNO_UART$U22/uartchip/receiver/bpscounter [2]),
    .i6(\G_UNO_UART$U22/uartchip/receiver/bpscounter [2]),
    .i7(\G_UNO_UART$U22/uartchip/receiver/bpscounter [2]),
    .sel(\G_UNO_UART$U22/uartchip/receiver/state ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n55 [2]));  // ../../rtl/uart/uart.v(271)
  binary_mux_s3_w1 \G_UNO_UART$U22/uartchip/receiver/mux23_b3  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/n1 [3]),
    .i1(\G_UNO_UART$U22/uartchip/receiver/n20 [3]),
    .i2(\G_UNO_UART$U22/uartchip/receiver/n20 [3]),
    .i3(\G_UNO_UART$U22/uartchip/receiver/n3 [3]),
    .i4(\G_UNO_UART$U22/uartchip/receiver/bpscounter [3]),
    .i5(\G_UNO_UART$U22/uartchip/receiver/bpscounter [3]),
    .i6(\G_UNO_UART$U22/uartchip/receiver/bpscounter [3]),
    .i7(\G_UNO_UART$U22/uartchip/receiver/bpscounter [3]),
    .sel(\G_UNO_UART$U22/uartchip/receiver/state ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n55 [3]));  // ../../rtl/uart/uart.v(271)
  binary_mux_s3_w1 \G_UNO_UART$U22/uartchip/receiver/mux23_b4  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/n1 [4]),
    .i1(\G_UNO_UART$U22/uartchip/receiver/n20 [4]),
    .i2(\G_UNO_UART$U22/uartchip/receiver/n20 [4]),
    .i3(\G_UNO_UART$U22/uartchip/receiver/n3 [4]),
    .i4(\G_UNO_UART$U22/uartchip/receiver/bpscounter [4]),
    .i5(\G_UNO_UART$U22/uartchip/receiver/bpscounter [4]),
    .i6(\G_UNO_UART$U22/uartchip/receiver/bpscounter [4]),
    .i7(\G_UNO_UART$U22/uartchip/receiver/bpscounter [4]),
    .sel(\G_UNO_UART$U22/uartchip/receiver/state ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n55 [4]));  // ../../rtl/uart/uart.v(271)
  binary_mux_s3_w1 \G_UNO_UART$U22/uartchip/receiver/mux23_b5  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/n1 [5]),
    .i1(\G_UNO_UART$U22/uartchip/receiver/n20 [5]),
    .i2(\G_UNO_UART$U22/uartchip/receiver/n20 [5]),
    .i3(\G_UNO_UART$U22/uartchip/receiver/n3 [5]),
    .i4(\G_UNO_UART$U22/uartchip/receiver/bpscounter [5]),
    .i5(\G_UNO_UART$U22/uartchip/receiver/bpscounter [5]),
    .i6(\G_UNO_UART$U22/uartchip/receiver/bpscounter [5]),
    .i7(\G_UNO_UART$U22/uartchip/receiver/bpscounter [5]),
    .sel(\G_UNO_UART$U22/uartchip/receiver/state ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n55 [5]));  // ../../rtl/uart/uart.v(271)
  binary_mux_s3_w1 \G_UNO_UART$U22/uartchip/receiver/mux23_b6  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/n1 [6]),
    .i1(\G_UNO_UART$U22/uartchip/receiver/n20 [6]),
    .i2(\G_UNO_UART$U22/uartchip/receiver/n20 [6]),
    .i3(\G_UNO_UART$U22/uartchip/receiver/n3 [6]),
    .i4(\G_UNO_UART$U22/uartchip/receiver/bpscounter [6]),
    .i5(\G_UNO_UART$U22/uartchip/receiver/bpscounter [6]),
    .i6(\G_UNO_UART$U22/uartchip/receiver/bpscounter [6]),
    .i7(\G_UNO_UART$U22/uartchip/receiver/bpscounter [6]),
    .sel(\G_UNO_UART$U22/uartchip/receiver/state ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n55 [6]));  // ../../rtl/uart/uart.v(271)
  binary_mux_s3_w1 \G_UNO_UART$U22/uartchip/receiver/mux23_b7  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/n1 [7]),
    .i1(\G_UNO_UART$U22/uartchip/receiver/n20 [7]),
    .i2(\G_UNO_UART$U22/uartchip/receiver/n20 [7]),
    .i3(\G_UNO_UART$U22/uartchip/receiver/n3 [7]),
    .i4(\G_UNO_UART$U22/uartchip/receiver/bpscounter [7]),
    .i5(\G_UNO_UART$U22/uartchip/receiver/bpscounter [7]),
    .i6(\G_UNO_UART$U22/uartchip/receiver/bpscounter [7]),
    .i7(\G_UNO_UART$U22/uartchip/receiver/bpscounter [7]),
    .sel(\G_UNO_UART$U22/uartchip/receiver/state ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n55 [7]));  // ../../rtl/uart/uart.v(271)
  binary_mux_s3_w1 \G_UNO_UART$U22/uartchip/receiver/mux23_b8  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/n1 [8]),
    .i1(\G_UNO_UART$U22/uartchip/receiver/n20 [8]),
    .i2(\G_UNO_UART$U22/uartchip/receiver/n20 [8]),
    .i3(\G_UNO_UART$U22/uartchip/receiver/n3 [8]),
    .i4(\G_UNO_UART$U22/uartchip/receiver/bpscounter [8]),
    .i5(\G_UNO_UART$U22/uartchip/receiver/bpscounter [8]),
    .i6(\G_UNO_UART$U22/uartchip/receiver/bpscounter [8]),
    .i7(\G_UNO_UART$U22/uartchip/receiver/bpscounter [8]),
    .sel(\G_UNO_UART$U22/uartchip/receiver/state ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n55 [8]));  // ../../rtl/uart/uart.v(271)
  binary_mux_s3_w1 \G_UNO_UART$U22/uartchip/receiver/mux23_b9  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/n1 [9]),
    .i1(\G_UNO_UART$U22/uartchip/receiver/n20 [9]),
    .i2(\G_UNO_UART$U22/uartchip/receiver/n20 [9]),
    .i3(\G_UNO_UART$U22/uartchip/receiver/n3 [9]),
    .i4(\G_UNO_UART$U22/uartchip/receiver/bpscounter [9]),
    .i5(\G_UNO_UART$U22/uartchip/receiver/bpscounter [9]),
    .i6(\G_UNO_UART$U22/uartchip/receiver/bpscounter [9]),
    .i7(\G_UNO_UART$U22/uartchip/receiver/bpscounter [9]),
    .sel(\G_UNO_UART$U22/uartchip/receiver/state ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n55 [9]));  // ../../rtl/uart/uart.v(271)
  binary_mux_s3_w1 \G_UNO_UART$U22/uartchip/receiver/mux26_b0  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/bitcnt [0]),
    .i1(\G_UNO_UART$U22/uartchip/receiver/n22 [0]),
    .i2(\G_UNO_UART$U22/uartchip/receiver/n39 [0]),
    .i3(\G_UNO_UART$U22/uartchip/receiver/bitcnt [0]),
    .i4(\G_UNO_UART$U22/uartchip/receiver/bitcnt [0]),
    .i5(\G_UNO_UART$U22/uartchip/receiver/bitcnt [0]),
    .i6(\G_UNO_UART$U22/uartchip/receiver/bitcnt [0]),
    .i7(\G_UNO_UART$U22/uartchip/receiver/bitcnt [0]),
    .sel(\G_UNO_UART$U22/uartchip/receiver/state ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n58 [0]));  // ../../rtl/uart/uart.v(271)
  binary_mux_s3_w1 \G_UNO_UART$U22/uartchip/receiver/mux26_b1  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/bitcnt [1]),
    .i1(\G_UNO_UART$U22/uartchip/receiver/n22 [1]),
    .i2(\G_UNO_UART$U22/uartchip/receiver/n39 [1]),
    .i3(\G_UNO_UART$U22/uartchip/receiver/bitcnt [1]),
    .i4(\G_UNO_UART$U22/uartchip/receiver/bitcnt [1]),
    .i5(\G_UNO_UART$U22/uartchip/receiver/bitcnt [1]),
    .i6(\G_UNO_UART$U22/uartchip/receiver/bitcnt [1]),
    .i7(\G_UNO_UART$U22/uartchip/receiver/bitcnt [1]),
    .sel(\G_UNO_UART$U22/uartchip/receiver/state ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n58 [1]));  // ../../rtl/uart/uart.v(271)
  binary_mux_s3_w1 \G_UNO_UART$U22/uartchip/receiver/mux26_b2  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/bitcnt [2]),
    .i1(\G_UNO_UART$U22/uartchip/receiver/n22 [2]),
    .i2(\G_UNO_UART$U22/uartchip/receiver/n39 [2]),
    .i3(\G_UNO_UART$U22/uartchip/receiver/bitcnt [2]),
    .i4(\G_UNO_UART$U22/uartchip/receiver/bitcnt [2]),
    .i5(\G_UNO_UART$U22/uartchip/receiver/bitcnt [2]),
    .i6(\G_UNO_UART$U22/uartchip/receiver/bitcnt [2]),
    .i7(\G_UNO_UART$U22/uartchip/receiver/bitcnt [2]),
    .sel(\G_UNO_UART$U22/uartchip/receiver/state ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n58 [2]));  // ../../rtl/uart/uart.v(271)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/receiver/mux2_b0  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/state [0]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/receiver/rx_is_0_neg ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n10 [0]));  // ../../rtl/uart/uart.v(215)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/receiver/mux2_b1  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/state [1]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/receiver/rx_is_0_neg ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n10 [1]));  // ../../rtl/uart/uart.v(215)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/receiver/mux2_b2  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/state [2]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/receiver/rx_is_0_neg ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n10 [2]));  // ../../rtl/uart/uart.v(215)
  AL_MUX \G_UNO_UART$U22/uartchip/receiver/mux4_b0  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/n3 [0]),
    .i1(1'b1),
    .sel(\G_UNO_UART$U22/uartchip/receiver/mux10_b0_sel_is_2_o ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n20 [0]));
  AL_MUX \G_UNO_UART$U22/uartchip/receiver/mux4_b1  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/n3 [1]),
    .i1(1'b1),
    .sel(\G_UNO_UART$U22/uartchip/receiver/mux10_b0_sel_is_2_o ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n20 [1]));
  AL_MUX \G_UNO_UART$U22/uartchip/receiver/mux4_b10  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/n3 [10]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/receiver/mux10_b0_sel_is_2_o ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n20 [10]));
  AL_MUX \G_UNO_UART$U22/uartchip/receiver/mux4_b11  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/n3 [11]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/receiver/mux10_b0_sel_is_2_o ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n20 [11]));
  AL_MUX \G_UNO_UART$U22/uartchip/receiver/mux4_b12  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/n3 [12]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/receiver/mux10_b0_sel_is_2_o ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n20 [12]));
  AL_MUX \G_UNO_UART$U22/uartchip/receiver/mux4_b13  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/n3 [13]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/receiver/mux10_b0_sel_is_2_o ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n20 [13]));
  AL_MUX \G_UNO_UART$U22/uartchip/receiver/mux4_b14  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/n3 [14]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/receiver/mux10_b0_sel_is_2_o ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n20 [14]));
  AL_MUX \G_UNO_UART$U22/uartchip/receiver/mux4_b15  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/n3 [15]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/receiver/mux10_b0_sel_is_2_o ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n20 [15]));
  AL_MUX \G_UNO_UART$U22/uartchip/receiver/mux4_b16  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/n3 [16]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/receiver/mux10_b0_sel_is_2_o ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n20 [16]));
  AL_MUX \G_UNO_UART$U22/uartchip/receiver/mux4_b17  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/n3 [17]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/receiver/mux10_b0_sel_is_2_o ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n20 [17]));
  AL_MUX \G_UNO_UART$U22/uartchip/receiver/mux4_b2  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/n3 [2]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/receiver/mux10_b0_sel_is_2_o ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n20 [2]));
  AL_MUX \G_UNO_UART$U22/uartchip/receiver/mux4_b3  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/n3 [3]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/receiver/mux10_b0_sel_is_2_o ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n20 [3]));
  AL_MUX \G_UNO_UART$U22/uartchip/receiver/mux4_b4  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/n3 [4]),
    .i1(1'b1),
    .sel(\G_UNO_UART$U22/uartchip/receiver/mux10_b0_sel_is_2_o ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n20 [4]));
  AL_MUX \G_UNO_UART$U22/uartchip/receiver/mux4_b5  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/n3 [5]),
    .i1(1'b1),
    .sel(\G_UNO_UART$U22/uartchip/receiver/mux10_b0_sel_is_2_o ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n20 [5]));
  AL_MUX \G_UNO_UART$U22/uartchip/receiver/mux4_b6  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/n3 [6]),
    .i1(1'b1),
    .sel(\G_UNO_UART$U22/uartchip/receiver/mux10_b0_sel_is_2_o ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n20 [6]));
  AL_MUX \G_UNO_UART$U22/uartchip/receiver/mux4_b7  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/n3 [7]),
    .i1(1'b1),
    .sel(\G_UNO_UART$U22/uartchip/receiver/mux10_b0_sel_is_2_o ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n20 [7]));
  AL_MUX \G_UNO_UART$U22/uartchip/receiver/mux4_b8  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/n3 [8]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/receiver/mux10_b0_sel_is_2_o ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n20 [8]));
  AL_MUX \G_UNO_UART$U22/uartchip/receiver/mux4_b9  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/n3 [9]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/receiver/mux10_b0_sel_is_2_o ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n20 [9]));
  and \G_UNO_UART$U22/uartchip/receiver/mux7_b0_sel_is_0  (\G_UNO_UART$U22/uartchip/receiver/mux7_b0_sel_is_0_o , \G_UNO_UART$U22/uartchip/receiver/rx_is_1_neg , \G_UNO_UART$U22/uartchip/receiver/rx_is_0_neg );
  AL_MUX \G_UNO_UART$U22/uartchip/receiver/mux8_b0  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/state [0]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/receiver/mux7_b0_sel_is_0_o ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n28 [0]));
  AL_MUX \G_UNO_UART$U22/uartchip/receiver/mux8_b1  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/state [1]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/receiver/mux7_b0_sel_is_0_o ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n28 [1]));
  AL_MUX \G_UNO_UART$U22/uartchip/receiver/mux8_b2  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/state [2]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/receiver/mux7_b0_sel_is_0_o ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n28 [2]));
  not \G_UNO_UART$U22/uartchip/receiver/n8_inv  (\G_UNO_UART$U22/uartchip/receiver/n8_neg , \G_UNO_UART$U22/uartchip/receiver/n6 );
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/receiver/reg0_b0  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/receiver/rx_ff [1]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/receiver/rxvalues [0]));  // ../../rtl/uart/uart.v(185)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/receiver/reg0_b1  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/receiver/rxvalues [0]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/receiver/rxvalues [1]));  // ../../rtl/uart/uart.v(185)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/receiver/reg0_b2  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/receiver/rxvalues [1]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/receiver/rxvalues [2]));  // ../../rtl/uart/uart.v(185)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/receiver/reg0_b3  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/receiver/rxvalues [2]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/receiver/rxvalues [3]));  // ../../rtl/uart/uart.v(185)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/receiver/reg0_b4  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/receiver/rxvalues [3]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/receiver/rxvalues [4]));  // ../../rtl/uart/uart.v(185)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/receiver/reg0_b5  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/receiver/rxvalues [4]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/receiver/rxvalues [5]));  // ../../rtl/uart/uart.v(185)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/receiver/reg0_b6  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/receiver/rxvalues [5]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/receiver/rxvalues [6]));  // ../../rtl/uart/uart.v(185)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/receiver/reg0_b7  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/receiver/rxvalues [6]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/receiver/rxvalues [7]));  // ../../rtl/uart/uart.v(185)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/receiver/reg1_b0  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/receiver/n52 [0]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/receiver/state [0]));  // ../../rtl/uart/uart.v(272)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/receiver/reg1_b1  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/receiver/n52 [1]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/receiver/state [1]));  // ../../rtl/uart/uart.v(272)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/receiver/reg1_b2  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/receiver/n52 [2]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/receiver/state [2]));  // ../../rtl/uart/uart.v(272)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/receiver/reg2_b0  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/receiver/n55 [0]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/receiver/bpscounter [0]));  // ../../rtl/uart/uart.v(272)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/receiver/reg2_b1  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/receiver/n55 [1]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/receiver/bpscounter [1]));  // ../../rtl/uart/uart.v(272)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/receiver/reg2_b10  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/receiver/n55 [10]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/receiver/bpscounter [10]));  // ../../rtl/uart/uart.v(272)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/receiver/reg2_b11  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/receiver/n55 [11]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/receiver/bpscounter [11]));  // ../../rtl/uart/uart.v(272)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/receiver/reg2_b12  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/receiver/n55 [12]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/receiver/bpscounter [12]));  // ../../rtl/uart/uart.v(272)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/receiver/reg2_b13  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/receiver/n55 [13]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/receiver/bpscounter [13]));  // ../../rtl/uart/uart.v(272)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/receiver/reg2_b14  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/receiver/n55 [14]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/receiver/bpscounter [14]));  // ../../rtl/uart/uart.v(272)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/receiver/reg2_b15  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/receiver/n55 [15]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/receiver/bpscounter [15]));  // ../../rtl/uart/uart.v(272)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/receiver/reg2_b16  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/receiver/n55 [16]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/receiver/bpscounter [16]));  // ../../rtl/uart/uart.v(272)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/receiver/reg2_b17  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/receiver/n55 [17]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/receiver/bpscounter [17]));  // ../../rtl/uart/uart.v(272)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/receiver/reg2_b2  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/receiver/n55 [2]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/receiver/bpscounter [2]));  // ../../rtl/uart/uart.v(272)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/receiver/reg2_b3  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/receiver/n55 [3]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/receiver/bpscounter [3]));  // ../../rtl/uart/uart.v(272)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/receiver/reg2_b4  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/receiver/n55 [4]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/receiver/bpscounter [4]));  // ../../rtl/uart/uart.v(272)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/receiver/reg2_b5  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/receiver/n55 [5]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/receiver/bpscounter [5]));  // ../../rtl/uart/uart.v(272)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/receiver/reg2_b6  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/receiver/n55 [6]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/receiver/bpscounter [6]));  // ../../rtl/uart/uart.v(272)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/receiver/reg2_b7  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/receiver/n55 [7]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/receiver/bpscounter [7]));  // ../../rtl/uart/uart.v(272)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/receiver/reg2_b8  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/receiver/n55 [8]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/receiver/bpscounter [8]));  // ../../rtl/uart/uart.v(272)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/receiver/reg2_b9  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/receiver/n55 [9]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/receiver/bpscounter [9]));  // ../../rtl/uart/uart.v(272)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/receiver/reg5_b0  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/receiver/n58 [0]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/receiver/bitcnt [0]));  // ../../rtl/uart/uart.v(272)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/receiver/reg5_b1  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/receiver/n58 [1]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/receiver/bitcnt [1]));  // ../../rtl/uart/uart.v(272)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/receiver/reg5_b2  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/receiver/n58 [2]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/receiver/bitcnt [2]));  // ../../rtl/uart/uart.v(272)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/receiver/reg6_b0  (
    .clk(clk_28),
    .d(UART_RX),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/receiver/rx_ff [0]));  // ../../rtl/uart/uart.v(179)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/receiver/reg6_b1  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/receiver/rx_ff [0]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/receiver/rx_ff [1]));  // ../../rtl/uart/uart.v(179)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/receiver/rts_reg  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/receiver/n54 ),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(UART_CTS));  // ../../rtl/uart/uart.v(272)
  not \G_UNO_UART$U22/uartchip/receiver/rx_is_0_inv  (\G_UNO_UART$U22/uartchip/receiver/rx_is_0_neg , \G_UNO_UART$U22/uartchip/receiver/rx_is_0 );
  not \G_UNO_UART$U22/uartchip/receiver/rx_is_1_inv  (\G_UNO_UART$U22/uartchip/receiver/rx_is_1_neg , \G_UNO_UART$U22/uartchip/receiver/rx_is_1 );
  add_pu18_mu18_o18 \G_UNO_UART$U22/uartchip/receiver/sub1  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/bpscounter ),
    .i1(18'b000000000000000001),
    .o(\G_UNO_UART$U22/uartchip/receiver/n3 ));  // ../../rtl/uart/uart.v(210)
  add_pu3_mu3_o3 \G_UNO_UART$U22/uartchip/receiver/sub2  (
    .i0(\G_UNO_UART$U22/uartchip/receiver/bitcnt ),
    .i1(3'b001),
    .o(\G_UNO_UART$U22/uartchip/receiver/n30 ));  // ../../rtl/uart/uart.v(241)
  AL_MUX \G_UNO_UART$U22/uartchip/receiver/u10  (
    .i0(UART_CTS),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/receiver/u10_sel_is_3_o ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n19 ));
  and \G_UNO_UART$U22/uartchip/receiver/u10_sel_is_3  (\G_UNO_UART$U22/uartchip/receiver/u10_sel_is_3_o , \G_UNO_UART$U22/uartchip/receiver/n6 , \G_UNO_UART$U22/uartchip/receiver/rx_is_0_neg );
  AL_MUX \G_UNO_UART$U22/uartchip/receiver/u14  (
    .i0(UART_CTS),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/receiver/u14_sel_is_3_o ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n38 ));
  and \G_UNO_UART$U22/uartchip/receiver/u14_sel_is_3  (\G_UNO_UART$U22/uartchip/receiver/u14_sel_is_3_o , \G_UNO_UART$U22/uartchip/receiver/n6 , \G_UNO_UART$U22/uartchip/receiver/mux7_b0_sel_is_0_o );
  AL_MUX \G_UNO_UART$U22/uartchip/receiver/u18  (
    .i0(UART_CTS),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/receiver/u18_sel_is_3_o ),
    .o(\G_UNO_UART$U22/uartchip/receiver/n47 ));
  and \G_UNO_UART$U22/uartchip/receiver/u18_sel_is_3  (\G_UNO_UART$U22/uartchip/receiver/u18_sel_is_3_o , \G_UNO_UART$U22/uartchip/receiver/n6 , \G_UNO_UART$U22/uartchip/receiver/rx_is_1_neg );
  eq_w18 \G_UNO_UART$U22/uartchip/transmitter/eq1  (
    .i0(\G_UNO_UART$U22/uartchip/transmitter/bpscounter ),
    .i1(18'b000000000000000000),
    .o(\G_UNO_UART$U22/uartchip/transmitter/n11 ));  // ../../rtl/uart/uart.v(105)
  eq_w3 \G_UNO_UART$U22/uartchip/transmitter/eq2  (
    .i0(\G_UNO_UART$U22/uartchip/transmitter/bitcnt ),
    .i1(3'b000),
    .o(\G_UNO_UART$U22/uartchip/transmitter/n16 ));  // ../../rtl/uart/uart.v(119)
  binary_mux_s2_w1 \G_UNO_UART$U22/uartchip/transmitter/mux10  (
    .i0(1'b0),
    .i1(\G_UNO_UART$U22/txbusy ),
    .i2(\G_UNO_UART$U22/txbusy ),
    .i3(\G_UNO_UART$U22/uartchip/transmitter/n22 ),
    .sel(\G_UNO_UART$U22/uartchip/transmitter/state ),
    .o(\G_UNO_UART$U22/uartchip/transmitter/n26 ));  // ../../rtl/uart/uart.v(139)
  binary_mux_s2_w1 \G_UNO_UART$U22/uartchip/transmitter/mux11_b0  (
    .i0(1'b0),
    .i1(\G_UNO_UART$U22/uartchip/transmitter/n14 [0]),
    .i2(\G_UNO_UART$U22/uartchip/transmitter/n20 [0]),
    .i3(\G_UNO_UART$U22/uartchip/transmitter/n14 [0]),
    .sel(\G_UNO_UART$U22/uartchip/transmitter/state ),
    .o(\G_UNO_UART$U22/uartchip/transmitter/n27 [0]));  // ../../rtl/uart/uart.v(139)
  binary_mux_s2_w1 \G_UNO_UART$U22/uartchip/transmitter/mux11_b1  (
    .i0(1'b0),
    .i1(\G_UNO_UART$U22/uartchip/transmitter/n14 [1]),
    .i2(\G_UNO_UART$U22/uartchip/transmitter/n20 [1]),
    .i3(\G_UNO_UART$U22/uartchip/transmitter/n23 [1]),
    .sel(\G_UNO_UART$U22/uartchip/transmitter/state ),
    .o(\G_UNO_UART$U22/uartchip/transmitter/n27 [1]));  // ../../rtl/uart/uart.v(139)
  binary_mux_s2_w1 \G_UNO_UART$U22/uartchip/transmitter/mux13_b0  (
    .i0(\G_UNO_UART$U22/uartchip/transmitter/bitcnt [0]),
    .i1(\G_UNO_UART$U22/uartchip/transmitter/n13 [0]),
    .i2(\G_UNO_UART$U22/uartchip/transmitter/n19 [0]),
    .i3(\G_UNO_UART$U22/uartchip/transmitter/bitcnt [0]),
    .sel(\G_UNO_UART$U22/uartchip/transmitter/state ),
    .o(\G_UNO_UART$U22/uartchip/transmitter/n29 [0]));  // ../../rtl/uart/uart.v(139)
  binary_mux_s2_w1 \G_UNO_UART$U22/uartchip/transmitter/mux13_b1  (
    .i0(\G_UNO_UART$U22/uartchip/transmitter/bitcnt [1]),
    .i1(\G_UNO_UART$U22/uartchip/transmitter/n13 [1]),
    .i2(\G_UNO_UART$U22/uartchip/transmitter/n19 [1]),
    .i3(\G_UNO_UART$U22/uartchip/transmitter/bitcnt [1]),
    .sel(\G_UNO_UART$U22/uartchip/transmitter/state ),
    .o(\G_UNO_UART$U22/uartchip/transmitter/n29 [1]));  // ../../rtl/uart/uart.v(139)
  binary_mux_s2_w1 \G_UNO_UART$U22/uartchip/transmitter/mux13_b2  (
    .i0(\G_UNO_UART$U22/uartchip/transmitter/bitcnt [2]),
    .i1(\G_UNO_UART$U22/uartchip/transmitter/n13 [2]),
    .i2(\G_UNO_UART$U22/uartchip/transmitter/n19 [2]),
    .i3(\G_UNO_UART$U22/uartchip/transmitter/bitcnt [2]),
    .sel(\G_UNO_UART$U22/uartchip/transmitter/state ),
    .o(\G_UNO_UART$U22/uartchip/transmitter/n29 [2]));  // ../../rtl/uart/uart.v(139)
  and \G_UNO_UART$U22/uartchip/transmitter/mux14_b0_sel_is_1  (\G_UNO_UART$U22/uartchip/transmitter/mux14_b0_sel_is_1_o , \G_UNO_UART$U22/txbusy , \G_UNO_UART$U22/uartchip/transmitter/mux9_b0_sel_is_0_o_neg );
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/transmitter/mux3_b0  (
    .i0(\G_UNO_UART$U22/uartchip/transmitter/state [0]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/transmitter/n11 ),
    .o(\G_UNO_UART$U22/uartchip/transmitter/n14 [0]));  // ../../rtl/uart/uart.v(132)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/transmitter/mux3_b1  (
    .i0(\G_UNO_UART$U22/uartchip/transmitter/state [1]),
    .i1(1'b1),
    .sel(\G_UNO_UART$U22/uartchip/transmitter/n11 ),
    .o(\G_UNO_UART$U22/uartchip/transmitter/n14 [1]));  // ../../rtl/uart/uart.v(132)
  AL_MUX \G_UNO_UART$U22/uartchip/transmitter/mux3_b2  (
    .i0(\G_UNO_UART$U22/uartchip/transmitter/state [0]),
    .i1(1'b1),
    .sel(\G_UNO_UART$U22/uartchip/transmitter/mux3_b2_sel_is_3_o ),
    .o(\G_UNO_UART$U22/uartchip/transmitter/n20 [0]));
  and \G_UNO_UART$U22/uartchip/transmitter/mux3_b2_sel_is_3  (\G_UNO_UART$U22/uartchip/transmitter/mux3_b2_sel_is_3_o , \G_UNO_UART$U22/uartchip/transmitter/n11 , \G_UNO_UART$U22/uartchip/transmitter/n16 );
  AL_MUX \G_UNO_UART$U22/uartchip/transmitter/mux3_b3  (
    .i0(\G_UNO_UART$U22/uartchip/transmitter/state [1]),
    .i1(1'b1),
    .sel(\G_UNO_UART$U22/uartchip/transmitter/mux3_b2_sel_is_3_o ),
    .o(\G_UNO_UART$U22/uartchip/transmitter/n20 [1]));
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/transmitter/mux3_b5  (
    .i0(\G_UNO_UART$U22/uartchip/transmitter/state [1]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/transmitter/n11 ),
    .o(\G_UNO_UART$U22/uartchip/transmitter/n23 [1]));  // ../../rtl/uart/uart.v(132)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/transmitter/mux6_b0  (
    .i0(\G_UNO_UART$U22/uartchip/transmitter/n10 [0]),
    .i1(1'b1),
    .sel(\G_UNO_UART$U22/uartchip/transmitter/n11 ),
    .o(\G_UNO_UART$U22/uartchip/transmitter/n21 [0]));  // ../../rtl/uart/uart.v(132)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/transmitter/mux6_b1  (
    .i0(\G_UNO_UART$U22/uartchip/transmitter/n10 [1]),
    .i1(1'b1),
    .sel(\G_UNO_UART$U22/uartchip/transmitter/n11 ),
    .o(\G_UNO_UART$U22/uartchip/transmitter/n21 [1]));  // ../../rtl/uart/uart.v(132)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/transmitter/mux6_b10  (
    .i0(\G_UNO_UART$U22/uartchip/transmitter/n10 [10]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/transmitter/n11 ),
    .o(\G_UNO_UART$U22/uartchip/transmitter/n21 [10]));  // ../../rtl/uart/uart.v(132)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/transmitter/mux6_b11  (
    .i0(\G_UNO_UART$U22/uartchip/transmitter/n10 [11]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/transmitter/n11 ),
    .o(\G_UNO_UART$U22/uartchip/transmitter/n21 [11]));  // ../../rtl/uart/uart.v(132)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/transmitter/mux6_b12  (
    .i0(\G_UNO_UART$U22/uartchip/transmitter/n10 [12]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/transmitter/n11 ),
    .o(\G_UNO_UART$U22/uartchip/transmitter/n21 [12]));  // ../../rtl/uart/uart.v(132)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/transmitter/mux6_b13  (
    .i0(\G_UNO_UART$U22/uartchip/transmitter/n10 [13]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/transmitter/n11 ),
    .o(\G_UNO_UART$U22/uartchip/transmitter/n21 [13]));  // ../../rtl/uart/uart.v(132)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/transmitter/mux6_b14  (
    .i0(\G_UNO_UART$U22/uartchip/transmitter/n10 [14]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/transmitter/n11 ),
    .o(\G_UNO_UART$U22/uartchip/transmitter/n21 [14]));  // ../../rtl/uart/uart.v(132)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/transmitter/mux6_b15  (
    .i0(\G_UNO_UART$U22/uartchip/transmitter/n10 [15]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/transmitter/n11 ),
    .o(\G_UNO_UART$U22/uartchip/transmitter/n21 [15]));  // ../../rtl/uart/uart.v(132)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/transmitter/mux6_b16  (
    .i0(\G_UNO_UART$U22/uartchip/transmitter/n10 [16]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/transmitter/n11 ),
    .o(\G_UNO_UART$U22/uartchip/transmitter/n21 [16]));  // ../../rtl/uart/uart.v(132)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/transmitter/mux6_b17  (
    .i0(\G_UNO_UART$U22/uartchip/transmitter/n10 [17]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/transmitter/n11 ),
    .o(\G_UNO_UART$U22/uartchip/transmitter/n21 [17]));  // ../../rtl/uart/uart.v(132)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/transmitter/mux6_b2  (
    .i0(\G_UNO_UART$U22/uartchip/transmitter/n10 [2]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/transmitter/n11 ),
    .o(\G_UNO_UART$U22/uartchip/transmitter/n21 [2]));  // ../../rtl/uart/uart.v(132)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/transmitter/mux6_b3  (
    .i0(\G_UNO_UART$U22/uartchip/transmitter/n10 [3]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/transmitter/n11 ),
    .o(\G_UNO_UART$U22/uartchip/transmitter/n21 [3]));  // ../../rtl/uart/uart.v(132)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/transmitter/mux6_b4  (
    .i0(\G_UNO_UART$U22/uartchip/transmitter/n10 [4]),
    .i1(1'b1),
    .sel(\G_UNO_UART$U22/uartchip/transmitter/n11 ),
    .o(\G_UNO_UART$U22/uartchip/transmitter/n21 [4]));  // ../../rtl/uart/uart.v(132)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/transmitter/mux6_b5  (
    .i0(\G_UNO_UART$U22/uartchip/transmitter/n10 [5]),
    .i1(1'b1),
    .sel(\G_UNO_UART$U22/uartchip/transmitter/n11 ),
    .o(\G_UNO_UART$U22/uartchip/transmitter/n21 [5]));  // ../../rtl/uart/uart.v(132)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/transmitter/mux6_b6  (
    .i0(\G_UNO_UART$U22/uartchip/transmitter/n10 [6]),
    .i1(1'b1),
    .sel(\G_UNO_UART$U22/uartchip/transmitter/n11 ),
    .o(\G_UNO_UART$U22/uartchip/transmitter/n21 [6]));  // ../../rtl/uart/uart.v(132)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/transmitter/mux6_b7  (
    .i0(\G_UNO_UART$U22/uartchip/transmitter/n10 [7]),
    .i1(1'b1),
    .sel(\G_UNO_UART$U22/uartchip/transmitter/n11 ),
    .o(\G_UNO_UART$U22/uartchip/transmitter/n21 [7]));  // ../../rtl/uart/uart.v(132)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/transmitter/mux6_b8  (
    .i0(\G_UNO_UART$U22/uartchip/transmitter/n10 [8]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/transmitter/n11 ),
    .o(\G_UNO_UART$U22/uartchip/transmitter/n21 [8]));  // ../../rtl/uart/uart.v(132)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/transmitter/mux6_b9  (
    .i0(\G_UNO_UART$U22/uartchip/transmitter/n10 [9]),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/transmitter/n11 ),
    .o(\G_UNO_UART$U22/uartchip/transmitter/n21 [9]));  // ../../rtl/uart/uart.v(132)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/transmitter/mux7_b0  (
    .i0(\G_UNO_UART$U22/uartchip/transmitter/bitcnt [0]),
    .i1(1'b1),
    .sel(\G_UNO_UART$U22/uartchip/transmitter/n11 ),
    .o(\G_UNO_UART$U22/uartchip/transmitter/n13 [0]));  // ../../rtl/uart/uart.v(122)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/transmitter/mux7_b1  (
    .i0(\G_UNO_UART$U22/uartchip/transmitter/bitcnt [1]),
    .i1(1'b1),
    .sel(\G_UNO_UART$U22/uartchip/transmitter/n11 ),
    .o(\G_UNO_UART$U22/uartchip/transmitter/n13 [1]));  // ../../rtl/uart/uart.v(122)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/transmitter/mux7_b2  (
    .i0(\G_UNO_UART$U22/uartchip/transmitter/bitcnt [2]),
    .i1(1'b1),
    .sel(\G_UNO_UART$U22/uartchip/transmitter/n11 ),
    .o(\G_UNO_UART$U22/uartchip/transmitter/n13 [2]));  // ../../rtl/uart/uart.v(122)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/transmitter/mux7_b3  (
    .i0(\G_UNO_UART$U22/uartchip/transmitter/bitcnt [0]),
    .i1(\G_UNO_UART$U22/uartchip/transmitter/n15 [0]),
    .sel(\G_UNO_UART$U22/uartchip/transmitter/n11 ),
    .o(\G_UNO_UART$U22/uartchip/transmitter/n19 [0]));  // ../../rtl/uart/uart.v(122)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/transmitter/mux7_b4  (
    .i0(\G_UNO_UART$U22/uartchip/transmitter/bitcnt [1]),
    .i1(\G_UNO_UART$U22/uartchip/transmitter/n15 [1]),
    .sel(\G_UNO_UART$U22/uartchip/transmitter/n11 ),
    .o(\G_UNO_UART$U22/uartchip/transmitter/n19 [1]));  // ../../rtl/uart/uart.v(122)
  binary_mux_s1_w1 \G_UNO_UART$U22/uartchip/transmitter/mux7_b5  (
    .i0(\G_UNO_UART$U22/uartchip/transmitter/bitcnt [2]),
    .i1(\G_UNO_UART$U22/uartchip/transmitter/n15 [2]),
    .sel(\G_UNO_UART$U22/uartchip/transmitter/n11 ),
    .o(\G_UNO_UART$U22/uartchip/transmitter/n19 [2]));  // ../../rtl/uart/uart.v(122)
  binary_mux_s2_w1 \G_UNO_UART$U22/uartchip/transmitter/mux8  (
    .i0(UART_TX),
    .i1(1'b0),
    .i2(1'b0),
    .i3(1'b1),
    .sel(\G_UNO_UART$U22/uartchip/transmitter/state ),
    .o(\G_UNO_UART$U22/uartchip/transmitter/n24 ));  // ../../rtl/uart/uart.v(139)
  and \G_UNO_UART$U22/uartchip/transmitter/mux9_b0_sel_is_0  (\G_UNO_UART$U22/uartchip/transmitter/mux9_b0_sel_is_0_o , \G_UNO_UART$U22/uartchip/transmitter/state[0]_neg , \G_UNO_UART$U22/uartchip/transmitter/state[1]_neg );
  not \G_UNO_UART$U22/uartchip/transmitter/mux9_b0_sel_is_0_o_inv  (\G_UNO_UART$U22/uartchip/transmitter/mux9_b0_sel_is_0_o_neg , \G_UNO_UART$U22/uartchip/transmitter/mux9_b0_sel_is_0_o );
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/transmitter/reg0_b0  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/transmitter/n27 [0]),
    .en(\G_UNO_UART$U22/txbusy ),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/transmitter/state [0]));  // ../../rtl/uart/uart.v(141)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/transmitter/reg0_b1  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/transmitter/n27 [1]),
    .en(\G_UNO_UART$U22/txbusy ),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/transmitter/state [1]));  // ../../rtl/uart/uart.v(141)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/transmitter/reg1_b0  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/transmitter/n21 [0]),
    .en(\G_UNO_UART$U22/uartchip/transmitter/mux14_b0_sel_is_1_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/transmitter/bpscounter [0]));  // ../../rtl/uart/uart.v(141)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/transmitter/reg1_b1  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/transmitter/n21 [1]),
    .en(\G_UNO_UART$U22/uartchip/transmitter/mux14_b0_sel_is_1_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/transmitter/bpscounter [1]));  // ../../rtl/uart/uart.v(141)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/transmitter/reg1_b10  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/transmitter/n21 [10]),
    .en(\G_UNO_UART$U22/uartchip/transmitter/mux14_b0_sel_is_1_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/transmitter/bpscounter [10]));  // ../../rtl/uart/uart.v(141)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/transmitter/reg1_b11  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/transmitter/n21 [11]),
    .en(\G_UNO_UART$U22/uartchip/transmitter/mux14_b0_sel_is_1_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/transmitter/bpscounter [11]));  // ../../rtl/uart/uart.v(141)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/transmitter/reg1_b12  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/transmitter/n21 [12]),
    .en(\G_UNO_UART$U22/uartchip/transmitter/mux14_b0_sel_is_1_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/transmitter/bpscounter [12]));  // ../../rtl/uart/uart.v(141)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/transmitter/reg1_b13  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/transmitter/n21 [13]),
    .en(\G_UNO_UART$U22/uartchip/transmitter/mux14_b0_sel_is_1_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/transmitter/bpscounter [13]));  // ../../rtl/uart/uart.v(141)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/transmitter/reg1_b14  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/transmitter/n21 [14]),
    .en(\G_UNO_UART$U22/uartchip/transmitter/mux14_b0_sel_is_1_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/transmitter/bpscounter [14]));  // ../../rtl/uart/uart.v(141)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/transmitter/reg1_b15  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/transmitter/n21 [15]),
    .en(\G_UNO_UART$U22/uartchip/transmitter/mux14_b0_sel_is_1_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/transmitter/bpscounter [15]));  // ../../rtl/uart/uart.v(141)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/transmitter/reg1_b16  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/transmitter/n21 [16]),
    .en(\G_UNO_UART$U22/uartchip/transmitter/mux14_b0_sel_is_1_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/transmitter/bpscounter [16]));  // ../../rtl/uart/uart.v(141)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/transmitter/reg1_b17  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/transmitter/n21 [17]),
    .en(\G_UNO_UART$U22/uartchip/transmitter/mux14_b0_sel_is_1_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/transmitter/bpscounter [17]));  // ../../rtl/uart/uart.v(141)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/transmitter/reg1_b2  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/transmitter/n21 [2]),
    .en(\G_UNO_UART$U22/uartchip/transmitter/mux14_b0_sel_is_1_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/transmitter/bpscounter [2]));  // ../../rtl/uart/uart.v(141)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/transmitter/reg1_b3  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/transmitter/n21 [3]),
    .en(\G_UNO_UART$U22/uartchip/transmitter/mux14_b0_sel_is_1_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/transmitter/bpscounter [3]));  // ../../rtl/uart/uart.v(141)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/transmitter/reg1_b4  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/transmitter/n21 [4]),
    .en(\G_UNO_UART$U22/uartchip/transmitter/mux14_b0_sel_is_1_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/transmitter/bpscounter [4]));  // ../../rtl/uart/uart.v(141)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/transmitter/reg1_b5  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/transmitter/n21 [5]),
    .en(\G_UNO_UART$U22/uartchip/transmitter/mux14_b0_sel_is_1_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/transmitter/bpscounter [5]));  // ../../rtl/uart/uart.v(141)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/transmitter/reg1_b6  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/transmitter/n21 [6]),
    .en(\G_UNO_UART$U22/uartchip/transmitter/mux14_b0_sel_is_1_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/transmitter/bpscounter [6]));  // ../../rtl/uart/uart.v(141)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/transmitter/reg1_b7  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/transmitter/n21 [7]),
    .en(\G_UNO_UART$U22/uartchip/transmitter/mux14_b0_sel_is_1_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/transmitter/bpscounter [7]));  // ../../rtl/uart/uart.v(141)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/transmitter/reg1_b8  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/transmitter/n21 [8]),
    .en(\G_UNO_UART$U22/uartchip/transmitter/mux14_b0_sel_is_1_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/transmitter/bpscounter [8]));  // ../../rtl/uart/uart.v(141)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/transmitter/reg1_b9  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/transmitter/n21 [9]),
    .en(\G_UNO_UART$U22/uartchip/transmitter/mux14_b0_sel_is_1_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/transmitter/bpscounter [9]));  // ../../rtl/uart/uart.v(141)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/transmitter/reg2_b0  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/transmitter/n29 [0]),
    .en(\G_UNO_UART$U22/txbusy ),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/transmitter/bitcnt [0]));  // ../../rtl/uart/uart.v(141)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/transmitter/reg2_b1  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/transmitter/n29 [1]),
    .en(\G_UNO_UART$U22/txbusy ),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/transmitter/bitcnt [1]));  // ../../rtl/uart/uart.v(141)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/transmitter/reg2_b2  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/transmitter/n29 [2]),
    .en(\G_UNO_UART$U22/txbusy ),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/uartchip/transmitter/bitcnt [2]));  // ../../rtl/uart/uart.v(141)
  not \G_UNO_UART$U22/uartchip/transmitter/state[0]_inv  (\G_UNO_UART$U22/uartchip/transmitter/state[0]_neg , \G_UNO_UART$U22/uartchip/transmitter/state [0]);
  not \G_UNO_UART$U22/uartchip/transmitter/state[1]_inv  (\G_UNO_UART$U22/uartchip/transmitter/state[1]_neg , \G_UNO_UART$U22/uartchip/transmitter/state [1]);
  add_pu18_mu18_o18 \G_UNO_UART$U22/uartchip/transmitter/sub0  (
    .i0(\G_UNO_UART$U22/uartchip/transmitter/bpscounter ),
    .i1(18'b000000000000000001),
    .o(\G_UNO_UART$U22/uartchip/transmitter/n10 ));  // ../../rtl/uart/uart.v(104)
  add_pu3_mu3_o3 \G_UNO_UART$U22/uartchip/transmitter/sub1  (
    .i0(\G_UNO_UART$U22/uartchip/transmitter/bitcnt ),
    .i1(3'b001),
    .o(\G_UNO_UART$U22/uartchip/transmitter/n15 ));  // ../../rtl/uart/uart.v(118)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/transmitter/tx_reg  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/transmitter/n24 ),
    .en(\G_UNO_UART$U22/txbusy ),
    .reset(1'b0),
    .set(1'b0),
    .q(UART_TX));  // ../../rtl/uart/uart.v(141)
  reg_ar_as_w1 \G_UNO_UART$U22/uartchip/transmitter/txbusy_ff_reg  (
    .clk(clk_28),
    .d(\G_UNO_UART$U22/uartchip/transmitter/n26 ),
    .en(\G_UNO_UART$U22/txbusy ),
    .reset(1'b0),
    .set(1'b0),
    .q(\G_UNO_UART$U22/txbusy ));  // ../../rtl/uart/uart.v(141)
  AL_MUX \G_UNO_UART$U22/uartchip/transmitter/u10  (
    .i0(\G_UNO_UART$U22/txbusy ),
    .i1(1'b0),
    .sel(\G_UNO_UART$U22/uartchip/transmitter/n11 ),
    .o(\G_UNO_UART$U22/uartchip/transmitter/n22 ));  // ../../rtl/uart/uart.v(132)
  bufif1 PIN_138_tribuf_program (PIN_138, 1'b0, 1'b0);
  bufif1 PIN_141_tribuf_program (PIN_141, 1'b0, 1'b0);
  AL_LOGIC_BUFG \U1/bufg_feedback  (
    .i(\U1/clkc_wire [0]),
    .o(clk_112));  // al_ip/altpll0.vhd(40)
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
    .refclk(CLK_50MHZ),
    .scanclk(1'b0),
    .stdby(1'b0),
    .clkc({open_n0,open_n1,open_n2,open_n3,\U1/clkc_wire [0]}));  // al_ip/altpll0.vhd(43)
  reg_ar_as_w1 \U15/OSD_OVERLAY_reg  (
    .clk(clk_28),
    .d(\U15/spi_do [3]),
    .en(\U15/mux3_b1_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(osd_overlay));  // ../../rtl/avr/avr.vhd(288)
  reg_ar_as_w1 \U15/OSD_POPUP_reg  (
    .clk(clk_28),
    .d(\U15/spi_do [7]),
    .en(\U15/mux3_b1_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(osd_popup));  // ../../rtl/avr/avr.vhd(288)
  AL_LOGIC_RAMFIFO #(
    .ADDR_WIDTH(8),
    .DATA_WIDTH(24),
    .IMPLEMENT("AUTO"),
    .SHOWAHEAD(0))
    \U15/UFIFO/logic_ramfifo  (
    .clkr(clk_28),
    .clkw(clk_28),
    .di(24'b000000000000000000000000),
    .re(\U15/spi_di_req ),
    .rst(1'b1),
    .we(1'b0),
    .do(\U15/queue_do ),
    .empty_flag(\U15/queue_rd_empty ));  // al_ip/queue.v(39)
  reg_ar_as_w1 \U15/U_SPI/di_req_o_A_reg  (
    .clk(clk_28),
    .d(\U15/U_SPI/di_req ),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/di_req_o_A ));  // ../../rtl/spi/spi_slave.vhd(272)
  reg_ar_as_w1 \U15/U_SPI/di_req_o_B_reg  (
    .clk(clk_28),
    .d(\U15/U_SPI/di_req_o_A ),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/di_req_o_B ));  // ../../rtl/spi/spi_slave.vhd(272)
  reg_ar_as_w1 \U15/U_SPI/di_req_o_C_reg  (
    .clk(clk_28),
    .d(\U15/U_SPI/di_req_o_B ),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/di_req_o_C ));  // ../../rtl/spi/spi_slave.vhd(272)
  reg_ar_as_w1 \U15/U_SPI/di_req_o_D_reg  (
    .clk(clk_28),
    .d(\U15/U_SPI/di_req_o_C ),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/di_req_o_D ));  // ../../rtl/spi/spi_slave.vhd(272)
  reg_ar_as_w1 \U15/U_SPI/di_req_o_reg_reg  (
    .clk(clk_28),
    .d(\U15/U_SPI/di_req_o_next ),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/spi_di_req ));  // ../../rtl/spi/spi_slave.vhd(272)
  reg_ar_as_w1 \U15/U_SPI/do_transfer_reg_reg  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/do_transfer_next ),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/do_transfer_o ));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w1 \U15/U_SPI/do_valid_A_reg  (
    .clk(clk_28),
    .d(\U15/U_SPI/do_transfer_o ),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/do_valid_A ));  // ../../rtl/spi/spi_slave.vhd(272)
  reg_ar_as_w1 \U15/U_SPI/do_valid_B_reg  (
    .clk(clk_28),
    .d(\U15/U_SPI/do_valid_A ),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/do_valid_B ));  // ../../rtl/spi/spi_slave.vhd(272)
  reg_ar_as_w1 \U15/U_SPI/do_valid_C_reg  (
    .clk(clk_28),
    .d(\U15/U_SPI/do_valid_B ),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/do_valid_C ));  // ../../rtl/spi/spi_slave.vhd(272)
  reg_ar_as_w1 \U15/U_SPI/do_valid_D_reg  (
    .clk(clk_28),
    .d(\U15/U_SPI/do_valid_C ),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/do_valid_D ));  // ../../rtl/spi/spi_slave.vhd(272)
  reg_ar_as_w1 \U15/U_SPI/do_valid_o_reg_reg  (
    .clk(clk_28),
    .d(\U15/U_SPI/do_valid_next ),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/spi_do_valid ));  // ../../rtl/spi/spi_slave.vhd(272)
  eq_w5 \U15/U_SPI/eq0  (
    .i0(5'b11000),
    .i1({\U15/U_SPI/state_dbg_o[4] ,\U15/U_SPI/state_dbg_o[3] ,\U15/U_SPI/state_dbg_o[2] ,\U15/U_SPI/state_dbg_o[1] ,\U15/U_SPI/state_dbg_o[0] }),
    .o(\U15/U_SPI/n18 ));  // ../../rtl/spi/spi_slave.vhd(311)
  eq_w5 \U15/U_SPI/eq1  (
    .i0(5'b00001),
    .i1({\U15/U_SPI/state_dbg_o[4] ,\U15/U_SPI/state_dbg_o[3] ,\U15/U_SPI/state_dbg_o[2] ,\U15/U_SPI/state_dbg_o[1] ,\U15/U_SPI/state_dbg_o[0] }),
    .o(\U15/U_SPI/n25 ));  // ../../rtl/spi/spi_slave.vhd(324)
  eq_w5 \U15/U_SPI/eq2  (
    .i0(5'b00000),
    .i1({\U15/U_SPI/state_dbg_o[4] ,\U15/U_SPI/state_dbg_o[3] ,\U15/U_SPI/state_dbg_o[2] ,\U15/U_SPI/state_dbg_o[1] ,\U15/U_SPI/state_dbg_o[0] }),
    .o(\U15/U_SPI/n26 ));  // ../../rtl/spi/spi_slave.vhd(337)
  lt_u5_u5 \U15/U_SPI/lt0  (
    .ci(1'b0),
    .i0({\U15/U_SPI/state_dbg_o[4] ,\U15/U_SPI/state_dbg_o[3] ,\U15/U_SPI/state_dbg_o[2] ,\U15/U_SPI/state_dbg_o[1] ,\U15/U_SPI/state_dbg_o[0] }),
    .i1(5'b00101),
    .o(\U15/U_SPI/n19 ));  // ../../rtl/spi/spi_slave.vhd(315)
  lt_u5_u5 \U15/U_SPI/lt1  (
    .ci(1'b0),
    .i0(5'b10111),
    .i1({\U15/U_SPI/state_dbg_o[4] ,\U15/U_SPI/state_dbg_o[3] ,\U15/U_SPI/state_dbg_o[2] ,\U15/U_SPI/state_dbg_o[1] ,\U15/U_SPI/state_dbg_o[0] }),
    .o(\U15/U_SPI/n20 ));  // ../../rtl/spi/spi_slave.vhd(315)
  lt_u5_u5 \U15/U_SPI/lt2  (
    .ci(1'b0),
    .i0({\U15/U_SPI/state_dbg_o[4] ,\U15/U_SPI/state_dbg_o[3] ,\U15/U_SPI/state_dbg_o[2] ,\U15/U_SPI/state_dbg_o[1] ,\U15/U_SPI/state_dbg_o[0] }),
    .i1(5'b00010),
    .o(\U15/U_SPI/n22 ));  // ../../rtl/spi/spi_slave.vhd(319)
  lt_u5_u5 \U15/U_SPI/lt3  (
    .ci(1'b0),
    .i0(5'b00100),
    .i1({\U15/U_SPI/state_dbg_o[4] ,\U15/U_SPI/state_dbg_o[3] ,\U15/U_SPI/state_dbg_o[2] ,\U15/U_SPI/state_dbg_o[1] ,\U15/U_SPI/state_dbg_o[0] }),
    .o(\U15/U_SPI/n23 ));  // ../../rtl/spi/spi_slave.vhd(319)
  binary_mux_s1_w1 \U15/U_SPI/mux1_b0  (
    .i0(1'b0),
    .i1(\U15/U_SPI/di_reg [0]),
    .sel(\U15/U_SPI/wren_o ),
    .o(\U15/U_SPI/n16 [0]));  // ../../rtl/spi/spi_slave.vhd(336)
  binary_mux_s1_w1 \U15/U_SPI/mux1_b1  (
    .i0(1'b0),
    .i1(\U15/U_SPI/di_reg [1]),
    .sel(\U15/U_SPI/wren_o ),
    .o(\U15/U_SPI/n16 [1]));  // ../../rtl/spi/spi_slave.vhd(336)
  binary_mux_s1_w1 \U15/U_SPI/mux1_b10  (
    .i0(1'b0),
    .i1(\U15/U_SPI/di_reg [10]),
    .sel(\U15/U_SPI/wren_o ),
    .o(\U15/U_SPI/n16 [10]));  // ../../rtl/spi/spi_slave.vhd(336)
  binary_mux_s1_w1 \U15/U_SPI/mux1_b11  (
    .i0(1'b0),
    .i1(\U15/U_SPI/di_reg [11]),
    .sel(\U15/U_SPI/wren_o ),
    .o(\U15/U_SPI/n16 [11]));  // ../../rtl/spi/spi_slave.vhd(336)
  binary_mux_s1_w1 \U15/U_SPI/mux1_b12  (
    .i0(1'b0),
    .i1(\U15/U_SPI/di_reg [12]),
    .sel(\U15/U_SPI/wren_o ),
    .o(\U15/U_SPI/n16 [12]));  // ../../rtl/spi/spi_slave.vhd(336)
  binary_mux_s1_w1 \U15/U_SPI/mux1_b13  (
    .i0(1'b0),
    .i1(\U15/U_SPI/di_reg [13]),
    .sel(\U15/U_SPI/wren_o ),
    .o(\U15/U_SPI/n16 [13]));  // ../../rtl/spi/spi_slave.vhd(336)
  binary_mux_s1_w1 \U15/U_SPI/mux1_b14  (
    .i0(1'b0),
    .i1(\U15/U_SPI/di_reg [14]),
    .sel(\U15/U_SPI/wren_o ),
    .o(\U15/U_SPI/n16 [14]));  // ../../rtl/spi/spi_slave.vhd(336)
  binary_mux_s1_w1 \U15/U_SPI/mux1_b15  (
    .i0(1'b0),
    .i1(\U15/U_SPI/di_reg [15]),
    .sel(\U15/U_SPI/wren_o ),
    .o(\U15/U_SPI/n16 [15]));  // ../../rtl/spi/spi_slave.vhd(336)
  binary_mux_s1_w1 \U15/U_SPI/mux1_b16  (
    .i0(1'b0),
    .i1(\U15/U_SPI/di_reg [16]),
    .sel(\U15/U_SPI/wren_o ),
    .o(\U15/U_SPI/n16 [16]));  // ../../rtl/spi/spi_slave.vhd(336)
  binary_mux_s1_w1 \U15/U_SPI/mux1_b17  (
    .i0(1'b0),
    .i1(\U15/U_SPI/di_reg [17]),
    .sel(\U15/U_SPI/wren_o ),
    .o(\U15/U_SPI/n16 [17]));  // ../../rtl/spi/spi_slave.vhd(336)
  binary_mux_s1_w1 \U15/U_SPI/mux1_b18  (
    .i0(1'b0),
    .i1(\U15/U_SPI/di_reg [18]),
    .sel(\U15/U_SPI/wren_o ),
    .o(\U15/U_SPI/n16 [18]));  // ../../rtl/spi/spi_slave.vhd(336)
  binary_mux_s1_w1 \U15/U_SPI/mux1_b19  (
    .i0(1'b0),
    .i1(\U15/U_SPI/di_reg [19]),
    .sel(\U15/U_SPI/wren_o ),
    .o(\U15/U_SPI/n16 [19]));  // ../../rtl/spi/spi_slave.vhd(336)
  binary_mux_s1_w1 \U15/U_SPI/mux1_b2  (
    .i0(1'b0),
    .i1(\U15/U_SPI/di_reg [2]),
    .sel(\U15/U_SPI/wren_o ),
    .o(\U15/U_SPI/n16 [2]));  // ../../rtl/spi/spi_slave.vhd(336)
  binary_mux_s1_w1 \U15/U_SPI/mux1_b20  (
    .i0(1'b0),
    .i1(\U15/U_SPI/di_reg [20]),
    .sel(\U15/U_SPI/wren_o ),
    .o(\U15/U_SPI/n16 [20]));  // ../../rtl/spi/spi_slave.vhd(336)
  binary_mux_s1_w1 \U15/U_SPI/mux1_b21  (
    .i0(1'b0),
    .i1(\U15/U_SPI/di_reg [21]),
    .sel(\U15/U_SPI/wren_o ),
    .o(\U15/U_SPI/n16 [21]));  // ../../rtl/spi/spi_slave.vhd(336)
  binary_mux_s1_w1 \U15/U_SPI/mux1_b22  (
    .i0(1'b0),
    .i1(\U15/U_SPI/di_reg [22]),
    .sel(\U15/U_SPI/wren_o ),
    .o(\U15/U_SPI/n16 [22]));  // ../../rtl/spi/spi_slave.vhd(336)
  binary_mux_s1_w1 \U15/U_SPI/mux1_b23  (
    .i0(1'b0),
    .i1(\U15/U_SPI/di_reg [23]),
    .sel(\U15/U_SPI/wren_o ),
    .o(\U15/U_SPI/n16 [23]));  // ../../rtl/spi/spi_slave.vhd(336)
  binary_mux_s1_w1 \U15/U_SPI/mux1_b3  (
    .i0(1'b0),
    .i1(\U15/U_SPI/di_reg [3]),
    .sel(\U15/U_SPI/wren_o ),
    .o(\U15/U_SPI/n16 [3]));  // ../../rtl/spi/spi_slave.vhd(336)
  binary_mux_s1_w1 \U15/U_SPI/mux1_b4  (
    .i0(1'b0),
    .i1(\U15/U_SPI/di_reg [4]),
    .sel(\U15/U_SPI/wren_o ),
    .o(\U15/U_SPI/n16 [4]));  // ../../rtl/spi/spi_slave.vhd(336)
  binary_mux_s1_w1 \U15/U_SPI/mux1_b5  (
    .i0(1'b0),
    .i1(\U15/U_SPI/di_reg [5]),
    .sel(\U15/U_SPI/wren_o ),
    .o(\U15/U_SPI/n16 [5]));  // ../../rtl/spi/spi_slave.vhd(336)
  binary_mux_s1_w1 \U15/U_SPI/mux1_b6  (
    .i0(1'b0),
    .i1(\U15/U_SPI/di_reg [6]),
    .sel(\U15/U_SPI/wren_o ),
    .o(\U15/U_SPI/n16 [6]));  // ../../rtl/spi/spi_slave.vhd(336)
  binary_mux_s1_w1 \U15/U_SPI/mux1_b7  (
    .i0(1'b0),
    .i1(\U15/U_SPI/di_reg [7]),
    .sel(\U15/U_SPI/wren_o ),
    .o(\U15/U_SPI/n16 [7]));  // ../../rtl/spi/spi_slave.vhd(336)
  binary_mux_s1_w1 \U15/U_SPI/mux1_b8  (
    .i0(1'b0),
    .i1(\U15/U_SPI/di_reg [8]),
    .sel(\U15/U_SPI/wren_o ),
    .o(\U15/U_SPI/n16 [8]));  // ../../rtl/spi/spi_slave.vhd(336)
  binary_mux_s1_w1 \U15/U_SPI/mux1_b9  (
    .i0(1'b0),
    .i1(\U15/U_SPI/di_reg [9]),
    .sel(\U15/U_SPI/wren_o ),
    .o(\U15/U_SPI/n16 [9]));  // ../../rtl/spi/spi_slave.vhd(336)
  reg_ar_as_w1 \U15/U_SPI/reg0_b0  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/state_next [0]),
    .en(1'b1),
    .reset(AVR_NCS),
    .set(1'b0),
    .q(\U15/U_SPI/state_dbg_o[0] ));  // ../../rtl/spi/spi_slave.vhd(238)
  reg_ar_as_w1 \U15/U_SPI/reg0_b1  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/state_next [1]),
    .en(1'b1),
    .reset(AVR_NCS),
    .set(1'b0),
    .q(\U15/U_SPI/state_dbg_o[1] ));  // ../../rtl/spi/spi_slave.vhd(238)
  reg_ar_as_w1 \U15/U_SPI/reg0_b2  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/state_next [2]),
    .en(1'b1),
    .reset(AVR_NCS),
    .set(1'b0),
    .q(\U15/U_SPI/state_dbg_o[2] ));  // ../../rtl/spi/spi_slave.vhd(238)
  reg_ar_as_w1 \U15/U_SPI/reg0_b3  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/state_next [3]),
    .en(1'b1),
    .reset(AVR_NCS),
    .set(1'b0),
    .q(\U15/U_SPI/state_dbg_o[3] ));  // ../../rtl/spi/spi_slave.vhd(238)
  reg_ar_as_w1 \U15/U_SPI/reg0_b4  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/state_next [4]),
    .en(1'b1),
    .reset(AVR_NCS),
    .set(1'b0),
    .q(\U15/U_SPI/state_dbg_o[4] ));  // ../../rtl/spi/spi_slave.vhd(238)
  reg_ar_as_w1 \U15/U_SPI/reg1_b0  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/sh_next [0]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/sh_reg [0]));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w1 \U15/U_SPI/reg1_b1  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/sh_next [1]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/sh_reg [1]));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w1 \U15/U_SPI/reg1_b10  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/sh_next [10]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/sh_reg [10]));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w1 \U15/U_SPI/reg1_b11  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/sh_next [11]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/sh_reg [11]));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w1 \U15/U_SPI/reg1_b12  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/sh_next [12]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/sh_reg [12]));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w1 \U15/U_SPI/reg1_b13  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/sh_next [13]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/sh_reg [13]));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w1 \U15/U_SPI/reg1_b14  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/sh_next [14]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/sh_reg [14]));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w1 \U15/U_SPI/reg1_b15  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/sh_next [15]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/sh_reg [15]));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w1 \U15/U_SPI/reg1_b16  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/sh_next [16]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/sh_reg [16]));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w1 \U15/U_SPI/reg1_b17  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/sh_next [17]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/sh_reg [17]));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w1 \U15/U_SPI/reg1_b18  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/sh_next [18]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/sh_reg [18]));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w1 \U15/U_SPI/reg1_b19  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/sh_next [19]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/sh_reg [19]));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w1 \U15/U_SPI/reg1_b2  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/sh_next [2]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/sh_reg [2]));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w1 \U15/U_SPI/reg1_b20  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/sh_next [20]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/sh_reg [20]));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w1 \U15/U_SPI/reg1_b21  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/sh_next [21]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/sh_reg [21]));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w1 \U15/U_SPI/reg1_b22  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/sh_next [22]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/sh_reg [22]));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w1 \U15/U_SPI/reg1_b23  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/sh_next [23]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/sh_reg [23]));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w1 \U15/U_SPI/reg1_b3  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/sh_next [3]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/sh_reg [3]));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w1 \U15/U_SPI/reg1_b4  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/sh_next [4]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/sh_reg [4]));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w1 \U15/U_SPI/reg1_b5  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/sh_next [5]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/sh_reg [5]));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w1 \U15/U_SPI/reg1_b6  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/sh_next [6]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/sh_reg [6]));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w1 \U15/U_SPI/reg1_b7  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/sh_next [7]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/sh_reg [7]));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w1 \U15/U_SPI/reg1_b8  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/sh_next [8]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/sh_reg [8]));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w1 \U15/U_SPI/reg1_b9  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/sh_next [9]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/sh_reg [9]));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w1 \U15/U_SPI/reg2_b0  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/rx_bit_reg_o ),
    .en(\U15/U_SPI/n25 ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/spi_do [0]));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w1 \U15/U_SPI/reg2_b1  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/sh_reg [0]),
    .en(\U15/U_SPI/n25 ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/spi_do [1]));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w1 \U15/U_SPI/reg2_b10  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/sh_reg [9]),
    .en(\U15/U_SPI/n25 ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/spi_do [10]));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w1 \U15/U_SPI/reg2_b11  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/sh_reg [10]),
    .en(\U15/U_SPI/n25 ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/spi_do [11]));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w1 \U15/U_SPI/reg2_b12  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/sh_reg [11]),
    .en(\U15/U_SPI/n25 ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/spi_do [12]));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w1 \U15/U_SPI/reg2_b13  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/sh_reg [12]),
    .en(\U15/U_SPI/n25 ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/spi_do [13]));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w1 \U15/U_SPI/reg2_b14  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/sh_reg [13]),
    .en(\U15/U_SPI/n25 ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/spi_do [14]));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w1 \U15/U_SPI/reg2_b15  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/sh_reg [14]),
    .en(\U15/U_SPI/n25 ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/spi_do [15]));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w1 \U15/U_SPI/reg2_b16  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/sh_reg [15]),
    .en(\U15/U_SPI/n25 ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/spi_do [16]));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w1 \U15/U_SPI/reg2_b17  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/sh_reg [16]),
    .en(\U15/U_SPI/n25 ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/spi_do [17]));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w1 \U15/U_SPI/reg2_b18  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/sh_reg [17]),
    .en(\U15/U_SPI/n25 ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/spi_do [18]));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w1 \U15/U_SPI/reg2_b19  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/sh_reg [18]),
    .en(\U15/U_SPI/n25 ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/spi_do [19]));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w1 \U15/U_SPI/reg2_b2  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/sh_reg [1]),
    .en(\U15/U_SPI/n25 ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/spi_do [2]));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w1 \U15/U_SPI/reg2_b20  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/sh_reg [19]),
    .en(\U15/U_SPI/n25 ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/spi_do [20]));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w1 \U15/U_SPI/reg2_b21  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/sh_reg [20]),
    .en(\U15/U_SPI/n25 ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/spi_do [21]));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w1 \U15/U_SPI/reg2_b22  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/sh_reg [21]),
    .en(\U15/U_SPI/n25 ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/spi_do [22]));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w1 \U15/U_SPI/reg2_b23  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/sh_reg [22]),
    .en(\U15/U_SPI/n25 ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/spi_do [23]));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w1 \U15/U_SPI/reg2_b3  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/sh_reg [2]),
    .en(\U15/U_SPI/n25 ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/spi_do [3]));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w1 \U15/U_SPI/reg2_b4  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/sh_reg [3]),
    .en(\U15/U_SPI/n25 ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/spi_do [4]));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w1 \U15/U_SPI/reg2_b5  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/sh_reg [4]),
    .en(\U15/U_SPI/n25 ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/spi_do [5]));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w1 \U15/U_SPI/reg2_b6  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/sh_reg [5]),
    .en(\U15/U_SPI/n25 ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/spi_do [6]));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w1 \U15/U_SPI/reg2_b7  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/sh_reg [6]),
    .en(\U15/U_SPI/n25 ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/spi_do [7]));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w1 \U15/U_SPI/reg2_b8  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/sh_reg [7]),
    .en(\U15/U_SPI/n25 ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/spi_do [8]));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w1 \U15/U_SPI/reg2_b9  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/sh_reg [8]),
    .en(\U15/U_SPI/n25 ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/spi_do [9]));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_as_w1 \U15/U_SPI/reg3_b0  (
    .clk(clk_28),
    .d(\U15/spi_di [0]),
    .en(~\U15/queue_rd_empty ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/di_reg [0]));  // ../../rtl/spi/spi_slave.vhd(285)
  reg_ar_as_w1 \U15/U_SPI/reg3_b1  (
    .clk(clk_28),
    .d(\U15/spi_di [1]),
    .en(~\U15/queue_rd_empty ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/di_reg [1]));  // ../../rtl/spi/spi_slave.vhd(285)
  reg_ar_as_w1 \U15/U_SPI/reg3_b10  (
    .clk(clk_28),
    .d(\U15/spi_di [10]),
    .en(~\U15/queue_rd_empty ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/di_reg [10]));  // ../../rtl/spi/spi_slave.vhd(285)
  reg_ar_as_w1 \U15/U_SPI/reg3_b11  (
    .clk(clk_28),
    .d(\U15/spi_di [11]),
    .en(~\U15/queue_rd_empty ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/di_reg [11]));  // ../../rtl/spi/spi_slave.vhd(285)
  reg_ar_as_w1 \U15/U_SPI/reg3_b12  (
    .clk(clk_28),
    .d(\U15/spi_di [12]),
    .en(~\U15/queue_rd_empty ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/di_reg [12]));  // ../../rtl/spi/spi_slave.vhd(285)
  reg_ar_as_w1 \U15/U_SPI/reg3_b13  (
    .clk(clk_28),
    .d(\U15/spi_di [13]),
    .en(~\U15/queue_rd_empty ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/di_reg [13]));  // ../../rtl/spi/spi_slave.vhd(285)
  reg_ar_as_w1 \U15/U_SPI/reg3_b14  (
    .clk(clk_28),
    .d(\U15/spi_di [14]),
    .en(~\U15/queue_rd_empty ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/di_reg [14]));  // ../../rtl/spi/spi_slave.vhd(285)
  reg_ar_as_w1 \U15/U_SPI/reg3_b15  (
    .clk(clk_28),
    .d(\U15/spi_di [15]),
    .en(~\U15/queue_rd_empty ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/di_reg [15]));  // ../../rtl/spi/spi_slave.vhd(285)
  reg_ar_as_w1 \U15/U_SPI/reg3_b16  (
    .clk(clk_28),
    .d(\U15/spi_di [16]),
    .en(~\U15/queue_rd_empty ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/di_reg [16]));  // ../../rtl/spi/spi_slave.vhd(285)
  reg_ar_as_w1 \U15/U_SPI/reg3_b17  (
    .clk(clk_28),
    .d(\U15/spi_di [17]),
    .en(~\U15/queue_rd_empty ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/di_reg [17]));  // ../../rtl/spi/spi_slave.vhd(285)
  reg_ar_as_w1 \U15/U_SPI/reg3_b18  (
    .clk(clk_28),
    .d(\U15/spi_di [18]),
    .en(~\U15/queue_rd_empty ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/di_reg [18]));  // ../../rtl/spi/spi_slave.vhd(285)
  reg_ar_as_w1 \U15/U_SPI/reg3_b19  (
    .clk(clk_28),
    .d(\U15/spi_di [19]),
    .en(~\U15/queue_rd_empty ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/di_reg [19]));  // ../../rtl/spi/spi_slave.vhd(285)
  reg_ar_as_w1 \U15/U_SPI/reg3_b2  (
    .clk(clk_28),
    .d(\U15/spi_di [2]),
    .en(~\U15/queue_rd_empty ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/di_reg [2]));  // ../../rtl/spi/spi_slave.vhd(285)
  reg_ar_as_w1 \U15/U_SPI/reg3_b20  (
    .clk(clk_28),
    .d(\U15/spi_di [20]),
    .en(~\U15/queue_rd_empty ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/di_reg [20]));  // ../../rtl/spi/spi_slave.vhd(285)
  reg_ar_as_w1 \U15/U_SPI/reg3_b21  (
    .clk(clk_28),
    .d(\U15/spi_di [21]),
    .en(~\U15/queue_rd_empty ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/di_reg [21]));  // ../../rtl/spi/spi_slave.vhd(285)
  reg_ar_as_w1 \U15/U_SPI/reg3_b22  (
    .clk(clk_28),
    .d(\U15/spi_di [22]),
    .en(~\U15/queue_rd_empty ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/di_reg [22]));  // ../../rtl/spi/spi_slave.vhd(285)
  reg_ar_as_w1 \U15/U_SPI/reg3_b23  (
    .clk(clk_28),
    .d(\U15/spi_di [23]),
    .en(~\U15/queue_rd_empty ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/di_reg [23]));  // ../../rtl/spi/spi_slave.vhd(285)
  reg_ar_as_w1 \U15/U_SPI/reg3_b3  (
    .clk(clk_28),
    .d(\U15/spi_di [3]),
    .en(~\U15/queue_rd_empty ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/di_reg [3]));  // ../../rtl/spi/spi_slave.vhd(285)
  reg_ar_as_w1 \U15/U_SPI/reg3_b4  (
    .clk(clk_28),
    .d(\U15/spi_di [4]),
    .en(~\U15/queue_rd_empty ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/di_reg [4]));  // ../../rtl/spi/spi_slave.vhd(285)
  reg_ar_as_w1 \U15/U_SPI/reg3_b5  (
    .clk(clk_28),
    .d(\U15/spi_di [5]),
    .en(~\U15/queue_rd_empty ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/di_reg [5]));  // ../../rtl/spi/spi_slave.vhd(285)
  reg_ar_as_w1 \U15/U_SPI/reg3_b6  (
    .clk(clk_28),
    .d(\U15/spi_di [6]),
    .en(~\U15/queue_rd_empty ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/di_reg [6]));  // ../../rtl/spi/spi_slave.vhd(285)
  reg_ar_as_w1 \U15/U_SPI/reg3_b7  (
    .clk(clk_28),
    .d(\U15/spi_di [7]),
    .en(~\U15/queue_rd_empty ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/di_reg [7]));  // ../../rtl/spi/spi_slave.vhd(285)
  reg_ar_as_w1 \U15/U_SPI/reg3_b8  (
    .clk(clk_28),
    .d(\U15/spi_di [8]),
    .en(~\U15/queue_rd_empty ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/di_reg [8]));  // ../../rtl/spi/spi_slave.vhd(285)
  reg_ar_as_w1 \U15/U_SPI/reg3_b9  (
    .clk(clk_28),
    .d(\U15/spi_di [9]),
    .en(~\U15/queue_rd_empty ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/di_reg [9]));  // ../../rtl/spi/spi_slave.vhd(285)
  reg_ar_as_w1 \U15/U_SPI/rx_bit_reg_reg  (
    .clk(AVR_SCK),
    .d(AVR_MOSI),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/rx_bit_reg_o ));  // ../../rtl/spi/spi_slave.vhd(224)
  and \U15/U_SPI/sel0/and_b0_1  (\U15/U_SPI/sel0/B1 , \U15/U_SPI/do_transfer_o , \U15/U_SPI/n29 );
  or \U15/U_SPI/sel0/or_B0_or_B1_B2_o  (\U15/U_SPI/do_transfer_next , \U15/U_SPI/n25 , \U15/U_SPI/sel0/B1 );
  and \U15/U_SPI/sel1_b0/and_b0_0  (\U15/U_SPI/sel1_b0/B0 , \U15/U_SPI/sh_reg [0], \U15/U_SPI/n27 );
  and \U15/U_SPI/sel1_b0/and_b0_1  (\U15/U_SPI/sel1_b0/B1 , \U15/U_SPI/rx_bit_reg_o , \U15/U_SPI/n26 );
  and \U15/U_SPI/sel1_b0/and_b0_2  (\U15/U_SPI/sel1_b0/B2 , \U15/U_SPI/n16 [0], \U15/U_SPI/n25 );
  and \U15/U_SPI/sel1_b0/and_b0_3  (\U15/U_SPI/sel1_b0/B3 , \U15/U_SPI/rx_bit_reg_o , \U15/U_SPI/n24 );
  and \U15/U_SPI/sel1_b0/and_b0_4  (\U15/U_SPI/sel1_b0/B4 , \U15/U_SPI/rx_bit_reg_o , \U15/U_SPI/n21 );
  and \U15/U_SPI/sel1_b0/and_b0_5  (\U15/U_SPI/sel1_b0/B5 , \U15/U_SPI/rx_bit_reg_o , \U15/U_SPI/n18 );
  or \U15/U_SPI/sel1_b0/or_B0_or_B1_B2_o  (\U15/U_SPI/sel1_b0/or_B0_or_B1_B2_o_o , \U15/U_SPI/sel1_b0/B0 , \U15/U_SPI/sel1_b0/or_B1_B2_o );
  or \U15/U_SPI/sel1_b0/or_B1_B2  (\U15/U_SPI/sel1_b0/or_B1_B2_o , \U15/U_SPI/sel1_b0/B1 , \U15/U_SPI/sel1_b0/B2 );
  or \U15/U_SPI/sel1_b0/or_B3_or_B4_B5_o  (\U15/U_SPI/sel1_b0/or_B3_or_B4_B5_o_o , \U15/U_SPI/sel1_b0/B3 , \U15/U_SPI/sel1_b0/or_B4_B5_o );
  or \U15/U_SPI/sel1_b0/or_B4_B5  (\U15/U_SPI/sel1_b0/or_B4_B5_o , \U15/U_SPI/sel1_b0/B4 , \U15/U_SPI/sel1_b0/B5 );
  or \U15/U_SPI/sel1_b0/or_or_B0_or_B1_B2_o_  (\U15/U_SPI/sh_next [0], \U15/U_SPI/sel1_b0/or_B0_or_B1_B2_o_o , \U15/U_SPI/sel1_b0/or_B3_or_B4_B5_o_o );
  and \U15/U_SPI/sel1_b1/and_b0_0  (\U15/U_SPI/sel1_b1/B0 , \U15/U_SPI/sh_reg [1], \U15/U_SPI/n27 );
  and \U15/U_SPI/sel1_b1/and_b0_1  (\U15/U_SPI/sel1_b1/B1 , \U15/U_SPI/di_reg [0], \U15/U_SPI/n26 );
  and \U15/U_SPI/sel1_b1/and_b0_2  (\U15/U_SPI/sel1_b1/B2 , \U15/U_SPI/n16 [1], \U15/U_SPI/n25 );
  and \U15/U_SPI/sel1_b1/and_b0_3  (\U15/U_SPI/sel1_b1/B3 , \U15/U_SPI/sh_reg [0], \U15/U_SPI/n24 );
  and \U15/U_SPI/sel1_b1/and_b0_4  (\U15/U_SPI/sel1_b1/B4 , \U15/U_SPI/sh_reg [0], \U15/U_SPI/n21 );
  and \U15/U_SPI/sel1_b1/and_b0_5  (\U15/U_SPI/sel1_b1/B5 , \U15/U_SPI/sh_reg [0], \U15/U_SPI/n18 );
  or \U15/U_SPI/sel1_b1/or_B0_or_B1_B2_o  (\U15/U_SPI/sel1_b1/or_B0_or_B1_B2_o_o , \U15/U_SPI/sel1_b1/B0 , \U15/U_SPI/sel1_b1/or_B1_B2_o );
  or \U15/U_SPI/sel1_b1/or_B1_B2  (\U15/U_SPI/sel1_b1/or_B1_B2_o , \U15/U_SPI/sel1_b1/B1 , \U15/U_SPI/sel1_b1/B2 );
  or \U15/U_SPI/sel1_b1/or_B3_or_B4_B5_o  (\U15/U_SPI/sel1_b1/or_B3_or_B4_B5_o_o , \U15/U_SPI/sel1_b1/B3 , \U15/U_SPI/sel1_b1/or_B4_B5_o );
  or \U15/U_SPI/sel1_b1/or_B4_B5  (\U15/U_SPI/sel1_b1/or_B4_B5_o , \U15/U_SPI/sel1_b1/B4 , \U15/U_SPI/sel1_b1/B5 );
  or \U15/U_SPI/sel1_b1/or_or_B0_or_B1_B2_o_  (\U15/U_SPI/sh_next [1], \U15/U_SPI/sel1_b1/or_B0_or_B1_B2_o_o , \U15/U_SPI/sel1_b1/or_B3_or_B4_B5_o_o );
  and \U15/U_SPI/sel1_b10/and_b0_0  (\U15/U_SPI/sel1_b10/B0 , \U15/U_SPI/sh_reg [10], \U15/U_SPI/n27 );
  and \U15/U_SPI/sel1_b10/and_b0_1  (\U15/U_SPI/sel1_b10/B1 , \U15/U_SPI/di_reg [9], \U15/U_SPI/n26 );
  and \U15/U_SPI/sel1_b10/and_b0_2  (\U15/U_SPI/sel1_b10/B2 , \U15/U_SPI/n16 [10], \U15/U_SPI/n25 );
  and \U15/U_SPI/sel1_b10/and_b0_3  (\U15/U_SPI/sel1_b10/B3 , \U15/U_SPI/sh_reg [9], \U15/U_SPI/n24 );
  and \U15/U_SPI/sel1_b10/and_b0_4  (\U15/U_SPI/sel1_b10/B4 , \U15/U_SPI/sh_reg [9], \U15/U_SPI/n21 );
  and \U15/U_SPI/sel1_b10/and_b0_5  (\U15/U_SPI/sel1_b10/B5 , \U15/U_SPI/sh_reg [9], \U15/U_SPI/n18 );
  or \U15/U_SPI/sel1_b10/or_B0_or_B1_B2_o  (\U15/U_SPI/sel1_b10/or_B0_or_B1_B2_o_o , \U15/U_SPI/sel1_b10/B0 , \U15/U_SPI/sel1_b10/or_B1_B2_o );
  or \U15/U_SPI/sel1_b10/or_B1_B2  (\U15/U_SPI/sel1_b10/or_B1_B2_o , \U15/U_SPI/sel1_b10/B1 , \U15/U_SPI/sel1_b10/B2 );
  or \U15/U_SPI/sel1_b10/or_B3_or_B4_B5_o  (\U15/U_SPI/sel1_b10/or_B3_or_B4_B5_o_o , \U15/U_SPI/sel1_b10/B3 , \U15/U_SPI/sel1_b10/or_B4_B5_o );
  or \U15/U_SPI/sel1_b10/or_B4_B5  (\U15/U_SPI/sel1_b10/or_B4_B5_o , \U15/U_SPI/sel1_b10/B4 , \U15/U_SPI/sel1_b10/B5 );
  or \U15/U_SPI/sel1_b10/or_or_B0_or_B1_B2_o_  (\U15/U_SPI/sh_next [10], \U15/U_SPI/sel1_b10/or_B0_or_B1_B2_o_o , \U15/U_SPI/sel1_b10/or_B3_or_B4_B5_o_o );
  and \U15/U_SPI/sel1_b11/and_b0_0  (\U15/U_SPI/sel1_b11/B0 , \U15/U_SPI/sh_reg [11], \U15/U_SPI/n27 );
  and \U15/U_SPI/sel1_b11/and_b0_1  (\U15/U_SPI/sel1_b11/B1 , \U15/U_SPI/di_reg [10], \U15/U_SPI/n26 );
  and \U15/U_SPI/sel1_b11/and_b0_2  (\U15/U_SPI/sel1_b11/B2 , \U15/U_SPI/n16 [11], \U15/U_SPI/n25 );
  and \U15/U_SPI/sel1_b11/and_b0_3  (\U15/U_SPI/sel1_b11/B3 , \U15/U_SPI/sh_reg [10], \U15/U_SPI/n24 );
  and \U15/U_SPI/sel1_b11/and_b0_4  (\U15/U_SPI/sel1_b11/B4 , \U15/U_SPI/sh_reg [10], \U15/U_SPI/n21 );
  and \U15/U_SPI/sel1_b11/and_b0_5  (\U15/U_SPI/sel1_b11/B5 , \U15/U_SPI/sh_reg [10], \U15/U_SPI/n18 );
  or \U15/U_SPI/sel1_b11/or_B0_or_B1_B2_o  (\U15/U_SPI/sel1_b11/or_B0_or_B1_B2_o_o , \U15/U_SPI/sel1_b11/B0 , \U15/U_SPI/sel1_b11/or_B1_B2_o );
  or \U15/U_SPI/sel1_b11/or_B1_B2  (\U15/U_SPI/sel1_b11/or_B1_B2_o , \U15/U_SPI/sel1_b11/B1 , \U15/U_SPI/sel1_b11/B2 );
  or \U15/U_SPI/sel1_b11/or_B3_or_B4_B5_o  (\U15/U_SPI/sel1_b11/or_B3_or_B4_B5_o_o , \U15/U_SPI/sel1_b11/B3 , \U15/U_SPI/sel1_b11/or_B4_B5_o );
  or \U15/U_SPI/sel1_b11/or_B4_B5  (\U15/U_SPI/sel1_b11/or_B4_B5_o , \U15/U_SPI/sel1_b11/B4 , \U15/U_SPI/sel1_b11/B5 );
  or \U15/U_SPI/sel1_b11/or_or_B0_or_B1_B2_o_  (\U15/U_SPI/sh_next [11], \U15/U_SPI/sel1_b11/or_B0_or_B1_B2_o_o , \U15/U_SPI/sel1_b11/or_B3_or_B4_B5_o_o );
  and \U15/U_SPI/sel1_b12/and_b0_0  (\U15/U_SPI/sel1_b12/B0 , \U15/U_SPI/sh_reg [12], \U15/U_SPI/n27 );
  and \U15/U_SPI/sel1_b12/and_b0_1  (\U15/U_SPI/sel1_b12/B1 , \U15/U_SPI/di_reg [11], \U15/U_SPI/n26 );
  and \U15/U_SPI/sel1_b12/and_b0_2  (\U15/U_SPI/sel1_b12/B2 , \U15/U_SPI/n16 [12], \U15/U_SPI/n25 );
  and \U15/U_SPI/sel1_b12/and_b0_3  (\U15/U_SPI/sel1_b12/B3 , \U15/U_SPI/sh_reg [11], \U15/U_SPI/n24 );
  and \U15/U_SPI/sel1_b12/and_b0_4  (\U15/U_SPI/sel1_b12/B4 , \U15/U_SPI/sh_reg [11], \U15/U_SPI/n21 );
  and \U15/U_SPI/sel1_b12/and_b0_5  (\U15/U_SPI/sel1_b12/B5 , \U15/U_SPI/sh_reg [11], \U15/U_SPI/n18 );
  or \U15/U_SPI/sel1_b12/or_B0_or_B1_B2_o  (\U15/U_SPI/sel1_b12/or_B0_or_B1_B2_o_o , \U15/U_SPI/sel1_b12/B0 , \U15/U_SPI/sel1_b12/or_B1_B2_o );
  or \U15/U_SPI/sel1_b12/or_B1_B2  (\U15/U_SPI/sel1_b12/or_B1_B2_o , \U15/U_SPI/sel1_b12/B1 , \U15/U_SPI/sel1_b12/B2 );
  or \U15/U_SPI/sel1_b12/or_B3_or_B4_B5_o  (\U15/U_SPI/sel1_b12/or_B3_or_B4_B5_o_o , \U15/U_SPI/sel1_b12/B3 , \U15/U_SPI/sel1_b12/or_B4_B5_o );
  or \U15/U_SPI/sel1_b12/or_B4_B5  (\U15/U_SPI/sel1_b12/or_B4_B5_o , \U15/U_SPI/sel1_b12/B4 , \U15/U_SPI/sel1_b12/B5 );
  or \U15/U_SPI/sel1_b12/or_or_B0_or_B1_B2_o_  (\U15/U_SPI/sh_next [12], \U15/U_SPI/sel1_b12/or_B0_or_B1_B2_o_o , \U15/U_SPI/sel1_b12/or_B3_or_B4_B5_o_o );
  and \U15/U_SPI/sel1_b13/and_b0_0  (\U15/U_SPI/sel1_b13/B0 , \U15/U_SPI/sh_reg [13], \U15/U_SPI/n27 );
  and \U15/U_SPI/sel1_b13/and_b0_1  (\U15/U_SPI/sel1_b13/B1 , \U15/U_SPI/di_reg [12], \U15/U_SPI/n26 );
  and \U15/U_SPI/sel1_b13/and_b0_2  (\U15/U_SPI/sel1_b13/B2 , \U15/U_SPI/n16 [13], \U15/U_SPI/n25 );
  and \U15/U_SPI/sel1_b13/and_b0_3  (\U15/U_SPI/sel1_b13/B3 , \U15/U_SPI/sh_reg [12], \U15/U_SPI/n24 );
  and \U15/U_SPI/sel1_b13/and_b0_4  (\U15/U_SPI/sel1_b13/B4 , \U15/U_SPI/sh_reg [12], \U15/U_SPI/n21 );
  and \U15/U_SPI/sel1_b13/and_b0_5  (\U15/U_SPI/sel1_b13/B5 , \U15/U_SPI/sh_reg [12], \U15/U_SPI/n18 );
  or \U15/U_SPI/sel1_b13/or_B0_or_B1_B2_o  (\U15/U_SPI/sel1_b13/or_B0_or_B1_B2_o_o , \U15/U_SPI/sel1_b13/B0 , \U15/U_SPI/sel1_b13/or_B1_B2_o );
  or \U15/U_SPI/sel1_b13/or_B1_B2  (\U15/U_SPI/sel1_b13/or_B1_B2_o , \U15/U_SPI/sel1_b13/B1 , \U15/U_SPI/sel1_b13/B2 );
  or \U15/U_SPI/sel1_b13/or_B3_or_B4_B5_o  (\U15/U_SPI/sel1_b13/or_B3_or_B4_B5_o_o , \U15/U_SPI/sel1_b13/B3 , \U15/U_SPI/sel1_b13/or_B4_B5_o );
  or \U15/U_SPI/sel1_b13/or_B4_B5  (\U15/U_SPI/sel1_b13/or_B4_B5_o , \U15/U_SPI/sel1_b13/B4 , \U15/U_SPI/sel1_b13/B5 );
  or \U15/U_SPI/sel1_b13/or_or_B0_or_B1_B2_o_  (\U15/U_SPI/sh_next [13], \U15/U_SPI/sel1_b13/or_B0_or_B1_B2_o_o , \U15/U_SPI/sel1_b13/or_B3_or_B4_B5_o_o );
  and \U15/U_SPI/sel1_b14/and_b0_0  (\U15/U_SPI/sel1_b14/B0 , \U15/U_SPI/sh_reg [14], \U15/U_SPI/n27 );
  and \U15/U_SPI/sel1_b14/and_b0_1  (\U15/U_SPI/sel1_b14/B1 , \U15/U_SPI/di_reg [13], \U15/U_SPI/n26 );
  and \U15/U_SPI/sel1_b14/and_b0_2  (\U15/U_SPI/sel1_b14/B2 , \U15/U_SPI/n16 [14], \U15/U_SPI/n25 );
  and \U15/U_SPI/sel1_b14/and_b0_3  (\U15/U_SPI/sel1_b14/B3 , \U15/U_SPI/sh_reg [13], \U15/U_SPI/n24 );
  and \U15/U_SPI/sel1_b14/and_b0_4  (\U15/U_SPI/sel1_b14/B4 , \U15/U_SPI/sh_reg [13], \U15/U_SPI/n21 );
  and \U15/U_SPI/sel1_b14/and_b0_5  (\U15/U_SPI/sel1_b14/B5 , \U15/U_SPI/sh_reg [13], \U15/U_SPI/n18 );
  or \U15/U_SPI/sel1_b14/or_B0_or_B1_B2_o  (\U15/U_SPI/sel1_b14/or_B0_or_B1_B2_o_o , \U15/U_SPI/sel1_b14/B0 , \U15/U_SPI/sel1_b14/or_B1_B2_o );
  or \U15/U_SPI/sel1_b14/or_B1_B2  (\U15/U_SPI/sel1_b14/or_B1_B2_o , \U15/U_SPI/sel1_b14/B1 , \U15/U_SPI/sel1_b14/B2 );
  or \U15/U_SPI/sel1_b14/or_B3_or_B4_B5_o  (\U15/U_SPI/sel1_b14/or_B3_or_B4_B5_o_o , \U15/U_SPI/sel1_b14/B3 , \U15/U_SPI/sel1_b14/or_B4_B5_o );
  or \U15/U_SPI/sel1_b14/or_B4_B5  (\U15/U_SPI/sel1_b14/or_B4_B5_o , \U15/U_SPI/sel1_b14/B4 , \U15/U_SPI/sel1_b14/B5 );
  or \U15/U_SPI/sel1_b14/or_or_B0_or_B1_B2_o_  (\U15/U_SPI/sh_next [14], \U15/U_SPI/sel1_b14/or_B0_or_B1_B2_o_o , \U15/U_SPI/sel1_b14/or_B3_or_B4_B5_o_o );
  and \U15/U_SPI/sel1_b15/and_b0_0  (\U15/U_SPI/sel1_b15/B0 , \U15/U_SPI/sh_reg [15], \U15/U_SPI/n27 );
  and \U15/U_SPI/sel1_b15/and_b0_1  (\U15/U_SPI/sel1_b15/B1 , \U15/U_SPI/di_reg [14], \U15/U_SPI/n26 );
  and \U15/U_SPI/sel1_b15/and_b0_2  (\U15/U_SPI/sel1_b15/B2 , \U15/U_SPI/n16 [15], \U15/U_SPI/n25 );
  and \U15/U_SPI/sel1_b15/and_b0_3  (\U15/U_SPI/sel1_b15/B3 , \U15/U_SPI/sh_reg [14], \U15/U_SPI/n24 );
  and \U15/U_SPI/sel1_b15/and_b0_4  (\U15/U_SPI/sel1_b15/B4 , \U15/U_SPI/sh_reg [14], \U15/U_SPI/n21 );
  and \U15/U_SPI/sel1_b15/and_b0_5  (\U15/U_SPI/sel1_b15/B5 , \U15/U_SPI/sh_reg [14], \U15/U_SPI/n18 );
  or \U15/U_SPI/sel1_b15/or_B0_or_B1_B2_o  (\U15/U_SPI/sel1_b15/or_B0_or_B1_B2_o_o , \U15/U_SPI/sel1_b15/B0 , \U15/U_SPI/sel1_b15/or_B1_B2_o );
  or \U15/U_SPI/sel1_b15/or_B1_B2  (\U15/U_SPI/sel1_b15/or_B1_B2_o , \U15/U_SPI/sel1_b15/B1 , \U15/U_SPI/sel1_b15/B2 );
  or \U15/U_SPI/sel1_b15/or_B3_or_B4_B5_o  (\U15/U_SPI/sel1_b15/or_B3_or_B4_B5_o_o , \U15/U_SPI/sel1_b15/B3 , \U15/U_SPI/sel1_b15/or_B4_B5_o );
  or \U15/U_SPI/sel1_b15/or_B4_B5  (\U15/U_SPI/sel1_b15/or_B4_B5_o , \U15/U_SPI/sel1_b15/B4 , \U15/U_SPI/sel1_b15/B5 );
  or \U15/U_SPI/sel1_b15/or_or_B0_or_B1_B2_o_  (\U15/U_SPI/sh_next [15], \U15/U_SPI/sel1_b15/or_B0_or_B1_B2_o_o , \U15/U_SPI/sel1_b15/or_B3_or_B4_B5_o_o );
  and \U15/U_SPI/sel1_b16/and_b0_0  (\U15/U_SPI/sel1_b16/B0 , \U15/U_SPI/sh_reg [16], \U15/U_SPI/n27 );
  and \U15/U_SPI/sel1_b16/and_b0_1  (\U15/U_SPI/sel1_b16/B1 , \U15/U_SPI/di_reg [15], \U15/U_SPI/n26 );
  and \U15/U_SPI/sel1_b16/and_b0_2  (\U15/U_SPI/sel1_b16/B2 , \U15/U_SPI/n16 [16], \U15/U_SPI/n25 );
  and \U15/U_SPI/sel1_b16/and_b0_3  (\U15/U_SPI/sel1_b16/B3 , \U15/U_SPI/sh_reg [15], \U15/U_SPI/n24 );
  and \U15/U_SPI/sel1_b16/and_b0_4  (\U15/U_SPI/sel1_b16/B4 , \U15/U_SPI/sh_reg [15], \U15/U_SPI/n21 );
  and \U15/U_SPI/sel1_b16/and_b0_5  (\U15/U_SPI/sel1_b16/B5 , \U15/U_SPI/sh_reg [15], \U15/U_SPI/n18 );
  or \U15/U_SPI/sel1_b16/or_B0_or_B1_B2_o  (\U15/U_SPI/sel1_b16/or_B0_or_B1_B2_o_o , \U15/U_SPI/sel1_b16/B0 , \U15/U_SPI/sel1_b16/or_B1_B2_o );
  or \U15/U_SPI/sel1_b16/or_B1_B2  (\U15/U_SPI/sel1_b16/or_B1_B2_o , \U15/U_SPI/sel1_b16/B1 , \U15/U_SPI/sel1_b16/B2 );
  or \U15/U_SPI/sel1_b16/or_B3_or_B4_B5_o  (\U15/U_SPI/sel1_b16/or_B3_or_B4_B5_o_o , \U15/U_SPI/sel1_b16/B3 , \U15/U_SPI/sel1_b16/or_B4_B5_o );
  or \U15/U_SPI/sel1_b16/or_B4_B5  (\U15/U_SPI/sel1_b16/or_B4_B5_o , \U15/U_SPI/sel1_b16/B4 , \U15/U_SPI/sel1_b16/B5 );
  or \U15/U_SPI/sel1_b16/or_or_B0_or_B1_B2_o_  (\U15/U_SPI/sh_next [16], \U15/U_SPI/sel1_b16/or_B0_or_B1_B2_o_o , \U15/U_SPI/sel1_b16/or_B3_or_B4_B5_o_o );
  and \U15/U_SPI/sel1_b17/and_b0_0  (\U15/U_SPI/sel1_b17/B0 , \U15/U_SPI/sh_reg [17], \U15/U_SPI/n27 );
  and \U15/U_SPI/sel1_b17/and_b0_1  (\U15/U_SPI/sel1_b17/B1 , \U15/U_SPI/di_reg [16], \U15/U_SPI/n26 );
  and \U15/U_SPI/sel1_b17/and_b0_2  (\U15/U_SPI/sel1_b17/B2 , \U15/U_SPI/n16 [17], \U15/U_SPI/n25 );
  and \U15/U_SPI/sel1_b17/and_b0_3  (\U15/U_SPI/sel1_b17/B3 , \U15/U_SPI/sh_reg [16], \U15/U_SPI/n24 );
  and \U15/U_SPI/sel1_b17/and_b0_4  (\U15/U_SPI/sel1_b17/B4 , \U15/U_SPI/sh_reg [16], \U15/U_SPI/n21 );
  and \U15/U_SPI/sel1_b17/and_b0_5  (\U15/U_SPI/sel1_b17/B5 , \U15/U_SPI/sh_reg [16], \U15/U_SPI/n18 );
  or \U15/U_SPI/sel1_b17/or_B0_or_B1_B2_o  (\U15/U_SPI/sel1_b17/or_B0_or_B1_B2_o_o , \U15/U_SPI/sel1_b17/B0 , \U15/U_SPI/sel1_b17/or_B1_B2_o );
  or \U15/U_SPI/sel1_b17/or_B1_B2  (\U15/U_SPI/sel1_b17/or_B1_B2_o , \U15/U_SPI/sel1_b17/B1 , \U15/U_SPI/sel1_b17/B2 );
  or \U15/U_SPI/sel1_b17/or_B3_or_B4_B5_o  (\U15/U_SPI/sel1_b17/or_B3_or_B4_B5_o_o , \U15/U_SPI/sel1_b17/B3 , \U15/U_SPI/sel1_b17/or_B4_B5_o );
  or \U15/U_SPI/sel1_b17/or_B4_B5  (\U15/U_SPI/sel1_b17/or_B4_B5_o , \U15/U_SPI/sel1_b17/B4 , \U15/U_SPI/sel1_b17/B5 );
  or \U15/U_SPI/sel1_b17/or_or_B0_or_B1_B2_o_  (\U15/U_SPI/sh_next [17], \U15/U_SPI/sel1_b17/or_B0_or_B1_B2_o_o , \U15/U_SPI/sel1_b17/or_B3_or_B4_B5_o_o );
  and \U15/U_SPI/sel1_b18/and_b0_0  (\U15/U_SPI/sel1_b18/B0 , \U15/U_SPI/sh_reg [18], \U15/U_SPI/n27 );
  and \U15/U_SPI/sel1_b18/and_b0_1  (\U15/U_SPI/sel1_b18/B1 , \U15/U_SPI/di_reg [17], \U15/U_SPI/n26 );
  and \U15/U_SPI/sel1_b18/and_b0_2  (\U15/U_SPI/sel1_b18/B2 , \U15/U_SPI/n16 [18], \U15/U_SPI/n25 );
  and \U15/U_SPI/sel1_b18/and_b0_3  (\U15/U_SPI/sel1_b18/B3 , \U15/U_SPI/sh_reg [17], \U15/U_SPI/n24 );
  and \U15/U_SPI/sel1_b18/and_b0_4  (\U15/U_SPI/sel1_b18/B4 , \U15/U_SPI/sh_reg [17], \U15/U_SPI/n21 );
  and \U15/U_SPI/sel1_b18/and_b0_5  (\U15/U_SPI/sel1_b18/B5 , \U15/U_SPI/sh_reg [17], \U15/U_SPI/n18 );
  or \U15/U_SPI/sel1_b18/or_B0_or_B1_B2_o  (\U15/U_SPI/sel1_b18/or_B0_or_B1_B2_o_o , \U15/U_SPI/sel1_b18/B0 , \U15/U_SPI/sel1_b18/or_B1_B2_o );
  or \U15/U_SPI/sel1_b18/or_B1_B2  (\U15/U_SPI/sel1_b18/or_B1_B2_o , \U15/U_SPI/sel1_b18/B1 , \U15/U_SPI/sel1_b18/B2 );
  or \U15/U_SPI/sel1_b18/or_B3_or_B4_B5_o  (\U15/U_SPI/sel1_b18/or_B3_or_B4_B5_o_o , \U15/U_SPI/sel1_b18/B3 , \U15/U_SPI/sel1_b18/or_B4_B5_o );
  or \U15/U_SPI/sel1_b18/or_B4_B5  (\U15/U_SPI/sel1_b18/or_B4_B5_o , \U15/U_SPI/sel1_b18/B4 , \U15/U_SPI/sel1_b18/B5 );
  or \U15/U_SPI/sel1_b18/or_or_B0_or_B1_B2_o_  (\U15/U_SPI/sh_next [18], \U15/U_SPI/sel1_b18/or_B0_or_B1_B2_o_o , \U15/U_SPI/sel1_b18/or_B3_or_B4_B5_o_o );
  and \U15/U_SPI/sel1_b19/and_b0_0  (\U15/U_SPI/sel1_b19/B0 , \U15/U_SPI/sh_reg [19], \U15/U_SPI/n27 );
  and \U15/U_SPI/sel1_b19/and_b0_1  (\U15/U_SPI/sel1_b19/B1 , \U15/U_SPI/di_reg [18], \U15/U_SPI/n26 );
  and \U15/U_SPI/sel1_b19/and_b0_2  (\U15/U_SPI/sel1_b19/B2 , \U15/U_SPI/n16 [19], \U15/U_SPI/n25 );
  and \U15/U_SPI/sel1_b19/and_b0_3  (\U15/U_SPI/sel1_b19/B3 , \U15/U_SPI/sh_reg [18], \U15/U_SPI/n24 );
  and \U15/U_SPI/sel1_b19/and_b0_4  (\U15/U_SPI/sel1_b19/B4 , \U15/U_SPI/sh_reg [18], \U15/U_SPI/n21 );
  and \U15/U_SPI/sel1_b19/and_b0_5  (\U15/U_SPI/sel1_b19/B5 , \U15/U_SPI/sh_reg [18], \U15/U_SPI/n18 );
  or \U15/U_SPI/sel1_b19/or_B0_or_B1_B2_o  (\U15/U_SPI/sel1_b19/or_B0_or_B1_B2_o_o , \U15/U_SPI/sel1_b19/B0 , \U15/U_SPI/sel1_b19/or_B1_B2_o );
  or \U15/U_SPI/sel1_b19/or_B1_B2  (\U15/U_SPI/sel1_b19/or_B1_B2_o , \U15/U_SPI/sel1_b19/B1 , \U15/U_SPI/sel1_b19/B2 );
  or \U15/U_SPI/sel1_b19/or_B3_or_B4_B5_o  (\U15/U_SPI/sel1_b19/or_B3_or_B4_B5_o_o , \U15/U_SPI/sel1_b19/B3 , \U15/U_SPI/sel1_b19/or_B4_B5_o );
  or \U15/U_SPI/sel1_b19/or_B4_B5  (\U15/U_SPI/sel1_b19/or_B4_B5_o , \U15/U_SPI/sel1_b19/B4 , \U15/U_SPI/sel1_b19/B5 );
  or \U15/U_SPI/sel1_b19/or_or_B0_or_B1_B2_o_  (\U15/U_SPI/sh_next [19], \U15/U_SPI/sel1_b19/or_B0_or_B1_B2_o_o , \U15/U_SPI/sel1_b19/or_B3_or_B4_B5_o_o );
  and \U15/U_SPI/sel1_b2/and_b0_0  (\U15/U_SPI/sel1_b2/B0 , \U15/U_SPI/sh_reg [2], \U15/U_SPI/n27 );
  and \U15/U_SPI/sel1_b2/and_b0_1  (\U15/U_SPI/sel1_b2/B1 , \U15/U_SPI/di_reg [1], \U15/U_SPI/n26 );
  and \U15/U_SPI/sel1_b2/and_b0_2  (\U15/U_SPI/sel1_b2/B2 , \U15/U_SPI/n16 [2], \U15/U_SPI/n25 );
  and \U15/U_SPI/sel1_b2/and_b0_3  (\U15/U_SPI/sel1_b2/B3 , \U15/U_SPI/sh_reg [1], \U15/U_SPI/n24 );
  and \U15/U_SPI/sel1_b2/and_b0_4  (\U15/U_SPI/sel1_b2/B4 , \U15/U_SPI/sh_reg [1], \U15/U_SPI/n21 );
  and \U15/U_SPI/sel1_b2/and_b0_5  (\U15/U_SPI/sel1_b2/B5 , \U15/U_SPI/sh_reg [1], \U15/U_SPI/n18 );
  or \U15/U_SPI/sel1_b2/or_B0_or_B1_B2_o  (\U15/U_SPI/sel1_b2/or_B0_or_B1_B2_o_o , \U15/U_SPI/sel1_b2/B0 , \U15/U_SPI/sel1_b2/or_B1_B2_o );
  or \U15/U_SPI/sel1_b2/or_B1_B2  (\U15/U_SPI/sel1_b2/or_B1_B2_o , \U15/U_SPI/sel1_b2/B1 , \U15/U_SPI/sel1_b2/B2 );
  or \U15/U_SPI/sel1_b2/or_B3_or_B4_B5_o  (\U15/U_SPI/sel1_b2/or_B3_or_B4_B5_o_o , \U15/U_SPI/sel1_b2/B3 , \U15/U_SPI/sel1_b2/or_B4_B5_o );
  or \U15/U_SPI/sel1_b2/or_B4_B5  (\U15/U_SPI/sel1_b2/or_B4_B5_o , \U15/U_SPI/sel1_b2/B4 , \U15/U_SPI/sel1_b2/B5 );
  or \U15/U_SPI/sel1_b2/or_or_B0_or_B1_B2_o_  (\U15/U_SPI/sh_next [2], \U15/U_SPI/sel1_b2/or_B0_or_B1_B2_o_o , \U15/U_SPI/sel1_b2/or_B3_or_B4_B5_o_o );
  and \U15/U_SPI/sel1_b20/and_b0_0  (\U15/U_SPI/sel1_b20/B0 , \U15/U_SPI/sh_reg [20], \U15/U_SPI/n27 );
  and \U15/U_SPI/sel1_b20/and_b0_1  (\U15/U_SPI/sel1_b20/B1 , \U15/U_SPI/di_reg [19], \U15/U_SPI/n26 );
  and \U15/U_SPI/sel1_b20/and_b0_2  (\U15/U_SPI/sel1_b20/B2 , \U15/U_SPI/n16 [20], \U15/U_SPI/n25 );
  and \U15/U_SPI/sel1_b20/and_b0_3  (\U15/U_SPI/sel1_b20/B3 , \U15/U_SPI/sh_reg [19], \U15/U_SPI/n24 );
  and \U15/U_SPI/sel1_b20/and_b0_4  (\U15/U_SPI/sel1_b20/B4 , \U15/U_SPI/sh_reg [19], \U15/U_SPI/n21 );
  and \U15/U_SPI/sel1_b20/and_b0_5  (\U15/U_SPI/sel1_b20/B5 , \U15/U_SPI/sh_reg [19], \U15/U_SPI/n18 );
  or \U15/U_SPI/sel1_b20/or_B0_or_B1_B2_o  (\U15/U_SPI/sel1_b20/or_B0_or_B1_B2_o_o , \U15/U_SPI/sel1_b20/B0 , \U15/U_SPI/sel1_b20/or_B1_B2_o );
  or \U15/U_SPI/sel1_b20/or_B1_B2  (\U15/U_SPI/sel1_b20/or_B1_B2_o , \U15/U_SPI/sel1_b20/B1 , \U15/U_SPI/sel1_b20/B2 );
  or \U15/U_SPI/sel1_b20/or_B3_or_B4_B5_o  (\U15/U_SPI/sel1_b20/or_B3_or_B4_B5_o_o , \U15/U_SPI/sel1_b20/B3 , \U15/U_SPI/sel1_b20/or_B4_B5_o );
  or \U15/U_SPI/sel1_b20/or_B4_B5  (\U15/U_SPI/sel1_b20/or_B4_B5_o , \U15/U_SPI/sel1_b20/B4 , \U15/U_SPI/sel1_b20/B5 );
  or \U15/U_SPI/sel1_b20/or_or_B0_or_B1_B2_o_  (\U15/U_SPI/sh_next [20], \U15/U_SPI/sel1_b20/or_B0_or_B1_B2_o_o , \U15/U_SPI/sel1_b20/or_B3_or_B4_B5_o_o );
  and \U15/U_SPI/sel1_b21/and_b0_0  (\U15/U_SPI/sel1_b21/B0 , \U15/U_SPI/sh_reg [21], \U15/U_SPI/n27 );
  and \U15/U_SPI/sel1_b21/and_b0_1  (\U15/U_SPI/sel1_b21/B1 , \U15/U_SPI/di_reg [20], \U15/U_SPI/n26 );
  and \U15/U_SPI/sel1_b21/and_b0_2  (\U15/U_SPI/sel1_b21/B2 , \U15/U_SPI/n16 [21], \U15/U_SPI/n25 );
  and \U15/U_SPI/sel1_b21/and_b0_3  (\U15/U_SPI/sel1_b21/B3 , \U15/U_SPI/sh_reg [20], \U15/U_SPI/n24 );
  and \U15/U_SPI/sel1_b21/and_b0_4  (\U15/U_SPI/sel1_b21/B4 , \U15/U_SPI/sh_reg [20], \U15/U_SPI/n21 );
  and \U15/U_SPI/sel1_b21/and_b0_5  (\U15/U_SPI/sel1_b21/B5 , \U15/U_SPI/sh_reg [20], \U15/U_SPI/n18 );
  or \U15/U_SPI/sel1_b21/or_B0_or_B1_B2_o  (\U15/U_SPI/sel1_b21/or_B0_or_B1_B2_o_o , \U15/U_SPI/sel1_b21/B0 , \U15/U_SPI/sel1_b21/or_B1_B2_o );
  or \U15/U_SPI/sel1_b21/or_B1_B2  (\U15/U_SPI/sel1_b21/or_B1_B2_o , \U15/U_SPI/sel1_b21/B1 , \U15/U_SPI/sel1_b21/B2 );
  or \U15/U_SPI/sel1_b21/or_B3_or_B4_B5_o  (\U15/U_SPI/sel1_b21/or_B3_or_B4_B5_o_o , \U15/U_SPI/sel1_b21/B3 , \U15/U_SPI/sel1_b21/or_B4_B5_o );
  or \U15/U_SPI/sel1_b21/or_B4_B5  (\U15/U_SPI/sel1_b21/or_B4_B5_o , \U15/U_SPI/sel1_b21/B4 , \U15/U_SPI/sel1_b21/B5 );
  or \U15/U_SPI/sel1_b21/or_or_B0_or_B1_B2_o_  (\U15/U_SPI/sh_next [21], \U15/U_SPI/sel1_b21/or_B0_or_B1_B2_o_o , \U15/U_SPI/sel1_b21/or_B3_or_B4_B5_o_o );
  and \U15/U_SPI/sel1_b22/and_b0_0  (\U15/U_SPI/sel1_b22/B0 , \U15/U_SPI/sh_reg [22], \U15/U_SPI/n27 );
  and \U15/U_SPI/sel1_b22/and_b0_1  (\U15/U_SPI/sel1_b22/B1 , \U15/U_SPI/di_reg [21], \U15/U_SPI/n26 );
  and \U15/U_SPI/sel1_b22/and_b0_2  (\U15/U_SPI/sel1_b22/B2 , \U15/U_SPI/n16 [22], \U15/U_SPI/n25 );
  and \U15/U_SPI/sel1_b22/and_b0_3  (\U15/U_SPI/sel1_b22/B3 , \U15/U_SPI/sh_reg [21], \U15/U_SPI/n24 );
  and \U15/U_SPI/sel1_b22/and_b0_4  (\U15/U_SPI/sel1_b22/B4 , \U15/U_SPI/sh_reg [21], \U15/U_SPI/n21 );
  and \U15/U_SPI/sel1_b22/and_b0_5  (\U15/U_SPI/sel1_b22/B5 , \U15/U_SPI/sh_reg [21], \U15/U_SPI/n18 );
  or \U15/U_SPI/sel1_b22/or_B0_or_B1_B2_o  (\U15/U_SPI/sel1_b22/or_B0_or_B1_B2_o_o , \U15/U_SPI/sel1_b22/B0 , \U15/U_SPI/sel1_b22/or_B1_B2_o );
  or \U15/U_SPI/sel1_b22/or_B1_B2  (\U15/U_SPI/sel1_b22/or_B1_B2_o , \U15/U_SPI/sel1_b22/B1 , \U15/U_SPI/sel1_b22/B2 );
  or \U15/U_SPI/sel1_b22/or_B3_or_B4_B5_o  (\U15/U_SPI/sel1_b22/or_B3_or_B4_B5_o_o , \U15/U_SPI/sel1_b22/B3 , \U15/U_SPI/sel1_b22/or_B4_B5_o );
  or \U15/U_SPI/sel1_b22/or_B4_B5  (\U15/U_SPI/sel1_b22/or_B4_B5_o , \U15/U_SPI/sel1_b22/B4 , \U15/U_SPI/sel1_b22/B5 );
  or \U15/U_SPI/sel1_b22/or_or_B0_or_B1_B2_o_  (\U15/U_SPI/sh_next [22], \U15/U_SPI/sel1_b22/or_B0_or_B1_B2_o_o , \U15/U_SPI/sel1_b22/or_B3_or_B4_B5_o_o );
  and \U15/U_SPI/sel1_b23/and_b0_0  (\U15/U_SPI/sel1_b23/B0 , \U15/U_SPI/sh_reg [23], \U15/U_SPI/n27 );
  and \U15/U_SPI/sel1_b23/and_b0_1  (\U15/U_SPI/sel1_b23/B1 , \U15/U_SPI/di_reg [22], \U15/U_SPI/n26 );
  and \U15/U_SPI/sel1_b23/and_b0_2  (\U15/U_SPI/sel1_b23/B2 , \U15/U_SPI/n16 [23], \U15/U_SPI/n25 );
  and \U15/U_SPI/sel1_b23/and_b0_3  (\U15/U_SPI/sel1_b23/B3 , \U15/U_SPI/sh_reg [22], \U15/U_SPI/n24 );
  and \U15/U_SPI/sel1_b23/and_b0_4  (\U15/U_SPI/sel1_b23/B4 , \U15/U_SPI/sh_reg [22], \U15/U_SPI/n21 );
  and \U15/U_SPI/sel1_b23/and_b0_5  (\U15/U_SPI/sel1_b23/B5 , \U15/U_SPI/sh_reg [22], \U15/U_SPI/n18 );
  or \U15/U_SPI/sel1_b23/or_B0_or_B1_B2_o  (\U15/U_SPI/sel1_b23/or_B0_or_B1_B2_o_o , \U15/U_SPI/sel1_b23/B0 , \U15/U_SPI/sel1_b23/or_B1_B2_o );
  or \U15/U_SPI/sel1_b23/or_B1_B2  (\U15/U_SPI/sel1_b23/or_B1_B2_o , \U15/U_SPI/sel1_b23/B1 , \U15/U_SPI/sel1_b23/B2 );
  or \U15/U_SPI/sel1_b23/or_B3_or_B4_B5_o  (\U15/U_SPI/sel1_b23/or_B3_or_B4_B5_o_o , \U15/U_SPI/sel1_b23/B3 , \U15/U_SPI/sel1_b23/or_B4_B5_o );
  or \U15/U_SPI/sel1_b23/or_B4_B5  (\U15/U_SPI/sel1_b23/or_B4_B5_o , \U15/U_SPI/sel1_b23/B4 , \U15/U_SPI/sel1_b23/B5 );
  or \U15/U_SPI/sel1_b23/or_or_B0_or_B1_B2_o_  (\U15/U_SPI/sh_next [23], \U15/U_SPI/sel1_b23/or_B0_or_B1_B2_o_o , \U15/U_SPI/sel1_b23/or_B3_or_B4_B5_o_o );
  and \U15/U_SPI/sel1_b3/and_b0_0  (\U15/U_SPI/sel1_b3/B0 , \U15/U_SPI/sh_reg [3], \U15/U_SPI/n27 );
  and \U15/U_SPI/sel1_b3/and_b0_1  (\U15/U_SPI/sel1_b3/B1 , \U15/U_SPI/di_reg [2], \U15/U_SPI/n26 );
  and \U15/U_SPI/sel1_b3/and_b0_2  (\U15/U_SPI/sel1_b3/B2 , \U15/U_SPI/n16 [3], \U15/U_SPI/n25 );
  and \U15/U_SPI/sel1_b3/and_b0_3  (\U15/U_SPI/sel1_b3/B3 , \U15/U_SPI/sh_reg [2], \U15/U_SPI/n24 );
  and \U15/U_SPI/sel1_b3/and_b0_4  (\U15/U_SPI/sel1_b3/B4 , \U15/U_SPI/sh_reg [2], \U15/U_SPI/n21 );
  and \U15/U_SPI/sel1_b3/and_b0_5  (\U15/U_SPI/sel1_b3/B5 , \U15/U_SPI/sh_reg [2], \U15/U_SPI/n18 );
  or \U15/U_SPI/sel1_b3/or_B0_or_B1_B2_o  (\U15/U_SPI/sel1_b3/or_B0_or_B1_B2_o_o , \U15/U_SPI/sel1_b3/B0 , \U15/U_SPI/sel1_b3/or_B1_B2_o );
  or \U15/U_SPI/sel1_b3/or_B1_B2  (\U15/U_SPI/sel1_b3/or_B1_B2_o , \U15/U_SPI/sel1_b3/B1 , \U15/U_SPI/sel1_b3/B2 );
  or \U15/U_SPI/sel1_b3/or_B3_or_B4_B5_o  (\U15/U_SPI/sel1_b3/or_B3_or_B4_B5_o_o , \U15/U_SPI/sel1_b3/B3 , \U15/U_SPI/sel1_b3/or_B4_B5_o );
  or \U15/U_SPI/sel1_b3/or_B4_B5  (\U15/U_SPI/sel1_b3/or_B4_B5_o , \U15/U_SPI/sel1_b3/B4 , \U15/U_SPI/sel1_b3/B5 );
  or \U15/U_SPI/sel1_b3/or_or_B0_or_B1_B2_o_  (\U15/U_SPI/sh_next [3], \U15/U_SPI/sel1_b3/or_B0_or_B1_B2_o_o , \U15/U_SPI/sel1_b3/or_B3_or_B4_B5_o_o );
  and \U15/U_SPI/sel1_b4/and_b0_0  (\U15/U_SPI/sel1_b4/B0 , \U15/U_SPI/sh_reg [4], \U15/U_SPI/n27 );
  and \U15/U_SPI/sel1_b4/and_b0_1  (\U15/U_SPI/sel1_b4/B1 , \U15/U_SPI/di_reg [3], \U15/U_SPI/n26 );
  and \U15/U_SPI/sel1_b4/and_b0_2  (\U15/U_SPI/sel1_b4/B2 , \U15/U_SPI/n16 [4], \U15/U_SPI/n25 );
  and \U15/U_SPI/sel1_b4/and_b0_3  (\U15/U_SPI/sel1_b4/B3 , \U15/U_SPI/sh_reg [3], \U15/U_SPI/n24 );
  and \U15/U_SPI/sel1_b4/and_b0_4  (\U15/U_SPI/sel1_b4/B4 , \U15/U_SPI/sh_reg [3], \U15/U_SPI/n21 );
  and \U15/U_SPI/sel1_b4/and_b0_5  (\U15/U_SPI/sel1_b4/B5 , \U15/U_SPI/sh_reg [3], \U15/U_SPI/n18 );
  or \U15/U_SPI/sel1_b4/or_B0_or_B1_B2_o  (\U15/U_SPI/sel1_b4/or_B0_or_B1_B2_o_o , \U15/U_SPI/sel1_b4/B0 , \U15/U_SPI/sel1_b4/or_B1_B2_o );
  or \U15/U_SPI/sel1_b4/or_B1_B2  (\U15/U_SPI/sel1_b4/or_B1_B2_o , \U15/U_SPI/sel1_b4/B1 , \U15/U_SPI/sel1_b4/B2 );
  or \U15/U_SPI/sel1_b4/or_B3_or_B4_B5_o  (\U15/U_SPI/sel1_b4/or_B3_or_B4_B5_o_o , \U15/U_SPI/sel1_b4/B3 , \U15/U_SPI/sel1_b4/or_B4_B5_o );
  or \U15/U_SPI/sel1_b4/or_B4_B5  (\U15/U_SPI/sel1_b4/or_B4_B5_o , \U15/U_SPI/sel1_b4/B4 , \U15/U_SPI/sel1_b4/B5 );
  or \U15/U_SPI/sel1_b4/or_or_B0_or_B1_B2_o_  (\U15/U_SPI/sh_next [4], \U15/U_SPI/sel1_b4/or_B0_or_B1_B2_o_o , \U15/U_SPI/sel1_b4/or_B3_or_B4_B5_o_o );
  and \U15/U_SPI/sel1_b5/and_b0_0  (\U15/U_SPI/sel1_b5/B0 , \U15/U_SPI/sh_reg [5], \U15/U_SPI/n27 );
  and \U15/U_SPI/sel1_b5/and_b0_1  (\U15/U_SPI/sel1_b5/B1 , \U15/U_SPI/di_reg [4], \U15/U_SPI/n26 );
  and \U15/U_SPI/sel1_b5/and_b0_2  (\U15/U_SPI/sel1_b5/B2 , \U15/U_SPI/n16 [5], \U15/U_SPI/n25 );
  and \U15/U_SPI/sel1_b5/and_b0_3  (\U15/U_SPI/sel1_b5/B3 , \U15/U_SPI/sh_reg [4], \U15/U_SPI/n24 );
  and \U15/U_SPI/sel1_b5/and_b0_4  (\U15/U_SPI/sel1_b5/B4 , \U15/U_SPI/sh_reg [4], \U15/U_SPI/n21 );
  and \U15/U_SPI/sel1_b5/and_b0_5  (\U15/U_SPI/sel1_b5/B5 , \U15/U_SPI/sh_reg [4], \U15/U_SPI/n18 );
  or \U15/U_SPI/sel1_b5/or_B0_or_B1_B2_o  (\U15/U_SPI/sel1_b5/or_B0_or_B1_B2_o_o , \U15/U_SPI/sel1_b5/B0 , \U15/U_SPI/sel1_b5/or_B1_B2_o );
  or \U15/U_SPI/sel1_b5/or_B1_B2  (\U15/U_SPI/sel1_b5/or_B1_B2_o , \U15/U_SPI/sel1_b5/B1 , \U15/U_SPI/sel1_b5/B2 );
  or \U15/U_SPI/sel1_b5/or_B3_or_B4_B5_o  (\U15/U_SPI/sel1_b5/or_B3_or_B4_B5_o_o , \U15/U_SPI/sel1_b5/B3 , \U15/U_SPI/sel1_b5/or_B4_B5_o );
  or \U15/U_SPI/sel1_b5/or_B4_B5  (\U15/U_SPI/sel1_b5/or_B4_B5_o , \U15/U_SPI/sel1_b5/B4 , \U15/U_SPI/sel1_b5/B5 );
  or \U15/U_SPI/sel1_b5/or_or_B0_or_B1_B2_o_  (\U15/U_SPI/sh_next [5], \U15/U_SPI/sel1_b5/or_B0_or_B1_B2_o_o , \U15/U_SPI/sel1_b5/or_B3_or_B4_B5_o_o );
  and \U15/U_SPI/sel1_b6/and_b0_0  (\U15/U_SPI/sel1_b6/B0 , \U15/U_SPI/sh_reg [6], \U15/U_SPI/n27 );
  and \U15/U_SPI/sel1_b6/and_b0_1  (\U15/U_SPI/sel1_b6/B1 , \U15/U_SPI/di_reg [5], \U15/U_SPI/n26 );
  and \U15/U_SPI/sel1_b6/and_b0_2  (\U15/U_SPI/sel1_b6/B2 , \U15/U_SPI/n16 [6], \U15/U_SPI/n25 );
  and \U15/U_SPI/sel1_b6/and_b0_3  (\U15/U_SPI/sel1_b6/B3 , \U15/U_SPI/sh_reg [5], \U15/U_SPI/n24 );
  and \U15/U_SPI/sel1_b6/and_b0_4  (\U15/U_SPI/sel1_b6/B4 , \U15/U_SPI/sh_reg [5], \U15/U_SPI/n21 );
  and \U15/U_SPI/sel1_b6/and_b0_5  (\U15/U_SPI/sel1_b6/B5 , \U15/U_SPI/sh_reg [5], \U15/U_SPI/n18 );
  or \U15/U_SPI/sel1_b6/or_B0_or_B1_B2_o  (\U15/U_SPI/sel1_b6/or_B0_or_B1_B2_o_o , \U15/U_SPI/sel1_b6/B0 , \U15/U_SPI/sel1_b6/or_B1_B2_o );
  or \U15/U_SPI/sel1_b6/or_B1_B2  (\U15/U_SPI/sel1_b6/or_B1_B2_o , \U15/U_SPI/sel1_b6/B1 , \U15/U_SPI/sel1_b6/B2 );
  or \U15/U_SPI/sel1_b6/or_B3_or_B4_B5_o  (\U15/U_SPI/sel1_b6/or_B3_or_B4_B5_o_o , \U15/U_SPI/sel1_b6/B3 , \U15/U_SPI/sel1_b6/or_B4_B5_o );
  or \U15/U_SPI/sel1_b6/or_B4_B5  (\U15/U_SPI/sel1_b6/or_B4_B5_o , \U15/U_SPI/sel1_b6/B4 , \U15/U_SPI/sel1_b6/B5 );
  or \U15/U_SPI/sel1_b6/or_or_B0_or_B1_B2_o_  (\U15/U_SPI/sh_next [6], \U15/U_SPI/sel1_b6/or_B0_or_B1_B2_o_o , \U15/U_SPI/sel1_b6/or_B3_or_B4_B5_o_o );
  and \U15/U_SPI/sel1_b7/and_b0_0  (\U15/U_SPI/sel1_b7/B0 , \U15/U_SPI/sh_reg [7], \U15/U_SPI/n27 );
  and \U15/U_SPI/sel1_b7/and_b0_1  (\U15/U_SPI/sel1_b7/B1 , \U15/U_SPI/di_reg [6], \U15/U_SPI/n26 );
  and \U15/U_SPI/sel1_b7/and_b0_2  (\U15/U_SPI/sel1_b7/B2 , \U15/U_SPI/n16 [7], \U15/U_SPI/n25 );
  and \U15/U_SPI/sel1_b7/and_b0_3  (\U15/U_SPI/sel1_b7/B3 , \U15/U_SPI/sh_reg [6], \U15/U_SPI/n24 );
  and \U15/U_SPI/sel1_b7/and_b0_4  (\U15/U_SPI/sel1_b7/B4 , \U15/U_SPI/sh_reg [6], \U15/U_SPI/n21 );
  and \U15/U_SPI/sel1_b7/and_b0_5  (\U15/U_SPI/sel1_b7/B5 , \U15/U_SPI/sh_reg [6], \U15/U_SPI/n18 );
  or \U15/U_SPI/sel1_b7/or_B0_or_B1_B2_o  (\U15/U_SPI/sel1_b7/or_B0_or_B1_B2_o_o , \U15/U_SPI/sel1_b7/B0 , \U15/U_SPI/sel1_b7/or_B1_B2_o );
  or \U15/U_SPI/sel1_b7/or_B1_B2  (\U15/U_SPI/sel1_b7/or_B1_B2_o , \U15/U_SPI/sel1_b7/B1 , \U15/U_SPI/sel1_b7/B2 );
  or \U15/U_SPI/sel1_b7/or_B3_or_B4_B5_o  (\U15/U_SPI/sel1_b7/or_B3_or_B4_B5_o_o , \U15/U_SPI/sel1_b7/B3 , \U15/U_SPI/sel1_b7/or_B4_B5_o );
  or \U15/U_SPI/sel1_b7/or_B4_B5  (\U15/U_SPI/sel1_b7/or_B4_B5_o , \U15/U_SPI/sel1_b7/B4 , \U15/U_SPI/sel1_b7/B5 );
  or \U15/U_SPI/sel1_b7/or_or_B0_or_B1_B2_o_  (\U15/U_SPI/sh_next [7], \U15/U_SPI/sel1_b7/or_B0_or_B1_B2_o_o , \U15/U_SPI/sel1_b7/or_B3_or_B4_B5_o_o );
  and \U15/U_SPI/sel1_b8/and_b0_0  (\U15/U_SPI/sel1_b8/B0 , \U15/U_SPI/sh_reg [8], \U15/U_SPI/n27 );
  and \U15/U_SPI/sel1_b8/and_b0_1  (\U15/U_SPI/sel1_b8/B1 , \U15/U_SPI/di_reg [7], \U15/U_SPI/n26 );
  and \U15/U_SPI/sel1_b8/and_b0_2  (\U15/U_SPI/sel1_b8/B2 , \U15/U_SPI/n16 [8], \U15/U_SPI/n25 );
  and \U15/U_SPI/sel1_b8/and_b0_3  (\U15/U_SPI/sel1_b8/B3 , \U15/U_SPI/sh_reg [7], \U15/U_SPI/n24 );
  and \U15/U_SPI/sel1_b8/and_b0_4  (\U15/U_SPI/sel1_b8/B4 , \U15/U_SPI/sh_reg [7], \U15/U_SPI/n21 );
  and \U15/U_SPI/sel1_b8/and_b0_5  (\U15/U_SPI/sel1_b8/B5 , \U15/U_SPI/sh_reg [7], \U15/U_SPI/n18 );
  or \U15/U_SPI/sel1_b8/or_B0_or_B1_B2_o  (\U15/U_SPI/sel1_b8/or_B0_or_B1_B2_o_o , \U15/U_SPI/sel1_b8/B0 , \U15/U_SPI/sel1_b8/or_B1_B2_o );
  or \U15/U_SPI/sel1_b8/or_B1_B2  (\U15/U_SPI/sel1_b8/or_B1_B2_o , \U15/U_SPI/sel1_b8/B1 , \U15/U_SPI/sel1_b8/B2 );
  or \U15/U_SPI/sel1_b8/or_B3_or_B4_B5_o  (\U15/U_SPI/sel1_b8/or_B3_or_B4_B5_o_o , \U15/U_SPI/sel1_b8/B3 , \U15/U_SPI/sel1_b8/or_B4_B5_o );
  or \U15/U_SPI/sel1_b8/or_B4_B5  (\U15/U_SPI/sel1_b8/or_B4_B5_o , \U15/U_SPI/sel1_b8/B4 , \U15/U_SPI/sel1_b8/B5 );
  or \U15/U_SPI/sel1_b8/or_or_B0_or_B1_B2_o_  (\U15/U_SPI/sh_next [8], \U15/U_SPI/sel1_b8/or_B0_or_B1_B2_o_o , \U15/U_SPI/sel1_b8/or_B3_or_B4_B5_o_o );
  and \U15/U_SPI/sel1_b9/and_b0_0  (\U15/U_SPI/sel1_b9/B0 , \U15/U_SPI/sh_reg [9], \U15/U_SPI/n27 );
  and \U15/U_SPI/sel1_b9/and_b0_1  (\U15/U_SPI/sel1_b9/B1 , \U15/U_SPI/di_reg [8], \U15/U_SPI/n26 );
  and \U15/U_SPI/sel1_b9/and_b0_2  (\U15/U_SPI/sel1_b9/B2 , \U15/U_SPI/n16 [9], \U15/U_SPI/n25 );
  and \U15/U_SPI/sel1_b9/and_b0_3  (\U15/U_SPI/sel1_b9/B3 , \U15/U_SPI/sh_reg [8], \U15/U_SPI/n24 );
  and \U15/U_SPI/sel1_b9/and_b0_4  (\U15/U_SPI/sel1_b9/B4 , \U15/U_SPI/sh_reg [8], \U15/U_SPI/n21 );
  and \U15/U_SPI/sel1_b9/and_b0_5  (\U15/U_SPI/sel1_b9/B5 , \U15/U_SPI/sh_reg [8], \U15/U_SPI/n18 );
  or \U15/U_SPI/sel1_b9/or_B0_or_B1_B2_o  (\U15/U_SPI/sel1_b9/or_B0_or_B1_B2_o_o , \U15/U_SPI/sel1_b9/B0 , \U15/U_SPI/sel1_b9/or_B1_B2_o );
  or \U15/U_SPI/sel1_b9/or_B1_B2  (\U15/U_SPI/sel1_b9/or_B1_B2_o , \U15/U_SPI/sel1_b9/B1 , \U15/U_SPI/sel1_b9/B2 );
  or \U15/U_SPI/sel1_b9/or_B3_or_B4_B5_o  (\U15/U_SPI/sel1_b9/or_B3_or_B4_B5_o_o , \U15/U_SPI/sel1_b9/B3 , \U15/U_SPI/sel1_b9/or_B4_B5_o );
  or \U15/U_SPI/sel1_b9/or_B4_B5  (\U15/U_SPI/sel1_b9/or_B4_B5_o , \U15/U_SPI/sel1_b9/B4 , \U15/U_SPI/sel1_b9/B5 );
  or \U15/U_SPI/sel1_b9/or_or_B0_or_B1_B2_o_  (\U15/U_SPI/sh_next [9], \U15/U_SPI/sel1_b9/or_B0_or_B1_B2_o_o , \U15/U_SPI/sel1_b9/or_B3_or_B4_B5_o_o );
  and \U15/U_SPI/sel2/and_b0_0  (\U15/U_SPI/sel2/B0 , \U15/U_SPI/n17 , \U15/U_SPI/n26 );
  or \U15/U_SPI/sel2/or_B0_or_B1_B2_o  (\U15/U_SPI/di_req , \U15/U_SPI/sel2/B0 , \U15/U_SPI/n31 );
  and \U15/U_SPI/sel4_b0/and_b0_3  (\U15/U_SPI/sel4_b0/B3 , \U15/U_SPI/n15 [0], \U15/U_SPI/n24 );
  and \U15/U_SPI/sel4_b0/and_b0_4  (\U15/U_SPI/sel4_b0/B4 , \U15/U_SPI/n15 [0], \U15/U_SPI/n21 );
  and \U15/U_SPI/sel4_b0/and_b0_5  (\U15/U_SPI/sel4_b0/B5 , \U15/U_SPI/n15 [0], \U15/U_SPI/n18 );
  or \U15/U_SPI/sel4_b0/or_B3_or_B4_B5_o  (\U15/U_SPI/sel4_b0/or_B3_or_B4_B5_o_o , \U15/U_SPI/sel4_b0/B3 , \U15/U_SPI/sel4_b0/or_B4_B5_o );
  or \U15/U_SPI/sel4_b0/or_B4_B5  (\U15/U_SPI/sel4_b0/or_B4_B5_o , \U15/U_SPI/sel4_b0/B4 , \U15/U_SPI/sel4_b0/B5 );
  or \U15/U_SPI/sel4_b0/or_or_B0_or_B1_B2_o_  (\U15/U_SPI/state_next [0], \U15/U_SPI/n26 , \U15/U_SPI/sel4_b0/or_B3_or_B4_B5_o_o );
  and \U15/U_SPI/sel4_b1/and_b0_3  (\U15/U_SPI/sel4_b1/B3 , \U15/U_SPI/n15 [1], \U15/U_SPI/n24 );
  and \U15/U_SPI/sel4_b1/and_b0_4  (\U15/U_SPI/sel4_b1/B4 , \U15/U_SPI/n15 [1], \U15/U_SPI/n21 );
  and \U15/U_SPI/sel4_b1/and_b0_5  (\U15/U_SPI/sel4_b1/B5 , \U15/U_SPI/n15 [1], \U15/U_SPI/n18 );
  or \U15/U_SPI/sel4_b1/or_B3_or_B4_B5_o  (\U15/U_SPI/sel4_b1/or_B3_or_B4_B5_o_o , \U15/U_SPI/sel4_b1/B3 , \U15/U_SPI/sel4_b1/or_B4_B5_o );
  or \U15/U_SPI/sel4_b1/or_B4_B5  (\U15/U_SPI/sel4_b1/or_B4_B5_o , \U15/U_SPI/sel4_b1/B4 , \U15/U_SPI/sel4_b1/B5 );
  or \U15/U_SPI/sel4_b1/or_or_B0_or_B1_B2_o_  (\U15/U_SPI/state_next [1], \U15/U_SPI/n26 , \U15/U_SPI/sel4_b1/or_B3_or_B4_B5_o_o );
  and \U15/U_SPI/sel4_b2/and_b0_3  (\U15/U_SPI/sel4_b2/B3 , \U15/U_SPI/n15 [2], \U15/U_SPI/n24 );
  and \U15/U_SPI/sel4_b2/and_b0_4  (\U15/U_SPI/sel4_b2/B4 , \U15/U_SPI/n15 [2], \U15/U_SPI/n21 );
  and \U15/U_SPI/sel4_b2/and_b0_5  (\U15/U_SPI/sel4_b2/B5 , \U15/U_SPI/n15 [2], \U15/U_SPI/n18 );
  or \U15/U_SPI/sel4_b2/or_B3_or_B4_B5_o  (\U15/U_SPI/sel4_b2/or_B3_or_B4_B5_o_o , \U15/U_SPI/sel4_b2/B3 , \U15/U_SPI/sel4_b2/or_B4_B5_o );
  or \U15/U_SPI/sel4_b2/or_B4_B5  (\U15/U_SPI/sel4_b2/or_B4_B5_o , \U15/U_SPI/sel4_b2/B4 , \U15/U_SPI/sel4_b2/B5 );
  or \U15/U_SPI/sel4_b2/or_or_B0_or_B1_B2_o_  (\U15/U_SPI/state_next [2], \U15/U_SPI/n26 , \U15/U_SPI/sel4_b2/or_B3_or_B4_B5_o_o );
  and \U15/U_SPI/sel4_b3/and_b0_3  (\U15/U_SPI/sel4_b3/B3 , \U15/U_SPI/n15 [3], \U15/U_SPI/n24 );
  and \U15/U_SPI/sel4_b3/and_b0_4  (\U15/U_SPI/sel4_b3/B4 , \U15/U_SPI/n15 [3], \U15/U_SPI/n21 );
  and \U15/U_SPI/sel4_b3/and_b0_5  (\U15/U_SPI/sel4_b3/B5 , \U15/U_SPI/n15 [3], \U15/U_SPI/n18 );
  or \U15/U_SPI/sel4_b3/or_B3_or_B4_B5_o  (\U15/U_SPI/sel4_b3/or_B3_or_B4_B5_o_o , \U15/U_SPI/sel4_b3/B3 , \U15/U_SPI/sel4_b3/or_B4_B5_o );
  or \U15/U_SPI/sel4_b3/or_B4_B5  (\U15/U_SPI/sel4_b3/or_B4_B5_o , \U15/U_SPI/sel4_b3/B4 , \U15/U_SPI/sel4_b3/B5 );
  or \U15/U_SPI/sel4_b3/or_or_B0_or_B1_B2_o_  (\U15/U_SPI/state_next [3], \U15/U_SPI/n25 , \U15/U_SPI/sel4_b3/or_B3_or_B4_B5_o_o );
  and \U15/U_SPI/sel4_b4/and_b0_3  (\U15/U_SPI/sel4_b4/B3 , \U15/U_SPI/n15 [4], \U15/U_SPI/n24 );
  and \U15/U_SPI/sel4_b4/and_b0_4  (\U15/U_SPI/sel4_b4/B4 , \U15/U_SPI/n15 [4], \U15/U_SPI/n21 );
  and \U15/U_SPI/sel4_b4/and_b0_5  (\U15/U_SPI/sel4_b4/B5 , \U15/U_SPI/n15 [4], \U15/U_SPI/n18 );
  or \U15/U_SPI/sel4_b4/or_B1_B2  (\U15/U_SPI/sel4_b4/or_B1_B2_o , \U15/U_SPI/n26 , \U15/U_SPI/n25 );
  or \U15/U_SPI/sel4_b4/or_B3_or_B4_B5_o  (\U15/U_SPI/sel4_b4/or_B3_or_B4_B5_o_o , \U15/U_SPI/sel4_b4/B3 , \U15/U_SPI/sel4_b4/or_B4_B5_o );
  or \U15/U_SPI/sel4_b4/or_B4_B5  (\U15/U_SPI/sel4_b4/or_B4_B5_o , \U15/U_SPI/sel4_b4/B4 , \U15/U_SPI/sel4_b4/B5 );
  or \U15/U_SPI/sel4_b4/or_or_B0_or_B1_B2_o_  (\U15/U_SPI/state_next [4], \U15/U_SPI/sel4_b4/or_B1_B2_o , \U15/U_SPI/sel4_b4/or_B3_or_B4_B5_o_o );
  and \U15/U_SPI/sel5/and_b0_1  (\U15/U_SPI/sel5/B1 , \U15/U_SPI/wren_o , \U15/U_SPI/n25 );
  or \U15/U_SPI/sel5/or_B0_or_B1_B2_o  (\U15/U_SPI/wren_ack_next , \U15/U_SPI/n26 , \U15/U_SPI/sel5/B1 );
  add_pu5_mu5_o5 \U15/U_SPI/sub0  (
    .i0({\U15/U_SPI/state_dbg_o[4] ,\U15/U_SPI/state_dbg_o[3] ,\U15/U_SPI/state_dbg_o[2] ,\U15/U_SPI/state_dbg_o[1] ,\U15/U_SPI/state_dbg_o[0] }),
    .i1(5'b00001),
    .o(\U15/U_SPI/n15 [4:0]));  // ../../rtl/spi/spi_slave.vhd(309)
  not \U15/U_SPI/u10  (\U15/U_SPI/n10 , \U15/U_SPI/di_req_o_D );  // ../../rtl/spi/spi_slave.vhd(275)
  and \U15/U_SPI/u11  (\U15/U_SPI/di_req_o_next , \U15/U_SPI/n9 , \U15/U_SPI/n10 );  // ../../rtl/spi/spi_slave.vhd(275)
  not \U15/U_SPI/u15  (\U15/U_SPI/n17 , \U15/U_SPI/wren_ack_o );  // ../../rtl/spi/spi_slave.vhd(338)
  nor \U15/U_SPI/u16  (\U15/U_SPI/n21 , \U15/U_SPI/n19 , \U15/U_SPI/n20 );  // ../../rtl/spi/spi_slave.vhd(315)
  nor \U15/U_SPI/u17  (\U15/U_SPI/n24 , \U15/U_SPI/n22 , \U15/U_SPI/n23 );  // ../../rtl/spi/spi_slave.vhd(319)
  or \U15/U_SPI/u19  (\U15/U_SPI/n29 , \U15/U_SPI/n24 , \U15/U_SPI/n27 );  // ../../rtl/spi/spi_slave.vhd(354)
  or \U15/U_SPI/u20  (\U15/U_SPI/n1 , \U15/U_SPI/n21 , \U15/U_SPI/n18 );  // ../../rtl/spi/spi_slave.vhd(354)
  or \U15/U_SPI/u21  (\U15/U_SPI/n31 , \U15/U_SPI/n24 , \U15/U_SPI/n25 );  // ../../rtl/spi/spi_slave.vhd(354)
  AL_MUX \U15/U_SPI/u24  (
    .i0(\U15/U_SPI/sh_reg [23]),
    .i1(\U15/U_SPI/di_reg [23]),
    .sel(\U15/U_SPI/n26 ),
    .o(\U15/spi_miso ));  // ../../rtl/spi/spi_slave.vhd(354)
  and \U15/U_SPI/u6  (\U15/U_SPI/n7 , \U15/U_SPI/do_valid_A , \U15/U_SPI/do_valid_B );  // ../../rtl/spi/spi_slave.vhd(274)
  or \U15/U_SPI/u62  (\U15/U_SPI/n5 , \U15/U_SPI/n24 , \U15/U_SPI/n1 );  // ../../rtl/spi/spi_slave.vhd(354)
  or \U15/U_SPI/u63  (\U15/U_SPI/n6 , \U15/U_SPI/sel4_b4/or_B1_B2_o , \U15/U_SPI/n5 );  // ../../rtl/spi/spi_slave.vhd(354)
  not \U15/U_SPI/u64  (\U15/U_SPI/n27 , \U15/U_SPI/n6 );  // ../../rtl/spi/spi_slave.vhd(354)
  not \U15/U_SPI/u7  (\U15/U_SPI/n8 , \U15/U_SPI/do_valid_D );  // ../../rtl/spi/spi_slave.vhd(274)
  and \U15/U_SPI/u8  (\U15/U_SPI/do_valid_next , \U15/U_SPI/n7 , \U15/U_SPI/n8 );  // ../../rtl/spi/spi_slave.vhd(274)
  and \U15/U_SPI/u9  (\U15/U_SPI/n9 , \U15/U_SPI/di_req_o_A , \U15/U_SPI/di_req_o_B );  // ../../rtl/spi/spi_slave.vhd(275)
  reg_ar_as_w1 \U15/U_SPI/wren_ack_reg_reg  (
    .clk(~AVR_SCK),
    .d(\U15/U_SPI/wren_ack_next ),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U15/U_SPI/wren_ack_o ));  // ../../rtl/spi/spi_slave.vhd(245)
  reg_ar_ss_w1 \U15/U_SPI/wren_reg  (
    .clk(clk_28),
    .d(1'b0),
    .en(\U15/U_SPI/wren_ack_o ),
    .reset(1'b0),
    .set(~\U15/queue_rd_empty ),
    .q(\U15/U_SPI/wren_o ));  // ../../rtl/spi/spi_slave.vhd(293)
  eq_w8 \U15/eq12  (
    .i0(8'b00000001),
    .i1(\U15/spi_do [23:16]),
    .o(\U15/n37 ));  // ../../rtl/avr/avr.vhd(200)
  eq_w8 \U15/eq16  (
    .i0(8'b00100000),
    .i1(\U15/spi_do [23:16]),
    .o(\U15/n41 ));  // ../../rtl/avr/avr.vhd(264)
  eq_w8 \U15/eq5  (
    .i0(8'b00000110),
    .i1(\U15/spi_do [15:8]),
    .o(\U15/n7 ));  // ../../rtl/avr/avr.vhd(208)
  eq_w8 \U15/eq8  (
    .i0(8'b00001001),
    .i1(\U15/spi_do [15:8]),
    .o(\U15/n10 ));  // ../../rtl/avr/avr.vhd(229)
  binary_mux_s1_w1 \U15/mux0_b0  (
    .i0(\U15/queue_do [0]),
    .i1(1'b1),
    .sel(\U15/queue_rd_empty ),
    .o(\U15/spi_di [0]));  // ../../rtl/avr/avr.vhd(188)
  binary_mux_s1_w1 \U15/mux0_b1  (
    .i0(\U15/queue_do [1]),
    .i1(1'b1),
    .sel(\U15/queue_rd_empty ),
    .o(\U15/spi_di [1]));  // ../../rtl/avr/avr.vhd(188)
  binary_mux_s1_w1 \U15/mux0_b10  (
    .i0(\U15/queue_do [10]),
    .i1(1'b1),
    .sel(\U15/queue_rd_empty ),
    .o(\U15/spi_di [10]));  // ../../rtl/avr/avr.vhd(188)
  binary_mux_s1_w1 \U15/mux0_b11  (
    .i0(\U15/queue_do [11]),
    .i1(1'b1),
    .sel(\U15/queue_rd_empty ),
    .o(\U15/spi_di [11]));  // ../../rtl/avr/avr.vhd(188)
  binary_mux_s1_w1 \U15/mux0_b12  (
    .i0(\U15/queue_do [12]),
    .i1(1'b1),
    .sel(\U15/queue_rd_empty ),
    .o(\U15/spi_di [12]));  // ../../rtl/avr/avr.vhd(188)
  binary_mux_s1_w1 \U15/mux0_b13  (
    .i0(\U15/queue_do [13]),
    .i1(1'b1),
    .sel(\U15/queue_rd_empty ),
    .o(\U15/spi_di [13]));  // ../../rtl/avr/avr.vhd(188)
  binary_mux_s1_w1 \U15/mux0_b14  (
    .i0(\U15/queue_do [14]),
    .i1(1'b1),
    .sel(\U15/queue_rd_empty ),
    .o(\U15/spi_di [14]));  // ../../rtl/avr/avr.vhd(188)
  binary_mux_s1_w1 \U15/mux0_b15  (
    .i0(\U15/queue_do [15]),
    .i1(1'b1),
    .sel(\U15/queue_rd_empty ),
    .o(\U15/spi_di [15]));  // ../../rtl/avr/avr.vhd(188)
  binary_mux_s1_w1 \U15/mux0_b16  (
    .i0(\U15/queue_do [16]),
    .i1(1'b1),
    .sel(\U15/queue_rd_empty ),
    .o(\U15/spi_di [16]));  // ../../rtl/avr/avr.vhd(188)
  binary_mux_s1_w1 \U15/mux0_b17  (
    .i0(\U15/queue_do [17]),
    .i1(1'b1),
    .sel(\U15/queue_rd_empty ),
    .o(\U15/spi_di [17]));  // ../../rtl/avr/avr.vhd(188)
  binary_mux_s1_w1 \U15/mux0_b18  (
    .i0(\U15/queue_do [18]),
    .i1(1'b1),
    .sel(\U15/queue_rd_empty ),
    .o(\U15/spi_di [18]));  // ../../rtl/avr/avr.vhd(188)
  binary_mux_s1_w1 \U15/mux0_b19  (
    .i0(\U15/queue_do [19]),
    .i1(1'b1),
    .sel(\U15/queue_rd_empty ),
    .o(\U15/spi_di [19]));  // ../../rtl/avr/avr.vhd(188)
  binary_mux_s1_w1 \U15/mux0_b2  (
    .i0(\U15/queue_do [2]),
    .i1(1'b1),
    .sel(\U15/queue_rd_empty ),
    .o(\U15/spi_di [2]));  // ../../rtl/avr/avr.vhd(188)
  binary_mux_s1_w1 \U15/mux0_b20  (
    .i0(\U15/queue_do [20]),
    .i1(1'b1),
    .sel(\U15/queue_rd_empty ),
    .o(\U15/spi_di [20]));  // ../../rtl/avr/avr.vhd(188)
  binary_mux_s1_w1 \U15/mux0_b21  (
    .i0(\U15/queue_do [21]),
    .i1(1'b1),
    .sel(\U15/queue_rd_empty ),
    .o(\U15/spi_di [21]));  // ../../rtl/avr/avr.vhd(188)
  binary_mux_s1_w1 \U15/mux0_b22  (
    .i0(\U15/queue_do [22]),
    .i1(1'b1),
    .sel(\U15/queue_rd_empty ),
    .o(\U15/spi_di [22]));  // ../../rtl/avr/avr.vhd(188)
  binary_mux_s1_w1 \U15/mux0_b23  (
    .i0(\U15/queue_do [23]),
    .i1(1'b1),
    .sel(\U15/queue_rd_empty ),
    .o(\U15/spi_di [23]));  // ../../rtl/avr/avr.vhd(188)
  binary_mux_s1_w1 \U15/mux0_b3  (
    .i0(\U15/queue_do [3]),
    .i1(1'b1),
    .sel(\U15/queue_rd_empty ),
    .o(\U15/spi_di [3]));  // ../../rtl/avr/avr.vhd(188)
  binary_mux_s1_w1 \U15/mux0_b4  (
    .i0(\U15/queue_do [4]),
    .i1(1'b1),
    .sel(\U15/queue_rd_empty ),
    .o(\U15/spi_di [4]));  // ../../rtl/avr/avr.vhd(188)
  binary_mux_s1_w1 \U15/mux0_b5  (
    .i0(\U15/queue_do [5]),
    .i1(1'b1),
    .sel(\U15/queue_rd_empty ),
    .o(\U15/spi_di [5]));  // ../../rtl/avr/avr.vhd(188)
  binary_mux_s1_w1 \U15/mux0_b6  (
    .i0(\U15/queue_do [6]),
    .i1(1'b1),
    .sel(\U15/queue_rd_empty ),
    .o(\U15/spi_di [6]));  // ../../rtl/avr/avr.vhd(188)
  binary_mux_s1_w1 \U15/mux0_b7  (
    .i0(\U15/queue_do [7]),
    .i1(1'b1),
    .sel(\U15/queue_rd_empty ),
    .o(\U15/spi_di [7]));  // ../../rtl/avr/avr.vhd(188)
  binary_mux_s1_w1 \U15/mux0_b8  (
    .i0(\U15/queue_do [8]),
    .i1(1'b1),
    .sel(\U15/queue_rd_empty ),
    .o(\U15/spi_di [8]));  // ../../rtl/avr/avr.vhd(188)
  binary_mux_s1_w1 \U15/mux0_b9  (
    .i0(\U15/queue_do [9]),
    .i1(1'b1),
    .sel(\U15/queue_rd_empty ),
    .o(\U15/spi_di [9]));  // ../../rtl/avr/avr.vhd(188)
  and \U15/mux13_b0_sel_is_3  (\U15/mux13_b0_sel_is_3_o , \U15/spi_do_valid , \U15/n41 );
  and \U15/mux2_b0_sel_is_3  (\U15/mux2_b0_sel_is_3_o , \U15/spi_do_valid , \U15/sel12_b0_sel_is_3_o );
  and \U15/mux3_b1_sel_is_3  (\U15/mux3_b1_sel_is_3_o , \U15/spi_do_valid , \U15/sel13_b1_sel_is_3_o );
  reg_ar_as_w1 \U15/reg12_b0  (
    .clk(clk_28),
    .d(\U15/spi_do [0]),
    .en(\U15/mux13_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(osd_command[0]));  // ../../rtl/avr/avr.vhd(288)
  reg_ar_as_w1 \U15/reg12_b1  (
    .clk(clk_28),
    .d(\U15/spi_do [1]),
    .en(\U15/mux13_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(osd_command[1]));  // ../../rtl/avr/avr.vhd(288)
  reg_ar_as_w1 \U15/reg12_b10  (
    .clk(clk_28),
    .d(\U15/spi_do [10]),
    .en(\U15/mux13_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(osd_command[10]));  // ../../rtl/avr/avr.vhd(288)
  reg_ar_as_w1 \U15/reg12_b11  (
    .clk(clk_28),
    .d(\U15/spi_do [11]),
    .en(\U15/mux13_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(osd_command[11]));  // ../../rtl/avr/avr.vhd(288)
  reg_ar_as_w1 \U15/reg12_b12  (
    .clk(clk_28),
    .d(\U15/spi_do [12]),
    .en(\U15/mux13_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(osd_command[12]));  // ../../rtl/avr/avr.vhd(288)
  reg_ar_as_w1 \U15/reg12_b13  (
    .clk(clk_28),
    .d(\U15/spi_do [13]),
    .en(\U15/mux13_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(osd_command[13]));  // ../../rtl/avr/avr.vhd(288)
  reg_ar_as_w1 \U15/reg12_b14  (
    .clk(clk_28),
    .d(\U15/spi_do [14]),
    .en(\U15/mux13_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(osd_command[14]));  // ../../rtl/avr/avr.vhd(288)
  reg_ar_as_w1 \U15/reg12_b15  (
    .clk(clk_28),
    .d(\U15/spi_do [15]),
    .en(\U15/mux13_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(osd_command[15]));  // ../../rtl/avr/avr.vhd(288)
  reg_ar_as_w1 \U15/reg12_b2  (
    .clk(clk_28),
    .d(\U15/spi_do [2]),
    .en(\U15/mux13_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(osd_command[2]));  // ../../rtl/avr/avr.vhd(288)
  reg_ar_as_w1 \U15/reg12_b3  (
    .clk(clk_28),
    .d(\U15/spi_do [3]),
    .en(\U15/mux13_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(osd_command[3]));  // ../../rtl/avr/avr.vhd(288)
  reg_ar_as_w1 \U15/reg12_b4  (
    .clk(clk_28),
    .d(\U15/spi_do [4]),
    .en(\U15/mux13_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(osd_command[4]));  // ../../rtl/avr/avr.vhd(288)
  reg_ar_as_w1 \U15/reg12_b5  (
    .clk(clk_28),
    .d(\U15/spi_do [5]),
    .en(\U15/mux13_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(osd_command[5]));  // ../../rtl/avr/avr.vhd(288)
  reg_ar_as_w1 \U15/reg12_b6  (
    .clk(clk_28),
    .d(\U15/spi_do [6]),
    .en(\U15/mux13_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(osd_command[6]));  // ../../rtl/avr/avr.vhd(288)
  reg_ar_as_w1 \U15/reg12_b7  (
    .clk(clk_28),
    .d(\U15/spi_do [7]),
    .en(\U15/mux13_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(osd_command[7]));  // ../../rtl/avr/avr.vhd(288)
  reg_ar_as_w1 \U15/reg12_b8  (
    .clk(clk_28),
    .d(\U15/spi_do [8]),
    .en(\U15/mux13_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(osd_command[8]));  // ../../rtl/avr/avr.vhd(288)
  reg_ar_as_w1 \U15/reg12_b9  (
    .clk(clk_28),
    .d(\U15/spi_do [9]),
    .en(\U15/mux13_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(osd_command[9]));  // ../../rtl/avr/avr.vhd(288)
  reg_ar_as_w1 \U15/reg3_b0  (
    .clk(clk_28),
    .d(\U15/spi_do [1]),
    .en(\U15/mux3_b1_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(soft_sw[10]));  // ../../rtl/avr/avr.vhd(288)
  reg_ar_as_w1 \U15/reg3_b8  (
    .clk(clk_28),
    .d(\U15/spi_do [7]),
    .en(\U15/mux2_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(soft_sw[2]));  // ../../rtl/avr/avr.vhd(288)
  reg_ar_as_w1 \U15/reg3_b9  (
    .clk(clk_28),
    .d(\U15/spi_do [6]),
    .en(\U15/mux2_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(soft_sw[1]));  // ../../rtl/avr/avr.vhd(288)
  reg_ar_as_w1 \U15/reg6_b0  (
    .clk(clk_28),
    .d(\U15/spi_do [5]),
    .en(\U15/mux3_b1_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(kb_screen_mode[0]));  // ../../rtl/avr/avr.vhd(288)
  reg_ar_as_w1 \U15/reg6_b1  (
    .clk(clk_28),
    .d(\U15/spi_do [6]),
    .en(\U15/mux3_b1_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(kb_screen_mode[1]));  // ../../rtl/avr/avr.vhd(288)
  and \U15/sel12_b0_sel_is_3  (\U15/sel12_b0_sel_is_3_o , \U15/n37 , \U15/n7 );
  and \U15/sel13_b1_sel_is_3  (\U15/sel13_b1_sel_is_3_o , \U15/n37 , \U15/n10 );
  not \U15/u6  (\U15/n1 , AVR_NCS);  // ../../rtl/avr/avr.vhd(190)
  bufif1 \U15/u7  (AVR_MISO, \U15/spi_miso , \U15/n1 );  // ../../rtl/avr/avr.vhd(190)
  AL_LOGIC_BUFG \U2/bufg_feedback  (
    .i(\U2/clkc_wire [0]),
    .o(clk_84));  // al_ip/altpll1.vhd(48)
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
    .clkc({clk_8,open_n25,clk_28,open_n26,\U2/clkc_wire [0]}));  // al_ip/altpll1.vhd(51)
  not \U23/u4  (vid_scandoubler_enable, soft_sw[1]);  // ../../rtl/board/board.vhd(35)
  not \U6/u35  (\U6/n24 , vid_rd);  // ../../rtl/memory/memory.vhd(218)
  bufif1 \U6/u47  (vid_do_bus[2], 1'b0, 1'b1);  // ../../rtl/memory/memory.vhd(39)
  bufif1 \U6/u49  (vid_do_bus[3], 1'b0, 1'b1);  // ../../rtl/memory/memory.vhd(39)
  bufif1 \U6/u51  (vid_do_bus[4], 1'b0, 1'b1);  // ../../rtl/memory/memory.vhd(39)
  bufif1 \U6/u53  (vid_do_bus[5], 1'b0, 1'b1);  // ../../rtl/memory/memory.vhd(39)
  bufif1 \U6/u56  (vid_do_bus[6], 1'b0, 1'b1);  // ../../rtl/memory/memory.vhd(39)
  bufif1 \U6/u59  (vid_do_bus[7], 1'b0, 1'b1);  // ../../rtl/memory/memory.vhd(39)
  not \U6/u8  (\U6/n48 , clk_div2);  // ../../rtl/memory/memory.vhd(182)
  bufif1 \U6/u86  (vid_do_bus[1], 1'b0, 1'b1);  // ../../rtl/memory/memory.vhd(39)
  bufif1 \U6/u88  (vid_do_bus[0], 1'b0, 1'b1);  // ../../rtl/memory/memory.vhd(39)
  reg_ar_as_w1 \U6/vid_rd_reg  (
    .clk(clk_28),
    .d(\U6/n24 ),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(vid_rd));  // ../../rtl/memory/memory.vhd(248)
  reg_ar_as_w1 \U7/U_PENT/HSYNC_reg  (
    .clk(clk_28),
    .d(\U7/U_PENT/n40 ),
    .en(\U7/U_PENT/mux12_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/hsync_spec ));  // ../../rtl/video/pentagon_video.vhd(181)
  reg_ar_as_w1 \U7/U_PENT/VIDEO_B_reg  (
    .clk(clk_28),
    .d(\U7/U_PENT/n116 ),
    .en(\U7/U_PENT/mux22_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/rgb_spec [0]));  // ../../rtl/video/pentagon_video.vhd(217)
  reg_ar_as_w1 \U7/U_PENT/VIDEO_G_reg  (
    .clk(clk_28),
    .d(\U7/U_PENT/n118 ),
    .en(\U7/U_PENT/mux22_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/rgb_spec [1]));  // ../../rtl/video/pentagon_video.vhd(217)
  reg_ar_as_w1 \U7/U_PENT/VIDEO_I_reg  (
    .clk(clk_28),
    .d(\U7/U_PENT/n119 ),
    .en(\U7/U_PENT/mux22_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/i_spec ));  // ../../rtl/video/pentagon_video.vhd(217)
  reg_ar_as_w1 \U7/U_PENT/VIDEO_R_reg  (
    .clk(clk_28),
    .d(\U7/U_PENT/n117 ),
    .en(\U7/U_PENT/mux22_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/rgb_spec [2]));  // ../../rtl/video/pentagon_video.vhd(217)
  reg_ar_as_w1 \U7/U_PENT/VSYNC_reg  (
    .clk(clk_28),
    .d(\U7/U_PENT/n56 ),
    .en(\U7/U_PENT/mux12_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/vsync_spec ));  // ../../rtl/video/pentagon_video.vhd(181)
  add_pu6_pu6_o6 \U7/U_PENT/add0  (
    .i0({\U7/hcnt_spec [8],\U7/vid_a_spec [4:0]}),
    .i1(6'b000001),
    .o(\U7/U_PENT/n3 ));
  add_pu5_pu5_o5 \U7/U_PENT/add1  (
    .i0({blink,\U7/U_PENT/invert [3:0]}),
    .i1(5'b00001),
    .o(\U7/U_PENT/n25 ));
  add_pu6_pu6_o6 \U7/U_PENT/add2  (
    .i0({\U7/vcnt_spec [8:6],\U7/vid_a_spec [7:5]}),
    .i1(6'b000001),
    .o(\U7/U_PENT/n26 ));
  add_pu3_pu3_o3 \U7/U_PENT/add3  (
    .i0(\U7/vcnt_spec [2:0]),
    .i1(3'b001),
    .o(\U7/U_PENT/n31 ));
  add_pu3_pu3_o3 \U7/U_PENT/add4  (
    .i0(\U7/hcnt_spec [2:0]),
    .i1(3'b001),
    .o(\U7/U_PENT/n97 ));
  eq_w3 \U7/U_PENT/eq0  (
    .i0(\U7/hcnt_spec [2:0]),
    .i1(3'b111),
    .o(\U7/U_PENT/n1 ));  // ../../rtl/video/pentagon_video.vhd(83)
  eq_w6 \U7/U_PENT/eq1  (
    .i0({\U7/hcnt_spec [8],\U7/vid_a_spec [4:0]}),
    .i1(6'b110111),
    .o(\U7/U_PENT/n2 ));  // ../../rtl/video/pentagon_video.vhd(85)
  eq_w4 \U7/U_PENT/eq10  (
    .i0({\U7/hcnt_spec [8],\U7/vid_a_spec [4:2]}),
    .i1(4'b1010),
    .o(\U7/U_PENT/n39 ));  // ../../rtl/video/pentagon_video.vhd(112)
  eq_w3 \U7/U_PENT/eq11  (
    .i0(\U7/vcnt_spec [2:0]),
    .i1(3'b011),
    .o(\U7/U_PENT/n46 ));  // ../../rtl/video/pentagon_video.vhd(120)
  eq_w3 \U7/U_PENT/eq12  (
    .i0(\U7/vcnt_spec [2:0]),
    .i1(3'b100),
    .o(\U7/U_PENT/n47 ));  // ../../rtl/video/pentagon_video.vhd(120)
  eq_w3 \U7/U_PENT/eq13  (
    .i0(\U7/vcnt_spec [2:0]),
    .i1(3'b101),
    .o(\U7/U_PENT/n48 ));  // ../../rtl/video/pentagon_video.vhd(120)
  eq_w6 \U7/U_PENT/eq2  (
    .i0({\U7/hcnt_spec [8],\U7/vid_a_spec [4:0]}),
    .i1(6'b100111),
    .o(\U7/U_PENT/n5 ));  // ../../rtl/video/pentagon_video.vhd(91)
  eq_w3 \U7/U_PENT/eq3  (
    .i0(\U7/vcnt_spec [2:0]),
    .i1(3'b111),
    .o(\U7/U_PENT/n6 ));  // ../../rtl/video/pentagon_video.vhd(92)
  eq_w6 \U7/U_PENT/eq4  (
    .i0({\U7/vcnt_spec [8:6],\U7/vid_a_spec [7:5]}),
    .i1(6'b100111),
    .o(\U7/U_PENT/n7 ));  // ../../rtl/video/pentagon_video.vhd(93)
  eq_w2 \U7/U_PENT/eq5  (
    .i0(kb_screen_mode),
    .i1(2'b00),
    .o(\U7/U_PENT/n9 ));
  eq_w6 \U7/U_PENT/eq6  (
    .i0({\U7/vcnt_spec [8:6],\U7/vid_a_spec [7:5]}),
    .i1(6'b100000),
    .o(\U7/U_PENT/n12 ));  // ../../rtl/video/pentagon_video.vhd(94)
  eq_w6 \U7/U_PENT/eq7  (
    .i0({\U7/vcnt_spec [8:6],\U7/vid_a_spec [7:5]}),
    .i1(6'b100110),
    .o(\U7/U_PENT/n15 ));  // ../../rtl/video/pentagon_video.vhd(95)
  eq_w2 \U7/U_PENT/eq8  (
    .i0(kb_screen_mode),
    .i1(2'b01),
    .o(\U7/U_PENT/n16 ));
  eq_w6 \U7/U_PENT/eq9  (
    .i0({\U7/vcnt_spec [8:6],\U7/vid_a_spec [7:5]}),
    .i1(6'b011111),
    .o(\U7/U_PENT/n19 ));  // ../../rtl/video/pentagon_video.vhd(96)
  lt_u6_u6 \U7/U_PENT/lt0  (
    .ci(1'b1),
    .i0(6'b101000),
    .i1({\U7/hcnt_spec [8],\U7/vid_a_spec [4:0]}),
    .o(\U7/U_PENT/n49 ));  // ../../rtl/video/pentagon_video.vhd(120)
  lt_u6_u6 \U7/U_PENT/lt1  (
    .ci(1'b0),
    .i0({\U7/hcnt_spec [8],\U7/vid_a_spec [4:0]}),
    .i1(6'b001100),
    .o(\U7/U_PENT/n50 ));  // ../../rtl/video/pentagon_video.vhd(120)
  binary_mux_s1_w1 \U7/U_PENT/mux0_b0  (
    .i0(\U7/U_PENT/n3 [0]),
    .i1(1'b0),
    .sel(\U7/U_PENT/n2 ),
    .o(\U7/U_PENT/n4 [0]));  // ../../rtl/video/pentagon_video.vhd(89)
  binary_mux_s1_w1 \U7/U_PENT/mux0_b1  (
    .i0(\U7/U_PENT/n3 [1]),
    .i1(1'b0),
    .sel(\U7/U_PENT/n2 ),
    .o(\U7/U_PENT/n4 [1]));  // ../../rtl/video/pentagon_video.vhd(89)
  binary_mux_s1_w1 \U7/U_PENT/mux0_b2  (
    .i0(\U7/U_PENT/n3 [2]),
    .i1(1'b0),
    .sel(\U7/U_PENT/n2 ),
    .o(\U7/U_PENT/n4 [2]));  // ../../rtl/video/pentagon_video.vhd(89)
  binary_mux_s1_w1 \U7/U_PENT/mux0_b3  (
    .i0(\U7/U_PENT/n3 [3]),
    .i1(1'b0),
    .sel(\U7/U_PENT/n2 ),
    .o(\U7/U_PENT/n4 [3]));  // ../../rtl/video/pentagon_video.vhd(89)
  binary_mux_s1_w1 \U7/U_PENT/mux0_b4  (
    .i0(\U7/U_PENT/n3 [4]),
    .i1(1'b0),
    .sel(\U7/U_PENT/n2 ),
    .o(\U7/U_PENT/n4 [4]));  // ../../rtl/video/pentagon_video.vhd(89)
  binary_mux_s1_w1 \U7/U_PENT/mux0_b5  (
    .i0(\U7/U_PENT/n3 [5]),
    .i1(1'b0),
    .sel(\U7/U_PENT/n2 ),
    .o(\U7/U_PENT/n4 [5]));  // ../../rtl/video/pentagon_video.vhd(89)
  and \U7/U_PENT/mux10_b0_sel_is_3  (\U7/U_PENT/mux10_b0_sel_is_3_o , \U7/U_PENT/n1 , \U7/U_PENT/mux6_b0_sel_is_3_o );
  and \U7/U_PENT/mux11_b0_sel_is_3  (\U7/U_PENT/mux11_b0_sel_is_3_o , \U7/U_PENT/n1 , \U7/U_PENT/n5 );
  and \U7/U_PENT/mux12_b0_sel_is_3  (\U7/U_PENT/mux12_b0_sel_is_3_o , \U7/U_PENT/mux22_b0_sel_is_3_o , \U7/U_PENT/n1 );
  and \U7/U_PENT/mux13_b0_sel_is_3  (\U7/U_PENT/mux13_b0_sel_is_3_o , \U7/U_PENT/mux22_b0_sel_is_3_o , \U7/U_PENT/mux9_b0_sel_is_3_o );
  and \U7/U_PENT/mux14_b0_sel_is_3  (\U7/U_PENT/mux14_b0_sel_is_3_o , \U7/U_PENT/mux22_b0_sel_is_3_o , \U7/U_PENT/mux10_b0_sel_is_3_o );
  and \U7/U_PENT/mux15_b0_sel_is_3  (\U7/U_PENT/mux15_b0_sel_is_3_o , \U7/U_PENT/mux22_b0_sel_is_3_o , \U7/U_PENT/mux11_b0_sel_is_3_o );
  binary_mux_s1_w1 \U7/U_PENT/mux18_b0  (
    .i0(1'b0),
    .i1(\U7/U_PENT/bitmap [0]),
    .sel(\U7/U_PENT/n1 ),
    .o(\U7/U_PENT/n151 [0]));  // ../../rtl/video/pentagon_video.vhd(257)
  binary_mux_s1_w1 \U7/U_PENT/mux18_b1  (
    .i0(\U7/U_PENT/shift_r [0]),
    .i1(\U7/U_PENT/bitmap [1]),
    .sel(\U7/U_PENT/n1 ),
    .o(\U7/U_PENT/n151 [1]));  // ../../rtl/video/pentagon_video.vhd(257)
  binary_mux_s1_w1 \U7/U_PENT/mux18_b2  (
    .i0(\U7/U_PENT/shift_r [1]),
    .i1(\U7/U_PENT/bitmap [2]),
    .sel(\U7/U_PENT/n1 ),
    .o(\U7/U_PENT/n151 [2]));  // ../../rtl/video/pentagon_video.vhd(257)
  binary_mux_s1_w1 \U7/U_PENT/mux18_b3  (
    .i0(\U7/U_PENT/shift_r [2]),
    .i1(\U7/U_PENT/bitmap [3]),
    .sel(\U7/U_PENT/n1 ),
    .o(\U7/U_PENT/n151 [3]));  // ../../rtl/video/pentagon_video.vhd(257)
  binary_mux_s1_w1 \U7/U_PENT/mux18_b4  (
    .i0(\U7/U_PENT/shift_r [3]),
    .i1(\U7/U_PENT/bitmap [4]),
    .sel(\U7/U_PENT/n1 ),
    .o(\U7/U_PENT/n151 [4]));  // ../../rtl/video/pentagon_video.vhd(257)
  binary_mux_s1_w1 \U7/U_PENT/mux18_b5  (
    .i0(\U7/U_PENT/shift_r [4]),
    .i1(\U7/U_PENT/bitmap [5]),
    .sel(\U7/U_PENT/n1 ),
    .o(\U7/U_PENT/n151 [5]));  // ../../rtl/video/pentagon_video.vhd(257)
  binary_mux_s1_w1 \U7/U_PENT/mux18_b6  (
    .i0(\U7/U_PENT/shift_r [5]),
    .i1(\U7/U_PENT/bitmap [6]),
    .sel(\U7/U_PENT/n1 ),
    .o(\U7/U_PENT/n151 [6]));  // ../../rtl/video/pentagon_video.vhd(257)
  binary_mux_s1_w1 \U7/U_PENT/mux18_b7  (
    .i0(\U7/U_PENT/shift_r [6]),
    .i1(\U7/U_PENT/bitmap [7]),
    .sel(\U7/U_PENT/n1 ),
    .o(\U7/U_PENT/n151 [7]));  // ../../rtl/video/pentagon_video.vhd(257)
  and \U7/U_PENT/mux19_b0_sel_is_3  (\U7/U_PENT/mux19_b0_sel_is_3_o , clk_div4, \U7/U_PENT/n1 );
  binary_mux_s1_w1 \U7/U_PENT/mux1_b0  (
    .i0(\U7/U_PENT/n26 [0]),
    .i1(1'b0),
    .sel(\U7/U_PENT/n24 ),
    .o(\U7/U_PENT/n27 [0]));  // ../../rtl/video/pentagon_video.vhd(102)
  binary_mux_s1_w1 \U7/U_PENT/mux1_b1  (
    .i0(\U7/U_PENT/n26 [1]),
    .i1(1'b0),
    .sel(\U7/U_PENT/n24 ),
    .o(\U7/U_PENT/n27 [1]));  // ../../rtl/video/pentagon_video.vhd(102)
  binary_mux_s1_w1 \U7/U_PENT/mux1_b2  (
    .i0(\U7/U_PENT/n26 [2]),
    .i1(1'b0),
    .sel(\U7/U_PENT/n24 ),
    .o(\U7/U_PENT/n27 [2]));  // ../../rtl/video/pentagon_video.vhd(102)
  binary_mux_s1_w1 \U7/U_PENT/mux1_b3  (
    .i0(\U7/U_PENT/n26 [3]),
    .i1(1'b0),
    .sel(\U7/U_PENT/n24 ),
    .o(\U7/U_PENT/n27 [3]));  // ../../rtl/video/pentagon_video.vhd(102)
  binary_mux_s1_w1 \U7/U_PENT/mux1_b4  (
    .i0(\U7/U_PENT/n26 [4]),
    .i1(1'b0),
    .sel(\U7/U_PENT/n24 ),
    .o(\U7/U_PENT/n27 [4]));  // ../../rtl/video/pentagon_video.vhd(102)
  binary_mux_s1_w1 \U7/U_PENT/mux1_b5  (
    .i0(\U7/U_PENT/n26 [5]),
    .i1(1'b0),
    .sel(\U7/U_PENT/n24 ),
    .o(\U7/U_PENT/n27 [5]));  // ../../rtl/video/pentagon_video.vhd(102)
  and \U7/U_PENT/mux21_b0_sel_is_3  (\U7/U_PENT/mux21_b0_sel_is_3_o , clk_div2, \U7/U_PENT/mux19_b0_sel_is_3_o );
  and \U7/U_PENT/mux22_b0_sel_is_3  (\U7/U_PENT/mux22_b0_sel_is_3_o , clk_div2, clk_div4);
  and \U7/U_PENT/mux27_b0_sel_is_3  (\U7/U_PENT/mux27_b0_sel_is_3_o , \U7/U_PENT/n157 , \U6/n24 );
  and \U7/U_PENT/mux28_b0_sel_is_3  (\U7/U_PENT/mux28_b0_sel_is_3_o , \U7/U_PENT/n157 , vid_rd);
  and \U7/U_PENT/mux4_b0_sel_is_3  (\U7/U_PENT/mux4_b0_sel_is_3_o , \U7/U_PENT/n6 , \U7/U_PENT/n24 );
  and \U7/U_PENT/mux5_b0_sel_is_3  (\U7/U_PENT/mux5_b0_sel_is_3_o , \U7/U_PENT/n5 , \U7/U_PENT/n6 );
  and \U7/U_PENT/mux6_b0_sel_is_3  (\U7/U_PENT/mux6_b0_sel_is_3_o , \U7/U_PENT/n5 , \U7/U_PENT/mux4_b0_sel_is_3_o );
  and \U7/U_PENT/mux9_b0_sel_is_3  (\U7/U_PENT/mux9_b0_sel_is_3_o , \U7/U_PENT/n1 , \U7/U_PENT/mux5_b0_sel_is_3_o );
  ne_w6 \U7/U_PENT/neq0  (
    .i0({\U7/vcnt_spec [8:6],\U7/vid_a_spec [7:5]}),
    .i1(6'b011111),
    .o(\U7/U_PENT/n41 ));  // ../../rtl/video/pentagon_video.vhd(118)
  ne_w6 \U7/U_PENT/neq1  (
    .i0({\U7/vcnt_spec [8:6],\U7/vid_a_spec [7:5]}),
    .i1(6'b011011),
    .o(\U7/U_PENT/n43 ));  // ../../rtl/video/pentagon_video.vhd(118)
  reg_ar_as_w1 \U7/U_PENT/paper_r_reg  (
    .clk(clk_28),
    .d(\U7/U_PENT/paper ),
    .en(\U7/U_PENT/mux21_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/U_PENT/paper_r ));  // ../../rtl/video/pentagon_video.vhd(240)
  reg_ar_as_w1 \U7/U_PENT/reg0_b0  (
    .clk(clk_28),
    .d(\U7/U_PENT/n27 [0]),
    .en(\U7/U_PENT/mux13_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/vid_a_spec [5]));  // ../../rtl/video/pentagon_video.vhd(181)
  reg_ar_as_w1 \U7/U_PENT/reg0_b1  (
    .clk(clk_28),
    .d(\U7/U_PENT/n27 [1]),
    .en(\U7/U_PENT/mux13_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/vid_a_spec [6]));  // ../../rtl/video/pentagon_video.vhd(181)
  reg_ar_as_w1 \U7/U_PENT/reg0_b2  (
    .clk(clk_28),
    .d(\U7/U_PENT/n27 [2]),
    .en(\U7/U_PENT/mux13_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/vid_a_spec [7]));  // ../../rtl/video/pentagon_video.vhd(181)
  reg_ar_as_w1 \U7/U_PENT/reg0_b3  (
    .clk(clk_28),
    .d(\U7/U_PENT/n27 [3]),
    .en(\U7/U_PENT/mux13_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/vcnt_spec [6]));  // ../../rtl/video/pentagon_video.vhd(181)
  reg_ar_as_w1 \U7/U_PENT/reg0_b4  (
    .clk(clk_28),
    .d(\U7/U_PENT/n27 [4]),
    .en(\U7/U_PENT/mux13_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/vcnt_spec [7]));  // ../../rtl/video/pentagon_video.vhd(181)
  reg_ar_as_w1 \U7/U_PENT/reg0_b5  (
    .clk(clk_28),
    .d(\U7/U_PENT/n27 [5]),
    .en(\U7/U_PENT/mux13_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/vcnt_spec [8]));  // ../../rtl/video/pentagon_video.vhd(181)
  reg_ar_as_w1 \U7/U_PENT/reg1_b0  (
    .clk(clk_28),
    .d(\U7/U_PENT/n25 [0]),
    .en(\U7/U_PENT/mux14_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/U_PENT/invert [0]));  // ../../rtl/video/pentagon_video.vhd(181)
  reg_ar_as_w1 \U7/U_PENT/reg1_b1  (
    .clk(clk_28),
    .d(\U7/U_PENT/n25 [1]),
    .en(\U7/U_PENT/mux14_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/U_PENT/invert [1]));  // ../../rtl/video/pentagon_video.vhd(181)
  reg_ar_as_w1 \U7/U_PENT/reg1_b2  (
    .clk(clk_28),
    .d(\U7/U_PENT/n25 [2]),
    .en(\U7/U_PENT/mux14_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/U_PENT/invert [2]));  // ../../rtl/video/pentagon_video.vhd(181)
  reg_ar_as_w1 \U7/U_PENT/reg1_b3  (
    .clk(clk_28),
    .d(\U7/U_PENT/n25 [3]),
    .en(\U7/U_PENT/mux14_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/U_PENT/invert [3]));  // ../../rtl/video/pentagon_video.vhd(181)
  reg_ar_as_w1 \U7/U_PENT/reg1_b4  (
    .clk(clk_28),
    .d(\U7/U_PENT/n25 [4]),
    .en(\U7/U_PENT/mux14_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(blink));  // ../../rtl/video/pentagon_video.vhd(181)
  reg_ar_as_w1 \U7/U_PENT/reg2_b0  (
    .clk(clk_28),
    .d(\U7/U_PENT/n31 [0]),
    .en(\U7/U_PENT/mux15_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/vcnt_spec [0]));  // ../../rtl/video/pentagon_video.vhd(181)
  reg_ar_as_w1 \U7/U_PENT/reg2_b1  (
    .clk(clk_28),
    .d(\U7/U_PENT/n31 [1]),
    .en(\U7/U_PENT/mux15_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/vcnt_spec [1]));  // ../../rtl/video/pentagon_video.vhd(181)
  reg_ar_as_w1 \U7/U_PENT/reg2_b2  (
    .clk(clk_28),
    .d(\U7/U_PENT/n31 [2]),
    .en(\U7/U_PENT/mux15_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/vcnt_spec [2]));  // ../../rtl/video/pentagon_video.vhd(181)
  reg_ar_as_w1 \U7/U_PENT/reg3_b0  (
    .clk(clk_28),
    .d(\U7/U_PENT/n97 [0]),
    .en(\U7/U_PENT/mux22_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/hcnt_spec [0]));  // ../../rtl/video/pentagon_video.vhd(181)
  reg_ar_as_w1 \U7/U_PENT/reg3_b1  (
    .clk(clk_28),
    .d(\U7/U_PENT/n97 [1]),
    .en(\U7/U_PENT/mux22_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/hcnt_spec [1]));  // ../../rtl/video/pentagon_video.vhd(181)
  reg_ar_as_w1 \U7/U_PENT/reg3_b2  (
    .clk(clk_28),
    .d(\U7/U_PENT/n97 [2]),
    .en(\U7/U_PENT/mux22_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/hcnt_spec [2]));  // ../../rtl/video/pentagon_video.vhd(181)
  reg_ar_as_w1 \U7/U_PENT/reg4_b0  (
    .clk(clk_28),
    .d(\U7/U_PENT/attr [0]),
    .en(\U7/U_PENT/mux21_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/attr_o_spec [0]));  // ../../rtl/video/pentagon_video.vhd(260)
  reg_ar_as_w1 \U7/U_PENT/reg4_b1  (
    .clk(clk_28),
    .d(\U7/U_PENT/attr [1]),
    .en(\U7/U_PENT/mux21_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/attr_o_spec [1]));  // ../../rtl/video/pentagon_video.vhd(260)
  reg_ar_as_w1 \U7/U_PENT/reg4_b2  (
    .clk(clk_28),
    .d(\U7/U_PENT/attr [2]),
    .en(\U7/U_PENT/mux21_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/attr_o_spec [2]));  // ../../rtl/video/pentagon_video.vhd(260)
  reg_ar_as_w1 \U7/U_PENT/reg4_b3  (
    .clk(clk_28),
    .d(\U7/U_PENT/attr [3]),
    .en(\U7/U_PENT/mux21_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/attr_o_spec [3]));  // ../../rtl/video/pentagon_video.vhd(260)
  reg_ar_as_w1 \U7/U_PENT/reg4_b4  (
    .clk(clk_28),
    .d(\U7/U_PENT/attr [4]),
    .en(\U7/U_PENT/mux21_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/attr_o_spec [4]));  // ../../rtl/video/pentagon_video.vhd(260)
  reg_ar_as_w1 \U7/U_PENT/reg4_b5  (
    .clk(clk_28),
    .d(\U7/U_PENT/attr [5]),
    .en(\U7/U_PENT/mux21_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/attr_o_spec [5]));  // ../../rtl/video/pentagon_video.vhd(260)
  reg_ar_as_w1 \U7/U_PENT/reg4_b6  (
    .clk(clk_28),
    .d(\U7/U_PENT/attr [6]),
    .en(\U7/U_PENT/mux21_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/attr_o_spec [6]));  // ../../rtl/video/pentagon_video.vhd(260)
  reg_ar_as_w1 \U7/U_PENT/reg4_b7  (
    .clk(clk_28),
    .d(\U7/U_PENT/attr [7]),
    .en(\U7/U_PENT/mux21_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/attr_o_spec [7]));  // ../../rtl/video/pentagon_video.vhd(260)
  reg_ar_as_w1 \U7/U_PENT/reg5_b0  (
    .clk(clk_28),
    .d(\U7/U_PENT/n151 [0]),
    .en(\U7/U_PENT/mux22_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/U_PENT/shift_r [0]));  // ../../rtl/video/pentagon_video.vhd(260)
  reg_ar_as_w1 \U7/U_PENT/reg5_b1  (
    .clk(clk_28),
    .d(\U7/U_PENT/n151 [1]),
    .en(\U7/U_PENT/mux22_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/U_PENT/shift_r [1]));  // ../../rtl/video/pentagon_video.vhd(260)
  reg_ar_as_w1 \U7/U_PENT/reg5_b2  (
    .clk(clk_28),
    .d(\U7/U_PENT/n151 [2]),
    .en(\U7/U_PENT/mux22_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/U_PENT/shift_r [2]));  // ../../rtl/video/pentagon_video.vhd(260)
  reg_ar_as_w1 \U7/U_PENT/reg5_b3  (
    .clk(clk_28),
    .d(\U7/U_PENT/n151 [3]),
    .en(\U7/U_PENT/mux22_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/U_PENT/shift_r [3]));  // ../../rtl/video/pentagon_video.vhd(260)
  reg_ar_as_w1 \U7/U_PENT/reg5_b4  (
    .clk(clk_28),
    .d(\U7/U_PENT/n151 [4]),
    .en(\U7/U_PENT/mux22_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/U_PENT/shift_r [4]));  // ../../rtl/video/pentagon_video.vhd(260)
  reg_ar_as_w1 \U7/U_PENT/reg5_b5  (
    .clk(clk_28),
    .d(\U7/U_PENT/n151 [5]),
    .en(\U7/U_PENT/mux22_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/U_PENT/shift_r [5]));  // ../../rtl/video/pentagon_video.vhd(260)
  reg_ar_as_w1 \U7/U_PENT/reg5_b6  (
    .clk(clk_28),
    .d(\U7/U_PENT/n151 [6]),
    .en(\U7/U_PENT/mux22_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/U_PENT/shift_r [6]));  // ../../rtl/video/pentagon_video.vhd(260)
  reg_ar_as_w1 \U7/U_PENT/reg5_b7  (
    .clk(clk_28),
    .d(\U7/U_PENT/n151 [7]),
    .en(\U7/U_PENT/mux22_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/U_PENT/shift_r [7]));  // ../../rtl/video/pentagon_video.vhd(260)
  reg_ar_as_w1 \U7/U_PENT/reg6_b0  (
    .clk(clk_28),
    .d(vid_do_bus[0]),
    .en(\U7/U_PENT/mux27_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/U_PENT/bitmap [0]));  // ../../rtl/video/pentagon_video.vhd(304)
  reg_ar_as_w1 \U7/U_PENT/reg6_b1  (
    .clk(clk_28),
    .d(vid_do_bus[1]),
    .en(\U7/U_PENT/mux27_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/U_PENT/bitmap [1]));  // ../../rtl/video/pentagon_video.vhd(304)
  reg_ar_as_w1 \U7/U_PENT/reg6_b2  (
    .clk(clk_28),
    .d(vid_do_bus[2]),
    .en(\U7/U_PENT/mux27_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/U_PENT/bitmap [2]));  // ../../rtl/video/pentagon_video.vhd(304)
  reg_ar_as_w1 \U7/U_PENT/reg6_b3  (
    .clk(clk_28),
    .d(vid_do_bus[3]),
    .en(\U7/U_PENT/mux27_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/U_PENT/bitmap [3]));  // ../../rtl/video/pentagon_video.vhd(304)
  reg_ar_as_w1 \U7/U_PENT/reg6_b4  (
    .clk(clk_28),
    .d(vid_do_bus[4]),
    .en(\U7/U_PENT/mux27_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/U_PENT/bitmap [4]));  // ../../rtl/video/pentagon_video.vhd(304)
  reg_ar_as_w1 \U7/U_PENT/reg6_b5  (
    .clk(clk_28),
    .d(vid_do_bus[5]),
    .en(\U7/U_PENT/mux27_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/U_PENT/bitmap [5]));  // ../../rtl/video/pentagon_video.vhd(304)
  reg_ar_as_w1 \U7/U_PENT/reg6_b6  (
    .clk(clk_28),
    .d(vid_do_bus[6]),
    .en(\U7/U_PENT/mux27_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/U_PENT/bitmap [6]));  // ../../rtl/video/pentagon_video.vhd(304)
  reg_ar_as_w1 \U7/U_PENT/reg6_b7  (
    .clk(clk_28),
    .d(vid_do_bus[7]),
    .en(\U7/U_PENT/mux27_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/U_PENT/bitmap [7]));  // ../../rtl/video/pentagon_video.vhd(304)
  reg_ar_as_w1 \U7/U_PENT/reg7_b0  (
    .clk(clk_28),
    .d(vid_do_bus[0]),
    .en(\U7/U_PENT/mux28_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/U_PENT/attr [0]));  // ../../rtl/video/pentagon_video.vhd(304)
  reg_ar_as_w1 \U7/U_PENT/reg7_b1  (
    .clk(clk_28),
    .d(vid_do_bus[1]),
    .en(\U7/U_PENT/mux28_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/U_PENT/attr [1]));  // ../../rtl/video/pentagon_video.vhd(304)
  reg_ar_as_w1 \U7/U_PENT/reg7_b2  (
    .clk(clk_28),
    .d(vid_do_bus[2]),
    .en(\U7/U_PENT/mux28_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/U_PENT/attr [2]));  // ../../rtl/video/pentagon_video.vhd(304)
  reg_ar_as_w1 \U7/U_PENT/reg7_b3  (
    .clk(clk_28),
    .d(vid_do_bus[3]),
    .en(\U7/U_PENT/mux28_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/U_PENT/attr [3]));  // ../../rtl/video/pentagon_video.vhd(304)
  reg_ar_as_w1 \U7/U_PENT/reg7_b4  (
    .clk(clk_28),
    .d(vid_do_bus[4]),
    .en(\U7/U_PENT/mux28_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/U_PENT/attr [4]));  // ../../rtl/video/pentagon_video.vhd(304)
  reg_ar_as_w1 \U7/U_PENT/reg7_b5  (
    .clk(clk_28),
    .d(vid_do_bus[5]),
    .en(\U7/U_PENT/mux28_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/U_PENT/attr [5]));  // ../../rtl/video/pentagon_video.vhd(304)
  reg_ar_as_w1 \U7/U_PENT/reg7_b6  (
    .clk(clk_28),
    .d(vid_do_bus[6]),
    .en(\U7/U_PENT/mux28_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/U_PENT/attr [6]));  // ../../rtl/video/pentagon_video.vhd(304)
  reg_ar_as_w1 \U7/U_PENT/reg7_b7  (
    .clk(clk_28),
    .d(vid_do_bus[7]),
    .en(\U7/U_PENT/mux28_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/U_PENT/attr [7]));  // ../../rtl/video/pentagon_video.vhd(304)
  reg_ar_as_w1 \U7/U_PENT/reg8_b0  (
    .clk(clk_28),
    .d(\U7/U_PENT/n4 [0]),
    .en(\U7/U_PENT/mux12_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/vid_a_spec [0]));  // ../../rtl/video/pentagon_video.vhd(181)
  reg_ar_as_w1 \U7/U_PENT/reg8_b1  (
    .clk(clk_28),
    .d(\U7/U_PENT/n4 [1]),
    .en(\U7/U_PENT/mux12_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/vid_a_spec [1]));  // ../../rtl/video/pentagon_video.vhd(181)
  reg_ar_as_w1 \U7/U_PENT/reg8_b2  (
    .clk(clk_28),
    .d(\U7/U_PENT/n4 [2]),
    .en(\U7/U_PENT/mux12_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/vid_a_spec [2]));  // ../../rtl/video/pentagon_video.vhd(181)
  reg_ar_as_w1 \U7/U_PENT/reg8_b3  (
    .clk(clk_28),
    .d(\U7/U_PENT/n4 [3]),
    .en(\U7/U_PENT/mux12_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/vid_a_spec [3]));  // ../../rtl/video/pentagon_video.vhd(181)
  reg_ar_as_w1 \U7/U_PENT/reg8_b4  (
    .clk(clk_28),
    .d(\U7/U_PENT/n4 [4]),
    .en(\U7/U_PENT/mux12_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/vid_a_spec [4]));  // ../../rtl/video/pentagon_video.vhd(181)
  reg_ar_as_w1 \U7/U_PENT/reg8_b5  (
    .clk(clk_28),
    .d(\U7/U_PENT/n4 [5]),
    .en(\U7/U_PENT/mux12_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U7/hcnt_spec [8]));  // ../../rtl/video/pentagon_video.vhd(181)
  and \U7/U_PENT/u10  (\U7/U_PENT/n17 , \U7/U_PENT/n15 , \U7/U_PENT/n8 );  // ../../rtl/video/pentagon_video.vhd(95)
  and \U7/U_PENT/u11  (\U7/U_PENT/n18 , \U7/U_PENT/n17 , \U7/U_PENT/n16 );  // ../../rtl/video/pentagon_video.vhd(95)
  and \U7/U_PENT/u125  (\U7/U_PENT/n157 , \U7/hcnt_spec [0], \U6/n48 );  // ../../rtl/video/pentagon_video.vhd(295)
  not \U7/U_PENT/u129  (\U7/U_PENT/n166 , \U7/hcnt_spec [8]);  // ../../rtl/video/pentagon_video.vhd(315)
  and \U7/U_PENT/u13  (\U7/U_PENT/n20 , \U7/U_PENT/n19 , soft_sw[2]);  // ../../rtl/video/pentagon_video.vhd(96)
  not \U7/U_PENT/u130  (\U7/U_PENT/n167 , \U7/vcnt_spec [8]);  // ../../rtl/video/pentagon_video.vhd(315)
  not \U7/U_PENT/u131  (\U7/U_PENT/n168 , \U7/vcnt_spec [7]);  // ../../rtl/video/pentagon_video.vhd(315)
  not \U7/U_PENT/u132  (\U7/U_PENT/n169 , \U7/vcnt_spec [6]);  // ../../rtl/video/pentagon_video.vhd(315)
  or \U7/U_PENT/u133  (\U7/U_PENT/n170 , \U7/U_PENT/n168 , \U7/U_PENT/n169 );  // ../../rtl/video/pentagon_video.vhd(315)
  and \U7/U_PENT/u134  (\U7/U_PENT/n171 , \U7/U_PENT/n166 , \U7/U_PENT/n167 );  // ../../rtl/video/pentagon_video.vhd(315)
  and \U7/U_PENT/u135  (\U7/pFF_CS_spec , \U7/U_PENT/n171 , \U7/U_PENT/n170 );  // ../../rtl/video/pentagon_video.vhd(315)
  not \U7/U_PENT/u136  (\U7/U_PENT/paper , \U7/pFF_CS_spec );  // ../../rtl/video/pentagon_video.vhd(315)
  and \U7/U_PENT/u14  (\U7/U_PENT/n21 , \U7/U_PENT/n20 , \U7/U_PENT/n16 );  // ../../rtl/video/pentagon_video.vhd(96)
  not \U7/U_PENT/u148  (\U7/U_PENT/n172 , \U7/hcnt_spec [2]);  // ../../rtl/video/pentagon_video.vhd(330)
  not \U7/U_PENT/u149  (\U7/U_PENT/n173 , \U7/vid_a_spec [0]);  // ../../rtl/video/pentagon_video.vhd(330)
  or \U7/U_PENT/u15  (\U7/U_PENT/n22 , \U7/U_PENT/n11 , \U7/U_PENT/n14 );  // ../../rtl/video/pentagon_video.vhd(96)
  or \U7/U_PENT/u16  (\U7/U_PENT/n23 , \U7/U_PENT/n22 , \U7/U_PENT/n18 );  // ../../rtl/video/pentagon_video.vhd(96)
  or \U7/U_PENT/u17  (\U7/U_PENT/n24 , \U7/U_PENT/n23 , \U7/U_PENT/n21 );  // ../../rtl/video/pentagon_video.vhd(96)
  not \U7/U_PENT/u19  (\U7/U_PENT/n40 , \U7/U_PENT/n39 );  // ../../rtl/video/pentagon_video.vhd(116)
  AL_MUX \U7/U_PENT/u23  (
    .i0(\U7/U_PENT/n41 ),
    .i1(\U7/U_PENT/n43 ),
    .sel(soft_sw[2]),
    .o(\U7/U_PENT/n45 ));
  or \U7/U_PENT/u24  (\U7/U_PENT/n51 , \U7/U_PENT/n49 , \U7/U_PENT/n50 );  // ../../rtl/video/pentagon_video.vhd(120)
  and \U7/U_PENT/u25  (\U7/U_PENT/n52 , \U7/U_PENT/n48 , \U7/U_PENT/n51 );  // ../../rtl/video/pentagon_video.vhd(120)
  or \U7/U_PENT/u26  (\U7/U_PENT/n53 , \U7/U_PENT/n46 , \U7/U_PENT/n47 );  // ../../rtl/video/pentagon_video.vhd(120)
  or \U7/U_PENT/u27  (\U7/U_PENT/n54 , \U7/U_PENT/n53 , \U7/U_PENT/n52 );  // ../../rtl/video/pentagon_video.vhd(120)
  not \U7/U_PENT/u28  (\U7/U_PENT/n55 , \U7/U_PENT/n54 );  // ../../rtl/video/pentagon_video.vhd(124)
  AL_MUX \U7/U_PENT/u29  (
    .i0(\U7/U_PENT/n55 ),
    .i1(1'b1),
    .sel(\U7/U_PENT/n45 ),
    .o(\U7/U_PENT/n56 ));  // ../../rtl/video/pentagon_video.vhd(124)
  not \U7/U_PENT/u3  (\U7/U_PENT/n8 , soft_sw[2]);  // ../../rtl/video/pentagon_video.vhd(93)
  and \U7/U_PENT/u4  (\U7/U_PENT/n10 , \U7/U_PENT/n7 , \U7/U_PENT/n8 );  // ../../rtl/video/pentagon_video.vhd(93)
  and \U7/U_PENT/u5  (\U7/U_PENT/n11 , \U7/U_PENT/n10 , \U7/U_PENT/n9 );  // ../../rtl/video/pentagon_video.vhd(93)
  and \U7/U_PENT/u7  (\U7/U_PENT/n13 , \U7/U_PENT/n12 , soft_sw[2]);  // ../../rtl/video/pentagon_video.vhd(94)
  not \U7/U_PENT/u78  (\U7/U_PENT/n106 , \U7/U_PENT/paper_r );  // ../../rtl/video/pentagon_video.vhd(189)
  and \U7/U_PENT/u79  (\U7/U_PENT/n107 , \U7/attr_o_spec [7], blink);  // ../../rtl/video/pentagon_video.vhd(191)
  and \U7/U_PENT/u8  (\U7/U_PENT/n14 , \U7/U_PENT/n13 , \U7/U_PENT/n9 );  // ../../rtl/video/pentagon_video.vhd(94)
  xor \U7/U_PENT/u80  (\U7/U_PENT/n108 , \U7/U_PENT/shift_r [7], \U7/U_PENT/n107 );  // ../../rtl/video/pentagon_video.vhd(191)
  AL_MUX \U7/U_PENT/u81  (
    .i0(\U7/attr_o_spec [3]),
    .i1(\U7/attr_o_spec [0]),
    .sel(\U7/U_PENT/n108 ),
    .o(\U7/U_PENT/n109 ));  // ../../rtl/video/pentagon_video.vhd(199)
  AL_MUX \U7/U_PENT/u82  (
    .i0(\U7/attr_o_spec [4]),
    .i1(\U7/attr_o_spec [1]),
    .sel(\U7/U_PENT/n108 ),
    .o(\U7/U_PENT/n110 ));  // ../../rtl/video/pentagon_video.vhd(199)
  AL_MUX \U7/U_PENT/u83  (
    .i0(\U7/attr_o_spec [5]),
    .i1(\U7/attr_o_spec [2]),
    .sel(\U7/U_PENT/n108 ),
    .o(\U7/U_PENT/n111 ));  // ../../rtl/video/pentagon_video.vhd(199)
  AL_MUX \U7/U_PENT/u88  (
    .i0(1'b0),
    .i1(\U7/U_PENT/n109 ),
    .sel(\U7/U_PENT/n106 ),
    .o(\U7/U_PENT/n116 ));  // ../../rtl/video/pentagon_video.vhd(215)
  AL_MUX \U7/U_PENT/u89  (
    .i0(1'b0),
    .i1(\U7/U_PENT/n110 ),
    .sel(\U7/U_PENT/n106 ),
    .o(\U7/U_PENT/n117 ));  // ../../rtl/video/pentagon_video.vhd(215)
  AL_MUX \U7/U_PENT/u90  (
    .i0(1'b0),
    .i1(\U7/U_PENT/n111 ),
    .sel(\U7/U_PENT/n106 ),
    .o(\U7/U_PENT/n118 ));  // ../../rtl/video/pentagon_video.vhd(215)
  AL_MUX \U7/U_PENT/u91  (
    .i0(1'b0),
    .i1(\U7/attr_o_spec [6]),
    .sel(\U7/U_PENT/n106 ),
    .o(\U7/U_PENT/n119 ));  // ../../rtl/video/pentagon_video.vhd(215)
  binary_mux_s4_w1 \U7/mux37_b1  (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b0),
    .i11(1'b1),
    .i12(1'b0),
    .i13(1'b1),
    .i14(1'b0),
    .i15(1'b1),
    .i2(1'b0),
    .i3(1'b0),
    .i4(1'b0),
    .i5(1'b0),
    .i6(1'b0),
    .i7(1'b0),
    .i8(1'b0),
    .i9(1'b1),
    .sel({\U7/i_spec ,\U7/rgb_spec [1],\U7/rgb_spec [2],\U7/rgb_spec [0]}),
    .o(\U7/palette_grb [1]));  // ../../rtl/video/video.vhd(232)
  binary_mux_s4_w1 \U7/mux37_b2  (
    .i0(1'b0),
    .i1(1'b1),
    .i10(1'b0),
    .i11(1'b1),
    .i12(1'b0),
    .i13(1'b1),
    .i14(1'b0),
    .i15(1'b1),
    .i2(1'b0),
    .i3(1'b1),
    .i4(1'b0),
    .i5(1'b1),
    .i6(1'b0),
    .i7(1'b1),
    .i8(1'b0),
    .i9(1'b1),
    .sel({\U7/i_spec ,\U7/rgb_spec [1],\U7/rgb_spec [2],\U7/rgb_spec [0]}),
    .o(\U7/palette_grb [2]));  // ../../rtl/video/video.vhd(232)
  binary_mux_s4_w1 \U7/mux37_b4  (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b1),
    .i11(1'b1),
    .i12(1'b0),
    .i13(1'b0),
    .i14(1'b1),
    .i15(1'b1),
    .i2(1'b0),
    .i3(1'b0),
    .i4(1'b0),
    .i5(1'b0),
    .i6(1'b0),
    .i7(1'b0),
    .i8(1'b0),
    .i9(1'b0),
    .sel({\U7/i_spec ,\U7/rgb_spec [1],\U7/rgb_spec [2],\U7/rgb_spec [0]}),
    .o(\U7/palette_grb [4]));  // ../../rtl/video/video.vhd(232)
  binary_mux_s4_w1 \U7/mux37_b5  (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b1),
    .i11(1'b1),
    .i12(1'b0),
    .i13(1'b0),
    .i14(1'b1),
    .i15(1'b1),
    .i2(1'b1),
    .i3(1'b1),
    .i4(1'b0),
    .i5(1'b0),
    .i6(1'b1),
    .i7(1'b1),
    .i8(1'b0),
    .i9(1'b0),
    .sel({\U7/i_spec ,\U7/rgb_spec [1],\U7/rgb_spec [2],\U7/rgb_spec [0]}),
    .o(\U7/palette_grb [5]));  // ../../rtl/video/video.vhd(232)
  binary_mux_s4_w1 \U7/mux37_b7  (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b0),
    .i11(1'b0),
    .i12(1'b1),
    .i13(1'b1),
    .i14(1'b1),
    .i15(1'b1),
    .i2(1'b0),
    .i3(1'b0),
    .i4(1'b0),
    .i5(1'b0),
    .i6(1'b0),
    .i7(1'b0),
    .i8(1'b0),
    .i9(1'b0),
    .sel({\U7/i_spec ,\U7/rgb_spec [1],\U7/rgb_spec [2],\U7/rgb_spec [0]}),
    .o(\U7/palette_grb [7]));  // ../../rtl/video/video.vhd(232)
  binary_mux_s4_w1 \U7/mux37_b8  (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b0),
    .i11(1'b0),
    .i12(1'b1),
    .i13(1'b1),
    .i14(1'b1),
    .i15(1'b1),
    .i2(1'b0),
    .i3(1'b0),
    .i4(1'b1),
    .i5(1'b1),
    .i6(1'b1),
    .i7(1'b1),
    .i8(1'b0),
    .i9(1'b0),
    .sel({\U7/i_spec ,\U7/rgb_spec [1],\U7/rgb_spec [2],\U7/rgb_spec [0]}),
    .o(\U7/palette_grb [8]));  // ../../rtl/video/video.vhd(232)
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
    \U8/U_FONT/inst  (
    .addra(\U8/rom_addr ),
    .addrb(11'b00000000000),
    .bea(1'b0),
    .beb(1'b0),
    .cea(1'b1),
    .ceb(1'b0),
    .clka(clk_div2),
    .clkb(1'b0),
    .dia(8'b00000000),
    .dib(8'b00000000),
    .ocea(1'b0),
    .oceb(1'b0),
    .rsta(1'b0),
    .rstb(1'b0),
    .wea(1'b0),
    .web(1'b0),
    .doa(\U8/font_word ));  // al_ip/rom_font1.vhd(30)
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
    \U8/U_ICONS/U_FONT_ICONS/inst  (
    .addra({\U7/vid_a_spec [5],1'b0,\U8/U_ICONS/icon_pos [1:0],\U7/vid_a_spec [0],\U7/vcnt_spec [2:0],\U7/hcnt_spec [2:0]}),
    .addrb(11'b00000000000),
    .bea(1'b0),
    .beb(1'b0),
    .cea(1'b1),
    .ceb(1'b0),
    .clka(clk_28),
    .clkb(1'b0),
    .dia(1'b0),
    .dib(1'b0),
    .ocea(1'b0),
    .oceb(1'b0),
    .rsta(1'b0),
    .rstb(1'b0),
    .wea(1'b0),
    .web(1'b0),
    .doa(\U8/U_ICONS/icon_pixel ));  // al_ip/rom_font2.vhd(30)
  add_pu21_pu21_o21 \U8/U_ICONS/add0  (
    .i0(\U8/U_ICONS/cnt_icon_fd ),
    .i1(21'b000000000000000000001),
    .o(\U8/U_ICONS/n23 ));
  add_pu21_pu21_o21 \U8/U_ICONS/add1  (
    .i0(\U8/U_ICONS/cnt_icon_sd ),
    .i1(21'b000000000000000000001),
    .o(\U8/U_ICONS/n26 ));
  add_pu21_pu21_o21 \U8/U_ICONS/add2  (
    .i0(\U8/U_ICONS/cnt_icon_cf ),
    .i1(21'b000000000000000000001),
    .o(\U8/U_ICONS/n29 ));
  lt_u21_u21 \U8/U_ICONS/lt10  (
    .ci(1'b0),
    .i0(\U8/U_ICONS/cnt_icon_sd ),
    .i1(21'b111111111111111111111),
    .o(\U8/U_ICONS/is_icon_sd ));
  lt_u21_u21 \U8/U_ICONS/lt11  (
    .ci(1'b0),
    .i0(\U8/U_ICONS/cnt_icon_cf ),
    .i1(21'b111111111111111111111),
    .o(\U8/U_ICONS/is_icon_cf ));
  lt_u9_u9 \U8/U_ICONS/lt2_2  (
    .ci(1'b1),
    .i0(9'b100100000),
    .i1({\U7/hcnt_spec [8],\U7/vid_a_spec [4:0],\U7/hcnt_spec [2:0]}),
    .o(\U8/U_ICONS/n5 ));
  lt_u9_u9 \U8/U_ICONS/lt3_2  (
    .ci(1'b0),
    .i0({\U7/hcnt_spec [8],\U7/vid_a_spec [4:0],\U7/hcnt_spec [2:0]}),
    .i1(9'b100110000),
    .o(\U8/U_ICONS/n6 ));
  lt_u9_u9 \U8/U_ICONS/lt4  (
    .ci(1'b0),
    .i0({\U7/vcnt_spec [8:6],\U7/vid_a_spec [7:5],\U7/vcnt_spec [2:0]}),
    .i1(9'b000010000),
    .o(\U8/U_ICONS/n9 ));
  lt_u9_u9 \U8/U_ICONS/lt5  (
    .ci(1'b1),
    .i0(9'b000010000),
    .i1({\U7/vcnt_spec [8:6],\U7/vid_a_spec [7:5],\U7/vcnt_spec [2:0]}),
    .o(\U8/U_ICONS/n10 ));
  lt_u9_u9 \U8/U_ICONS/lt6  (
    .ci(1'b0),
    .i0({\U7/vcnt_spec [8:6],\U7/vid_a_spec [7:5],\U7/vcnt_spec [2:0]}),
    .i1(9'b000100000),
    .o(\U8/U_ICONS/n11 ));
  lt_u9_u9 \U8/U_ICONS/lt7  (
    .ci(1'b1),
    .i0(9'b000100000),
    .i1({\U7/vcnt_spec [8:6],\U7/vid_a_spec [7:5],\U7/vcnt_spec [2:0]}),
    .o(\U8/U_ICONS/n13 ));
  lt_u9_u9 \U8/U_ICONS/lt8  (
    .ci(1'b0),
    .i0({\U7/vcnt_spec [8:6],\U7/vid_a_spec [7:5],\U7/vcnt_spec [2:0]}),
    .i1(9'b000110000),
    .o(\U8/U_ICONS/n14 ));
  lt_u21_u21 \U8/U_ICONS/lt9  (
    .ci(1'b0),
    .i0(\U8/U_ICONS/cnt_icon_fd ),
    .i1(21'b111111111111111111111),
    .o(\U8/U_ICONS/is_icon_fd ));
  binary_mux_s1_w1 \U8/U_ICONS/mux0_b0  (
    .i0(\U8/U_ICONS/cnt_icon_fd [0]),
    .i1(\U8/U_ICONS/n23 [0]),
    .sel(\U8/U_ICONS/is_icon_fd ),
    .o(\U8/U_ICONS/n24 [0]));  // ../../rtl/video/icons.vhd(121)
  binary_mux_s1_w1 \U8/U_ICONS/mux0_b1  (
    .i0(\U8/U_ICONS/cnt_icon_fd [1]),
    .i1(\U8/U_ICONS/n23 [1]),
    .sel(\U8/U_ICONS/is_icon_fd ),
    .o(\U8/U_ICONS/n24 [1]));  // ../../rtl/video/icons.vhd(121)
  binary_mux_s1_w1 \U8/U_ICONS/mux0_b10  (
    .i0(\U8/U_ICONS/cnt_icon_fd [10]),
    .i1(\U8/U_ICONS/n23 [10]),
    .sel(\U8/U_ICONS/is_icon_fd ),
    .o(\U8/U_ICONS/n24 [10]));  // ../../rtl/video/icons.vhd(121)
  binary_mux_s1_w1 \U8/U_ICONS/mux0_b11  (
    .i0(\U8/U_ICONS/cnt_icon_fd [11]),
    .i1(\U8/U_ICONS/n23 [11]),
    .sel(\U8/U_ICONS/is_icon_fd ),
    .o(\U8/U_ICONS/n24 [11]));  // ../../rtl/video/icons.vhd(121)
  binary_mux_s1_w1 \U8/U_ICONS/mux0_b12  (
    .i0(\U8/U_ICONS/cnt_icon_fd [12]),
    .i1(\U8/U_ICONS/n23 [12]),
    .sel(\U8/U_ICONS/is_icon_fd ),
    .o(\U8/U_ICONS/n24 [12]));  // ../../rtl/video/icons.vhd(121)
  binary_mux_s1_w1 \U8/U_ICONS/mux0_b13  (
    .i0(\U8/U_ICONS/cnt_icon_fd [13]),
    .i1(\U8/U_ICONS/n23 [13]),
    .sel(\U8/U_ICONS/is_icon_fd ),
    .o(\U8/U_ICONS/n24 [13]));  // ../../rtl/video/icons.vhd(121)
  binary_mux_s1_w1 \U8/U_ICONS/mux0_b14  (
    .i0(\U8/U_ICONS/cnt_icon_fd [14]),
    .i1(\U8/U_ICONS/n23 [14]),
    .sel(\U8/U_ICONS/is_icon_fd ),
    .o(\U8/U_ICONS/n24 [14]));  // ../../rtl/video/icons.vhd(121)
  binary_mux_s1_w1 \U8/U_ICONS/mux0_b15  (
    .i0(\U8/U_ICONS/cnt_icon_fd [15]),
    .i1(\U8/U_ICONS/n23 [15]),
    .sel(\U8/U_ICONS/is_icon_fd ),
    .o(\U8/U_ICONS/n24 [15]));  // ../../rtl/video/icons.vhd(121)
  binary_mux_s1_w1 \U8/U_ICONS/mux0_b16  (
    .i0(\U8/U_ICONS/cnt_icon_fd [16]),
    .i1(\U8/U_ICONS/n23 [16]),
    .sel(\U8/U_ICONS/is_icon_fd ),
    .o(\U8/U_ICONS/n24 [16]));  // ../../rtl/video/icons.vhd(121)
  binary_mux_s1_w1 \U8/U_ICONS/mux0_b17  (
    .i0(\U8/U_ICONS/cnt_icon_fd [17]),
    .i1(\U8/U_ICONS/n23 [17]),
    .sel(\U8/U_ICONS/is_icon_fd ),
    .o(\U8/U_ICONS/n24 [17]));  // ../../rtl/video/icons.vhd(121)
  binary_mux_s1_w1 \U8/U_ICONS/mux0_b18  (
    .i0(\U8/U_ICONS/cnt_icon_fd [18]),
    .i1(\U8/U_ICONS/n23 [18]),
    .sel(\U8/U_ICONS/is_icon_fd ),
    .o(\U8/U_ICONS/n24 [18]));  // ../../rtl/video/icons.vhd(121)
  binary_mux_s1_w1 \U8/U_ICONS/mux0_b19  (
    .i0(\U8/U_ICONS/cnt_icon_fd [19]),
    .i1(\U8/U_ICONS/n23 [19]),
    .sel(\U8/U_ICONS/is_icon_fd ),
    .o(\U8/U_ICONS/n24 [19]));  // ../../rtl/video/icons.vhd(121)
  binary_mux_s1_w1 \U8/U_ICONS/mux0_b2  (
    .i0(\U8/U_ICONS/cnt_icon_fd [2]),
    .i1(\U8/U_ICONS/n23 [2]),
    .sel(\U8/U_ICONS/is_icon_fd ),
    .o(\U8/U_ICONS/n24 [2]));  // ../../rtl/video/icons.vhd(121)
  binary_mux_s1_w1 \U8/U_ICONS/mux0_b20  (
    .i0(\U8/U_ICONS/cnt_icon_fd [20]),
    .i1(\U8/U_ICONS/n23 [20]),
    .sel(\U8/U_ICONS/is_icon_fd ),
    .o(\U8/U_ICONS/n24 [20]));  // ../../rtl/video/icons.vhd(121)
  binary_mux_s1_w1 \U8/U_ICONS/mux0_b3  (
    .i0(\U8/U_ICONS/cnt_icon_fd [3]),
    .i1(\U8/U_ICONS/n23 [3]),
    .sel(\U8/U_ICONS/is_icon_fd ),
    .o(\U8/U_ICONS/n24 [3]));  // ../../rtl/video/icons.vhd(121)
  binary_mux_s1_w1 \U8/U_ICONS/mux0_b4  (
    .i0(\U8/U_ICONS/cnt_icon_fd [4]),
    .i1(\U8/U_ICONS/n23 [4]),
    .sel(\U8/U_ICONS/is_icon_fd ),
    .o(\U8/U_ICONS/n24 [4]));  // ../../rtl/video/icons.vhd(121)
  binary_mux_s1_w1 \U8/U_ICONS/mux0_b5  (
    .i0(\U8/U_ICONS/cnt_icon_fd [5]),
    .i1(\U8/U_ICONS/n23 [5]),
    .sel(\U8/U_ICONS/is_icon_fd ),
    .o(\U8/U_ICONS/n24 [5]));  // ../../rtl/video/icons.vhd(121)
  binary_mux_s1_w1 \U8/U_ICONS/mux0_b6  (
    .i0(\U8/U_ICONS/cnt_icon_fd [6]),
    .i1(\U8/U_ICONS/n23 [6]),
    .sel(\U8/U_ICONS/is_icon_fd ),
    .o(\U8/U_ICONS/n24 [6]));  // ../../rtl/video/icons.vhd(121)
  binary_mux_s1_w1 \U8/U_ICONS/mux0_b7  (
    .i0(\U8/U_ICONS/cnt_icon_fd [7]),
    .i1(\U8/U_ICONS/n23 [7]),
    .sel(\U8/U_ICONS/is_icon_fd ),
    .o(\U8/U_ICONS/n24 [7]));  // ../../rtl/video/icons.vhd(121)
  binary_mux_s1_w1 \U8/U_ICONS/mux0_b8  (
    .i0(\U8/U_ICONS/cnt_icon_fd [8]),
    .i1(\U8/U_ICONS/n23 [8]),
    .sel(\U8/U_ICONS/is_icon_fd ),
    .o(\U8/U_ICONS/n24 [8]));  // ../../rtl/video/icons.vhd(121)
  binary_mux_s1_w1 \U8/U_ICONS/mux0_b9  (
    .i0(\U8/U_ICONS/cnt_icon_fd [9]),
    .i1(\U8/U_ICONS/n23 [9]),
    .sel(\U8/U_ICONS/is_icon_fd ),
    .o(\U8/U_ICONS/n24 [9]));  // ../../rtl/video/icons.vhd(121)
  and \U8/U_ICONS/mux10_b0_sel_is_0  (\U8/U_ICONS/mux10_b0_sel_is_0_o , \U8/U_ICONS/n44_neg , \U8/U_ICONS/n46_neg );
  AL_MUX \U8/U_ICONS/mux11_b0  (
    .i0(1'b1),
    .i1(1'b0),
    .sel(\U8/U_ICONS/mux11_b0_sel_is_2_o ),
    .o(\U8/rgb [0]));
  and \U8/U_ICONS/mux11_b0_sel_is_2  (\U8/U_ICONS/mux11_b0_sel_is_2_o , \U8/U_ICONS/n42_neg , \U8/U_ICONS/mux10_b0_sel_is_0_o );
  AL_MUX \U8/U_ICONS/mux11_b2  (
    .i0(1'b0),
    .i1(\U7/palette_grb [2]),
    .sel(\U8/U_ICONS/mux11_b0_sel_is_2_o ),
    .o(\U8/rgb [2]));
  AL_MUX \U8/U_ICONS/mux11_b4  (
    .i0(1'b1),
    .i1(\U7/palette_grb [7]),
    .sel(\U8/U_ICONS/mux11_b0_sel_is_2_o ),
    .o(\U8/rgb [4]));
  AL_MUX \U8/U_ICONS/mux11_b5  (
    .i0(1'b0),
    .i1(\U7/palette_grb [8]),
    .sel(\U8/U_ICONS/mux11_b0_sel_is_2_o ),
    .o(\U8/rgb [5]));
  AL_MUX \U8/U_ICONS/mux11_b8  (
    .i0(1'b0),
    .i1(\U7/palette_grb [5]),
    .sel(\U8/U_ICONS/mux11_b0_sel_is_2_o ),
    .o(\U8/rgb [8]));
  binary_mux_s1_w1 \U8/U_ICONS/mux2_b0  (
    .i0(\U8/U_ICONS/cnt_icon_sd [0]),
    .i1(\U8/U_ICONS/n26 [0]),
    .sel(\U8/U_ICONS/is_icon_sd ),
    .o(\U8/U_ICONS/n27 [0]));  // ../../rtl/video/icons.vhd(126)
  binary_mux_s1_w1 \U8/U_ICONS/mux2_b1  (
    .i0(\U8/U_ICONS/cnt_icon_sd [1]),
    .i1(\U8/U_ICONS/n26 [1]),
    .sel(\U8/U_ICONS/is_icon_sd ),
    .o(\U8/U_ICONS/n27 [1]));  // ../../rtl/video/icons.vhd(126)
  binary_mux_s1_w1 \U8/U_ICONS/mux2_b10  (
    .i0(\U8/U_ICONS/cnt_icon_sd [10]),
    .i1(\U8/U_ICONS/n26 [10]),
    .sel(\U8/U_ICONS/is_icon_sd ),
    .o(\U8/U_ICONS/n27 [10]));  // ../../rtl/video/icons.vhd(126)
  binary_mux_s1_w1 \U8/U_ICONS/mux2_b11  (
    .i0(\U8/U_ICONS/cnt_icon_sd [11]),
    .i1(\U8/U_ICONS/n26 [11]),
    .sel(\U8/U_ICONS/is_icon_sd ),
    .o(\U8/U_ICONS/n27 [11]));  // ../../rtl/video/icons.vhd(126)
  binary_mux_s1_w1 \U8/U_ICONS/mux2_b12  (
    .i0(\U8/U_ICONS/cnt_icon_sd [12]),
    .i1(\U8/U_ICONS/n26 [12]),
    .sel(\U8/U_ICONS/is_icon_sd ),
    .o(\U8/U_ICONS/n27 [12]));  // ../../rtl/video/icons.vhd(126)
  binary_mux_s1_w1 \U8/U_ICONS/mux2_b13  (
    .i0(\U8/U_ICONS/cnt_icon_sd [13]),
    .i1(\U8/U_ICONS/n26 [13]),
    .sel(\U8/U_ICONS/is_icon_sd ),
    .o(\U8/U_ICONS/n27 [13]));  // ../../rtl/video/icons.vhd(126)
  binary_mux_s1_w1 \U8/U_ICONS/mux2_b14  (
    .i0(\U8/U_ICONS/cnt_icon_sd [14]),
    .i1(\U8/U_ICONS/n26 [14]),
    .sel(\U8/U_ICONS/is_icon_sd ),
    .o(\U8/U_ICONS/n27 [14]));  // ../../rtl/video/icons.vhd(126)
  binary_mux_s1_w1 \U8/U_ICONS/mux2_b15  (
    .i0(\U8/U_ICONS/cnt_icon_sd [15]),
    .i1(\U8/U_ICONS/n26 [15]),
    .sel(\U8/U_ICONS/is_icon_sd ),
    .o(\U8/U_ICONS/n27 [15]));  // ../../rtl/video/icons.vhd(126)
  binary_mux_s1_w1 \U8/U_ICONS/mux2_b16  (
    .i0(\U8/U_ICONS/cnt_icon_sd [16]),
    .i1(\U8/U_ICONS/n26 [16]),
    .sel(\U8/U_ICONS/is_icon_sd ),
    .o(\U8/U_ICONS/n27 [16]));  // ../../rtl/video/icons.vhd(126)
  binary_mux_s1_w1 \U8/U_ICONS/mux2_b17  (
    .i0(\U8/U_ICONS/cnt_icon_sd [17]),
    .i1(\U8/U_ICONS/n26 [17]),
    .sel(\U8/U_ICONS/is_icon_sd ),
    .o(\U8/U_ICONS/n27 [17]));  // ../../rtl/video/icons.vhd(126)
  binary_mux_s1_w1 \U8/U_ICONS/mux2_b18  (
    .i0(\U8/U_ICONS/cnt_icon_sd [18]),
    .i1(\U8/U_ICONS/n26 [18]),
    .sel(\U8/U_ICONS/is_icon_sd ),
    .o(\U8/U_ICONS/n27 [18]));  // ../../rtl/video/icons.vhd(126)
  binary_mux_s1_w1 \U8/U_ICONS/mux2_b19  (
    .i0(\U8/U_ICONS/cnt_icon_sd [19]),
    .i1(\U8/U_ICONS/n26 [19]),
    .sel(\U8/U_ICONS/is_icon_sd ),
    .o(\U8/U_ICONS/n27 [19]));  // ../../rtl/video/icons.vhd(126)
  binary_mux_s1_w1 \U8/U_ICONS/mux2_b2  (
    .i0(\U8/U_ICONS/cnt_icon_sd [2]),
    .i1(\U8/U_ICONS/n26 [2]),
    .sel(\U8/U_ICONS/is_icon_sd ),
    .o(\U8/U_ICONS/n27 [2]));  // ../../rtl/video/icons.vhd(126)
  binary_mux_s1_w1 \U8/U_ICONS/mux2_b20  (
    .i0(\U8/U_ICONS/cnt_icon_sd [20]),
    .i1(\U8/U_ICONS/n26 [20]),
    .sel(\U8/U_ICONS/is_icon_sd ),
    .o(\U8/U_ICONS/n27 [20]));  // ../../rtl/video/icons.vhd(126)
  binary_mux_s1_w1 \U8/U_ICONS/mux2_b3  (
    .i0(\U8/U_ICONS/cnt_icon_sd [3]),
    .i1(\U8/U_ICONS/n26 [3]),
    .sel(\U8/U_ICONS/is_icon_sd ),
    .o(\U8/U_ICONS/n27 [3]));  // ../../rtl/video/icons.vhd(126)
  binary_mux_s1_w1 \U8/U_ICONS/mux2_b4  (
    .i0(\U8/U_ICONS/cnt_icon_sd [4]),
    .i1(\U8/U_ICONS/n26 [4]),
    .sel(\U8/U_ICONS/is_icon_sd ),
    .o(\U8/U_ICONS/n27 [4]));  // ../../rtl/video/icons.vhd(126)
  binary_mux_s1_w1 \U8/U_ICONS/mux2_b5  (
    .i0(\U8/U_ICONS/cnt_icon_sd [5]),
    .i1(\U8/U_ICONS/n26 [5]),
    .sel(\U8/U_ICONS/is_icon_sd ),
    .o(\U8/U_ICONS/n27 [5]));  // ../../rtl/video/icons.vhd(126)
  binary_mux_s1_w1 \U8/U_ICONS/mux2_b6  (
    .i0(\U8/U_ICONS/cnt_icon_sd [6]),
    .i1(\U8/U_ICONS/n26 [6]),
    .sel(\U8/U_ICONS/is_icon_sd ),
    .o(\U8/U_ICONS/n27 [6]));  // ../../rtl/video/icons.vhd(126)
  binary_mux_s1_w1 \U8/U_ICONS/mux2_b7  (
    .i0(\U8/U_ICONS/cnt_icon_sd [7]),
    .i1(\U8/U_ICONS/n26 [7]),
    .sel(\U8/U_ICONS/is_icon_sd ),
    .o(\U8/U_ICONS/n27 [7]));  // ../../rtl/video/icons.vhd(126)
  binary_mux_s1_w1 \U8/U_ICONS/mux2_b8  (
    .i0(\U8/U_ICONS/cnt_icon_sd [8]),
    .i1(\U8/U_ICONS/n26 [8]),
    .sel(\U8/U_ICONS/is_icon_sd ),
    .o(\U8/U_ICONS/n27 [8]));  // ../../rtl/video/icons.vhd(126)
  binary_mux_s1_w1 \U8/U_ICONS/mux2_b9  (
    .i0(\U8/U_ICONS/cnt_icon_sd [9]),
    .i1(\U8/U_ICONS/n26 [9]),
    .sel(\U8/U_ICONS/is_icon_sd ),
    .o(\U8/U_ICONS/n27 [9]));  // ../../rtl/video/icons.vhd(126)
  binary_mux_s1_w1 \U8/U_ICONS/mux4_b0  (
    .i0(\U8/U_ICONS/cnt_icon_cf [0]),
    .i1(\U8/U_ICONS/n29 [0]),
    .sel(\U8/U_ICONS/is_icon_cf ),
    .o(\U8/U_ICONS/n30 [0]));  // ../../rtl/video/icons.vhd(131)
  binary_mux_s1_w1 \U8/U_ICONS/mux4_b1  (
    .i0(\U8/U_ICONS/cnt_icon_cf [1]),
    .i1(\U8/U_ICONS/n29 [1]),
    .sel(\U8/U_ICONS/is_icon_cf ),
    .o(\U8/U_ICONS/n30 [1]));  // ../../rtl/video/icons.vhd(131)
  binary_mux_s1_w1 \U8/U_ICONS/mux4_b10  (
    .i0(\U8/U_ICONS/cnt_icon_cf [10]),
    .i1(\U8/U_ICONS/n29 [10]),
    .sel(\U8/U_ICONS/is_icon_cf ),
    .o(\U8/U_ICONS/n30 [10]));  // ../../rtl/video/icons.vhd(131)
  binary_mux_s1_w1 \U8/U_ICONS/mux4_b11  (
    .i0(\U8/U_ICONS/cnt_icon_cf [11]),
    .i1(\U8/U_ICONS/n29 [11]),
    .sel(\U8/U_ICONS/is_icon_cf ),
    .o(\U8/U_ICONS/n30 [11]));  // ../../rtl/video/icons.vhd(131)
  binary_mux_s1_w1 \U8/U_ICONS/mux4_b12  (
    .i0(\U8/U_ICONS/cnt_icon_cf [12]),
    .i1(\U8/U_ICONS/n29 [12]),
    .sel(\U8/U_ICONS/is_icon_cf ),
    .o(\U8/U_ICONS/n30 [12]));  // ../../rtl/video/icons.vhd(131)
  binary_mux_s1_w1 \U8/U_ICONS/mux4_b13  (
    .i0(\U8/U_ICONS/cnt_icon_cf [13]),
    .i1(\U8/U_ICONS/n29 [13]),
    .sel(\U8/U_ICONS/is_icon_cf ),
    .o(\U8/U_ICONS/n30 [13]));  // ../../rtl/video/icons.vhd(131)
  binary_mux_s1_w1 \U8/U_ICONS/mux4_b14  (
    .i0(\U8/U_ICONS/cnt_icon_cf [14]),
    .i1(\U8/U_ICONS/n29 [14]),
    .sel(\U8/U_ICONS/is_icon_cf ),
    .o(\U8/U_ICONS/n30 [14]));  // ../../rtl/video/icons.vhd(131)
  binary_mux_s1_w1 \U8/U_ICONS/mux4_b15  (
    .i0(\U8/U_ICONS/cnt_icon_cf [15]),
    .i1(\U8/U_ICONS/n29 [15]),
    .sel(\U8/U_ICONS/is_icon_cf ),
    .o(\U8/U_ICONS/n30 [15]));  // ../../rtl/video/icons.vhd(131)
  binary_mux_s1_w1 \U8/U_ICONS/mux4_b16  (
    .i0(\U8/U_ICONS/cnt_icon_cf [16]),
    .i1(\U8/U_ICONS/n29 [16]),
    .sel(\U8/U_ICONS/is_icon_cf ),
    .o(\U8/U_ICONS/n30 [16]));  // ../../rtl/video/icons.vhd(131)
  binary_mux_s1_w1 \U8/U_ICONS/mux4_b17  (
    .i0(\U8/U_ICONS/cnt_icon_cf [17]),
    .i1(\U8/U_ICONS/n29 [17]),
    .sel(\U8/U_ICONS/is_icon_cf ),
    .o(\U8/U_ICONS/n30 [17]));  // ../../rtl/video/icons.vhd(131)
  binary_mux_s1_w1 \U8/U_ICONS/mux4_b18  (
    .i0(\U8/U_ICONS/cnt_icon_cf [18]),
    .i1(\U8/U_ICONS/n29 [18]),
    .sel(\U8/U_ICONS/is_icon_cf ),
    .o(\U8/U_ICONS/n30 [18]));  // ../../rtl/video/icons.vhd(131)
  binary_mux_s1_w1 \U8/U_ICONS/mux4_b19  (
    .i0(\U8/U_ICONS/cnt_icon_cf [19]),
    .i1(\U8/U_ICONS/n29 [19]),
    .sel(\U8/U_ICONS/is_icon_cf ),
    .o(\U8/U_ICONS/n30 [19]));  // ../../rtl/video/icons.vhd(131)
  binary_mux_s1_w1 \U8/U_ICONS/mux4_b2  (
    .i0(\U8/U_ICONS/cnt_icon_cf [2]),
    .i1(\U8/U_ICONS/n29 [2]),
    .sel(\U8/U_ICONS/is_icon_cf ),
    .o(\U8/U_ICONS/n30 [2]));  // ../../rtl/video/icons.vhd(131)
  binary_mux_s1_w1 \U8/U_ICONS/mux4_b20  (
    .i0(\U8/U_ICONS/cnt_icon_cf [20]),
    .i1(\U8/U_ICONS/n29 [20]),
    .sel(\U8/U_ICONS/is_icon_cf ),
    .o(\U8/U_ICONS/n30 [20]));  // ../../rtl/video/icons.vhd(131)
  binary_mux_s1_w1 \U8/U_ICONS/mux4_b3  (
    .i0(\U8/U_ICONS/cnt_icon_cf [3]),
    .i1(\U8/U_ICONS/n29 [3]),
    .sel(\U8/U_ICONS/is_icon_cf ),
    .o(\U8/U_ICONS/n30 [3]));  // ../../rtl/video/icons.vhd(131)
  binary_mux_s1_w1 \U8/U_ICONS/mux4_b4  (
    .i0(\U8/U_ICONS/cnt_icon_cf [4]),
    .i1(\U8/U_ICONS/n29 [4]),
    .sel(\U8/U_ICONS/is_icon_cf ),
    .o(\U8/U_ICONS/n30 [4]));  // ../../rtl/video/icons.vhd(131)
  binary_mux_s1_w1 \U8/U_ICONS/mux4_b5  (
    .i0(\U8/U_ICONS/cnt_icon_cf [5]),
    .i1(\U8/U_ICONS/n29 [5]),
    .sel(\U8/U_ICONS/is_icon_cf ),
    .o(\U8/U_ICONS/n30 [5]));  // ../../rtl/video/icons.vhd(131)
  binary_mux_s1_w1 \U8/U_ICONS/mux4_b6  (
    .i0(\U8/U_ICONS/cnt_icon_cf [6]),
    .i1(\U8/U_ICONS/n29 [6]),
    .sel(\U8/U_ICONS/is_icon_cf ),
    .o(\U8/U_ICONS/n30 [6]));  // ../../rtl/video/icons.vhd(131)
  binary_mux_s1_w1 \U8/U_ICONS/mux4_b7  (
    .i0(\U8/U_ICONS/cnt_icon_cf [7]),
    .i1(\U8/U_ICONS/n29 [7]),
    .sel(\U8/U_ICONS/is_icon_cf ),
    .o(\U8/U_ICONS/n30 [7]));  // ../../rtl/video/icons.vhd(131)
  binary_mux_s1_w1 \U8/U_ICONS/mux4_b8  (
    .i0(\U8/U_ICONS/cnt_icon_cf [8]),
    .i1(\U8/U_ICONS/n29 [8]),
    .sel(\U8/U_ICONS/is_icon_cf ),
    .o(\U8/U_ICONS/n30 [8]));  // ../../rtl/video/icons.vhd(131)
  binary_mux_s1_w1 \U8/U_ICONS/mux4_b9  (
    .i0(\U8/U_ICONS/cnt_icon_cf [9]),
    .i1(\U8/U_ICONS/n29 [9]),
    .sel(\U8/U_ICONS/is_icon_cf ),
    .o(\U8/U_ICONS/n30 [9]));  // ../../rtl/video/icons.vhd(131)
  not \U8/U_ICONS/n42_inv  (\U8/U_ICONS/n42_neg , \U8/U_ICONS/n42 );
  not \U8/U_ICONS/n44_inv  (\U8/U_ICONS/n44_neg , \U8/U_ICONS/n44 );
  not \U8/U_ICONS/n46_inv  (\U8/U_ICONS/n46_neg , \U8/U_ICONS/n46 );
  reg_ar_as_w1 \U8/U_ICONS/reg0_b0  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n24 [0]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_fd [0]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg0_b1  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n24 [1]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_fd [1]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg0_b10  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n24 [10]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_fd [10]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg0_b11  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n24 [11]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_fd [11]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg0_b12  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n24 [12]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_fd [12]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg0_b13  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n24 [13]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_fd [13]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg0_b14  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n24 [14]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_fd [14]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg0_b15  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n24 [15]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_fd [15]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg0_b16  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n24 [16]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_fd [16]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg0_b17  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n24 [17]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_fd [17]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg0_b18  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n24 [18]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_fd [18]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg0_b19  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n24 [19]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_fd [19]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg0_b2  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n24 [2]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_fd [2]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg0_b20  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n24 [20]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_fd [20]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg0_b3  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n24 [3]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_fd [3]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg0_b4  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n24 [4]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_fd [4]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg0_b5  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n24 [5]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_fd [5]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg0_b6  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n24 [6]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_fd [6]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg0_b7  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n24 [7]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_fd [7]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg0_b8  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n24 [8]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_fd [8]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg0_b9  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n24 [9]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_fd [9]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg1_b0  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n27 [0]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_sd [0]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg1_b1  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n27 [1]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_sd [1]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg1_b10  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n27 [10]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_sd [10]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg1_b11  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n27 [11]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_sd [11]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg1_b12  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n27 [12]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_sd [12]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg1_b13  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n27 [13]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_sd [13]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg1_b14  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n27 [14]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_sd [14]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg1_b15  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n27 [15]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_sd [15]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg1_b16  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n27 [16]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_sd [16]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg1_b17  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n27 [17]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_sd [17]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg1_b18  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n27 [18]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_sd [18]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg1_b19  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n27 [19]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_sd [19]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg1_b2  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n27 [2]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_sd [2]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg1_b20  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n27 [20]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_sd [20]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg1_b3  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n27 [3]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_sd [3]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg1_b4  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n27 [4]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_sd [4]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg1_b5  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n27 [5]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_sd [5]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg1_b6  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n27 [6]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_sd [6]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg1_b7  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n27 [7]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_sd [7]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg1_b8  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n27 [8]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_sd [8]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg1_b9  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n27 [9]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_sd [9]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg2_b0  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n30 [0]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_cf [0]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg2_b1  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n30 [1]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_cf [1]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg2_b10  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n30 [10]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_cf [10]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg2_b11  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n30 [11]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_cf [11]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg2_b12  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n30 [12]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_cf [12]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg2_b13  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n30 [13]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_cf [13]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg2_b14  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n30 [14]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_cf [14]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg2_b15  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n30 [15]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_cf [15]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg2_b16  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n30 [16]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_cf [16]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg2_b17  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n30 [17]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_cf [17]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg2_b18  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n30 [18]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_cf [18]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg2_b19  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n30 [19]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_cf [19]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg2_b2  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n30 [2]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_cf [2]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg2_b20  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n30 [20]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_cf [20]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg2_b3  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n30 [3]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_cf [3]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg2_b4  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n30 [4]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_cf [4]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg2_b5  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n30 [5]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_cf [5]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg2_b6  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n30 [6]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_cf [6]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg2_b7  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n30 [7]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_cf [7]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg2_b8  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n30 [8]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_cf [8]));  // ../../rtl/video/icons.vhd(133)
  reg_ar_as_w1 \U8/U_ICONS/reg2_b9  (
    .clk(clk_28),
    .d(\U8/U_ICONS/n30 [9]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/U_ICONS/cnt_icon_cf [9]));  // ../../rtl/video/icons.vhd(133)
  latch_ar_as_w1 \U8/U_ICONS/reg3_b0  (
    .clk(1'b0),
    .d(1'bx),
    .en(1'b1),
    .reset(\U8/U_ICONS/n35 ),
    .set(\U8/U_ICONS/n37 ),
    .q(\U8/U_ICONS/icon_pos [0]));  // ../../rtl/video/icons.vhd(80)
  latch_ar_as_w1 \U8/U_ICONS/reg3_b1  (
    .clk(1'b0),
    .d(1'bx),
    .en(1'b1),
    .reset(\U8/U_ICONS/n38 ),
    .set(\U8/U_ICONS/n40 ),
    .q(\U8/U_ICONS/icon_pos [1]));  // ../../rtl/video/icons.vhd(80)
  and \U8/U_ICONS/u10  (\U8/U_ICONS/n12 , \U8/U_ICONS/n8 , \U8/U_ICONS/n10 );  // ../../rtl/video/icons.vhd(77)
  and \U8/U_ICONS/u11  (\U8/U_ICONS/paper_icon_sd , \U8/U_ICONS/n12 , \U8/U_ICONS/n11 );  // ../../rtl/video/icons.vhd(77)
  and \U8/U_ICONS/u12  (\U8/U_ICONS/n15 , \U8/U_ICONS/n8 , \U8/U_ICONS/n13 );  // ../../rtl/video/icons.vhd(78)
  and \U8/U_ICONS/u13  (\U8/U_ICONS/paper_icon_cf , \U8/U_ICONS/n15 , \U8/U_ICONS/n14 );  // ../../rtl/video/icons.vhd(78)
  or \U8/U_ICONS/u14  (\U8/U_ICONS/n16 , \U8/U_ICONS/paper_icon_sd , \U8/U_ICONS/paper_icon_cf );  // ../../rtl/video/icons.vhd(81)
  or \U8/U_ICONS/u15  (\U8/U_ICONS/n17 , \U8/U_ICONS/paper_icon_fd , \U8/U_ICONS/n16 );  // ../../rtl/video/icons.vhd(83)
  not \U8/U_ICONS/u16  (\U8/U_ICONS/n18 , \U8/U_ICONS/paper_icon_sd );  // ../../rtl/video/icons.vhd(81)
  and \U8/U_ICONS/u19  (\U8/U_ICONS/n40 , \U8/U_ICONS/n17 , \U8/U_ICONS/n19 );  // ../../rtl/video/icons.vhd(80)
  AL_MUX \U8/U_ICONS/u22  (
    .i0(\U8/U_ICONS/n18 ),
    .i1(1'b0),
    .sel(\U8/U_ICONS/paper_icon_fd ),
    .o(\U8/U_ICONS/n19 ));  // ../../rtl/video/icons.vhd(83)
  and \U8/U_ICONS/u25  (\U8/U_ICONS/n37 , \U8/U_ICONS/n17 , \U8/U_ICONS/n20 );  // ../../rtl/video/icons.vhd(80)
  AL_MUX \U8/U_ICONS/u28  (
    .i0(\U8/U_ICONS/paper_icon_sd ),
    .i1(1'b0),
    .sel(\U8/U_ICONS/paper_icon_fd ),
    .o(\U8/U_ICONS/n20 ));  // ../../rtl/video/icons.vhd(83)
  and \U8/U_ICONS/u38  (\U8/U_ICONS/n41 , \U8/U_ICONS/paper_icon_fd , \U8/U_ICONS/icon_pixel [0]);  // ../../rtl/video/icons.vhd(142)
  and \U8/U_ICONS/u39  (\U8/U_ICONS/n42 , \U8/U_ICONS/n41 , \U8/U_ICONS/is_icon_fd );  // ../../rtl/video/icons.vhd(142)
  and \U8/U_ICONS/u40  (\U8/U_ICONS/n43 , \U8/U_ICONS/paper_icon_sd , \U8/U_ICONS/icon_pixel [0]);  // ../../rtl/video/icons.vhd(143)
  and \U8/U_ICONS/u41  (\U8/U_ICONS/n44 , \U8/U_ICONS/n43 , \U8/U_ICONS/is_icon_sd );  // ../../rtl/video/icons.vhd(143)
  and \U8/U_ICONS/u42  (\U8/U_ICONS/n45 , \U8/U_ICONS/paper_icon_cf , \U8/U_ICONS/icon_pixel [0]);  // ../../rtl/video/icons.vhd(144)
  and \U8/U_ICONS/u43  (\U8/U_ICONS/n46 , \U8/U_ICONS/n45 , \U8/U_ICONS/is_icon_cf );  // ../../rtl/video/icons.vhd(144)
  not \U8/U_ICONS/u46  (\U8/U_ICONS/n39 , \U8/U_ICONS/n19 );  // ../../rtl/video/icons.vhd(80)
  and \U8/U_ICONS/u47  (\U8/U_ICONS/n38 , \U8/U_ICONS/n17 , \U8/U_ICONS/n39 );  // ../../rtl/video/icons.vhd(80)
  not \U8/U_ICONS/u49  (\U8/U_ICONS/n36 , \U8/U_ICONS/n20 );  // ../../rtl/video/icons.vhd(80)
  and \U8/U_ICONS/u50  (\U8/U_ICONS/n35 , \U8/U_ICONS/n17 , \U8/U_ICONS/n36 );  // ../../rtl/video/icons.vhd(80)
  and \U8/U_ICONS/u7  (\U8/U_ICONS/n8 , \U8/U_ICONS/n5 , \U8/U_ICONS/n6 );  // ../../rtl/video/icons.vhd(74)
  and \U8/U_ICONS/u9  (\U8/U_ICONS/paper_icon_fd , \U8/U_ICONS/n8 , \U8/U_ICONS/n9 );  // ../../rtl/video/icons.vhd(76)
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
    \U8/U_VRAM/inst  (
    .addra(\U8/addr_write ),
    .addrb(\U8/addr_read ),
    .bea(1'b0),
    .beb(1'b0),
    .cea(1'b1),
    .ceb(1'b1),
    .clka(clk_28),
    .clkb(clk_div2),
    .dia(\U8/vram_di ),
    .dib(16'b1111111111111111),
    .ocea(1'b0),
    .oceb(1'b0),
    .rsta(1'b0),
    .rstb(1'b0),
    .wea(\U8/vram_wr ),
    .web(1'b0),
    .dob(\U8/vram_do ));  // al_ip/screen1.vhd(37)
  not \U8/char_x[0]_inv  (\U8/char_x[0]_neg , \U8/char_x [0]);
  not \U8/char_x[1]_inv  (\U8/char_x[1]_neg , \U8/char_x [1]);
  not \U8/char_x[2]_inv  (\U8/char_x[2]_neg , \U8/char_x [2]);
  eq_w4 \U8/eq0  (
    .i0({\U7/vid_a_spec [0],\U7/hcnt_spec [2:0]}),
    .i1(4'b1111),
    .o(\U8/n21 ));
  eq_w3 \U8/eq1  (
    .i0(\U8/char_x ),
    .i1(3'b111),
    .o(\U8/n23 ));
  eq_w4 \U8/eq10  (
    .i0(\U8/attr [3:0]),
    .i1(4'b0001),
    .o(\U8/is_flash ));
  eq_w4 \U8/eq11  (
    .i0({\U8/video_on ,\U8/pixel_reg_al_n0 ,blink,\U8/is_flash }),
    .i1(4'b1111),
    .o(\U8/n56 ));
  eq_w4 \U8/eq12  (
    .i0({\U8/video_on ,\U8/pixel_reg_al_n0 ,blink,\U8/is_flash }),
    .i1(4'b1001),
    .o(\U8/n57 ));
  eq_w4 \U8/eq13  (
    .i0({\U8/video_on ,\U8/pixel_reg_al_n0 ,blink,\U8/is_flash }),
    .i1(4'b1100),
    .o(\U8/n58 ));
  eq_w4 \U8/eq14  (
    .i0({\U8/video_on ,\U8/pixel_reg_al_n0 ,blink,\U8/is_flash }),
    .i1(4'b1110),
    .o(\U8/n59 ));
  eq_w4 \U8/eq15  (
    .i0({\U8/video_on ,\U8/pixel_reg_al_n0 ,blink,\U8/is_flash }),
    .i1(4'b1011),
    .o(\U8/n64 ));
  eq_w4 \U8/eq16  (
    .i0({\U8/video_on ,\U8/pixel_reg_al_n0 ,blink,\U8/is_flash }),
    .i1(4'b1101),
    .o(\U8/n65 ));
  eq_w4 \U8/eq17  (
    .i0({\U8/video_on ,\U8/pixel_reg_al_n0 ,blink,\U8/is_flash }),
    .i1(4'b1000),
    .o(\U8/n66 ));
  eq_w4 \U8/eq18  (
    .i0({\U8/video_on ,\U8/pixel_reg_al_n0 ,blink,\U8/is_flash }),
    .i1(4'b1010),
    .o(\U8/n67 ));
  eq_w8 \U8/eq19  (
    .i0(8'b00010000),
    .i1(osd_command[15:8]),
    .o(\U8/n75 ));  // ../../rtl/video/overlay.vhd(219)
  eq_w3 \U8/eq2  (
    .i0(\U8/char_x ),
    .i1(3'b000),
    .o(\U8/n33 ));
  eq_w8 \U8/eq20  (
    .i0(8'b00010001),
    .i1(osd_command[15:8]),
    .o(\U8/n76 ));  // ../../rtl/video/overlay.vhd(220)
  eq_w8 \U8/eq21  (
    .i0(8'b00010010),
    .i1(osd_command[15:8]),
    .o(\U8/n77 ));  // ../../rtl/video/overlay.vhd(221)
  eq_w8 \U8/eq22  (
    .i0(8'b00010011),
    .i1(osd_command[15:8]),
    .o(\U8/n78 ));  // ../../rtl/video/overlay.vhd(222)
  eq_w3 \U8/eq3  (
    .i0(\U8/char_x ),
    .i1(3'b001),
    .o(\U8/n34 ));
  eq_w3 \U8/eq4  (
    .i0(\U8/char_x ),
    .i1(3'b010),
    .o(\U8/n35 ));
  eq_w3 \U8/eq5  (
    .i0(\U8/char_x ),
    .i1(3'b011),
    .o(\U8/n36 ));
  eq_w3 \U8/eq6  (
    .i0(\U8/char_x ),
    .i1(3'b100),
    .o(\U8/n37 ));
  eq_w3 \U8/eq7  (
    .i0(\U8/char_x ),
    .i1(3'b101),
    .o(\U8/n38 ));
  eq_w3 \U8/eq8  (
    .i0(\U8/char_x ),
    .i1(3'b110),
    .o(\U8/n39 ));
  not \U8/hcnt[0]_inv  (\U8/hcnt[0]_neg , \U7/hcnt_spec [0]);
  not \U8/hcnt[1]_inv  (\U8/hcnt[1]_neg , \U7/hcnt_spec [1]);
  lt_u9_u9 \U8/lt0_2  (
    .ci(1'b0),
    .i0({\U7/hcnt_spec [8],\U7/vid_a_spec [4:0],\U7/hcnt_spec [2:0]}),
    .i1(9'b100000000),
    .o(\U8/n1 ));
  lt_u9_u9 \U8/lt1  (
    .ci(1'b0),
    .i0({\U7/vcnt_spec [8:6],\U7/vid_a_spec [7:5],\U7/vcnt_spec [2:0]}),
    .i1(9'b011000000),
    .o(\U8/n2 ));
  lt_u9_u9 \U8/lt2_2  (
    .ci(1'b1),
    .i0(9'b000001000),
    .i1({\U7/hcnt_spec [8],\U7/vid_a_spec [4:0],\U7/hcnt_spec [2:0]}),
    .o(\U8/n3 ));
  lt_u9_u9 \U8/lt3_2  (
    .ci(1'b0),
    .i0({\U7/hcnt_spec [8],\U7/vid_a_spec [4:0],\U7/hcnt_spec [2:0]}),
    .i1(9'b100001000),
    .o(\U8/n4 ));
  AL_MUX \U8/mux10_b0  (
    .i0(\U8/attr2 [0]),
    .i1(\U8/vram_do [0]),
    .sel(\U8/mux10_b0_sel_is_7_o ),
    .o(\U8/n13 [0]));
  and \U8/mux10_b0_sel_is_7  (\U8/mux10_b0_sel_is_7_o , \U8/char_x [0], \U8/char_x [1], \U8/char_x [2]);
  AL_MUX \U8/mux10_b1  (
    .i0(\U8/attr2 [1]),
    .i1(\U8/vram_do [1]),
    .sel(\U8/mux10_b0_sel_is_7_o ),
    .o(\U8/n13 [1]));
  AL_MUX \U8/mux10_b2  (
    .i0(\U8/attr2 [2]),
    .i1(\U8/vram_do [2]),
    .sel(\U8/mux10_b0_sel_is_7_o ),
    .o(\U8/n13 [2]));
  AL_MUX \U8/mux10_b3  (
    .i0(\U8/attr2 [3]),
    .i1(\U8/vram_do [3]),
    .sel(\U8/mux10_b0_sel_is_7_o ),
    .o(\U8/n13 [3]));
  AL_MUX \U8/mux10_b4  (
    .i0(\U8/attr2 [4]),
    .i1(\U8/vram_do [4]),
    .sel(\U8/mux10_b0_sel_is_7_o ),
    .o(\U8/n13 [4]));
  AL_MUX \U8/mux10_b5  (
    .i0(\U8/attr2 [5]),
    .i1(\U8/vram_do [5]),
    .sel(\U8/mux10_b0_sel_is_7_o ),
    .o(\U8/n13 [5]));
  AL_MUX \U8/mux10_b6  (
    .i0(\U8/attr2 [6]),
    .i1(\U8/vram_do [6]),
    .sel(\U8/mux10_b0_sel_is_7_o ),
    .o(\U8/n13 [6]));
  AL_MUX \U8/mux10_b7  (
    .i0(\U8/attr2 [7]),
    .i1(\U8/vram_do [7]),
    .sel(\U8/mux10_b0_sel_is_7_o ),
    .o(\U8/n13 [7]));
  AL_MUX \U8/mux11_b0  (
    .i0(\U8/attr [0]),
    .i1(\U8/attr2 [0]),
    .sel(\U8/mux11_b0_sel_is_0_o ),
    .o(\U8/n14 [0]));
  and \U8/mux11_b0_sel_is_0  (\U8/mux11_b0_sel_is_0_o , \U8/char_x[0]_neg , \U8/char_x[1]_neg , \U8/char_x[2]_neg );
  AL_MUX \U8/mux11_b1  (
    .i0(\U8/attr [1]),
    .i1(\U8/attr2 [1]),
    .sel(\U8/mux11_b0_sel_is_0_o ),
    .o(\U8/n14 [1]));
  AL_MUX \U8/mux11_b2  (
    .i0(\U8/attr [2]),
    .i1(\U8/attr2 [2]),
    .sel(\U8/mux11_b0_sel_is_0_o ),
    .o(\U8/n14 [2]));
  AL_MUX \U8/mux11_b3  (
    .i0(\U8/attr [3]),
    .i1(\U8/attr2 [3]),
    .sel(\U8/mux11_b0_sel_is_0_o ),
    .o(\U8/n14 [3]));
  AL_MUX \U8/mux11_b4  (
    .i0(\U8/attr [4]),
    .i1(\U8/attr2 [4]),
    .sel(\U8/mux11_b0_sel_is_0_o ),
    .o(\U8/n14 [4]));
  AL_MUX \U8/mux11_b5  (
    .i0(\U8/attr [5]),
    .i1(\U8/attr2 [5]),
    .sel(\U8/mux11_b0_sel_is_0_o ),
    .o(\U8/n14 [5]));
  AL_MUX \U8/mux11_b6  (
    .i0(\U8/attr [6]),
    .i1(\U8/attr2 [6]),
    .sel(\U8/mux11_b0_sel_is_0_o ),
    .o(\U8/n14 [6]));
  AL_MUX \U8/mux11_b7  (
    .i0(\U8/attr [7]),
    .i1(\U8/attr2 [7]),
    .sel(\U8/mux11_b0_sel_is_0_o ),
    .o(\U8/n14 [7]));
  binary_mux_s1_w1 \U8/mux12_b0  (
    .i0(\U8/n12 [0]),
    .i1(\U8/n8 [0]),
    .sel(osd_popup),
    .o(\U8/n15 [0]));  // ../../rtl/video/overlay.vhd(165)
  binary_mux_s1_w1 \U8/mux12_b1  (
    .i0(\U8/n12 [1]),
    .i1(\U8/n8 [1]),
    .sel(osd_popup),
    .o(\U8/n15 [1]));  // ../../rtl/video/overlay.vhd(165)
  binary_mux_s1_w1 \U8/mux12_b2  (
    .i0(\U8/n12 [2]),
    .i1(\U8/n8 [2]),
    .sel(osd_popup),
    .o(\U8/n15 [2]));  // ../../rtl/video/overlay.vhd(165)
  binary_mux_s1_w1 \U8/mux12_b3  (
    .i0(\U8/n12 [3]),
    .i1(\U8/n8 [3]),
    .sel(osd_popup),
    .o(\U8/n15 [3]));  // ../../rtl/video/overlay.vhd(165)
  binary_mux_s1_w1 \U8/mux12_b4  (
    .i0(\U8/n12 [4]),
    .i1(\U8/n8 [4]),
    .sel(osd_popup),
    .o(\U8/n15 [4]));  // ../../rtl/video/overlay.vhd(165)
  binary_mux_s1_w1 \U8/mux12_b5  (
    .i0(\U8/n12 [5]),
    .i1(\U8/n8 [5]),
    .sel(osd_popup),
    .o(\U8/n15 [5]));  // ../../rtl/video/overlay.vhd(165)
  binary_mux_s1_w1 \U8/mux12_b6  (
    .i0(\U8/n12 [6]),
    .i1(\U8/n8 [6]),
    .sel(osd_popup),
    .o(\U8/n15 [6]));  // ../../rtl/video/overlay.vhd(165)
  binary_mux_s1_w1 \U8/mux12_b7  (
    .i0(\U8/n12 [7]),
    .i1(\U8/n8 [7]),
    .sel(osd_popup),
    .o(\U8/n15 [7]));  // ../../rtl/video/overlay.vhd(165)
  binary_mux_s1_w1 \U8/mux12_b8  (
    .i0(\U8/n12 [8]),
    .i1(\U8/n8 [8]),
    .sel(osd_popup),
    .o(\U8/n15 [8]));  // ../../rtl/video/overlay.vhd(165)
  binary_mux_s1_w1 \U8/mux12_b9  (
    .i0(\U8/n12 [9]),
    .i1(\U8/n8 [9]),
    .sel(osd_popup),
    .o(\U8/n15 [9]));  // ../../rtl/video/overlay.vhd(165)
  binary_mux_s1_w1 \U8/mux13_b0  (
    .i0(\U8/n13 [0]),
    .i1(\U8/n9 [0]),
    .sel(osd_popup),
    .o(\U8/n16 [0]));  // ../../rtl/video/overlay.vhd(165)
  binary_mux_s1_w1 \U8/mux13_b1  (
    .i0(\U8/n13 [1]),
    .i1(\U8/n9 [1]),
    .sel(osd_popup),
    .o(\U8/n16 [1]));  // ../../rtl/video/overlay.vhd(165)
  binary_mux_s1_w1 \U8/mux13_b2  (
    .i0(\U8/n13 [2]),
    .i1(\U8/n9 [2]),
    .sel(osd_popup),
    .o(\U8/n16 [2]));  // ../../rtl/video/overlay.vhd(165)
  binary_mux_s1_w1 \U8/mux13_b3  (
    .i0(\U8/n13 [3]),
    .i1(\U8/n9 [3]),
    .sel(osd_popup),
    .o(\U8/n16 [3]));  // ../../rtl/video/overlay.vhd(165)
  binary_mux_s1_w1 \U8/mux13_b4  (
    .i0(\U8/n13 [4]),
    .i1(\U8/n9 [4]),
    .sel(osd_popup),
    .o(\U8/n16 [4]));  // ../../rtl/video/overlay.vhd(165)
  binary_mux_s1_w1 \U8/mux13_b5  (
    .i0(\U8/n13 [5]),
    .i1(\U8/n9 [5]),
    .sel(osd_popup),
    .o(\U8/n16 [5]));  // ../../rtl/video/overlay.vhd(165)
  binary_mux_s1_w1 \U8/mux13_b6  (
    .i0(\U8/n13 [6]),
    .i1(\U8/n9 [6]),
    .sel(osd_popup),
    .o(\U8/n16 [6]));  // ../../rtl/video/overlay.vhd(165)
  binary_mux_s1_w1 \U8/mux13_b7  (
    .i0(\U8/n13 [7]),
    .i1(\U8/n9 [7]),
    .sel(osd_popup),
    .o(\U8/n16 [7]));  // ../../rtl/video/overlay.vhd(165)
  binary_mux_s1_w1 \U8/mux14_b0  (
    .i0(\U8/n14 [0]),
    .i1(\U8/n10 [0]),
    .sel(osd_popup),
    .o(\U8/n17 [0]));  // ../../rtl/video/overlay.vhd(165)
  binary_mux_s1_w1 \U8/mux14_b1  (
    .i0(\U8/n14 [1]),
    .i1(\U8/n10 [1]),
    .sel(osd_popup),
    .o(\U8/n17 [1]));  // ../../rtl/video/overlay.vhd(165)
  binary_mux_s1_w1 \U8/mux14_b2  (
    .i0(\U8/n14 [2]),
    .i1(\U8/n10 [2]),
    .sel(osd_popup),
    .o(\U8/n17 [2]));  // ../../rtl/video/overlay.vhd(165)
  binary_mux_s1_w1 \U8/mux14_b3  (
    .i0(\U8/n14 [3]),
    .i1(\U8/n10 [3]),
    .sel(osd_popup),
    .o(\U8/n17 [3]));  // ../../rtl/video/overlay.vhd(165)
  binary_mux_s1_w1 \U8/mux14_b4  (
    .i0(\U8/n14 [4]),
    .i1(\U8/n10 [4]),
    .sel(osd_popup),
    .o(\U8/n17 [4]));  // ../../rtl/video/overlay.vhd(165)
  binary_mux_s1_w1 \U8/mux14_b5  (
    .i0(\U8/n14 [5]),
    .i1(\U8/n10 [5]),
    .sel(osd_popup),
    .o(\U8/n17 [5]));  // ../../rtl/video/overlay.vhd(165)
  binary_mux_s1_w1 \U8/mux14_b6  (
    .i0(\U8/n14 [6]),
    .i1(\U8/n10 [6]),
    .sel(osd_popup),
    .o(\U8/n17 [6]));  // ../../rtl/video/overlay.vhd(165)
  binary_mux_s1_w1 \U8/mux14_b7  (
    .i0(\U8/n14 [7]),
    .i1(\U8/n10 [7]),
    .sel(osd_popup),
    .o(\U8/n17 [7]));  // ../../rtl/video/overlay.vhd(165)
  AL_MUX \U8/mux18_b1  (
    .i0(1'b0),
    .i1(\U7/palette_grb [1]),
    .sel(\U8/mux18_b1_sel_is_2_o ),
    .o(\U8/n72 [1]));
  and \U8/mux18_b1_sel_is_2  (\U8/mux18_b1_sel_is_2_o , \U8/video_on_neg , \U8/U_ICONS/mux11_b0_sel_is_2_o );
  binary_mux_s1_w1 \U8/mux18_b2  (
    .i0(\U8/rgb [2]),
    .i1(1'b0),
    .sel(\U8/video_on ),
    .o(\U8/n72 [2]));  // ../../rtl/video/overlay.vhd(208)
  binary_mux_s1_w1 \U8/mux18_b4  (
    .i0(\U8/rgb [4]),
    .i1(1'b0),
    .sel(\U8/video_on ),
    .o(\U8/n72 [4]));  // ../../rtl/video/overlay.vhd(208)
  binary_mux_s1_w1 \U8/mux18_b5  (
    .i0(\U8/rgb [5]),
    .i1(1'b0),
    .sel(\U8/video_on ),
    .o(\U8/n72 [5]));  // ../../rtl/video/overlay.vhd(208)
  AL_MUX \U8/mux18_b7  (
    .i0(1'b0),
    .i1(\U7/palette_grb [4]),
    .sel(\U8/mux18_b1_sel_is_2_o ),
    .o(\U8/n72 [7]));
  binary_mux_s1_w1 \U8/mux18_b8  (
    .i0(\U8/rgb [8]),
    .i1(1'b0),
    .sel(\U8/video_on ),
    .o(\U8/n72 [8]));  // ../../rtl/video/overlay.vhd(208)
  AL_MUX \U8/mux19_b0  (
    .i0(\U8/rgb [2]),
    .i1(\U8/rgb [0]),
    .sel(\U8/mux19_b0_sel_is_0_o ),
    .o(\U8/n73 [0]));
  and \U8/mux19_b0_sel_is_0  (\U8/mux19_b0_sel_is_0_o , \U8/n71_neg , \U8/video_on_neg );
  binary_mux_s1_w1 \U8/mux19_b1  (
    .i0(\U8/n72 [1]),
    .i1(\U8/attr [1]),
    .sel(\U8/n71 ),
    .o(\U8/n73 [1]));  // ../../rtl/video/overlay.vhd(207)
  binary_mux_s1_w1 \U8/mux19_b2  (
    .i0(\U8/n72 [2]),
    .i1(\U8/rgb_bg [2]),
    .sel(\U8/n71 ),
    .o(\U8/n73 [2]));  // ../../rtl/video/overlay.vhd(207)
  AL_MUX \U8/mux19_b3  (
    .i0(\U8/rgb [5]),
    .i1(\U8/rgb [0]),
    .sel(\U8/mux19_b0_sel_is_0_o ),
    .o(\U8/n73 [3]));
  binary_mux_s1_w1 \U8/mux19_b4  (
    .i0(\U8/n72 [4]),
    .i1(\U8/attr [2]),
    .sel(\U8/n71 ),
    .o(\U8/n73 [4]));  // ../../rtl/video/overlay.vhd(207)
  binary_mux_s1_w1 \U8/mux19_b5  (
    .i0(\U8/n72 [5]),
    .i1(\U8/rgb_bg [5]),
    .sel(\U8/n71 ),
    .o(\U8/n73 [5]));  // ../../rtl/video/overlay.vhd(207)
  AL_MUX \U8/mux19_b6  (
    .i0(\U8/rgb [8]),
    .i1(1'b0),
    .sel(\U8/mux19_b0_sel_is_0_o ),
    .o(\U8/n73 [6]));
  binary_mux_s1_w1 \U8/mux19_b7  (
    .i0(\U8/n72 [7]),
    .i1(\U8/attr [3]),
    .sel(\U8/n71 ),
    .o(\U8/n73 [7]));  // ../../rtl/video/overlay.vhd(207)
  binary_mux_s1_w1 \U8/mux19_b8  (
    .i0(\U8/n72 [8]),
    .i1(\U8/rgb_bg [8]),
    .sel(\U8/n71 ),
    .o(\U8/n73 [8]));  // ../../rtl/video/overlay.vhd(207)
  binary_mux_s1_w1 \U8/mux20_b0  (
    .i0(\U8/n73 [0]),
    .i1(\U8/attr [5]),
    .sel(\U8/n63 ),
    .o(vid_rgb_osd[0]));  // ../../rtl/video/overlay.vhd(209)
  binary_mux_s1_w1 \U8/mux20_b1  (
    .i0(\U8/n73 [1]),
    .i1(\U8/attr [5]),
    .sel(\U8/n63 ),
    .o(vid_rgb_osd[1]));  // ../../rtl/video/overlay.vhd(209)
  binary_mux_s1_w1 \U8/mux20_b2  (
    .i0(\U8/n73 [2]),
    .i1(\U8/rgb_fg [2]),
    .sel(\U8/n63 ),
    .o(vid_rgb_osd[2]));  // ../../rtl/video/overlay.vhd(209)
  binary_mux_s1_w1 \U8/mux20_b3  (
    .i0(\U8/n73 [3]),
    .i1(\U8/attr [6]),
    .sel(\U8/n63 ),
    .o(vid_rgb_osd[3]));  // ../../rtl/video/overlay.vhd(209)
  binary_mux_s1_w1 \U8/mux20_b4  (
    .i0(\U8/n73 [4]),
    .i1(\U8/attr [6]),
    .sel(\U8/n63 ),
    .o(vid_rgb_osd[4]));  // ../../rtl/video/overlay.vhd(209)
  binary_mux_s1_w1 \U8/mux20_b5  (
    .i0(\U8/n73 [5]),
    .i1(\U8/rgb_fg [5]),
    .sel(\U8/n63 ),
    .o(vid_rgb_osd[5]));  // ../../rtl/video/overlay.vhd(209)
  binary_mux_s1_w1 \U8/mux20_b6  (
    .i0(\U8/n73 [6]),
    .i1(\U8/attr [7]),
    .sel(\U8/n63 ),
    .o(vid_rgb_osd[6]));  // ../../rtl/video/overlay.vhd(209)
  binary_mux_s1_w1 \U8/mux20_b7  (
    .i0(\U8/n73 [7]),
    .i1(\U8/attr [7]),
    .sel(\U8/n63 ),
    .o(vid_rgb_osd[7]));  // ../../rtl/video/overlay.vhd(209)
  binary_mux_s1_w1 \U8/mux20_b8  (
    .i0(\U8/n73 [8]),
    .i1(\U8/rgb_fg [8]),
    .sel(\U8/n63 ),
    .o(vid_rgb_osd[8]));  // ../../rtl/video/overlay.vhd(209)
  and \U8/mux22_b0_sel_is_3  (\U8/mux22_b0_sel_is_3_o , \U8/n74 , \U8/n75 );
  and \U8/mux22_b5_sel_is_3  (\U8/mux22_b5_sel_is_3_o , \U8/n74 , \U8/n76 );
  and \U8/mux23_b0_sel_is_3  (\U8/mux23_b0_sel_is_3_o , \U8/n74 , \U8/n77 );
  and \U8/mux24_b0_sel_is_3  (\U8/mux24_b0_sel_is_3_o , \U8/n74 , \U8/n78 );
  binary_mux_s1_w1 \U8/mux2_b0  (
    .i0(\U7/hcnt_spec [0]),
    .i1(\U7/hcnt_spec [1]),
    .sel(osd_popup),
    .o(\U8/char_x [0]));  // ../../rtl/video/overlay.vhd(121)
  binary_mux_s1_w1 \U8/mux2_b1  (
    .i0(\U7/hcnt_spec [1]),
    .i1(\U7/hcnt_spec [2]),
    .sel(osd_popup),
    .o(\U8/char_x [1]));  // ../../rtl/video/overlay.vhd(121)
  binary_mux_s1_w1 \U8/mux2_b2  (
    .i0(\U7/hcnt_spec [2]),
    .i1(\U7/vid_a_spec [0]),
    .sel(osd_popup),
    .o(\U8/char_x [2]));  // ../../rtl/video/overlay.vhd(121)
  binary_mux_s1_w1 \U8/mux3_b0  (
    .i0(\U7/vcnt_spec [0]),
    .i1(\U7/vcnt_spec [1]),
    .sel(osd_popup),
    .o(\U8/char_y [0]));  // ../../rtl/video/overlay.vhd(122)
  binary_mux_s1_w1 \U8/mux3_b1  (
    .i0(\U7/vcnt_spec [1]),
    .i1(\U7/vcnt_spec [2]),
    .sel(osd_popup),
    .o(\U8/char_y [1]));  // ../../rtl/video/overlay.vhd(122)
  binary_mux_s1_w1 \U8/mux3_b2  (
    .i0(\U7/vcnt_spec [2]),
    .i1(\U7/vid_a_spec [5]),
    .sel(osd_popup),
    .o(\U8/char_y [2]));  // ../../rtl/video/overlay.vhd(122)
  AL_MUX \U8/mux5_b0  (
    .i0(\U8/addr_read [0]),
    .i1(\U7/vid_a_spec [1]),
    .sel(\U8/mux5_b0_sel_is_30_o ),
    .o(\U8/n8 [0]));
  and \U8/mux5_b0_sel_is_30  (\U8/mux5_b0_sel_is_30_o , \U8/hcnt[0]_neg , \U7/hcnt_spec [1], \U7/hcnt_spec [2], \U7/vid_a_spec [0], \U8/paper2 );
  AL_MUX \U8/mux5_b1  (
    .i0(\U8/addr_read [1]),
    .i1(\U7/vid_a_spec [2]),
    .sel(\U8/mux5_b0_sel_is_30_o ),
    .o(\U8/n8 [1]));
  AL_MUX \U8/mux5_b2  (
    .i0(\U8/addr_read [2]),
    .i1(\U7/vid_a_spec [3]),
    .sel(\U8/mux5_b0_sel_is_30_o ),
    .o(\U8/n8 [2]));
  AL_MUX \U8/mux5_b3  (
    .i0(\U8/addr_read [3]),
    .i1(\U7/vid_a_spec [4]),
    .sel(\U8/mux5_b0_sel_is_30_o ),
    .o(\U8/n8 [3]));
  AL_MUX \U8/mux5_b4  (
    .i0(\U8/addr_read [4]),
    .i1(\U7/hcnt_spec [8]),
    .sel(\U8/mux5_b0_sel_is_30_o ),
    .o(\U8/n8 [4]));
  AL_MUX \U8/mux5_b5  (
    .i0(\U8/addr_read [5]),
    .i1(\U7/vid_a_spec [6]),
    .sel(\U8/mux5_b0_sel_is_30_o ),
    .o(\U8/n8 [5]));
  AL_MUX \U8/mux5_b6  (
    .i0(\U8/addr_read [6]),
    .i1(\U7/vid_a_spec [7]),
    .sel(\U8/mux5_b0_sel_is_30_o ),
    .o(\U8/n8 [6]));
  AL_MUX \U8/mux5_b7  (
    .i0(\U8/addr_read [7]),
    .i1(\U7/vcnt_spec [6]),
    .sel(\U8/mux5_b0_sel_is_30_o ),
    .o(\U8/n8 [7]));
  AL_MUX \U8/mux5_b8  (
    .i0(\U8/addr_read [8]),
    .i1(\U7/vcnt_spec [7]),
    .sel(\U8/mux5_b0_sel_is_30_o ),
    .o(\U8/n8 [8]));
  AL_MUX \U8/mux5_b9  (
    .i0(\U8/addr_read [9]),
    .i1(\U7/vcnt_spec [8]),
    .sel(\U8/mux5_b0_sel_is_30_o ),
    .o(\U8/n8 [9]));
  AL_MUX \U8/mux6_b0  (
    .i0(\U8/attr2 [0]),
    .i1(\U8/vram_do [0]),
    .sel(\U8/mux6_b0_sel_is_15_o ),
    .o(\U8/n9 [0]));
  and \U8/mux6_b0_sel_is_15  (\U8/mux6_b0_sel_is_15_o , \U7/hcnt_spec [0], \U7/hcnt_spec [1], \U7/hcnt_spec [2], \U7/vid_a_spec [0]);
  AL_MUX \U8/mux6_b1  (
    .i0(\U8/attr2 [1]),
    .i1(\U8/vram_do [1]),
    .sel(\U8/mux6_b0_sel_is_15_o ),
    .o(\U8/n9 [1]));
  AL_MUX \U8/mux6_b2  (
    .i0(\U8/attr2 [2]),
    .i1(\U8/vram_do [2]),
    .sel(\U8/mux6_b0_sel_is_15_o ),
    .o(\U8/n9 [2]));
  AL_MUX \U8/mux6_b3  (
    .i0(\U8/attr2 [3]),
    .i1(\U8/vram_do [3]),
    .sel(\U8/mux6_b0_sel_is_15_o ),
    .o(\U8/n9 [3]));
  AL_MUX \U8/mux6_b4  (
    .i0(\U8/attr2 [4]),
    .i1(\U8/vram_do [4]),
    .sel(\U8/mux6_b0_sel_is_15_o ),
    .o(\U8/n9 [4]));
  AL_MUX \U8/mux6_b5  (
    .i0(\U8/attr2 [5]),
    .i1(\U8/vram_do [5]),
    .sel(\U8/mux6_b0_sel_is_15_o ),
    .o(\U8/n9 [5]));
  AL_MUX \U8/mux6_b6  (
    .i0(\U8/attr2 [6]),
    .i1(\U8/vram_do [6]),
    .sel(\U8/mux6_b0_sel_is_15_o ),
    .o(\U8/n9 [6]));
  AL_MUX \U8/mux6_b7  (
    .i0(\U8/attr2 [7]),
    .i1(\U8/vram_do [7]),
    .sel(\U8/mux6_b0_sel_is_15_o ),
    .o(\U8/n9 [7]));
  AL_MUX \U8/mux7_b0  (
    .i0(\U8/attr [0]),
    .i1(\U8/attr2 [0]),
    .sel(\U8/mux7_b0_sel_is_0_o ),
    .o(\U8/n10 [0]));
  and \U8/mux7_b0_sel_is_0  (\U8/mux7_b0_sel_is_0_o , \U8/hcnt[0]_neg , \U8/hcnt[1]_neg , \U7/U_PENT/n172 , \U7/U_PENT/n173 );
  AL_MUX \U8/mux7_b1  (
    .i0(\U8/attr [1]),
    .i1(\U8/attr2 [1]),
    .sel(\U8/mux7_b0_sel_is_0_o ),
    .o(\U8/n10 [1]));
  AL_MUX \U8/mux7_b2  (
    .i0(\U8/attr [2]),
    .i1(\U8/attr2 [2]),
    .sel(\U8/mux7_b0_sel_is_0_o ),
    .o(\U8/n10 [2]));
  AL_MUX \U8/mux7_b3  (
    .i0(\U8/attr [3]),
    .i1(\U8/attr2 [3]),
    .sel(\U8/mux7_b0_sel_is_0_o ),
    .o(\U8/n10 [3]));
  AL_MUX \U8/mux7_b4  (
    .i0(\U8/attr [4]),
    .i1(\U8/attr2 [4]),
    .sel(\U8/mux7_b0_sel_is_0_o ),
    .o(\U8/n10 [4]));
  AL_MUX \U8/mux7_b5  (
    .i0(\U8/attr [5]),
    .i1(\U8/attr2 [5]),
    .sel(\U8/mux7_b0_sel_is_0_o ),
    .o(\U8/n10 [5]));
  AL_MUX \U8/mux7_b6  (
    .i0(\U8/attr [6]),
    .i1(\U8/attr2 [6]),
    .sel(\U8/mux7_b0_sel_is_0_o ),
    .o(\U8/n10 [6]));
  AL_MUX \U8/mux7_b7  (
    .i0(\U8/attr [7]),
    .i1(\U8/attr2 [7]),
    .sel(\U8/mux7_b0_sel_is_0_o ),
    .o(\U8/n10 [7]));
  AL_MUX \U8/mux9_b0  (
    .i0(\U8/addr_read [0]),
    .i1(\U7/vid_a_spec [0]),
    .sel(\U8/mux9_b0_sel_is_14_o ),
    .o(\U8/n12 [0]));
  and \U8/mux9_b0_sel_is_14  (\U8/mux9_b0_sel_is_14_o , \U8/char_x[0]_neg , \U8/char_x [1], \U8/char_x [2], \U8/paper2 );
  AL_MUX \U8/mux9_b1  (
    .i0(\U8/addr_read [1]),
    .i1(\U7/vid_a_spec [1]),
    .sel(\U8/mux9_b0_sel_is_14_o ),
    .o(\U8/n12 [1]));
  AL_MUX \U8/mux9_b2  (
    .i0(\U8/addr_read [2]),
    .i1(\U7/vid_a_spec [2]),
    .sel(\U8/mux9_b0_sel_is_14_o ),
    .o(\U8/n12 [2]));
  AL_MUX \U8/mux9_b3  (
    .i0(\U8/addr_read [3]),
    .i1(\U7/vid_a_spec [3]),
    .sel(\U8/mux9_b0_sel_is_14_o ),
    .o(\U8/n12 [3]));
  AL_MUX \U8/mux9_b4  (
    .i0(\U8/addr_read [4]),
    .i1(\U7/vid_a_spec [4]),
    .sel(\U8/mux9_b0_sel_is_14_o ),
    .o(\U8/n12 [4]));
  AL_MUX \U8/mux9_b5  (
    .i0(\U8/addr_read [5]),
    .i1(\U7/vid_a_spec [5]),
    .sel(\U8/mux9_b0_sel_is_14_o ),
    .o(\U8/n12 [5]));
  AL_MUX \U8/mux9_b6  (
    .i0(\U8/addr_read [6]),
    .i1(\U7/vid_a_spec [6]),
    .sel(\U8/mux9_b0_sel_is_14_o ),
    .o(\U8/n12 [6]));
  AL_MUX \U8/mux9_b7  (
    .i0(\U8/addr_read [7]),
    .i1(\U7/vid_a_spec [7]),
    .sel(\U8/mux9_b0_sel_is_14_o ),
    .o(\U8/n12 [7]));
  AL_MUX \U8/mux9_b8  (
    .i0(\U8/addr_read [8]),
    .i1(\U7/vcnt_spec [6]),
    .sel(\U8/mux9_b0_sel_is_14_o ),
    .o(\U8/n12 [8]));
  AL_MUX \U8/mux9_b9  (
    .i0(\U8/addr_read [9]),
    .i1(\U7/vcnt_spec [7]),
    .sel(\U8/mux9_b0_sel_is_14_o ),
    .o(\U8/n12 [9]));
  not \U8/n71_inv  (\U8/n71_neg , \U8/n71 );
  ne_w16 \U8/neq0  (
    .i0(osd_command),
    .i1(\U8/last_osd_command ),
    .o(\U8/n74 ));
  latch_ar_as_w1 \U8/pixel_reg  (
    .clk(\U8/n54 ),
    .d(\U8/n53 ),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/pixel ));  // ../../rtl/video/overlay.vhd(181)
  reg_ar_as_w1 \U8/pixel_reg_reg  (
    .clk(clk_28),
    .d(\U8/pixel ),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/pixel_reg_al_n0 ));  // ../../rtl/video/overlay.vhd(197)
  reg_ar_as_w1 \U8/reg0_b0  (
    .clk(clk_28),
    .d(\U8/n16 [0]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/attr2 [0]));  // ../../rtl/video/overlay.vhd(167)
  reg_ar_as_w1 \U8/reg0_b1  (
    .clk(clk_28),
    .d(\U8/n16 [1]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/attr2 [1]));  // ../../rtl/video/overlay.vhd(167)
  reg_ar_as_w1 \U8/reg0_b2  (
    .clk(clk_28),
    .d(\U8/n16 [2]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/attr2 [2]));  // ../../rtl/video/overlay.vhd(167)
  reg_ar_as_w1 \U8/reg0_b3  (
    .clk(clk_28),
    .d(\U8/n16 [3]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/attr2 [3]));  // ../../rtl/video/overlay.vhd(167)
  reg_ar_as_w1 \U8/reg0_b4  (
    .clk(clk_28),
    .d(\U8/n16 [4]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/attr2 [4]));  // ../../rtl/video/overlay.vhd(167)
  reg_ar_as_w1 \U8/reg0_b5  (
    .clk(clk_28),
    .d(\U8/n16 [5]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/attr2 [5]));  // ../../rtl/video/overlay.vhd(167)
  reg_ar_as_w1 \U8/reg0_b6  (
    .clk(clk_28),
    .d(\U8/n16 [6]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/attr2 [6]));  // ../../rtl/video/overlay.vhd(167)
  reg_ar_as_w1 \U8/reg0_b7  (
    .clk(clk_28),
    .d(\U8/n16 [7]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/attr2 [7]));  // ../../rtl/video/overlay.vhd(167)
  reg_ar_as_w1 \U8/reg1_b0  (
    .clk(clk_28),
    .d(\U8/n17 [0]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/attr [0]));  // ../../rtl/video/overlay.vhd(167)
  reg_ar_as_w1 \U8/reg1_b1  (
    .clk(clk_28),
    .d(\U8/n17 [1]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/attr [1]));  // ../../rtl/video/overlay.vhd(167)
  reg_ar_as_w1 \U8/reg1_b2  (
    .clk(clk_28),
    .d(\U8/n17 [2]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/attr [2]));  // ../../rtl/video/overlay.vhd(167)
  reg_ar_as_w1 \U8/reg1_b3  (
    .clk(clk_28),
    .d(\U8/n17 [3]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/attr [3]));  // ../../rtl/video/overlay.vhd(167)
  reg_ar_as_w1 \U8/reg1_b4  (
    .clk(clk_28),
    .d(\U8/n17 [4]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/attr [4]));  // ../../rtl/video/overlay.vhd(167)
  reg_ar_as_w1 \U8/reg1_b5  (
    .clk(clk_28),
    .d(\U8/n17 [5]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/attr [5]));  // ../../rtl/video/overlay.vhd(167)
  reg_ar_as_w1 \U8/reg1_b6  (
    .clk(clk_28),
    .d(\U8/n17 [6]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/attr [6]));  // ../../rtl/video/overlay.vhd(167)
  reg_ar_as_w1 \U8/reg1_b7  (
    .clk(clk_28),
    .d(\U8/n17 [7]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/attr [7]));  // ../../rtl/video/overlay.vhd(167)
  latch_ar_as_w1 \U8/reg2_b0  (
    .clk(\U8/n26 ),
    .d(\U8/char_y [0]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/rom_addr [0]));  // ../../rtl/video/overlay.vhd(171)
  latch_ar_as_w1 \U8/reg2_b1  (
    .clk(\U8/n26 ),
    .d(\U8/char_y [1]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/rom_addr [1]));  // ../../rtl/video/overlay.vhd(171)
  latch_ar_as_w1 \U8/reg2_b10  (
    .clk(\U8/n26 ),
    .d(\U8/vram_do [15]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/rom_addr [10]));  // ../../rtl/video/overlay.vhd(171)
  latch_ar_as_w1 \U8/reg2_b2  (
    .clk(\U8/n26 ),
    .d(\U8/char_y [2]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/rom_addr [2]));  // ../../rtl/video/overlay.vhd(171)
  latch_ar_as_w1 \U8/reg2_b3  (
    .clk(\U8/n26 ),
    .d(\U8/vram_do [8]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/rom_addr [3]));  // ../../rtl/video/overlay.vhd(171)
  latch_ar_as_w1 \U8/reg2_b4  (
    .clk(\U8/n26 ),
    .d(\U8/vram_do [9]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/rom_addr [4]));  // ../../rtl/video/overlay.vhd(171)
  latch_ar_as_w1 \U8/reg2_b5  (
    .clk(\U8/n26 ),
    .d(\U8/vram_do [10]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/rom_addr [5]));  // ../../rtl/video/overlay.vhd(171)
  latch_ar_as_w1 \U8/reg2_b6  (
    .clk(\U8/n26 ),
    .d(\U8/vram_do [11]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/rom_addr [6]));  // ../../rtl/video/overlay.vhd(171)
  latch_ar_as_w1 \U8/reg2_b7  (
    .clk(\U8/n26 ),
    .d(\U8/vram_do [12]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/rom_addr [7]));  // ../../rtl/video/overlay.vhd(171)
  latch_ar_as_w1 \U8/reg2_b8  (
    .clk(\U8/n26 ),
    .d(\U8/vram_do [13]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/rom_addr [8]));  // ../../rtl/video/overlay.vhd(171)
  latch_ar_as_w1 \U8/reg2_b9  (
    .clk(\U8/n26 ),
    .d(\U8/vram_do [14]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/rom_addr [9]));  // ../../rtl/video/overlay.vhd(171)
  reg_ar_as_w1 \U8/reg3_b0  (
    .clk(clk_28),
    .d(osd_command[0]),
    .en(\U8/n74 ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/last_osd_command [0]));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U8/reg3_b1  (
    .clk(clk_28),
    .d(osd_command[1]),
    .en(\U8/n74 ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/last_osd_command [1]));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U8/reg3_b10  (
    .clk(clk_28),
    .d(osd_command[10]),
    .en(\U8/n74 ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/last_osd_command [10]));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U8/reg3_b11  (
    .clk(clk_28),
    .d(osd_command[11]),
    .en(\U8/n74 ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/last_osd_command [11]));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U8/reg3_b12  (
    .clk(clk_28),
    .d(osd_command[12]),
    .en(\U8/n74 ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/last_osd_command [12]));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U8/reg3_b13  (
    .clk(clk_28),
    .d(osd_command[13]),
    .en(\U8/n74 ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/last_osd_command [13]));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U8/reg3_b14  (
    .clk(clk_28),
    .d(osd_command[14]),
    .en(\U8/n74 ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/last_osd_command [14]));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U8/reg3_b15  (
    .clk(clk_28),
    .d(osd_command[15]),
    .en(\U8/n74 ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/last_osd_command [15]));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U8/reg3_b2  (
    .clk(clk_28),
    .d(osd_command[2]),
    .en(\U8/n74 ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/last_osd_command [2]));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U8/reg3_b3  (
    .clk(clk_28),
    .d(osd_command[3]),
    .en(\U8/n74 ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/last_osd_command [3]));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U8/reg3_b4  (
    .clk(clk_28),
    .d(osd_command[4]),
    .en(\U8/n74 ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/last_osd_command [4]));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U8/reg3_b5  (
    .clk(clk_28),
    .d(osd_command[5]),
    .en(\U8/n74 ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/last_osd_command [5]));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U8/reg3_b6  (
    .clk(clk_28),
    .d(osd_command[6]),
    .en(\U8/n74 ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/last_osd_command [6]));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U8/reg3_b7  (
    .clk(clk_28),
    .d(osd_command[7]),
    .en(\U8/n74 ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/last_osd_command [7]));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U8/reg3_b8  (
    .clk(clk_28),
    .d(osd_command[8]),
    .en(\U8/n74 ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/last_osd_command [8]));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U8/reg3_b9  (
    .clk(clk_28),
    .d(osd_command[9]),
    .en(\U8/n74 ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/last_osd_command [9]));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U8/reg4_b0  (
    .clk(clk_28),
    .d(osd_command[0]),
    .en(\U8/mux22_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/addr_write [0]));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U8/reg4_b1  (
    .clk(clk_28),
    .d(osd_command[1]),
    .en(\U8/mux22_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/addr_write [1]));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U8/reg4_b2  (
    .clk(clk_28),
    .d(osd_command[2]),
    .en(\U8/mux22_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/addr_write [2]));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U8/reg4_b3  (
    .clk(clk_28),
    .d(osd_command[3]),
    .en(\U8/mux22_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/addr_write [3]));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U8/reg4_b4  (
    .clk(clk_28),
    .d(osd_command[4]),
    .en(\U8/mux22_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/addr_write [4]));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U8/reg4_b5  (
    .clk(clk_28),
    .d(osd_command[0]),
    .en(\U8/mux22_b5_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/addr_write [5]));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U8/reg4_b6  (
    .clk(clk_28),
    .d(osd_command[1]),
    .en(\U8/mux22_b5_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/addr_write [6]));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U8/reg4_b7  (
    .clk(clk_28),
    .d(osd_command[2]),
    .en(\U8/mux22_b5_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/addr_write [7]));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U8/reg4_b8  (
    .clk(clk_28),
    .d(osd_command[3]),
    .en(\U8/mux22_b5_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/addr_write [8]));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U8/reg4_b9  (
    .clk(clk_28),
    .d(osd_command[4]),
    .en(\U8/mux22_b5_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/addr_write [9]));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U8/reg5_b0  (
    .clk(clk_28),
    .d(osd_command[0]),
    .en(\U8/mux23_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/char_buf [0]));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U8/reg5_b1  (
    .clk(clk_28),
    .d(osd_command[1]),
    .en(\U8/mux23_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/char_buf [1]));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U8/reg5_b2  (
    .clk(clk_28),
    .d(osd_command[2]),
    .en(\U8/mux23_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/char_buf [2]));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U8/reg5_b3  (
    .clk(clk_28),
    .d(osd_command[3]),
    .en(\U8/mux23_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/char_buf [3]));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U8/reg5_b4  (
    .clk(clk_28),
    .d(osd_command[4]),
    .en(\U8/mux23_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/char_buf [4]));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U8/reg5_b5  (
    .clk(clk_28),
    .d(osd_command[5]),
    .en(\U8/mux23_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/char_buf [5]));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U8/reg5_b6  (
    .clk(clk_28),
    .d(osd_command[6]),
    .en(\U8/mux23_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/char_buf [6]));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U8/reg5_b7  (
    .clk(clk_28),
    .d(osd_command[7]),
    .en(\U8/mux23_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/char_buf [7]));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U8/reg6_b0  (
    .clk(clk_28),
    .d(osd_command[0]),
    .en(\U8/mux24_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/vram_di [0]));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U8/reg6_b1  (
    .clk(clk_28),
    .d(osd_command[1]),
    .en(\U8/mux24_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/vram_di [1]));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U8/reg6_b10  (
    .clk(clk_28),
    .d(\U8/char_buf [2]),
    .en(\U8/mux24_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/vram_di [10]));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U8/reg6_b11  (
    .clk(clk_28),
    .d(\U8/char_buf [3]),
    .en(\U8/mux24_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/vram_di [11]));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U8/reg6_b12  (
    .clk(clk_28),
    .d(\U8/char_buf [4]),
    .en(\U8/mux24_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/vram_di [12]));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U8/reg6_b13  (
    .clk(clk_28),
    .d(\U8/char_buf [5]),
    .en(\U8/mux24_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/vram_di [13]));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U8/reg6_b14  (
    .clk(clk_28),
    .d(\U8/char_buf [6]),
    .en(\U8/mux24_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/vram_di [14]));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U8/reg6_b15  (
    .clk(clk_28),
    .d(\U8/char_buf [7]),
    .en(\U8/mux24_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/vram_di [15]));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U8/reg6_b2  (
    .clk(clk_28),
    .d(osd_command[2]),
    .en(\U8/mux24_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/vram_di [2]));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U8/reg6_b3  (
    .clk(clk_28),
    .d(osd_command[3]),
    .en(\U8/mux24_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/vram_di [3]));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U8/reg6_b4  (
    .clk(clk_28),
    .d(osd_command[4]),
    .en(\U8/mux24_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/vram_di [4]));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U8/reg6_b5  (
    .clk(clk_28),
    .d(osd_command[5]),
    .en(\U8/mux24_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/vram_di [5]));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U8/reg6_b6  (
    .clk(clk_28),
    .d(osd_command[6]),
    .en(\U8/mux24_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/vram_di [6]));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U8/reg6_b7  (
    .clk(clk_28),
    .d(osd_command[7]),
    .en(\U8/mux24_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/vram_di [7]));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U8/reg6_b8  (
    .clk(clk_28),
    .d(\U8/char_buf [0]),
    .en(\U8/mux24_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/vram_di [8]));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U8/reg6_b9  (
    .clk(clk_28),
    .d(\U8/char_buf [1]),
    .en(\U8/mux24_b0_sel_is_3_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/vram_di [9]));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U8/reg7_b0  (
    .clk(clk_28),
    .d(\U8/n15 [0]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/addr_read [0]));  // ../../rtl/video/overlay.vhd(167)
  reg_ar_as_w1 \U8/reg7_b1  (
    .clk(clk_28),
    .d(\U8/n15 [1]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/addr_read [1]));  // ../../rtl/video/overlay.vhd(167)
  reg_ar_as_w1 \U8/reg7_b2  (
    .clk(clk_28),
    .d(\U8/n15 [2]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/addr_read [2]));  // ../../rtl/video/overlay.vhd(167)
  reg_ar_as_w1 \U8/reg7_b3  (
    .clk(clk_28),
    .d(\U8/n15 [3]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/addr_read [3]));  // ../../rtl/video/overlay.vhd(167)
  reg_ar_as_w1 \U8/reg7_b4  (
    .clk(clk_28),
    .d(\U8/n15 [4]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/addr_read [4]));  // ../../rtl/video/overlay.vhd(167)
  reg_ar_as_w1 \U8/reg7_b5  (
    .clk(clk_28),
    .d(\U8/n15 [5]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/addr_read [5]));  // ../../rtl/video/overlay.vhd(167)
  reg_ar_as_w1 \U8/reg7_b6  (
    .clk(clk_28),
    .d(\U8/n15 [6]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/addr_read [6]));  // ../../rtl/video/overlay.vhd(167)
  reg_ar_as_w1 \U8/reg7_b7  (
    .clk(clk_28),
    .d(\U8/n15 [7]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/addr_read [7]));  // ../../rtl/video/overlay.vhd(167)
  reg_ar_as_w1 \U8/reg7_b8  (
    .clk(clk_28),
    .d(\U8/n15 [8]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/addr_read [8]));  // ../../rtl/video/overlay.vhd(167)
  reg_ar_as_w1 \U8/reg7_b9  (
    .clk(clk_28),
    .d(\U8/n15 [9]),
    .en(~clk_div2),
    .reset(1'b0),
    .set(1'b0),
    .q(\U8/addr_read [9]));  // ../../rtl/video/overlay.vhd(167)
  and \U8/u10  (\U8/rgb_fg [2], \U8/attr [5], \U8/attr [4]);  // ../../rtl/video/overlay.vhd(203)
  AL_MUX \U8/u14  (
    .i0(\U8/n23 ),
    .i1(\U8/n21 ),
    .sel(osd_popup),
    .o(\U8/n26 ));
  and \U8/u15  (\U8/rgb_fg [5], \U8/attr [6], \U8/attr [4]);  // ../../rtl/video/overlay.vhd(203)
  and \U8/u17  (\U8/rgb_fg [8], \U8/attr [7], \U8/attr [4]);  // ../../rtl/video/overlay.vhd(203)
  and \U8/u3  (\U8/paper2 , \U8/n1 , \U8/n2 );  // ../../rtl/video/overlay.vhd(124)
  and \U8/u30  (\U8/rgb_bg [8], \U8/attr [3], \U8/attr [0]);  // ../../rtl/video/overlay.vhd(204)
  and \U8/u32  (\U8/rgb_bg [5], \U8/attr [2], \U8/attr [0]);  // ../../rtl/video/overlay.vhd(204)
  AL_MUX \U8/u36  (
    .i0(\U8/font_word [0]),
    .i1(\U8/font_word [1]),
    .sel(\U8/n39 ),
    .o(\U8/n41 ));  // ../../rtl/video/overlay.vhd(188)
  or \U8/u37  (\U8/n42 , \U8/n39 , \U8/n23 );  // ../../rtl/video/overlay.vhd(188)
  AL_MUX \U8/u38  (
    .i0(\U8/n41 ),
    .i1(\U8/font_word [2]),
    .sel(\U8/n38 ),
    .o(\U8/n43 ));  // ../../rtl/video/overlay.vhd(187)
  or \U8/u39  (\U8/n44 , \U8/n38 , \U8/n42 );  // ../../rtl/video/overlay.vhd(187)
  AL_MUX \U8/u40  (
    .i0(\U8/n43 ),
    .i1(\U8/font_word [3]),
    .sel(\U8/n37 ),
    .o(\U8/n45 ));  // ../../rtl/video/overlay.vhd(186)
  or \U8/u41  (\U8/n46 , \U8/n37 , \U8/n44 );  // ../../rtl/video/overlay.vhd(186)
  AL_MUX \U8/u42  (
    .i0(\U8/n45 ),
    .i1(\U8/font_word [4]),
    .sel(\U8/n36 ),
    .o(\U8/n47 ));  // ../../rtl/video/overlay.vhd(185)
  or \U8/u43  (\U8/n48 , \U8/n36 , \U8/n46 );  // ../../rtl/video/overlay.vhd(185)
  AL_MUX \U8/u44  (
    .i0(\U8/n47 ),
    .i1(\U8/font_word [5]),
    .sel(\U8/n35 ),
    .o(\U8/n49 ));  // ../../rtl/video/overlay.vhd(184)
  or \U8/u45  (\U8/n50 , \U8/n35 , \U8/n48 );  // ../../rtl/video/overlay.vhd(184)
  AL_MUX \U8/u46  (
    .i0(\U8/n49 ),
    .i1(\U8/font_word [6]),
    .sel(\U8/n34 ),
    .o(\U8/n51 ));  // ../../rtl/video/overlay.vhd(183)
  or \U8/u47  (\U8/n52 , \U8/n34 , \U8/n50 );  // ../../rtl/video/overlay.vhd(183)
  AL_MUX \U8/u48  (
    .i0(\U8/n51 ),
    .i1(\U8/font_word [7]),
    .sel(\U8/n33 ),
    .o(\U8/n53 ));  // ../../rtl/video/overlay.vhd(189)
  or \U8/u49  (\U8/n54 , \U8/n33 , \U8/n52 );  // ../../rtl/video/overlay.vhd(189)
  and \U8/u5  (\U8/n5 , \U8/n3 , \U8/n4 );  // ../../rtl/video/overlay.vhd(125)
  and \U8/u58  (\U8/rgb_bg [2], \U8/attr [1], \U8/attr [0]);  // ../../rtl/video/overlay.vhd(204)
  or \U8/u59  (\U8/n60 , \U8/n56 , \U8/n57 );  // ../../rtl/video/overlay.vhd(206)
  and \U8/u6  (\U8/paper , \U8/n5 , \U8/n2 );  // ../../rtl/video/overlay.vhd(125)
  or \U8/u60  (\U8/n61 , \U8/n60 , \U8/n58 );  // ../../rtl/video/overlay.vhd(206)
  or \U8/u61  (\U8/n62 , \U8/n61 , \U8/n59 );  // ../../rtl/video/overlay.vhd(206)
  and \U8/u62  (\U8/n63 , \U8/paper , \U8/n62 );  // ../../rtl/video/overlay.vhd(206)
  or \U8/u63  (\U8/n68 , \U8/n64 , \U8/n65 );  // ../../rtl/video/overlay.vhd(207)
  or \U8/u64  (\U8/n69 , \U8/n68 , \U8/n66 );  // ../../rtl/video/overlay.vhd(207)
  or \U8/u65  (\U8/n70 , \U8/n69 , \U8/n67 );  // ../../rtl/video/overlay.vhd(207)
  and \U8/u66  (\U8/n71 , \U8/paper , \U8/n70 );  // ../../rtl/video/overlay.vhd(207)
  or \U8/u7  (\U8/video_on , osd_overlay, osd_popup);  // ../../rtl/video/overlay.vhd(126)
  not \U8/video_on_inv  (\U8/video_on_neg , \U8/video_on );
  reg_sr_as_w1 \U8/vram_wr_reg  (
    .clk(clk_28),
    .d(\U8/n78 ),
    .en(1'b1),
    .reset(~\U8/n74 ),
    .set(1'b0),
    .q(\U8/vram_wr ));  // ../../rtl/video/overlay.vhd(226)
  reg_ar_as_w1 \U9/HSYNC_VGA_reg  (
    .clk(clk_div2),
    .d(\U9/n46 ),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(VGA_HS));  // ../../rtl/video/vga_pal.vhd(482)
  reg_ar_as_w1 \U9/KSI_2_reg  (
    .clk(\U9/VIDEO_H [8]),
    .d(\U9/n3 ),
    .en(~\U9/VIDEO_H [9]),
    .reset(1'b0),
    .set(1'b0),
    .q(\U9/KSI_2 ));  // ../../rtl/video/vga_pal.vhd(210)
  reg_ar_as_w1 \U9/KSI_reg  (
    .clk(\U9/VIDEO_H [8]),
    .d(\U7/vsync_spec ),
    .en(~\U9/VIDEO_H [9]),
    .reset(1'b0),
    .set(1'b0),
    .q(\U9/KSI ));  // ../../rtl/video/vga_pal.vhd(210)
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
    \U9/LINEBUF/inst  (
    .addra({\U9/VIDEO_V [0],\U9/VIDEO_H }),
    .addrb({\U9/n40 ,\U9/VGA_H ,\U9/VGA_H0 }),
    .bea(1'b0),
    .beb(1'b0),
    .cea(1'b1),
    .ceb(1'b1),
    .clka(clk_28),
    .clkb(clk_28),
    .dia(\U9/RGB ),
    .dib(9'b111111111),
    .ocea(1'b0),
    .oceb(1'b0),
    .rsta(1'b0),
    .rstb(1'b0),
    .wea(1'b1),
    .web(1'b0),
    .dob(\U9/RD_REG ));  // al_ip/linebuf.vhd(37)
  reg_ar_as_w1 \U9/SSI_2_reg  (
    .clk(clk_div2),
    .d(\U9/n1 ),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U9/SSI_2 ));  // ../../rtl/video/vga_pal.vhd(197)
  reg_ar_as_w1 \U9/SSI_reg  (
    .clk(clk_div2),
    .d(\U7/hsync_spec ),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U9/SSI ));  // ../../rtl/video/vga_pal.vhd(197)
  reg_ar_as_w1 \U9/VGA_BLANK_reg  (
    .clk(clk_div2),
    .d(\U9/n42 ),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U9/VGA_BLANK ));  // ../../rtl/video/vga_pal.vhd(482)
  reg_ar_as_w1 \U9/VGA_H0_reg  (
    .clk(clk_28),
    .d(\U9/n41 ),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U9/VGA_H0 ));  // ../../rtl/video/vga_pal.vhd(463)
  reg_ar_as_w1 \U9/VSYNC_VGA_reg  (
    .clk(clk_div2),
    .d(\U9/n45 ),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(VGA_VS));  // ../../rtl/video/vga_pal.vhd(482)
  add_pu9_pu9_o9 \U9/add0  (
    .i0(\U9/VGA_H ),
    .i1(9'b000000001),
    .o(\U9/n11 ));
  add_pu10_pu10_o10 \U9/add1  (
    .i0(\U9/VIDEO_H ),
    .i1(10'b0000000001),
    .o(\U9/n14 ));
  add_pu10_pu10_o10 \U9/add2  (
    .i0(\U9/VGA_V ),
    .i1(10'b0000000001),
    .o(\U9/n19 ));
  add_pu9_pu9_o9 \U9/add3  (
    .i0(\U9/VIDEO_V ),
    .i1(9'b000000001),
    .o(\U9/n22 ));
  eq_w9 \U9/eq0  (
    .i0(\U9/VGA_H ),
    .i1(9'b110111111),
    .o(\U9/n10 ));
  eq_w10 \U9/eq1  (
    .i0(\U9/VIDEO_H ),
    .i1(10'b1101111111),
    .o(\U9/n13 ));
  lt_u9_u9 \U9/lt0_2  (
    .ci(1'b1),
    .i0(9'b000000000),
    .i1(\U9/VGA_H ),
    .o(\U9/n24 ));
  lt_u9_u9 \U9/lt1_2  (
    .ci(1'b1),
    .i0(\U9/VGA_H ),
    .i1(9'b000100110),
    .o(\U9/n25 ));
  lt_u9_u9 \U9/lt4_2  (
    .ci(1'b1),
    .i0(\U9/VGA_H ),
    .i1(9'b001001001),
    .o(\U9/n31 ));
  lt_u10_u10 \U9/lt6  (
    .ci(1'b1),
    .i0(10'b0000010101),
    .i1(\U9/VGA_V ),
    .o(\U9/n34 ));
  lt_u10_u10 \U9/lt7  (
    .ci(1'b1),
    .i0(\U9/VGA_V ),
    .i1(10'b0000010110),
    .o(\U9/n35 ));
  lt_u10_u10 \U9/lt8  (
    .ci(1'b1),
    .i0(\U9/VGA_V ),
    .i1(10'b0000100001),
    .o(\U9/n37 ));
  lt_u10_u10 \U9/lt9  (
    .ci(1'b1),
    .i0(10'b1010000000),
    .i1(\U9/VGA_V ),
    .o(\U9/n38 ));
  and \U9/mux2_b0_sel_is_0  (\U9/mux2_b0_sel_is_0_o , \U9/n8 , \U9/n10_neg );
  and \U9/mux3_b0_sel_is_0  (\U9/mux3_b0_sel_is_0_o , \U9/n8 , \U9/n13_neg );
  binary_mux_s1_w1 \U9/mux6_b0  (
    .i0(1'b0),
    .i1(\U9/RD_REG [0]),
    .sel(\U9/VGA_BLANK ),
    .o(\U9/n47 [0]));  // ../../rtl/video/vga_pal.vhd(499)
  binary_mux_s1_w1 \U9/mux6_b1  (
    .i0(1'b0),
    .i1(\U9/RD_REG [1]),
    .sel(\U9/VGA_BLANK ),
    .o(\U9/n47 [1]));  // ../../rtl/video/vga_pal.vhd(499)
  binary_mux_s1_w1 \U9/mux6_b2  (
    .i0(1'b0),
    .i1(\U9/RD_REG [2]),
    .sel(\U9/VGA_BLANK ),
    .o(\U9/n47 [2]));  // ../../rtl/video/vga_pal.vhd(499)
  binary_mux_s1_w1 \U9/mux6_b3  (
    .i0(1'b0),
    .i1(\U9/RD_REG [3]),
    .sel(\U9/VGA_BLANK ),
    .o(\U9/n47 [3]));  // ../../rtl/video/vga_pal.vhd(499)
  binary_mux_s1_w1 \U9/mux6_b4  (
    .i0(1'b0),
    .i1(\U9/RD_REG [4]),
    .sel(\U9/VGA_BLANK ),
    .o(\U9/n47 [4]));  // ../../rtl/video/vga_pal.vhd(499)
  binary_mux_s1_w1 \U9/mux6_b5  (
    .i0(1'b0),
    .i1(\U9/RD_REG [5]),
    .sel(\U9/VGA_BLANK ),
    .o(\U9/n47 [5]));  // ../../rtl/video/vga_pal.vhd(499)
  binary_mux_s1_w1 \U9/mux6_b6  (
    .i0(1'b0),
    .i1(\U9/RD_REG [6]),
    .sel(\U9/VGA_BLANK ),
    .o(\U9/n47 [6]));  // ../../rtl/video/vga_pal.vhd(499)
  binary_mux_s1_w1 \U9/mux6_b7  (
    .i0(1'b0),
    .i1(\U9/RD_REG [7]),
    .sel(\U9/VGA_BLANK ),
    .o(\U9/n47 [7]));  // ../../rtl/video/vga_pal.vhd(499)
  binary_mux_s1_w1 \U9/mux6_b8  (
    .i0(1'b0),
    .i1(\U9/RD_REG [8]),
    .sel(\U9/VGA_BLANK ),
    .o(\U9/n47 [8]));  // ../../rtl/video/vga_pal.vhd(499)
  binary_mux_s1_w1 \U9/mux7_b0  (
    .i0(vid_rgb_osd[0]),
    .i1(\U9/n47 [0]),
    .sel(vid_scandoubler_enable),
    .o(\U9/n48 [0]));  // ../../rtl/video/vga_pal.vhd(502)
  binary_mux_s1_w1 \U9/mux7_b1  (
    .i0(vid_rgb_osd[1]),
    .i1(\U9/n47 [1]),
    .sel(vid_scandoubler_enable),
    .o(\U9/n48 [1]));  // ../../rtl/video/vga_pal.vhd(502)
  binary_mux_s1_w1 \U9/mux7_b2  (
    .i0(vid_rgb_osd[2]),
    .i1(\U9/n47 [2]),
    .sel(vid_scandoubler_enable),
    .o(\U9/n48 [2]));  // ../../rtl/video/vga_pal.vhd(502)
  binary_mux_s1_w1 \U9/mux7_b3  (
    .i0(vid_rgb_osd[3]),
    .i1(\U9/n47 [3]),
    .sel(vid_scandoubler_enable),
    .o(\U9/n48 [3]));  // ../../rtl/video/vga_pal.vhd(502)
  binary_mux_s1_w1 \U9/mux7_b4  (
    .i0(vid_rgb_osd[4]),
    .i1(\U9/n47 [4]),
    .sel(vid_scandoubler_enable),
    .o(\U9/n48 [4]));  // ../../rtl/video/vga_pal.vhd(502)
  binary_mux_s1_w1 \U9/mux7_b5  (
    .i0(vid_rgb_osd[5]),
    .i1(\U9/n47 [5]),
    .sel(vid_scandoubler_enable),
    .o(\U9/n48 [5]));  // ../../rtl/video/vga_pal.vhd(502)
  binary_mux_s1_w1 \U9/mux7_b6  (
    .i0(vid_rgb_osd[6]),
    .i1(\U9/n47 [6]),
    .sel(vid_scandoubler_enable),
    .o(\U9/n48 [6]));  // ../../rtl/video/vga_pal.vhd(502)
  binary_mux_s1_w1 \U9/mux7_b7  (
    .i0(vid_rgb_osd[7]),
    .i1(\U9/n47 [7]),
    .sel(vid_scandoubler_enable),
    .o(\U9/n48 [7]));  // ../../rtl/video/vga_pal.vhd(502)
  binary_mux_s1_w1 \U9/mux7_b8  (
    .i0(vid_rgb_osd[8]),
    .i1(\U9/n47 [8]),
    .sel(vid_scandoubler_enable),
    .o(\U9/n48 [8]));  // ../../rtl/video/vga_pal.vhd(502)
  not \U9/n10_inv  (\U9/n10_neg , \U9/n10 );
  not \U9/n13_inv  (\U9/n13_neg , \U9/n13 );
  reg_sr_as_w1 \U9/reg0_b0  (
    .clk(~clk_div2),
    .d(\U9/n11 [0]),
    .en(1'b1),
    .reset(~\U9/mux2_b0_sel_is_0_o ),
    .set(1'b0),
    .q(\U9/VGA_H [0]));  // ../../rtl/video/vga_pal.vhd(256)
  reg_sr_as_w1 \U9/reg0_b1  (
    .clk(~clk_div2),
    .d(\U9/n11 [1]),
    .en(1'b1),
    .reset(~\U9/mux2_b0_sel_is_0_o ),
    .set(1'b0),
    .q(\U9/VGA_H [1]));  // ../../rtl/video/vga_pal.vhd(256)
  reg_sr_as_w1 \U9/reg0_b2  (
    .clk(~clk_div2),
    .d(\U9/n11 [2]),
    .en(1'b1),
    .reset(~\U9/mux2_b0_sel_is_0_o ),
    .set(1'b0),
    .q(\U9/VGA_H [2]));  // ../../rtl/video/vga_pal.vhd(256)
  reg_sr_as_w1 \U9/reg0_b3  (
    .clk(~clk_div2),
    .d(\U9/n11 [3]),
    .en(1'b1),
    .reset(~\U9/mux2_b0_sel_is_0_o ),
    .set(1'b0),
    .q(\U9/VGA_H [3]));  // ../../rtl/video/vga_pal.vhd(256)
  reg_sr_as_w1 \U9/reg0_b4  (
    .clk(~clk_div2),
    .d(\U9/n11 [4]),
    .en(1'b1),
    .reset(~\U9/mux2_b0_sel_is_0_o ),
    .set(1'b0),
    .q(\U9/VGA_H [4]));  // ../../rtl/video/vga_pal.vhd(256)
  reg_sr_as_w1 \U9/reg0_b5  (
    .clk(~clk_div2),
    .d(\U9/n11 [5]),
    .en(1'b1),
    .reset(~\U9/mux2_b0_sel_is_0_o ),
    .set(1'b0),
    .q(\U9/VGA_H [5]));  // ../../rtl/video/vga_pal.vhd(256)
  reg_sr_as_w1 \U9/reg0_b6  (
    .clk(~clk_div2),
    .d(\U9/n11 [6]),
    .en(1'b1),
    .reset(~\U9/mux2_b0_sel_is_0_o ),
    .set(1'b0),
    .q(\U9/VGA_H [6]));  // ../../rtl/video/vga_pal.vhd(256)
  reg_sr_as_w1 \U9/reg0_b7  (
    .clk(~clk_div2),
    .d(\U9/n11 [7]),
    .en(1'b1),
    .reset(~\U9/mux2_b0_sel_is_0_o ),
    .set(1'b0),
    .q(\U9/VGA_H [7]));  // ../../rtl/video/vga_pal.vhd(256)
  reg_sr_as_w1 \U9/reg0_b8  (
    .clk(~clk_div2),
    .d(\U9/n11 [8]),
    .en(1'b1),
    .reset(~\U9/mux2_b0_sel_is_0_o ),
    .set(1'b0),
    .q(\U9/VGA_H [8]));  // ../../rtl/video/vga_pal.vhd(256)
  reg_sr_as_w1 \U9/reg1_b0  (
    .clk(~clk_div2),
    .d(\U9/n14 [0]),
    .en(1'b1),
    .reset(~\U9/mux3_b0_sel_is_0_o ),
    .set(1'b0),
    .q(\U9/VIDEO_H [0]));  // ../../rtl/video/vga_pal.vhd(256)
  reg_sr_as_w1 \U9/reg1_b1  (
    .clk(~clk_div2),
    .d(\U9/n14 [1]),
    .en(1'b1),
    .reset(~\U9/mux3_b0_sel_is_0_o ),
    .set(1'b0),
    .q(\U9/VIDEO_H [1]));  // ../../rtl/video/vga_pal.vhd(256)
  reg_sr_as_w1 \U9/reg1_b2  (
    .clk(~clk_div2),
    .d(\U9/n14 [2]),
    .en(1'b1),
    .reset(~\U9/mux3_b0_sel_is_0_o ),
    .set(1'b0),
    .q(\U9/VIDEO_H [2]));  // ../../rtl/video/vga_pal.vhd(256)
  reg_sr_as_w1 \U9/reg1_b3  (
    .clk(~clk_div2),
    .d(\U9/n14 [3]),
    .en(1'b1),
    .reset(~\U9/mux3_b0_sel_is_0_o ),
    .set(1'b0),
    .q(\U9/VIDEO_H [3]));  // ../../rtl/video/vga_pal.vhd(256)
  reg_sr_as_w1 \U9/reg1_b4  (
    .clk(~clk_div2),
    .d(\U9/n14 [4]),
    .en(1'b1),
    .reset(~\U9/mux3_b0_sel_is_0_o ),
    .set(1'b0),
    .q(\U9/VIDEO_H [4]));  // ../../rtl/video/vga_pal.vhd(256)
  reg_sr_as_w1 \U9/reg1_b5  (
    .clk(~clk_div2),
    .d(\U9/n14 [5]),
    .en(1'b1),
    .reset(~\U9/mux3_b0_sel_is_0_o ),
    .set(1'b0),
    .q(\U9/VIDEO_H [5]));  // ../../rtl/video/vga_pal.vhd(256)
  reg_sr_as_w1 \U9/reg1_b6  (
    .clk(~clk_div2),
    .d(\U9/n14 [6]),
    .en(1'b1),
    .reset(~\U9/mux3_b0_sel_is_0_o ),
    .set(1'b0),
    .q(\U9/VIDEO_H [6]));  // ../../rtl/video/vga_pal.vhd(256)
  reg_sr_as_w1 \U9/reg1_b7  (
    .clk(~clk_div2),
    .d(\U9/n14 [7]),
    .en(1'b1),
    .reset(~\U9/mux3_b0_sel_is_0_o ),
    .set(1'b0),
    .q(\U9/VIDEO_H [7]));  // ../../rtl/video/vga_pal.vhd(256)
  reg_sr_as_w1 \U9/reg1_b8  (
    .clk(~clk_div2),
    .d(\U9/n14 [8]),
    .en(1'b1),
    .reset(~\U9/mux3_b0_sel_is_0_o ),
    .set(1'b0),
    .q(\U9/VIDEO_H [8]));  // ../../rtl/video/vga_pal.vhd(256)
  reg_sr_as_w1 \U9/reg1_b9  (
    .clk(~clk_div2),
    .d(\U9/n14 [9]),
    .en(1'b1),
    .reset(~\U9/mux3_b0_sel_is_0_o ),
    .set(1'b0),
    .q(\U9/VIDEO_H [9]));  // ../../rtl/video/vga_pal.vhd(256)
  reg_sr_as_w1 \U9/reg2_b0  (
    .clk(~\U9/VGA_V_CLK ),
    .d(\U9/n19 [0]),
    .en(1'b1),
    .reset(~\U9/RESET_V ),
    .set(1'b0),
    .q(\U9/VGA_V [0]));  // ../../rtl/video/vga_pal.vhd(275)
  reg_sr_as_w1 \U9/reg2_b1  (
    .clk(~\U9/VGA_V_CLK ),
    .d(\U9/n19 [1]),
    .en(1'b1),
    .reset(~\U9/RESET_V ),
    .set(1'b0),
    .q(\U9/VGA_V [1]));  // ../../rtl/video/vga_pal.vhd(275)
  reg_sr_as_w1 \U9/reg2_b2  (
    .clk(~\U9/VGA_V_CLK ),
    .d(\U9/n19 [2]),
    .en(1'b1),
    .reset(~\U9/RESET_V ),
    .set(1'b0),
    .q(\U9/VGA_V [2]));  // ../../rtl/video/vga_pal.vhd(275)
  reg_sr_as_w1 \U9/reg2_b3  (
    .clk(~\U9/VGA_V_CLK ),
    .d(\U9/n19 [3]),
    .en(1'b1),
    .reset(~\U9/RESET_V ),
    .set(1'b0),
    .q(\U9/VGA_V [3]));  // ../../rtl/video/vga_pal.vhd(275)
  reg_sr_as_w1 \U9/reg2_b4  (
    .clk(~\U9/VGA_V_CLK ),
    .d(\U9/n19 [4]),
    .en(1'b1),
    .reset(~\U9/RESET_V ),
    .set(1'b0),
    .q(\U9/VGA_V [4]));  // ../../rtl/video/vga_pal.vhd(275)
  reg_sr_as_w1 \U9/reg2_b5  (
    .clk(~\U9/VGA_V_CLK ),
    .d(\U9/n19 [5]),
    .en(1'b1),
    .reset(~\U9/RESET_V ),
    .set(1'b0),
    .q(\U9/VGA_V [5]));  // ../../rtl/video/vga_pal.vhd(275)
  reg_sr_as_w1 \U9/reg2_b6  (
    .clk(~\U9/VGA_V_CLK ),
    .d(\U9/n19 [6]),
    .en(1'b1),
    .reset(~\U9/RESET_V ),
    .set(1'b0),
    .q(\U9/VGA_V [6]));  // ../../rtl/video/vga_pal.vhd(275)
  reg_sr_as_w1 \U9/reg2_b7  (
    .clk(~\U9/VGA_V_CLK ),
    .d(\U9/n19 [7]),
    .en(1'b1),
    .reset(~\U9/RESET_V ),
    .set(1'b0),
    .q(\U9/VGA_V [7]));  // ../../rtl/video/vga_pal.vhd(275)
  reg_sr_as_w1 \U9/reg2_b8  (
    .clk(~\U9/VGA_V_CLK ),
    .d(\U9/n19 [8]),
    .en(1'b1),
    .reset(~\U9/RESET_V ),
    .set(1'b0),
    .q(\U9/VGA_V [8]));  // ../../rtl/video/vga_pal.vhd(275)
  reg_sr_as_w1 \U9/reg2_b9  (
    .clk(~\U9/VGA_V_CLK ),
    .d(\U9/n19 [9]),
    .en(1'b1),
    .reset(~\U9/RESET_V ),
    .set(1'b0),
    .q(\U9/VGA_V [9]));  // ../../rtl/video/vga_pal.vhd(275)
  reg_sr_as_w1 \U9/reg3_b0  (
    .clk(~\U9/VIDEO_V_CLK ),
    .d(\U9/n22 [0]),
    .en(1'b1),
    .reset(~\U9/RESET_V ),
    .set(1'b0),
    .q(\U9/VIDEO_V [0]));  // ../../rtl/video/vga_pal.vhd(284)
  reg_sr_as_w1 \U9/reg3_b1  (
    .clk(~\U9/VIDEO_V_CLK ),
    .d(\U9/n22 [1]),
    .en(1'b1),
    .reset(~\U9/RESET_V ),
    .set(1'b0),
    .q(\U9/VIDEO_V [1]));  // ../../rtl/video/vga_pal.vhd(284)
  reg_sr_as_w1 \U9/reg3_b2  (
    .clk(~\U9/VIDEO_V_CLK ),
    .d(\U9/n22 [2]),
    .en(1'b1),
    .reset(~\U9/RESET_V ),
    .set(1'b0),
    .q(\U9/VIDEO_V [2]));  // ../../rtl/video/vga_pal.vhd(284)
  reg_sr_as_w1 \U9/reg3_b3  (
    .clk(~\U9/VIDEO_V_CLK ),
    .d(\U9/n22 [3]),
    .en(1'b1),
    .reset(~\U9/RESET_V ),
    .set(1'b0),
    .q(\U9/VIDEO_V [3]));  // ../../rtl/video/vga_pal.vhd(284)
  reg_sr_as_w1 \U9/reg3_b4  (
    .clk(~\U9/VIDEO_V_CLK ),
    .d(\U9/n22 [4]),
    .en(1'b1),
    .reset(~\U9/RESET_V ),
    .set(1'b0),
    .q(\U9/VIDEO_V [4]));  // ../../rtl/video/vga_pal.vhd(284)
  reg_sr_as_w1 \U9/reg3_b5  (
    .clk(~\U9/VIDEO_V_CLK ),
    .d(\U9/n22 [5]),
    .en(1'b1),
    .reset(~\U9/RESET_V ),
    .set(1'b0),
    .q(\U9/VIDEO_V [5]));  // ../../rtl/video/vga_pal.vhd(284)
  reg_sr_as_w1 \U9/reg3_b6  (
    .clk(~\U9/VIDEO_V_CLK ),
    .d(\U9/n22 [6]),
    .en(1'b1),
    .reset(~\U9/RESET_V ),
    .set(1'b0),
    .q(\U9/VIDEO_V [6]));  // ../../rtl/video/vga_pal.vhd(284)
  reg_sr_as_w1 \U9/reg3_b7  (
    .clk(~\U9/VIDEO_V_CLK ),
    .d(\U9/n22 [7]),
    .en(1'b1),
    .reset(~\U9/RESET_V ),
    .set(1'b0),
    .q(\U9/VIDEO_V [7]));  // ../../rtl/video/vga_pal.vhd(284)
  reg_sr_as_w1 \U9/reg3_b8  (
    .clk(~\U9/VIDEO_V_CLK ),
    .d(\U9/n22 [8]),
    .en(1'b1),
    .reset(~\U9/RESET_V ),
    .set(1'b0),
    .q(\U9/VIDEO_V [8]));  // ../../rtl/video/vga_pal.vhd(284)
  reg_ar_as_w1 \U9/reg4_b0  (
    .clk(clk_28),
    .d(\U9/n48 [0]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(VGA_B[0]));  // ../../rtl/video/vga_pal.vhd(503)
  reg_ar_as_w1 \U9/reg4_b1  (
    .clk(clk_28),
    .d(\U9/n48 [1]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(VGA_B[1]));  // ../../rtl/video/vga_pal.vhd(503)
  reg_ar_as_w1 \U9/reg4_b2  (
    .clk(clk_28),
    .d(\U9/n48 [2]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(VGA_B[2]));  // ../../rtl/video/vga_pal.vhd(503)
  reg_ar_as_w1 \U9/reg4_b3  (
    .clk(clk_28),
    .d(\U9/n48 [3]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(VGA_G[0]));  // ../../rtl/video/vga_pal.vhd(503)
  reg_ar_as_w1 \U9/reg4_b4  (
    .clk(clk_28),
    .d(\U9/n48 [4]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(VGA_G[1]));  // ../../rtl/video/vga_pal.vhd(503)
  reg_ar_as_w1 \U9/reg4_b5  (
    .clk(clk_28),
    .d(\U9/n48 [5]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(VGA_G[2]));  // ../../rtl/video/vga_pal.vhd(503)
  reg_ar_as_w1 \U9/reg4_b6  (
    .clk(clk_28),
    .d(\U9/n48 [6]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(VGA_R[0]));  // ../../rtl/video/vga_pal.vhd(503)
  reg_ar_as_w1 \U9/reg4_b7  (
    .clk(clk_28),
    .d(\U9/n48 [7]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(VGA_R[1]));  // ../../rtl/video/vga_pal.vhd(503)
  reg_ar_as_w1 \U9/reg4_b8  (
    .clk(clk_28),
    .d(\U9/n48 [8]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(VGA_R[2]));  // ../../rtl/video/vga_pal.vhd(503)
  reg_ar_as_w1 \U9/reg5_b0  (
    .clk(~clk_28),
    .d(vid_rgb_osd[0]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U9/RGB [0]));  // ../../rtl/video/vga_pal.vhd(181)
  reg_ar_as_w1 \U9/reg5_b1  (
    .clk(~clk_28),
    .d(vid_rgb_osd[1]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U9/RGB [1]));  // ../../rtl/video/vga_pal.vhd(181)
  reg_ar_as_w1 \U9/reg5_b2  (
    .clk(~clk_28),
    .d(vid_rgb_osd[2]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U9/RGB [2]));  // ../../rtl/video/vga_pal.vhd(181)
  reg_ar_as_w1 \U9/reg5_b3  (
    .clk(~clk_28),
    .d(vid_rgb_osd[3]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U9/RGB [3]));  // ../../rtl/video/vga_pal.vhd(181)
  reg_ar_as_w1 \U9/reg5_b4  (
    .clk(~clk_28),
    .d(vid_rgb_osd[4]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U9/RGB [4]));  // ../../rtl/video/vga_pal.vhd(181)
  reg_ar_as_w1 \U9/reg5_b5  (
    .clk(~clk_28),
    .d(vid_rgb_osd[5]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U9/RGB [5]));  // ../../rtl/video/vga_pal.vhd(181)
  reg_ar_as_w1 \U9/reg5_b6  (
    .clk(~clk_28),
    .d(vid_rgb_osd[6]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U9/RGB [6]));  // ../../rtl/video/vga_pal.vhd(181)
  reg_ar_as_w1 \U9/reg5_b7  (
    .clk(~clk_28),
    .d(vid_rgb_osd[7]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U9/RGB [7]));  // ../../rtl/video/vga_pal.vhd(181)
  reg_ar_as_w1 \U9/reg5_b8  (
    .clk(~clk_28),
    .d(vid_rgb_osd[8]),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(\U9/RGB [8]));  // ../../rtl/video/vga_pal.vhd(181)
  or \U9/u10  (\U9/RESET_V , \U9/KSI , \U9/KSI_2 );  // ../../rtl/video/vga_pal.vhd(214)
  not \U9/u11  (\U9/n6 , \U9/VIDEO_V [7]);  // ../../rtl/video/vga_pal.vhd(216)
  or \U9/u12  (\U9/RESET_ZONE , \U9/n6 , \U9/VIDEO_V [8]);  // ../../rtl/video/vga_pal.vhd(216)
  or \U9/u13  (\U9/VGA_V_CLK , \U9/VGA_H [7], \U9/VGA_H [8]);  // ../../rtl/video/vga_pal.vhd(218)
  or \U9/u14  (\U9/VIDEO_V_CLK , \U9/VIDEO_H [8], \U9/VIDEO_H [9]);  // ../../rtl/video/vga_pal.vhd(219)
  or \U9/u17  (\U9/n8 , \U9/RESET_H , \U9/RESET_ZONE );  // ../../rtl/video/vga_pal.vhd(237)
  and \U9/u26  (\U9/n26 , \U9/n24 , \U9/n25 );  // ../../rtl/video/vga_pal.vhd(360)
  not \U9/u29  (\U9/VGA_SSI , \U9/n26 );  // ../../rtl/video/vga_pal.vhd(362)
  not \U9/u31  (\U9/VGA_SGI , \U9/n31 );  // ../../rtl/video/vga_pal.vhd(367)
  and \U9/u32  (\U9/n36 , \U9/n34 , \U9/n35 );  // ../../rtl/video/vga_pal.vhd(374)
  not \U9/u33  (\U9/VGA_KSI , \U9/n36 );  // ../../rtl/video/vga_pal.vhd(375)
  or \U9/u34  (\U9/n39 , \U9/n37 , \U9/n38 );  // ../../rtl/video/vga_pal.vhd(378)
  not \U9/u35  (\U9/VGA_KGI , \U9/n39 );  // ../../rtl/video/vga_pal.vhd(379)
  not \U9/u36  (\U9/n40 , \U9/VIDEO_V [0]);  // ../../rtl/video/vga_pal.vhd(452)
  not \U9/u38  (\U9/n41 , \U9/VGA_H0 );  // ../../rtl/video/vga_pal.vhd(462)
  not \U9/u4  (\U9/n1 , \U9/SSI );  // ../../rtl/video/vga_pal.vhd(196)
  and \U9/u40  (\U9/n42 , \U9/VGA_KGI , \U9/VGA_SGI );  // ../../rtl/video/vga_pal.vhd(473)
  not \U9/u41  (\U9/n43 , \U7/vsync_spec );  // ../../rtl/video/vga_pal.vhd(480)
  xor \U9/u42  (\U9/n44 , \U7/hsync_spec , \U9/n43 );  // ../../rtl/video/vga_pal.vhd(480)
  AL_MUX \U9/u43  (
    .i0(\U7/vsync_spec ),
    .i1(\U9/VGA_KSI ),
    .sel(vid_scandoubler_enable),
    .o(\U9/n45 ));  // ../../rtl/video/vga_pal.vhd(481)
  AL_MUX \U9/u44  (
    .i0(\U9/n44 ),
    .i1(\U9/VGA_SSI ),
    .sel(vid_scandoubler_enable),
    .o(\U9/n46 ));  // ../../rtl/video/vga_pal.vhd(481)
  not \U9/u6  (\U9/n3 , \U9/KSI );  // ../../rtl/video/vga_pal.vhd(209)
  or \U9/u9  (\U9/RESET_H , \U9/SSI , \U9/SSI_2 );  // ../../rtl/video/vga_pal.vhd(213)
  reg_ar_as_w1 clk_div2_reg (
    .clk(clk_28),
    .d(\U6/n48 ),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(clk_div2));  // ../../rtl/karabas_pro.vhd(1079)
  reg_ar_as_w1 clk_div4_reg (
    .clk(clk_div2),
    .d(n15),
    .en(1'b1),
    .reset(1'b0),
    .set(1'b0),
    .q(clk_div4));  // ../../rtl/karabas_pro.vhd(1086)
  not u18 (n15, clk_div4);  // ../../rtl/karabas_pro.vhd(1085)
  bufif1 u279 (TAPE_OUT, 1'b0, 1'b1);  // ../../rtl/karabas_pro.vhd(1546)

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

  wire \or_or_or_xor_i0[0]_i_o ;
  wire \or_or_xor_i0[0]_i1[0_o ;
  wire \or_or_xor_i0[4]_i1[4_o ;
  wire \or_xor_i0[0]_i1[0]_o_o ;
  wire \or_xor_i0[2]_i1[2]_o_o ;
  wire \or_xor_i0[4]_i1[4]_o_o ;
  wire \or_xor_i0[6]_i1[6]_o_o ;
  wire \xor_i0[0]_i1[0]_o ;
  wire \xor_i0[1]_i1[1]_o ;
  wire \xor_i0[2]_i1[2]_o ;
  wire \xor_i0[3]_i1[3]_o ;
  wire \xor_i0[4]_i1[4]_o ;
  wire \xor_i0[5]_i1[5]_o ;
  wire \xor_i0[6]_i1[6]_o ;
  wire \xor_i0[7]_i1[7]_o ;

  not none_diff (o, \or_or_or_xor_i0[0]_i_o );
  or \or_or_or_xor_i0[0]_i  (\or_or_or_xor_i0[0]_i_o , \or_or_xor_i0[0]_i1[0_o , \or_or_xor_i0[4]_i1[4_o );
  or \or_or_xor_i0[0]_i1[0  (\or_or_xor_i0[0]_i1[0_o , \or_xor_i0[0]_i1[0]_o_o , \or_xor_i0[2]_i1[2]_o_o );
  or \or_or_xor_i0[4]_i1[4  (\or_or_xor_i0[4]_i1[4_o , \or_xor_i0[4]_i1[4]_o_o , \or_xor_i0[6]_i1[6]_o_o );
  or \or_xor_i0[0]_i1[0]_o  (\or_xor_i0[0]_i1[0]_o_o , \xor_i0[0]_i1[0]_o , \xor_i0[1]_i1[1]_o );
  or \or_xor_i0[2]_i1[2]_o  (\or_xor_i0[2]_i1[2]_o_o , \xor_i0[2]_i1[2]_o , \xor_i0[3]_i1[3]_o );
  or \or_xor_i0[4]_i1[4]_o  (\or_xor_i0[4]_i1[4]_o_o , \xor_i0[4]_i1[4]_o , \xor_i0[5]_i1[5]_o );
  or \or_xor_i0[6]_i1[6]_o  (\or_xor_i0[6]_i1[6]_o_o , \xor_i0[6]_i1[6]_o , \xor_i0[7]_i1[7]_o );
  xor \xor_i0[0]_i1[0]  (\xor_i0[0]_i1[0]_o , i0[0], i1[0]);
  xor \xor_i0[1]_i1[1]  (\xor_i0[1]_i1[1]_o , i0[1], i1[1]);
  xor \xor_i0[2]_i1[2]  (\xor_i0[2]_i1[2]_o , i0[2], i1[2]);
  xor \xor_i0[3]_i1[3]  (\xor_i0[3]_i1[3]_o , i0[3], i1[3]);
  xor \xor_i0[4]_i1[4]  (\xor_i0[4]_i1[4]_o , i0[4], i1[4]);
  xor \xor_i0[5]_i1[5]  (\xor_i0[5]_i1[5]_o , i0[5], i1[5]);
  xor \xor_i0[6]_i1[6]  (\xor_i0[6]_i1[6]_o , i0[6], i1[6]);
  xor \xor_i0[7]_i1[7]  (\xor_i0[7]_i1[7]_o , i0[7], i1[7]);

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

  wire \or_or_or_or_xor_i0[0_o ;
  wire \or_or_or_xor_i0[0]_i_o ;
  wire \or_or_or_xor_i0[9]_i_o ;
  wire \or_or_xor_i0[0]_i1[0_o ;
  wire \or_or_xor_i0[13]_i1[_o ;
  wire \or_or_xor_i0[4]_i1[4_o ;
  wire \or_or_xor_i0[9]_i1[9_o ;
  wire \or_xor_i0[0]_i1[0]_o_o ;
  wire \or_xor_i0[11]_i1[11]_o ;
  wire \or_xor_i0[13]_i1[13]_o ;
  wire \or_xor_i0[15]_i1[15]_o ;
  wire \or_xor_i0[16]_i1[16]_o ;
  wire \or_xor_i0[2]_i1[2]_o_o ;
  wire \or_xor_i0[4]_i1[4]_o_o ;
  wire \or_xor_i0[6]_i1[6]_o_o ;
  wire \or_xor_i0[7]_i1[7]_o_o ;
  wire \or_xor_i0[9]_i1[9]_o_o ;
  wire \xor_i0[0]_i1[0]_o ;
  wire \xor_i0[10]_i1[10]_o ;
  wire \xor_i0[11]_i1[11]_o ;
  wire \xor_i0[12]_i1[12]_o ;
  wire \xor_i0[13]_i1[13]_o ;
  wire \xor_i0[14]_i1[14]_o ;
  wire \xor_i0[15]_i1[15]_o ;
  wire \xor_i0[16]_i1[16]_o ;
  wire \xor_i0[17]_i1[17]_o ;
  wire \xor_i0[1]_i1[1]_o ;
  wire \xor_i0[2]_i1[2]_o ;
  wire \xor_i0[3]_i1[3]_o ;
  wire \xor_i0[4]_i1[4]_o ;
  wire \xor_i0[5]_i1[5]_o ;
  wire \xor_i0[6]_i1[6]_o ;
  wire \xor_i0[7]_i1[7]_o ;
  wire \xor_i0[8]_i1[8]_o ;
  wire \xor_i0[9]_i1[9]_o ;

  not none_diff (o, \or_or_or_or_xor_i0[0_o );
  or \or_or_or_or_xor_i0[0  (\or_or_or_or_xor_i0[0_o , \or_or_or_xor_i0[0]_i_o , \or_or_or_xor_i0[9]_i_o );
  or \or_or_or_xor_i0[0]_i  (\or_or_or_xor_i0[0]_i_o , \or_or_xor_i0[0]_i1[0_o , \or_or_xor_i0[4]_i1[4_o );
  or \or_or_or_xor_i0[9]_i  (\or_or_or_xor_i0[9]_i_o , \or_or_xor_i0[9]_i1[9_o , \or_or_xor_i0[13]_i1[_o );
  or \or_or_xor_i0[0]_i1[0  (\or_or_xor_i0[0]_i1[0_o , \or_xor_i0[0]_i1[0]_o_o , \or_xor_i0[2]_i1[2]_o_o );
  or \or_or_xor_i0[13]_i1[  (\or_or_xor_i0[13]_i1[_o , \or_xor_i0[13]_i1[13]_o , \or_xor_i0[15]_i1[15]_o );
  or \or_or_xor_i0[4]_i1[4  (\or_or_xor_i0[4]_i1[4_o , \or_xor_i0[4]_i1[4]_o_o , \or_xor_i0[6]_i1[6]_o_o );
  or \or_or_xor_i0[9]_i1[9  (\or_or_xor_i0[9]_i1[9_o , \or_xor_i0[9]_i1[9]_o_o , \or_xor_i0[11]_i1[11]_o );
  or \or_xor_i0[0]_i1[0]_o  (\or_xor_i0[0]_i1[0]_o_o , \xor_i0[0]_i1[0]_o , \xor_i0[1]_i1[1]_o );
  or \or_xor_i0[11]_i1[11]  (\or_xor_i0[11]_i1[11]_o , \xor_i0[11]_i1[11]_o , \xor_i0[12]_i1[12]_o );
  or \or_xor_i0[13]_i1[13]  (\or_xor_i0[13]_i1[13]_o , \xor_i0[13]_i1[13]_o , \xor_i0[14]_i1[14]_o );
  or \or_xor_i0[15]_i1[15]  (\or_xor_i0[15]_i1[15]_o , \xor_i0[15]_i1[15]_o , \or_xor_i0[16]_i1[16]_o );
  or \or_xor_i0[16]_i1[16]  (\or_xor_i0[16]_i1[16]_o , \xor_i0[16]_i1[16]_o , \xor_i0[17]_i1[17]_o );
  or \or_xor_i0[2]_i1[2]_o  (\or_xor_i0[2]_i1[2]_o_o , \xor_i0[2]_i1[2]_o , \xor_i0[3]_i1[3]_o );
  or \or_xor_i0[4]_i1[4]_o  (\or_xor_i0[4]_i1[4]_o_o , \xor_i0[4]_i1[4]_o , \xor_i0[5]_i1[5]_o );
  or \or_xor_i0[6]_i1[6]_o  (\or_xor_i0[6]_i1[6]_o_o , \xor_i0[6]_i1[6]_o , \or_xor_i0[7]_i1[7]_o_o );
  or \or_xor_i0[7]_i1[7]_o  (\or_xor_i0[7]_i1[7]_o_o , \xor_i0[7]_i1[7]_o , \xor_i0[8]_i1[8]_o );
  or \or_xor_i0[9]_i1[9]_o  (\or_xor_i0[9]_i1[9]_o_o , \xor_i0[9]_i1[9]_o , \xor_i0[10]_i1[10]_o );
  xor \xor_i0[0]_i1[0]  (\xor_i0[0]_i1[0]_o , i0[0], i1[0]);
  xor \xor_i0[10]_i1[10]  (\xor_i0[10]_i1[10]_o , i0[10], i1[10]);
  xor \xor_i0[11]_i1[11]  (\xor_i0[11]_i1[11]_o , i0[11], i1[11]);
  xor \xor_i0[12]_i1[12]  (\xor_i0[12]_i1[12]_o , i0[12], i1[12]);
  xor \xor_i0[13]_i1[13]  (\xor_i0[13]_i1[13]_o , i0[13], i1[13]);
  xor \xor_i0[14]_i1[14]  (\xor_i0[14]_i1[14]_o , i0[14], i1[14]);
  xor \xor_i0[15]_i1[15]  (\xor_i0[15]_i1[15]_o , i0[15], i1[15]);
  xor \xor_i0[16]_i1[16]  (\xor_i0[16]_i1[16]_o , i0[16], i1[16]);
  xor \xor_i0[17]_i1[17]  (\xor_i0[17]_i1[17]_o , i0[17], i1[17]);
  xor \xor_i0[1]_i1[1]  (\xor_i0[1]_i1[1]_o , i0[1], i1[1]);
  xor \xor_i0[2]_i1[2]  (\xor_i0[2]_i1[2]_o , i0[2], i1[2]);
  xor \xor_i0[3]_i1[3]  (\xor_i0[3]_i1[3]_o , i0[3], i1[3]);
  xor \xor_i0[4]_i1[4]  (\xor_i0[4]_i1[4]_o , i0[4], i1[4]);
  xor \xor_i0[5]_i1[5]  (\xor_i0[5]_i1[5]_o , i0[5], i1[5]);
  xor \xor_i0[6]_i1[6]  (\xor_i0[6]_i1[6]_o , i0[6], i1[6]);
  xor \xor_i0[7]_i1[7]  (\xor_i0[7]_i1[7]_o , i0[7], i1[7]);
  xor \xor_i0[8]_i1[8]  (\xor_i0[8]_i1[8]_o , i0[8], i1[8]);
  xor \xor_i0[9]_i1[9]  (\xor_i0[9]_i1[9]_o , i0[9], i1[9]);

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

  wire \or_xor_i0[0]_i1[0]_o_o ;
  wire \or_xor_i0[1]_i1[1]_o_o ;
  wire \xor_i0[0]_i1[0]_o ;
  wire \xor_i0[1]_i1[1]_o ;
  wire \xor_i0[2]_i1[2]_o ;

  not none_diff (o, \or_xor_i0[0]_i1[0]_o_o );
  or \or_xor_i0[0]_i1[0]_o  (\or_xor_i0[0]_i1[0]_o_o , \xor_i0[0]_i1[0]_o , \or_xor_i0[1]_i1[1]_o_o );
  or \or_xor_i0[1]_i1[1]_o  (\or_xor_i0[1]_i1[1]_o_o , \xor_i0[1]_i1[1]_o , \xor_i0[2]_i1[2]_o );
  xor \xor_i0[0]_i1[0]  (\xor_i0[0]_i1[0]_o , i0[0], i1[0]);
  xor \xor_i0[1]_i1[1]  (\xor_i0[1]_i1[1]_o , i0[1], i1[1]);
  xor \xor_i0[2]_i1[2]  (\xor_i0[2]_i1[2]_o , i0[2], i1[2]);

endmodule 

module binary_mux_s1_w1
  (
  i0,
  i1,
  sel,
  o
  );

  input i0;
  input i1;
  input sel;
  output o;


  AL_MUX al_mux_b0_0_0 (
    .i0(i0),
    .i1(i1),
    .sel(sel),
    .o(o));

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

  wire  B0_0;
  wire  B0_1;
  wire  B0_2;
  wire  B0_3;
  wire  B1_0;
  wire  B1_1;

  AL_MUX al_mux_b0_0_0 (
    .i0(i0),
    .i1(i1),
    .sel(sel[0]),
    .o(B0_0));
  AL_MUX al_mux_b0_0_1 (
    .i0(i2),
    .i1(i3),
    .sel(sel[0]),
    .o(B0_1));
  AL_MUX al_mux_b0_0_2 (
    .i0(i4),
    .i1(i5),
    .sel(sel[0]),
    .o(B0_2));
  AL_MUX al_mux_b0_0_3 (
    .i0(i6),
    .i1(i7),
    .sel(sel[0]),
    .o(B0_3));
  AL_MUX al_mux_b0_1_0 (
    .i0(B0_0),
    .i1(B0_1),
    .sel(sel[1]),
    .o(B1_0));
  AL_MUX al_mux_b0_1_1 (
    .i0(B0_2),
    .i1(B0_3),
    .sel(sel[1]),
    .o(B1_1));
  AL_MUX al_mux_b0_2_0 (
    .i0(B1_0),
    .i1(B1_1),
    .sel(sel[2]),
    .o(o));

endmodule 

module reg_ar_as_w1
  (
  clk,
  d,
  en,
  reset,
  set,
  q
  );

  input clk;
  input d;
  input en;
  input reset;
  input set;
  output q;

  parameter REGSET = "RESET";
  wire enout;

  AL_MUX u_en0 (
    .i0(q),
    .i1(d),
    .sel(en),
    .o(enout));
  AL_DFF
    u_seq0 (
    .clk(clk),
    .d(enout),
    .reset(reset),
    .set(set),
    .q(q));

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

  wire net_a0;
  wire net_a1;
  wire net_a10;
  wire net_a11;
  wire net_a12;
  wire net_a13;
  wire net_a14;
  wire net_a15;
  wire net_a16;
  wire net_a17;
  wire net_a2;
  wire net_a3;
  wire net_a4;
  wire net_a5;
  wire net_a6;
  wire net_a7;
  wire net_a8;
  wire net_a9;
  wire net_b0;
  wire net_b1;
  wire net_b10;
  wire net_b11;
  wire net_b12;
  wire net_b13;
  wire net_b14;
  wire net_b15;
  wire net_b16;
  wire net_b17;
  wire net_b2;
  wire net_b3;
  wire net_b4;
  wire net_b5;
  wire net_b6;
  wire net_b7;
  wire net_b8;
  wire net_b9;
  wire net_cout0;
  wire net_cout1;
  wire net_cout10;
  wire net_cout11;
  wire net_cout12;
  wire net_cout13;
  wire net_cout14;
  wire net_cout15;
  wire net_cout16;
  wire net_cout17;
  wire net_cout2;
  wire net_cout3;
  wire net_cout4;
  wire net_cout5;
  wire net_cout6;
  wire net_cout7;
  wire net_cout8;
  wire net_cout9;
  wire net_nb0;
  wire net_nb1;
  wire net_nb10;
  wire net_nb11;
  wire net_nb12;
  wire net_nb13;
  wire net_nb14;
  wire net_nb15;
  wire net_nb16;
  wire net_nb17;
  wire net_nb2;
  wire net_nb3;
  wire net_nb4;
  wire net_nb5;
  wire net_nb6;
  wire net_nb7;
  wire net_nb8;
  wire net_nb9;
  wire net_sum0;
  wire net_sum1;
  wire net_sum10;
  wire net_sum11;
  wire net_sum12;
  wire net_sum13;
  wire net_sum14;
  wire net_sum15;
  wire net_sum16;
  wire net_sum17;
  wire net_sum2;
  wire net_sum3;
  wire net_sum4;
  wire net_sum5;
  wire net_sum6;
  wire net_sum7;
  wire net_sum8;
  wire net_sum9;

  assign net_a17 = i0[17];
  assign net_a16 = i0[16];
  assign net_a15 = i0[15];
  assign net_a14 = i0[14];
  assign net_a13 = i0[13];
  assign net_a12 = i0[12];
  assign net_a11 = i0[11];
  assign net_a10 = i0[10];
  assign net_a9 = i0[9];
  assign net_a8 = i0[8];
  assign net_a7 = i0[7];
  assign net_a6 = i0[6];
  assign net_a5 = i0[5];
  assign net_a4 = i0[4];
  assign net_a3 = i0[3];
  assign net_a2 = i0[2];
  assign net_a1 = i0[1];
  assign net_a0 = i0[0];
  assign net_b17 = i1[17];
  assign net_b16 = i1[16];
  assign net_b15 = i1[15];
  assign net_b14 = i1[14];
  assign net_b13 = i1[13];
  assign net_b12 = i1[12];
  assign net_b11 = i1[11];
  assign net_b10 = i1[10];
  assign net_b9 = i1[9];
  assign net_b8 = i1[8];
  assign net_b7 = i1[7];
  assign net_b6 = i1[6];
  assign net_b5 = i1[5];
  assign net_b4 = i1[4];
  assign net_b3 = i1[3];
  assign net_b2 = i1[2];
  assign net_b1 = i1[1];
  assign net_b0 = i1[0];
  assign o[17] = net_sum17;
  assign o[16] = net_sum16;
  assign o[15] = net_sum15;
  assign o[14] = net_sum14;
  assign o[13] = net_sum13;
  assign o[12] = net_sum12;
  assign o[11] = net_sum11;
  assign o[10] = net_sum10;
  assign o[9] = net_sum9;
  assign o[8] = net_sum8;
  assign o[7] = net_sum7;
  assign o[6] = net_sum6;
  assign o[5] = net_sum5;
  assign o[4] = net_sum4;
  assign o[3] = net_sum3;
  assign o[2] = net_sum2;
  assign o[1] = net_sum1;
  assign o[0] = net_sum0;
  AL_FADD comp_0 (
    .a(net_a0),
    .b(net_nb0),
    .c(1'b1),
    .cout(net_cout0),
    .sum(net_sum0));
  AL_FADD comp_1 (
    .a(net_a1),
    .b(net_nb1),
    .c(net_cout0),
    .cout(net_cout1),
    .sum(net_sum1));
  AL_FADD comp_10 (
    .a(net_a10),
    .b(net_nb10),
    .c(net_cout9),
    .cout(net_cout10),
    .sum(net_sum10));
  AL_FADD comp_11 (
    .a(net_a11),
    .b(net_nb11),
    .c(net_cout10),
    .cout(net_cout11),
    .sum(net_sum11));
  AL_FADD comp_12 (
    .a(net_a12),
    .b(net_nb12),
    .c(net_cout11),
    .cout(net_cout12),
    .sum(net_sum12));
  AL_FADD comp_13 (
    .a(net_a13),
    .b(net_nb13),
    .c(net_cout12),
    .cout(net_cout13),
    .sum(net_sum13));
  AL_FADD comp_14 (
    .a(net_a14),
    .b(net_nb14),
    .c(net_cout13),
    .cout(net_cout14),
    .sum(net_sum14));
  AL_FADD comp_15 (
    .a(net_a15),
    .b(net_nb15),
    .c(net_cout14),
    .cout(net_cout15),
    .sum(net_sum15));
  AL_FADD comp_16 (
    .a(net_a16),
    .b(net_nb16),
    .c(net_cout15),
    .cout(net_cout16),
    .sum(net_sum16));
  AL_FADD comp_17 (
    .a(net_a17),
    .b(net_nb17),
    .c(net_cout16),
    .cout(net_cout17),
    .sum(net_sum17));
  AL_FADD comp_2 (
    .a(net_a2),
    .b(net_nb2),
    .c(net_cout1),
    .cout(net_cout2),
    .sum(net_sum2));
  AL_FADD comp_3 (
    .a(net_a3),
    .b(net_nb3),
    .c(net_cout2),
    .cout(net_cout3),
    .sum(net_sum3));
  AL_FADD comp_4 (
    .a(net_a4),
    .b(net_nb4),
    .c(net_cout3),
    .cout(net_cout4),
    .sum(net_sum4));
  AL_FADD comp_5 (
    .a(net_a5),
    .b(net_nb5),
    .c(net_cout4),
    .cout(net_cout5),
    .sum(net_sum5));
  AL_FADD comp_6 (
    .a(net_a6),
    .b(net_nb6),
    .c(net_cout5),
    .cout(net_cout6),
    .sum(net_sum6));
  AL_FADD comp_7 (
    .a(net_a7),
    .b(net_nb7),
    .c(net_cout6),
    .cout(net_cout7),
    .sum(net_sum7));
  AL_FADD comp_8 (
    .a(net_a8),
    .b(net_nb8),
    .c(net_cout7),
    .cout(net_cout8),
    .sum(net_sum8));
  AL_FADD comp_9 (
    .a(net_a9),
    .b(net_nb9),
    .c(net_cout8),
    .cout(net_cout9),
    .sum(net_sum9));
  not inv_b0 (net_nb0, net_b0);
  not inv_b1 (net_nb1, net_b1);
  not inv_b10 (net_nb10, net_b10);
  not inv_b11 (net_nb11, net_b11);
  not inv_b12 (net_nb12, net_b12);
  not inv_b13 (net_nb13, net_b13);
  not inv_b14 (net_nb14, net_b14);
  not inv_b15 (net_nb15, net_b15);
  not inv_b16 (net_nb16, net_b16);
  not inv_b17 (net_nb17, net_b17);
  not inv_b2 (net_nb2, net_b2);
  not inv_b3 (net_nb3, net_b3);
  not inv_b4 (net_nb4, net_b4);
  not inv_b5 (net_nb5, net_b5);
  not inv_b6 (net_nb6, net_b6);
  not inv_b7 (net_nb7, net_b7);
  not inv_b8 (net_nb8, net_b8);
  not inv_b9 (net_nb9, net_b9);

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

  wire net_a0;
  wire net_a1;
  wire net_a2;
  wire net_b0;
  wire net_b1;
  wire net_b2;
  wire net_cout0;
  wire net_cout1;
  wire net_cout2;
  wire net_nb0;
  wire net_nb1;
  wire net_nb2;
  wire net_sum0;
  wire net_sum1;
  wire net_sum2;

  assign net_a2 = i0[2];
  assign net_a1 = i0[1];
  assign net_a0 = i0[0];
  assign net_b2 = i1[2];
  assign net_b1 = i1[1];
  assign net_b0 = i1[0];
  assign o[2] = net_sum2;
  assign o[1] = net_sum1;
  assign o[0] = net_sum0;
  AL_FADD comp_0 (
    .a(net_a0),
    .b(net_nb0),
    .c(1'b1),
    .cout(net_cout0),
    .sum(net_sum0));
  AL_FADD comp_1 (
    .a(net_a1),
    .b(net_nb1),
    .c(net_cout0),
    .cout(net_cout1),
    .sum(net_sum1));
  AL_FADD comp_2 (
    .a(net_a2),
    .b(net_nb2),
    .c(net_cout1),
    .cout(net_cout2),
    .sum(net_sum2));
  not inv_b0 (net_nb0, net_b0);
  not inv_b1 (net_nb1, net_b1);
  not inv_b2 (net_nb2, net_b2);

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

  wire  B0_0;
  wire  B0_1;

  AL_MUX al_mux_b0_0_0 (
    .i0(i0),
    .i1(i1),
    .sel(sel[0]),
    .o(B0_0));
  AL_MUX al_mux_b0_0_1 (
    .i0(i2),
    .i1(i3),
    .sel(sel[0]),
    .o(B0_1));
  AL_MUX al_mux_b0_1_0 (
    .i0(B0_0),
    .i1(B0_1),
    .sel(sel[1]),
    .o(o));

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

  wire \or_or_xor_i0[0]_i1[0_o ;
  wire \or_xor_i0[0]_i1[0]_o_o ;
  wire \or_xor_i0[2]_i1[2]_o_o ;
  wire \or_xor_i0[3]_i1[3]_o_o ;
  wire \xor_i0[0]_i1[0]_o ;
  wire \xor_i0[1]_i1[1]_o ;
  wire \xor_i0[2]_i1[2]_o ;
  wire \xor_i0[3]_i1[3]_o ;
  wire \xor_i0[4]_i1[4]_o ;

  not none_diff (o, \or_or_xor_i0[0]_i1[0_o );
  or \or_or_xor_i0[0]_i1[0  (\or_or_xor_i0[0]_i1[0_o , \or_xor_i0[0]_i1[0]_o_o , \or_xor_i0[2]_i1[2]_o_o );
  or \or_xor_i0[0]_i1[0]_o  (\or_xor_i0[0]_i1[0]_o_o , \xor_i0[0]_i1[0]_o , \xor_i0[1]_i1[1]_o );
  or \or_xor_i0[2]_i1[2]_o  (\or_xor_i0[2]_i1[2]_o_o , \xor_i0[2]_i1[2]_o , \or_xor_i0[3]_i1[3]_o_o );
  or \or_xor_i0[3]_i1[3]_o  (\or_xor_i0[3]_i1[3]_o_o , \xor_i0[3]_i1[3]_o , \xor_i0[4]_i1[4]_o );
  xor \xor_i0[0]_i1[0]  (\xor_i0[0]_i1[0]_o , i0[0], i1[0]);
  xor \xor_i0[1]_i1[1]  (\xor_i0[1]_i1[1]_o , i0[1], i1[1]);
  xor \xor_i0[2]_i1[2]  (\xor_i0[2]_i1[2]_o , i0[2], i1[2]);
  xor \xor_i0[3]_i1[3]  (\xor_i0[3]_i1[3]_o , i0[3], i1[3]);
  xor \xor_i0[4]_i1[4]  (\xor_i0[4]_i1[4]_o , i0[4], i1[4]);

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

  wire a_0;
  wire a_1;
  wire a_2;
  wire a_3;
  wire a_4;
  wire b_0;
  wire b_1;
  wire b_2;
  wire b_3;
  wire b_4;
  wire diff_0;
  wire diff_1;
  wire diff_2;
  wire diff_3;
  wire diff_4;
  wire net_cin;
  wire o_0;
  wire o_1;
  wire o_2;
  wire o_3;
  wire o_4;

  assign net_cin = ci;
  assign a_4 = i0[4];
  assign a_3 = i0[3];
  assign a_2 = i0[2];
  assign a_1 = i0[1];
  assign a_0 = i0[0];
  assign b_4 = i1[4];
  assign b_3 = i1[3];
  assign b_2 = i1[2];
  assign b_1 = i1[1];
  assign b_0 = i1[0];
  assign o = o_4;
  AL_MUX mux_0 (
    .i0(net_cin),
    .i1(b_0),
    .sel(diff_0),
    .o(o_0));
  AL_MUX mux_1 (
    .i0(o_0),
    .i1(b_1),
    .sel(diff_1),
    .o(o_1));
  AL_MUX mux_2 (
    .i0(o_1),
    .i1(b_2),
    .sel(diff_2),
    .o(o_2));
  AL_MUX mux_3 (
    .i0(o_2),
    .i1(b_3),
    .sel(diff_3),
    .o(o_3));
  AL_MUX mux_4 (
    .i0(o_3),
    .i1(b_4),
    .sel(diff_4),
    .o(o_4));
  xor xor_0 (diff_0, a_0, b_0);
  xor xor_1 (diff_1, a_1, b_1);
  xor xor_2 (diff_2, a_2, b_2);
  xor xor_3 (diff_3, a_3, b_3);
  xor xor_4 (diff_4, a_4, b_4);

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

  wire net_a0;
  wire net_a1;
  wire net_a2;
  wire net_a3;
  wire net_a4;
  wire net_b0;
  wire net_b1;
  wire net_b2;
  wire net_b3;
  wire net_b4;
  wire net_cout0;
  wire net_cout1;
  wire net_cout2;
  wire net_cout3;
  wire net_cout4;
  wire net_nb0;
  wire net_nb1;
  wire net_nb2;
  wire net_nb3;
  wire net_nb4;
  wire net_sum0;
  wire net_sum1;
  wire net_sum2;
  wire net_sum3;
  wire net_sum4;

  assign net_a4 = i0[4];
  assign net_a3 = i0[3];
  assign net_a2 = i0[2];
  assign net_a1 = i0[1];
  assign net_a0 = i0[0];
  assign net_b4 = i1[4];
  assign net_b3 = i1[3];
  assign net_b2 = i1[2];
  assign net_b1 = i1[1];
  assign net_b0 = i1[0];
  assign o[4] = net_sum4;
  assign o[3] = net_sum3;
  assign o[2] = net_sum2;
  assign o[1] = net_sum1;
  assign o[0] = net_sum0;
  AL_FADD comp_0 (
    .a(net_a0),
    .b(net_nb0),
    .c(1'b1),
    .cout(net_cout0),
    .sum(net_sum0));
  AL_FADD comp_1 (
    .a(net_a1),
    .b(net_nb1),
    .c(net_cout0),
    .cout(net_cout1),
    .sum(net_sum1));
  AL_FADD comp_2 (
    .a(net_a2),
    .b(net_nb2),
    .c(net_cout1),
    .cout(net_cout2),
    .sum(net_sum2));
  AL_FADD comp_3 (
    .a(net_a3),
    .b(net_nb3),
    .c(net_cout2),
    .cout(net_cout3),
    .sum(net_sum3));
  AL_FADD comp_4 (
    .a(net_a4),
    .b(net_nb4),
    .c(net_cout3),
    .cout(net_cout4),
    .sum(net_sum4));
  not inv_b0 (net_nb0, net_b0);
  not inv_b1 (net_nb1, net_b1);
  not inv_b2 (net_nb2, net_b2);
  not inv_b3 (net_nb3, net_b3);
  not inv_b4 (net_nb4, net_b4);

endmodule 

module reg_ar_ss_w1
  (
  clk,
  d,
  en,
  reset,
  set,
  q
  );

  input clk;
  input d;
  input en;
  input reset;
  input set;
  output q;

  parameter REGSET = "RESET";
  wire enout;
  wire setout;

  AL_MUX u_en0 (
    .i0(q),
    .i1(d),
    .sel(en),
    .o(enout));
  AL_DFF
    u_seq0 (
    .clk(clk),
    .d(setout),
    .reset(reset),
    .set(1'b0),
    .q(q));
  AL_MUX u_set0 (
    .i0(enout),
    .i1(1'b1),
    .sel(set),
    .o(setout));

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

  wire net_a0;
  wire net_a1;
  wire net_a2;
  wire net_a3;
  wire net_a4;
  wire net_a5;
  wire net_b0;
  wire net_b1;
  wire net_b2;
  wire net_b3;
  wire net_b4;
  wire net_b5;
  wire net_cout0;
  wire net_cout1;
  wire net_cout2;
  wire net_cout3;
  wire net_cout4;
  wire net_cout5;
  wire net_sum0;
  wire net_sum1;
  wire net_sum2;
  wire net_sum3;
  wire net_sum4;
  wire net_sum5;

  assign net_a5 = i0[5];
  assign net_a4 = i0[4];
  assign net_a3 = i0[3];
  assign net_a2 = i0[2];
  assign net_a1 = i0[1];
  assign net_a0 = i0[0];
  assign net_b5 = i1[5];
  assign net_b4 = i1[4];
  assign net_b3 = i1[3];
  assign net_b2 = i1[2];
  assign net_b1 = i1[1];
  assign net_b0 = i1[0];
  assign o[5] = net_sum5;
  assign o[4] = net_sum4;
  assign o[3] = net_sum3;
  assign o[2] = net_sum2;
  assign o[1] = net_sum1;
  assign o[0] = net_sum0;
  AL_FADD comp_0 (
    .a(net_a0),
    .b(net_b0),
    .c(1'b0),
    .cout(net_cout0),
    .sum(net_sum0));
  AL_FADD comp_1 (
    .a(net_a1),
    .b(net_b1),
    .c(net_cout0),
    .cout(net_cout1),
    .sum(net_sum1));
  AL_FADD comp_2 (
    .a(net_a2),
    .b(net_b2),
    .c(net_cout1),
    .cout(net_cout2),
    .sum(net_sum2));
  AL_FADD comp_3 (
    .a(net_a3),
    .b(net_b3),
    .c(net_cout2),
    .cout(net_cout3),
    .sum(net_sum3));
  AL_FADD comp_4 (
    .a(net_a4),
    .b(net_b4),
    .c(net_cout3),
    .cout(net_cout4),
    .sum(net_sum4));
  AL_FADD comp_5 (
    .a(net_a5),
    .b(net_b5),
    .c(net_cout4),
    .cout(net_cout5),
    .sum(net_sum5));

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

  wire net_a0;
  wire net_a1;
  wire net_a2;
  wire net_a3;
  wire net_a4;
  wire net_b0;
  wire net_b1;
  wire net_b2;
  wire net_b3;
  wire net_b4;
  wire net_cout0;
  wire net_cout1;
  wire net_cout2;
  wire net_cout3;
  wire net_cout4;
  wire net_sum0;
  wire net_sum1;
  wire net_sum2;
  wire net_sum3;
  wire net_sum4;

  assign net_a4 = i0[4];
  assign net_a3 = i0[3];
  assign net_a2 = i0[2];
  assign net_a1 = i0[1];
  assign net_a0 = i0[0];
  assign net_b4 = i1[4];
  assign net_b3 = i1[3];
  assign net_b2 = i1[2];
  assign net_b1 = i1[1];
  assign net_b0 = i1[0];
  assign o[4] = net_sum4;
  assign o[3] = net_sum3;
  assign o[2] = net_sum2;
  assign o[1] = net_sum1;
  assign o[0] = net_sum0;
  AL_FADD comp_0 (
    .a(net_a0),
    .b(net_b0),
    .c(1'b0),
    .cout(net_cout0),
    .sum(net_sum0));
  AL_FADD comp_1 (
    .a(net_a1),
    .b(net_b1),
    .c(net_cout0),
    .cout(net_cout1),
    .sum(net_sum1));
  AL_FADD comp_2 (
    .a(net_a2),
    .b(net_b2),
    .c(net_cout1),
    .cout(net_cout2),
    .sum(net_sum2));
  AL_FADD comp_3 (
    .a(net_a3),
    .b(net_b3),
    .c(net_cout2),
    .cout(net_cout3),
    .sum(net_sum3));
  AL_FADD comp_4 (
    .a(net_a4),
    .b(net_b4),
    .c(net_cout3),
    .cout(net_cout4),
    .sum(net_sum4));

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

  wire net_a0;
  wire net_a1;
  wire net_a2;
  wire net_b0;
  wire net_b1;
  wire net_b2;
  wire net_cout0;
  wire net_cout1;
  wire net_cout2;
  wire net_sum0;
  wire net_sum1;
  wire net_sum2;

  assign net_a2 = i0[2];
  assign net_a1 = i0[1];
  assign net_a0 = i0[0];
  assign net_b2 = i1[2];
  assign net_b1 = i1[1];
  assign net_b0 = i1[0];
  assign o[2] = net_sum2;
  assign o[1] = net_sum1;
  assign o[0] = net_sum0;
  AL_FADD comp_0 (
    .a(net_a0),
    .b(net_b0),
    .c(1'b0),
    .cout(net_cout0),
    .sum(net_sum0));
  AL_FADD comp_1 (
    .a(net_a1),
    .b(net_b1),
    .c(net_cout0),
    .cout(net_cout1),
    .sum(net_sum1));
  AL_FADD comp_2 (
    .a(net_a2),
    .b(net_b2),
    .c(net_cout1),
    .cout(net_cout2),
    .sum(net_sum2));

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

  wire \or_or_xor_i0[0]_i1[0_o ;
  wire \or_xor_i0[0]_i1[0]_o_o ;
  wire \or_xor_i0[1]_i1[1]_o_o ;
  wire \or_xor_i0[3]_i1[3]_o_o ;
  wire \or_xor_i0[4]_i1[4]_o_o ;
  wire \xor_i0[0]_i1[0]_o ;
  wire \xor_i0[1]_i1[1]_o ;
  wire \xor_i0[2]_i1[2]_o ;
  wire \xor_i0[3]_i1[3]_o ;
  wire \xor_i0[4]_i1[4]_o ;
  wire \xor_i0[5]_i1[5]_o ;

  not none_diff (o, \or_or_xor_i0[0]_i1[0_o );
  or \or_or_xor_i0[0]_i1[0  (\or_or_xor_i0[0]_i1[0_o , \or_xor_i0[0]_i1[0]_o_o , \or_xor_i0[3]_i1[3]_o_o );
  or \or_xor_i0[0]_i1[0]_o  (\or_xor_i0[0]_i1[0]_o_o , \xor_i0[0]_i1[0]_o , \or_xor_i0[1]_i1[1]_o_o );
  or \or_xor_i0[1]_i1[1]_o  (\or_xor_i0[1]_i1[1]_o_o , \xor_i0[1]_i1[1]_o , \xor_i0[2]_i1[2]_o );
  or \or_xor_i0[3]_i1[3]_o  (\or_xor_i0[3]_i1[3]_o_o , \xor_i0[3]_i1[3]_o , \or_xor_i0[4]_i1[4]_o_o );
  or \or_xor_i0[4]_i1[4]_o  (\or_xor_i0[4]_i1[4]_o_o , \xor_i0[4]_i1[4]_o , \xor_i0[5]_i1[5]_o );
  xor \xor_i0[0]_i1[0]  (\xor_i0[0]_i1[0]_o , i0[0], i1[0]);
  xor \xor_i0[1]_i1[1]  (\xor_i0[1]_i1[1]_o , i0[1], i1[1]);
  xor \xor_i0[2]_i1[2]  (\xor_i0[2]_i1[2]_o , i0[2], i1[2]);
  xor \xor_i0[3]_i1[3]  (\xor_i0[3]_i1[3]_o , i0[3], i1[3]);
  xor \xor_i0[4]_i1[4]  (\xor_i0[4]_i1[4]_o , i0[4], i1[4]);
  xor \xor_i0[5]_i1[5]  (\xor_i0[5]_i1[5]_o , i0[5], i1[5]);

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

  wire \or_or_xor_i0[0]_i1[0_o ;
  wire \or_xor_i0[0]_i1[0]_o_o ;
  wire \or_xor_i0[2]_i1[2]_o_o ;
  wire \xor_i0[0]_i1[0]_o ;
  wire \xor_i0[1]_i1[1]_o ;
  wire \xor_i0[2]_i1[2]_o ;
  wire \xor_i0[3]_i1[3]_o ;

  not none_diff (o, \or_or_xor_i0[0]_i1[0_o );
  or \or_or_xor_i0[0]_i1[0  (\or_or_xor_i0[0]_i1[0_o , \or_xor_i0[0]_i1[0]_o_o , \or_xor_i0[2]_i1[2]_o_o );
  or \or_xor_i0[0]_i1[0]_o  (\or_xor_i0[0]_i1[0]_o_o , \xor_i0[0]_i1[0]_o , \xor_i0[1]_i1[1]_o );
  or \or_xor_i0[2]_i1[2]_o  (\or_xor_i0[2]_i1[2]_o_o , \xor_i0[2]_i1[2]_o , \xor_i0[3]_i1[3]_o );
  xor \xor_i0[0]_i1[0]  (\xor_i0[0]_i1[0]_o , i0[0], i1[0]);
  xor \xor_i0[1]_i1[1]  (\xor_i0[1]_i1[1]_o , i0[1], i1[1]);
  xor \xor_i0[2]_i1[2]  (\xor_i0[2]_i1[2]_o , i0[2], i1[2]);
  xor \xor_i0[3]_i1[3]  (\xor_i0[3]_i1[3]_o , i0[3], i1[3]);

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

  wire \or_xor_i0[0]_i1[0]_o_o ;
  wire \xor_i0[0]_i1[0]_o ;
  wire \xor_i0[1]_i1[1]_o ;

  not none_diff (o, \or_xor_i0[0]_i1[0]_o_o );
  or \or_xor_i0[0]_i1[0]_o  (\or_xor_i0[0]_i1[0]_o_o , \xor_i0[0]_i1[0]_o , \xor_i0[1]_i1[1]_o );
  xor \xor_i0[0]_i1[0]  (\xor_i0[0]_i1[0]_o , i0[0], i1[0]);
  xor \xor_i0[1]_i1[1]  (\xor_i0[1]_i1[1]_o , i0[1], i1[1]);

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

  wire a_0;
  wire a_1;
  wire a_2;
  wire a_3;
  wire a_4;
  wire a_5;
  wire b_0;
  wire b_1;
  wire b_2;
  wire b_3;
  wire b_4;
  wire b_5;
  wire diff_0;
  wire diff_1;
  wire diff_2;
  wire diff_3;
  wire diff_4;
  wire diff_5;
  wire net_cin;
  wire o_0;
  wire o_1;
  wire o_2;
  wire o_3;
  wire o_4;
  wire o_5;

  assign net_cin = ci;
  assign a_5 = i0[5];
  assign a_4 = i0[4];
  assign a_3 = i0[3];
  assign a_2 = i0[2];
  assign a_1 = i0[1];
  assign a_0 = i0[0];
  assign b_5 = i1[5];
  assign b_4 = i1[4];
  assign b_3 = i1[3];
  assign b_2 = i1[2];
  assign b_1 = i1[1];
  assign b_0 = i1[0];
  assign o = o_5;
  AL_MUX mux_0 (
    .i0(net_cin),
    .i1(b_0),
    .sel(diff_0),
    .o(o_0));
  AL_MUX mux_1 (
    .i0(o_0),
    .i1(b_1),
    .sel(diff_1),
    .o(o_1));
  AL_MUX mux_2 (
    .i0(o_1),
    .i1(b_2),
    .sel(diff_2),
    .o(o_2));
  AL_MUX mux_3 (
    .i0(o_2),
    .i1(b_3),
    .sel(diff_3),
    .o(o_3));
  AL_MUX mux_4 (
    .i0(o_3),
    .i1(b_4),
    .sel(diff_4),
    .o(o_4));
  AL_MUX mux_5 (
    .i0(o_4),
    .i1(b_5),
    .sel(diff_5),
    .o(o_5));
  xor xor_0 (diff_0, a_0, b_0);
  xor xor_1 (diff_1, a_1, b_1);
  xor xor_2 (diff_2, a_2, b_2);
  xor xor_3 (diff_3, a_3, b_3);
  xor xor_4 (diff_4, a_4, b_4);
  xor xor_5 (diff_5, a_5, b_5);

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

  wire [5:0] diff;

  or any_diff (o, diff[0], diff[1], diff[2], diff[3], diff[4], diff[5]);
  xor diff_0 (diff[0], i0[0], i1[0]);
  xor diff_1 (diff[1], i0[1], i1[1]);
  xor diff_2 (diff[2], i0[2], i1[2]);
  xor diff_3 (diff[3], i0[3], i1[3]);
  xor diff_4 (diff[4], i0[4], i1[4]);
  xor diff_5 (diff[5], i0[5], i1[5]);

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

  wire  B0_0;
  wire  B0_1;
  wire  B0_2;
  wire  B0_3;
  wire  B0_4;
  wire  B0_5;
  wire  B0_6;
  wire  B0_7;
  wire  B1_0;
  wire  B1_1;
  wire  B1_2;
  wire  B1_3;
  wire  B2_0;
  wire  B2_1;

  AL_MUX al_mux_b0_0_0 (
    .i0(i0),
    .i1(i1),
    .sel(sel[0]),
    .o(B0_0));
  AL_MUX al_mux_b0_0_1 (
    .i0(i2),
    .i1(i3),
    .sel(sel[0]),
    .o(B0_1));
  AL_MUX al_mux_b0_0_2 (
    .i0(i4),
    .i1(i5),
    .sel(sel[0]),
    .o(B0_2));
  AL_MUX al_mux_b0_0_3 (
    .i0(i6),
    .i1(i7),
    .sel(sel[0]),
    .o(B0_3));
  AL_MUX al_mux_b0_0_4 (
    .i0(i8),
    .i1(i9),
    .sel(sel[0]),
    .o(B0_4));
  AL_MUX al_mux_b0_0_5 (
    .i0(i10),
    .i1(i11),
    .sel(sel[0]),
    .o(B0_5));
  AL_MUX al_mux_b0_0_6 (
    .i0(i12),
    .i1(i13),
    .sel(sel[0]),
    .o(B0_6));
  AL_MUX al_mux_b0_0_7 (
    .i0(i14),
    .i1(i15),
    .sel(sel[0]),
    .o(B0_7));
  AL_MUX al_mux_b0_1_0 (
    .i0(B0_0),
    .i1(B0_1),
    .sel(sel[1]),
    .o(B1_0));
  AL_MUX al_mux_b0_1_1 (
    .i0(B0_2),
    .i1(B0_3),
    .sel(sel[1]),
    .o(B1_1));
  AL_MUX al_mux_b0_1_2 (
    .i0(B0_4),
    .i1(B0_5),
    .sel(sel[1]),
    .o(B1_2));
  AL_MUX al_mux_b0_1_3 (
    .i0(B0_6),
    .i1(B0_7),
    .sel(sel[1]),
    .o(B1_3));
  AL_MUX al_mux_b0_2_0 (
    .i0(B1_0),
    .i1(B1_1),
    .sel(sel[2]),
    .o(B2_0));
  AL_MUX al_mux_b0_2_1 (
    .i0(B1_2),
    .i1(B1_3),
    .sel(sel[2]),
    .o(B2_1));
  AL_MUX al_mux_b0_3_0 (
    .i0(B2_0),
    .i1(B2_1),
    .sel(sel[3]),
    .o(o));

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

  wire net_a0;
  wire net_a1;
  wire net_a10;
  wire net_a11;
  wire net_a12;
  wire net_a13;
  wire net_a14;
  wire net_a15;
  wire net_a16;
  wire net_a17;
  wire net_a18;
  wire net_a19;
  wire net_a2;
  wire net_a20;
  wire net_a3;
  wire net_a4;
  wire net_a5;
  wire net_a6;
  wire net_a7;
  wire net_a8;
  wire net_a9;
  wire net_b0;
  wire net_b1;
  wire net_b10;
  wire net_b11;
  wire net_b12;
  wire net_b13;
  wire net_b14;
  wire net_b15;
  wire net_b16;
  wire net_b17;
  wire net_b18;
  wire net_b19;
  wire net_b2;
  wire net_b20;
  wire net_b3;
  wire net_b4;
  wire net_b5;
  wire net_b6;
  wire net_b7;
  wire net_b8;
  wire net_b9;
  wire net_cout0;
  wire net_cout1;
  wire net_cout10;
  wire net_cout11;
  wire net_cout12;
  wire net_cout13;
  wire net_cout14;
  wire net_cout15;
  wire net_cout16;
  wire net_cout17;
  wire net_cout18;
  wire net_cout19;
  wire net_cout2;
  wire net_cout20;
  wire net_cout3;
  wire net_cout4;
  wire net_cout5;
  wire net_cout6;
  wire net_cout7;
  wire net_cout8;
  wire net_cout9;
  wire net_sum0;
  wire net_sum1;
  wire net_sum10;
  wire net_sum11;
  wire net_sum12;
  wire net_sum13;
  wire net_sum14;
  wire net_sum15;
  wire net_sum16;
  wire net_sum17;
  wire net_sum18;
  wire net_sum19;
  wire net_sum2;
  wire net_sum20;
  wire net_sum3;
  wire net_sum4;
  wire net_sum5;
  wire net_sum6;
  wire net_sum7;
  wire net_sum8;
  wire net_sum9;

  assign net_a20 = i0[20];
  assign net_a19 = i0[19];
  assign net_a18 = i0[18];
  assign net_a17 = i0[17];
  assign net_a16 = i0[16];
  assign net_a15 = i0[15];
  assign net_a14 = i0[14];
  assign net_a13 = i0[13];
  assign net_a12 = i0[12];
  assign net_a11 = i0[11];
  assign net_a10 = i0[10];
  assign net_a9 = i0[9];
  assign net_a8 = i0[8];
  assign net_a7 = i0[7];
  assign net_a6 = i0[6];
  assign net_a5 = i0[5];
  assign net_a4 = i0[4];
  assign net_a3 = i0[3];
  assign net_a2 = i0[2];
  assign net_a1 = i0[1];
  assign net_a0 = i0[0];
  assign net_b20 = i1[20];
  assign net_b19 = i1[19];
  assign net_b18 = i1[18];
  assign net_b17 = i1[17];
  assign net_b16 = i1[16];
  assign net_b15 = i1[15];
  assign net_b14 = i1[14];
  assign net_b13 = i1[13];
  assign net_b12 = i1[12];
  assign net_b11 = i1[11];
  assign net_b10 = i1[10];
  assign net_b9 = i1[9];
  assign net_b8 = i1[8];
  assign net_b7 = i1[7];
  assign net_b6 = i1[6];
  assign net_b5 = i1[5];
  assign net_b4 = i1[4];
  assign net_b3 = i1[3];
  assign net_b2 = i1[2];
  assign net_b1 = i1[1];
  assign net_b0 = i1[0];
  assign o[20] = net_sum20;
  assign o[19] = net_sum19;
  assign o[18] = net_sum18;
  assign o[17] = net_sum17;
  assign o[16] = net_sum16;
  assign o[15] = net_sum15;
  assign o[14] = net_sum14;
  assign o[13] = net_sum13;
  assign o[12] = net_sum12;
  assign o[11] = net_sum11;
  assign o[10] = net_sum10;
  assign o[9] = net_sum9;
  assign o[8] = net_sum8;
  assign o[7] = net_sum7;
  assign o[6] = net_sum6;
  assign o[5] = net_sum5;
  assign o[4] = net_sum4;
  assign o[3] = net_sum3;
  assign o[2] = net_sum2;
  assign o[1] = net_sum1;
  assign o[0] = net_sum0;
  AL_FADD comp_0 (
    .a(net_a0),
    .b(net_b0),
    .c(1'b0),
    .cout(net_cout0),
    .sum(net_sum0));
  AL_FADD comp_1 (
    .a(net_a1),
    .b(net_b1),
    .c(net_cout0),
    .cout(net_cout1),
    .sum(net_sum1));
  AL_FADD comp_10 (
    .a(net_a10),
    .b(net_b10),
    .c(net_cout9),
    .cout(net_cout10),
    .sum(net_sum10));
  AL_FADD comp_11 (
    .a(net_a11),
    .b(net_b11),
    .c(net_cout10),
    .cout(net_cout11),
    .sum(net_sum11));
  AL_FADD comp_12 (
    .a(net_a12),
    .b(net_b12),
    .c(net_cout11),
    .cout(net_cout12),
    .sum(net_sum12));
  AL_FADD comp_13 (
    .a(net_a13),
    .b(net_b13),
    .c(net_cout12),
    .cout(net_cout13),
    .sum(net_sum13));
  AL_FADD comp_14 (
    .a(net_a14),
    .b(net_b14),
    .c(net_cout13),
    .cout(net_cout14),
    .sum(net_sum14));
  AL_FADD comp_15 (
    .a(net_a15),
    .b(net_b15),
    .c(net_cout14),
    .cout(net_cout15),
    .sum(net_sum15));
  AL_FADD comp_16 (
    .a(net_a16),
    .b(net_b16),
    .c(net_cout15),
    .cout(net_cout16),
    .sum(net_sum16));
  AL_FADD comp_17 (
    .a(net_a17),
    .b(net_b17),
    .c(net_cout16),
    .cout(net_cout17),
    .sum(net_sum17));
  AL_FADD comp_18 (
    .a(net_a18),
    .b(net_b18),
    .c(net_cout17),
    .cout(net_cout18),
    .sum(net_sum18));
  AL_FADD comp_19 (
    .a(net_a19),
    .b(net_b19),
    .c(net_cout18),
    .cout(net_cout19),
    .sum(net_sum19));
  AL_FADD comp_2 (
    .a(net_a2),
    .b(net_b2),
    .c(net_cout1),
    .cout(net_cout2),
    .sum(net_sum2));
  AL_FADD comp_20 (
    .a(net_a20),
    .b(net_b20),
    .c(net_cout19),
    .cout(net_cout20),
    .sum(net_sum20));
  AL_FADD comp_3 (
    .a(net_a3),
    .b(net_b3),
    .c(net_cout2),
    .cout(net_cout3),
    .sum(net_sum3));
  AL_FADD comp_4 (
    .a(net_a4),
    .b(net_b4),
    .c(net_cout3),
    .cout(net_cout4),
    .sum(net_sum4));
  AL_FADD comp_5 (
    .a(net_a5),
    .b(net_b5),
    .c(net_cout4),
    .cout(net_cout5),
    .sum(net_sum5));
  AL_FADD comp_6 (
    .a(net_a6),
    .b(net_b6),
    .c(net_cout5),
    .cout(net_cout6),
    .sum(net_sum6));
  AL_FADD comp_7 (
    .a(net_a7),
    .b(net_b7),
    .c(net_cout6),
    .cout(net_cout7),
    .sum(net_sum7));
  AL_FADD comp_8 (
    .a(net_a8),
    .b(net_b8),
    .c(net_cout7),
    .cout(net_cout8),
    .sum(net_sum8));
  AL_FADD comp_9 (
    .a(net_a9),
    .b(net_b9),
    .c(net_cout8),
    .cout(net_cout9),
    .sum(net_sum9));

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

  wire [20:0] diff;
  wire [1:0] \less_19_20_inst/diff ;
  wire diff_12_18;
  wire diff_19_20;
  wire diff_6_11;
  wire less_12_18;
  wire \less_12_18_inst/diff_0 ;
  wire \less_12_18_inst/diff_1 ;
  wire \less_12_18_inst/diff_2 ;
  wire \less_12_18_inst/diff_3 ;
  wire \less_12_18_inst/diff_4 ;
  wire \less_12_18_inst/diff_5 ;
  wire \less_12_18_inst/diff_6 ;
  wire \less_12_18_inst/o_0 ;
  wire \less_12_18_inst/o_1 ;
  wire \less_12_18_inst/o_2 ;
  wire \less_12_18_inst/o_3 ;
  wire \less_12_18_inst/o_4 ;
  wire \less_12_18_inst/o_5 ;
  wire less_19_20;
  wire \less_19_20_inst/o_0 ;
  wire less_6_11;
  wire \less_6_11_inst/diff_0 ;
  wire \less_6_11_inst/diff_1 ;
  wire \less_6_11_inst/diff_2 ;
  wire \less_6_11_inst/diff_3 ;
  wire \less_6_11_inst/diff_4 ;
  wire \less_6_11_inst/diff_5 ;
  wire \less_6_11_inst/o_0 ;
  wire \less_6_11_inst/o_1 ;
  wire \less_6_11_inst/o_2 ;
  wire \less_6_11_inst/o_3 ;
  wire \less_6_11_inst/o_4 ;
  wire o_0;
  wire o_1;
  wire o_2;
  wire o_3;
  wire o_4;
  wire o_5;
  wire o_6;
  wire o_7;

  or any_diff_12_18 (diff_12_18, diff[12], diff[13], diff[14], diff[15], diff[16], diff[17], diff[18]);
  or any_diff_19_20 (diff_19_20, diff[19], diff[20]);
  or any_diff_6_11 (diff_6_11, diff[6], diff[7], diff[8], diff[9], diff[10], diff[11]);
  xor diff_0 (diff[0], i0[0], i1[0]);
  xor diff_1 (diff[1], i0[1], i1[1]);
  xor diff_10 (diff[10], i0[10], i1[10]);
  xor diff_11 (diff[11], i0[11], i1[11]);
  xor diff_12 (diff[12], i0[12], i1[12]);
  xor diff_13 (diff[13], i0[13], i1[13]);
  xor diff_14 (diff[14], i0[14], i1[14]);
  xor diff_15 (diff[15], i0[15], i1[15]);
  xor diff_16 (diff[16], i0[16], i1[16]);
  xor diff_17 (diff[17], i0[17], i1[17]);
  xor diff_18 (diff[18], i0[18], i1[18]);
  xor diff_19 (diff[19], i0[19], i1[19]);
  xor diff_2 (diff[2], i0[2], i1[2]);
  xor diff_20 (diff[20], i0[20], i1[20]);
  xor diff_3 (diff[3], i0[3], i1[3]);
  xor diff_4 (diff[4], i0[4], i1[4]);
  xor diff_5 (diff[5], i0[5], i1[5]);
  xor diff_6 (diff[6], i0[6], i1[6]);
  xor diff_7 (diff[7], i0[7], i1[7]);
  xor diff_8 (diff[8], i0[8], i1[8]);
  xor diff_9 (diff[9], i0[9], i1[9]);
  AL_MUX \less_12_18_inst/mux_0  (
    .i0(1'b0),
    .i1(i1[12]),
    .sel(\less_12_18_inst/diff_0 ),
    .o(\less_12_18_inst/o_0 ));
  AL_MUX \less_12_18_inst/mux_1  (
    .i0(\less_12_18_inst/o_0 ),
    .i1(i1[13]),
    .sel(\less_12_18_inst/diff_1 ),
    .o(\less_12_18_inst/o_1 ));
  AL_MUX \less_12_18_inst/mux_2  (
    .i0(\less_12_18_inst/o_1 ),
    .i1(i1[14]),
    .sel(\less_12_18_inst/diff_2 ),
    .o(\less_12_18_inst/o_2 ));
  AL_MUX \less_12_18_inst/mux_3  (
    .i0(\less_12_18_inst/o_2 ),
    .i1(i1[15]),
    .sel(\less_12_18_inst/diff_3 ),
    .o(\less_12_18_inst/o_3 ));
  AL_MUX \less_12_18_inst/mux_4  (
    .i0(\less_12_18_inst/o_3 ),
    .i1(i1[16]),
    .sel(\less_12_18_inst/diff_4 ),
    .o(\less_12_18_inst/o_4 ));
  AL_MUX \less_12_18_inst/mux_5  (
    .i0(\less_12_18_inst/o_4 ),
    .i1(i1[17]),
    .sel(\less_12_18_inst/diff_5 ),
    .o(\less_12_18_inst/o_5 ));
  AL_MUX \less_12_18_inst/mux_6  (
    .i0(\less_12_18_inst/o_5 ),
    .i1(i1[18]),
    .sel(\less_12_18_inst/diff_6 ),
    .o(less_12_18));
  xor \less_12_18_inst/xor_0  (\less_12_18_inst/diff_0 , i0[12], i1[12]);
  xor \less_12_18_inst/xor_1  (\less_12_18_inst/diff_1 , i0[13], i1[13]);
  xor \less_12_18_inst/xor_2  (\less_12_18_inst/diff_2 , i0[14], i1[14]);
  xor \less_12_18_inst/xor_3  (\less_12_18_inst/diff_3 , i0[15], i1[15]);
  xor \less_12_18_inst/xor_4  (\less_12_18_inst/diff_4 , i0[16], i1[16]);
  xor \less_12_18_inst/xor_5  (\less_12_18_inst/diff_5 , i0[17], i1[17]);
  xor \less_12_18_inst/xor_6  (\less_12_18_inst/diff_6 , i0[18], i1[18]);
  xor \less_19_20_inst/diff_0  (\less_19_20_inst/diff [0], i0[19], i1[19]);
  xor \less_19_20_inst/diff_1  (\less_19_20_inst/diff [1], i0[20], i1[20]);
  AL_MUX \less_19_20_inst/mux_0  (
    .i0(1'b0),
    .i1(i1[19]),
    .sel(\less_19_20_inst/diff [0]),
    .o(\less_19_20_inst/o_0 ));
  AL_MUX \less_19_20_inst/mux_1  (
    .i0(\less_19_20_inst/o_0 ),
    .i1(i1[20]),
    .sel(\less_19_20_inst/diff [1]),
    .o(less_19_20));
  AL_MUX \less_6_11_inst/mux_0  (
    .i0(1'b0),
    .i1(i1[6]),
    .sel(\less_6_11_inst/diff_0 ),
    .o(\less_6_11_inst/o_0 ));
  AL_MUX \less_6_11_inst/mux_1  (
    .i0(\less_6_11_inst/o_0 ),
    .i1(i1[7]),
    .sel(\less_6_11_inst/diff_1 ),
    .o(\less_6_11_inst/o_1 ));
  AL_MUX \less_6_11_inst/mux_2  (
    .i0(\less_6_11_inst/o_1 ),
    .i1(i1[8]),
    .sel(\less_6_11_inst/diff_2 ),
    .o(\less_6_11_inst/o_2 ));
  AL_MUX \less_6_11_inst/mux_3  (
    .i0(\less_6_11_inst/o_2 ),
    .i1(i1[9]),
    .sel(\less_6_11_inst/diff_3 ),
    .o(\less_6_11_inst/o_3 ));
  AL_MUX \less_6_11_inst/mux_4  (
    .i0(\less_6_11_inst/o_3 ),
    .i1(i1[10]),
    .sel(\less_6_11_inst/diff_4 ),
    .o(\less_6_11_inst/o_4 ));
  AL_MUX \less_6_11_inst/mux_5  (
    .i0(\less_6_11_inst/o_4 ),
    .i1(i1[11]),
    .sel(\less_6_11_inst/diff_5 ),
    .o(less_6_11));
  xor \less_6_11_inst/xor_0  (\less_6_11_inst/diff_0 , i0[6], i1[6]);
  xor \less_6_11_inst/xor_1  (\less_6_11_inst/diff_1 , i0[7], i1[7]);
  xor \less_6_11_inst/xor_2  (\less_6_11_inst/diff_2 , i0[8], i1[8]);
  xor \less_6_11_inst/xor_3  (\less_6_11_inst/diff_3 , i0[9], i1[9]);
  xor \less_6_11_inst/xor_4  (\less_6_11_inst/diff_4 , i0[10], i1[10]);
  xor \less_6_11_inst/xor_5  (\less_6_11_inst/diff_5 , i0[11], i1[11]);
  AL_MUX mux_0 (
    .i0(ci),
    .i1(i1[0]),
    .sel(diff[0]),
    .o(o_0));
  AL_MUX mux_1 (
    .i0(o_0),
    .i1(i1[1]),
    .sel(diff[1]),
    .o(o_1));
  AL_MUX mux_2 (
    .i0(o_1),
    .i1(i1[2]),
    .sel(diff[2]),
    .o(o_2));
  AL_MUX mux_3 (
    .i0(o_2),
    .i1(i1[3]),
    .sel(diff[3]),
    .o(o_3));
  AL_MUX mux_4 (
    .i0(o_3),
    .i1(i1[4]),
    .sel(diff[4]),
    .o(o_4));
  AL_MUX mux_5 (
    .i0(o_4),
    .i1(i1[5]),
    .sel(diff[5]),
    .o(o_5));
  AL_MUX mux_6 (
    .i0(o_5),
    .i1(less_6_11),
    .sel(diff_6_11),
    .o(o_6));
  AL_MUX mux_7 (
    .i0(o_6),
    .i1(less_12_18),
    .sel(diff_12_18),
    .o(o_7));
  AL_MUX mux_8 (
    .i0(o_7),
    .i1(less_19_20),
    .sel(diff_19_20),
    .o(o));

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

  wire [8:0] diff;
  wire [2:0] \less_6_8_inst/diff ;
  wire diff_6_8;
  wire less_6_8;
  wire \less_6_8_inst/o_0 ;
  wire \less_6_8_inst/o_1 ;
  wire o_0;
  wire o_1;
  wire o_2;
  wire o_3;
  wire o_4;
  wire o_5;

  or any_diff_6_8 (diff_6_8, diff[6], diff[7], diff[8]);
  xor diff_0 (diff[0], i0[0], i1[0]);
  xor diff_1 (diff[1], i0[1], i1[1]);
  xor diff_2 (diff[2], i0[2], i1[2]);
  xor diff_3 (diff[3], i0[3], i1[3]);
  xor diff_4 (diff[4], i0[4], i1[4]);
  xor diff_5 (diff[5], i0[5], i1[5]);
  xor diff_6 (diff[6], i0[6], i1[6]);
  xor diff_7 (diff[7], i0[7], i1[7]);
  xor diff_8 (diff[8], i0[8], i1[8]);
  xor \less_6_8_inst/diff_0  (\less_6_8_inst/diff [0], i0[6], i1[6]);
  xor \less_6_8_inst/diff_1  (\less_6_8_inst/diff [1], i0[7], i1[7]);
  xor \less_6_8_inst/diff_2  (\less_6_8_inst/diff [2], i0[8], i1[8]);
  AL_MUX \less_6_8_inst/mux_0  (
    .i0(1'b0),
    .i1(i1[6]),
    .sel(\less_6_8_inst/diff [0]),
    .o(\less_6_8_inst/o_0 ));
  AL_MUX \less_6_8_inst/mux_1  (
    .i0(\less_6_8_inst/o_0 ),
    .i1(i1[7]),
    .sel(\less_6_8_inst/diff [1]),
    .o(\less_6_8_inst/o_1 ));
  AL_MUX \less_6_8_inst/mux_2  (
    .i0(\less_6_8_inst/o_1 ),
    .i1(i1[8]),
    .sel(\less_6_8_inst/diff [2]),
    .o(less_6_8));
  AL_MUX mux_0 (
    .i0(ci),
    .i1(i1[0]),
    .sel(diff[0]),
    .o(o_0));
  AL_MUX mux_1 (
    .i0(o_0),
    .i1(i1[1]),
    .sel(diff[1]),
    .o(o_1));
  AL_MUX mux_2 (
    .i0(o_1),
    .i1(i1[2]),
    .sel(diff[2]),
    .o(o_2));
  AL_MUX mux_3 (
    .i0(o_2),
    .i1(i1[3]),
    .sel(diff[3]),
    .o(o_3));
  AL_MUX mux_4 (
    .i0(o_3),
    .i1(i1[4]),
    .sel(diff[4]),
    .o(o_4));
  AL_MUX mux_5 (
    .i0(o_4),
    .i1(i1[5]),
    .sel(diff[5]),
    .o(o_5));
  AL_MUX mux_6 (
    .i0(o_5),
    .i1(less_6_8),
    .sel(diff_6_8),
    .o(o));

endmodule 

module latch_ar_as_w1
  (
  clk,
  d,
  en,
  reset,
  set,
  q
  );

  input clk;
  input d;
  input en;
  input reset;
  input set;
  output q;

  wire enout;

  AL_MUX u_en0 (
    .i0(q),
    .i1(d),
    .sel(en),
    .o(enout));
  AL_LATCH u_seq0 (
    .clk(clk),
    .d(enout),
    .reset(reset),
    .set(set),
    .q(q));

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

  wire [15:0] diff;

  or any_diff (o, diff[0], diff[1], diff[2], diff[3], diff[4], diff[5], diff[6], diff[7], diff[8], diff[9], diff[10], diff[11], diff[12], diff[13], diff[14], diff[15]);
  xor diff_0 (diff[0], i0[0], i1[0]);
  xor diff_1 (diff[1], i0[1], i1[1]);
  xor diff_10 (diff[10], i0[10], i1[10]);
  xor diff_11 (diff[11], i0[11], i1[11]);
  xor diff_12 (diff[12], i0[12], i1[12]);
  xor diff_13 (diff[13], i0[13], i1[13]);
  xor diff_14 (diff[14], i0[14], i1[14]);
  xor diff_15 (diff[15], i0[15], i1[15]);
  xor diff_2 (diff[2], i0[2], i1[2]);
  xor diff_3 (diff[3], i0[3], i1[3]);
  xor diff_4 (diff[4], i0[4], i1[4]);
  xor diff_5 (diff[5], i0[5], i1[5]);
  xor diff_6 (diff[6], i0[6], i1[6]);
  xor diff_7 (diff[7], i0[7], i1[7]);
  xor diff_8 (diff[8], i0[8], i1[8]);
  xor diff_9 (diff[9], i0[9], i1[9]);

endmodule 

module reg_sr_as_w1
  (
  clk,
  d,
  en,
  reset,
  set,
  q
  );

  input clk;
  input d;
  input en;
  input reset;
  input set;
  output q;

  parameter REGSET = "RESET";
  wire enout;
  wire resetout;

  AL_MUX u_en0 (
    .i0(q),
    .i1(d),
    .sel(en),
    .o(enout));
  AL_MUX u_reset0 (
    .i0(enout),
    .i1(1'b0),
    .sel(reset),
    .o(resetout));
  AL_DFF
    u_seq0 (
    .clk(clk),
    .d(resetout),
    .reset(1'b0),
    .set(set),
    .q(q));

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

  wire net_a0;
  wire net_a1;
  wire net_a2;
  wire net_a3;
  wire net_a4;
  wire net_a5;
  wire net_a6;
  wire net_a7;
  wire net_a8;
  wire net_b0;
  wire net_b1;
  wire net_b2;
  wire net_b3;
  wire net_b4;
  wire net_b5;
  wire net_b6;
  wire net_b7;
  wire net_b8;
  wire net_cout0;
  wire net_cout1;
  wire net_cout2;
  wire net_cout3;
  wire net_cout4;
  wire net_cout5;
  wire net_cout6;
  wire net_cout7;
  wire net_cout8;
  wire net_sum0;
  wire net_sum1;
  wire net_sum2;
  wire net_sum3;
  wire net_sum4;
  wire net_sum5;
  wire net_sum6;
  wire net_sum7;
  wire net_sum8;

  assign net_a8 = i0[8];
  assign net_a7 = i0[7];
  assign net_a6 = i0[6];
  assign net_a5 = i0[5];
  assign net_a4 = i0[4];
  assign net_a3 = i0[3];
  assign net_a2 = i0[2];
  assign net_a1 = i0[1];
  assign net_a0 = i0[0];
  assign net_b8 = i1[8];
  assign net_b7 = i1[7];
  assign net_b6 = i1[6];
  assign net_b5 = i1[5];
  assign net_b4 = i1[4];
  assign net_b3 = i1[3];
  assign net_b2 = i1[2];
  assign net_b1 = i1[1];
  assign net_b0 = i1[0];
  assign o[8] = net_sum8;
  assign o[7] = net_sum7;
  assign o[6] = net_sum6;
  assign o[5] = net_sum5;
  assign o[4] = net_sum4;
  assign o[3] = net_sum3;
  assign o[2] = net_sum2;
  assign o[1] = net_sum1;
  assign o[0] = net_sum0;
  AL_FADD comp_0 (
    .a(net_a0),
    .b(net_b0),
    .c(1'b0),
    .cout(net_cout0),
    .sum(net_sum0));
  AL_FADD comp_1 (
    .a(net_a1),
    .b(net_b1),
    .c(net_cout0),
    .cout(net_cout1),
    .sum(net_sum1));
  AL_FADD comp_2 (
    .a(net_a2),
    .b(net_b2),
    .c(net_cout1),
    .cout(net_cout2),
    .sum(net_sum2));
  AL_FADD comp_3 (
    .a(net_a3),
    .b(net_b3),
    .c(net_cout2),
    .cout(net_cout3),
    .sum(net_sum3));
  AL_FADD comp_4 (
    .a(net_a4),
    .b(net_b4),
    .c(net_cout3),
    .cout(net_cout4),
    .sum(net_sum4));
  AL_FADD comp_5 (
    .a(net_a5),
    .b(net_b5),
    .c(net_cout4),
    .cout(net_cout5),
    .sum(net_sum5));
  AL_FADD comp_6 (
    .a(net_a6),
    .b(net_b6),
    .c(net_cout5),
    .cout(net_cout6),
    .sum(net_sum6));
  AL_FADD comp_7 (
    .a(net_a7),
    .b(net_b7),
    .c(net_cout6),
    .cout(net_cout7),
    .sum(net_sum7));
  AL_FADD comp_8 (
    .a(net_a8),
    .b(net_b8),
    .c(net_cout7),
    .cout(net_cout8),
    .sum(net_sum8));

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

  wire net_a0;
  wire net_a1;
  wire net_a2;
  wire net_a3;
  wire net_a4;
  wire net_a5;
  wire net_a6;
  wire net_a7;
  wire net_a8;
  wire net_a9;
  wire net_b0;
  wire net_b1;
  wire net_b2;
  wire net_b3;
  wire net_b4;
  wire net_b5;
  wire net_b6;
  wire net_b7;
  wire net_b8;
  wire net_b9;
  wire net_cout0;
  wire net_cout1;
  wire net_cout2;
  wire net_cout3;
  wire net_cout4;
  wire net_cout5;
  wire net_cout6;
  wire net_cout7;
  wire net_cout8;
  wire net_cout9;
  wire net_sum0;
  wire net_sum1;
  wire net_sum2;
  wire net_sum3;
  wire net_sum4;
  wire net_sum5;
  wire net_sum6;
  wire net_sum7;
  wire net_sum8;
  wire net_sum9;

  assign net_a9 = i0[9];
  assign net_a8 = i0[8];
  assign net_a7 = i0[7];
  assign net_a6 = i0[6];
  assign net_a5 = i0[5];
  assign net_a4 = i0[4];
  assign net_a3 = i0[3];
  assign net_a2 = i0[2];
  assign net_a1 = i0[1];
  assign net_a0 = i0[0];
  assign net_b9 = i1[9];
  assign net_b8 = i1[8];
  assign net_b7 = i1[7];
  assign net_b6 = i1[6];
  assign net_b5 = i1[5];
  assign net_b4 = i1[4];
  assign net_b3 = i1[3];
  assign net_b2 = i1[2];
  assign net_b1 = i1[1];
  assign net_b0 = i1[0];
  assign o[9] = net_sum9;
  assign o[8] = net_sum8;
  assign o[7] = net_sum7;
  assign o[6] = net_sum6;
  assign o[5] = net_sum5;
  assign o[4] = net_sum4;
  assign o[3] = net_sum3;
  assign o[2] = net_sum2;
  assign o[1] = net_sum1;
  assign o[0] = net_sum0;
  AL_FADD comp_0 (
    .a(net_a0),
    .b(net_b0),
    .c(1'b0),
    .cout(net_cout0),
    .sum(net_sum0));
  AL_FADD comp_1 (
    .a(net_a1),
    .b(net_b1),
    .c(net_cout0),
    .cout(net_cout1),
    .sum(net_sum1));
  AL_FADD comp_2 (
    .a(net_a2),
    .b(net_b2),
    .c(net_cout1),
    .cout(net_cout2),
    .sum(net_sum2));
  AL_FADD comp_3 (
    .a(net_a3),
    .b(net_b3),
    .c(net_cout2),
    .cout(net_cout3),
    .sum(net_sum3));
  AL_FADD comp_4 (
    .a(net_a4),
    .b(net_b4),
    .c(net_cout3),
    .cout(net_cout4),
    .sum(net_sum4));
  AL_FADD comp_5 (
    .a(net_a5),
    .b(net_b5),
    .c(net_cout4),
    .cout(net_cout5),
    .sum(net_sum5));
  AL_FADD comp_6 (
    .a(net_a6),
    .b(net_b6),
    .c(net_cout5),
    .cout(net_cout6),
    .sum(net_sum6));
  AL_FADD comp_7 (
    .a(net_a7),
    .b(net_b7),
    .c(net_cout6),
    .cout(net_cout7),
    .sum(net_sum7));
  AL_FADD comp_8 (
    .a(net_a8),
    .b(net_b8),
    .c(net_cout7),
    .cout(net_cout8),
    .sum(net_sum8));
  AL_FADD comp_9 (
    .a(net_a9),
    .b(net_b9),
    .c(net_cout8),
    .cout(net_cout9),
    .sum(net_sum9));

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

  wire \or_or_or_xor_i0[0]_i_o ;
  wire \or_or_xor_i0[0]_i1[0_o ;
  wire \or_or_xor_i0[4]_i1[4_o ;
  wire \or_xor_i0[0]_i1[0]_o_o ;
  wire \or_xor_i0[2]_i1[2]_o_o ;
  wire \or_xor_i0[4]_i1[4]_o_o ;
  wire \or_xor_i0[6]_i1[6]_o_o ;
  wire \or_xor_i0[7]_i1[7]_o_o ;
  wire \xor_i0[0]_i1[0]_o ;
  wire \xor_i0[1]_i1[1]_o ;
  wire \xor_i0[2]_i1[2]_o ;
  wire \xor_i0[3]_i1[3]_o ;
  wire \xor_i0[4]_i1[4]_o ;
  wire \xor_i0[5]_i1[5]_o ;
  wire \xor_i0[6]_i1[6]_o ;
  wire \xor_i0[7]_i1[7]_o ;
  wire \xor_i0[8]_i1[8]_o ;

  not none_diff (o, \or_or_or_xor_i0[0]_i_o );
  or \or_or_or_xor_i0[0]_i  (\or_or_or_xor_i0[0]_i_o , \or_or_xor_i0[0]_i1[0_o , \or_or_xor_i0[4]_i1[4_o );
  or \or_or_xor_i0[0]_i1[0  (\or_or_xor_i0[0]_i1[0_o , \or_xor_i0[0]_i1[0]_o_o , \or_xor_i0[2]_i1[2]_o_o );
  or \or_or_xor_i0[4]_i1[4  (\or_or_xor_i0[4]_i1[4_o , \or_xor_i0[4]_i1[4]_o_o , \or_xor_i0[6]_i1[6]_o_o );
  or \or_xor_i0[0]_i1[0]_o  (\or_xor_i0[0]_i1[0]_o_o , \xor_i0[0]_i1[0]_o , \xor_i0[1]_i1[1]_o );
  or \or_xor_i0[2]_i1[2]_o  (\or_xor_i0[2]_i1[2]_o_o , \xor_i0[2]_i1[2]_o , \xor_i0[3]_i1[3]_o );
  or \or_xor_i0[4]_i1[4]_o  (\or_xor_i0[4]_i1[4]_o_o , \xor_i0[4]_i1[4]_o , \xor_i0[5]_i1[5]_o );
  or \or_xor_i0[6]_i1[6]_o  (\or_xor_i0[6]_i1[6]_o_o , \xor_i0[6]_i1[6]_o , \or_xor_i0[7]_i1[7]_o_o );
  or \or_xor_i0[7]_i1[7]_o  (\or_xor_i0[7]_i1[7]_o_o , \xor_i0[7]_i1[7]_o , \xor_i0[8]_i1[8]_o );
  xor \xor_i0[0]_i1[0]  (\xor_i0[0]_i1[0]_o , i0[0], i1[0]);
  xor \xor_i0[1]_i1[1]  (\xor_i0[1]_i1[1]_o , i0[1], i1[1]);
  xor \xor_i0[2]_i1[2]  (\xor_i0[2]_i1[2]_o , i0[2], i1[2]);
  xor \xor_i0[3]_i1[3]  (\xor_i0[3]_i1[3]_o , i0[3], i1[3]);
  xor \xor_i0[4]_i1[4]  (\xor_i0[4]_i1[4]_o , i0[4], i1[4]);
  xor \xor_i0[5]_i1[5]  (\xor_i0[5]_i1[5]_o , i0[5], i1[5]);
  xor \xor_i0[6]_i1[6]  (\xor_i0[6]_i1[6]_o , i0[6], i1[6]);
  xor \xor_i0[7]_i1[7]  (\xor_i0[7]_i1[7]_o , i0[7], i1[7]);
  xor \xor_i0[8]_i1[8]  (\xor_i0[8]_i1[8]_o , i0[8], i1[8]);

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

  wire \or_or_or_xor_i0[0]_i_o ;
  wire \or_or_xor_i0[0]_i1[0_o ;
  wire \or_or_xor_i0[5]_i1[5_o ;
  wire \or_xor_i0[0]_i1[0]_o_o ;
  wire \or_xor_i0[2]_i1[2]_o_o ;
  wire \or_xor_i0[3]_i1[3]_o_o ;
  wire \or_xor_i0[5]_i1[5]_o_o ;
  wire \or_xor_i0[7]_i1[7]_o_o ;
  wire \or_xor_i0[8]_i1[8]_o_o ;
  wire \xor_i0[0]_i1[0]_o ;
  wire \xor_i0[1]_i1[1]_o ;
  wire \xor_i0[2]_i1[2]_o ;
  wire \xor_i0[3]_i1[3]_o ;
  wire \xor_i0[4]_i1[4]_o ;
  wire \xor_i0[5]_i1[5]_o ;
  wire \xor_i0[6]_i1[6]_o ;
  wire \xor_i0[7]_i1[7]_o ;
  wire \xor_i0[8]_i1[8]_o ;
  wire \xor_i0[9]_i1[9]_o ;

  not none_diff (o, \or_or_or_xor_i0[0]_i_o );
  or \or_or_or_xor_i0[0]_i  (\or_or_or_xor_i0[0]_i_o , \or_or_xor_i0[0]_i1[0_o , \or_or_xor_i0[5]_i1[5_o );
  or \or_or_xor_i0[0]_i1[0  (\or_or_xor_i0[0]_i1[0_o , \or_xor_i0[0]_i1[0]_o_o , \or_xor_i0[2]_i1[2]_o_o );
  or \or_or_xor_i0[5]_i1[5  (\or_or_xor_i0[5]_i1[5_o , \or_xor_i0[5]_i1[5]_o_o , \or_xor_i0[7]_i1[7]_o_o );
  or \or_xor_i0[0]_i1[0]_o  (\or_xor_i0[0]_i1[0]_o_o , \xor_i0[0]_i1[0]_o , \xor_i0[1]_i1[1]_o );
  or \or_xor_i0[2]_i1[2]_o  (\or_xor_i0[2]_i1[2]_o_o , \xor_i0[2]_i1[2]_o , \or_xor_i0[3]_i1[3]_o_o );
  or \or_xor_i0[3]_i1[3]_o  (\or_xor_i0[3]_i1[3]_o_o , \xor_i0[3]_i1[3]_o , \xor_i0[4]_i1[4]_o );
  or \or_xor_i0[5]_i1[5]_o  (\or_xor_i0[5]_i1[5]_o_o , \xor_i0[5]_i1[5]_o , \xor_i0[6]_i1[6]_o );
  or \or_xor_i0[7]_i1[7]_o  (\or_xor_i0[7]_i1[7]_o_o , \xor_i0[7]_i1[7]_o , \or_xor_i0[8]_i1[8]_o_o );
  or \or_xor_i0[8]_i1[8]_o  (\or_xor_i0[8]_i1[8]_o_o , \xor_i0[8]_i1[8]_o , \xor_i0[9]_i1[9]_o );
  xor \xor_i0[0]_i1[0]  (\xor_i0[0]_i1[0]_o , i0[0], i1[0]);
  xor \xor_i0[1]_i1[1]  (\xor_i0[1]_i1[1]_o , i0[1], i1[1]);
  xor \xor_i0[2]_i1[2]  (\xor_i0[2]_i1[2]_o , i0[2], i1[2]);
  xor \xor_i0[3]_i1[3]  (\xor_i0[3]_i1[3]_o , i0[3], i1[3]);
  xor \xor_i0[4]_i1[4]  (\xor_i0[4]_i1[4]_o , i0[4], i1[4]);
  xor \xor_i0[5]_i1[5]  (\xor_i0[5]_i1[5]_o , i0[5], i1[5]);
  xor \xor_i0[6]_i1[6]  (\xor_i0[6]_i1[6]_o , i0[6], i1[6]);
  xor \xor_i0[7]_i1[7]  (\xor_i0[7]_i1[7]_o , i0[7], i1[7]);
  xor \xor_i0[8]_i1[8]  (\xor_i0[8]_i1[8]_o , i0[8], i1[8]);
  xor \xor_i0[9]_i1[9]  (\xor_i0[9]_i1[9]_o , i0[9], i1[9]);

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

  wire [9:0] diff;
  wire diff_6_9;
  wire less_6_9;
  wire \less_6_9_inst/diff_0 ;
  wire \less_6_9_inst/diff_1 ;
  wire \less_6_9_inst/diff_2 ;
  wire \less_6_9_inst/diff_3 ;
  wire \less_6_9_inst/o_0 ;
  wire \less_6_9_inst/o_1 ;
  wire \less_6_9_inst/o_2 ;
  wire o_0;
  wire o_1;
  wire o_2;
  wire o_3;
  wire o_4;
  wire o_5;

  or any_diff_6_9 (diff_6_9, diff[6], diff[7], diff[8], diff[9]);
  xor diff_0 (diff[0], i0[0], i1[0]);
  xor diff_1 (diff[1], i0[1], i1[1]);
  xor diff_2 (diff[2], i0[2], i1[2]);
  xor diff_3 (diff[3], i0[3], i1[3]);
  xor diff_4 (diff[4], i0[4], i1[4]);
  xor diff_5 (diff[5], i0[5], i1[5]);
  xor diff_6 (diff[6], i0[6], i1[6]);
  xor diff_7 (diff[7], i0[7], i1[7]);
  xor diff_8 (diff[8], i0[8], i1[8]);
  xor diff_9 (diff[9], i0[9], i1[9]);
  AL_MUX \less_6_9_inst/mux_0  (
    .i0(1'b0),
    .i1(i1[6]),
    .sel(\less_6_9_inst/diff_0 ),
    .o(\less_6_9_inst/o_0 ));
  AL_MUX \less_6_9_inst/mux_1  (
    .i0(\less_6_9_inst/o_0 ),
    .i1(i1[7]),
    .sel(\less_6_9_inst/diff_1 ),
    .o(\less_6_9_inst/o_1 ));
  AL_MUX \less_6_9_inst/mux_2  (
    .i0(\less_6_9_inst/o_1 ),
    .i1(i1[8]),
    .sel(\less_6_9_inst/diff_2 ),
    .o(\less_6_9_inst/o_2 ));
  AL_MUX \less_6_9_inst/mux_3  (
    .i0(\less_6_9_inst/o_2 ),
    .i1(i1[9]),
    .sel(\less_6_9_inst/diff_3 ),
    .o(less_6_9));
  xor \less_6_9_inst/xor_0  (\less_6_9_inst/diff_0 , i0[6], i1[6]);
  xor \less_6_9_inst/xor_1  (\less_6_9_inst/diff_1 , i0[7], i1[7]);
  xor \less_6_9_inst/xor_2  (\less_6_9_inst/diff_2 , i0[8], i1[8]);
  xor \less_6_9_inst/xor_3  (\less_6_9_inst/diff_3 , i0[9], i1[9]);
  AL_MUX mux_0 (
    .i0(ci),
    .i1(i1[0]),
    .sel(diff[0]),
    .o(o_0));
  AL_MUX mux_1 (
    .i0(o_0),
    .i1(i1[1]),
    .sel(diff[1]),
    .o(o_1));
  AL_MUX mux_2 (
    .i0(o_1),
    .i1(i1[2]),
    .sel(diff[2]),
    .o(o_2));
  AL_MUX mux_3 (
    .i0(o_2),
    .i1(i1[3]),
    .sel(diff[3]),
    .o(o_3));
  AL_MUX mux_4 (
    .i0(o_3),
    .i1(i1[4]),
    .sel(diff[4]),
    .o(o_4));
  AL_MUX mux_5 (
    .i0(o_4),
    .i1(i1[5]),
    .sel(diff[5]),
    .o(o_5));
  AL_MUX mux_6 (
    .i0(o_5),
    .i1(less_6_9),
    .sel(diff_6_9),
    .o(o));

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

module AL_FADD
  (
  input a,
  input b,
  input c,
  output sum,
  output cout
  );

  wire prop;
  wire not_prop;
  wire sel_i0;
  wire sel_i1;

  xor u0 (prop, a, b);
  xor u1 (sum, prop, c);
  not u2 (not_prop, prop);
  and u3 (sel_i1, prop, c);
  and u4 (sel_i0, not_prop, a);
  or  u5 (cout, sel_i0, sel_i1);

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

