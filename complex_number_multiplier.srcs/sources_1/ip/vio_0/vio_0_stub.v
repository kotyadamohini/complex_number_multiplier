// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
// Date        : Mon Feb 10 14:28:42 2020
// Host        : DESKTOP-FAGG66O running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/VLSI/Desktop/N150194/complex_number_multiplier/complex_number_multiplier.srcs/sources_1/ip/vio_0/vio_0_stub.v
// Design      : vio_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio,Vivado 2016.1" *)
module vio_0(clk, probe_in0, probe_in1, probe_out0, probe_out1, probe_out2, probe_out3)
/* synthesis syn_black_box black_box_pad_pin="clk,probe_in0[31:0],probe_in1[31:0],probe_out0[7:0],probe_out1[7:0],probe_out2[31:0],probe_out3[31:0]" */;
  input clk;
  input [31:0]probe_in0;
  input [31:0]probe_in1;
  output [7:0]probe_out0;
  output [7:0]probe_out1;
  output [31:0]probe_out2;
  output [31:0]probe_out3;
endmodule
