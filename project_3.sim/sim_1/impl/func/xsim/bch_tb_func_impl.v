// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed Sep 17 12:31:48 2025
// Host        : LAPTOP-8R7VUQUT running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/srish/project_3/project_3.sim/sim_1/impl/func/xsim/bch_tb_func_impl.v
// Design      : bch_top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1157-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "7e059f55" *) 
(* NotValidForBitStream *)
module bch_top
   (data_in,
    received_word,
    corrected_word);
  input [6:0]data_in;
  input [14:0]received_word;
  output [14:0]corrected_word;

  wire [14:0]corrected_word;
  wire [14:0]corrected_word_OBUF;
  wire \corrected_word_OBUF[10]_inst_i_2_n_0 ;
  wire \corrected_word_OBUF[11]_inst_i_2_n_0 ;
  wire \corrected_word_OBUF[12]_inst_i_2_n_0 ;
  wire \corrected_word_OBUF[13]_inst_i_2_n_0 ;
  wire \corrected_word_OBUF[14]_inst_i_10_n_0 ;
  wire \corrected_word_OBUF[14]_inst_i_11_n_0 ;
  wire \corrected_word_OBUF[14]_inst_i_12_n_0 ;
  wire \corrected_word_OBUF[14]_inst_i_13_n_0 ;
  wire \corrected_word_OBUF[14]_inst_i_14_n_0 ;
  wire \corrected_word_OBUF[14]_inst_i_15_n_0 ;
  wire \corrected_word_OBUF[14]_inst_i_16_n_0 ;
  wire \corrected_word_OBUF[14]_inst_i_2_n_0 ;
  wire \corrected_word_OBUF[14]_inst_i_3_n_0 ;
  wire \corrected_word_OBUF[14]_inst_i_4_n_0 ;
  wire \corrected_word_OBUF[14]_inst_i_5_n_0 ;
  wire \corrected_word_OBUF[14]_inst_i_6_n_0 ;
  wire \corrected_word_OBUF[14]_inst_i_7_n_0 ;
  wire \corrected_word_OBUF[14]_inst_i_8_n_0 ;
  wire \corrected_word_OBUF[14]_inst_i_9_n_0 ;
  wire [14:0]received_word;
  wire [14:0]received_word_IBUF;

  OBUF \corrected_word_OBUF[0]_inst 
       (.I(corrected_word_OBUF[0]),
        .O(corrected_word[0]));
  LUT6 #(
    .INIT(64'hAAAA9AAAAAAAAAAA)) 
    \corrected_word_OBUF[0]_inst_i_1 
       (.I0(received_word_IBUF[0]),
        .I1(\corrected_word_OBUF[14]_inst_i_4_n_0 ),
        .I2(\corrected_word_OBUF[14]_inst_i_2_n_0 ),
        .I3(\corrected_word_OBUF[14]_inst_i_3_n_0 ),
        .I4(\corrected_word_OBUF[14]_inst_i_5_n_0 ),
        .I5(\corrected_word_OBUF[10]_inst_i_2_n_0 ),
        .O(corrected_word_OBUF[0]));
  OBUF \corrected_word_OBUF[10]_inst 
       (.I(corrected_word_OBUF[10]),
        .O(corrected_word[10]));
  LUT6 #(
    .INIT(64'hA6AAAAAAAAAAAAAA)) 
    \corrected_word_OBUF[10]_inst_i_1 
       (.I0(received_word_IBUF[10]),
        .I1(\corrected_word_OBUF[14]_inst_i_2_n_0 ),
        .I2(\corrected_word_OBUF[14]_inst_i_3_n_0 ),
        .I3(\corrected_word_OBUF[14]_inst_i_4_n_0 ),
        .I4(\corrected_word_OBUF[14]_inst_i_5_n_0 ),
        .I5(\corrected_word_OBUF[10]_inst_i_2_n_0 ),
        .O(corrected_word_OBUF[10]));
  LUT5 #(
    .INIT(32'h00000006)) 
    \corrected_word_OBUF[10]_inst_i_2 
       (.I0(\corrected_word_OBUF[14]_inst_i_14_n_0 ),
        .I1(\corrected_word_OBUF[14]_inst_i_15_n_0 ),
        .I2(\corrected_word_OBUF[14]_inst_i_12_n_0 ),
        .I3(\corrected_word_OBUF[14]_inst_i_13_n_0 ),
        .I4(\corrected_word_OBUF[14]_inst_i_16_n_0 ),
        .O(\corrected_word_OBUF[10]_inst_i_2_n_0 ));
  OBUF \corrected_word_OBUF[11]_inst 
       (.I(corrected_word_OBUF[11]),
        .O(corrected_word[11]));
  LUT6 #(
    .INIT(64'hA9AAAAAAAAAAAAAA)) 
    \corrected_word_OBUF[11]_inst_i_1 
       (.I0(received_word_IBUF[11]),
        .I1(\corrected_word_OBUF[14]_inst_i_5_n_0 ),
        .I2(\corrected_word_OBUF[14]_inst_i_2_n_0 ),
        .I3(\corrected_word_OBUF[14]_inst_i_3_n_0 ),
        .I4(\corrected_word_OBUF[14]_inst_i_4_n_0 ),
        .I5(\corrected_word_OBUF[11]_inst_i_2_n_0 ),
        .O(corrected_word_OBUF[11]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h10000010)) 
    \corrected_word_OBUF[11]_inst_i_2 
       (.I0(\corrected_word_OBUF[14]_inst_i_12_n_0 ),
        .I1(\corrected_word_OBUF[14]_inst_i_16_n_0 ),
        .I2(\corrected_word_OBUF[14]_inst_i_13_n_0 ),
        .I3(\corrected_word_OBUF[14]_inst_i_15_n_0 ),
        .I4(\corrected_word_OBUF[14]_inst_i_14_n_0 ),
        .O(\corrected_word_OBUF[11]_inst_i_2_n_0 ));
  OBUF \corrected_word_OBUF[12]_inst 
       (.I(corrected_word_OBUF[12]),
        .O(corrected_word[12]));
  LUT6 #(
    .INIT(64'h9AAAAAAAAAAAAAAA)) 
    \corrected_word_OBUF[12]_inst_i_1 
       (.I0(received_word_IBUF[12]),
        .I1(\corrected_word_OBUF[14]_inst_i_2_n_0 ),
        .I2(\corrected_word_OBUF[14]_inst_i_3_n_0 ),
        .I3(\corrected_word_OBUF[14]_inst_i_4_n_0 ),
        .I4(\corrected_word_OBUF[14]_inst_i_5_n_0 ),
        .I5(\corrected_word_OBUF[12]_inst_i_2_n_0 ),
        .O(corrected_word_OBUF[12]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00008200)) 
    \corrected_word_OBUF[12]_inst_i_2 
       (.I0(\corrected_word_OBUF[14]_inst_i_16_n_0 ),
        .I1(\corrected_word_OBUF[14]_inst_i_15_n_0 ),
        .I2(\corrected_word_OBUF[14]_inst_i_14_n_0 ),
        .I3(\corrected_word_OBUF[14]_inst_i_13_n_0 ),
        .I4(\corrected_word_OBUF[14]_inst_i_12_n_0 ),
        .O(\corrected_word_OBUF[12]_inst_i_2_n_0 ));
  OBUF \corrected_word_OBUF[13]_inst 
       (.I(corrected_word_OBUF[13]),
        .O(corrected_word[13]));
  LUT6 #(
    .INIT(64'hA9AAAAAAAAAAAAAA)) 
    \corrected_word_OBUF[13]_inst_i_1 
       (.I0(received_word_IBUF[13]),
        .I1(\corrected_word_OBUF[14]_inst_i_2_n_0 ),
        .I2(\corrected_word_OBUF[14]_inst_i_3_n_0 ),
        .I3(\corrected_word_OBUF[14]_inst_i_4_n_0 ),
        .I4(\corrected_word_OBUF[14]_inst_i_5_n_0 ),
        .I5(\corrected_word_OBUF[13]_inst_i_2_n_0 ),
        .O(corrected_word_OBUF[13]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h20000020)) 
    \corrected_word_OBUF[13]_inst_i_2 
       (.I0(\corrected_word_OBUF[14]_inst_i_12_n_0 ),
        .I1(\corrected_word_OBUF[14]_inst_i_16_n_0 ),
        .I2(\corrected_word_OBUF[14]_inst_i_13_n_0 ),
        .I3(\corrected_word_OBUF[14]_inst_i_15_n_0 ),
        .I4(\corrected_word_OBUF[14]_inst_i_14_n_0 ),
        .O(\corrected_word_OBUF[13]_inst_i_2_n_0 ));
  OBUF \corrected_word_OBUF[14]_inst 
       (.I(corrected_word_OBUF[14]),
        .O(corrected_word[14]));
  LUT6 #(
    .INIT(64'hAAAAAAA9AAAAAAAA)) 
    \corrected_word_OBUF[14]_inst_i_1 
       (.I0(received_word_IBUF[14]),
        .I1(\corrected_word_OBUF[14]_inst_i_2_n_0 ),
        .I2(\corrected_word_OBUF[14]_inst_i_3_n_0 ),
        .I3(\corrected_word_OBUF[14]_inst_i_4_n_0 ),
        .I4(\corrected_word_OBUF[14]_inst_i_5_n_0 ),
        .I5(\corrected_word_OBUF[14]_inst_i_6_n_0 ),
        .O(corrected_word_OBUF[14]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \corrected_word_OBUF[14]_inst_i_10 
       (.I0(received_word_IBUF[5]),
        .I1(received_word_IBUF[2]),
        .I2(received_word_IBUF[12]),
        .I3(received_word_IBUF[11]),
        .O(\corrected_word_OBUF[14]_inst_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \corrected_word_OBUF[14]_inst_i_11 
       (.I0(received_word_IBUF[4]),
        .I1(received_word_IBUF[0]),
        .I2(received_word_IBUF[7]),
        .I3(received_word_IBUF[6]),
        .O(\corrected_word_OBUF[14]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \corrected_word_OBUF[14]_inst_i_12 
       (.I0(received_word_IBUF[8]),
        .I1(received_word_IBUF[13]),
        .I2(received_word_IBUF[9]),
        .I3(received_word_IBUF[3]),
        .I4(received_word_IBUF[4]),
        .I5(received_word_IBUF[14]),
        .O(\corrected_word_OBUF[14]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \corrected_word_OBUF[14]_inst_i_13 
       (.I0(received_word_IBUF[10]),
        .I1(received_word_IBUF[5]),
        .I2(received_word_IBUF[9]),
        .I3(received_word_IBUF[14]),
        .I4(received_word_IBUF[0]),
        .I5(received_word_IBUF[4]),
        .O(\corrected_word_OBUF[14]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \corrected_word_OBUF[14]_inst_i_14 
       (.I0(received_word_IBUF[14]),
        .I1(received_word_IBUF[13]),
        .I2(received_word_IBUF[8]),
        .I3(received_word_IBUF[9]),
        .I4(received_word_IBUF[3]),
        .I5(received_word_IBUF[6]),
        .O(\corrected_word_OBUF[14]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \corrected_word_OBUF[14]_inst_i_15 
       (.I0(received_word_IBUF[12]),
        .I1(received_word_IBUF[11]),
        .I2(received_word_IBUF[2]),
        .I3(received_word_IBUF[1]),
        .I4(received_word_IBUF[4]),
        .I5(received_word_IBUF[7]),
        .O(\corrected_word_OBUF[14]_inst_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \corrected_word_OBUF[14]_inst_i_16 
       (.I0(received_word_IBUF[4]),
        .I1(received_word_IBUF[2]),
        .I2(received_word_IBUF[9]),
        .I3(received_word_IBUF[14]),
        .I4(received_word_IBUF[12]),
        .I5(received_word_IBUF[7]),
        .O(\corrected_word_OBUF[14]_inst_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \corrected_word_OBUF[14]_inst_i_2 
       (.I0(received_word_IBUF[14]),
        .I1(\corrected_word_OBUF[14]_inst_i_7_n_0 ),
        .I2(received_word_IBUF[12]),
        .I3(received_word_IBUF[6]),
        .I4(received_word_IBUF[3]),
        .O(\corrected_word_OBUF[14]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \corrected_word_OBUF[14]_inst_i_3 
       (.I0(received_word_IBUF[14]),
        .I1(\corrected_word_OBUF[14]_inst_i_8_n_0 ),
        .I2(received_word_IBUF[13]),
        .I3(received_word_IBUF[4]),
        .I4(received_word_IBUF[1]),
        .I5(\corrected_word_OBUF[14]_inst_i_9_n_0 ),
        .O(\corrected_word_OBUF[14]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h69969669)) 
    \corrected_word_OBUF[14]_inst_i_4 
       (.I0(received_word_IBUF[13]),
        .I1(\corrected_word_OBUF[14]_inst_i_10_n_0 ),
        .I2(received_word_IBUF[6]),
        .I3(received_word_IBUF[8]),
        .I4(received_word_IBUF[10]),
        .O(\corrected_word_OBUF[14]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h69969669)) 
    \corrected_word_OBUF[14]_inst_i_5 
       (.I0(received_word_IBUF[14]),
        .I1(received_word_IBUF[11]),
        .I2(received_word_IBUF[5]),
        .I3(received_word_IBUF[2]),
        .I4(\corrected_word_OBUF[14]_inst_i_11_n_0 ),
        .O(\corrected_word_OBUF[14]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h20020000)) 
    \corrected_word_OBUF[14]_inst_i_6 
       (.I0(\corrected_word_OBUF[14]_inst_i_12_n_0 ),
        .I1(\corrected_word_OBUF[14]_inst_i_13_n_0 ),
        .I2(\corrected_word_OBUF[14]_inst_i_14_n_0 ),
        .I3(\corrected_word_OBUF[14]_inst_i_15_n_0 ),
        .I4(\corrected_word_OBUF[14]_inst_i_16_n_0 ),
        .O(\corrected_word_OBUF[14]_inst_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \corrected_word_OBUF[14]_inst_i_7 
       (.I0(received_word_IBUF[9]),
        .I1(received_word_IBUF[7]),
        .I2(received_word_IBUF[13]),
        .I3(received_word_IBUF[11]),
        .O(\corrected_word_OBUF[14]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \corrected_word_OBUF[14]_inst_i_8 
       (.I0(received_word_IBUF[3]),
        .I1(received_word_IBUF[6]),
        .O(\corrected_word_OBUF[14]_inst_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \corrected_word_OBUF[14]_inst_i_9 
       (.I0(received_word_IBUF[5]),
        .I1(received_word_IBUF[10]),
        .O(\corrected_word_OBUF[14]_inst_i_9_n_0 ));
  OBUF \corrected_word_OBUF[1]_inst 
       (.I(corrected_word_OBUF[1]),
        .O(corrected_word[1]));
  LUT6 #(
    .INIT(64'hAAA6AAAAAAAAAAAA)) 
    \corrected_word_OBUF[1]_inst_i_1 
       (.I0(received_word_IBUF[1]),
        .I1(\corrected_word_OBUF[14]_inst_i_2_n_0 ),
        .I2(\corrected_word_OBUF[14]_inst_i_3_n_0 ),
        .I3(\corrected_word_OBUF[14]_inst_i_4_n_0 ),
        .I4(\corrected_word_OBUF[14]_inst_i_5_n_0 ),
        .I5(\corrected_word_OBUF[11]_inst_i_2_n_0 ),
        .O(corrected_word_OBUF[1]));
  OBUF \corrected_word_OBUF[2]_inst 
       (.I(corrected_word_OBUF[2]),
        .O(corrected_word[2]));
  LUT6 #(
    .INIT(64'h9AAAAAAAAAAAAAAA)) 
    \corrected_word_OBUF[2]_inst_i_1 
       (.I0(received_word_IBUF[2]),
        .I1(\corrected_word_OBUF[14]_inst_i_5_n_0 ),
        .I2(\corrected_word_OBUF[14]_inst_i_2_n_0 ),
        .I3(\corrected_word_OBUF[14]_inst_i_3_n_0 ),
        .I4(\corrected_word_OBUF[14]_inst_i_4_n_0 ),
        .I5(\corrected_word_OBUF[12]_inst_i_2_n_0 ),
        .O(corrected_word_OBUF[2]));
  OBUF \corrected_word_OBUF[3]_inst 
       (.I(corrected_word_OBUF[3]),
        .O(corrected_word[3]));
  LUT6 #(
    .INIT(64'hAAA9AAAAAAAAAAAA)) 
    \corrected_word_OBUF[3]_inst_i_1 
       (.I0(received_word_IBUF[3]),
        .I1(\corrected_word_OBUF[14]_inst_i_2_n_0 ),
        .I2(\corrected_word_OBUF[14]_inst_i_3_n_0 ),
        .I3(\corrected_word_OBUF[14]_inst_i_4_n_0 ),
        .I4(\corrected_word_OBUF[14]_inst_i_5_n_0 ),
        .I5(\corrected_word_OBUF[13]_inst_i_2_n_0 ),
        .O(corrected_word_OBUF[3]));
  OBUF \corrected_word_OBUF[4]_inst 
       (.I(corrected_word_OBUF[4]),
        .O(corrected_word[4]));
  LUT6 #(
    .INIT(64'hAAAAAA9AAAAAAAAA)) 
    \corrected_word_OBUF[4]_inst_i_1 
       (.I0(received_word_IBUF[4]),
        .I1(\corrected_word_OBUF[14]_inst_i_5_n_0 ),
        .I2(\corrected_word_OBUF[14]_inst_i_2_n_0 ),
        .I3(\corrected_word_OBUF[14]_inst_i_3_n_0 ),
        .I4(\corrected_word_OBUF[14]_inst_i_4_n_0 ),
        .I5(\corrected_word_OBUF[14]_inst_i_6_n_0 ),
        .O(corrected_word_OBUF[4]));
  OBUF \corrected_word_OBUF[5]_inst 
       (.I(corrected_word_OBUF[5]),
        .O(corrected_word[5]));
  LUT6 #(
    .INIT(64'hAA9AAAAAAAAAAAAA)) 
    \corrected_word_OBUF[5]_inst_i_1 
       (.I0(received_word_IBUF[5]),
        .I1(\corrected_word_OBUF[14]_inst_i_5_n_0 ),
        .I2(\corrected_word_OBUF[14]_inst_i_2_n_0 ),
        .I3(\corrected_word_OBUF[14]_inst_i_3_n_0 ),
        .I4(\corrected_word_OBUF[14]_inst_i_4_n_0 ),
        .I5(\corrected_word_OBUF[10]_inst_i_2_n_0 ),
        .O(corrected_word_OBUF[5]));
  OBUF \corrected_word_OBUF[6]_inst 
       (.I(corrected_word_OBUF[6]),
        .O(corrected_word[6]));
  LUT6 #(
    .INIT(64'hAAA9AAAAAAAAAAAA)) 
    \corrected_word_OBUF[6]_inst_i_1 
       (.I0(received_word_IBUF[6]),
        .I1(\corrected_word_OBUF[14]_inst_i_5_n_0 ),
        .I2(\corrected_word_OBUF[14]_inst_i_2_n_0 ),
        .I3(\corrected_word_OBUF[14]_inst_i_3_n_0 ),
        .I4(\corrected_word_OBUF[14]_inst_i_4_n_0 ),
        .I5(\corrected_word_OBUF[11]_inst_i_2_n_0 ),
        .O(corrected_word_OBUF[6]));
  OBUF \corrected_word_OBUF[7]_inst 
       (.I(corrected_word_OBUF[7]),
        .O(corrected_word[7]));
  LUT6 #(
    .INIT(64'hAAAAA9AAAAAAAAAA)) 
    \corrected_word_OBUF[7]_inst_i_1 
       (.I0(received_word_IBUF[7]),
        .I1(\corrected_word_OBUF[14]_inst_i_5_n_0 ),
        .I2(\corrected_word_OBUF[14]_inst_i_2_n_0 ),
        .I3(\corrected_word_OBUF[14]_inst_i_3_n_0 ),
        .I4(\corrected_word_OBUF[14]_inst_i_4_n_0 ),
        .I5(\corrected_word_OBUF[12]_inst_i_2_n_0 ),
        .O(corrected_word_OBUF[7]));
  OBUF \corrected_word_OBUF[8]_inst 
       (.I(corrected_word_OBUF[8]),
        .O(corrected_word[8]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \corrected_word_OBUF[8]_inst_i_1 
       (.I0(received_word_IBUF[8]),
        .I1(\corrected_word_OBUF[14]_inst_i_2_n_0 ),
        .I2(\corrected_word_OBUF[14]_inst_i_3_n_0 ),
        .I3(\corrected_word_OBUF[14]_inst_i_4_n_0 ),
        .I4(\corrected_word_OBUF[14]_inst_i_5_n_0 ),
        .I5(\corrected_word_OBUF[13]_inst_i_2_n_0 ),
        .O(corrected_word_OBUF[8]));
  OBUF \corrected_word_OBUF[9]_inst 
       (.I(corrected_word_OBUF[9]),
        .O(corrected_word[9]));
  LUT6 #(
    .INIT(64'hAA9AAAAAAAAAAAAA)) 
    \corrected_word_OBUF[9]_inst_i_1 
       (.I0(received_word_IBUF[9]),
        .I1(\corrected_word_OBUF[14]_inst_i_2_n_0 ),
        .I2(\corrected_word_OBUF[14]_inst_i_3_n_0 ),
        .I3(\corrected_word_OBUF[14]_inst_i_4_n_0 ),
        .I4(\corrected_word_OBUF[14]_inst_i_5_n_0 ),
        .I5(\corrected_word_OBUF[14]_inst_i_6_n_0 ),
        .O(corrected_word_OBUF[9]));
  IBUF \received_word_IBUF[0]_inst 
       (.I(received_word[0]),
        .O(received_word_IBUF[0]));
  IBUF \received_word_IBUF[10]_inst 
       (.I(received_word[10]),
        .O(received_word_IBUF[10]));
  IBUF \received_word_IBUF[11]_inst 
       (.I(received_word[11]),
        .O(received_word_IBUF[11]));
  IBUF \received_word_IBUF[12]_inst 
       (.I(received_word[12]),
        .O(received_word_IBUF[12]));
  IBUF \received_word_IBUF[13]_inst 
       (.I(received_word[13]),
        .O(received_word_IBUF[13]));
  IBUF \received_word_IBUF[14]_inst 
       (.I(received_word[14]),
        .O(received_word_IBUF[14]));
  IBUF \received_word_IBUF[1]_inst 
       (.I(received_word[1]),
        .O(received_word_IBUF[1]));
  IBUF \received_word_IBUF[2]_inst 
       (.I(received_word[2]),
        .O(received_word_IBUF[2]));
  IBUF \received_word_IBUF[3]_inst 
       (.I(received_word[3]),
        .O(received_word_IBUF[3]));
  IBUF \received_word_IBUF[4]_inst 
       (.I(received_word[4]),
        .O(received_word_IBUF[4]));
  IBUF \received_word_IBUF[5]_inst 
       (.I(received_word[5]),
        .O(received_word_IBUF[5]));
  IBUF \received_word_IBUF[6]_inst 
       (.I(received_word[6]),
        .O(received_word_IBUF[6]));
  IBUF \received_word_IBUF[7]_inst 
       (.I(received_word[7]),
        .O(received_word_IBUF[7]));
  IBUF \received_word_IBUF[8]_inst 
       (.I(received_word[8]),
        .O(received_word_IBUF[8]));
  IBUF \received_word_IBUF[9]_inst 
       (.I(received_word[9]),
        .O(received_word_IBUF[9]));
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
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
