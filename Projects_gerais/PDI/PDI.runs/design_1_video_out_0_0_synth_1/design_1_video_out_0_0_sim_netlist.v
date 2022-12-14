// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Mon Jun 27 15:07:52 2022
// Host        : DESKTOP-MLS39H4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_video_out_0_0_sim_netlist.v
// Design      : design_1_video_out_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_video_out_0_0,video_out,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "video_out,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk250,
    R,
    G,
    B,
    clk25,
    video_en,
    HDMI_data_n,
    HDMI_data_p,
    HDMI_clk_n,
    HDMI_clk_p,
    v_sync,
    h_sync,
    vga_r,
    vga_g,
    vga_b);
  input clk250;
  input [7:0]R;
  input [7:0]G;
  input [7:0]B;
  output clk25;
  output video_en;
  output [2:0]HDMI_data_n;
  output [2:0]HDMI_data_p;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 HDMI_clk_n CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME HDMI_clk_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_video_out_0_0_HDMI_clk_n, INSERT_VIP 0" *) output HDMI_clk_n;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 HDMI_clk_p CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME HDMI_clk_p, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_video_out_0_0_HDMI_clk_p, INSERT_VIP 0" *) output HDMI_clk_p;
  output v_sync;
  output h_sync;
  output [4:0]vga_r;
  output [5:0]vga_g;
  output [4:0]vga_b;

  wire [7:0]B;
  wire [7:0]G;
  (* IOSTANDARD = "TMDS_33" *) (* SLEW = "SLOW" *) wire HDMI_clk_n;
  (* IOSTANDARD = "TMDS_33" *) (* SLEW = "SLOW" *) wire HDMI_clk_p;
  (* IOSTANDARD = "TMDS_33" *) (* SLEW = "SLOW" *) wire [2:0]HDMI_data_n;
  (* IOSTANDARD = "TMDS_33" *) (* SLEW = "SLOW" *) wire [2:0]HDMI_data_p;
  wire [7:0]R;
  (* IOSTANDARD = "TMDS_33" *) (* SLEW = "SLOW" *) wire clk25;
  wire clk250;
  wire h_sync;
  wire v_sync;
  wire video_en;

  assign vga_b[4:0] = B[7:3];
  assign vga_g[5:0] = G[7:2];
  assign vga_r[4:0] = R[7:3];
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_video_out U0
       (.B(B),
        .G(G),
        .HDMI_clk_n(HDMI_clk_n),
        .HDMI_clk_p(HDMI_clk_p),
        .HDMI_data_n(HDMI_data_n),
        .HDMI_data_p(HDMI_data_p),
        .R(R),
        .clk250(clk250),
        .clk25MHz_reg(clk25),
        .s_h_sync_reg(h_sync),
        .v_sync(v_sync),
        .video_en(video_en));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_register
   (tmds_b_shift,
    clk250,
    D);
  output tmds_b_shift;
  input clk250;
  input [9:0]D;

  wire [9:0]D;
  wire clk250;
  wire [3:0]count_reg;
  wire [9:0]data_bits;
  wire \data_bits[9]_i_1__1_n_0 ;
  wire dout_i_1__1_n_0;
  wire dout_i_2__1_n_0;
  wire dout_i_3__1_n_0;
  wire dout_i_4__1_n_0;
  wire [3:0]p_0_in__1;
  wire tmds_b_shift;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__1 
       (.I0(count_reg[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0BF0)) 
    \count[1]_i_1__1 
       (.I0(count_reg[2]),
        .I1(count_reg[3]),
        .I2(count_reg[1]),
        .I3(count_reg[0]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count[2]_i_1__1 
       (.I0(count_reg[2]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6A8A)) 
    \count[3]_i_1__1 
       (.I0(count_reg[3]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(count_reg[2]),
        .O(p_0_in__1[3]));
  FDRE \count_reg[0] 
       (.C(clk250),
        .CE(1'b1),
        .D(p_0_in__1[0]),
        .Q(count_reg[0]),
        .R(1'b0));
  FDRE \count_reg[1] 
       (.C(clk250),
        .CE(1'b1),
        .D(p_0_in__1[1]),
        .Q(count_reg[1]),
        .R(1'b0));
  FDRE \count_reg[2] 
       (.C(clk250),
        .CE(1'b1),
        .D(p_0_in__1[2]),
        .Q(count_reg[2]),
        .R(1'b0));
  FDRE \count_reg[3] 
       (.C(clk250),
        .CE(1'b1),
        .D(p_0_in__1[3]),
        .Q(count_reg[3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0100)) 
    \data_bits[9]_i_1__1 
       (.I0(count_reg[2]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(count_reg[3]),
        .O(\data_bits[9]_i_1__1_n_0 ));
  FDRE \data_bits_reg[0] 
       (.C(clk250),
        .CE(\data_bits[9]_i_1__1_n_0 ),
        .D(D[0]),
        .Q(data_bits[0]),
        .R(1'b0));
  FDRE \data_bits_reg[1] 
       (.C(clk250),
        .CE(\data_bits[9]_i_1__1_n_0 ),
        .D(D[1]),
        .Q(data_bits[1]),
        .R(1'b0));
  FDRE \data_bits_reg[2] 
       (.C(clk250),
        .CE(\data_bits[9]_i_1__1_n_0 ),
        .D(D[2]),
        .Q(data_bits[2]),
        .R(1'b0));
  FDRE \data_bits_reg[3] 
       (.C(clk250),
        .CE(\data_bits[9]_i_1__1_n_0 ),
        .D(D[3]),
        .Q(data_bits[3]),
        .R(1'b0));
  FDRE \data_bits_reg[4] 
       (.C(clk250),
        .CE(\data_bits[9]_i_1__1_n_0 ),
        .D(D[4]),
        .Q(data_bits[4]),
        .R(1'b0));
  FDRE \data_bits_reg[5] 
       (.C(clk250),
        .CE(\data_bits[9]_i_1__1_n_0 ),
        .D(D[5]),
        .Q(data_bits[5]),
        .R(1'b0));
  FDRE \data_bits_reg[6] 
       (.C(clk250),
        .CE(\data_bits[9]_i_1__1_n_0 ),
        .D(D[6]),
        .Q(data_bits[6]),
        .R(1'b0));
  FDRE \data_bits_reg[7] 
       (.C(clk250),
        .CE(\data_bits[9]_i_1__1_n_0 ),
        .D(D[7]),
        .Q(data_bits[7]),
        .R(1'b0));
  FDRE \data_bits_reg[8] 
       (.C(clk250),
        .CE(\data_bits[9]_i_1__1_n_0 ),
        .D(D[8]),
        .Q(data_bits[8]),
        .R(1'b0));
  FDRE \data_bits_reg[9] 
       (.C(clk250),
        .CE(\data_bits[9]_i_1__1_n_0 ),
        .D(D[9]),
        .Q(data_bits[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    dout_i_1__1
       (.I0(dout_i_2__1_n_0),
        .I1(count_reg[3]),
        .I2(dout_i_3__1_n_0),
        .I3(count_reg[2]),
        .I4(dout_i_4__1_n_0),
        .O(dout_i_1__1_n_0));
  LUT6 #(
    .INIT(64'hED48FFFFED480000)) 
    dout_i_2__1
       (.I0(count_reg[2]),
        .I1(data_bits[8]),
        .I2(count_reg[1]),
        .I3(data_bits[0]),
        .I4(count_reg[0]),
        .I5(data_bits[9]),
        .O(dout_i_2__1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    dout_i_3__1
       (.I0(data_bits[8]),
        .I1(data_bits[7]),
        .I2(count_reg[1]),
        .I3(data_bits[6]),
        .I4(count_reg[0]),
        .I5(data_bits[5]),
        .O(dout_i_3__1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    dout_i_4__1
       (.I0(data_bits[4]),
        .I1(data_bits[3]),
        .I2(count_reg[1]),
        .I3(data_bits[2]),
        .I4(count_reg[0]),
        .I5(data_bits[1]),
        .O(dout_i_4__1_n_0));
  FDRE dout_reg
       (.C(clk250),
        .CE(1'b1),
        .D(dout_i_1__1_n_0),
        .Q(tmds_b_shift),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "shift_register" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_register_0
   (tmds_g_shift,
    clk250,
    D);
  output tmds_g_shift;
  input clk250;
  input [9:0]D;

  wire [9:0]D;
  wire clk250;
  wire [3:0]count_reg;
  wire [9:0]data_bits;
  wire \data_bits[9]_i_1__0_n_0 ;
  wire dout_i_1__0_n_0;
  wire dout_i_2__0_n_0;
  wire dout_i_3__0_n_0;
  wire dout_i_4__0_n_0;
  wire [3:0]p_0_in__0;
  wire tmds_g_shift;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__0 
       (.I0(count_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0BF0)) 
    \count[1]_i_1__0 
       (.I0(count_reg[2]),
        .I1(count_reg[3]),
        .I2(count_reg[1]),
        .I3(count_reg[0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count[2]_i_1__0 
       (.I0(count_reg[2]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6A8A)) 
    \count[3]_i_1__0 
       (.I0(count_reg[3]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(count_reg[2]),
        .O(p_0_in__0[3]));
  FDRE \count_reg[0] 
       (.C(clk250),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(count_reg[0]),
        .R(1'b0));
  FDRE \count_reg[1] 
       (.C(clk250),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(count_reg[1]),
        .R(1'b0));
  FDRE \count_reg[2] 
       (.C(clk250),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(count_reg[2]),
        .R(1'b0));
  FDRE \count_reg[3] 
       (.C(clk250),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(count_reg[3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0100)) 
    \data_bits[9]_i_1__0 
       (.I0(count_reg[2]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(count_reg[3]),
        .O(\data_bits[9]_i_1__0_n_0 ));
  FDRE \data_bits_reg[0] 
       (.C(clk250),
        .CE(\data_bits[9]_i_1__0_n_0 ),
        .D(D[0]),
        .Q(data_bits[0]),
        .R(1'b0));
  FDRE \data_bits_reg[1] 
       (.C(clk250),
        .CE(\data_bits[9]_i_1__0_n_0 ),
        .D(D[1]),
        .Q(data_bits[1]),
        .R(1'b0));
  FDRE \data_bits_reg[2] 
       (.C(clk250),
        .CE(\data_bits[9]_i_1__0_n_0 ),
        .D(D[2]),
        .Q(data_bits[2]),
        .R(1'b0));
  FDRE \data_bits_reg[3] 
       (.C(clk250),
        .CE(\data_bits[9]_i_1__0_n_0 ),
        .D(D[3]),
        .Q(data_bits[3]),
        .R(1'b0));
  FDRE \data_bits_reg[4] 
       (.C(clk250),
        .CE(\data_bits[9]_i_1__0_n_0 ),
        .D(D[4]),
        .Q(data_bits[4]),
        .R(1'b0));
  FDRE \data_bits_reg[5] 
       (.C(clk250),
        .CE(\data_bits[9]_i_1__0_n_0 ),
        .D(D[5]),
        .Q(data_bits[5]),
        .R(1'b0));
  FDRE \data_bits_reg[6] 
       (.C(clk250),
        .CE(\data_bits[9]_i_1__0_n_0 ),
        .D(D[6]),
        .Q(data_bits[6]),
        .R(1'b0));
  FDRE \data_bits_reg[7] 
       (.C(clk250),
        .CE(\data_bits[9]_i_1__0_n_0 ),
        .D(D[7]),
        .Q(data_bits[7]),
        .R(1'b0));
  FDRE \data_bits_reg[8] 
       (.C(clk250),
        .CE(\data_bits[9]_i_1__0_n_0 ),
        .D(D[8]),
        .Q(data_bits[8]),
        .R(1'b0));
  FDRE \data_bits_reg[9] 
       (.C(clk250),
        .CE(\data_bits[9]_i_1__0_n_0 ),
        .D(D[9]),
        .Q(data_bits[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    dout_i_1__0
       (.I0(dout_i_2__0_n_0),
        .I1(count_reg[3]),
        .I2(dout_i_3__0_n_0),
        .I3(count_reg[2]),
        .I4(dout_i_4__0_n_0),
        .O(dout_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hED48FFFFED480000)) 
    dout_i_2__0
       (.I0(count_reg[2]),
        .I1(data_bits[8]),
        .I2(count_reg[1]),
        .I3(data_bits[0]),
        .I4(count_reg[0]),
        .I5(data_bits[9]),
        .O(dout_i_2__0_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    dout_i_3__0
       (.I0(data_bits[8]),
        .I1(data_bits[7]),
        .I2(count_reg[1]),
        .I3(data_bits[6]),
        .I4(count_reg[0]),
        .I5(data_bits[5]),
        .O(dout_i_3__0_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    dout_i_4__0
       (.I0(data_bits[4]),
        .I1(data_bits[3]),
        .I2(count_reg[1]),
        .I3(data_bits[2]),
        .I4(count_reg[0]),
        .I5(data_bits[1]),
        .O(dout_i_4__0_n_0));
  FDRE dout_reg
       (.C(clk250),
        .CE(1'b1),
        .D(dout_i_1__0_n_0),
        .Q(tmds_g_shift),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "shift_register" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_register_1
   (tmds_r_shift,
    clk250,
    D);
  output tmds_r_shift;
  input clk250;
  input [9:0]D;

  wire [9:0]D;
  wire clk250;
  wire [3:0]count_reg;
  wire [9:0]data_bits;
  wire \data_bits[9]_i_1_n_0 ;
  wire dout_i_1_n_0;
  wire dout_i_2_n_0;
  wire dout_i_3_n_0;
  wire dout_i_4_n_0;
  wire [3:0]p_0_in;
  wire tmds_r_shift;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0BF0)) 
    \count[1]_i_1 
       (.I0(count_reg[2]),
        .I1(count_reg[3]),
        .I2(count_reg[1]),
        .I3(count_reg[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count[2]_i_1 
       (.I0(count_reg[2]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6A8A)) 
    \count[3]_i_1 
       (.I0(count_reg[3]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(count_reg[2]),
        .O(p_0_in[3]));
  FDRE \count_reg[0] 
       (.C(clk250),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(count_reg[0]),
        .R(1'b0));
  FDRE \count_reg[1] 
       (.C(clk250),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(count_reg[1]),
        .R(1'b0));
  FDRE \count_reg[2] 
       (.C(clk250),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(count_reg[2]),
        .R(1'b0));
  FDRE \count_reg[3] 
       (.C(clk250),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(count_reg[3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0100)) 
    \data_bits[9]_i_1 
       (.I0(count_reg[2]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(count_reg[3]),
        .O(\data_bits[9]_i_1_n_0 ));
  FDRE \data_bits_reg[0] 
       (.C(clk250),
        .CE(\data_bits[9]_i_1_n_0 ),
        .D(D[0]),
        .Q(data_bits[0]),
        .R(1'b0));
  FDRE \data_bits_reg[1] 
       (.C(clk250),
        .CE(\data_bits[9]_i_1_n_0 ),
        .D(D[1]),
        .Q(data_bits[1]),
        .R(1'b0));
  FDRE \data_bits_reg[2] 
       (.C(clk250),
        .CE(\data_bits[9]_i_1_n_0 ),
        .D(D[2]),
        .Q(data_bits[2]),
        .R(1'b0));
  FDRE \data_bits_reg[3] 
       (.C(clk250),
        .CE(\data_bits[9]_i_1_n_0 ),
        .D(D[3]),
        .Q(data_bits[3]),
        .R(1'b0));
  FDRE \data_bits_reg[4] 
       (.C(clk250),
        .CE(\data_bits[9]_i_1_n_0 ),
        .D(D[4]),
        .Q(data_bits[4]),
        .R(1'b0));
  FDRE \data_bits_reg[5] 
       (.C(clk250),
        .CE(\data_bits[9]_i_1_n_0 ),
        .D(D[5]),
        .Q(data_bits[5]),
        .R(1'b0));
  FDRE \data_bits_reg[6] 
       (.C(clk250),
        .CE(\data_bits[9]_i_1_n_0 ),
        .D(D[6]),
        .Q(data_bits[6]),
        .R(1'b0));
  FDRE \data_bits_reg[7] 
       (.C(clk250),
        .CE(\data_bits[9]_i_1_n_0 ),
        .D(D[7]),
        .Q(data_bits[7]),
        .R(1'b0));
  FDRE \data_bits_reg[8] 
       (.C(clk250),
        .CE(\data_bits[9]_i_1_n_0 ),
        .D(D[8]),
        .Q(data_bits[8]),
        .R(1'b0));
  FDRE \data_bits_reg[9] 
       (.C(clk250),
        .CE(\data_bits[9]_i_1_n_0 ),
        .D(D[9]),
        .Q(data_bits[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    dout_i_1
       (.I0(dout_i_2_n_0),
        .I1(count_reg[3]),
        .I2(dout_i_3_n_0),
        .I3(count_reg[2]),
        .I4(dout_i_4_n_0),
        .O(dout_i_1_n_0));
  LUT6 #(
    .INIT(64'hED48FFFFED480000)) 
    dout_i_2
       (.I0(count_reg[2]),
        .I1(data_bits[8]),
        .I2(count_reg[1]),
        .I3(data_bits[0]),
        .I4(count_reg[0]),
        .I5(data_bits[9]),
        .O(dout_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    dout_i_3
       (.I0(data_bits[8]),
        .I1(data_bits[7]),
        .I2(count_reg[1]),
        .I3(data_bits[6]),
        .I4(count_reg[0]),
        .I5(data_bits[5]),
        .O(dout_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    dout_i_4
       (.I0(data_bits[4]),
        .I1(data_bits[3]),
        .I2(count_reg[1]),
        .I3(data_bits[2]),
        .I4(count_reg[0]),
        .I5(data_bits[1]),
        .O(dout_i_4_n_0));
  FDRE dout_reg
       (.C(clk250),
        .CE(1'b1),
        .D(dout_i_1_n_0),
        .Q(tmds_r_shift),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_encoder
   (D,
    \disparity_reg[4]_0 ,
    B_0_sp_1,
    B_7_sp_1,
    \B[7]_0 ,
    B_1_sp_1,
    B_5_sp_1,
    \B[0]_0 ,
    B_3_sp_1,
    B_4_sp_1,
    \B[4]_0 ,
    \q_out_reg[8]_0 ,
    CLK,
    \q_out_reg[7]_0 ,
    \q_out_reg[6]_0 ,
    \q_out_reg[5]_0 ,
    \q_out_reg[4]_0 ,
    \q_out_reg[3]_0 ,
    \q_out_reg[2]_0 ,
    \q_out_reg[1]_0 ,
    \q_out_reg[0]_0 ,
    \q_out_reg[9]_0 ,
    B,
    \disparity_reg[4]_1 );
  output [9:0]D;
  output \disparity_reg[4]_0 ;
  output B_0_sp_1;
  output B_7_sp_1;
  output \B[7]_0 ;
  output B_1_sp_1;
  output B_5_sp_1;
  output \B[0]_0 ;
  output B_3_sp_1;
  output B_4_sp_1;
  output \B[4]_0 ;
  input \q_out_reg[8]_0 ;
  input CLK;
  input \q_out_reg[7]_0 ;
  input \q_out_reg[6]_0 ;
  input \q_out_reg[5]_0 ;
  input \q_out_reg[4]_0 ;
  input \q_out_reg[3]_0 ;
  input \q_out_reg[2]_0 ;
  input \q_out_reg[1]_0 ;
  input \q_out_reg[0]_0 ;
  input \q_out_reg[9]_0 ;
  input [7:0]B;
  input \disparity_reg[4]_1 ;

  wire [7:0]B;
  wire \B[0]_0 ;
  wire \B[4]_0 ;
  wire \B[7]_0 ;
  wire B_0_sn_1;
  wire B_1_sn_1;
  wire B_3_sn_1;
  wire B_4_sn_1;
  wire B_5_sn_1;
  wire B_7_sn_1;
  wire CLK;
  wire [9:0]D;
  wire \disparity[1]_i_1__1_n_0 ;
  wire \disparity[2]_i_1__1_n_0 ;
  wire \disparity[2]_i_2__1_n_0 ;
  wire \disparity[2]_i_4__0_n_0 ;
  wire \disparity[2]_i_5__0_n_0 ;
  wire \disparity[3]_i_1__1_n_0 ;
  wire \disparity[3]_i_2__1_n_0 ;
  wire \disparity[3]_i_3__1_n_0 ;
  wire \disparity[3]_i_5__1_n_0 ;
  wire \disparity[3]_i_6_n_0 ;
  wire \disparity[3]_i_7__0_n_0 ;
  wire \disparity[3]_i_8__0_n_0 ;
  wire \disparity[3]_i_9__0_n_0 ;
  wire \disparity[4]_i_10__0_n_0 ;
  wire \disparity[4]_i_11__1_n_0 ;
  wire \disparity[4]_i_12__0_n_0 ;
  wire \disparity[4]_i_13__1_n_0 ;
  wire \disparity[4]_i_14_n_0 ;
  wire \disparity[4]_i_15__1_n_0 ;
  wire \disparity[4]_i_16__1_n_0 ;
  wire \disparity[4]_i_17__1_n_0 ;
  wire \disparity[4]_i_18__0_n_0 ;
  wire \disparity[4]_i_19__0_n_0 ;
  wire \disparity[4]_i_1__1_n_0 ;
  wire \disparity[4]_i_20__0_n_0 ;
  wire \disparity[4]_i_21__0_n_0 ;
  wire \disparity[4]_i_22__0_n_0 ;
  wire \disparity[4]_i_2__1_n_0 ;
  wire \disparity[4]_i_3__1_n_0 ;
  wire \disparity[4]_i_4__1_n_0 ;
  wire \disparity[4]_i_5__0_n_0 ;
  wire \disparity[4]_i_6__1_n_0 ;
  wire \disparity[4]_i_7__1_n_0 ;
  wire \disparity[4]_i_8__1_n_0 ;
  wire \disparity[4]_i_9__1_n_0 ;
  wire \disparity_reg[4]_0 ;
  wire \disparity_reg[4]_1 ;
  wire \disparity_reg_n_0_[1] ;
  wire \disparity_reg_n_0_[2] ;
  wire \disparity_reg_n_0_[3] ;
  wire \disparity_reg_n_0_[4] ;
  wire \q_out[7]_i_4_n_0 ;
  wire \q_out_reg[0]_0 ;
  wire \q_out_reg[1]_0 ;
  wire \q_out_reg[2]_0 ;
  wire \q_out_reg[3]_0 ;
  wire \q_out_reg[4]_0 ;
  wire \q_out_reg[5]_0 ;
  wire \q_out_reg[6]_0 ;
  wire \q_out_reg[7]_0 ;
  wire \q_out_reg[8]_0 ;
  wire \q_out_reg[9]_0 ;

  assign B_0_sp_1 = B_0_sn_1;
  assign B_1_sp_1 = B_1_sn_1;
  assign B_3_sp_1 = B_3_sn_1;
  assign B_4_sp_1 = B_4_sn_1;
  assign B_5_sp_1 = B_5_sn_1;
  assign B_7_sp_1 = B_7_sn_1;
  LUT5 #(
    .INIT(32'h99696669)) 
    \disparity[1]_i_1__1 
       (.I0(\disparity[2]_i_4__0_n_0 ),
        .I1(\disparity_reg_n_0_[1] ),
        .I2(\disparity[2]_i_5__0_n_0 ),
        .I3(B_7_sn_1),
        .I4(\disparity_reg[4]_0 ),
        .O(\disparity[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h5995665559955566)) 
    \disparity[2]_i_1__1 
       (.I0(\disparity[2]_i_2__1_n_0 ),
        .I1(B_7_sn_1),
        .I2(\disparity_reg[4]_0 ),
        .I3(\disparity[2]_i_4__0_n_0 ),
        .I4(\disparity_reg_n_0_[1] ),
        .I5(\disparity[2]_i_5__0_n_0 ),
        .O(\disparity[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \disparity[2]_i_2__1 
       (.I0(\disparity_reg_n_0_[2] ),
        .I1(\disparity[4]_i_10__0_n_0 ),
        .O(\disparity[2]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \disparity[2]_i_3__1 
       (.I0(\disparity[4]_i_5__0_n_0 ),
        .I1(\disparity[4]_i_4__1_n_0 ),
        .O(\disparity_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \disparity[2]_i_4__0 
       (.I0(B[1]),
        .I1(B[3]),
        .I2(B[7]),
        .I3(B[5]),
        .O(\disparity[2]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \disparity[2]_i_5__0 
       (.I0(\disparity[4]_i_4__1_n_0 ),
        .I1(\disparity[4]_i_5__0_n_0 ),
        .O(\disparity[2]_i_5__0_n_0 ));
  LUT5 #(
    .INIT(32'h66699969)) 
    \disparity[3]_i_1__1 
       (.I0(\disparity[3]_i_2__1_n_0 ),
        .I1(\disparity_reg_n_0_[3] ),
        .I2(\disparity[3]_i_3__1_n_0 ),
        .I3(B_7_sn_1),
        .I4(\disparity[3]_i_5__1_n_0 ),
        .O(\disparity[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hD442)) 
    \disparity[3]_i_2__1 
       (.I0(\disparity[4]_i_14_n_0 ),
        .I1(\disparity[4]_i_15__1_n_0 ),
        .I2(\disparity[4]_i_17__1_n_0 ),
        .I3(\disparity[4]_i_16__1_n_0 ),
        .O(\disparity[3]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hB0FB1FFEB0FBB0FB)) 
    \disparity[3]_i_3__1 
       (.I0(\disparity_reg_n_0_[1] ),
        .I1(\disparity[2]_i_4__0_n_0 ),
        .I2(\disparity_reg_n_0_[2] ),
        .I3(\disparity[4]_i_10__0_n_0 ),
        .I4(\disparity[4]_i_4__1_n_0 ),
        .I5(\disparity[4]_i_5__0_n_0 ),
        .O(\disparity[3]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hE2AEA2AA22E222A2)) 
    \disparity[3]_i_4__0 
       (.I0(\disparity[3]_i_6_n_0 ),
        .I1(\disparity[3]_i_7__0_n_0 ),
        .I2(\disparity[3]_i_8__0_n_0 ),
        .I3(B[7]),
        .I4(B[0]),
        .I5(\disparity[3]_i_9__0_n_0 ),
        .O(B_7_sn_1));
  LUT6 #(
    .INIT(64'h11111EFF0FEEFFFF)) 
    \disparity[3]_i_5__1 
       (.I0(\disparity[4]_i_5__0_n_0 ),
        .I1(\disparity[4]_i_4__1_n_0 ),
        .I2(\disparity[2]_i_4__0_n_0 ),
        .I3(\disparity_reg_n_0_[1] ),
        .I4(\disparity[4]_i_10__0_n_0 ),
        .I5(\disparity_reg_n_0_[2] ),
        .O(\disparity[3]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'h171717FF17FFFFFF)) 
    \disparity[3]_i_6 
       (.I0(B[3]),
        .I1(B[2]),
        .I2(B[1]),
        .I3(B[6]),
        .I4(B[5]),
        .I5(B[4]),
        .O(\disparity[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \disparity[3]_i_7__0 
       (.I0(B[3]),
        .I1(B[2]),
        .I2(B[1]),
        .I3(B[6]),
        .I4(B[5]),
        .I5(B[4]),
        .O(\disparity[3]_i_7__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \disparity[3]_i_8__0 
       (.I0(B[3]),
        .I1(B[2]),
        .I2(B[1]),
        .O(\disparity[3]_i_8__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \disparity[3]_i_9__0 
       (.I0(B[6]),
        .I1(B[5]),
        .I2(B[4]),
        .O(\disparity[3]_i_9__0_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \disparity[4]_i_10__0 
       (.I0(\disparity[4]_i_22__0_n_0 ),
        .I1(\disparity[4]_i_15__1_n_0 ),
        .I2(\disparity[4]_i_14_n_0 ),
        .O(\disparity[4]_i_10__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h41141441)) 
    \disparity[4]_i_11__1 
       (.I0(\disparity_reg_n_0_[1] ),
        .I1(B[5]),
        .I2(B[7]),
        .I3(B[3]),
        .I4(B[1]),
        .O(\disparity[4]_i_11__1_n_0 ));
  LUT5 #(
    .INIT(32'hA6656559)) 
    \disparity[4]_i_12__0 
       (.I0(\disparity_reg_n_0_[3] ),
        .I1(\disparity[4]_i_14_n_0 ),
        .I2(\disparity[4]_i_15__1_n_0 ),
        .I3(\disparity[4]_i_17__1_n_0 ),
        .I4(\disparity[4]_i_16__1_n_0 ),
        .O(\disparity[4]_i_12__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \disparity[4]_i_13__1 
       (.I0(\disparity_reg_n_0_[1] ),
        .I1(\disparity_reg_n_0_[3] ),
        .I2(\disparity_reg_n_0_[4] ),
        .I3(\disparity_reg_n_0_[2] ),
        .O(\disparity[4]_i_13__1_n_0 ));
  LUT5 #(
    .INIT(32'h90060690)) 
    \disparity[4]_i_14 
       (.I0(B[1]),
        .I1(B[3]),
        .I2(B[0]),
        .I3(B[7]),
        .I4(B[5]),
        .O(\disparity[4]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hB22B2BB2)) 
    \disparity[4]_i_15__1 
       (.I0(B_3_sn_1),
        .I1(B[0]),
        .I2(B[5]),
        .I3(B_4_sn_1),
        .I4(B_7_sn_1),
        .O(\disparity[4]_i_15__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h9C6339C6)) 
    \disparity[4]_i_16__1 
       (.I0(B_7_sn_1),
        .I1(B[1]),
        .I2(B[2]),
        .I3(B[0]),
        .I4(B[3]),
        .O(\disparity[4]_i_16__1_n_0 ));
  LUT6 #(
    .INIT(64'h9699696699696696)) 
    \disparity[4]_i_17__1 
       (.I0(B[3]),
        .I1(B_0_sn_1),
        .I2(B[6]),
        .I3(B[5]),
        .I4(B[4]),
        .I5(B_7_sn_1),
        .O(\disparity[4]_i_17__1_n_0 ));
  LUT6 #(
    .INIT(64'h1441000014411441)) 
    \disparity[4]_i_18__0 
       (.I0(\disparity_reg_n_0_[2] ),
        .I1(\disparity[4]_i_22__0_n_0 ),
        .I2(\disparity[4]_i_15__1_n_0 ),
        .I3(\disparity[4]_i_14_n_0 ),
        .I4(\disparity[2]_i_4__0_n_0 ),
        .I5(\disparity_reg_n_0_[1] ),
        .O(\disparity[4]_i_18__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7DD7FFFFFFFF)) 
    \disparity[4]_i_19__0 
       (.I0(\disparity_reg_n_0_[2] ),
        .I1(\disparity[4]_i_22__0_n_0 ),
        .I2(\disparity[4]_i_15__1_n_0 ),
        .I3(\disparity[4]_i_14_n_0 ),
        .I4(\disparity[2]_i_4__0_n_0 ),
        .I5(\disparity_reg_n_0_[1] ),
        .O(\disparity[4]_i_19__0_n_0 ));
  LUT6 #(
    .INIT(64'h0E000E0FFEF0FEFF)) 
    \disparity[4]_i_1__1 
       (.I0(\disparity[4]_i_2__1_n_0 ),
        .I1(\disparity[4]_i_3__1_n_0 ),
        .I2(\disparity[4]_i_4__1_n_0 ),
        .I3(\disparity[4]_i_5__0_n_0 ),
        .I4(\disparity[4]_i_6__1_n_0 ),
        .I5(\disparity[4]_i_7__1_n_0 ),
        .O(\disparity[4]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0069006969FF0069)) 
    \disparity[4]_i_20__0 
       (.I0(\disparity[4]_i_14_n_0 ),
        .I1(\disparity[4]_i_15__1_n_0 ),
        .I2(\disparity[4]_i_22__0_n_0 ),
        .I3(\disparity_reg_n_0_[2] ),
        .I4(\disparity[2]_i_4__0_n_0 ),
        .I5(\disparity_reg_n_0_[1] ),
        .O(\disparity[4]_i_20__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA6A6656555)) 
    \disparity[4]_i_21__0 
       (.I0(\disparity_reg_n_0_[4] ),
        .I1(\disparity[4]_i_14_n_0 ),
        .I2(\disparity[4]_i_15__1_n_0 ),
        .I3(\disparity[4]_i_17__1_n_0 ),
        .I4(\disparity[4]_i_16__1_n_0 ),
        .I5(\disparity_reg_n_0_[3] ),
        .O(\disparity[4]_i_21__0_n_0 ));
  LUT6 #(
    .INIT(64'h639CC6399C6339C6)) 
    \disparity[4]_i_22__0 
       (.I0(B[3]),
        .I1(B[0]),
        .I2(B[2]),
        .I3(B[1]),
        .I4(B_7_sn_1),
        .I5(\disparity[4]_i_17__1_n_0 ),
        .O(\disparity[4]_i_22__0_n_0 ));
  LUT5 #(
    .INIT(32'h022AA880)) 
    \disparity[4]_i_2__1 
       (.I0(B_7_sn_1),
        .I1(\disparity[4]_i_8__1_n_0 ),
        .I2(\disparity_reg_n_0_[3] ),
        .I3(\disparity[3]_i_2__1_n_0 ),
        .I4(\disparity[4]_i_5__0_n_0 ),
        .O(\disparity[4]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A9AA5595)) 
    \disparity[4]_i_3__1 
       (.I0(\disparity[4]_i_9__1_n_0 ),
        .I1(\disparity[4]_i_10__0_n_0 ),
        .I2(\disparity_reg_n_0_[2] ),
        .I3(\disparity[4]_i_11__1_n_0 ),
        .I4(\disparity[4]_i_12__0_n_0 ),
        .I5(B_7_sn_1),
        .O(\disparity[4]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAEEBEBBA)) 
    \disparity[4]_i_4__1 
       (.I0(\disparity[4]_i_13__1_n_0 ),
        .I1(\disparity[4]_i_14_n_0 ),
        .I2(\disparity[4]_i_15__1_n_0 ),
        .I3(\disparity[4]_i_16__1_n_0 ),
        .I4(\disparity[4]_i_17__1_n_0 ),
        .I5(\disparity[2]_i_4__0_n_0 ),
        .O(\disparity[4]_i_4__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h71F78E08)) 
    \disparity[4]_i_5__0 
       (.I0(\disparity[4]_i_17__1_n_0 ),
        .I1(\disparity[4]_i_16__1_n_0 ),
        .I2(\disparity[4]_i_14_n_0 ),
        .I3(\disparity[4]_i_15__1_n_0 ),
        .I4(\disparity_reg_n_0_[4] ),
        .O(\disparity[4]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h70307F308FCF80CF)) 
    \disparity[4]_i_6__1 
       (.I0(\disparity[4]_i_18__0_n_0 ),
        .I1(\disparity[4]_i_19__0_n_0 ),
        .I2(B_7_sn_1),
        .I3(\disparity[4]_i_12__0_n_0 ),
        .I4(\disparity[4]_i_20__0_n_0 ),
        .I5(\disparity[4]_i_21__0_n_0 ),
        .O(\disparity[4]_i_6__1_n_0 ));
  LUT6 #(
    .INIT(64'hFCBB8830034477CF)) 
    \disparity[4]_i_7__1 
       (.I0(\disparity[4]_i_8__1_n_0 ),
        .I1(B_7_sn_1),
        .I2(\disparity[4]_i_20__0_n_0 ),
        .I3(\disparity_reg_n_0_[3] ),
        .I4(\disparity[3]_i_2__1_n_0 ),
        .I5(\disparity[4]_i_5__0_n_0 ),
        .O(\disparity[4]_i_7__1_n_0 ));
  LUT6 #(
    .INIT(64'h8FF8F88F08808008)) 
    \disparity[4]_i_8__1 
       (.I0(\disparity[2]_i_4__0_n_0 ),
        .I1(\disparity_reg_n_0_[1] ),
        .I2(\disparity[4]_i_22__0_n_0 ),
        .I3(\disparity[4]_i_15__1_n_0 ),
        .I4(\disparity[4]_i_14_n_0 ),
        .I5(\disparity_reg_n_0_[2] ),
        .O(\disparity[4]_i_8__1_n_0 ));
  LUT6 #(
    .INIT(64'hA6666665AAA6A666)) 
    \disparity[4]_i_9__1 
       (.I0(\disparity_reg_n_0_[4] ),
        .I1(\disparity_reg_n_0_[3] ),
        .I2(\disparity[4]_i_16__1_n_0 ),
        .I3(\disparity[4]_i_17__1_n_0 ),
        .I4(\disparity[4]_i_15__1_n_0 ),
        .I5(\disparity[4]_i_14_n_0 ),
        .O(\disparity[4]_i_9__1_n_0 ));
  FDRE \disparity_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\disparity[1]_i_1__1_n_0 ),
        .Q(\disparity_reg_n_0_[1] ),
        .R(\disparity_reg[4]_1 ));
  FDRE \disparity_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\disparity[2]_i_1__1_n_0 ),
        .Q(\disparity_reg_n_0_[2] ),
        .R(\disparity_reg[4]_1 ));
  FDRE \disparity_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\disparity[3]_i_1__1_n_0 ),
        .Q(\disparity_reg_n_0_[3] ),
        .R(\disparity_reg[4]_1 ));
  FDRE \disparity_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\disparity[4]_i_1__1_n_0 ),
        .Q(\disparity_reg_n_0_[4] ),
        .R(\disparity_reg[4]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \q_out[1]_i_2 
       (.I0(B_7_sn_1),
        .I1(B[1]),
        .I2(B[0]),
        .O(B_1_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \q_out[2]_i_2 
       (.I0(B[0]),
        .I1(B[2]),
        .I2(B[1]),
        .O(B_0_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \q_out[3]_i_2__0 
       (.I0(B_7_sn_1),
        .I1(B[0]),
        .I2(B[2]),
        .I3(B[1]),
        .I4(B[3]),
        .O(\B[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \q_out[4]_i_2__0 
       (.I0(B[4]),
        .I1(B[0]),
        .I2(B[2]),
        .I3(B[1]),
        .I4(B[3]),
        .O(\B[4]_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q_out[5]_i_2__0 
       (.I0(B[5]),
        .I1(B[4]),
        .I2(\B[0]_0 ),
        .O(B_5_sn_1));
  LUT5 #(
    .INIT(32'h69969669)) 
    \q_out[6]_i_2 
       (.I0(B[4]),
        .I1(B[5]),
        .I2(B[6]),
        .I3(B_0_sn_1),
        .I4(B[3]),
        .O(B_4_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \q_out[7]_i_2__1 
       (.I0(\q_out[7]_i_4_n_0 ),
        .I1(B[3]),
        .I2(B[2]),
        .I3(B[1]),
        .I4(B_7_sn_1),
        .O(B_3_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q_out[7]_i_3__0 
       (.I0(\disparity[4]_i_4__1_n_0 ),
        .I1(B_7_sn_1),
        .O(\B[7]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \q_out[7]_i_4 
       (.I0(B[4]),
        .I1(B[5]),
        .I2(B[6]),
        .I3(B[7]),
        .I4(B[0]),
        .O(\q_out[7]_i_4_n_0 ));
  FDRE \q_out_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\q_out_reg[0]_0 ),
        .Q(D[0]),
        .R(1'b0));
  FDRE \q_out_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\q_out_reg[1]_0 ),
        .Q(D[1]),
        .R(1'b0));
  FDRE \q_out_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\q_out_reg[2]_0 ),
        .Q(D[2]),
        .R(1'b0));
  FDRE \q_out_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\q_out_reg[3]_0 ),
        .Q(D[3]),
        .R(1'b0));
  FDRE \q_out_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\q_out_reg[4]_0 ),
        .Q(D[4]),
        .R(1'b0));
  FDRE \q_out_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\q_out_reg[5]_0 ),
        .Q(D[5]),
        .R(1'b0));
  FDRE \q_out_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\q_out_reg[6]_0 ),
        .Q(D[6]),
        .R(1'b0));
  FDRE \q_out_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\q_out_reg[7]_0 ),
        .Q(D[7]),
        .R(1'b0));
  FDRE \q_out_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\q_out_reg[8]_0 ),
        .Q(D[8]),
        .R(1'b0));
  FDRE \q_out_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\q_out_reg[9]_0 ),
        .Q(D[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "tmds_encoder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_encoder_2
   (D,
    G_0_sp_1,
    G_4_sp_1,
    \q_out_reg[4]_0 ,
    CLK,
    \disparity_reg[1]_0 ,
    G);
  output [9:0]D;
  output G_0_sp_1;
  output G_4_sp_1;
  input \q_out_reg[4]_0 ;
  input CLK;
  input \disparity_reg[1]_0 ;
  input [7:0]G;

  wire CLK;
  wire [9:0]D;
  wire [7:0]G;
  wire G_0_sn_1;
  wire G_4_sn_1;
  wire \disparity[1]_i_1__0_n_0 ;
  wire \disparity[2]_i_1__0_n_0 ;
  wire \disparity[2]_i_2__0_n_0 ;
  wire \disparity[2]_i_3__0_n_0 ;
  wire \disparity[3]_i_1__0_n_0 ;
  wire \disparity[3]_i_2__0_n_0 ;
  wire \disparity[3]_i_3__0_n_0 ;
  wire \disparity[3]_i_4_n_0 ;
  wire \disparity[3]_i_5__0_n_0 ;
  wire \disparity[4]_i_10__1_n_0 ;
  wire \disparity[4]_i_11__0_n_0 ;
  wire \disparity[4]_i_12__1_n_0 ;
  wire \disparity[4]_i_13__0_n_0 ;
  wire \disparity[4]_i_14__1_n_0 ;
  wire \disparity[4]_i_15__0_n_0 ;
  wire \disparity[4]_i_16__0_n_0 ;
  wire \disparity[4]_i_17__0_n_0 ;
  wire \disparity[4]_i_18_n_0 ;
  wire \disparity[4]_i_19_n_0 ;
  wire \disparity[4]_i_1__0_n_0 ;
  wire \disparity[4]_i_20_n_0 ;
  wire \disparity[4]_i_21_n_0 ;
  wire \disparity[4]_i_22_n_0 ;
  wire \disparity[4]_i_23_n_0 ;
  wire \disparity[4]_i_24_n_0 ;
  wire \disparity[4]_i_25_n_0 ;
  wire \disparity[4]_i_26_n_0 ;
  wire \disparity[4]_i_2__0_n_0 ;
  wire \disparity[4]_i_3__0_n_0 ;
  wire \disparity[4]_i_4__0_n_0 ;
  wire \disparity[4]_i_5_n_0 ;
  wire \disparity[4]_i_6__0_n_0 ;
  wire \disparity[4]_i_7__0_n_0 ;
  wire \disparity[4]_i_8__0_n_0 ;
  wire \disparity[4]_i_9__0_n_0 ;
  wire \disparity_reg[1]_0 ;
  wire \disparity_reg_n_0_[1] ;
  wire \disparity_reg_n_0_[2] ;
  wire \disparity_reg_n_0_[3] ;
  wire \disparity_reg_n_0_[4] ;
  wire \q_out[0]_i_1__1_n_0 ;
  wire \q_out[1]_i_1__1_n_0 ;
  wire \q_out[2]_i_1__1_n_0 ;
  wire \q_out[3]_i_1__1_n_0 ;
  wire \q_out[3]_i_2_n_0 ;
  wire \q_out[5]_i_1__1_n_0 ;
  wire \q_out[6]_i_1__1_n_0 ;
  wire \q_out[7]_i_1__1_n_0 ;
  wire \q_out[7]_i_2__0_n_0 ;
  wire \q_out[8]_i_1__1_n_0 ;
  wire \q_out_reg[4]_0 ;

  assign G_0_sp_1 = G_0_sn_1;
  assign G_4_sp_1 = G_4_sn_1;
  LUT5 #(
    .INIT(32'h69666669)) 
    \disparity[1]_i_1__0 
       (.I0(\disparity[2]_i_3__0_n_0 ),
        .I1(\disparity_reg_n_0_[1] ),
        .I2(\disparity[4]_i_6__0_n_0 ),
        .I3(\disparity[4]_i_4__0_n_0 ),
        .I4(\disparity[3]_i_3__0_n_0 ),
        .O(\disparity[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0EF101FEB04F40BF)) 
    \disparity[2]_i_1__0 
       (.I0(\disparity[4]_i_6__0_n_0 ),
        .I1(\disparity[3]_i_3__0_n_0 ),
        .I2(\disparity[4]_i_4__0_n_0 ),
        .I3(\disparity[2]_i_2__0_n_0 ),
        .I4(\disparity[2]_i_3__0_n_0 ),
        .I5(\disparity_reg_n_0_[1] ),
        .O(\disparity[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \disparity[2]_i_2__0 
       (.I0(\disparity_reg_n_0_[2] ),
        .I1(\disparity[4]_i_9__0_n_0 ),
        .O(\disparity[2]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \disparity[2]_i_3__0 
       (.I0(G[1]),
        .I1(G[3]),
        .I2(G[7]),
        .I3(G[5]),
        .O(\disparity[2]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'h44744F7F)) 
    \disparity[3]_i_1__0 
       (.I0(\disparity[3]_i_2__0_n_0 ),
        .I1(\disparity[4]_i_6__0_n_0 ),
        .I2(\disparity[3]_i_3__0_n_0 ),
        .I3(\disparity[3]_i_4_n_0 ),
        .I4(\disparity[3]_i_5__0_n_0 ),
        .O(\disparity[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5C48CA48A3B735B7)) 
    \disparity[3]_i_2__0 
       (.I0(\disparity[4]_i_4__0_n_0 ),
        .I1(\disparity[4]_i_9__0_n_0 ),
        .I2(\disparity_reg_n_0_[2] ),
        .I3(\disparity[2]_i_3__0_n_0 ),
        .I4(\disparity_reg_n_0_[1] ),
        .I5(\disparity[4]_i_8__0_n_0 ),
        .O(\disparity[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFF0001FFFF00FFFF)) 
    \disparity[3]_i_3__0 
       (.I0(\disparity_reg_n_0_[2] ),
        .I1(\disparity_reg_n_0_[1] ),
        .I2(\disparity_reg_n_0_[3] ),
        .I3(\disparity[4]_i_10__1_n_0 ),
        .I4(\disparity_reg_n_0_[4] ),
        .I5(\disparity[4]_i_17__0_n_0 ),
        .O(\disparity[3]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hD4C0C0422B3F3FBD)) 
    \disparity[3]_i_4 
       (.I0(\disparity[4]_i_4__0_n_0 ),
        .I1(\disparity[4]_i_9__0_n_0 ),
        .I2(\disparity_reg_n_0_[2] ),
        .I3(\disparity[2]_i_3__0_n_0 ),
        .I4(\disparity_reg_n_0_[1] ),
        .I5(\disparity[4]_i_8__0_n_0 ),
        .O(\disparity[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h33C3369393C933C3)) 
    \disparity[3]_i_5__0 
       (.I0(\disparity[4]_i_4__0_n_0 ),
        .I1(\disparity[4]_i_8__0_n_0 ),
        .I2(\disparity[4]_i_9__0_n_0 ),
        .I3(\disparity_reg_n_0_[2] ),
        .I4(\disparity[2]_i_3__0_n_0 ),
        .I5(\disparity_reg_n_0_[1] ),
        .O(\disparity[3]_i_5__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hFDD4)) 
    \disparity[4]_i_10__1 
       (.I0(\disparity[4]_i_23_n_0 ),
        .I1(\disparity[4]_i_22_n_0 ),
        .I2(\disparity[4]_i_21_n_0 ),
        .I3(\disparity[4]_i_20_n_0 ),
        .O(\disparity[4]_i_10__1_n_0 ));
  LUT4 #(
    .INIT(16'h422B)) 
    \disparity[4]_i_11__0 
       (.I0(\disparity[4]_i_23_n_0 ),
        .I1(\disparity[4]_i_22_n_0 ),
        .I2(\disparity[4]_i_21_n_0 ),
        .I3(\disparity[4]_i_20_n_0 ),
        .O(\disparity[4]_i_11__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \disparity[4]_i_12__1 
       (.I0(G[3]),
        .I1(G[2]),
        .I2(G[1]),
        .O(\disparity[4]_i_12__1_n_0 ));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \disparity[4]_i_13__0 
       (.I0(G[3]),
        .I1(G[2]),
        .I2(G[1]),
        .I3(G[6]),
        .I4(G[5]),
        .I5(G[4]),
        .O(\disparity[4]_i_13__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \disparity[4]_i_14__1 
       (.I0(G[6]),
        .I1(G[5]),
        .I2(G[4]),
        .O(\disparity[4]_i_14__1_n_0 ));
  LUT6 #(
    .INIT(64'h171717FF17FFFFFF)) 
    \disparity[4]_i_15__0 
       (.I0(G[3]),
        .I1(G[2]),
        .I2(G[1]),
        .I3(G[6]),
        .I4(G[5]),
        .I5(G[4]),
        .O(\disparity[4]_i_15__0_n_0 ));
  LUT6 #(
    .INIT(64'h2BB2B22BB22B2BB2)) 
    \disparity[4]_i_16__0 
       (.I0(\disparity[4]_i_24_n_0 ),
        .I1(\disparity_reg_n_0_[2] ),
        .I2(\disparity[4]_i_23_n_0 ),
        .I3(\disparity[4]_i_20_n_0 ),
        .I4(\disparity[4]_i_21_n_0 ),
        .I5(\disparity[4]_i_22_n_0 ),
        .O(\disparity[4]_i_16__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hFFFFB669)) 
    \disparity[4]_i_17__0 
       (.I0(\disparity[4]_i_22_n_0 ),
        .I1(\disparity[4]_i_23_n_0 ),
        .I2(\disparity[4]_i_21_n_0 ),
        .I3(\disparity[4]_i_20_n_0 ),
        .I4(\disparity[2]_i_3__0_n_0 ),
        .O(\disparity[4]_i_17__0_n_0 ));
  LUT6 #(
    .INIT(64'hD5D5D5542A2A2AAB)) 
    \disparity[4]_i_18 
       (.I0(\disparity[4]_i_8__0_n_0 ),
        .I1(\disparity_reg_n_0_[2] ),
        .I2(\disparity[4]_i_9__0_n_0 ),
        .I3(\disparity_reg_n_0_[1] ),
        .I4(\disparity[2]_i_3__0_n_0 ),
        .I5(\disparity[4]_i_25_n_0 ),
        .O(\disparity[4]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h3133001033733133)) 
    \disparity[4]_i_19 
       (.I0(\disparity[4]_i_4__0_n_0 ),
        .I1(\disparity[4]_i_8__0_n_0 ),
        .I2(\disparity_reg_n_0_[1] ),
        .I3(\disparity[2]_i_3__0_n_0 ),
        .I4(\disparity_reg_n_0_[2] ),
        .I5(\disparity[4]_i_9__0_n_0 ),
        .O(\disparity[4]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h6F60FFFF6F600000)) 
    \disparity[4]_i_1__0 
       (.I0(\disparity[4]_i_2__0_n_0 ),
        .I1(\disparity[4]_i_3__0_n_0 ),
        .I2(\disparity[4]_i_4__0_n_0 ),
        .I3(\disparity[4]_i_5_n_0 ),
        .I4(\disparity[4]_i_6__0_n_0 ),
        .I5(\disparity[4]_i_7__0_n_0 ),
        .O(\disparity[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'hD24B2DB4)) 
    \disparity[4]_i_20 
       (.I0(G[3]),
        .I1(\disparity[4]_i_4__0_n_0 ),
        .I2(G[1]),
        .I3(G[2]),
        .I4(G[0]),
        .O(\disparity[4]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'hA6599A65)) 
    \disparity[4]_i_21 
       (.I0(\q_out[3]_i_2_n_0 ),
        .I1(G[6]),
        .I2(G[5]),
        .I3(G[4]),
        .I4(\disparity[4]_i_4__0_n_0 ),
        .O(\disparity[4]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h90060690)) 
    \disparity[4]_i_22 
       (.I0(G[1]),
        .I1(G[3]),
        .I2(G[0]),
        .I3(G[7]),
        .I4(G[5]),
        .O(\disparity[4]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h47D1D147)) 
    \disparity[4]_i_23 
       (.I0(G[0]),
        .I1(\q_out[7]_i_2__0_n_0 ),
        .I2(\disparity[4]_i_4__0_n_0 ),
        .I3(G[5]),
        .I4(\disparity[4]_i_26_n_0 ),
        .O(\disparity[4]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'hD77D7DD7)) 
    \disparity[4]_i_24 
       (.I0(\disparity_reg_n_0_[1] ),
        .I1(G[5]),
        .I2(G[7]),
        .I3(G[3]),
        .I4(G[1]),
        .O(\disparity[4]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h666A6AAA5666666A)) 
    \disparity[4]_i_25 
       (.I0(\disparity_reg_n_0_[4] ),
        .I1(\disparity_reg_n_0_[3] ),
        .I2(\disparity[4]_i_20_n_0 ),
        .I3(\disparity[4]_i_21_n_0 ),
        .I4(\disparity[4]_i_22_n_0 ),
        .I5(\disparity[4]_i_23_n_0 ),
        .O(\disparity[4]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \disparity[4]_i_26 
       (.I0(G[4]),
        .I1(G[5]),
        .I2(G[6]),
        .I3(\q_out[3]_i_2_n_0 ),
        .O(\disparity[4]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h45044545)) 
    \disparity[4]_i_2__0 
       (.I0(\disparity[4]_i_8__0_n_0 ),
        .I1(\disparity_reg_n_0_[2] ),
        .I2(\disparity[4]_i_9__0_n_0 ),
        .I3(\disparity_reg_n_0_[1] ),
        .I4(\disparity[2]_i_3__0_n_0 ),
        .O(\disparity[4]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h6966)) 
    \disparity[4]_i_3__0 
       (.I0(\disparity[4]_i_10__1_n_0 ),
        .I1(\disparity_reg_n_0_[4] ),
        .I2(\disparity[4]_i_11__0_n_0 ),
        .I3(\disparity_reg_n_0_[3] ),
        .O(\disparity[4]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h4C4C04047FFFB7FF)) 
    \disparity[4]_i_4__0 
       (.I0(\disparity[4]_i_12__1_n_0 ),
        .I1(\disparity[4]_i_13__0_n_0 ),
        .I2(\disparity[4]_i_14__1_n_0 ),
        .I3(G[0]),
        .I4(G[7]),
        .I5(\disparity[4]_i_15__0_n_0 ),
        .O(\disparity[4]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h69996669)) 
    \disparity[4]_i_5 
       (.I0(\disparity[4]_i_10__1_n_0 ),
        .I1(\disparity_reg_n_0_[4] ),
        .I2(\disparity[4]_i_11__0_n_0 ),
        .I3(\disparity_reg_n_0_[3] ),
        .I4(\disparity[4]_i_16__0_n_0 ),
        .O(\disparity[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h444444444444444F)) 
    \disparity[4]_i_6__0 
       (.I0(\disparity[4]_i_17__0_n_0 ),
        .I1(\disparity[4]_i_10__1_n_0 ),
        .I2(\disparity_reg_n_0_[4] ),
        .I3(\disparity_reg_n_0_[3] ),
        .I4(\disparity_reg_n_0_[1] ),
        .I5(\disparity_reg_n_0_[2] ),
        .O(\disparity[4]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \disparity[4]_i_7__0 
       (.I0(\disparity[4]_i_18_n_0 ),
        .I1(\disparity[4]_i_4__0_n_0 ),
        .I2(\disparity[4]_i_5_n_0 ),
        .I3(\disparity[3]_i_3__0_n_0 ),
        .I4(\disparity[4]_i_3__0_n_0 ),
        .I5(\disparity[4]_i_19_n_0 ),
        .O(\disparity[4]_i_7__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'hA9956AA9)) 
    \disparity[4]_i_8__0 
       (.I0(\disparity_reg_n_0_[3] ),
        .I1(\disparity[4]_i_20_n_0 ),
        .I2(\disparity[4]_i_21_n_0 ),
        .I3(\disparity[4]_i_22_n_0 ),
        .I4(\disparity[4]_i_23_n_0 ),
        .O(\disparity[4]_i_8__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \disparity[4]_i_9__0 
       (.I0(\disparity[4]_i_22_n_0 ),
        .I1(\disparity[4]_i_21_n_0 ),
        .I2(\disparity[4]_i_20_n_0 ),
        .I3(\disparity[4]_i_23_n_0 ),
        .O(\disparity[4]_i_9__0_n_0 ));
  FDRE \disparity_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\disparity[1]_i_1__0_n_0 ),
        .Q(\disparity_reg_n_0_[1] ),
        .R(\disparity_reg[1]_0 ));
  FDRE \disparity_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\disparity[2]_i_1__0_n_0 ),
        .Q(\disparity_reg_n_0_[2] ),
        .R(\disparity_reg[1]_0 ));
  FDRE \disparity_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\disparity[3]_i_1__0_n_0 ),
        .Q(\disparity_reg_n_0_[3] ),
        .R(\disparity_reg[1]_0 ));
  FDRE \disparity_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\disparity[4]_i_1__0_n_0 ),
        .Q(\disparity_reg_n_0_[4] ),
        .R(\disparity_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h39C9)) 
    \q_out[0]_i_1__1 
       (.I0(\disparity[3]_i_3__0_n_0 ),
        .I1(G[0]),
        .I2(\disparity[4]_i_6__0_n_0 ),
        .I3(\disparity[4]_i_4__0_n_0 ),
        .O(\q_out[0]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \q_out[1]_i_1__1 
       (.I0(\disparity[4]_i_4__0_n_0 ),
        .I1(G[0]),
        .I2(G[1]),
        .I3(G_0_sn_1),
        .O(\q_out[1]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \q_out[2]_i_1__1 
       (.I0(G[1]),
        .I1(G[2]),
        .I2(G[0]),
        .I3(G_0_sn_1),
        .O(\q_out[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h0F96)) 
    \q_out[3]_i_1__1 
       (.I0(\disparity[3]_i_3__0_n_0 ),
        .I1(\disparity[4]_i_4__0_n_0 ),
        .I2(\q_out[3]_i_2_n_0 ),
        .I3(\disparity[4]_i_6__0_n_0 ),
        .O(\q_out[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \q_out[3]_i_2 
       (.I0(G[3]),
        .I1(G[1]),
        .I2(G[2]),
        .I3(G[0]),
        .O(\q_out[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \q_out[4]_i_2 
       (.I0(G[4]),
        .I1(G[0]),
        .I2(G[2]),
        .I3(G[1]),
        .I4(G[3]),
        .O(G_4_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hF00F6996)) 
    \q_out[5]_i_1__1 
       (.I0(\disparity[3]_i_3__0_n_0 ),
        .I1(\disparity[4]_i_4__0_n_0 ),
        .I2(G_4_sn_1),
        .I3(G[5]),
        .I4(\disparity[4]_i_6__0_n_0 ),
        .O(\q_out[5]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \q_out[6]_i_1__1 
       (.I0(\q_out[3]_i_2_n_0 ),
        .I1(G[6]),
        .I2(G[5]),
        .I3(G[4]),
        .I4(G_0_sn_1),
        .O(\q_out[6]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hCC69)) 
    \q_out[7]_i_1__1 
       (.I0(\disparity[3]_i_3__0_n_0 ),
        .I1(\q_out[7]_i_2__0_n_0 ),
        .I2(\disparity[4]_i_4__0_n_0 ),
        .I3(\disparity[4]_i_6__0_n_0 ),
        .O(\q_out[7]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \q_out[7]_i_2__0 
       (.I0(G[1]),
        .I1(G[2]),
        .I2(G[3]),
        .I3(\disparity[4]_i_14__1_n_0 ),
        .I4(G[0]),
        .I5(G[7]),
        .O(\q_out[7]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \q_out[8]_i_1__1 
       (.I0(\disparity[4]_i_4__0_n_0 ),
        .O(\q_out[8]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \q_out[9]_i_1__1 
       (.I0(\disparity[4]_i_4__0_n_0 ),
        .I1(\disparity[4]_i_6__0_n_0 ),
        .I2(\disparity[3]_i_3__0_n_0 ),
        .O(G_0_sn_1));
  FDRE \q_out_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\q_out[0]_i_1__1_n_0 ),
        .Q(D[0]),
        .R(\disparity_reg[1]_0 ));
  FDRE \q_out_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\q_out[1]_i_1__1_n_0 ),
        .Q(D[1]),
        .R(\disparity_reg[1]_0 ));
  FDSE \q_out_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\q_out[2]_i_1__1_n_0 ),
        .Q(D[2]),
        .S(\disparity_reg[1]_0 ));
  FDRE \q_out_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\q_out[3]_i_1__1_n_0 ),
        .Q(D[3]),
        .R(\disparity_reg[1]_0 ));
  FDRE \q_out_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\q_out_reg[4]_0 ),
        .Q(D[4]),
        .R(1'b0));
  FDRE \q_out_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\q_out[5]_i_1__1_n_0 ),
        .Q(D[5]),
        .R(\disparity_reg[1]_0 ));
  FDSE \q_out_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\q_out[6]_i_1__1_n_0 ),
        .Q(D[6]),
        .S(\disparity_reg[1]_0 ));
  FDRE \q_out_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\q_out[7]_i_1__1_n_0 ),
        .Q(D[7]),
        .R(\disparity_reg[1]_0 ));
  FDSE \q_out_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\q_out[8]_i_1__1_n_0 ),
        .Q(D[8]),
        .S(\disparity_reg[1]_0 ));
  FDSE \q_out_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(G_0_sn_1),
        .Q(D[9]),
        .S(\disparity_reg[1]_0 ));
endmodule

(* ORIG_REF_NAME = "tmds_encoder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_encoder_3
   (D,
    R_7_sp_1,
    R_0_sp_1,
    \R[0]_0 ,
    R_3_sp_1,
    q_out0_in,
    CLK,
    \disparity_reg[4]_0 ,
    R);
  output [9:0]D;
  output R_7_sp_1;
  output R_0_sp_1;
  output \R[0]_0 ;
  output R_3_sp_1;
  input [4:0]q_out0_in;
  input CLK;
  input \disparity_reg[4]_0 ;
  input [7:0]R;

  wire CLK;
  wire [9:0]D;
  wire [7:0]R;
  wire \R[0]_0 ;
  wire R_0_sn_1;
  wire R_3_sn_1;
  wire R_7_sn_1;
  wire \disparity[1]_i_1_n_0 ;
  wire \disparity[2]_i_1_n_0 ;
  wire \disparity[2]_i_2_n_0 ;
  wire \disparity[2]_i_3_n_0 ;
  wire \disparity[2]_i_4_n_0 ;
  wire \disparity[2]_i_5_n_0 ;
  wire \disparity[3]_i_10_n_0 ;
  wire \disparity[3]_i_11_n_0 ;
  wire \disparity[3]_i_12_n_0 ;
  wire \disparity[3]_i_13_n_0 ;
  wire \disparity[3]_i_14_n_0 ;
  wire \disparity[3]_i_15_n_0 ;
  wire \disparity[3]_i_16_n_0 ;
  wire \disparity[3]_i_17_n_0 ;
  wire \disparity[3]_i_18_n_0 ;
  wire \disparity[3]_i_19_n_0 ;
  wire \disparity[3]_i_1_n_0 ;
  wire \disparity[3]_i_20_n_0 ;
  wire \disparity[3]_i_21_n_0 ;
  wire \disparity[3]_i_2_n_0 ;
  wire \disparity[3]_i_3_n_0 ;
  wire \disparity[3]_i_4__1_n_0 ;
  wire \disparity[3]_i_5_n_0 ;
  wire \disparity[3]_i_6__0_n_0 ;
  wire \disparity[3]_i_7_n_0 ;
  wire \disparity[3]_i_8_n_0 ;
  wire \disparity[3]_i_9_n_0 ;
  wire \disparity[4]_i_10_n_0 ;
  wire \disparity[4]_i_11_n_0 ;
  wire \disparity[4]_i_12_n_0 ;
  wire \disparity[4]_i_13_n_0 ;
  wire \disparity[4]_i_14__0_n_0 ;
  wire \disparity[4]_i_15_n_0 ;
  wire \disparity[4]_i_16_n_0 ;
  wire \disparity[4]_i_17_n_0 ;
  wire \disparity[4]_i_2_n_0 ;
  wire \disparity[4]_i_3_n_0 ;
  wire \disparity[4]_i_4_n_0 ;
  wire \disparity[4]_i_5__1_n_0 ;
  wire \disparity[4]_i_6_n_0 ;
  wire \disparity[4]_i_7_n_0 ;
  wire \disparity[4]_i_8_n_0 ;
  wire \disparity[4]_i_9_n_0 ;
  wire \disparity_reg[4]_0 ;
  wire \disparity_reg_n_0_[1] ;
  wire \disparity_reg_n_0_[2] ;
  wire \disparity_reg_n_0_[3] ;
  wire \disparity_reg_n_0_[4] ;
  wire [4:0]q_out0_in;
  wire \q_out[1]_i_1__0_n_0 ;
  wire \q_out[2]_i_1__0_n_0 ;
  wire \q_out[6]_i_1__0_n_0 ;
  wire \q_out[7]_i_3_n_0 ;
  wire \q_out[8]_i_1__0_n_0 ;
  wire \q_out[8]_i_2_n_0 ;
  wire \q_out[8]_i_3_n_0 ;
  wire \q_out[8]_i_4_n_0 ;
  wire \q_out[8]_i_5_n_0 ;

  assign R_0_sp_1 = R_0_sn_1;
  assign R_3_sp_1 = R_3_sn_1;
  assign R_7_sp_1 = R_7_sn_1;
  LUT5 #(
    .INIT(32'h99966696)) 
    \disparity[1]_i_1 
       (.I0(\disparity[2]_i_4_n_0 ),
        .I1(\disparity_reg_n_0_[1] ),
        .I2(\disparity[4]_i_5__1_n_0 ),
        .I3(\q_out[8]_i_1__0_n_0 ),
        .I4(\disparity[2]_i_3_n_0 ),
        .O(\disparity[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5995556659956655)) 
    \disparity[2]_i_1 
       (.I0(\disparity[2]_i_2_n_0 ),
        .I1(\q_out[8]_i_1__0_n_0 ),
        .I2(\disparity[2]_i_3_n_0 ),
        .I3(\disparity[2]_i_4_n_0 ),
        .I4(\disparity_reg_n_0_[1] ),
        .I5(\disparity[4]_i_5__1_n_0 ),
        .O(\disparity[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \disparity[2]_i_2 
       (.I0(\disparity_reg_n_0_[2] ),
        .I1(\disparity[2]_i_5_n_0 ),
        .O(\disparity[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \disparity[2]_i_3 
       (.I0(\disparity[3]_i_4__1_n_0 ),
        .I1(\disparity[3]_i_3_n_0 ),
        .O(\disparity[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \disparity[2]_i_4 
       (.I0(R[1]),
        .I1(R[3]),
        .I2(R[7]),
        .I3(R[5]),
        .O(\disparity[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \disparity[2]_i_5 
       (.I0(\disparity[3]_i_10_n_0 ),
        .I1(\disparity[3]_i_11_n_0 ),
        .I2(\disparity[3]_i_12_n_0 ),
        .I3(\disparity[3]_i_13_n_0 ),
        .O(\disparity[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h0131CDFD)) 
    \disparity[3]_i_1 
       (.I0(\disparity[3]_i_2_n_0 ),
        .I1(\disparity[3]_i_3_n_0 ),
        .I2(\disparity[3]_i_4__1_n_0 ),
        .I3(\disparity[3]_i_5_n_0 ),
        .I4(\disparity[3]_i_6__0_n_0 ),
        .O(\disparity[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4BB4B44B2DD2D22D)) 
    \disparity[3]_i_10 
       (.I0(R[6]),
        .I1(R[5]),
        .I2(R[3]),
        .I3(R_0_sn_1),
        .I4(R[4]),
        .I5(\q_out[8]_i_1__0_n_0 ),
        .O(\disparity[3]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h639CC639)) 
    \disparity[3]_i_11 
       (.I0(R[3]),
        .I1(R[0]),
        .I2(R[2]),
        .I3(R[1]),
        .I4(\q_out[8]_i_1__0_n_0 ),
        .O(\disparity[3]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h90060690)) 
    \disparity[3]_i_12 
       (.I0(R[1]),
        .I1(R[3]),
        .I2(R[0]),
        .I3(R[7]),
        .I4(R[5]),
        .O(\disparity[3]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h2E47472E)) 
    \disparity[3]_i_13 
       (.I0(\q_out[8]_i_1__0_n_0 ),
        .I1(\disparity[3]_i_20_n_0 ),
        .I2(R[0]),
        .I3(R[5]),
        .I4(\disparity[3]_i_21_n_0 ),
        .O(\disparity[3]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \disparity[3]_i_14 
       (.I0(\disparity_reg_n_0_[4] ),
        .I1(\disparity_reg_n_0_[2] ),
        .I2(\disparity_reg_n_0_[1] ),
        .I3(\disparity_reg_n_0_[3] ),
        .O(\disparity[3]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \disparity[3]_i_15 
       (.I0(\disparity_reg_n_0_[2] ),
        .I1(\disparity[2]_i_5_n_0 ),
        .O(\disparity[3]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h82282882)) 
    \disparity[3]_i_16 
       (.I0(\disparity_reg_n_0_[1] ),
        .I1(R[5]),
        .I2(R[7]),
        .I3(R[3]),
        .I4(R[1]),
        .O(\disparity[3]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h6066)) 
    \disparity[3]_i_17 
       (.I0(\disparity[2]_i_5_n_0 ),
        .I1(\disparity_reg_n_0_[2] ),
        .I2(\disparity_reg_n_0_[1] ),
        .I3(\disparity[2]_i_4_n_0 ),
        .O(\disparity[3]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \disparity[3]_i_18 
       (.I0(\disparity_reg_n_0_[2] ),
        .I1(\disparity[4]_i_15_n_0 ),
        .O(\disparity[3]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h00006996)) 
    \disparity[3]_i_19 
       (.I0(R[5]),
        .I1(R[7]),
        .I2(R[3]),
        .I3(R[1]),
        .I4(\disparity_reg_n_0_[1] ),
        .O(\disparity[3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCC939333363)) 
    \disparity[3]_i_2 
       (.I0(\q_out[8]_i_1__0_n_0 ),
        .I1(\disparity[3]_i_7_n_0 ),
        .I2(\disparity[3]_i_8_n_0 ),
        .I3(\disparity[2]_i_4_n_0 ),
        .I4(\disparity_reg_n_0_[1] ),
        .I5(\disparity[3]_i_9_n_0 ),
        .O(\disparity[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \disparity[3]_i_20 
       (.I0(R[1]),
        .I1(R[2]),
        .I2(R[3]),
        .I3(R[0]),
        .I4(R[7]),
        .I5(\q_out[8]_i_5_n_0 ),
        .O(\disparity[3]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h69969669)) 
    \disparity[3]_i_21 
       (.I0(R[4]),
        .I1(R[5]),
        .I2(R[6]),
        .I3(R_0_sn_1),
        .I4(R[3]),
        .O(\disparity[3]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00006816)) 
    \disparity[3]_i_3 
       (.I0(\disparity[3]_i_10_n_0 ),
        .I1(\disparity[3]_i_11_n_0 ),
        .I2(\disparity[3]_i_12_n_0 ),
        .I3(\disparity[3]_i_13_n_0 ),
        .I4(\disparity[2]_i_4_n_0 ),
        .I5(\disparity[3]_i_14_n_0 ),
        .O(\disparity[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'h56556A56)) 
    \disparity[3]_i_4__1 
       (.I0(\disparity_reg_n_0_[4] ),
        .I1(\disparity[3]_i_11_n_0 ),
        .I2(\disparity[3]_i_10_n_0 ),
        .I3(\disparity[3]_i_13_n_0 ),
        .I4(\disparity[3]_i_12_n_0 ),
        .O(\disparity[3]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'hEFE0101F202FDFD0)) 
    \disparity[3]_i_5 
       (.I0(\disparity[3]_i_15_n_0 ),
        .I1(\disparity[3]_i_16_n_0 ),
        .I2(\q_out[8]_i_1__0_n_0 ),
        .I3(\disparity[3]_i_17_n_0 ),
        .I4(\disparity[3]_i_7_n_0 ),
        .I5(\disparity[3]_i_18_n_0 ),
        .O(\disparity[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h636C63636C636C6C)) 
    \disparity[3]_i_6__0 
       (.I0(\disparity[4]_i_7_n_0 ),
        .I1(\disparity[3]_i_7_n_0 ),
        .I2(\q_out[8]_i_1__0_n_0 ),
        .I3(\disparity[3]_i_19_n_0 ),
        .I4(\disparity[2]_i_2_n_0 ),
        .I5(\disparity[3]_i_18_n_0 ),
        .O(\disparity[3]_i_6__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'hA96A95A9)) 
    \disparity[3]_i_7 
       (.I0(\disparity_reg_n_0_[3] ),
        .I1(\disparity[3]_i_11_n_0 ),
        .I2(\disparity[3]_i_10_n_0 ),
        .I3(\disparity[3]_i_13_n_0 ),
        .I4(\disparity[3]_i_12_n_0 ),
        .O(\disparity[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h14414114)) 
    \disparity[3]_i_8 
       (.I0(\disparity_reg_n_0_[2] ),
        .I1(\disparity[3]_i_12_n_0 ),
        .I2(\disparity[3]_i_13_n_0 ),
        .I3(\disparity[3]_i_11_n_0 ),
        .I4(\disparity[3]_i_10_n_0 ),
        .O(\disparity[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h82282882)) 
    \disparity[3]_i_9 
       (.I0(\disparity_reg_n_0_[2] ),
        .I1(\disparity[3]_i_13_n_0 ),
        .I2(\disparity[3]_i_12_n_0 ),
        .I3(\disparity[3]_i_11_n_0 ),
        .I4(\disparity[3]_i_10_n_0 ),
        .O(\disparity[3]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h4440)) 
    \disparity[4]_i_10 
       (.I0(\disparity[2]_i_5_n_0 ),
        .I1(\disparity_reg_n_0_[2] ),
        .I2(\disparity[2]_i_4_n_0 ),
        .I3(\disparity_reg_n_0_[1] ),
        .O(\disparity[4]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \disparity[4]_i_11 
       (.I0(\disparity[3]_i_10_n_0 ),
        .I1(\disparity[3]_i_11_n_0 ),
        .I2(\disparity[3]_i_12_n_0 ),
        .I3(\disparity[3]_i_13_n_0 ),
        .O(\disparity[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hA66666656665A666)) 
    \disparity[4]_i_12 
       (.I0(\disparity[4]_i_16_n_0 ),
        .I1(\disparity[3]_i_7_n_0 ),
        .I2(\disparity[3]_i_16_n_0 ),
        .I3(\disparity_reg_n_0_[2] ),
        .I4(\disparity[4]_i_14__0_n_0 ),
        .I5(\disparity[4]_i_17_n_0 ),
        .O(\disparity[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000D741FFFF28BE)) 
    \disparity[4]_i_13 
       (.I0(\disparity[3]_i_19_n_0 ),
        .I1(\disparity[4]_i_17_n_0 ),
        .I2(\disparity[4]_i_14__0_n_0 ),
        .I3(\disparity_reg_n_0_[2] ),
        .I4(\disparity[3]_i_7_n_0 ),
        .I5(\disparity[4]_i_16_n_0 ),
        .O(\disparity[4]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h559696AA69AA5569)) 
    \disparity[4]_i_14__0 
       (.I0(\disparity[3]_i_12_n_0 ),
        .I1(\disparity[3]_i_21_n_0 ),
        .I2(R[5]),
        .I3(R[0]),
        .I4(\disparity[3]_i_20_n_0 ),
        .I5(\q_out[8]_i_1__0_n_0 ),
        .O(\disparity[4]_i_14__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \disparity[4]_i_15 
       (.I0(\disparity[3]_i_10_n_0 ),
        .I1(\disparity[3]_i_11_n_0 ),
        .I2(\disparity[3]_i_13_n_0 ),
        .I3(\disparity[3]_i_12_n_0 ),
        .O(\disparity[4]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hA6AAAAAA556565A6)) 
    \disparity[4]_i_16 
       (.I0(\disparity_reg_n_0_[4] ),
        .I1(\disparity[3]_i_12_n_0 ),
        .I2(\disparity[3]_i_13_n_0 ),
        .I3(\disparity[3]_i_10_n_0 ),
        .I4(\disparity[3]_i_11_n_0 ),
        .I5(\disparity_reg_n_0_[3] ),
        .O(\disparity[4]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h9C6339C6639CC639)) 
    \disparity[4]_i_17 
       (.I0(\q_out[8]_i_1__0_n_0 ),
        .I1(R[1]),
        .I2(R[2]),
        .I3(R[0]),
        .I4(R[3]),
        .I5(\disparity[3]_i_10_n_0 ),
        .O(\disparity[4]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF4700)) 
    \disparity[4]_i_2 
       (.I0(\disparity[4]_i_3_n_0 ),
        .I1(\q_out[8]_i_1__0_n_0 ),
        .I2(\disparity[4]_i_4_n_0 ),
        .I3(\disparity[4]_i_5__1_n_0 ),
        .I4(\disparity[4]_i_6_n_0 ),
        .O(\disparity[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h599A)) 
    \disparity[4]_i_3 
       (.I0(\disparity[3]_i_4__1_n_0 ),
        .I1(\disparity[4]_i_7_n_0 ),
        .I2(\disparity_reg_n_0_[3] ),
        .I3(\disparity[4]_i_8_n_0 ),
        .O(\disparity[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2DCC3C2DD233C3D2)) 
    \disparity[4]_i_4 
       (.I0(\disparity[4]_i_9_n_0 ),
        .I1(\disparity[4]_i_10_n_0 ),
        .I2(\disparity[4]_i_11_n_0 ),
        .I3(\disparity[4]_i_8_n_0 ),
        .I4(\disparity_reg_n_0_[3] ),
        .I5(\disparity_reg_n_0_[4] ),
        .O(\disparity[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \disparity[4]_i_5__1 
       (.I0(\disparity[3]_i_4__1_n_0 ),
        .I1(\disparity[3]_i_3_n_0 ),
        .O(\disparity[4]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'h4F004FFF440044CC)) 
    \disparity[4]_i_6 
       (.I0(\disparity[4]_i_3_n_0 ),
        .I1(\disparity[3]_i_3_n_0 ),
        .I2(\disparity[4]_i_12_n_0 ),
        .I3(\q_out[8]_i_1__0_n_0 ),
        .I4(\disparity[4]_i_13_n_0 ),
        .I5(\disparity[2]_i_3_n_0 ),
        .O(\disparity[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h14417DD77DD77DD7)) 
    \disparity[4]_i_7 
       (.I0(\disparity_reg_n_0_[2] ),
        .I1(\disparity[4]_i_14__0_n_0 ),
        .I2(\disparity[3]_i_11_n_0 ),
        .I3(\disparity[3]_i_10_n_0 ),
        .I4(\disparity[2]_i_4_n_0 ),
        .I5(\disparity_reg_n_0_[1] ),
        .O(\disparity[4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h244D)) 
    \disparity[4]_i_8 
       (.I0(\disparity[3]_i_12_n_0 ),
        .I1(\disparity[3]_i_13_n_0 ),
        .I2(\disparity[3]_i_10_n_0 ),
        .I3(\disparity[3]_i_11_n_0 ),
        .O(\disparity[4]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \disparity[4]_i_9 
       (.I0(\disparity[4]_i_15_n_0 ),
        .I1(\disparity_reg_n_0_[2] ),
        .I2(\disparity[2]_i_4_n_0 ),
        .I3(\disparity_reg_n_0_[1] ),
        .O(\disparity[4]_i_9_n_0 ));
  FDRE \disparity_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\disparity[1]_i_1_n_0 ),
        .Q(\disparity_reg_n_0_[1] ),
        .R(\disparity_reg[4]_0 ));
  FDRE \disparity_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\disparity[2]_i_1_n_0 ),
        .Q(\disparity_reg_n_0_[2] ),
        .R(\disparity_reg[4]_0 ));
  FDRE \disparity_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\disparity[3]_i_1_n_0 ),
        .Q(\disparity_reg_n_0_[3] ),
        .R(\disparity_reg[4]_0 ));
  FDRE \disparity_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\disparity[4]_i_2_n_0 ),
        .Q(\disparity_reg_n_0_[4] ),
        .R(\disparity_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \q_out[1]_i_1__0 
       (.I0(R[0]),
        .I1(R[1]),
        .I2(\q_out[8]_i_1__0_n_0 ),
        .I3(R_7_sn_1),
        .O(\q_out[1]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \q_out[2]_i_1__0 
       (.I0(R[1]),
        .I1(R[2]),
        .I2(R[0]),
        .I3(R_7_sn_1),
        .O(\q_out[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \q_out[4]_i_2__1 
       (.I0(R[0]),
        .I1(R[2]),
        .I2(R[1]),
        .O(R_0_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \q_out[5]_i_2 
       (.I0(\q_out[8]_i_1__0_n_0 ),
        .I1(R[0]),
        .I2(R[2]),
        .I3(R[1]),
        .I4(R[3]),
        .O(\R[0]_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \q_out[6]_i_1__0 
       (.I0(R[3]),
        .I1(R_0_sn_1),
        .I2(R[6]),
        .I3(R[5]),
        .I4(R[4]),
        .I5(R_7_sn_1),
        .O(\q_out[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \q_out[7]_i_2 
       (.I0(\q_out[7]_i_3_n_0 ),
        .I1(R[3]),
        .I2(R[2]),
        .I3(R[1]),
        .I4(\q_out[8]_i_1__0_n_0 ),
        .O(R_3_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \q_out[7]_i_3 
       (.I0(R[4]),
        .I1(R[5]),
        .I2(R[6]),
        .I3(R[7]),
        .I4(R[0]),
        .O(\q_out[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hE2AEA2AA22E222A2)) 
    \q_out[8]_i_1__0 
       (.I0(\q_out[8]_i_2_n_0 ),
        .I1(\q_out[8]_i_3_n_0 ),
        .I2(\q_out[8]_i_4_n_0 ),
        .I3(R[7]),
        .I4(R[0]),
        .I5(\q_out[8]_i_5_n_0 ),
        .O(\q_out[8]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h171717FF17FFFFFF)) 
    \q_out[8]_i_2 
       (.I0(R[3]),
        .I1(R[2]),
        .I2(R[1]),
        .I3(R[6]),
        .I4(R[5]),
        .I5(R[4]),
        .O(\q_out[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \q_out[8]_i_3 
       (.I0(R[3]),
        .I1(R[2]),
        .I2(R[1]),
        .I3(R[6]),
        .I4(R[5]),
        .I5(R[4]),
        .O(\q_out[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \q_out[8]_i_4 
       (.I0(R[3]),
        .I1(R[2]),
        .I2(R[1]),
        .O(\q_out[8]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \q_out[8]_i_5 
       (.I0(R[6]),
        .I1(R[5]),
        .I2(R[4]),
        .O(\q_out[8]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h74)) 
    \q_out[9]_i_1__0 
       (.I0(\q_out[8]_i_1__0_n_0 ),
        .I1(\disparity[3]_i_3_n_0 ),
        .I2(\disparity[3]_i_4__1_n_0 ),
        .O(R_7_sn_1));
  FDRE \q_out_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(q_out0_in[0]),
        .Q(D[0]),
        .R(1'b0));
  FDRE \q_out_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\q_out[1]_i_1__0_n_0 ),
        .Q(D[1]),
        .R(\disparity_reg[4]_0 ));
  FDSE \q_out_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\q_out[2]_i_1__0_n_0 ),
        .Q(D[2]),
        .S(\disparity_reg[4]_0 ));
  FDRE \q_out_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(q_out0_in[1]),
        .Q(D[3]),
        .R(1'b0));
  FDRE \q_out_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(q_out0_in[2]),
        .Q(D[4]),
        .R(1'b0));
  FDRE \q_out_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(q_out0_in[3]),
        .Q(D[5]),
        .R(1'b0));
  FDSE \q_out_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\q_out[6]_i_1__0_n_0 ),
        .Q(D[6]),
        .S(\disparity_reg[4]_0 ));
  FDRE \q_out_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(q_out0_in[4]),
        .Q(D[7]),
        .R(1'b0));
  FDSE \q_out_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\q_out[8]_i_1__0_n_0 ),
        .Q(D[8]),
        .S(\disparity_reg[4]_0 ));
  FDSE \q_out_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(R_7_sn_1),
        .Q(D[9]),
        .S(\disparity_reg[4]_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_video_out
   (HDMI_clk_p,
    HDMI_clk_n,
    clk25MHz_reg,
    HDMI_data_p,
    HDMI_data_n,
    s_h_sync_reg,
    v_sync,
    video_en,
    R,
    G,
    B,
    clk250);
  output HDMI_clk_p;
  output HDMI_clk_n;
  output clk25MHz_reg;
  output [2:0]HDMI_data_p;
  output [2:0]HDMI_data_n;
  output s_h_sync_reg;
  output v_sync;
  output video_en;
  input [7:0]R;
  input [7:0]G;
  input [7:0]B;
  input clk250;

  wire [7:0]B;
  wire [7:0]G;
  wire HDMI_clk_n;
  wire HDMI_clk_p;
  wire [2:0]HDMI_data_n;
  wire [2:0]HDMI_data_p;
  wire [7:0]R;
  wire Sync_n_10;
  wire Sync_n_11;
  wire Sync_n_17;
  wire Sync_n_18;
  wire Sync_n_19;
  wire Sync_n_3;
  wire Sync_n_4;
  wire Sync_n_5;
  wire Sync_n_6;
  wire Sync_n_7;
  wire Sync_n_8;
  wire Sync_n_9;
  wire TDMS_ENCODER_B_n_0;
  wire TDMS_ENCODER_B_n_1;
  wire TDMS_ENCODER_B_n_10;
  wire TDMS_ENCODER_B_n_11;
  wire TDMS_ENCODER_B_n_12;
  wire TDMS_ENCODER_B_n_13;
  wire TDMS_ENCODER_B_n_14;
  wire TDMS_ENCODER_B_n_15;
  wire TDMS_ENCODER_B_n_16;
  wire TDMS_ENCODER_B_n_17;
  wire TDMS_ENCODER_B_n_18;
  wire TDMS_ENCODER_B_n_19;
  wire TDMS_ENCODER_B_n_2;
  wire TDMS_ENCODER_B_n_3;
  wire TDMS_ENCODER_B_n_4;
  wire TDMS_ENCODER_B_n_5;
  wire TDMS_ENCODER_B_n_6;
  wire TDMS_ENCODER_B_n_7;
  wire TDMS_ENCODER_B_n_8;
  wire TDMS_ENCODER_B_n_9;
  wire TDMS_ENCODER_G_n_0;
  wire TDMS_ENCODER_G_n_1;
  wire TDMS_ENCODER_G_n_10;
  wire TDMS_ENCODER_G_n_11;
  wire TDMS_ENCODER_G_n_2;
  wire TDMS_ENCODER_G_n_3;
  wire TDMS_ENCODER_G_n_4;
  wire TDMS_ENCODER_G_n_5;
  wire TDMS_ENCODER_G_n_6;
  wire TDMS_ENCODER_G_n_7;
  wire TDMS_ENCODER_G_n_8;
  wire TDMS_ENCODER_G_n_9;
  wire TDMS_ENCODER_R_n_0;
  wire TDMS_ENCODER_R_n_1;
  wire TDMS_ENCODER_R_n_10;
  wire TDMS_ENCODER_R_n_11;
  wire TDMS_ENCODER_R_n_12;
  wire TDMS_ENCODER_R_n_13;
  wire TDMS_ENCODER_R_n_2;
  wire TDMS_ENCODER_R_n_3;
  wire TDMS_ENCODER_R_n_4;
  wire TDMS_ENCODER_R_n_5;
  wire TDMS_ENCODER_R_n_6;
  wire TDMS_ENCODER_R_n_7;
  wire TDMS_ENCODER_R_n_8;
  wire TDMS_ENCODER_R_n_9;
  wire clk250;
  wire clk25MHz_reg;
  wire [7:0]q_out0_in;
  wire s_h_sync_reg;
  wire tmds_b_shift;
  wire tmds_g_shift;
  wire tmds_r_shift;
  wire v_sync;
  wire video_en;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_register SR_b
       (.D({TDMS_ENCODER_B_n_0,TDMS_ENCODER_B_n_1,TDMS_ENCODER_B_n_2,TDMS_ENCODER_B_n_3,TDMS_ENCODER_B_n_4,TDMS_ENCODER_B_n_5,TDMS_ENCODER_B_n_6,TDMS_ENCODER_B_n_7,TDMS_ENCODER_B_n_8,TDMS_ENCODER_B_n_9}),
        .clk250(clk250),
        .tmds_b_shift(tmds_b_shift));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_register_0 SR_g
       (.D({TDMS_ENCODER_G_n_0,TDMS_ENCODER_G_n_1,TDMS_ENCODER_G_n_2,TDMS_ENCODER_G_n_3,TDMS_ENCODER_G_n_4,TDMS_ENCODER_G_n_5,TDMS_ENCODER_G_n_6,TDMS_ENCODER_G_n_7,TDMS_ENCODER_G_n_8,TDMS_ENCODER_G_n_9}),
        .clk250(clk250),
        .tmds_g_shift(tmds_g_shift));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_register_1 SR_r
       (.D({TDMS_ENCODER_R_n_0,TDMS_ENCODER_R_n_1,TDMS_ENCODER_R_n_2,TDMS_ENCODER_R_n_3,TDMS_ENCODER_R_n_4,TDMS_ENCODER_R_n_5,TDMS_ENCODER_R_n_6,TDMS_ENCODER_R_n_7,TDMS_ENCODER_R_n_8,TDMS_ENCODER_R_n_9}),
        .clk250(clk250),
        .tmds_r_shift(tmds_r_shift));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_video_sync Sync
       (.B(B[0]),
        .B_0_sp_1(Sync_n_3),
        .CLK(clk25MHz_reg),
        .R({R[5:3],R[0]}),
        .clk250(clk250),
        .h_active_reg_0(Sync_n_18),
        .h_active_reg_1(Sync_n_19),
        .q_out0_in({q_out0_in[7],q_out0_in[5:3],q_out0_in[0]}),
        .\q_out_reg[0] (TDMS_ENCODER_B_n_13),
        .\q_out_reg[0]_0 (TDMS_ENCODER_B_n_10),
        .\q_out_reg[0]_1 (TDMS_ENCODER_R_n_10),
        .\q_out_reg[1] (TDMS_ENCODER_B_n_14),
        .\q_out_reg[2] (TDMS_ENCODER_B_n_11),
        .\q_out_reg[3] (TDMS_ENCODER_B_n_16),
        .\q_out_reg[3]_0 (TDMS_ENCODER_R_n_12),
        .\q_out_reg[4] (TDMS_ENCODER_B_n_19),
        .\q_out_reg[4]_0 (TDMS_ENCODER_R_n_11),
        .\q_out_reg[4]_1 (TDMS_ENCODER_G_n_10),
        .\q_out_reg[4]_2 (TDMS_ENCODER_G_n_11),
        .\q_out_reg[5] (TDMS_ENCODER_B_n_15),
        .\q_out_reg[6] (TDMS_ENCODER_B_n_18),
        .\q_out_reg[7] (TDMS_ENCODER_B_n_17),
        .\q_out_reg[7]_0 (TDMS_ENCODER_R_n_13),
        .\q_out_reg[8] (TDMS_ENCODER_B_n_12),
        .s_h_sync_reg_0(s_h_sync_reg),
        .v_active_reg_0(Sync_n_4),
        .v_active_reg_1(Sync_n_5),
        .v_active_reg_2(Sync_n_6),
        .v_active_reg_3(Sync_n_7),
        .v_active_reg_4(Sync_n_8),
        .v_active_reg_5(Sync_n_9),
        .v_active_reg_6(Sync_n_10),
        .v_active_reg_7(Sync_n_11),
        .v_sync(v_sync),
        .v_sync_reg_0(Sync_n_17),
        .video_en(video_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_encoder TDMS_ENCODER_B
       (.B(B),
        .\B[0]_0 (TDMS_ENCODER_B_n_16),
        .\B[4]_0 (TDMS_ENCODER_B_n_19),
        .\B[7]_0 (TDMS_ENCODER_B_n_13),
        .B_0_sp_1(TDMS_ENCODER_B_n_11),
        .B_1_sp_1(TDMS_ENCODER_B_n_14),
        .B_3_sp_1(TDMS_ENCODER_B_n_17),
        .B_4_sp_1(TDMS_ENCODER_B_n_18),
        .B_5_sp_1(TDMS_ENCODER_B_n_15),
        .B_7_sp_1(TDMS_ENCODER_B_n_12),
        .CLK(clk25MHz_reg),
        .D({TDMS_ENCODER_B_n_0,TDMS_ENCODER_B_n_1,TDMS_ENCODER_B_n_2,TDMS_ENCODER_B_n_3,TDMS_ENCODER_B_n_4,TDMS_ENCODER_B_n_5,TDMS_ENCODER_B_n_6,TDMS_ENCODER_B_n_7,TDMS_ENCODER_B_n_8,TDMS_ENCODER_B_n_9}),
        .\disparity_reg[4]_0 (TDMS_ENCODER_B_n_10),
        .\disparity_reg[4]_1 (Sync_n_18),
        .\q_out_reg[0]_0 (Sync_n_3),
        .\q_out_reg[1]_0 (Sync_n_4),
        .\q_out_reg[2]_0 (Sync_n_5),
        .\q_out_reg[3]_0 (Sync_n_6),
        .\q_out_reg[4]_0 (Sync_n_7),
        .\q_out_reg[5]_0 (Sync_n_8),
        .\q_out_reg[6]_0 (Sync_n_9),
        .\q_out_reg[7]_0 (Sync_n_10),
        .\q_out_reg[8]_0 (Sync_n_11),
        .\q_out_reg[9]_0 (Sync_n_17));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_encoder_2 TDMS_ENCODER_G
       (.CLK(clk25MHz_reg),
        .D({TDMS_ENCODER_G_n_0,TDMS_ENCODER_G_n_1,TDMS_ENCODER_G_n_2,TDMS_ENCODER_G_n_3,TDMS_ENCODER_G_n_4,TDMS_ENCODER_G_n_5,TDMS_ENCODER_G_n_6,TDMS_ENCODER_G_n_7,TDMS_ENCODER_G_n_8,TDMS_ENCODER_G_n_9}),
        .G(G),
        .G_0_sp_1(TDMS_ENCODER_G_n_10),
        .G_4_sp_1(TDMS_ENCODER_G_n_11),
        .\disparity_reg[1]_0 (Sync_n_18),
        .\q_out_reg[4]_0 (Sync_n_19));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_encoder_3 TDMS_ENCODER_R
       (.CLK(clk25MHz_reg),
        .D({TDMS_ENCODER_R_n_0,TDMS_ENCODER_R_n_1,TDMS_ENCODER_R_n_2,TDMS_ENCODER_R_n_3,TDMS_ENCODER_R_n_4,TDMS_ENCODER_R_n_5,TDMS_ENCODER_R_n_6,TDMS_ENCODER_R_n_7,TDMS_ENCODER_R_n_8,TDMS_ENCODER_R_n_9}),
        .R(R),
        .\R[0]_0 (TDMS_ENCODER_R_n_12),
        .R_0_sp_1(TDMS_ENCODER_R_n_11),
        .R_3_sp_1(TDMS_ENCODER_R_n_13),
        .R_7_sp_1(TDMS_ENCODER_R_n_10),
        .\disparity_reg[4]_0 (Sync_n_18),
        .q_out0_in({q_out0_in[7],q_out0_in[5:3],q_out0_in[0]}));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS obuf_b
       (.I(tmds_b_shift),
        .O(HDMI_data_p[0]),
        .OB(HDMI_data_n[0]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS obuf_clk
       (.I(clk25MHz_reg),
        .O(HDMI_clk_p),
        .OB(HDMI_clk_n));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS obuf_g
       (.I(tmds_g_shift),
        .O(HDMI_data_p[1]),
        .OB(HDMI_data_n[1]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS obuf_r
       (.I(tmds_r_shift),
        .O(HDMI_data_p[2]),
        .OB(HDMI_data_n[2]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_video_sync
   (CLK,
    s_h_sync_reg_0,
    v_sync,
    B_0_sp_1,
    v_active_reg_0,
    v_active_reg_1,
    v_active_reg_2,
    v_active_reg_3,
    v_active_reg_4,
    v_active_reg_5,
    v_active_reg_6,
    v_active_reg_7,
    q_out0_in,
    v_sync_reg_0,
    h_active_reg_0,
    h_active_reg_1,
    video_en,
    clk250,
    B,
    \q_out_reg[0] ,
    \q_out_reg[0]_0 ,
    \q_out_reg[1] ,
    \q_out_reg[2] ,
    \q_out_reg[3] ,
    \q_out_reg[4] ,
    \q_out_reg[5] ,
    \q_out_reg[6] ,
    \q_out_reg[7] ,
    \q_out_reg[8] ,
    R,
    \q_out_reg[0]_1 ,
    \q_out_reg[3]_0 ,
    \q_out_reg[7]_0 ,
    \q_out_reg[4]_0 ,
    \q_out_reg[4]_1 ,
    \q_out_reg[4]_2 );
  output CLK;
  output s_h_sync_reg_0;
  output v_sync;
  output B_0_sp_1;
  output v_active_reg_0;
  output v_active_reg_1;
  output v_active_reg_2;
  output v_active_reg_3;
  output v_active_reg_4;
  output v_active_reg_5;
  output v_active_reg_6;
  output v_active_reg_7;
  output [4:0]q_out0_in;
  output v_sync_reg_0;
  output h_active_reg_0;
  output h_active_reg_1;
  output video_en;
  input clk250;
  input [0:0]B;
  input \q_out_reg[0] ;
  input \q_out_reg[0]_0 ;
  input \q_out_reg[1] ;
  input \q_out_reg[2] ;
  input \q_out_reg[3] ;
  input \q_out_reg[4] ;
  input \q_out_reg[5] ;
  input \q_out_reg[6] ;
  input \q_out_reg[7] ;
  input \q_out_reg[8] ;
  input [3:0]R;
  input \q_out_reg[0]_1 ;
  input \q_out_reg[3]_0 ;
  input \q_out_reg[7]_0 ;
  input \q_out_reg[4]_0 ;
  input \q_out_reg[4]_1 ;
  input \q_out_reg[4]_2 ;

  wire [0:0]B;
  wire B_0_sn_1;
  wire CLK;
  wire [3:0]R;
  wire clear;
  wire clk250;
  wire clk25MHz_i_1_n_0;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire h_active;
  wire h_active_i_1_n_0;
  wire h_active_i_2_n_0;
  wire h_active_i_3_n_0;
  wire h_active_reg_0;
  wire h_active_reg_1;
  wire h_count;
  wire \h_count[0]__0_i_1_n_0 ;
  wire \h_count[0]_i_1_n_0 ;
  wire \h_count[1]__0_i_1_n_0 ;
  wire \h_count[1]_i_1_n_0 ;
  wire \h_count[2]__0_i_1_n_0 ;
  wire \h_count[2]_i_1_n_0 ;
  wire \h_count[3]__0_i_1_n_0 ;
  wire \h_count[3]_i_1_n_0 ;
  wire \h_count[4]__0_i_1_n_0 ;
  wire \h_count[4]_i_1_n_0 ;
  wire \h_count[5]__0_i_1_n_0 ;
  wire \h_count[5]_i_1_n_0 ;
  wire \h_count[6]__0_i_1_n_0 ;
  wire \h_count[6]_i_1_n_0 ;
  wire \h_count[7]__0_i_1_n_0 ;
  wire \h_count[7]_i_1_n_0 ;
  wire \h_count[8]__0_i_1_n_0 ;
  wire \h_count[8]__0_i_2_n_0 ;
  wire \h_count[8]_i_1_n_0 ;
  wire \h_count[9]__0_i_2_n_0 ;
  wire \h_count[9]__0_i_3_n_0 ;
  wire \h_count[9]_i_1_n_0 ;
  wire [9:0]h_count_reg;
  wire \h_count_reg[0]__0_n_0 ;
  wire \h_count_reg[1]__0_n_0 ;
  wire \h_count_reg[2]__0_n_0 ;
  wire \h_count_reg[3]__0_n_0 ;
  wire \h_count_reg[4]__0_n_0 ;
  wire \h_count_reg[5]__0_n_0 ;
  wire \h_count_reg[6]__0_n_0 ;
  wire \h_count_reg[7]__0_n_0 ;
  wire \h_count_reg[8]__0_n_0 ;
  wire \h_count_reg[9]__0_n_0 ;
  wire [4:0]q_out0_in;
  wire \q_out_reg[0] ;
  wire \q_out_reg[0]_0 ;
  wire \q_out_reg[0]_1 ;
  wire \q_out_reg[1] ;
  wire \q_out_reg[2] ;
  wire \q_out_reg[3] ;
  wire \q_out_reg[3]_0 ;
  wire \q_out_reg[4] ;
  wire \q_out_reg[4]_0 ;
  wire \q_out_reg[4]_1 ;
  wire \q_out_reg[4]_2 ;
  wire \q_out_reg[5] ;
  wire \q_out_reg[6] ;
  wire \q_out_reg[7] ;
  wire \q_out_reg[7]_0 ;
  wire \q_out_reg[8] ;
  wire s_h_sync_i_2_n_0;
  wire s_h_sync_i_3_n_0;
  wire s_h_sync_i_4_n_0;
  wire s_h_sync_reg_0;
  wire v_active;
  wire v_active_i_1_n_0;
  wire v_active_i_2_n_0;
  wire v_active_i_3_n_0;
  wire v_active_reg_0;
  wire v_active_reg_1;
  wire v_active_reg_2;
  wire v_active_reg_3;
  wire v_active_reg_4;
  wire v_active_reg_5;
  wire v_active_reg_6;
  wire v_active_reg_7;
  wire v_count;
  wire \v_count[0]__0_i_1_n_0 ;
  wire \v_count[0]_i_1_n_0 ;
  wire \v_count[1]__0_i_1_n_0 ;
  wire \v_count[1]_i_1_n_0 ;
  wire \v_count[2]__0_i_1_n_0 ;
  wire \v_count[2]_i_1_n_0 ;
  wire \v_count[3]__0_i_1_n_0 ;
  wire \v_count[3]_i_1_n_0 ;
  wire \v_count[4]__0_i_1_n_0 ;
  wire \v_count[4]_i_1_n_0 ;
  wire \v_count[5]__0_i_1_n_0 ;
  wire \v_count[5]_i_1_n_0 ;
  wire \v_count[6]__0_i_1_n_0 ;
  wire \v_count[6]_i_1_n_0 ;
  wire \v_count[7]__0_i_1_n_0 ;
  wire \v_count[7]_i_1_n_0 ;
  wire \v_count[8]__0_i_1_n_0 ;
  wire \v_count[8]_i_1_n_0 ;
  wire \v_count[9]__0_i_2_n_0 ;
  wire \v_count[9]__0_i_3_n_0 ;
  wire \v_count[9]__0_i_4_n_0 ;
  wire \v_count[9]__0_i_5_n_0 ;
  wire \v_count[9]_i_1_n_0 ;
  wire \v_count[9]_i_2_n_0 ;
  wire [9:0]v_count_reg;
  wire \v_count_reg[0]__0_n_0 ;
  wire \v_count_reg[1]__0_n_0 ;
  wire \v_count_reg[2]__0_n_0 ;
  wire \v_count_reg[3]__0_n_0 ;
  wire \v_count_reg[4]__0_n_0 ;
  wire \v_count_reg[5]__0_n_0 ;
  wire \v_count_reg[6]__0_n_0 ;
  wire \v_count_reg[7]__0_n_0 ;
  wire \v_count_reg[8]__0_n_0 ;
  wire \v_count_reg[9]__0_n_0 ;
  wire v_sync;
  wire v_sync_i_1_n_0;
  wire v_sync_i_2_n_0;
  wire v_sync_i_3_n_0;
  wire v_sync_i_4_n_0;
  wire v_sync_i_5_n_0;
  wire v_sync_i_6_n_0;
  wire v_sync_reg_0;
  wire video_en;

  assign B_0_sp_1 = B_0_sn_1;
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hEF10)) 
    clk25MHz_i_1
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(CLK),
        .O(clk25MHz_i_1_n_0));
  FDRE clk25MHz_reg
       (.C(clk250),
        .CE(1'b1),
        .D(clk25MHz_i_1_n_0),
        .Q(CLK),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \count[0]_i_1 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[2] ),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[1] ),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h68)) 
    \count[2]_i_1 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[2] ),
        .O(\count[2]_i_1_n_0 ));
  FDRE \count_reg[0] 
       (.C(clk250),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(\count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \count_reg[1] 
       (.C(clk250),
        .CE(1'b1),
        .D(\count[1]_i_1_n_0 ),
        .Q(\count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \count_reg[2] 
       (.C(clk250),
        .CE(1'b1),
        .D(\count[2]_i_1_n_0 ),
        .Q(\count_reg_n_0_[2] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \disparity[4]_i_1 
       (.I0(h_active),
        .I1(v_active),
        .O(h_active_reg_0));
  LUT4 #(
    .INIT(16'hFB0A)) 
    h_active_i_1
       (.I0(h_active_i_2_n_0),
        .I1(h_active_i_3_n_0),
        .I2(\h_count[8]__0_i_2_n_0 ),
        .I3(h_active),
        .O(h_active_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    h_active_i_2
       (.I0(\h_count_reg[7]__0_n_0 ),
        .I1(\h_count_reg[6]__0_n_0 ),
        .I2(\h_count_reg[4]__0_n_0 ),
        .I3(\h_count_reg[5]__0_n_0 ),
        .I4(\h_count_reg[9]__0_n_0 ),
        .I5(\h_count_reg[8]__0_n_0 ),
        .O(h_active_i_2_n_0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    h_active_i_3
       (.I0(\h_count_reg[6]__0_n_0 ),
        .I1(\h_count_reg[7]__0_n_0 ),
        .I2(\h_count_reg[4]__0_n_0 ),
        .I3(\h_count_reg[5]__0_n_0 ),
        .I4(\h_count_reg[9]__0_n_0 ),
        .I5(\h_count_reg[8]__0_n_0 ),
        .O(h_active_i_3_n_0));
  FDRE h_active_reg
       (.C(CLK),
        .CE(1'b1),
        .D(h_active_i_1_n_0),
        .Q(h_active),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \h_count[0]__0_i_1 
       (.I0(\h_count_reg[0]__0_n_0 ),
        .O(\h_count[0]__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \h_count[0]_i_1 
       (.I0(h_count_reg[0]),
        .O(\h_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \h_count[1]__0_i_1 
       (.I0(\h_count_reg[0]__0_n_0 ),
        .I1(\h_count_reg[1]__0_n_0 ),
        .O(\h_count[1]__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \h_count[1]_i_1 
       (.I0(h_count_reg[0]),
        .I1(h_count_reg[1]),
        .O(\h_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \h_count[2]__0_i_1 
       (.I0(\h_count_reg[1]__0_n_0 ),
        .I1(\h_count_reg[0]__0_n_0 ),
        .I2(\h_count_reg[2]__0_n_0 ),
        .O(\h_count[2]__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \h_count[2]_i_1 
       (.I0(h_count_reg[1]),
        .I1(h_count_reg[0]),
        .I2(h_count_reg[2]),
        .O(\h_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \h_count[3]__0_i_1 
       (.I0(\h_count_reg[2]__0_n_0 ),
        .I1(\h_count_reg[0]__0_n_0 ),
        .I2(\h_count_reg[1]__0_n_0 ),
        .I3(\h_count_reg[3]__0_n_0 ),
        .O(\h_count[3]__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \h_count[3]_i_1 
       (.I0(h_count_reg[2]),
        .I1(h_count_reg[0]),
        .I2(h_count_reg[1]),
        .I3(h_count_reg[3]),
        .O(\h_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \h_count[4]__0_i_1 
       (.I0(\h_count_reg[3]__0_n_0 ),
        .I1(\h_count_reg[1]__0_n_0 ),
        .I2(\h_count_reg[0]__0_n_0 ),
        .I3(\h_count_reg[2]__0_n_0 ),
        .I4(\h_count_reg[4]__0_n_0 ),
        .O(\h_count[4]__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \h_count[4]_i_1 
       (.I0(h_count_reg[3]),
        .I1(h_count_reg[1]),
        .I2(h_count_reg[0]),
        .I3(h_count_reg[2]),
        .I4(h_count_reg[4]),
        .O(\h_count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \h_count[5]__0_i_1 
       (.I0(\h_count_reg[4]__0_n_0 ),
        .I1(\h_count_reg[2]__0_n_0 ),
        .I2(\h_count_reg[0]__0_n_0 ),
        .I3(\h_count_reg[1]__0_n_0 ),
        .I4(\h_count_reg[3]__0_n_0 ),
        .I5(\h_count_reg[5]__0_n_0 ),
        .O(\h_count[5]__0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \h_count[5]_i_1 
       (.I0(h_count_reg[4]),
        .I1(h_count_reg[2]),
        .I2(h_count_reg[0]),
        .I3(h_count_reg[1]),
        .I4(h_count_reg[3]),
        .I5(h_count_reg[5]),
        .O(\h_count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \h_count[6]__0_i_1 
       (.I0(\h_count_reg[5]__0_n_0 ),
        .I1(\h_count[8]__0_i_2_n_0 ),
        .I2(\h_count_reg[4]__0_n_0 ),
        .I3(\h_count_reg[6]__0_n_0 ),
        .O(\h_count[6]__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \h_count[6]_i_1 
       (.I0(h_count_reg[5]),
        .I1(s_h_sync_i_3_n_0),
        .I2(h_count_reg[6]),
        .O(\h_count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \h_count[7]__0_i_1 
       (.I0(\h_count_reg[6]__0_n_0 ),
        .I1(\h_count_reg[4]__0_n_0 ),
        .I2(\h_count[8]__0_i_2_n_0 ),
        .I3(\h_count_reg[5]__0_n_0 ),
        .I4(\h_count_reg[7]__0_n_0 ),
        .O(\h_count[7]__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \h_count[7]_i_1 
       (.I0(h_count_reg[6]),
        .I1(s_h_sync_i_3_n_0),
        .I2(h_count_reg[5]),
        .I3(h_count_reg[7]),
        .O(\h_count[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \h_count[8]__0_i_1 
       (.I0(\h_count_reg[7]__0_n_0 ),
        .I1(\h_count_reg[5]__0_n_0 ),
        .I2(\h_count[8]__0_i_2_n_0 ),
        .I3(\h_count_reg[4]__0_n_0 ),
        .I4(\h_count_reg[6]__0_n_0 ),
        .I5(\h_count_reg[8]__0_n_0 ),
        .O(\h_count[8]__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \h_count[8]__0_i_2 
       (.I0(\h_count_reg[2]__0_n_0 ),
        .I1(\h_count_reg[0]__0_n_0 ),
        .I2(\h_count_reg[1]__0_n_0 ),
        .I3(\h_count_reg[3]__0_n_0 ),
        .O(\h_count[8]__0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \h_count[8]_i_1 
       (.I0(h_count_reg[7]),
        .I1(h_count_reg[5]),
        .I2(s_h_sync_i_3_n_0),
        .I3(h_count_reg[6]),
        .I4(h_count_reg[8]),
        .O(\h_count[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \h_count[9]__0_i_1 
       (.I0(\h_count_reg[8]__0_n_0 ),
        .I1(\h_count_reg[9]__0_n_0 ),
        .I2(\h_count_reg[7]__0_n_0 ),
        .I3(\h_count_reg[6]__0_n_0 ),
        .I4(\h_count_reg[5]__0_n_0 ),
        .I5(\h_count[9]__0_i_3_n_0 ),
        .O(h_count));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \h_count[9]__0_i_2 
       (.I0(\h_count_reg[8]__0_n_0 ),
        .I1(\h_count_reg[6]__0_n_0 ),
        .I2(\h_count[9]__0_i_3_n_0 ),
        .I3(\h_count_reg[5]__0_n_0 ),
        .I4(\h_count_reg[7]__0_n_0 ),
        .I5(\h_count_reg[9]__0_n_0 ),
        .O(\h_count[9]__0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \h_count[9]__0_i_3 
       (.I0(\h_count_reg[3]__0_n_0 ),
        .I1(\h_count_reg[1]__0_n_0 ),
        .I2(\h_count_reg[0]__0_n_0 ),
        .I3(\h_count_reg[2]__0_n_0 ),
        .I4(\h_count_reg[4]__0_n_0 ),
        .O(\h_count[9]__0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \h_count[9]_i_1 
       (.I0(h_count_reg[8]),
        .I1(h_count_reg[6]),
        .I2(s_h_sync_i_3_n_0),
        .I3(h_count_reg[5]),
        .I4(h_count_reg[7]),
        .I5(h_count_reg[9]),
        .O(\h_count[9]_i_1_n_0 ));
  FDRE \h_count_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\h_count[0]_i_1_n_0 ),
        .Q(h_count_reg[0]),
        .R(clear));
  FDRE \h_count_reg[0]__0 
       (.C(CLK),
        .CE(1'b1),
        .D(\h_count[0]__0_i_1_n_0 ),
        .Q(\h_count_reg[0]__0_n_0 ),
        .R(h_count));
  FDRE \h_count_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\h_count[1]_i_1_n_0 ),
        .Q(h_count_reg[1]),
        .R(clear));
  FDRE \h_count_reg[1]__0 
       (.C(CLK),
        .CE(1'b1),
        .D(\h_count[1]__0_i_1_n_0 ),
        .Q(\h_count_reg[1]__0_n_0 ),
        .R(h_count));
  FDRE \h_count_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\h_count[2]_i_1_n_0 ),
        .Q(h_count_reg[2]),
        .R(clear));
  FDRE \h_count_reg[2]__0 
       (.C(CLK),
        .CE(1'b1),
        .D(\h_count[2]__0_i_1_n_0 ),
        .Q(\h_count_reg[2]__0_n_0 ),
        .R(h_count));
  FDRE \h_count_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\h_count[3]_i_1_n_0 ),
        .Q(h_count_reg[3]),
        .R(clear));
  FDRE \h_count_reg[3]__0 
       (.C(CLK),
        .CE(1'b1),
        .D(\h_count[3]__0_i_1_n_0 ),
        .Q(\h_count_reg[3]__0_n_0 ),
        .R(h_count));
  FDRE \h_count_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\h_count[4]_i_1_n_0 ),
        .Q(h_count_reg[4]),
        .R(clear));
  FDRE \h_count_reg[4]__0 
       (.C(CLK),
        .CE(1'b1),
        .D(\h_count[4]__0_i_1_n_0 ),
        .Q(\h_count_reg[4]__0_n_0 ),
        .R(h_count));
  FDRE \h_count_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\h_count[5]_i_1_n_0 ),
        .Q(h_count_reg[5]),
        .R(clear));
  FDRE \h_count_reg[5]__0 
       (.C(CLK),
        .CE(1'b1),
        .D(\h_count[5]__0_i_1_n_0 ),
        .Q(\h_count_reg[5]__0_n_0 ),
        .R(h_count));
  FDRE \h_count_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\h_count[6]_i_1_n_0 ),
        .Q(h_count_reg[6]),
        .R(clear));
  FDRE \h_count_reg[6]__0 
       (.C(CLK),
        .CE(1'b1),
        .D(\h_count[6]__0_i_1_n_0 ),
        .Q(\h_count_reg[6]__0_n_0 ),
        .R(h_count));
  FDRE \h_count_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\h_count[7]_i_1_n_0 ),
        .Q(h_count_reg[7]),
        .R(clear));
  FDRE \h_count_reg[7]__0 
       (.C(CLK),
        .CE(1'b1),
        .D(\h_count[7]__0_i_1_n_0 ),
        .Q(\h_count_reg[7]__0_n_0 ),
        .R(h_count));
  FDRE \h_count_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\h_count[8]_i_1_n_0 ),
        .Q(h_count_reg[8]),
        .R(clear));
  FDRE \h_count_reg[8]__0 
       (.C(CLK),
        .CE(1'b1),
        .D(\h_count[8]__0_i_1_n_0 ),
        .Q(\h_count_reg[8]__0_n_0 ),
        .R(h_count));
  FDRE \h_count_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\h_count[9]_i_1_n_0 ),
        .Q(h_count_reg[9]),
        .R(clear));
  FDRE \h_count_reg[9]__0 
       (.C(CLK),
        .CE(1'b1),
        .D(\h_count[9]__0_i_2_n_0 ),
        .Q(\h_count_reg[9]__0_n_0 ),
        .R(h_count));
  LUT6 #(
    .INIT(64'h56FFFFFF56000000)) 
    \q_out[0]_i_1 
       (.I0(B),
        .I1(\q_out_reg[0] ),
        .I2(\q_out_reg[0]_0 ),
        .I3(v_active),
        .I4(h_active),
        .I5(s_h_sync_reg_0),
        .O(B_0_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0880)) 
    \q_out[0]_i_1__0 
       (.I0(v_active),
        .I1(h_active),
        .I2(R[0]),
        .I3(\q_out_reg[0]_1 ),
        .O(q_out0_in[0]));
  LUT6 #(
    .INIT(64'hA9FFFFFFA9000000)) 
    \q_out[1]_i_1 
       (.I0(\q_out_reg[1] ),
        .I1(\q_out_reg[0] ),
        .I2(\q_out_reg[0]_0 ),
        .I3(v_active),
        .I4(h_active),
        .I5(s_h_sync_reg_0),
        .O(v_active_reg_0));
  LUT6 #(
    .INIT(64'hA9000000A9FFFFFF)) 
    \q_out[2]_i_1 
       (.I0(\q_out_reg[2] ),
        .I1(\q_out_reg[0] ),
        .I2(\q_out_reg[0]_0 ),
        .I3(v_active),
        .I4(h_active),
        .I5(s_h_sync_reg_0),
        .O(v_active_reg_1));
  LUT6 #(
    .INIT(64'h56FFFFFF56000000)) 
    \q_out[3]_i_1 
       (.I0(\q_out_reg[3] ),
        .I1(\q_out_reg[0] ),
        .I2(\q_out_reg[0]_0 ),
        .I3(v_active),
        .I4(h_active),
        .I5(s_h_sync_reg_0),
        .O(v_active_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0880)) 
    \q_out[3]_i_1__0 
       (.I0(v_active),
        .I1(h_active),
        .I2(\q_out_reg[3]_0 ),
        .I3(\q_out_reg[0]_1 ),
        .O(q_out0_in[1]));
  LUT6 #(
    .INIT(64'hA9000000A9FFFFFF)) 
    \q_out[4]_i_1 
       (.I0(\q_out_reg[4] ),
        .I1(\q_out_reg[0] ),
        .I2(\q_out_reg[0]_0 ),
        .I3(v_active),
        .I4(h_active),
        .I5(s_h_sync_reg_0),
        .O(v_active_reg_3));
  LUT6 #(
    .INIT(64'hF77F7FF77FF7F77F)) 
    \q_out[4]_i_1__0 
       (.I0(h_active),
        .I1(v_active),
        .I2(\q_out_reg[0]_1 ),
        .I3(R[2]),
        .I4(\q_out_reg[4]_0 ),
        .I5(R[1]),
        .O(q_out0_in[2]));
  LUT4 #(
    .INIT(16'hF77F)) 
    \q_out[4]_i_1__1 
       (.I0(h_active),
        .I1(v_active),
        .I2(\q_out_reg[4]_1 ),
        .I3(\q_out_reg[4]_2 ),
        .O(h_active_reg_1));
  LUT6 #(
    .INIT(64'h56FFFFFF56000000)) 
    \q_out[5]_i_1 
       (.I0(\q_out_reg[5] ),
        .I1(\q_out_reg[0] ),
        .I2(\q_out_reg[0]_0 ),
        .I3(v_active),
        .I4(h_active),
        .I5(s_h_sync_reg_0),
        .O(v_active_reg_4));
  LUT6 #(
    .INIT(64'h0880800880080880)) 
    \q_out[5]_i_1__0 
       (.I0(v_active),
        .I1(h_active),
        .I2(\q_out_reg[3]_0 ),
        .I3(R[2]),
        .I4(R[3]),
        .I5(\q_out_reg[0]_1 ),
        .O(q_out0_in[3]));
  LUT6 #(
    .INIT(64'h5600000056FFFFFF)) 
    \q_out[6]_i_1 
       (.I0(\q_out_reg[6] ),
        .I1(\q_out_reg[0] ),
        .I2(\q_out_reg[0]_0 ),
        .I3(v_active),
        .I4(h_active),
        .I5(s_h_sync_reg_0),
        .O(v_active_reg_5));
  LUT6 #(
    .INIT(64'hA9FFFFFFA9000000)) 
    \q_out[7]_i_1 
       (.I0(\q_out_reg[7] ),
        .I1(\q_out_reg[0] ),
        .I2(\q_out_reg[0]_0 ),
        .I3(v_active),
        .I4(h_active),
        .I5(s_h_sync_reg_0),
        .O(v_active_reg_6));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h8008)) 
    \q_out[7]_i_1__0 
       (.I0(v_active),
        .I1(h_active),
        .I2(\q_out_reg[7]_0 ),
        .I3(\q_out_reg[0]_1 ),
        .O(q_out0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h80BF)) 
    \q_out[8]_i_1 
       (.I0(\q_out_reg[8] ),
        .I1(v_active),
        .I2(h_active),
        .I3(s_h_sync_reg_0),
        .O(v_active_reg_7));
  LUT6 #(
    .INIT(64'hFFC3C3C3AAC3C3C3)) 
    \q_out[9]_i_1 
       (.I0(\q_out_reg[0]_0 ),
        .I1(v_sync),
        .I2(s_h_sync_reg_0),
        .I3(h_active),
        .I4(v_active),
        .I5(\q_out_reg[0] ),
        .O(v_sync_reg_0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    s_h_sync_i_1
       (.I0(h_count_reg[8]),
        .I1(h_count_reg[9]),
        .I2(h_count_reg[7]),
        .I3(h_count_reg[6]),
        .I4(h_count_reg[5]),
        .I5(s_h_sync_i_3_n_0),
        .O(clear));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    s_h_sync_i_2
       (.I0(s_h_sync_i_3_n_0),
        .I1(s_h_sync_i_4_n_0),
        .I2(s_h_sync_reg_0),
        .O(s_h_sync_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    s_h_sync_i_3
       (.I0(h_count_reg[3]),
        .I1(h_count_reg[1]),
        .I2(h_count_reg[0]),
        .I3(h_count_reg[2]),
        .I4(h_count_reg[4]),
        .O(s_h_sync_i_3_n_0));
  LUT5 #(
    .INIT(32'h00000004)) 
    s_h_sync_i_4
       (.I0(h_count_reg[5]),
        .I1(h_count_reg[6]),
        .I2(h_count_reg[7]),
        .I3(h_count_reg[9]),
        .I4(h_count_reg[8]),
        .O(s_h_sync_i_4_n_0));
  FDRE s_h_sync_reg
       (.C(CLK),
        .CE(1'b1),
        .D(s_h_sync_i_2_n_0),
        .Q(s_h_sync_reg_0),
        .R(clear));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAABA2)) 
    v_active_i_1
       (.I0(v_active),
        .I1(\v_count[9]__0_i_2_n_0 ),
        .I2(v_active_i_2_n_0),
        .I3(\v_count[5]__0_i_1_n_0 ),
        .I4(\v_count[8]__0_i_1_n_0 ),
        .I5(v_active_i_3_n_0),
        .O(v_active_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    v_active_i_2
       (.I0(\v_count_reg[1]__0_n_0 ),
        .I1(\v_count_reg[0]__0_n_0 ),
        .I2(\v_count_reg[3]__0_n_0 ),
        .I3(\v_count_reg[2]__0_n_0 ),
        .O(v_active_i_2_n_0));
  LUT5 #(
    .INIT(32'h7FFEEFFE)) 
    v_active_i_3
       (.I0(\v_count_reg[7]__0_n_0 ),
        .I1(\v_count_reg[6]__0_n_0 ),
        .I2(\v_count_reg[4]__0_n_0 ),
        .I3(\v_count[9]__0_i_5_n_0 ),
        .I4(\v_count_reg[5]__0_n_0 ),
        .O(v_active_i_3_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    v_active_reg
       (.C(s_h_sync_reg_0),
        .CE(1'b1),
        .D(v_active_i_1_n_0),
        .Q(v_active),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \v_count[0]__0_i_1 
       (.I0(\v_count_reg[0]__0_n_0 ),
        .O(\v_count[0]__0_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \v_count[0]_i_1 
       (.I0(v_count_reg[0]),
        .O(\v_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \v_count[1]__0_i_1 
       (.I0(\v_count_reg[0]__0_n_0 ),
        .I1(\v_count_reg[1]__0_n_0 ),
        .O(\v_count[1]__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \v_count[1]_i_1 
       (.I0(v_count_reg[1]),
        .I1(v_count_reg[0]),
        .O(\v_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \v_count[2]__0_i_1 
       (.I0(\v_count_reg[2]__0_n_0 ),
        .I1(\v_count_reg[1]__0_n_0 ),
        .I2(\v_count_reg[0]__0_n_0 ),
        .O(\v_count[2]__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \v_count[2]_i_1 
       (.I0(v_count_reg[2]),
        .I1(v_count_reg[0]),
        .I2(v_count_reg[1]),
        .O(\v_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \v_count[3]__0_i_1 
       (.I0(\v_count_reg[3]__0_n_0 ),
        .I1(\v_count_reg[0]__0_n_0 ),
        .I2(\v_count_reg[1]__0_n_0 ),
        .I3(\v_count_reg[2]__0_n_0 ),
        .O(\v_count[3]__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \v_count[3]_i_1 
       (.I0(v_count_reg[3]),
        .I1(v_count_reg[1]),
        .I2(v_count_reg[0]),
        .I3(v_count_reg[2]),
        .O(\v_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \v_count[4]__0_i_1 
       (.I0(\v_count_reg[4]__0_n_0 ),
        .I1(\v_count_reg[2]__0_n_0 ),
        .I2(\v_count_reg[1]__0_n_0 ),
        .I3(\v_count_reg[0]__0_n_0 ),
        .I4(\v_count_reg[3]__0_n_0 ),
        .O(\v_count[4]__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \v_count[4]_i_1 
       (.I0(v_count_reg[4]),
        .I1(v_count_reg[2]),
        .I2(v_count_reg[0]),
        .I3(v_count_reg[1]),
        .I4(v_count_reg[3]),
        .O(\v_count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \v_count[5]__0_i_1 
       (.I0(\v_count_reg[5]__0_n_0 ),
        .I1(\v_count_reg[3]__0_n_0 ),
        .I2(\v_count_reg[0]__0_n_0 ),
        .I3(\v_count_reg[1]__0_n_0 ),
        .I4(\v_count_reg[2]__0_n_0 ),
        .I5(\v_count_reg[4]__0_n_0 ),
        .O(\v_count[5]__0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \v_count[5]_i_1 
       (.I0(v_count_reg[5]),
        .I1(v_count_reg[3]),
        .I2(v_count_reg[1]),
        .I3(v_count_reg[0]),
        .I4(v_count_reg[2]),
        .I5(v_count_reg[4]),
        .O(\v_count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \v_count[6]__0_i_1 
       (.I0(\v_count_reg[6]__0_n_0 ),
        .I1(\v_count[9]__0_i_4_n_0 ),
        .O(\v_count[6]__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \v_count[6]_i_1 
       (.I0(v_count_reg[6]),
        .I1(\v_count[9]_i_2_n_0 ),
        .O(\v_count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \v_count[7]__0_i_1 
       (.I0(\v_count_reg[7]__0_n_0 ),
        .I1(\v_count[9]__0_i_4_n_0 ),
        .I2(\v_count_reg[6]__0_n_0 ),
        .O(\v_count[7]__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \v_count[7]_i_1 
       (.I0(v_count_reg[7]),
        .I1(\v_count[9]_i_2_n_0 ),
        .I2(v_count_reg[6]),
        .O(\v_count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \v_count[8]__0_i_1 
       (.I0(\v_count_reg[8]__0_n_0 ),
        .I1(\v_count_reg[6]__0_n_0 ),
        .I2(\v_count[9]__0_i_4_n_0 ),
        .I3(\v_count_reg[7]__0_n_0 ),
        .O(\v_count[8]__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \v_count[8]_i_1 
       (.I0(v_count_reg[8]),
        .I1(v_count_reg[6]),
        .I2(\v_count[9]_i_2_n_0 ),
        .I3(v_count_reg[7]),
        .O(\v_count[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \v_count[9]__0_i_1 
       (.I0(\v_count[9]__0_i_3_n_0 ),
        .I1(\v_count_reg[1]__0_n_0 ),
        .I2(\v_count_reg[0]__0_n_0 ),
        .I3(\v_count_reg[3]__0_n_0 ),
        .I4(\v_count_reg[2]__0_n_0 ),
        .I5(\v_count[9]__0_i_2_n_0 ),
        .O(v_count));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \v_count[9]__0_i_2 
       (.I0(\v_count_reg[9]__0_n_0 ),
        .I1(\v_count_reg[7]__0_n_0 ),
        .I2(\v_count[9]__0_i_4_n_0 ),
        .I3(\v_count_reg[6]__0_n_0 ),
        .I4(\v_count_reg[8]__0_n_0 ),
        .O(\v_count[9]__0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000001)) 
    \v_count[9]__0_i_3 
       (.I0(\v_count_reg[8]__0_n_0 ),
        .I1(\v_count_reg[7]__0_n_0 ),
        .I2(\v_count_reg[6]__0_n_0 ),
        .I3(\v_count_reg[4]__0_n_0 ),
        .I4(\v_count[9]__0_i_5_n_0 ),
        .I5(\v_count_reg[5]__0_n_0 ),
        .O(\v_count[9]__0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \v_count[9]__0_i_4 
       (.I0(\v_count_reg[5]__0_n_0 ),
        .I1(\v_count_reg[3]__0_n_0 ),
        .I2(\v_count_reg[0]__0_n_0 ),
        .I3(\v_count_reg[1]__0_n_0 ),
        .I4(\v_count_reg[2]__0_n_0 ),
        .I5(\v_count_reg[4]__0_n_0 ),
        .O(\v_count[9]__0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \v_count[9]__0_i_5 
       (.I0(\v_count_reg[3]__0_n_0 ),
        .I1(\v_count_reg[0]__0_n_0 ),
        .I2(\v_count_reg[1]__0_n_0 ),
        .I3(\v_count_reg[2]__0_n_0 ),
        .O(\v_count[9]__0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \v_count[9]_i_1 
       (.I0(v_count_reg[9]),
        .I1(v_count_reg[7]),
        .I2(\v_count[9]_i_2_n_0 ),
        .I3(v_count_reg[6]),
        .I4(v_count_reg[8]),
        .O(\v_count[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \v_count[9]_i_2 
       (.I0(v_count_reg[5]),
        .I1(v_count_reg[3]),
        .I2(v_count_reg[1]),
        .I3(v_count_reg[0]),
        .I4(v_count_reg[2]),
        .I5(v_count_reg[4]),
        .O(\v_count[9]_i_2_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \v_count_reg[0] 
       (.C(s_h_sync_reg_0),
        .CE(1'b1),
        .D(\v_count[0]_i_1_n_0 ),
        .Q(v_count_reg[0]),
        .R(v_sync_i_1_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \v_count_reg[0]__0 
       (.C(s_h_sync_reg_0),
        .CE(1'b1),
        .D(\v_count[0]__0_i_1_n_0 ),
        .Q(\v_count_reg[0]__0_n_0 ),
        .R(v_count));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \v_count_reg[1] 
       (.C(s_h_sync_reg_0),
        .CE(1'b1),
        .D(\v_count[1]_i_1_n_0 ),
        .Q(v_count_reg[1]),
        .R(v_sync_i_1_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \v_count_reg[1]__0 
       (.C(s_h_sync_reg_0),
        .CE(1'b1),
        .D(\v_count[1]__0_i_1_n_0 ),
        .Q(\v_count_reg[1]__0_n_0 ),
        .R(v_count));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \v_count_reg[2] 
       (.C(s_h_sync_reg_0),
        .CE(1'b1),
        .D(\v_count[2]_i_1_n_0 ),
        .Q(v_count_reg[2]),
        .R(v_sync_i_1_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \v_count_reg[2]__0 
       (.C(s_h_sync_reg_0),
        .CE(1'b1),
        .D(\v_count[2]__0_i_1_n_0 ),
        .Q(\v_count_reg[2]__0_n_0 ),
        .R(v_count));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \v_count_reg[3] 
       (.C(s_h_sync_reg_0),
        .CE(1'b1),
        .D(\v_count[3]_i_1_n_0 ),
        .Q(v_count_reg[3]),
        .R(v_sync_i_1_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \v_count_reg[3]__0 
       (.C(s_h_sync_reg_0),
        .CE(1'b1),
        .D(\v_count[3]__0_i_1_n_0 ),
        .Q(\v_count_reg[3]__0_n_0 ),
        .R(v_count));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \v_count_reg[4] 
       (.C(s_h_sync_reg_0),
        .CE(1'b1),
        .D(\v_count[4]_i_1_n_0 ),
        .Q(v_count_reg[4]),
        .R(v_sync_i_1_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \v_count_reg[4]__0 
       (.C(s_h_sync_reg_0),
        .CE(1'b1),
        .D(\v_count[4]__0_i_1_n_0 ),
        .Q(\v_count_reg[4]__0_n_0 ),
        .R(v_count));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \v_count_reg[5] 
       (.C(s_h_sync_reg_0),
        .CE(1'b1),
        .D(\v_count[5]_i_1_n_0 ),
        .Q(v_count_reg[5]),
        .R(v_sync_i_1_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \v_count_reg[5]__0 
       (.C(s_h_sync_reg_0),
        .CE(1'b1),
        .D(\v_count[5]__0_i_1_n_0 ),
        .Q(\v_count_reg[5]__0_n_0 ),
        .R(v_count));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \v_count_reg[6] 
       (.C(s_h_sync_reg_0),
        .CE(1'b1),
        .D(\v_count[6]_i_1_n_0 ),
        .Q(v_count_reg[6]),
        .R(v_sync_i_1_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \v_count_reg[6]__0 
       (.C(s_h_sync_reg_0),
        .CE(1'b1),
        .D(\v_count[6]__0_i_1_n_0 ),
        .Q(\v_count_reg[6]__0_n_0 ),
        .R(v_count));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \v_count_reg[7] 
       (.C(s_h_sync_reg_0),
        .CE(1'b1),
        .D(\v_count[7]_i_1_n_0 ),
        .Q(v_count_reg[7]),
        .R(v_sync_i_1_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \v_count_reg[7]__0 
       (.C(s_h_sync_reg_0),
        .CE(1'b1),
        .D(\v_count[7]__0_i_1_n_0 ),
        .Q(\v_count_reg[7]__0_n_0 ),
        .R(v_count));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \v_count_reg[8] 
       (.C(s_h_sync_reg_0),
        .CE(1'b1),
        .D(\v_count[8]_i_1_n_0 ),
        .Q(v_count_reg[8]),
        .R(v_sync_i_1_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \v_count_reg[8]__0 
       (.C(s_h_sync_reg_0),
        .CE(1'b1),
        .D(\v_count[8]__0_i_1_n_0 ),
        .Q(\v_count_reg[8]__0_n_0 ),
        .R(v_count));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \v_count_reg[9] 
       (.C(s_h_sync_reg_0),
        .CE(1'b1),
        .D(\v_count[9]_i_1_n_0 ),
        .Q(v_count_reg[9]),
        .R(v_sync_i_1_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \v_count_reg[9]__0 
       (.C(s_h_sync_reg_0),
        .CE(1'b1),
        .D(\v_count[9]__0_i_2_n_0 ),
        .Q(\v_count_reg[9]__0_n_0 ),
        .R(v_count));
  LUT6 #(
    .INIT(64'h0000000080000001)) 
    v_sync_i_1
       (.I0(v_count_reg[7]),
        .I1(v_count_reg[5]),
        .I2(v_sync_i_3_n_0),
        .I3(v_count_reg[6]),
        .I4(v_count_reg[8]),
        .I5(v_sync_i_4_n_0),
        .O(v_sync_i_1_n_0));
  LUT4 #(
    .INIT(16'hFF40)) 
    v_sync_i_2
       (.I0(\v_count[9]_i_1_n_0 ),
        .I1(v_sync_i_5_n_0),
        .I2(v_sync_i_6_n_0),
        .I3(v_sync),
        .O(v_sync_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    v_sync_i_3
       (.I0(v_count_reg[4]),
        .I1(v_count_reg[2]),
        .I2(v_count_reg[0]),
        .I3(v_count_reg[1]),
        .I4(v_count_reg[3]),
        .O(v_sync_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFDFFFFFF)) 
    v_sync_i_4
       (.I0(\v_count[9]_i_1_n_0 ),
        .I1(v_count_reg[0]),
        .I2(v_count_reg[1]),
        .I3(v_count_reg[3]),
        .I4(v_count_reg[2]),
        .I5(v_count_reg[4]),
        .O(v_sync_i_4_n_0));
  LUT5 #(
    .INIT(32'h80000001)) 
    v_sync_i_5
       (.I0(v_count_reg[8]),
        .I1(v_count_reg[6]),
        .I2(v_sync_i_3_n_0),
        .I3(v_count_reg[5]),
        .I4(v_count_reg[7]),
        .O(v_sync_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    v_sync_i_6
       (.I0(v_count_reg[4]),
        .I1(v_count_reg[2]),
        .I2(v_count_reg[3]),
        .I3(v_count_reg[1]),
        .I4(v_count_reg[0]),
        .O(v_sync_i_6_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    v_sync_reg
       (.C(s_h_sync_reg_0),
        .CE(1'b1),
        .D(v_sync_i_2_n_0),
        .Q(v_sync),
        .R(v_sync_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    video_en_INST_0
       (.I0(v_active),
        .I1(h_active),
        .O(video_en));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
