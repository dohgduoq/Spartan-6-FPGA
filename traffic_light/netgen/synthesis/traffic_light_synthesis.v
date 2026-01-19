////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: traffic_light_synthesis.v
// /___/   /\     Timestamp: Sun Sep  7 08:52:25 2025
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim traffic_light.ngc traffic_light_synthesis.v 
// Device	: xc6slx9-3-ftg256
// Input file	: traffic_light.ngc
// Output file	: /home/ise/Xilinx_project/traffic_light/netgen/synthesis/traffic_light_synthesis.v
// # of Modules	: 1
// Design Name	: traffic_light
// Xilinx        : /opt/Xilinx/14.7/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module traffic_light (
  clk, reset, nut, do_led, vang_led, xanh_led, led_nut
);
  input clk;
  input reset;
  input nut;
  output do_led;
  output vang_led;
  output xanh_led;
  output led_nut;
  wire clk_BUFGP_0;
  wire reset_IBUF_1;
  wire nut_IBUF_2;
  wire one_s_29;
  wire nut_prev_30;
  wire nut_press_31;
  wire cur_state_FSM_FFd1_32;
  wire cur_state_FSM_FFd2_33;
  wire xanh_led_OBUF_34;
  wire nut_req_35;
  wire nut_nut_prev_AND_3_o;
  wire \PWR_5_o_counter_1s[25]_LessThan_1_o ;
  wire N0;
  wire N1;
  wire \PWR_5_o_counter_1s[25]_LessThan_1_o_inv ;
  wire Mcount_counter_1s;
  wire Mcount_counter_1s1;
  wire Mcount_counter_1s2;
  wire Mcount_counter_1s3;
  wire Mcount_counter_1s4;
  wire Mcount_counter_1s5;
  wire Mcount_counter_1s6;
  wire Mcount_counter_1s7;
  wire Mcount_counter_1s8;
  wire Mcount_counter_1s9;
  wire Mcount_counter_1s10;
  wire Mcount_counter_1s11;
  wire Mcount_counter_1s12;
  wire Mcount_counter_1s13;
  wire Mcount_counter_1s14;
  wire Mcount_counter_1s15;
  wire Mcount_counter_1s16;
  wire Mcount_counter_1s17;
  wire Mcount_counter_1s18;
  wire Mcount_counter_1s19;
  wire Mcount_counter_1s20;
  wire Mcount_counter_1s21;
  wire Mcount_counter_1s22;
  wire Mcount_counter_1s23;
  wire Mcount_counter_1s24;
  wire Mcount_counter_1s25;
  wire \cur_state_FSM_FFd2-In_123 ;
  wire \cur_state_FSM_FFd1-In_124 ;
  wire \Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_lut<0>_125 ;
  wire \Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_cy<0>_126 ;
  wire \Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_lutdi_127 ;
  wire \Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_lut<1>_128 ;
  wire \Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_cy<1>_129 ;
  wire \Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_lutdi1_130 ;
  wire \Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_lut<2>_131 ;
  wire \Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_cy<2>_132 ;
  wire \Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_lutdi2_133 ;
  wire \Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_lut<3>_134 ;
  wire \Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_cy<3>_135 ;
  wire \Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_lut<4>_136 ;
  wire \Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_cy<4>_137 ;
  wire n0026;
  wire N01;
  wire N2;
  wire \Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_cy<5>_rt_153 ;
  wire nut_req_rstpot_154;
  wire [25 : 0] counter_1s;
  wire [25 : 0] Mcount_counter_1s_lut;
  wire [24 : 0] Mcount_counter_1s_cy;
  wire [4 : 0] Result;
  wire [4 : 0] time_counter;
  VCC   XST_VCC (
    .P(N0)
  );
  GND   XST_GND (
    .G(N1)
  );
  FDC #(
    .INIT ( 1'b0 ))
  nut_press (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(nut_nut_prev_AND_3_o),
    .Q(nut_press_31)
  );
  FDC #(
    .INIT ( 1'b0 ))
  nut_prev (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(nut_IBUF_2),
    .Q(nut_prev_30)
  );
  FDC #(
    .INIT ( 1'b0 ))
  one_s (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(\PWR_5_o_counter_1s[25]_LessThan_1_o ),
    .Q(one_s_29)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mcount_counter_1s_lut<0>  (
    .I0(N1),
    .I1(counter_1s[0]),
    .I2(\PWR_5_o_counter_1s[25]_LessThan_1_o ),
    .O(Mcount_counter_1s_lut[0])
  );
  MUXCY   \Mcount_counter_1s_cy<0>  (
    .CI(\PWR_5_o_counter_1s[25]_LessThan_1_o_inv ),
    .DI(N1),
    .S(Mcount_counter_1s_lut[0]),
    .O(Mcount_counter_1s_cy[0])
  );
  XORCY   \Mcount_counter_1s_xor<0>  (
    .CI(\PWR_5_o_counter_1s[25]_LessThan_1_o_inv ),
    .LI(Mcount_counter_1s_lut[0]),
    .O(Mcount_counter_1s)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mcount_counter_1s_lut<1>  (
    .I0(N1),
    .I1(counter_1s[1]),
    .I2(\PWR_5_o_counter_1s[25]_LessThan_1_o ),
    .O(Mcount_counter_1s_lut[1])
  );
  MUXCY   \Mcount_counter_1s_cy<1>  (
    .CI(Mcount_counter_1s_cy[0]),
    .DI(N1),
    .S(Mcount_counter_1s_lut[1]),
    .O(Mcount_counter_1s_cy[1])
  );
  XORCY   \Mcount_counter_1s_xor<1>  (
    .CI(Mcount_counter_1s_cy[0]),
    .LI(Mcount_counter_1s_lut[1]),
    .O(Mcount_counter_1s1)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mcount_counter_1s_lut<2>  (
    .I0(N1),
    .I1(counter_1s[2]),
    .I2(\PWR_5_o_counter_1s[25]_LessThan_1_o ),
    .O(Mcount_counter_1s_lut[2])
  );
  MUXCY   \Mcount_counter_1s_cy<2>  (
    .CI(Mcount_counter_1s_cy[1]),
    .DI(N1),
    .S(Mcount_counter_1s_lut[2]),
    .O(Mcount_counter_1s_cy[2])
  );
  XORCY   \Mcount_counter_1s_xor<2>  (
    .CI(Mcount_counter_1s_cy[1]),
    .LI(Mcount_counter_1s_lut[2]),
    .O(Mcount_counter_1s2)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mcount_counter_1s_lut<3>  (
    .I0(N1),
    .I1(counter_1s[3]),
    .I2(\PWR_5_o_counter_1s[25]_LessThan_1_o ),
    .O(Mcount_counter_1s_lut[3])
  );
  MUXCY   \Mcount_counter_1s_cy<3>  (
    .CI(Mcount_counter_1s_cy[2]),
    .DI(N1),
    .S(Mcount_counter_1s_lut[3]),
    .O(Mcount_counter_1s_cy[3])
  );
  XORCY   \Mcount_counter_1s_xor<3>  (
    .CI(Mcount_counter_1s_cy[2]),
    .LI(Mcount_counter_1s_lut[3]),
    .O(Mcount_counter_1s3)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mcount_counter_1s_lut<4>  (
    .I0(N1),
    .I1(counter_1s[4]),
    .I2(\PWR_5_o_counter_1s[25]_LessThan_1_o ),
    .O(Mcount_counter_1s_lut[4])
  );
  MUXCY   \Mcount_counter_1s_cy<4>  (
    .CI(Mcount_counter_1s_cy[3]),
    .DI(N1),
    .S(Mcount_counter_1s_lut[4]),
    .O(Mcount_counter_1s_cy[4])
  );
  XORCY   \Mcount_counter_1s_xor<4>  (
    .CI(Mcount_counter_1s_cy[3]),
    .LI(Mcount_counter_1s_lut[4]),
    .O(Mcount_counter_1s4)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mcount_counter_1s_lut<5>  (
    .I0(N1),
    .I1(counter_1s[5]),
    .I2(\PWR_5_o_counter_1s[25]_LessThan_1_o ),
    .O(Mcount_counter_1s_lut[5])
  );
  MUXCY   \Mcount_counter_1s_cy<5>  (
    .CI(Mcount_counter_1s_cy[4]),
    .DI(N1),
    .S(Mcount_counter_1s_lut[5]),
    .O(Mcount_counter_1s_cy[5])
  );
  XORCY   \Mcount_counter_1s_xor<5>  (
    .CI(Mcount_counter_1s_cy[4]),
    .LI(Mcount_counter_1s_lut[5]),
    .O(Mcount_counter_1s5)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mcount_counter_1s_lut<6>  (
    .I0(N1),
    .I1(counter_1s[6]),
    .I2(\PWR_5_o_counter_1s[25]_LessThan_1_o ),
    .O(Mcount_counter_1s_lut[6])
  );
  MUXCY   \Mcount_counter_1s_cy<6>  (
    .CI(Mcount_counter_1s_cy[5]),
    .DI(N1),
    .S(Mcount_counter_1s_lut[6]),
    .O(Mcount_counter_1s_cy[6])
  );
  XORCY   \Mcount_counter_1s_xor<6>  (
    .CI(Mcount_counter_1s_cy[5]),
    .LI(Mcount_counter_1s_lut[6]),
    .O(Mcount_counter_1s6)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mcount_counter_1s_lut<7>  (
    .I0(N1),
    .I1(counter_1s[7]),
    .I2(\PWR_5_o_counter_1s[25]_LessThan_1_o ),
    .O(Mcount_counter_1s_lut[7])
  );
  MUXCY   \Mcount_counter_1s_cy<7>  (
    .CI(Mcount_counter_1s_cy[6]),
    .DI(N1),
    .S(Mcount_counter_1s_lut[7]),
    .O(Mcount_counter_1s_cy[7])
  );
  XORCY   \Mcount_counter_1s_xor<7>  (
    .CI(Mcount_counter_1s_cy[6]),
    .LI(Mcount_counter_1s_lut[7]),
    .O(Mcount_counter_1s7)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mcount_counter_1s_lut<8>  (
    .I0(N1),
    .I1(counter_1s[8]),
    .I2(\PWR_5_o_counter_1s[25]_LessThan_1_o ),
    .O(Mcount_counter_1s_lut[8])
  );
  MUXCY   \Mcount_counter_1s_cy<8>  (
    .CI(Mcount_counter_1s_cy[7]),
    .DI(N1),
    .S(Mcount_counter_1s_lut[8]),
    .O(Mcount_counter_1s_cy[8])
  );
  XORCY   \Mcount_counter_1s_xor<8>  (
    .CI(Mcount_counter_1s_cy[7]),
    .LI(Mcount_counter_1s_lut[8]),
    .O(Mcount_counter_1s8)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mcount_counter_1s_lut<9>  (
    .I0(N1),
    .I1(counter_1s[9]),
    .I2(\PWR_5_o_counter_1s[25]_LessThan_1_o ),
    .O(Mcount_counter_1s_lut[9])
  );
  MUXCY   \Mcount_counter_1s_cy<9>  (
    .CI(Mcount_counter_1s_cy[8]),
    .DI(N1),
    .S(Mcount_counter_1s_lut[9]),
    .O(Mcount_counter_1s_cy[9])
  );
  XORCY   \Mcount_counter_1s_xor<9>  (
    .CI(Mcount_counter_1s_cy[8]),
    .LI(Mcount_counter_1s_lut[9]),
    .O(Mcount_counter_1s9)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mcount_counter_1s_lut<10>  (
    .I0(N1),
    .I1(counter_1s[10]),
    .I2(\PWR_5_o_counter_1s[25]_LessThan_1_o ),
    .O(Mcount_counter_1s_lut[10])
  );
  MUXCY   \Mcount_counter_1s_cy<10>  (
    .CI(Mcount_counter_1s_cy[9]),
    .DI(N1),
    .S(Mcount_counter_1s_lut[10]),
    .O(Mcount_counter_1s_cy[10])
  );
  XORCY   \Mcount_counter_1s_xor<10>  (
    .CI(Mcount_counter_1s_cy[9]),
    .LI(Mcount_counter_1s_lut[10]),
    .O(Mcount_counter_1s10)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mcount_counter_1s_lut<11>  (
    .I0(N1),
    .I1(counter_1s[11]),
    .I2(\PWR_5_o_counter_1s[25]_LessThan_1_o ),
    .O(Mcount_counter_1s_lut[11])
  );
  MUXCY   \Mcount_counter_1s_cy<11>  (
    .CI(Mcount_counter_1s_cy[10]),
    .DI(N1),
    .S(Mcount_counter_1s_lut[11]),
    .O(Mcount_counter_1s_cy[11])
  );
  XORCY   \Mcount_counter_1s_xor<11>  (
    .CI(Mcount_counter_1s_cy[10]),
    .LI(Mcount_counter_1s_lut[11]),
    .O(Mcount_counter_1s11)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mcount_counter_1s_lut<12>  (
    .I0(N1),
    .I1(counter_1s[12]),
    .I2(\PWR_5_o_counter_1s[25]_LessThan_1_o ),
    .O(Mcount_counter_1s_lut[12])
  );
  MUXCY   \Mcount_counter_1s_cy<12>  (
    .CI(Mcount_counter_1s_cy[11]),
    .DI(N1),
    .S(Mcount_counter_1s_lut[12]),
    .O(Mcount_counter_1s_cy[12])
  );
  XORCY   \Mcount_counter_1s_xor<12>  (
    .CI(Mcount_counter_1s_cy[11]),
    .LI(Mcount_counter_1s_lut[12]),
    .O(Mcount_counter_1s12)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mcount_counter_1s_lut<13>  (
    .I0(N1),
    .I1(counter_1s[13]),
    .I2(\PWR_5_o_counter_1s[25]_LessThan_1_o ),
    .O(Mcount_counter_1s_lut[13])
  );
  MUXCY   \Mcount_counter_1s_cy<13>  (
    .CI(Mcount_counter_1s_cy[12]),
    .DI(N1),
    .S(Mcount_counter_1s_lut[13]),
    .O(Mcount_counter_1s_cy[13])
  );
  XORCY   \Mcount_counter_1s_xor<13>  (
    .CI(Mcount_counter_1s_cy[12]),
    .LI(Mcount_counter_1s_lut[13]),
    .O(Mcount_counter_1s13)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mcount_counter_1s_lut<14>  (
    .I0(N1),
    .I1(counter_1s[14]),
    .I2(\PWR_5_o_counter_1s[25]_LessThan_1_o ),
    .O(Mcount_counter_1s_lut[14])
  );
  MUXCY   \Mcount_counter_1s_cy<14>  (
    .CI(Mcount_counter_1s_cy[13]),
    .DI(N1),
    .S(Mcount_counter_1s_lut[14]),
    .O(Mcount_counter_1s_cy[14])
  );
  XORCY   \Mcount_counter_1s_xor<14>  (
    .CI(Mcount_counter_1s_cy[13]),
    .LI(Mcount_counter_1s_lut[14]),
    .O(Mcount_counter_1s14)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mcount_counter_1s_lut<15>  (
    .I0(N1),
    .I1(counter_1s[15]),
    .I2(\PWR_5_o_counter_1s[25]_LessThan_1_o ),
    .O(Mcount_counter_1s_lut[15])
  );
  MUXCY   \Mcount_counter_1s_cy<15>  (
    .CI(Mcount_counter_1s_cy[14]),
    .DI(N1),
    .S(Mcount_counter_1s_lut[15]),
    .O(Mcount_counter_1s_cy[15])
  );
  XORCY   \Mcount_counter_1s_xor<15>  (
    .CI(Mcount_counter_1s_cy[14]),
    .LI(Mcount_counter_1s_lut[15]),
    .O(Mcount_counter_1s15)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mcount_counter_1s_lut<16>  (
    .I0(N1),
    .I1(counter_1s[16]),
    .I2(\PWR_5_o_counter_1s[25]_LessThan_1_o ),
    .O(Mcount_counter_1s_lut[16])
  );
  MUXCY   \Mcount_counter_1s_cy<16>  (
    .CI(Mcount_counter_1s_cy[15]),
    .DI(N1),
    .S(Mcount_counter_1s_lut[16]),
    .O(Mcount_counter_1s_cy[16])
  );
  XORCY   \Mcount_counter_1s_xor<16>  (
    .CI(Mcount_counter_1s_cy[15]),
    .LI(Mcount_counter_1s_lut[16]),
    .O(Mcount_counter_1s16)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mcount_counter_1s_lut<17>  (
    .I0(N1),
    .I1(counter_1s[17]),
    .I2(\PWR_5_o_counter_1s[25]_LessThan_1_o ),
    .O(Mcount_counter_1s_lut[17])
  );
  MUXCY   \Mcount_counter_1s_cy<17>  (
    .CI(Mcount_counter_1s_cy[16]),
    .DI(N1),
    .S(Mcount_counter_1s_lut[17]),
    .O(Mcount_counter_1s_cy[17])
  );
  XORCY   \Mcount_counter_1s_xor<17>  (
    .CI(Mcount_counter_1s_cy[16]),
    .LI(Mcount_counter_1s_lut[17]),
    .O(Mcount_counter_1s17)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mcount_counter_1s_lut<18>  (
    .I0(N1),
    .I1(counter_1s[18]),
    .I2(\PWR_5_o_counter_1s[25]_LessThan_1_o ),
    .O(Mcount_counter_1s_lut[18])
  );
  MUXCY   \Mcount_counter_1s_cy<18>  (
    .CI(Mcount_counter_1s_cy[17]),
    .DI(N1),
    .S(Mcount_counter_1s_lut[18]),
    .O(Mcount_counter_1s_cy[18])
  );
  XORCY   \Mcount_counter_1s_xor<18>  (
    .CI(Mcount_counter_1s_cy[17]),
    .LI(Mcount_counter_1s_lut[18]),
    .O(Mcount_counter_1s18)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mcount_counter_1s_lut<19>  (
    .I0(N1),
    .I1(counter_1s[19]),
    .I2(\PWR_5_o_counter_1s[25]_LessThan_1_o ),
    .O(Mcount_counter_1s_lut[19])
  );
  MUXCY   \Mcount_counter_1s_cy<19>  (
    .CI(Mcount_counter_1s_cy[18]),
    .DI(N1),
    .S(Mcount_counter_1s_lut[19]),
    .O(Mcount_counter_1s_cy[19])
  );
  XORCY   \Mcount_counter_1s_xor<19>  (
    .CI(Mcount_counter_1s_cy[18]),
    .LI(Mcount_counter_1s_lut[19]),
    .O(Mcount_counter_1s19)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mcount_counter_1s_lut<20>  (
    .I0(N1),
    .I1(counter_1s[20]),
    .I2(\PWR_5_o_counter_1s[25]_LessThan_1_o ),
    .O(Mcount_counter_1s_lut[20])
  );
  MUXCY   \Mcount_counter_1s_cy<20>  (
    .CI(Mcount_counter_1s_cy[19]),
    .DI(N1),
    .S(Mcount_counter_1s_lut[20]),
    .O(Mcount_counter_1s_cy[20])
  );
  XORCY   \Mcount_counter_1s_xor<20>  (
    .CI(Mcount_counter_1s_cy[19]),
    .LI(Mcount_counter_1s_lut[20]),
    .O(Mcount_counter_1s20)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mcount_counter_1s_lut<21>  (
    .I0(N1),
    .I1(counter_1s[21]),
    .I2(\PWR_5_o_counter_1s[25]_LessThan_1_o ),
    .O(Mcount_counter_1s_lut[21])
  );
  MUXCY   \Mcount_counter_1s_cy<21>  (
    .CI(Mcount_counter_1s_cy[20]),
    .DI(N1),
    .S(Mcount_counter_1s_lut[21]),
    .O(Mcount_counter_1s_cy[21])
  );
  XORCY   \Mcount_counter_1s_xor<21>  (
    .CI(Mcount_counter_1s_cy[20]),
    .LI(Mcount_counter_1s_lut[21]),
    .O(Mcount_counter_1s21)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mcount_counter_1s_lut<22>  (
    .I0(N1),
    .I1(counter_1s[22]),
    .I2(\PWR_5_o_counter_1s[25]_LessThan_1_o ),
    .O(Mcount_counter_1s_lut[22])
  );
  MUXCY   \Mcount_counter_1s_cy<22>  (
    .CI(Mcount_counter_1s_cy[21]),
    .DI(N1),
    .S(Mcount_counter_1s_lut[22]),
    .O(Mcount_counter_1s_cy[22])
  );
  XORCY   \Mcount_counter_1s_xor<22>  (
    .CI(Mcount_counter_1s_cy[21]),
    .LI(Mcount_counter_1s_lut[22]),
    .O(Mcount_counter_1s22)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mcount_counter_1s_lut<23>  (
    .I0(N1),
    .I1(counter_1s[23]),
    .I2(\PWR_5_o_counter_1s[25]_LessThan_1_o ),
    .O(Mcount_counter_1s_lut[23])
  );
  MUXCY   \Mcount_counter_1s_cy<23>  (
    .CI(Mcount_counter_1s_cy[22]),
    .DI(N1),
    .S(Mcount_counter_1s_lut[23]),
    .O(Mcount_counter_1s_cy[23])
  );
  XORCY   \Mcount_counter_1s_xor<23>  (
    .CI(Mcount_counter_1s_cy[22]),
    .LI(Mcount_counter_1s_lut[23]),
    .O(Mcount_counter_1s23)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mcount_counter_1s_lut<24>  (
    .I0(N1),
    .I1(counter_1s[24]),
    .I2(\PWR_5_o_counter_1s[25]_LessThan_1_o ),
    .O(Mcount_counter_1s_lut[24])
  );
  MUXCY   \Mcount_counter_1s_cy<24>  (
    .CI(Mcount_counter_1s_cy[23]),
    .DI(N1),
    .S(Mcount_counter_1s_lut[24]),
    .O(Mcount_counter_1s_cy[24])
  );
  XORCY   \Mcount_counter_1s_xor<24>  (
    .CI(Mcount_counter_1s_cy[23]),
    .LI(Mcount_counter_1s_lut[24]),
    .O(Mcount_counter_1s24)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mcount_counter_1s_lut<25>  (
    .I0(N1),
    .I1(counter_1s[25]),
    .I2(\PWR_5_o_counter_1s[25]_LessThan_1_o ),
    .O(Mcount_counter_1s_lut[25])
  );
  XORCY   \Mcount_counter_1s_xor<25>  (
    .CI(Mcount_counter_1s_cy[24]),
    .LI(Mcount_counter_1s_lut[25]),
    .O(Mcount_counter_1s25)
  );
  FDC #(
    .INIT ( 1'b0 ))
  counter_1s_0 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(Mcount_counter_1s),
    .Q(counter_1s[0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  counter_1s_1 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(Mcount_counter_1s1),
    .Q(counter_1s[1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  counter_1s_2 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(Mcount_counter_1s2),
    .Q(counter_1s[2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  counter_1s_3 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(Mcount_counter_1s3),
    .Q(counter_1s[3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  counter_1s_4 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(Mcount_counter_1s4),
    .Q(counter_1s[4])
  );
  FDC #(
    .INIT ( 1'b0 ))
  counter_1s_5 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(Mcount_counter_1s5),
    .Q(counter_1s[5])
  );
  FDC #(
    .INIT ( 1'b0 ))
  counter_1s_6 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(Mcount_counter_1s6),
    .Q(counter_1s[6])
  );
  FDC #(
    .INIT ( 1'b0 ))
  counter_1s_7 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(Mcount_counter_1s7),
    .Q(counter_1s[7])
  );
  FDC #(
    .INIT ( 1'b0 ))
  counter_1s_8 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(Mcount_counter_1s8),
    .Q(counter_1s[8])
  );
  FDC #(
    .INIT ( 1'b0 ))
  counter_1s_9 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(Mcount_counter_1s9),
    .Q(counter_1s[9])
  );
  FDC #(
    .INIT ( 1'b0 ))
  counter_1s_10 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(Mcount_counter_1s10),
    .Q(counter_1s[10])
  );
  FDC #(
    .INIT ( 1'b0 ))
  counter_1s_11 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(Mcount_counter_1s11),
    .Q(counter_1s[11])
  );
  FDC #(
    .INIT ( 1'b0 ))
  counter_1s_12 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(Mcount_counter_1s12),
    .Q(counter_1s[12])
  );
  FDC #(
    .INIT ( 1'b0 ))
  counter_1s_13 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(Mcount_counter_1s13),
    .Q(counter_1s[13])
  );
  FDC #(
    .INIT ( 1'b0 ))
  counter_1s_14 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(Mcount_counter_1s14),
    .Q(counter_1s[14])
  );
  FDC #(
    .INIT ( 1'b0 ))
  counter_1s_15 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(Mcount_counter_1s15),
    .Q(counter_1s[15])
  );
  FDC #(
    .INIT ( 1'b0 ))
  counter_1s_16 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(Mcount_counter_1s16),
    .Q(counter_1s[16])
  );
  FDC #(
    .INIT ( 1'b0 ))
  counter_1s_17 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(Mcount_counter_1s17),
    .Q(counter_1s[17])
  );
  FDC #(
    .INIT ( 1'b0 ))
  counter_1s_18 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(Mcount_counter_1s18),
    .Q(counter_1s[18])
  );
  FDC #(
    .INIT ( 1'b0 ))
  counter_1s_19 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(Mcount_counter_1s19),
    .Q(counter_1s[19])
  );
  FDC #(
    .INIT ( 1'b0 ))
  counter_1s_20 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(Mcount_counter_1s20),
    .Q(counter_1s[20])
  );
  FDC #(
    .INIT ( 1'b0 ))
  counter_1s_21 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(Mcount_counter_1s21),
    .Q(counter_1s[21])
  );
  FDC #(
    .INIT ( 1'b0 ))
  counter_1s_22 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(Mcount_counter_1s22),
    .Q(counter_1s[22])
  );
  FDC #(
    .INIT ( 1'b0 ))
  counter_1s_23 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(Mcount_counter_1s23),
    .Q(counter_1s[23])
  );
  FDC #(
    .INIT ( 1'b0 ))
  counter_1s_24 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(Mcount_counter_1s24),
    .Q(counter_1s[24])
  );
  FDC #(
    .INIT ( 1'b0 ))
  counter_1s_25 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(Mcount_counter_1s25),
    .Q(counter_1s[25])
  );
  FDC #(
    .INIT ( 1'b0 ))
  cur_state_FSM_FFd2 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(\cur_state_FSM_FFd2-In_123 ),
    .Q(cur_state_FSM_FFd2_33)
  );
  FDC #(
    .INIT ( 1'b0 ))
  cur_state_FSM_FFd1 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(\cur_state_FSM_FFd1-In_124 ),
    .Q(cur_state_FSM_FFd1_32)
  );
  FDCE #(
    .INIT ( 1'b0 ))
  time_counter_0 (
    .C(clk_BUFGP_0),
    .CE(one_s_29),
    .CLR(reset_IBUF_1),
    .D(Result[0]),
    .Q(time_counter[0])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  time_counter_1 (
    .C(clk_BUFGP_0),
    .CE(one_s_29),
    .CLR(reset_IBUF_1),
    .D(Result[1]),
    .Q(time_counter[1])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  time_counter_2 (
    .C(clk_BUFGP_0),
    .CE(one_s_29),
    .CLR(reset_IBUF_1),
    .D(Result[2]),
    .Q(time_counter[2])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  time_counter_3 (
    .C(clk_BUFGP_0),
    .CE(one_s_29),
    .CLR(reset_IBUF_1),
    .D(Result[3]),
    .Q(time_counter[3])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  time_counter_4 (
    .C(clk_BUFGP_0),
    .CE(one_s_29),
    .CLR(reset_IBUF_1),
    .D(Result[4]),
    .Q(time_counter[4])
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_lut<0>  (
    .I0(counter_1s[0]),
    .I1(counter_1s[1]),
    .I2(counter_1s[2]),
    .I3(counter_1s[3]),
    .I4(counter_1s[4]),
    .O(\Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_lut<0>_125 )
  );
  MUXCY   \Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_lut<0>_125 ),
    .O(\Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_cy<0>_126 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_lutdi  (
    .I0(counter_1s[9]),
    .I1(counter_1s[8]),
    .I2(counter_1s[7]),
    .O(\Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_lutdi_127 )
  );
  LUT5 #(
    .INIT ( 32'h01000000 ))
  \Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_lut<1>  (
    .I0(counter_1s[7]),
    .I1(counter_1s[8]),
    .I2(counter_1s[9]),
    .I3(counter_1s[6]),
    .I4(counter_1s[5]),
    .O(\Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_lut<1>_128 )
  );
  MUXCY   \Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_cy<1>  (
    .CI(\Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_cy<0>_126 ),
    .DI(\Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_lutdi_127 ),
    .S(\Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_lut<1>_128 ),
    .O(\Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_cy<1>_129 )
  );
  LUT5 #(
    .INIT ( 32'h80808000 ))
  \Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_lutdi1  (
    .I0(counter_1s[14]),
    .I1(counter_1s[13]),
    .I2(counter_1s[12]),
    .I3(counter_1s[11]),
    .I4(counter_1s[10]),
    .O(\Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_lutdi1_130 )
  );
  LUT5 #(
    .INIT ( 32'h00000080 ))
  \Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_lut<2>  (
    .I0(counter_1s[13]),
    .I1(counter_1s[14]),
    .I2(counter_1s[12]),
    .I3(counter_1s[10]),
    .I4(counter_1s[11]),
    .O(\Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_lut<2>_131 )
  );
  MUXCY   \Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_cy<2>  (
    .CI(\Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_cy<1>_129 ),
    .DI(\Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_lutdi1_130 ),
    .S(\Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_lut<2>_131 ),
    .O(\Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_cy<2>_132 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_lutdi2  (
    .I0(counter_1s[19]),
    .I1(counter_1s[17]),
    .I2(counter_1s[16]),
    .I3(counter_1s[18]),
    .O(\Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_lutdi2_133 )
  );
  LUT5 #(
    .INIT ( 32'h00000080 ))
  \Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_lut<3>  (
    .I0(counter_1s[15]),
    .I1(counter_1s[19]),
    .I2(counter_1s[17]),
    .I3(counter_1s[16]),
    .I4(counter_1s[18]),
    .O(\Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_lut<3>_134 )
  );
  MUXCY   \Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_cy<3>  (
    .CI(\Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_cy<2>_132 ),
    .DI(\Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_lutdi2_133 ),
    .S(\Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_lut<3>_134 ),
    .O(\Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_cy<3>_135 )
  );
  LUT5 #(
    .INIT ( 32'h40000000 ))
  \Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_lut<4>  (
    .I0(counter_1s[24]),
    .I1(counter_1s[21]),
    .I2(counter_1s[22]),
    .I3(counter_1s[23]),
    .I4(counter_1s[20]),
    .O(\Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_lut<4>_136 )
  );
  MUXCY   \Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_cy<4>  (
    .CI(\Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_cy<3>_135 ),
    .DI(counter_1s[24]),
    .S(\Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_lut<4>_136 ),
    .O(\Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_cy<4>_137 )
  );
  MUXCY   \Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_cy<5>  (
    .CI(\Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_cy<4>_137 ),
    .DI(N1),
    .S(\Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_cy<5>_rt_153 ),
    .O(\PWR_5_o_counter_1s[25]_LessThan_1_o )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  nut_nut_prev_AND_3_o1 (
    .I0(nut_IBUF_2),
    .I1(nut_prev_30),
    .O(nut_nut_prev_AND_3_o)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mcount_time_counter_xor<1>11  (
    .I0(time_counter[1]),
    .I1(time_counter[0]),
    .O(Result[1])
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  xanh_led11 (
    .I0(cur_state_FSM_FFd1_32),
    .I1(cur_state_FSM_FFd2_33),
    .O(xanh_led_OBUF_34)
  );
  LUT4 #(
    .INIT ( 16'h6CCC ))
  \Result<3>1  (
    .I0(time_counter[2]),
    .I1(time_counter[3]),
    .I2(time_counter[0]),
    .I3(time_counter[1]),
    .O(Result[3])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \Result<2>1  (
    .I0(time_counter[2]),
    .I1(time_counter[0]),
    .I2(time_counter[1]),
    .O(Result[2])
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAAA ))
  \Result<4>1  (
    .I0(time_counter[4]),
    .I1(time_counter[2]),
    .I2(time_counter[3]),
    .I3(time_counter[0]),
    .I4(time_counter[1]),
    .O(Result[4])
  );
  LUT5 #(
    .INIT ( 32'h00010101 ))
  n00261 (
    .I0(time_counter[2]),
    .I1(time_counter[3]),
    .I2(time_counter[4]),
    .I3(time_counter[0]),
    .I4(time_counter[1]),
    .O(n0026)
  );
  LUT6 #(
    .INIT ( 64'h1555557715555777 ))
  \cur_state_FSM_FFd2-In_SW0  (
    .I0(nut_req_35),
    .I1(time_counter[3]),
    .I2(time_counter[1]),
    .I3(time_counter[2]),
    .I4(time_counter[4]),
    .I5(time_counter[0]),
    .O(N01)
  );
  LUT5 #(
    .INIT ( 32'hA2A2A2E6 ))
  \cur_state_FSM_FFd2-In  (
    .I0(cur_state_FSM_FFd2_33),
    .I1(one_s_29),
    .I2(n0026),
    .I3(cur_state_FSM_FFd1_32),
    .I4(N01),
    .O(\cur_state_FSM_FFd2-In_123 )
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \cur_state_FSM_FFd1-In_SW0  (
    .I0(time_counter[3]),
    .I1(time_counter[2]),
    .I2(time_counter[1]),
    .I3(time_counter[0]),
    .O(N2)
  );
  LUT6 #(
    .INIT ( 64'h2AAAEEEE2AAA2AAA ))
  \cur_state_FSM_FFd1-In  (
    .I0(cur_state_FSM_FFd1_32),
    .I1(one_s_29),
    .I2(N2),
    .I3(time_counter[4]),
    .I4(n0026),
    .I5(cur_state_FSM_FFd2_33),
    .O(\cur_state_FSM_FFd1-In_124 )
  );
  IBUF   reset_IBUF (
    .I(reset),
    .O(reset_IBUF_1)
  );
  IBUF   nut_IBUF (
    .I(nut),
    .O(nut_IBUF_2)
  );
  OBUF   do_led_OBUF (
    .I(cur_state_FSM_FFd1_32),
    .O(do_led)
  );
  OBUF   vang_led_OBUF (
    .I(cur_state_FSM_FFd2_33),
    .O(vang_led)
  );
  OBUF   xanh_led_OBUF (
    .I(xanh_led_OBUF_34),
    .O(xanh_led)
  );
  OBUF   led_nut_OBUF (
    .I(nut_req_35),
    .O(led_nut)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_cy<5>_rt  (
    .I0(counter_1s[25]),
    .O(\Mcompar_PWR_5_o_counter_1s[25]_LessThan_1_o_cy<5>_rt_153 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  nut_req (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(nut_req_rstpot_154),
    .Q(nut_req_35)
  );
  LUT4 #(
    .INIT ( 16'h5510 ))
  nut_req_rstpot (
    .I0(cur_state_FSM_FFd1_32),
    .I1(cur_state_FSM_FFd2_33),
    .I2(nut_press_31),
    .I3(nut_req_35),
    .O(nut_req_rstpot_154)
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_0)
  );
  INV   \PWR_5_o_counter_1s[25]_LessThan_1_o_inv1_INV_0  (
    .I(\PWR_5_o_counter_1s[25]_LessThan_1_o ),
    .O(\PWR_5_o_counter_1s[25]_LessThan_1_o_inv )
  );
  INV   \Mcount_time_counter_xor<0>11_INV_0  (
    .I(time_counter[0]),
    .O(Result[0])
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

