// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Mon Jun 27 15:10:30 2022
// Host        : DESKTOP-MLS39H4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_pdi_0_0_stub.v
// Design      : design_1_pdi_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "pdi,Vivado 2020.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, rst, start, op, din, rom_addr, ram_we, dout, 
  ram_addr)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,start,op[3:0],din[23:0],rom_addr[14:0],ram_we,dout[23:0],ram_addr[14:0]" */;
  input clk;
  input rst;
  input start;
  input [3:0]op;
  input [23:0]din;
  output [14:0]rom_addr;
  output ram_we;
  output [23:0]dout;
  output [14:0]ram_addr;
endmodule
