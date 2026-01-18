////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: led_09_map.v
// /___/   /\     Timestamp: Tue Sep  9 02:30:41 2025
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 3 -pcf led_09.pcf -sdf_anno true -sdf_path netgen/map -insert_glbl true -w -dir netgen/map -ofmt verilog -sim led_09_map.ncd led_09_map.v 
// Device	: 6slx9ftg256-3 (PRODUCTION 1.23 2013-10-13)
// Input file	: led_09_map.ncd
// Output file	: /home/ise/Xilinx_project/led_09/netgen/map/led_09_map.v
// # of Modules	: 1
// Design Name	: led_09
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

module led_09 (
  clk, reset, nut_up, nut_down, seg, digit
);
  input clk;
  input reset;
  input nut_up;
  input nut_down;
  output [6 : 0] seg;
  output [5 : 0] digit;
  wire seg_6_OBUF_892;
  wire seg_0_OBUF_0;
  wire pulse_up_902;
  wire pulse_down_903;
  wire digit_0_OBUF_0;
  wire clk_BUFGP;
  wire seg_3_OBUF_906;
  wire reset_IBUF_0;
  wire \Mcount_ref_counter_cy[3] ;
  wire \Mcount_ref_counter_cy[7] ;
  wire \Mcount_ref_counter_cy[11] ;
  wire \Mcount_ref_counter_cy[15] ;
  wire \counter_up[19]_GND_5_o_add_1_OUT<0>_0 ;
  wire \counter_up[19]_GND_5_o_add_1_OUT<1>_0 ;
  wire \counter_up[19]_GND_5_o_add_1_OUT<2>_0 ;
  wire \Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<3>_938 ;
  wire \counter_up[19]_GND_5_o_add_1_OUT<3>_0 ;
  wire \counter_up[19]_GND_5_o_add_1_OUT<4>_0 ;
  wire \counter_up[19]_GND_5_o_add_1_OUT<5>_0 ;
  wire \counter_up[19]_GND_5_o_add_1_OUT<6>_0 ;
  wire \Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<7>_947 ;
  wire \counter_up[19]_GND_5_o_add_1_OUT<7>_0 ;
  wire \counter_up[19]_GND_5_o_add_1_OUT<8>_0 ;
  wire \counter_up[19]_GND_5_o_add_1_OUT<9>_0 ;
  wire \counter_up[19]_GND_5_o_add_1_OUT<10>_0 ;
  wire \Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<11>_956 ;
  wire \counter_up[19]_GND_5_o_add_1_OUT<11>_0 ;
  wire \counter_up[19]_GND_5_o_add_1_OUT<12>_0 ;
  wire \counter_up[19]_GND_5_o_add_1_OUT<13>_0 ;
  wire \counter_up[19]_GND_5_o_add_1_OUT<14>_0 ;
  wire \Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<15>_965 ;
  wire \counter_up[19]_GND_5_o_add_1_OUT<15>_0 ;
  wire \counter_up[19]_GND_5_o_add_1_OUT<16>_0 ;
  wire \counter_up[19]_GND_5_o_add_1_OUT<17>_0 ;
  wire \counter_up[19]_GND_5_o_add_1_OUT<18>_0 ;
  wire \counter_up[19]_GND_5_o_add_1_OUT<19>_0 ;
  wire \counter_down[19]_GND_5_o_add_7_OUT<0>_0 ;
  wire \counter_down[19]_GND_5_o_add_7_OUT<1>_0 ;
  wire \counter_down[19]_GND_5_o_add_7_OUT<2>_0 ;
  wire \Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<3>_982 ;
  wire \counter_down[19]_GND_5_o_add_7_OUT<3>_0 ;
  wire \counter_down[19]_GND_5_o_add_7_OUT<4>_0 ;
  wire \counter_down[19]_GND_5_o_add_7_OUT<5>_0 ;
  wire \counter_down[19]_GND_5_o_add_7_OUT<6>_0 ;
  wire \Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<7>_991 ;
  wire \counter_down[19]_GND_5_o_add_7_OUT<7>_0 ;
  wire \counter_down[19]_GND_5_o_add_7_OUT<8>_0 ;
  wire \counter_down[19]_GND_5_o_add_7_OUT<9>_0 ;
  wire \counter_down[19]_GND_5_o_add_7_OUT<10>_0 ;
  wire \Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<11>_1000 ;
  wire \counter_down[19]_GND_5_o_add_7_OUT<11>_0 ;
  wire \counter_down[19]_GND_5_o_add_7_OUT<12>_0 ;
  wire \counter_down[19]_GND_5_o_add_7_OUT<13>_0 ;
  wire \counter_down[19]_GND_5_o_add_7_OUT<14>_0 ;
  wire \Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<15>_1009 ;
  wire \counter_down[19]_GND_5_o_add_7_OUT<15>_0 ;
  wire \counter_down[19]_GND_5_o_add_7_OUT<16>_0 ;
  wire \counter_down[19]_GND_5_o_add_7_OUT<17>_0 ;
  wire \counter_down[19]_GND_5_o_add_7_OUT<18>_0 ;
  wire \counter_down[19]_GND_5_o_add_7_OUT<19>_0 ;
  wire nut_down_IBUF_0;
  wire \clk_BUFGP/IBUFG_0 ;
  wire seg_1_OBUF_0;
  wire seg_2_OBUF_1023;
  wire seg_4_OBUF_1024;
  wire seg_5_OBUF_0;
  wire nut_up_IBUF_0;
  wire nut_up_sta_1028;
  wire n000435_1029;
  wire nut_down_sta_1031;
  wire n002035_1032;
  wire n0004;
  wire n0020;
  wire n002032_1035;
  wire n00203;
  wire n002031_1037;
  wire N4;
  wire N3;
  wire n000432_1040;
  wire n00043;
  wire n000431_1042;
  wire N11;
  wire N0;
  wire nut_down_sta_dpot1_1045;
  wire nut_up_sta_dpot1_1046;
  wire _n0111_inv1_cepot_cepot_1047;
  wire nut_down_prev_1048;
  wire _n0109_inv1_cepot_cepot_1051;
  wire nut_up_prev_1052;
  wire _n0105_inv;
  wire \ref_counter<1>_rt_17 ;
  wire \ref_counter<2>_rt_13 ;
  wire \ProtoComp4.CYINITGND.0 ;
  wire \ref_counter<3>_rt_2 ;
  wire \ref_counter<4>_rt_49 ;
  wire \ref_counter<5>_rt_45 ;
  wire \ref_counter<6>_rt_41 ;
  wire \ref_counter<7>_rt_30 ;
  wire \ref_counter<8>_rt_77 ;
  wire \ref_counter<9>_rt_73 ;
  wire \ref_counter<10>_rt_69 ;
  wire \ref_counter<11>_rt_58 ;
  wire \ref_counter<12>_rt_105 ;
  wire \ref_counter<13>_rt_101 ;
  wire \ref_counter<14>_rt_97 ;
  wire \ref_counter<15>_rt_86 ;
  wire \ref_counter<16>_rt_131 ;
  wire \ref_counter<17>_rt_127 ;
  wire \ref_counter<18>_rt_123 ;
  wire \ref_counter<19>_rt_114 ;
  wire \Madd_counter_up[19]_GND_5_o_add_1_OUT_lut<0> ;
  wire \counter_up<1>_rt_149 ;
  wire \counter_up<2>_rt_146 ;
  wire \counter_up[19]_GND_5_o_add_1_OUT<0> ;
  wire \counter_up[19]_GND_5_o_add_1_OUT<1> ;
  wire \counter_up[19]_GND_5_o_add_1_OUT<2> ;
  wire \counter_up[19]_GND_5_o_add_1_OUT<3> ;
  wire \ProtoComp7.CYINITGND.0 ;
  wire \counter_up<3>_rt_137 ;
  wire \counter_up<4>_rt_174 ;
  wire \counter_up<5>_rt_171 ;
  wire \counter_up<6>_rt_168 ;
  wire \counter_up[19]_GND_5_o_add_1_OUT<4> ;
  wire \counter_up[19]_GND_5_o_add_1_OUT<5> ;
  wire \counter_up[19]_GND_5_o_add_1_OUT<6> ;
  wire \counter_up[19]_GND_5_o_add_1_OUT<7> ;
  wire \counter_up<7>_rt_159 ;
  wire \counter_up<8>_rt_196 ;
  wire \counter_up<9>_rt_193 ;
  wire \counter_up<10>_rt_190 ;
  wire \counter_up[19]_GND_5_o_add_1_OUT<8> ;
  wire \counter_up[19]_GND_5_o_add_1_OUT<9> ;
  wire \counter_up[19]_GND_5_o_add_1_OUT<10> ;
  wire \counter_up[19]_GND_5_o_add_1_OUT<11> ;
  wire \counter_up<11>_rt_181 ;
  wire \counter_up<12>_rt_218 ;
  wire \counter_up<13>_rt_215 ;
  wire \counter_up<14>_rt_212 ;
  wire \counter_up[19]_GND_5_o_add_1_OUT<12> ;
  wire \counter_up[19]_GND_5_o_add_1_OUT<13> ;
  wire \counter_up[19]_GND_5_o_add_1_OUT<14> ;
  wire \counter_up[19]_GND_5_o_add_1_OUT<15> ;
  wire \counter_up<15>_rt_203 ;
  wire \counter_up<16>_rt_238 ;
  wire \counter_up<17>_rt_235 ;
  wire \counter_up<18>_rt_232 ;
  wire \counter_up[19]_GND_5_o_add_1_OUT<16> ;
  wire \counter_up[19]_GND_5_o_add_1_OUT<17> ;
  wire \counter_up[19]_GND_5_o_add_1_OUT<18> ;
  wire \counter_up[19]_GND_5_o_add_1_OUT<19> ;
  wire \counter_up<19>_rt_225 ;
  wire \Madd_counter_down[19]_GND_5_o_add_7_OUT_lut<0> ;
  wire \counter_down<1>_rt_256 ;
  wire \counter_down<2>_rt_253 ;
  wire \counter_down[19]_GND_5_o_add_7_OUT<0> ;
  wire \counter_down[19]_GND_5_o_add_7_OUT<1> ;
  wire \counter_down[19]_GND_5_o_add_7_OUT<2> ;
  wire \counter_down[19]_GND_5_o_add_7_OUT<3> ;
  wire \Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<3>/ProtoComp7.CYINITGND.0 ;
  wire \counter_down<3>_rt_244 ;
  wire \counter_down<4>_rt_281 ;
  wire \counter_down<5>_rt_278 ;
  wire \counter_down<6>_rt_275 ;
  wire \counter_down[19]_GND_5_o_add_7_OUT<4> ;
  wire \counter_down[19]_GND_5_o_add_7_OUT<5> ;
  wire \counter_down[19]_GND_5_o_add_7_OUT<6> ;
  wire \counter_down[19]_GND_5_o_add_7_OUT<7> ;
  wire \counter_down<7>_rt_266 ;
  wire \counter_down<8>_rt_303 ;
  wire \counter_down<9>_rt_300 ;
  wire \counter_down<10>_rt_297 ;
  wire \counter_down[19]_GND_5_o_add_7_OUT<8> ;
  wire \counter_down[19]_GND_5_o_add_7_OUT<9> ;
  wire \counter_down[19]_GND_5_o_add_7_OUT<10> ;
  wire \counter_down[19]_GND_5_o_add_7_OUT<11> ;
  wire \counter_down<11>_rt_288 ;
  wire \counter_down<12>_rt_325 ;
  wire \counter_down<13>_rt_322 ;
  wire \counter_down<14>_rt_319 ;
  wire \counter_down[19]_GND_5_o_add_7_OUT<12> ;
  wire \counter_down[19]_GND_5_o_add_7_OUT<13> ;
  wire \counter_down[19]_GND_5_o_add_7_OUT<14> ;
  wire \counter_down[19]_GND_5_o_add_7_OUT<15> ;
  wire \counter_down<15>_rt_310 ;
  wire \counter_down<16>_rt_345 ;
  wire \counter_down<17>_rt_342 ;
  wire \counter_down<18>_rt_339 ;
  wire \counter_down[19]_GND_5_o_add_7_OUT<16> ;
  wire \counter_down[19]_GND_5_o_add_7_OUT<17> ;
  wire \counter_down[19]_GND_5_o_add_7_OUT<18> ;
  wire \counter_down[19]_GND_5_o_add_7_OUT<19> ;
  wire \counter_down<19>_rt_332 ;
  wire nut_down_IBUF_352;
  wire \clk_BUFGP/IBUFG_355 ;
  wire nut_up_IBUF_384;
  wire reset_IBUF_387;
  wire seg_1_OBUF_398;
  wire seg_0_OBUF_392;
  wire \counter_down[19]_GND_5_o_mux_10_OUT<2> ;
  wire \counter_down[19]_GND_5_o_mux_10_OUT<3> ;
  wire \counter_down[19]_GND_5_o_mux_10_OUT<4> ;
  wire \counter_down[19]_GND_5_o_mux_10_OUT<5> ;
  wire \counter_down[19]_GND_5_o_mux_10_OUT<6> ;
  wire \counter_down[19]_GND_5_o_mux_10_OUT<7> ;
  wire \counter_down[19]_GND_5_o_mux_10_OUT<8> ;
  wire \counter_down[19]_GND_5_o_mux_10_OUT<9> ;
  wire \counter_down[19]_GND_5_o_mux_10_OUT<10> ;
  wire \counter_down[19]_GND_5_o_mux_10_OUT<11> ;
  wire \counter_down[19]_GND_5_o_mux_10_OUT<12> ;
  wire \counter_down[19]_GND_5_o_mux_10_OUT<13> ;
  wire \counter_down[19]_GND_5_o_mux_10_OUT<18> ;
  wire \counter_down[19]_GND_5_o_mux_10_OUT<19> ;
  wire \counter_up[19]_GND_5_o_mux_4_OUT<2> ;
  wire \counter_up[19]_GND_5_o_mux_4_OUT<3> ;
  wire \counter_up[19]_GND_5_o_mux_4_OUT<4> ;
  wire \counter_up[19]_GND_5_o_mux_4_OUT<5> ;
  wire \counter_up[19]_GND_5_o_mux_4_OUT<6> ;
  wire \counter_up[19]_GND_5_o_mux_4_OUT<7> ;
  wire \counter_up[19]_GND_5_o_mux_4_OUT<8> ;
  wire \counter_up[19]_GND_5_o_mux_4_OUT<9> ;
  wire \counter_up[19]_GND_5_o_mux_4_OUT<10> ;
  wire \counter_up[19]_GND_5_o_mux_4_OUT<11> ;
  wire \counter_up[19]_GND_5_o_mux_4_OUT<12> ;
  wire \counter_up[19]_GND_5_o_mux_4_OUT<13> ;
  wire \counter_up[19]_GND_5_o_mux_4_OUT<14> ;
  wire \counter_up[19]_GND_5_o_mux_4_OUT<15> ;
  wire \counter_up[19]_GND_5_o_mux_4_OUT<16> ;
  wire \counter_up[19]_GND_5_o_mux_4_OUT<17> ;
  wire \counter_down[19]_GND_5_o_mux_10_OUT<1> ;
  wire \counter_down[19]_GND_5_o_mux_10_OUT<0> ;
  wire nut_down_sta_pack_4;
  wire nut_down_sta_rstpot_660;
  wire nut_down_sta_nut_down_prev_AND_8_o;
  wire \counter_down[19]_GND_5_o_mux_10_OUT<14> ;
  wire \counter_down[19]_GND_5_o_mux_10_OUT<15> ;
  wire \counter_down[19]_GND_5_o_mux_10_OUT<16> ;
  wire \counter_down[19]_GND_5_o_mux_10_OUT<17> ;
  wire \counter_up[19]_GND_5_o_mux_4_OUT<1> ;
  wire \counter_up[19]_GND_5_o_mux_4_OUT<0> ;
  wire seg_5_OBUF_739;
  wire nut_up_sta_pack_4;
  wire nut_up_sta_rstpot_790;
  wire nut_up_sta_nut_up_prev_AND_4_o;
  wire \counter_up[19]_GND_5_o_mux_4_OUT<18> ;
  wire \counter_up[19]_GND_5_o_mux_4_OUT<19> ;
  wire Mcount_cur_digit;
  wire \cur_digit<1>_pack_3 ;
  wire Mcount_cur_digit1;
  wire Mcount_cur_digit2;
  wire \count[3]_count[3]_mux_19_OUT<0> ;
  wire \count<1>_pack_9 ;
  wire \count[3]_count[3]_mux_19_OUT<1> ;
  wire \count[3]_count[3]_mux_19_OUT<3> ;
  wire \count<2>_pack_11 ;
  wire \count[3]_count[3]_mux_19_OUT<2> ;
  wire digit_0_OBUF_844;
  wire VCC;
  wire GND;
  wire \NLW_N1_45.D5LUT_O_UNCONNECTED ;
  wire \NLW_Mcount_ref_counter_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_Mcount_ref_counter_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_Mcount_ref_counter_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_44.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_43.B5LUT_O_UNCONNECTED ;
  wire \NLW_digit_5_OBUF_1_3.A5LUT_O_UNCONNECTED ;
  wire \NLW_N1_49.D5LUT_O_UNCONNECTED ;
  wire \NLW_Mcount_ref_counter_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_Mcount_ref_counter_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_Mcount_ref_counter_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_48.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_47.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_46.A5LUT_O_UNCONNECTED ;
  wire \NLW_N1_53.D5LUT_O_UNCONNECTED ;
  wire \NLW_Mcount_ref_counter_cy<11>_CO[0]_UNCONNECTED ;
  wire \NLW_Mcount_ref_counter_cy<11>_CO[1]_UNCONNECTED ;
  wire \NLW_Mcount_ref_counter_cy<11>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_52.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_51.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_50.A5LUT_O_UNCONNECTED ;
  wire \NLW_N1_57.D5LUT_O_UNCONNECTED ;
  wire \NLW_Mcount_ref_counter_cy<15>_CO[0]_UNCONNECTED ;
  wire \NLW_Mcount_ref_counter_cy<15>_CO[1]_UNCONNECTED ;
  wire \NLW_Mcount_ref_counter_cy<15>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_56.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_55.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_54.A5LUT_O_UNCONNECTED ;
  wire \NLW_Mcount_ref_counter_xor<19>_CO[0]_UNCONNECTED ;
  wire \NLW_Mcount_ref_counter_xor<19>_CO[1]_UNCONNECTED ;
  wire \NLW_Mcount_ref_counter_xor<19>_CO[2]_UNCONNECTED ;
  wire \NLW_Mcount_ref_counter_xor<19>_CO[3]_UNCONNECTED ;
  wire \NLW_Mcount_ref_counter_xor<19>_DI[3]_UNCONNECTED ;
  wire \NLW_N1_60.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_59.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_58.A5LUT_O_UNCONNECTED ;
  wire \NLW_N1_25.D5LUT_O_UNCONNECTED ;
  wire \NLW_Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_24.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_23.B5LUT_O_UNCONNECTED ;
  wire \NLW_digit_5_OBUF_1_2.A5LUT_O_UNCONNECTED ;
  wire \NLW_N1_29.D5LUT_O_UNCONNECTED ;
  wire \NLW_Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_28.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_27.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_26.A5LUT_O_UNCONNECTED ;
  wire \NLW_N1_33.D5LUT_O_UNCONNECTED ;
  wire \NLW_Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<11>_CO[0]_UNCONNECTED ;
  wire \NLW_Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<11>_CO[1]_UNCONNECTED ;
  wire \NLW_Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<11>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_32.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_31.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_30.A5LUT_O_UNCONNECTED ;
  wire \NLW_N1_37.D5LUT_O_UNCONNECTED ;
  wire \NLW_Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<15>_CO[0]_UNCONNECTED ;
  wire \NLW_Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<15>_CO[1]_UNCONNECTED ;
  wire \NLW_Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<15>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_36.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_35.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_34.A5LUT_O_UNCONNECTED ;
  wire \NLW_Madd_counter_up[19]_GND_5_o_add_1_OUT_xor<19>_CO[0]_UNCONNECTED ;
  wire \NLW_Madd_counter_up[19]_GND_5_o_add_1_OUT_xor<19>_CO[1]_UNCONNECTED ;
  wire \NLW_Madd_counter_up[19]_GND_5_o_add_1_OUT_xor<19>_CO[2]_UNCONNECTED ;
  wire \NLW_Madd_counter_up[19]_GND_5_o_add_1_OUT_xor<19>_CO[3]_UNCONNECTED ;
  wire \NLW_Madd_counter_up[19]_GND_5_o_add_1_OUT_xor<19>_DI[3]_UNCONNECTED ;
  wire \NLW_N1_40.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_39.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_38.A5LUT_O_UNCONNECTED ;
  wire \NLW_N1_5.D5LUT_O_UNCONNECTED ;
  wire \NLW_Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_4.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_3.B5LUT_O_UNCONNECTED ;
  wire \NLW_digit_5_OBUF.A5LUT_O_UNCONNECTED ;
  wire \NLW_N1_9.D5LUT_O_UNCONNECTED ;
  wire \NLW_Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_8.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_7.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_6.A5LUT_O_UNCONNECTED ;
  wire \NLW_N1_13.D5LUT_O_UNCONNECTED ;
  wire \NLW_Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<11>_CO[0]_UNCONNECTED ;
  wire \NLW_Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<11>_CO[1]_UNCONNECTED ;
  wire \NLW_Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<11>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_12.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_11.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_10.A5LUT_O_UNCONNECTED ;
  wire \NLW_N1_17.D5LUT_O_UNCONNECTED ;
  wire \NLW_Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<15>_CO[0]_UNCONNECTED ;
  wire \NLW_Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<15>_CO[1]_UNCONNECTED ;
  wire \NLW_Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<15>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_16.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_15.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_14.A5LUT_O_UNCONNECTED ;
  wire \NLW_Madd_counter_down[19]_GND_5_o_add_7_OUT_xor<19>_CO[0]_UNCONNECTED ;
  wire \NLW_Madd_counter_down[19]_GND_5_o_add_7_OUT_xor<19>_CO[1]_UNCONNECTED ;
  wire \NLW_Madd_counter_down[19]_GND_5_o_add_7_OUT_xor<19>_CO[2]_UNCONNECTED ;
  wire \NLW_Madd_counter_down[19]_GND_5_o_add_7_OUT_xor<19>_CO[3]_UNCONNECTED ;
  wire \NLW_Madd_counter_down[19]_GND_5_o_add_7_OUT_xor<19>_DI[3]_UNCONNECTED ;
  wire \NLW_N1_20.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_19.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_18.A5LUT_O_UNCONNECTED ;
  wire [3 : 0] count;
  wire [2 : 0] cur_digit;
  wire [19 : 0] ref_counter;
  wire [19 : 0] counter_up;
  wire [19 : 0] counter_down;
  wire [1 : 0] nut_up_sync;
  wire [1 : 0] nut_down_sync;
  wire [0 : 0] Mcount_ref_counter_lut;
  wire [19 : 0] Result;
  initial $sdf_annotate("netgen/map/led_09_map.sdf");
  X_FF #(
    .LOC ( "SLICE_X6Y53" ),
    .INIT ( 1'b0 ))
  ref_counter_3 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(Result[3]),
    .O(ref_counter[3]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y53" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \ref_counter<3>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(ref_counter[3]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\ref_counter<3>_rt_2 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y53" ),
    .INIT ( 32'h00000000 ))
  \N1_45.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_45.D5LUT_O_UNCONNECTED )
  );
  X_ZERO #(
    .LOC ( "SLICE_X6Y53" ))
  \ProtoComp4.CYINITGND  (
    .O(\ProtoComp4.CYINITGND.0 )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y53" ),
    .INIT ( 1'b0 ))
  ref_counter_2 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(Result[2]),
    .O(ref_counter[2]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X6Y53" ))
  \Mcount_ref_counter_cy<3>  (
    .CI(1'b0),
    .CYINIT(\ProtoComp4.CYINITGND.0 ),
    .CO({\Mcount_ref_counter_cy[3] , \NLW_Mcount_ref_counter_cy<3>_CO[2]_UNCONNECTED , \NLW_Mcount_ref_counter_cy<3>_CO[1]_UNCONNECTED , 
\NLW_Mcount_ref_counter_cy<3>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b1}),
    .O({Result[3], Result[2], Result[1], Result[0]}),
    .S({\ref_counter<3>_rt_2 , \ref_counter<2>_rt_13 , \ref_counter<1>_rt_17 , Mcount_ref_counter_lut[0]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y53" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \ref_counter<2>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(ref_counter[2]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\ref_counter<2>_rt_13 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y53" ),
    .INIT ( 32'h00000000 ))
  \N1_44.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_44.C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y53" ),
    .INIT ( 1'b0 ))
  ref_counter_1 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(Result[1]),
    .O(ref_counter[1]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y53" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \ref_counter<1>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(ref_counter[1]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\ref_counter<1>_rt_17 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y53" ),
    .INIT ( 32'h00000000 ))
  \N1_43.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_43.B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y53" ),
    .INIT ( 1'b0 ))
  ref_counter_0 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(Result[0]),
    .O(ref_counter[0]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y53" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \Mcount_ref_counter_lut<0>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(ref_counter[0]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(Mcount_ref_counter_lut[0])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y53" ),
    .INIT ( 32'hFFFFFFFF ))
  \digit_5_OBUF_1_3.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_digit_5_OBUF_1_3.A5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y54" ),
    .INIT ( 1'b0 ))
  ref_counter_7 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(Result[7]),
    .O(ref_counter[7]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y54" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \ref_counter<7>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(ref_counter[7]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\ref_counter<7>_rt_30 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y54" ),
    .INIT ( 32'h00000000 ))
  \N1_49.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_49.D5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y54" ),
    .INIT ( 1'b0 ))
  ref_counter_6 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(Result[6]),
    .O(ref_counter[6]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X6Y54" ))
  \Mcount_ref_counter_cy<7>  (
    .CI(\Mcount_ref_counter_cy[3] ),
    .CYINIT(1'b0),
    .CO({\Mcount_ref_counter_cy[7] , \NLW_Mcount_ref_counter_cy<7>_CO[2]_UNCONNECTED , \NLW_Mcount_ref_counter_cy<7>_CO[1]_UNCONNECTED , 
\NLW_Mcount_ref_counter_cy<7>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({Result[7], Result[6], Result[5], Result[4]}),
    .S({\ref_counter<7>_rt_30 , \ref_counter<6>_rt_41 , \ref_counter<5>_rt_45 , \ref_counter<4>_rt_49 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y54" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \ref_counter<6>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(ref_counter[6]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\ref_counter<6>_rt_41 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y54" ),
    .INIT ( 32'h00000000 ))
  \N1_48.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_48.C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y54" ),
    .INIT ( 1'b0 ))
  ref_counter_5 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(Result[5]),
    .O(ref_counter[5]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y54" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \ref_counter<5>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(ref_counter[5]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\ref_counter<5>_rt_45 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y54" ),
    .INIT ( 32'h00000000 ))
  \N1_47.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_47.B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y54" ),
    .INIT ( 1'b0 ))
  ref_counter_4 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(Result[4]),
    .O(ref_counter[4]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y54" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \ref_counter<4>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(ref_counter[4]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\ref_counter<4>_rt_49 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y54" ),
    .INIT ( 32'h00000000 ))
  \N1_46.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_46.A5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y55" ),
    .INIT ( 1'b0 ))
  ref_counter_11 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(Result[11]),
    .O(ref_counter[11]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y55" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \ref_counter<11>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(ref_counter[11]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\ref_counter<11>_rt_58 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y55" ),
    .INIT ( 32'h00000000 ))
  \N1_53.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_53.D5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y55" ),
    .INIT ( 1'b0 ))
  ref_counter_10 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(Result[10]),
    .O(ref_counter[10]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X6Y55" ))
  \Mcount_ref_counter_cy<11>  (
    .CI(\Mcount_ref_counter_cy[7] ),
    .CYINIT(1'b0),
    .CO({\Mcount_ref_counter_cy[11] , \NLW_Mcount_ref_counter_cy<11>_CO[2]_UNCONNECTED , \NLW_Mcount_ref_counter_cy<11>_CO[1]_UNCONNECTED , 
\NLW_Mcount_ref_counter_cy<11>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({Result[11], Result[10], Result[9], Result[8]}),
    .S({\ref_counter<11>_rt_58 , \ref_counter<10>_rt_69 , \ref_counter<9>_rt_73 , \ref_counter<8>_rt_77 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y55" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \ref_counter<10>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(ref_counter[10]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\ref_counter<10>_rt_69 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y55" ),
    .INIT ( 32'h00000000 ))
  \N1_52.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_52.C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y55" ),
    .INIT ( 1'b0 ))
  ref_counter_9 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(Result[9]),
    .O(ref_counter[9]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y55" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \ref_counter<9>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(ref_counter[9]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\ref_counter<9>_rt_73 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y55" ),
    .INIT ( 32'h00000000 ))
  \N1_51.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_51.B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y55" ),
    .INIT ( 1'b0 ))
  ref_counter_8 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(Result[8]),
    .O(ref_counter[8]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y55" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \ref_counter<8>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(ref_counter[8]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\ref_counter<8>_rt_77 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y55" ),
    .INIT ( 32'h00000000 ))
  \N1_50.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_50.A5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y56" ),
    .INIT ( 1'b0 ))
  ref_counter_15 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(Result[15]),
    .O(ref_counter[15]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y56" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \ref_counter<15>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(ref_counter[15]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\ref_counter<15>_rt_86 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y56" ),
    .INIT ( 32'h00000000 ))
  \N1_57.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_57.D5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y56" ),
    .INIT ( 1'b0 ))
  ref_counter_14 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(Result[14]),
    .O(ref_counter[14]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X6Y56" ))
  \Mcount_ref_counter_cy<15>  (
    .CI(\Mcount_ref_counter_cy[11] ),
    .CYINIT(1'b0),
    .CO({\Mcount_ref_counter_cy[15] , \NLW_Mcount_ref_counter_cy<15>_CO[2]_UNCONNECTED , \NLW_Mcount_ref_counter_cy<15>_CO[1]_UNCONNECTED , 
\NLW_Mcount_ref_counter_cy<15>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({Result[15], Result[14], Result[13], Result[12]}),
    .S({\ref_counter<15>_rt_86 , \ref_counter<14>_rt_97 , \ref_counter<13>_rt_101 , \ref_counter<12>_rt_105 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y56" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \ref_counter<14>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(ref_counter[14]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\ref_counter<14>_rt_97 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y56" ),
    .INIT ( 32'h00000000 ))
  \N1_56.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_56.C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y56" ),
    .INIT ( 1'b0 ))
  ref_counter_13 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(Result[13]),
    .O(ref_counter[13]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y56" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \ref_counter<13>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(ref_counter[13]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\ref_counter<13>_rt_101 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y56" ),
    .INIT ( 32'h00000000 ))
  \N1_55.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_55.B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y56" ),
    .INIT ( 1'b0 ))
  ref_counter_12 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(Result[12]),
    .O(ref_counter[12]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y56" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \ref_counter<12>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(ref_counter[12]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\ref_counter<12>_rt_105 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y56" ),
    .INIT ( 32'h00000000 ))
  \N1_54.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_54.A5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y57" ),
    .INIT ( 1'b0 ))
  ref_counter_19 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(Result[19]),
    .O(ref_counter[19]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y57" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \ref_counter<19>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(ref_counter[19]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\ref_counter<19>_rt_114 )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y57" ),
    .INIT ( 1'b0 ))
  ref_counter_18 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(Result[18]),
    .O(ref_counter[18]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X6Y57" ))
  \Mcount_ref_counter_xor<19>  (
    .CI(\Mcount_ref_counter_cy[15] ),
    .CYINIT(1'b0),
    .CO({\NLW_Mcount_ref_counter_xor<19>_CO[3]_UNCONNECTED , \NLW_Mcount_ref_counter_xor<19>_CO[2]_UNCONNECTED , 
\NLW_Mcount_ref_counter_xor<19>_CO[1]_UNCONNECTED , \NLW_Mcount_ref_counter_xor<19>_CO[0]_UNCONNECTED }),
    .DI({\NLW_Mcount_ref_counter_xor<19>_DI[3]_UNCONNECTED , 1'b0, 1'b0, 1'b0}),
    .O({Result[19], Result[18], Result[17], Result[16]}),
    .S({\ref_counter<19>_rt_114 , \ref_counter<18>_rt_123 , \ref_counter<17>_rt_127 , \ref_counter<16>_rt_131 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y57" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \ref_counter<18>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(ref_counter[18]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\ref_counter<18>_rt_123 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y57" ),
    .INIT ( 32'h00000000 ))
  \N1_60.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_60.C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y57" ),
    .INIT ( 1'b0 ))
  ref_counter_17 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(Result[17]),
    .O(ref_counter[17]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y57" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \ref_counter<17>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(ref_counter[17]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\ref_counter<17>_rt_127 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y57" ),
    .INIT ( 32'h00000000 ))
  \N1_59.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_59.B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y57" ),
    .INIT ( 1'b0 ))
  ref_counter_16 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(Result[16]),
    .O(ref_counter[16]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y57" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \ref_counter<16>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(ref_counter[16]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\ref_counter<16>_rt_131 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y57" ),
    .INIT ( 32'h00000000 ))
  \N1_58.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_58.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<3>/Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<3>_DMUX_Delay  (
    .I(\counter_up[19]_GND_5_o_add_1_OUT<3> ),
    .O(\counter_up[19]_GND_5_o_add_1_OUT<3>_0 )
  );
  X_BUF   \Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<3>/Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<3>_CMUX_Delay  (
    .I(\counter_up[19]_GND_5_o_add_1_OUT<2> ),
    .O(\counter_up[19]_GND_5_o_add_1_OUT<2>_0 )
  );
  X_BUF   \Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<3>/Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<3>_BMUX_Delay  (
    .I(\counter_up[19]_GND_5_o_add_1_OUT<1> ),
    .O(\counter_up[19]_GND_5_o_add_1_OUT<1>_0 )
  );
  X_BUF   \Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<3>/Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<3>_AMUX_Delay  (
    .I(\counter_up[19]_GND_5_o_add_1_OUT<0> ),
    .O(\counter_up[19]_GND_5_o_add_1_OUT<0>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y38" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter_up<3>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(counter_up[3]),
    .ADR5(1'b1),
    .O(\counter_up<3>_rt_137 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y38" ),
    .INIT ( 32'h00000000 ))
  \N1_25.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_25.D5LUT_O_UNCONNECTED )
  );
  X_ZERO #(
    .LOC ( "SLICE_X4Y38" ))
  \ProtoComp7.CYINITGND  (
    .O(\ProtoComp7.CYINITGND.0 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X4Y38" ))
  \Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<3>  (
    .CI(1'b0),
    .CYINIT(\ProtoComp7.CYINITGND.0 ),
    .CO({\Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<3>_938 , \NLW_Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<3>_CO[2]_UNCONNECTED , 
\NLW_Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<3>_CO[1]_UNCONNECTED , \NLW_Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<3>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b1}),
    .O({\counter_up[19]_GND_5_o_add_1_OUT<3> , \counter_up[19]_GND_5_o_add_1_OUT<2> , \counter_up[19]_GND_5_o_add_1_OUT<1> , 
\counter_up[19]_GND_5_o_add_1_OUT<0> }),
    .S({\counter_up<3>_rt_137 , \counter_up<2>_rt_146 , \counter_up<1>_rt_149 , \Madd_counter_up[19]_GND_5_o_add_1_OUT_lut<0> })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y38" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter_up<2>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(counter_up[2]),
    .ADR5(1'b1),
    .O(\counter_up<2>_rt_146 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y38" ),
    .INIT ( 32'h00000000 ))
  \N1_24.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_24.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y38" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter_up<1>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(counter_up[1]),
    .ADR5(1'b1),
    .O(\counter_up<1>_rt_149 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y38" ),
    .INIT ( 32'h00000000 ))
  \N1_23.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_23.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y38" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \Madd_counter_up[19]_GND_5_o_add_1_OUT_lut<0>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(counter_up[0]),
    .ADR5(1'b1),
    .O(\Madd_counter_up[19]_GND_5_o_add_1_OUT_lut<0> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y38" ),
    .INIT ( 32'hFFFFFFFF ))
  \digit_5_OBUF_1_2.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_digit_5_OBUF_1_2.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<7>/Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<7>_DMUX_Delay  (
    .I(\counter_up[19]_GND_5_o_add_1_OUT<7> ),
    .O(\counter_up[19]_GND_5_o_add_1_OUT<7>_0 )
  );
  X_BUF   \Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<7>/Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<7>_CMUX_Delay  (
    .I(\counter_up[19]_GND_5_o_add_1_OUT<6> ),
    .O(\counter_up[19]_GND_5_o_add_1_OUT<6>_0 )
  );
  X_BUF   \Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<7>/Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<7>_BMUX_Delay  (
    .I(\counter_up[19]_GND_5_o_add_1_OUT<5> ),
    .O(\counter_up[19]_GND_5_o_add_1_OUT<5>_0 )
  );
  X_BUF   \Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<7>/Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<7>_AMUX_Delay  (
    .I(\counter_up[19]_GND_5_o_add_1_OUT<4> ),
    .O(\counter_up[19]_GND_5_o_add_1_OUT<4>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y39" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter_up<7>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(counter_up[7]),
    .ADR5(1'b1),
    .O(\counter_up<7>_rt_159 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y39" ),
    .INIT ( 32'h00000000 ))
  \N1_29.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_29.D5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X4Y39" ))
  \Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<7>  (
    .CI(\Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<3>_938 ),
    .CYINIT(1'b0),
    .CO({\Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<7>_947 , \NLW_Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<7>_CO[2]_UNCONNECTED , 
\NLW_Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<7>_CO[1]_UNCONNECTED , \NLW_Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<7>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\counter_up[19]_GND_5_o_add_1_OUT<7> , \counter_up[19]_GND_5_o_add_1_OUT<6> , \counter_up[19]_GND_5_o_add_1_OUT<5> , 
\counter_up[19]_GND_5_o_add_1_OUT<4> }),
    .S({\counter_up<7>_rt_159 , \counter_up<6>_rt_168 , \counter_up<5>_rt_171 , \counter_up<4>_rt_174 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y39" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter_up<6>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(counter_up[6]),
    .ADR5(1'b1),
    .O(\counter_up<6>_rt_168 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y39" ),
    .INIT ( 32'h00000000 ))
  \N1_28.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_28.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y39" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter_up<5>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(counter_up[5]),
    .ADR5(1'b1),
    .O(\counter_up<5>_rt_171 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y39" ),
    .INIT ( 32'h00000000 ))
  \N1_27.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_27.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y39" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter_up<4>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(counter_up[4]),
    .ADR5(1'b1),
    .O(\counter_up<4>_rt_174 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y39" ),
    .INIT ( 32'h00000000 ))
  \N1_26.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_26.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<11>/Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<11>_DMUX_Delay  (
    .I(\counter_up[19]_GND_5_o_add_1_OUT<11> ),
    .O(\counter_up[19]_GND_5_o_add_1_OUT<11>_0 )
  );
  X_BUF   \Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<11>/Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<11>_CMUX_Delay  (
    .I(\counter_up[19]_GND_5_o_add_1_OUT<10> ),
    .O(\counter_up[19]_GND_5_o_add_1_OUT<10>_0 )
  );
  X_BUF   \Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<11>/Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<11>_BMUX_Delay  (
    .I(\counter_up[19]_GND_5_o_add_1_OUT<9> ),
    .O(\counter_up[19]_GND_5_o_add_1_OUT<9>_0 )
  );
  X_BUF   \Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<11>/Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<11>_AMUX_Delay  (
    .I(\counter_up[19]_GND_5_o_add_1_OUT<8> ),
    .O(\counter_up[19]_GND_5_o_add_1_OUT<8>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y40" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter_up<11>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(counter_up[11]),
    .ADR5(1'b1),
    .O(\counter_up<11>_rt_181 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y40" ),
    .INIT ( 32'h00000000 ))
  \N1_33.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_33.D5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X4Y40" ))
  \Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<11>  (
    .CI(\Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<7>_947 ),
    .CYINIT(1'b0),
    .CO({\Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<11>_956 , \NLW_Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<11>_CO[2]_UNCONNECTED , 
\NLW_Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<11>_CO[1]_UNCONNECTED , \NLW_Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<11>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\counter_up[19]_GND_5_o_add_1_OUT<11> , \counter_up[19]_GND_5_o_add_1_OUT<10> , \counter_up[19]_GND_5_o_add_1_OUT<9> , 
\counter_up[19]_GND_5_o_add_1_OUT<8> }),
    .S({\counter_up<11>_rt_181 , \counter_up<10>_rt_190 , \counter_up<9>_rt_193 , \counter_up<8>_rt_196 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y40" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter_up<10>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(counter_up[10]),
    .ADR5(1'b1),
    .O(\counter_up<10>_rt_190 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y40" ),
    .INIT ( 32'h00000000 ))
  \N1_32.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_32.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y40" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter_up<9>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(counter_up[9]),
    .ADR5(1'b1),
    .O(\counter_up<9>_rt_193 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y40" ),
    .INIT ( 32'h00000000 ))
  \N1_31.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_31.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y40" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter_up<8>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(counter_up[8]),
    .ADR5(1'b1),
    .O(\counter_up<8>_rt_196 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y40" ),
    .INIT ( 32'h00000000 ))
  \N1_30.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_30.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<15>/Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<15>_DMUX_Delay  (
    .I(\counter_up[19]_GND_5_o_add_1_OUT<15> ),
    .O(\counter_up[19]_GND_5_o_add_1_OUT<15>_0 )
  );
  X_BUF   \Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<15>/Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<15>_CMUX_Delay  (
    .I(\counter_up[19]_GND_5_o_add_1_OUT<14> ),
    .O(\counter_up[19]_GND_5_o_add_1_OUT<14>_0 )
  );
  X_BUF   \Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<15>/Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<15>_BMUX_Delay  (
    .I(\counter_up[19]_GND_5_o_add_1_OUT<13> ),
    .O(\counter_up[19]_GND_5_o_add_1_OUT<13>_0 )
  );
  X_BUF   \Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<15>/Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<15>_AMUX_Delay  (
    .I(\counter_up[19]_GND_5_o_add_1_OUT<12> ),
    .O(\counter_up[19]_GND_5_o_add_1_OUT<12>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y41" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter_up<15>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(counter_up[15]),
    .ADR5(1'b1),
    .O(\counter_up<15>_rt_203 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y41" ),
    .INIT ( 32'h00000000 ))
  \N1_37.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_37.D5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X4Y41" ))
  \Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<15>  (
    .CI(\Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<11>_956 ),
    .CYINIT(1'b0),
    .CO({\Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<15>_965 , \NLW_Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<15>_CO[2]_UNCONNECTED , 
\NLW_Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<15>_CO[1]_UNCONNECTED , \NLW_Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<15>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\counter_up[19]_GND_5_o_add_1_OUT<15> , \counter_up[19]_GND_5_o_add_1_OUT<14> , \counter_up[19]_GND_5_o_add_1_OUT<13> , 
\counter_up[19]_GND_5_o_add_1_OUT<12> }),
    .S({\counter_up<15>_rt_203 , \counter_up<14>_rt_212 , \counter_up<13>_rt_215 , \counter_up<12>_rt_218 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y41" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter_up<14>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(counter_up[14]),
    .ADR5(1'b1),
    .O(\counter_up<14>_rt_212 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y41" ),
    .INIT ( 32'h00000000 ))
  \N1_36.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_36.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y41" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter_up<13>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(counter_up[13]),
    .ADR5(1'b1),
    .O(\counter_up<13>_rt_215 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y41" ),
    .INIT ( 32'h00000000 ))
  \N1_35.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_35.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y41" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter_up<12>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(counter_up[12]),
    .ADR5(1'b1),
    .O(\counter_up<12>_rt_218 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y41" ),
    .INIT ( 32'h00000000 ))
  \N1_34.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_34.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \counter_up[19]_GND_5_o_add_1_OUT<19>/counter_up[19]_GND_5_o_add_1_OUT<19>_DMUX_Delay  (
    .I(\counter_up[19]_GND_5_o_add_1_OUT<19> ),
    .O(\counter_up[19]_GND_5_o_add_1_OUT<19>_0 )
  );
  X_BUF   \counter_up[19]_GND_5_o_add_1_OUT<19>/counter_up[19]_GND_5_o_add_1_OUT<19>_CMUX_Delay  (
    .I(\counter_up[19]_GND_5_o_add_1_OUT<18> ),
    .O(\counter_up[19]_GND_5_o_add_1_OUT<18>_0 )
  );
  X_BUF   \counter_up[19]_GND_5_o_add_1_OUT<19>/counter_up[19]_GND_5_o_add_1_OUT<19>_BMUX_Delay  (
    .I(\counter_up[19]_GND_5_o_add_1_OUT<17> ),
    .O(\counter_up[19]_GND_5_o_add_1_OUT<17>_0 )
  );
  X_BUF   \counter_up[19]_GND_5_o_add_1_OUT<19>/counter_up[19]_GND_5_o_add_1_OUT<19>_AMUX_Delay  (
    .I(\counter_up[19]_GND_5_o_add_1_OUT<16> ),
    .O(\counter_up[19]_GND_5_o_add_1_OUT<16>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y42" ),
    .INIT ( 64'hFFFFFFFF00000000 ))
  \counter_up<19>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR5(counter_up[19]),
    .O(\counter_up<19>_rt_225 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X4Y42" ))
  \Madd_counter_up[19]_GND_5_o_add_1_OUT_xor<19>  (
    .CI(\Madd_counter_up[19]_GND_5_o_add_1_OUT_cy<15>_965 ),
    .CYINIT(1'b0),
    .CO({\NLW_Madd_counter_up[19]_GND_5_o_add_1_OUT_xor<19>_CO[3]_UNCONNECTED , \NLW_Madd_counter_up[19]_GND_5_o_add_1_OUT_xor<19>_CO[2]_UNCONNECTED 
, \NLW_Madd_counter_up[19]_GND_5_o_add_1_OUT_xor<19>_CO[1]_UNCONNECTED , \NLW_Madd_counter_up[19]_GND_5_o_add_1_OUT_xor<19>_CO[0]_UNCONNECTED }),
    .DI({\NLW_Madd_counter_up[19]_GND_5_o_add_1_OUT_xor<19>_DI[3]_UNCONNECTED , 1'b0, 1'b0, 1'b0}),
    .O({\counter_up[19]_GND_5_o_add_1_OUT<19> , \counter_up[19]_GND_5_o_add_1_OUT<18> , \counter_up[19]_GND_5_o_add_1_OUT<17> , 
\counter_up[19]_GND_5_o_add_1_OUT<16> }),
    .S({\counter_up<19>_rt_225 , \counter_up<18>_rt_232 , \counter_up<17>_rt_235 , \counter_up<16>_rt_238 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y42" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter_up<18>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(counter_up[18]),
    .ADR5(1'b1),
    .O(\counter_up<18>_rt_232 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y42" ),
    .INIT ( 32'h00000000 ))
  \N1_40.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_40.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y42" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter_up<17>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(counter_up[17]),
    .ADR5(1'b1),
    .O(\counter_up<17>_rt_235 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y42" ),
    .INIT ( 32'h00000000 ))
  \N1_39.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_39.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y42" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter_up<16>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(counter_up[16]),
    .ADR5(1'b1),
    .O(\counter_up<16>_rt_238 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y42" ),
    .INIT ( 32'h00000000 ))
  \N1_38.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_38.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<3>/Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<3>_DMUX_Delay  (
    .I(\counter_down[19]_GND_5_o_add_7_OUT<3> ),
    .O(\counter_down[19]_GND_5_o_add_7_OUT<3>_0 )
  );
  X_BUF   \Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<3>/Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<3>_CMUX_Delay  (
    .I(\counter_down[19]_GND_5_o_add_7_OUT<2> ),
    .O(\counter_down[19]_GND_5_o_add_7_OUT<2>_0 )
  );
  X_BUF   \Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<3>/Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<3>_BMUX_Delay  (
    .I(\counter_down[19]_GND_5_o_add_7_OUT<1> ),
    .O(\counter_down[19]_GND_5_o_add_7_OUT<1>_0 )
  );
  X_BUF   \Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<3>/Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<3>_AMUX_Delay  (
    .I(\counter_down[19]_GND_5_o_add_7_OUT<0> ),
    .O(\counter_down[19]_GND_5_o_add_7_OUT<0>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y33" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter_down<3>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(counter_down[3]),
    .ADR5(1'b1),
    .O(\counter_down<3>_rt_244 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y33" ),
    .INIT ( 32'h00000000 ))
  \N1_5.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_5.D5LUT_O_UNCONNECTED )
  );
  X_ZERO #(
    .LOC ( "SLICE_X4Y33" ))
  \ProtoComp7.CYINITGND.1  (
    .O(\Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<3>/ProtoComp7.CYINITGND.0 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X4Y33" ))
  \Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<3>  (
    .CI(1'b0),
    .CYINIT(\Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<3>/ProtoComp7.CYINITGND.0 ),
    .CO({\Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<3>_982 , \NLW_Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<3>_CO[2]_UNCONNECTED , 
\NLW_Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<3>_CO[1]_UNCONNECTED , \NLW_Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<3>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b1}),
    .O({\counter_down[19]_GND_5_o_add_7_OUT<3> , \counter_down[19]_GND_5_o_add_7_OUT<2> , \counter_down[19]_GND_5_o_add_7_OUT<1> , 
\counter_down[19]_GND_5_o_add_7_OUT<0> }),
    .S({\counter_down<3>_rt_244 , \counter_down<2>_rt_253 , \counter_down<1>_rt_256 , \Madd_counter_down[19]_GND_5_o_add_7_OUT_lut<0> })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y33" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter_down<2>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(counter_down[2]),
    .ADR5(1'b1),
    .O(\counter_down<2>_rt_253 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y33" ),
    .INIT ( 32'h00000000 ))
  \N1_4.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_4.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y33" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter_down<1>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(counter_down[1]),
    .ADR5(1'b1),
    .O(\counter_down<1>_rt_256 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y33" ),
    .INIT ( 32'h00000000 ))
  \N1_3.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_3.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y33" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \Madd_counter_down[19]_GND_5_o_add_7_OUT_lut<0>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(counter_down[0]),
    .ADR5(1'b1),
    .O(\Madd_counter_down[19]_GND_5_o_add_7_OUT_lut<0> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y33" ),
    .INIT ( 32'hFFFFFFFF ))
  \digit_5_OBUF.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_digit_5_OBUF.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<7>/Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<7>_DMUX_Delay  (
    .I(\counter_down[19]_GND_5_o_add_7_OUT<7> ),
    .O(\counter_down[19]_GND_5_o_add_7_OUT<7>_0 )
  );
  X_BUF   \Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<7>/Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<7>_CMUX_Delay  (
    .I(\counter_down[19]_GND_5_o_add_7_OUT<6> ),
    .O(\counter_down[19]_GND_5_o_add_7_OUT<6>_0 )
  );
  X_BUF   \Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<7>/Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<7>_BMUX_Delay  (
    .I(\counter_down[19]_GND_5_o_add_7_OUT<5> ),
    .O(\counter_down[19]_GND_5_o_add_7_OUT<5>_0 )
  );
  X_BUF   \Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<7>/Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<7>_AMUX_Delay  (
    .I(\counter_down[19]_GND_5_o_add_7_OUT<4> ),
    .O(\counter_down[19]_GND_5_o_add_7_OUT<4>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y34" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter_down<7>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(counter_down[7]),
    .ADR5(1'b1),
    .O(\counter_down<7>_rt_266 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y34" ),
    .INIT ( 32'h00000000 ))
  \N1_9.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_9.D5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X4Y34" ))
  \Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<7>  (
    .CI(\Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<3>_982 ),
    .CYINIT(1'b0),
    .CO({\Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<7>_991 , \NLW_Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<7>_CO[2]_UNCONNECTED , 
\NLW_Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<7>_CO[1]_UNCONNECTED , \NLW_Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<7>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\counter_down[19]_GND_5_o_add_7_OUT<7> , \counter_down[19]_GND_5_o_add_7_OUT<6> , \counter_down[19]_GND_5_o_add_7_OUT<5> , 
\counter_down[19]_GND_5_o_add_7_OUT<4> }),
    .S({\counter_down<7>_rt_266 , \counter_down<6>_rt_275 , \counter_down<5>_rt_278 , \counter_down<4>_rt_281 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y34" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter_down<6>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(counter_down[6]),
    .ADR5(1'b1),
    .O(\counter_down<6>_rt_275 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y34" ),
    .INIT ( 32'h00000000 ))
  \N1_8.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_8.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y34" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter_down<5>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(counter_down[5]),
    .ADR5(1'b1),
    .O(\counter_down<5>_rt_278 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y34" ),
    .INIT ( 32'h00000000 ))
  \N1_7.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_7.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y34" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter_down<4>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(counter_down[4]),
    .ADR5(1'b1),
    .O(\counter_down<4>_rt_281 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y34" ),
    .INIT ( 32'h00000000 ))
  \N1_6.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_6.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<11>/Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<11>_DMUX_Delay  (
    .I(\counter_down[19]_GND_5_o_add_7_OUT<11> ),
    .O(\counter_down[19]_GND_5_o_add_7_OUT<11>_0 )
  );
  X_BUF   \Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<11>/Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<11>_CMUX_Delay  (
    .I(\counter_down[19]_GND_5_o_add_7_OUT<10> ),
    .O(\counter_down[19]_GND_5_o_add_7_OUT<10>_0 )
  );
  X_BUF   \Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<11>/Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<11>_BMUX_Delay  (
    .I(\counter_down[19]_GND_5_o_add_7_OUT<9> ),
    .O(\counter_down[19]_GND_5_o_add_7_OUT<9>_0 )
  );
  X_BUF   \Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<11>/Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<11>_AMUX_Delay  (
    .I(\counter_down[19]_GND_5_o_add_7_OUT<8> ),
    .O(\counter_down[19]_GND_5_o_add_7_OUT<8>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y35" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter_down<11>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(counter_down[11]),
    .ADR5(1'b1),
    .O(\counter_down<11>_rt_288 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y35" ),
    .INIT ( 32'h00000000 ))
  \N1_13.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_13.D5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X4Y35" ))
  \Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<11>  (
    .CI(\Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<7>_991 ),
    .CYINIT(1'b0),
    .CO({\Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<11>_1000 , \NLW_Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<11>_CO[2]_UNCONNECTED , 
\NLW_Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<11>_CO[1]_UNCONNECTED , \NLW_Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<11>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\counter_down[19]_GND_5_o_add_7_OUT<11> , \counter_down[19]_GND_5_o_add_7_OUT<10> , \counter_down[19]_GND_5_o_add_7_OUT<9> , 
\counter_down[19]_GND_5_o_add_7_OUT<8> }),
    .S({\counter_down<11>_rt_288 , \counter_down<10>_rt_297 , \counter_down<9>_rt_300 , \counter_down<8>_rt_303 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y35" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter_down<10>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(counter_down[10]),
    .ADR5(1'b1),
    .O(\counter_down<10>_rt_297 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y35" ),
    .INIT ( 32'h00000000 ))
  \N1_12.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_12.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y35" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter_down<9>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(counter_down[9]),
    .ADR5(1'b1),
    .O(\counter_down<9>_rt_300 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y35" ),
    .INIT ( 32'h00000000 ))
  \N1_11.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_11.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y35" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter_down<8>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(counter_down[8]),
    .ADR5(1'b1),
    .O(\counter_down<8>_rt_303 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y35" ),
    .INIT ( 32'h00000000 ))
  \N1_10.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_10.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<15>/Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<15>_DMUX_Delay  (
    .I(\counter_down[19]_GND_5_o_add_7_OUT<15> ),
    .O(\counter_down[19]_GND_5_o_add_7_OUT<15>_0 )
  );
  X_BUF   \Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<15>/Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<15>_CMUX_Delay  (
    .I(\counter_down[19]_GND_5_o_add_7_OUT<14> ),
    .O(\counter_down[19]_GND_5_o_add_7_OUT<14>_0 )
  );
  X_BUF   \Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<15>/Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<15>_BMUX_Delay  (
    .I(\counter_down[19]_GND_5_o_add_7_OUT<13> ),
    .O(\counter_down[19]_GND_5_o_add_7_OUT<13>_0 )
  );
  X_BUF   \Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<15>/Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<15>_AMUX_Delay  (
    .I(\counter_down[19]_GND_5_o_add_7_OUT<12> ),
    .O(\counter_down[19]_GND_5_o_add_7_OUT<12>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y36" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter_down<15>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(counter_down[15]),
    .ADR5(1'b1),
    .O(\counter_down<15>_rt_310 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y36" ),
    .INIT ( 32'h00000000 ))
  \N1_17.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_17.D5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X4Y36" ))
  \Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<15>  (
    .CI(\Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<11>_1000 ),
    .CYINIT(1'b0),
    .CO({\Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<15>_1009 , \NLW_Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<15>_CO[2]_UNCONNECTED , 
\NLW_Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<15>_CO[1]_UNCONNECTED , \NLW_Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<15>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\counter_down[19]_GND_5_o_add_7_OUT<15> , \counter_down[19]_GND_5_o_add_7_OUT<14> , \counter_down[19]_GND_5_o_add_7_OUT<13> , 
\counter_down[19]_GND_5_o_add_7_OUT<12> }),
    .S({\counter_down<15>_rt_310 , \counter_down<14>_rt_319 , \counter_down<13>_rt_322 , \counter_down<12>_rt_325 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y36" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter_down<14>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(counter_down[14]),
    .ADR5(1'b1),
    .O(\counter_down<14>_rt_319 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y36" ),
    .INIT ( 32'h00000000 ))
  \N1_16.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_16.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y36" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter_down<13>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(counter_down[13]),
    .ADR5(1'b1),
    .O(\counter_down<13>_rt_322 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y36" ),
    .INIT ( 32'h00000000 ))
  \N1_15.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_15.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y36" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter_down<12>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(counter_down[12]),
    .ADR5(1'b1),
    .O(\counter_down<12>_rt_325 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y36" ),
    .INIT ( 32'h00000000 ))
  \N1_14.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_14.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \counter_down[19]_GND_5_o_add_7_OUT<19>/counter_down[19]_GND_5_o_add_7_OUT<19>_DMUX_Delay  (
    .I(\counter_down[19]_GND_5_o_add_7_OUT<19> ),
    .O(\counter_down[19]_GND_5_o_add_7_OUT<19>_0 )
  );
  X_BUF   \counter_down[19]_GND_5_o_add_7_OUT<19>/counter_down[19]_GND_5_o_add_7_OUT<19>_CMUX_Delay  (
    .I(\counter_down[19]_GND_5_o_add_7_OUT<18> ),
    .O(\counter_down[19]_GND_5_o_add_7_OUT<18>_0 )
  );
  X_BUF   \counter_down[19]_GND_5_o_add_7_OUT<19>/counter_down[19]_GND_5_o_add_7_OUT<19>_BMUX_Delay  (
    .I(\counter_down[19]_GND_5_o_add_7_OUT<17> ),
    .O(\counter_down[19]_GND_5_o_add_7_OUT<17>_0 )
  );
  X_BUF   \counter_down[19]_GND_5_o_add_7_OUT<19>/counter_down[19]_GND_5_o_add_7_OUT<19>_AMUX_Delay  (
    .I(\counter_down[19]_GND_5_o_add_7_OUT<16> ),
    .O(\counter_down[19]_GND_5_o_add_7_OUT<16>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y37" ),
    .INIT ( 64'hFFFFFFFF00000000 ))
  \counter_down<19>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR5(counter_down[19]),
    .O(\counter_down<19>_rt_332 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X4Y37" ))
  \Madd_counter_down[19]_GND_5_o_add_7_OUT_xor<19>  (
    .CI(\Madd_counter_down[19]_GND_5_o_add_7_OUT_cy<15>_1009 ),
    .CYINIT(1'b0),
    .CO({\NLW_Madd_counter_down[19]_GND_5_o_add_7_OUT_xor<19>_CO[3]_UNCONNECTED , 
\NLW_Madd_counter_down[19]_GND_5_o_add_7_OUT_xor<19>_CO[2]_UNCONNECTED , \NLW_Madd_counter_down[19]_GND_5_o_add_7_OUT_xor<19>_CO[1]_UNCONNECTED , 
\NLW_Madd_counter_down[19]_GND_5_o_add_7_OUT_xor<19>_CO[0]_UNCONNECTED }),
    .DI({\NLW_Madd_counter_down[19]_GND_5_o_add_7_OUT_xor<19>_DI[3]_UNCONNECTED , 1'b0, 1'b0, 1'b0}),
    .O({\counter_down[19]_GND_5_o_add_7_OUT<19> , \counter_down[19]_GND_5_o_add_7_OUT<18> , \counter_down[19]_GND_5_o_add_7_OUT<17> , 
\counter_down[19]_GND_5_o_add_7_OUT<16> }),
    .S({\counter_down<19>_rt_332 , \counter_down<18>_rt_339 , \counter_down<17>_rt_342 , \counter_down<16>_rt_345 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y37" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter_down<18>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(counter_down[18]),
    .ADR5(1'b1),
    .O(\counter_down<18>_rt_339 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y37" ),
    .INIT ( 32'h00000000 ))
  \N1_20.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_20.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y37" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter_down<17>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(counter_down[17]),
    .ADR5(1'b1),
    .O(\counter_down<17>_rt_342 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y37" ),
    .INIT ( 32'h00000000 ))
  \N1_19.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_19.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y37" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter_down<16>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(counter_down[16]),
    .ADR5(1'b1),
    .O(\counter_down<16>_rt_345 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y37" ),
    .INIT ( 32'h00000000 ))
  \N1_18.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_18.A5LUT_O_UNCONNECTED )
  );
  X_IPAD #(
    .LOC ( "PAD183" ))
  nut_down_174 (
    .PAD(nut_down)
  );
  X_BUF #(
    .LOC ( "PAD183" ))
  nut_down_IBUF (
    .O(nut_down_IBUF_352),
    .I(nut_down)
  );
  X_BUF #(
    .LOC ( "PAD183" ))
  \ProtoComp10.IMUX  (
    .I(nut_down_IBUF_352),
    .O(nut_down_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD120" ))
  clk_178 (
    .PAD(clk)
  );
  X_BUF #(
    .LOC ( "PAD120" ))
  \clk_BUFGP/IBUFG  (
    .O(\clk_BUFGP/IBUFG_355 ),
    .I(clk)
  );
  X_BUF #(
    .LOC ( "PAD120" ))
  \ProtoComp10.IMUX.1  (
    .I(\clk_BUFGP/IBUFG_355 ),
    .O(\clk_BUFGP/IBUFG_0 )
  );
  X_OPAD #(
    .LOC ( "PAD11" ))
  \seg<0>  (
    .PAD(seg[0])
  );
  X_OBUF #(
    .LOC ( "PAD11" ))
  seg_0_OBUF (
    .I(seg_0_OBUF_0),
    .O(seg[0])
  );
  X_OPAD #(
    .LOC ( "PAD10" ))
  \seg<1>  (
    .PAD(seg[1])
  );
  X_OBUF #(
    .LOC ( "PAD10" ))
  seg_1_OBUF (
    .I(seg_1_OBUF_0),
    .O(seg[1])
  );
  X_OPAD #(
    .LOC ( "PAD6" ))
  \seg<2>  (
    .PAD(seg[2])
  );
  X_OBUF #(
    .LOC ( "PAD6" ))
  seg_2_OBUF (
    .I(seg_2_OBUF_1023),
    .O(seg[2])
  );
  X_OPAD #(
    .LOC ( "PAD9" ))
  \seg<3>  (
    .PAD(seg[3])
  );
  X_OBUF #(
    .LOC ( "PAD9" ))
  seg_3_OBUF (
    .I(seg_3_OBUF_906),
    .O(seg[3])
  );
  X_OPAD #(
    .LOC ( "PAD13" ))
  \seg<4>  (
    .PAD(seg[4])
  );
  X_OBUF #(
    .LOC ( "PAD13" ))
  seg_4_OBUF (
    .I(seg_4_OBUF_1024),
    .O(seg[4])
  );
  X_OPAD #(
    .LOC ( "PAD25" ))
  \seg<5>  (
    .PAD(seg[5])
  );
  X_OBUF #(
    .LOC ( "PAD25" ))
  seg_5_OBUF (
    .I(seg_5_OBUF_0),
    .O(seg[5])
  );
  X_OPAD #(
    .LOC ( "PAD5" ))
  \seg<6>  (
    .PAD(seg[6])
  );
  X_OBUF #(
    .LOC ( "PAD5" ))
  seg_6_OBUF (
    .I(seg_6_OBUF_892),
    .O(seg[6])
  );
  X_OPAD #(
    .LOC ( "PAD29" ))
  \digit<0>  (
    .PAD(digit[0])
  );
  X_OBUF #(
    .LOC ( "PAD29" ))
  digit_0_OBUF (
    .I(digit_0_OBUF_0),
    .O(digit[0])
  );
  X_OPAD #(
    .LOC ( "PAD26" ))
  \digit<1>  (
    .PAD(digit[1])
  );
  X_OBUF #(
    .LOC ( "PAD26" ))
  digit_1_OBUF (
    .I(1'b1),
    .O(digit[1])
  );
  X_OPAD #(
    .LOC ( "PAD33" ))
  \digit<2>  (
    .PAD(digit[2])
  );
  X_OBUF #(
    .LOC ( "PAD33" ))
  digit_2_OBUF (
    .I(1'b1),
    .O(digit[2])
  );
  X_OPAD #(
    .LOC ( "PAD39" ))
  \digit<3>  (
    .PAD(digit[3])
  );
  X_OBUF #(
    .LOC ( "PAD39" ))
  digit_3_OBUF (
    .I(1'b1),
    .O(digit[3])
  );
  X_OPAD #(
    .LOC ( "PAD27" ))
  \digit<4>  (
    .PAD(digit[4])
  );
  X_OBUF #(
    .LOC ( "PAD27" ))
  digit_4_OBUF (
    .I(1'b1),
    .O(digit[4])
  );
  X_OPAD #(
    .LOC ( "PAD34" ))
  \digit<5>  (
    .PAD(digit[5])
  );
  X_OBUF #(
    .LOC ( "PAD34" ))
  digit_5_OBUF (
    .I(1'b1),
    .O(digit[5])
  );
  X_IPAD #(
    .LOC ( "PAD185" ))
  nut_up_221 (
    .PAD(nut_up)
  );
  X_BUF #(
    .LOC ( "PAD185" ))
  nut_up_IBUF (
    .O(nut_up_IBUF_384),
    .I(nut_up)
  );
  X_BUF #(
    .LOC ( "PAD185" ))
  \ProtoComp10.IMUX.2  (
    .I(nut_up_IBUF_384),
    .O(nut_up_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD159" ))
  reset_225 (
    .PAD(reset)
  );
  X_BUF #(
    .LOC ( "PAD159" ))
  reset_IBUF (
    .O(reset_IBUF_387),
    .I(reset)
  );
  X_BUF #(
    .LOC ( "PAD159" ))
  \ProtoComp10.IMUX.3  (
    .I(reset_IBUF_387),
    .O(reset_IBUF_0)
  );
  X_CKBUF #(
    .LOC ( "BUFGMUX_X3Y13" ))
  \clk_BUFGP/BUFG  (
    .I(\clk_BUFGP/IBUFG_0 ),
    .O(clk_BUFGP)
  );
  X_BUF   \seg_6_OBUF/seg_6_OBUF_DMUX_Delay  (
    .I(seg_0_OBUF_392),
    .O(seg_0_OBUF_0)
  );
  X_BUF   \seg_6_OBUF/seg_6_OBUF_AMUX_Delay  (
    .I(seg_1_OBUF_398),
    .O(seg_1_OBUF_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y59" ),
    .INIT ( 64'hF0C3F3C0F0C3F3C0 ))
  \seg<6>1  (
    .ADR0(1'b1),
    .ADR1(count[1]),
    .ADR2(count[3]),
    .ADR3(count[2]),
    .ADR4(count[0]),
    .ADR5(1'b1),
    .O(seg_6_OBUF_892)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y59" ),
    .INIT ( 32'hFCC3F0C3 ))
  \seg<0>1  (
    .ADR0(1'b1),
    .ADR1(count[1]),
    .ADR2(count[3]),
    .ADR3(count[2]),
    .ADR4(count[0]),
    .O(seg_0_OBUF_392)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y59" ),
    .INIT ( 64'hFFFCCFCCFFFCCFCC ))
  Mram_seg21 (
    .ADR0(1'b1),
    .ADR1(count[0]),
    .ADR2(count[1]),
    .ADR3(count[2]),
    .ADR4(count[3]),
    .ADR5(1'b1),
    .O(seg_2_OBUF_1023)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y59" ),
    .INIT ( 32'hFFF0C0FC ))
  Mram_seg111 (
    .ADR0(1'b1),
    .ADR1(count[0]),
    .ADR2(count[1]),
    .ADR3(count[2]),
    .ADR4(count[3]),
    .O(seg_1_OBUF_398)
  );
  X_FF #(
    .LOC ( "SLICE_X5Y34" ),
    .INIT ( 1'b0 ))
  counter_down_5 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(\counter_down[19]_GND_5_o_mux_10_OUT<5> ),
    .O(counter_down[5]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y34" ),
    .INIT ( 64'h0FF0000000000000 ))
  \Mmux_counter_down[19]_GND_5_o_mux_10_OUT161  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(nut_down_sync[1]),
    .ADR3(nut_down_sta_1031),
    .ADR4(\counter_down[19]_GND_5_o_add_7_OUT<5>_0 ),
    .ADR5(n002035_1032),
    .O(\counter_down[19]_GND_5_o_mux_10_OUT<5> )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y34" ),
    .INIT ( 1'b0 ))
  counter_down_4 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(\counter_down[19]_GND_5_o_mux_10_OUT<4> ),
    .O(counter_down[4]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y34" ),
    .INIT ( 64'h0FF0000000000000 ))
  \Mmux_counter_down[19]_GND_5_o_mux_10_OUT151  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(nut_down_sync[1]),
    .ADR3(nut_down_sta_1031),
    .ADR4(\counter_down[19]_GND_5_o_add_7_OUT<4>_0 ),
    .ADR5(n002035_1032),
    .O(\counter_down[19]_GND_5_o_mux_10_OUT<4> )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y34" ),
    .INIT ( 1'b0 ))
  counter_down_3 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(\counter_down[19]_GND_5_o_mux_10_OUT<3> ),
    .O(counter_down[3]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y34" ),
    .INIT ( 64'h0FF0000000000000 ))
  \Mmux_counter_down[19]_GND_5_o_mux_10_OUT141  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(nut_down_sync[1]),
    .ADR3(nut_down_sta_1031),
    .ADR4(\counter_down[19]_GND_5_o_add_7_OUT<3>_0 ),
    .ADR5(n002035_1032),
    .O(\counter_down[19]_GND_5_o_mux_10_OUT<3> )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y34" ),
    .INIT ( 1'b0 ))
  counter_down_2 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(\counter_down[19]_GND_5_o_mux_10_OUT<2> ),
    .O(counter_down[2]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y34" ),
    .INIT ( 64'h0FF0000000000000 ))
  \Mmux_counter_down[19]_GND_5_o_mux_10_OUT131  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(nut_down_sync[1]),
    .ADR3(nut_down_sta_1031),
    .ADR4(\counter_down[19]_GND_5_o_add_7_OUT<2>_0 ),
    .ADR5(n002035_1032),
    .O(\counter_down[19]_GND_5_o_mux_10_OUT<2> )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y35" ),
    .INIT ( 1'b0 ))
  counter_down_9 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(\counter_down[19]_GND_5_o_mux_10_OUT<9> ),
    .O(counter_down[9]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y35" ),
    .INIT ( 64'h0FF0000000000000 ))
  \Mmux_counter_down[19]_GND_5_o_mux_10_OUT201  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(nut_down_sync[1]),
    .ADR3(nut_down_sta_1031),
    .ADR4(\counter_down[19]_GND_5_o_add_7_OUT<9>_0 ),
    .ADR5(n002035_1032),
    .O(\counter_down[19]_GND_5_o_mux_10_OUT<9> )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y35" ),
    .INIT ( 1'b0 ))
  counter_down_8 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(\counter_down[19]_GND_5_o_mux_10_OUT<8> ),
    .O(counter_down[8]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y35" ),
    .INIT ( 64'h0FF0000000000000 ))
  \Mmux_counter_down[19]_GND_5_o_mux_10_OUT191  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(nut_down_sync[1]),
    .ADR3(nut_down_sta_1031),
    .ADR4(\counter_down[19]_GND_5_o_add_7_OUT<8>_0 ),
    .ADR5(n002035_1032),
    .O(\counter_down[19]_GND_5_o_mux_10_OUT<8> )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y35" ),
    .INIT ( 1'b0 ))
  counter_down_7 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(\counter_down[19]_GND_5_o_mux_10_OUT<7> ),
    .O(counter_down[7]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y35" ),
    .INIT ( 64'h0FF0000000000000 ))
  \Mmux_counter_down[19]_GND_5_o_mux_10_OUT181  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(nut_down_sync[1]),
    .ADR3(nut_down_sta_1031),
    .ADR4(\counter_down[19]_GND_5_o_add_7_OUT<7>_0 ),
    .ADR5(n002035_1032),
    .O(\counter_down[19]_GND_5_o_mux_10_OUT<7> )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y35" ),
    .INIT ( 1'b0 ))
  counter_down_6 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(\counter_down[19]_GND_5_o_mux_10_OUT<6> ),
    .O(counter_down[6]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y35" ),
    .INIT ( 64'h0FF0000000000000 ))
  \Mmux_counter_down[19]_GND_5_o_mux_10_OUT171  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(nut_down_sync[1]),
    .ADR3(nut_down_sta_1031),
    .ADR4(\counter_down[19]_GND_5_o_add_7_OUT<6>_0 ),
    .ADR5(n002035_1032),
    .O(\counter_down[19]_GND_5_o_mux_10_OUT<6> )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y36" ),
    .INIT ( 1'b0 ))
  counter_down_13 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(\counter_down[19]_GND_5_o_mux_10_OUT<13> ),
    .O(counter_down[13]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y36" ),
    .INIT ( 64'h0FF0000000000000 ))
  \Mmux_counter_down[19]_GND_5_o_mux_10_OUT51  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(nut_down_sync[1]),
    .ADR3(nut_down_sta_1031),
    .ADR4(\counter_down[19]_GND_5_o_add_7_OUT<13>_0 ),
    .ADR5(n0020),
    .O(\counter_down[19]_GND_5_o_mux_10_OUT<13> )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y36" ),
    .INIT ( 1'b0 ))
  counter_down_12 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(\counter_down[19]_GND_5_o_mux_10_OUT<12> ),
    .O(counter_down[12]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y36" ),
    .INIT ( 64'h0FF0000000000000 ))
  \Mmux_counter_down[19]_GND_5_o_mux_10_OUT41  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(nut_down_sync[1]),
    .ADR3(nut_down_sta_1031),
    .ADR4(\counter_down[19]_GND_5_o_add_7_OUT<12>_0 ),
    .ADR5(n0020),
    .O(\counter_down[19]_GND_5_o_mux_10_OUT<12> )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y36" ),
    .INIT ( 1'b0 ))
  counter_down_11 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(\counter_down[19]_GND_5_o_mux_10_OUT<11> ),
    .O(counter_down[11]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y36" ),
    .INIT ( 64'h0FF0000000000000 ))
  \Mmux_counter_down[19]_GND_5_o_mux_10_OUT31  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(nut_down_sync[1]),
    .ADR3(nut_down_sta_1031),
    .ADR4(\counter_down[19]_GND_5_o_add_7_OUT<11>_0 ),
    .ADR5(n0020),
    .O(\counter_down[19]_GND_5_o_mux_10_OUT<11> )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y36" ),
    .INIT ( 1'b0 ))
  counter_down_10 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(\counter_down[19]_GND_5_o_mux_10_OUT<10> ),
    .O(counter_down[10]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y36" ),
    .INIT ( 64'h0FF0000000000000 ))
  \Mmux_counter_down[19]_GND_5_o_mux_10_OUT21  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(nut_down_sync[1]),
    .ADR3(nut_down_sta_1031),
    .ADR4(\counter_down[19]_GND_5_o_add_7_OUT<10>_0 ),
    .ADR5(n0020),
    .O(\counter_down[19]_GND_5_o_mux_10_OUT<10> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y37" ),
    .INIT ( 64'hC000000000000000 ))
  n002034_SW1 (
    .ADR0(1'b1),
    .ADR1(counter_down[15]),
    .ADR2(counter_down[19]),
    .ADR3(counter_down[18]),
    .ADR4(counter_down[17]),
    .ADR5(counter_down[16]),
    .O(N4)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y37" ),
    .INIT ( 64'hE000000000000000 ))
  n002034_SW0 (
    .ADR0(counter_down[14]),
    .ADR1(counter_down[15]),
    .ADR2(counter_down[17]),
    .ADR3(counter_down[18]),
    .ADR4(counter_down[19]),
    .ADR5(counter_down[16]),
    .O(N3)
  );
  X_FF #(
    .LOC ( "SLICE_X5Y37" ),
    .INIT ( 1'b0 ))
  counter_down_19 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(\counter_down[19]_GND_5_o_mux_10_OUT<19> ),
    .O(counter_down[19]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y37" ),
    .INIT ( 64'h0FF0000000000000 ))
  \Mmux_counter_down[19]_GND_5_o_mux_10_OUT111  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(nut_down_sync[1]),
    .ADR3(nut_down_sta_1031),
    .ADR4(\counter_down[19]_GND_5_o_add_7_OUT<19>_0 ),
    .ADR5(n0020),
    .O(\counter_down[19]_GND_5_o_mux_10_OUT<19> )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y37" ),
    .INIT ( 1'b0 ))
  counter_down_18 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(\counter_down[19]_GND_5_o_mux_10_OUT<18> ),
    .O(counter_down[18]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y37" ),
    .INIT ( 64'h0FF0000000000000 ))
  \Mmux_counter_down[19]_GND_5_o_mux_10_OUT101  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(nut_down_sync[1]),
    .ADR3(nut_down_sta_1031),
    .ADR4(\counter_down[19]_GND_5_o_add_7_OUT<18>_0 ),
    .ADR5(n0020),
    .O(\counter_down[19]_GND_5_o_mux_10_OUT<18> )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y39" ),
    .INIT ( 1'b0 ))
  counter_up_5 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(\counter_up[19]_GND_5_o_mux_4_OUT<5> ),
    .O(counter_up[5]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y39" ),
    .INIT ( 64'h0FF0000000000000 ))
  \Mmux_counter_up[19]_GND_5_o_mux_4_OUT161  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(nut_up_sync[1]),
    .ADR3(nut_up_sta_1028),
    .ADR4(\counter_up[19]_GND_5_o_add_1_OUT<5>_0 ),
    .ADR5(n000435_1029),
    .O(\counter_up[19]_GND_5_o_mux_4_OUT<5> )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y39" ),
    .INIT ( 1'b0 ))
  counter_up_4 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(\counter_up[19]_GND_5_o_mux_4_OUT<4> ),
    .O(counter_up[4]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y39" ),
    .INIT ( 64'h0FF0000000000000 ))
  \Mmux_counter_up[19]_GND_5_o_mux_4_OUT151  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(nut_up_sync[1]),
    .ADR3(nut_up_sta_1028),
    .ADR4(\counter_up[19]_GND_5_o_add_1_OUT<4>_0 ),
    .ADR5(n000435_1029),
    .O(\counter_up[19]_GND_5_o_mux_4_OUT<4> )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y39" ),
    .INIT ( 1'b0 ))
  counter_up_3 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(\counter_up[19]_GND_5_o_mux_4_OUT<3> ),
    .O(counter_up[3]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y39" ),
    .INIT ( 64'h0FF0000000000000 ))
  \Mmux_counter_up[19]_GND_5_o_mux_4_OUT141  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(nut_up_sync[1]),
    .ADR3(nut_up_sta_1028),
    .ADR4(\counter_up[19]_GND_5_o_add_1_OUT<3>_0 ),
    .ADR5(n000435_1029),
    .O(\counter_up[19]_GND_5_o_mux_4_OUT<3> )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y39" ),
    .INIT ( 1'b0 ))
  counter_up_2 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(\counter_up[19]_GND_5_o_mux_4_OUT<2> ),
    .O(counter_up[2]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y39" ),
    .INIT ( 64'h0FF0000000000000 ))
  \Mmux_counter_up[19]_GND_5_o_mux_4_OUT131  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(nut_up_sync[1]),
    .ADR3(nut_up_sta_1028),
    .ADR4(\counter_up[19]_GND_5_o_add_1_OUT<2>_0 ),
    .ADR5(n000435_1029),
    .O(\counter_up[19]_GND_5_o_mux_4_OUT<2> )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y40" ),
    .INIT ( 1'b0 ))
  counter_up_9 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(\counter_up[19]_GND_5_o_mux_4_OUT<9> ),
    .O(counter_up[9]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y40" ),
    .INIT ( 64'h0FF0000000000000 ))
  \Mmux_counter_up[19]_GND_5_o_mux_4_OUT201  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(nut_up_sync[1]),
    .ADR3(nut_up_sta_1028),
    .ADR4(\counter_up[19]_GND_5_o_add_1_OUT<9>_0 ),
    .ADR5(n000435_1029),
    .O(\counter_up[19]_GND_5_o_mux_4_OUT<9> )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y40" ),
    .INIT ( 1'b0 ))
  counter_up_8 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(\counter_up[19]_GND_5_o_mux_4_OUT<8> ),
    .O(counter_up[8]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y40" ),
    .INIT ( 64'h0FF0000000000000 ))
  \Mmux_counter_up[19]_GND_5_o_mux_4_OUT191  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(nut_up_sync[1]),
    .ADR3(nut_up_sta_1028),
    .ADR4(\counter_up[19]_GND_5_o_add_1_OUT<8>_0 ),
    .ADR5(n000435_1029),
    .O(\counter_up[19]_GND_5_o_mux_4_OUT<8> )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y40" ),
    .INIT ( 1'b0 ))
  counter_up_7 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(\counter_up[19]_GND_5_o_mux_4_OUT<7> ),
    .O(counter_up[7]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y40" ),
    .INIT ( 64'h0FF0000000000000 ))
  \Mmux_counter_up[19]_GND_5_o_mux_4_OUT181  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(nut_up_sync[1]),
    .ADR3(nut_up_sta_1028),
    .ADR4(\counter_up[19]_GND_5_o_add_1_OUT<7>_0 ),
    .ADR5(n000435_1029),
    .O(\counter_up[19]_GND_5_o_mux_4_OUT<7> )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y40" ),
    .INIT ( 1'b0 ))
  counter_up_6 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(\counter_up[19]_GND_5_o_mux_4_OUT<6> ),
    .O(counter_up[6]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y40" ),
    .INIT ( 64'h0FF0000000000000 ))
  \Mmux_counter_up[19]_GND_5_o_mux_4_OUT171  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(nut_up_sync[1]),
    .ADR3(nut_up_sta_1028),
    .ADR4(\counter_up[19]_GND_5_o_add_1_OUT<6>_0 ),
    .ADR5(n000435_1029),
    .O(\counter_up[19]_GND_5_o_mux_4_OUT<6> )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y41" ),
    .INIT ( 1'b0 ))
  counter_up_13 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(\counter_up[19]_GND_5_o_mux_4_OUT<13> ),
    .O(counter_up[13]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y41" ),
    .INIT ( 64'h0FF0000000000000 ))
  \Mmux_counter_up[19]_GND_5_o_mux_4_OUT51  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(nut_up_sync[1]),
    .ADR3(nut_up_sta_1028),
    .ADR4(\counter_up[19]_GND_5_o_add_1_OUT<13>_0 ),
    .ADR5(n0004),
    .O(\counter_up[19]_GND_5_o_mux_4_OUT<13> )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y41" ),
    .INIT ( 1'b0 ))
  counter_up_12 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(\counter_up[19]_GND_5_o_mux_4_OUT<12> ),
    .O(counter_up[12]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y41" ),
    .INIT ( 64'h0FF0000000000000 ))
  \Mmux_counter_up[19]_GND_5_o_mux_4_OUT41  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(nut_up_sync[1]),
    .ADR3(nut_up_sta_1028),
    .ADR4(\counter_up[19]_GND_5_o_add_1_OUT<12>_0 ),
    .ADR5(n0004),
    .O(\counter_up[19]_GND_5_o_mux_4_OUT<12> )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y41" ),
    .INIT ( 1'b0 ))
  counter_up_11 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(\counter_up[19]_GND_5_o_mux_4_OUT<11> ),
    .O(counter_up[11]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y41" ),
    .INIT ( 64'h0FF0000000000000 ))
  \Mmux_counter_up[19]_GND_5_o_mux_4_OUT31  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(nut_up_sync[1]),
    .ADR3(nut_up_sta_1028),
    .ADR4(\counter_up[19]_GND_5_o_add_1_OUT<11>_0 ),
    .ADR5(n0004),
    .O(\counter_up[19]_GND_5_o_mux_4_OUT<11> )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y41" ),
    .INIT ( 1'b0 ))
  counter_up_10 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(\counter_up[19]_GND_5_o_mux_4_OUT<10> ),
    .O(counter_up[10]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y41" ),
    .INIT ( 64'h0FF0000000000000 ))
  \Mmux_counter_up[19]_GND_5_o_mux_4_OUT21  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(nut_up_sync[1]),
    .ADR3(nut_up_sta_1028),
    .ADR4(\counter_up[19]_GND_5_o_add_1_OUT<10>_0 ),
    .ADR5(n0004),
    .O(\counter_up[19]_GND_5_o_mux_4_OUT<10> )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y42" ),
    .INIT ( 1'b0 ))
  counter_up_17 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(\counter_up[19]_GND_5_o_mux_4_OUT<17> ),
    .O(counter_up[17]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y42" ),
    .INIT ( 64'h0FF0000000000000 ))
  \Mmux_counter_up[19]_GND_5_o_mux_4_OUT91  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(nut_up_sync[1]),
    .ADR3(nut_up_sta_1028),
    .ADR4(\counter_up[19]_GND_5_o_add_1_OUT<17>_0 ),
    .ADR5(n0004),
    .O(\counter_up[19]_GND_5_o_mux_4_OUT<17> )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y42" ),
    .INIT ( 1'b0 ))
  counter_up_16 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(\counter_up[19]_GND_5_o_mux_4_OUT<16> ),
    .O(counter_up[16]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y42" ),
    .INIT ( 64'h0FF0000000000000 ))
  \Mmux_counter_up[19]_GND_5_o_mux_4_OUT81  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(nut_up_sync[1]),
    .ADR3(nut_up_sta_1028),
    .ADR4(\counter_up[19]_GND_5_o_add_1_OUT<16>_0 ),
    .ADR5(n0004),
    .O(\counter_up[19]_GND_5_o_mux_4_OUT<16> )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y42" ),
    .INIT ( 1'b0 ))
  counter_up_15 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(\counter_up[19]_GND_5_o_mux_4_OUT<15> ),
    .O(counter_up[15]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y42" ),
    .INIT ( 64'h0FF0000000000000 ))
  \Mmux_counter_up[19]_GND_5_o_mux_4_OUT71  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(nut_up_sync[1]),
    .ADR3(nut_up_sta_1028),
    .ADR4(\counter_up[19]_GND_5_o_add_1_OUT<15>_0 ),
    .ADR5(n0004),
    .O(\counter_up[19]_GND_5_o_mux_4_OUT<15> )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y42" ),
    .INIT ( 1'b0 ))
  counter_up_14 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(\counter_up[19]_GND_5_o_mux_4_OUT<14> ),
    .O(counter_up[14]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y42" ),
    .INIT ( 64'h0FF0000000000000 ))
  \Mmux_counter_up[19]_GND_5_o_mux_4_OUT61  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(nut_up_sync[1]),
    .ADR3(nut_up_sta_1028),
    .ADR4(\counter_up[19]_GND_5_o_add_1_OUT<14>_0 ),
    .ADR5(n0004),
    .O(\counter_up[19]_GND_5_o_mux_4_OUT<14> )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y35" ),
    .INIT ( 1'b0 ))
  counter_down_1 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(\counter_down[19]_GND_5_o_mux_10_OUT<1> ),
    .O(counter_down[1]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y35" ),
    .INIT ( 64'h0FF0000000000000 ))
  \Mmux_counter_down[19]_GND_5_o_mux_10_OUT121  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(nut_down_sync[1]),
    .ADR3(nut_down_sta_1031),
    .ADR4(\counter_down[19]_GND_5_o_add_7_OUT<1>_0 ),
    .ADR5(n002035_1032),
    .O(\counter_down[19]_GND_5_o_mux_10_OUT<1> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y35" ),
    .INIT ( 64'h0000D0502FAFFFFF ))
  n002035_1 (
    .ADR0(counter_down[9]),
    .ADR1(n002032_1035),
    .ADR2(n00203),
    .ADR3(n002031_1037),
    .ADR4(N4),
    .ADR5(N3),
    .O(n002035_1032)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y35" ),
    .INIT ( 64'h0000D0502FAFFFFF ))
  n002035 (
    .ADR0(counter_down[9]),
    .ADR1(n002032_1035),
    .ADR2(n00203),
    .ADR3(n002031_1037),
    .ADR4(N4),
    .ADR5(N3),
    .O(n0020)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y35" ),
    .INIT ( 1'b0 ))
  counter_down_0 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(\counter_down[19]_GND_5_o_mux_10_OUT<0> ),
    .O(counter_down[0]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y35" ),
    .INIT ( 64'h0FF0000000000000 ))
  \Mmux_counter_down[19]_GND_5_o_mux_10_OUT110  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(nut_down_sync[1]),
    .ADR3(nut_down_sta_1031),
    .ADR4(\counter_down[19]_GND_5_o_add_7_OUT<0>_0 ),
    .ADR5(n0020),
    .O(\counter_down[19]_GND_5_o_mux_10_OUT<0> )
  );
  X_BUF   \pulse_down/pulse_down_BMUX_Delay  (
    .I(nut_down_sta_pack_4),
    .O(nut_down_sta_1031)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y36" ),
    .INIT ( 64'h000000000000000F ))
  n002031 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(counter_down[12]),
    .ADR3(counter_down[13]),
    .ADR4(counter_down[11]),
    .ADR5(counter_down[10]),
    .O(n00203)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y36" ),
    .INIT ( 64'h00000000000000FF ))
  n002033 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(counter_down[7]),
    .ADR4(counter_down[8]),
    .ADR5(counter_down[6]),
    .O(n002032_1035)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y36" ),
    .INIT ( 1'b0 ))
  pulse_down (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(nut_down_sta_nut_down_prev_AND_8_o),
    .O(pulse_down_903),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y36" ),
    .INIT ( 64'h0000FF000000FF00 ))
  nut_down_sta_nut_down_prev_AND_8_o1 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(nut_down_sta_1031),
    .ADR4(nut_down_prev_1048),
    .ADR5(1'b1),
    .O(nut_down_sta_nut_down_prev_AND_8_o)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y36" ),
    .INIT ( 32'hCFC0CFC0 ))
  nut_down_sta_rstpot (
    .ADR0(1'b1),
    .ADR1(nut_down_sta_dpot1_1045),
    .ADR2(_n0111_inv1_cepot_cepot_1047),
    .ADR3(nut_down_sta_1031),
    .ADR4(1'b1),
    .O(nut_down_sta_rstpot_660)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y36" ),
    .INIT ( 1'b0 ))
  nut_down_sta (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(nut_down_sta_rstpot_660),
    .O(nut_down_sta_pack_4),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y36" ),
    .INIT ( 1'b0 ))
  nut_down_prev (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(nut_down_sta_1031),
    .O(nut_down_prev_1048),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y36" ),
    .INIT ( 64'hF0F8FCFCF8F8FCFC ))
  _n0111_inv1_cepot_cepot (
    .ADR0(counter_down[9]),
    .ADR1(counter_down[14]),
    .ADR2(counter_down[15]),
    .ADR3(n002032_1035),
    .ADR4(n00203),
    .ADR5(n002031_1037),
    .O(_n0111_inv1_cepot_cepot_1047)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y37" ),
    .INIT ( 1'b0 ))
  counter_down_17 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(\counter_down[19]_GND_5_o_mux_10_OUT<17> ),
    .O(counter_down[17]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y37" ),
    .INIT ( 64'h0FF0000000000000 ))
  \Mmux_counter_down[19]_GND_5_o_mux_10_OUT91  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(nut_down_sync[1]),
    .ADR3(nut_down_sta_1031),
    .ADR4(\counter_down[19]_GND_5_o_add_7_OUT<17>_0 ),
    .ADR5(n0020),
    .O(\counter_down[19]_GND_5_o_mux_10_OUT<17> )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y37" ),
    .INIT ( 1'b0 ))
  counter_down_16 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(\counter_down[19]_GND_5_o_mux_10_OUT<16> ),
    .O(counter_down[16]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y37" ),
    .INIT ( 64'h0FF0000000000000 ))
  \Mmux_counter_down[19]_GND_5_o_mux_10_OUT81  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(nut_down_sync[1]),
    .ADR3(nut_down_sta_1031),
    .ADR4(\counter_down[19]_GND_5_o_add_7_OUT<16>_0 ),
    .ADR5(n0020),
    .O(\counter_down[19]_GND_5_o_mux_10_OUT<16> )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y37" ),
    .INIT ( 1'b0 ))
  counter_down_15 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(\counter_down[19]_GND_5_o_mux_10_OUT<15> ),
    .O(counter_down[15]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y37" ),
    .INIT ( 64'h0FF0000000000000 ))
  \Mmux_counter_down[19]_GND_5_o_mux_10_OUT71  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(nut_down_sync[1]),
    .ADR3(nut_down_sta_1031),
    .ADR4(\counter_down[19]_GND_5_o_add_7_OUT<15>_0 ),
    .ADR5(n0020),
    .O(\counter_down[19]_GND_5_o_mux_10_OUT<15> )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y37" ),
    .INIT ( 1'b0 ))
  counter_down_14 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(\counter_down[19]_GND_5_o_mux_10_OUT<14> ),
    .O(counter_down[14]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y37" ),
    .INIT ( 64'h0FF0000000000000 ))
  \Mmux_counter_down[19]_GND_5_o_mux_10_OUT61  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(nut_down_sync[1]),
    .ADR3(nut_down_sta_1031),
    .ADR4(\counter_down[19]_GND_5_o_add_7_OUT<14>_0 ),
    .ADR5(n0020),
    .O(\counter_down[19]_GND_5_o_mux_10_OUT<14> )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y41" ),
    .INIT ( 1'b0 ))
  counter_up_1 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(\counter_up[19]_GND_5_o_mux_4_OUT<1> ),
    .O(counter_up[1]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y41" ),
    .INIT ( 64'h0FF0000000000000 ))
  \Mmux_counter_up[19]_GND_5_o_mux_4_OUT121  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(nut_up_sync[1]),
    .ADR3(nut_up_sta_1028),
    .ADR4(\counter_up[19]_GND_5_o_add_1_OUT<1>_0 ),
    .ADR5(n000435_1029),
    .O(\counter_up[19]_GND_5_o_mux_4_OUT<1> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y41" ),
    .INIT ( 64'h0000D0502FAFFFFF ))
  n000435_1 (
    .ADR0(counter_up[9]),
    .ADR1(n000432_1040),
    .ADR2(n00043),
    .ADR3(n000431_1042),
    .ADR4(N11),
    .ADR5(N0),
    .O(n000435_1029)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y41" ),
    .INIT ( 64'h0000D0502FAFFFFF ))
  n000435 (
    .ADR0(counter_up[9]),
    .ADR1(n000432_1040),
    .ADR2(n00043),
    .ADR3(n000431_1042),
    .ADR4(N11),
    .ADR5(N0),
    .O(n0004)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y41" ),
    .INIT ( 1'b0 ))
  counter_up_0 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(\counter_up[19]_GND_5_o_mux_4_OUT<0> ),
    .O(counter_up[0]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y41" ),
    .INIT ( 64'h0FF0000000000000 ))
  \Mmux_counter_up[19]_GND_5_o_mux_4_OUT110  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(nut_up_sync[1]),
    .ADR3(nut_up_sta_1028),
    .ADR4(\counter_up[19]_GND_5_o_add_1_OUT<0>_0 ),
    .ADR5(n0004),
    .O(\counter_up[19]_GND_5_o_mux_4_OUT<0> )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y42" ),
    .INIT ( 1'b0 ))
  nut_up_sync_1 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(nut_up_sync[0]),
    .O(nut_up_sync[1]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y42" ),
    .INIT ( 1'b0 ))
  nut_up_sync_0 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(nut_up_IBUF_0),
    .O(nut_up_sync[0]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y42" ),
    .INIT ( 64'hFFFF7FFF80000000 ))
  nut_up_sta_dpot1 (
    .ADR0(counter_up[19]),
    .ADR1(counter_up[18]),
    .ADR2(counter_up[17]),
    .ADR3(counter_up[16]),
    .ADR4(nut_up_sync[1]),
    .ADR5(nut_up_sta_1028),
    .O(nut_up_sta_dpot1_1046)
  );
  X_BUF   \seg_4_OBUF/seg_4_OBUF_CMUX_Delay  (
    .I(seg_5_OBUF_739),
    .O(seg_5_OBUF_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y59" ),
    .INIT ( 64'hF0C0F0CCF0C0F0CC ))
  \seg<4>1  (
    .ADR0(1'b1),
    .ADR1(count[1]),
    .ADR2(count[3]),
    .ADR3(count[2]),
    .ADR4(count[0]),
    .ADR5(1'b1),
    .O(seg_4_OBUF_1024)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y59" ),
    .INIT ( 32'hF3C0FCC0 ))
  \seg<5>1  (
    .ADR0(1'b1),
    .ADR1(count[1]),
    .ADR2(count[3]),
    .ADR3(count[2]),
    .ADR4(count[0]),
    .O(seg_5_OBUF_739)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y34" ),
    .INIT ( 64'h7FFFFFFFFFFFFFFF ))
  n002032 (
    .ADR0(counter_down[4]),
    .ADR1(counter_down[5]),
    .ADR2(counter_down[3]),
    .ADR3(counter_down[2]),
    .ADR4(counter_down[1]),
    .ADR5(counter_down[0]),
    .O(n002031_1037)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y37" ),
    .INIT ( 1'b0 ))
  nut_down_sync_1 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(nut_down_sync[0]),
    .O(nut_down_sync[1]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y37" ),
    .INIT ( 1'b0 ))
  nut_down_sync_0 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(nut_down_IBUF_0),
    .O(nut_down_sync[0]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y37" ),
    .INIT ( 64'hFFFF7FFF80000000 ))
  nut_down_sta_dpot1 (
    .ADR0(counter_down[19]),
    .ADR1(counter_down[18]),
    .ADR2(counter_down[17]),
    .ADR3(counter_down[16]),
    .ADR4(nut_down_sync[1]),
    .ADR5(nut_down_sta_1031),
    .O(nut_down_sta_dpot1_1045)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y39" ),
    .INIT ( 64'h7FFFFFFFFFFFFFFF ))
  n000432 (
    .ADR0(counter_up[4]),
    .ADR1(counter_up[5]),
    .ADR2(counter_up[3]),
    .ADR3(counter_up[2]),
    .ADR4(counter_up[1]),
    .ADR5(counter_up[0]),
    .O(n000431_1042)
  );
  X_BUF   \pulse_up/pulse_up_BMUX_Delay  (
    .I(nut_up_sta_pack_4),
    .O(nut_up_sta_1028)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y41" ),
    .INIT ( 64'h000000000000000F ))
  n000431 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(counter_up[12]),
    .ADR3(counter_up[13]),
    .ADR4(counter_up[11]),
    .ADR5(counter_up[10]),
    .O(n00043)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y41" ),
    .INIT ( 64'h00000000000000FF ))
  n000433 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(counter_up[7]),
    .ADR4(counter_up[8]),
    .ADR5(counter_up[6]),
    .O(n000432_1040)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y41" ),
    .INIT ( 1'b0 ))
  pulse_up (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(nut_up_sta_nut_up_prev_AND_4_o),
    .O(pulse_up_902),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y41" ),
    .INIT ( 64'h0000FF000000FF00 ))
  nut_up_sta_nut_up_prev_AND_4_o1 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(nut_up_sta_1028),
    .ADR4(nut_up_prev_1052),
    .ADR5(1'b1),
    .O(nut_up_sta_nut_up_prev_AND_4_o)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y41" ),
    .INIT ( 32'hCFC0CFC0 ))
  nut_up_sta_rstpot (
    .ADR0(1'b1),
    .ADR1(nut_up_sta_dpot1_1046),
    .ADR2(_n0109_inv1_cepot_cepot_1051),
    .ADR3(nut_up_sta_1028),
    .ADR4(1'b1),
    .O(nut_up_sta_rstpot_790)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y41" ),
    .INIT ( 1'b0 ))
  nut_up_sta (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(nut_up_sta_rstpot_790),
    .O(nut_up_sta_pack_4),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y41" ),
    .INIT ( 1'b0 ))
  nut_up_prev (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(nut_up_sta_1028),
    .O(nut_up_prev_1052),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y41" ),
    .INIT ( 64'hF0F8FCFCF8F8FCFC ))
  _n0109_inv1_cepot_cepot (
    .ADR0(counter_up[9]),
    .ADR1(counter_up[14]),
    .ADR2(counter_up[15]),
    .ADR3(n000432_1040),
    .ADR4(n00043),
    .ADR5(n000431_1042),
    .O(_n0109_inv1_cepot_cepot_1051)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y42" ),
    .INIT ( 64'hC000000000000000 ))
  n000434_SW1 (
    .ADR0(1'b1),
    .ADR1(counter_up[15]),
    .ADR2(counter_up[19]),
    .ADR3(counter_up[18]),
    .ADR4(counter_up[17]),
    .ADR5(counter_up[16]),
    .O(N11)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y42" ),
    .INIT ( 64'hE000000000000000 ))
  n000434_SW0 (
    .ADR0(counter_up[14]),
    .ADR1(counter_up[15]),
    .ADR2(counter_up[17]),
    .ADR3(counter_up[18]),
    .ADR4(counter_up[19]),
    .ADR5(counter_up[16]),
    .O(N0)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y42" ),
    .INIT ( 1'b0 ))
  counter_up_19 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(\counter_up[19]_GND_5_o_mux_4_OUT<19> ),
    .O(counter_up[19]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y42" ),
    .INIT ( 64'h0FF0000000000000 ))
  \Mmux_counter_up[19]_GND_5_o_mux_4_OUT111  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(nut_up_sync[1]),
    .ADR3(nut_up_sta_1028),
    .ADR4(\counter_up[19]_GND_5_o_add_1_OUT<19>_0 ),
    .ADR5(n0004),
    .O(\counter_up[19]_GND_5_o_mux_4_OUT<19> )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y42" ),
    .INIT ( 1'b0 ))
  counter_up_18 (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(\counter_up[19]_GND_5_o_mux_4_OUT<18> ),
    .O(counter_up[18]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y42" ),
    .INIT ( 64'h0FF0000000000000 ))
  \Mmux_counter_up[19]_GND_5_o_mux_4_OUT101  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(nut_up_sync[1]),
    .ADR3(nut_up_sta_1028),
    .ADR4(\counter_up[19]_GND_5_o_add_1_OUT<18>_0 ),
    .ADR5(n0004),
    .O(\counter_up[19]_GND_5_o_mux_4_OUT<18> )
  );
  X_BUF   \cur_digit<2>/cur_digit<2>_BMUX_Delay  (
    .I(\cur_digit<1>_pack_3 ),
    .O(cur_digit[1])
  );
  X_FF #(
    .LOC ( "SLICE_X7Y58" ),
    .INIT ( 1'b0 ))
  cur_digit_2 (
    .CE(ref_counter[19]),
    .CLK(clk_BUFGP),
    .I(Mcount_cur_digit2),
    .O(cur_digit[2]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y58" ),
    .INIT ( 64'h0FF00F000FF00F00 ))
  \Mcount_cur_digit_xor<2>11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(cur_digit[0]),
    .ADR3(cur_digit[2]),
    .ADR4(cur_digit[1]),
    .ADR5(1'b1),
    .O(Mcount_cur_digit2)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y58" ),
    .INIT ( 32'h0F0F00F0 ))
  \Mcount_cur_digit_xor<1>11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(cur_digit[0]),
    .ADR3(cur_digit[2]),
    .ADR4(cur_digit[1]),
    .O(Mcount_cur_digit1)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y58" ),
    .INIT ( 1'b0 ))
  cur_digit_1 (
    .CE(ref_counter[19]),
    .CLK(clk_BUFGP),
    .I(Mcount_cur_digit1),
    .O(\cur_digit<1>_pack_3 ),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y58" ),
    .INIT ( 1'b0 ))
  cur_digit_0 (
    .CE(ref_counter[19]),
    .CLK(clk_BUFGP),
    .I(Mcount_cur_digit),
    .O(cur_digit[0]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y58" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \Mcount_cur_digit_xor<0>11_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(cur_digit[0]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(Mcount_cur_digit)
  );
  X_BUF   \count<3>/count<3>_DMUX_Delay  (
    .I(digit_0_OBUF_844),
    .O(digit_0_OBUF_0)
  );
  X_BUF   \count<3>/count<3>_CMUX_Delay  (
    .I(\count<2>_pack_11 ),
    .O(count[2])
  );
  X_BUF   \count<3>/count<3>_BMUX_Delay  (
    .I(\count<1>_pack_9 ),
    .O(count[1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y59" ),
    .INIT ( 64'hFFFFFF00FFFFFF00 ))
  _n0105_inv1 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(pulse_up_902),
    .ADR4(pulse_down_903),
    .ADR5(1'b1),
    .O(_n0105_inv)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y59" ),
    .INIT ( 32'hFEFEFEFE ))
  Mram_digit11 (
    .ADR0(cur_digit[2]),
    .ADR1(cur_digit[0]),
    .ADR2(cur_digit[1]),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(digit_0_OBUF_844)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y59" ),
    .INIT ( 64'hFCC3FC30FCC3FC30 ))
  \seg<3>1  (
    .ADR0(1'b1),
    .ADR1(count[1]),
    .ADR2(count[2]),
    .ADR3(count[3]),
    .ADR4(count[0]),
    .ADR5(1'b1),
    .O(seg_3_OBUF_906)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y59" ),
    .INIT ( 32'h7878E1E0 ))
  \count[3]_count[3]_mux_19_OUT<2>1  (
    .ADR0(pulse_up_902),
    .ADR1(count[1]),
    .ADR2(count[2]),
    .ADR3(count[3]),
    .ADR4(count[0]),
    .O(\count[3]_count[3]_mux_19_OUT<2> )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y59" ),
    .INIT ( 1'b0 ))
  count_2 (
    .CE(_n0105_inv),
    .CLK(clk_BUFGP),
    .I(\count[3]_count[3]_mux_19_OUT<2> ),
    .O(\count<2>_pack_11 ),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y59" ),
    .INIT ( 1'b0 ))
  count_3 (
    .CE(_n0105_inv),
    .CLK(clk_BUFGP),
    .I(\count[3]_count[3]_mux_19_OUT<3> ),
    .O(count[3]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y59" ),
    .INIT ( 64'h7B80FE017B80FE01 ))
  \count[3]_count[3]_mux_19_OUT<3>1  (
    .ADR0(count[1]),
    .ADR1(pulse_up_902),
    .ADR2(count[2]),
    .ADR3(count[3]),
    .ADR4(count[0]),
    .ADR5(1'b1),
    .O(\count[3]_count[3]_mux_19_OUT<3> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y59" ),
    .INIT ( 32'h62669998 ))
  \count[3]_count[3]_mux_19_OUT<1>1  (
    .ADR0(count[1]),
    .ADR1(pulse_up_902),
    .ADR2(count[2]),
    .ADR3(count[3]),
    .ADR4(count[0]),
    .O(\count[3]_count[3]_mux_19_OUT<1> )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y59" ),
    .INIT ( 1'b0 ))
  count_1 (
    .CE(_n0105_inv),
    .CLK(clk_BUFGP),
    .I(\count[3]_count[3]_mux_19_OUT<1> ),
    .O(\count<1>_pack_9 ),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y59" ),
    .INIT ( 1'b0 ))
  count_0 (
    .CE(_n0105_inv),
    .CLK(clk_BUFGP),
    .I(\count[3]_count[3]_mux_19_OUT<0> ),
    .O(count[0]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y59" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \count[3]_count[3]_mux_19_OUT<0>1_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(count[0]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\count[3]_count[3]_mux_19_OUT<0> )
  );
  X_ONE   NlwBlock_led_09_VCC (
    .O(VCC)
  );
  X_ZERO   NlwBlock_led_09_GND (
    .O(GND)
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

