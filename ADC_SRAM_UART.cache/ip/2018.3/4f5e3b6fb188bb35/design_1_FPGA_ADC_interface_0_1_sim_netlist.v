// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Apr 13 14:11:18 2019
// Host        : Lenovo running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_FPGA_ADC_interface_0_1_sim_netlist.v
// Design      : design_1_FPGA_ADC_interface_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FPGA_ADC_interface
   (CONVST,
    CLK_2MHZ_reg_0,
    DONE_reg_0,
    VALID,
    LAST,
    A,
    DATA,
    RESET,
    CLK_8MHZ,
    EOC,
    ENABLE,
    DB);
  output CONVST;
  output CLK_2MHZ_reg_0;
  output DONE_reg_0;
  output VALID;
  output LAST;
  output [1:0]A;
  output [7:0]DATA;
  input RESET;
  input CLK_8MHZ;
  input EOC;
  input ENABLE;
  input [7:0]DB;

  wire [1:0]A;
  wire \A[2]_i_1_n_0 ;
  wire \A[2]_i_3_n_0 ;
  wire \A[2]_i_4_n_0 ;
  wire CLK_2MHZ_i_1_n_0;
  wire CLK_2MHZ_reg_0;
  wire CLK_4MHZ;
  wire CLK_4MHZ_i_1_n_0;
  wire CLK_8MHZ;
  wire CONVST;
  wire CONVST_i_1_n_0;
  wire \COUNTER[0]_i_2_n_0 ;
  wire [16:0]COUNTER_reg;
  wire \COUNTER_reg[0]_i_1_n_0 ;
  wire \COUNTER_reg[0]_i_1_n_1 ;
  wire \COUNTER_reg[0]_i_1_n_2 ;
  wire \COUNTER_reg[0]_i_1_n_3 ;
  wire \COUNTER_reg[0]_i_1_n_4 ;
  wire \COUNTER_reg[0]_i_1_n_5 ;
  wire \COUNTER_reg[0]_i_1_n_6 ;
  wire \COUNTER_reg[0]_i_1_n_7 ;
  wire \COUNTER_reg[12]_i_1_n_0 ;
  wire \COUNTER_reg[12]_i_1_n_1 ;
  wire \COUNTER_reg[12]_i_1_n_2 ;
  wire \COUNTER_reg[12]_i_1_n_3 ;
  wire \COUNTER_reg[12]_i_1_n_4 ;
  wire \COUNTER_reg[12]_i_1_n_5 ;
  wire \COUNTER_reg[12]_i_1_n_6 ;
  wire \COUNTER_reg[12]_i_1_n_7 ;
  wire \COUNTER_reg[16]_i_1_n_7 ;
  wire \COUNTER_reg[4]_i_1_n_0 ;
  wire \COUNTER_reg[4]_i_1_n_1 ;
  wire \COUNTER_reg[4]_i_1_n_2 ;
  wire \COUNTER_reg[4]_i_1_n_3 ;
  wire \COUNTER_reg[4]_i_1_n_4 ;
  wire \COUNTER_reg[4]_i_1_n_5 ;
  wire \COUNTER_reg[4]_i_1_n_6 ;
  wire \COUNTER_reg[4]_i_1_n_7 ;
  wire \COUNTER_reg[8]_i_1_n_0 ;
  wire \COUNTER_reg[8]_i_1_n_1 ;
  wire \COUNTER_reg[8]_i_1_n_2 ;
  wire \COUNTER_reg[8]_i_1_n_3 ;
  wire \COUNTER_reg[8]_i_1_n_4 ;
  wire \COUNTER_reg[8]_i_1_n_5 ;
  wire \COUNTER_reg[8]_i_1_n_6 ;
  wire \COUNTER_reg[8]_i_1_n_7 ;
  wire [7:0]DATA;
  wire \DATA[7]_i_1_n_0 ;
  wire [7:0]DB;
  wire DONE_i_1_n_0;
  wire DONE_i_2_n_0;
  wire DONE_i_3_n_0;
  wire DONE_i_4_n_0;
  wire DONE_i_5_n_0;
  wire DONE_reg_0;
  wire ENABLE;
  wire EOC;
  wire LAST;
  wire LAST_i_1_n_0;
  wire LAST_i_2_n_0;
  wire LAST_i_3_n_0;
  wire RESET;
  wire VALID;
  wire VALID_i_1_n_0;
  wire [2:1]p_1_in;
  wire [3:0]\NLW_COUNTER_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_COUNTER_reg[16]_i_1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \A[1]_i_1 
       (.I0(A[0]),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \A[2]_i_1 
       (.I0(COUNTER_reg[8]),
        .I1(ENABLE),
        .I2(COUNTER_reg[10]),
        .I3(COUNTER_reg[9]),
        .I4(\A[2]_i_3_n_0 ),
        .I5(\A[2]_i_4_n_0 ),
        .O(\A[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \A[2]_i_2 
       (.I0(A[0]),
        .I1(A[1]),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \A[2]_i_3 
       (.I0(COUNTER_reg[11]),
        .I1(COUNTER_reg[12]),
        .I2(COUNTER_reg[13]),
        .I3(COUNTER_reg[14]),
        .I4(COUNTER_reg[16]),
        .I5(COUNTER_reg[15]),
        .O(\A[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h01FFFFFF)) 
    \A[2]_i_4 
       (.I0(COUNTER_reg[3]),
        .I1(COUNTER_reg[4]),
        .I2(COUNTER_reg[5]),
        .I3(COUNTER_reg[7]),
        .I4(COUNTER_reg[6]),
        .O(\A[2]_i_4_n_0 ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \A_reg[1] 
       (.C(CLK_2MHZ_reg_0),
        .CE(\A[2]_i_1_n_0 ),
        .CLR(RESET),
        .D(p_1_in[1]),
        .Q(A[0]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \A_reg[2] 
       (.C(CLK_2MHZ_reg_0),
        .CE(\A[2]_i_1_n_0 ),
        .CLR(RESET),
        .D(p_1_in[2]),
        .Q(A[1]));
  LUT2 #(
    .INIT(4'h1)) 
    CLK_2MHZ_i_1
       (.I0(CLK_2MHZ_reg_0),
        .I1(RESET),
        .O(CLK_2MHZ_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    CLK_2MHZ_reg
       (.C(CLK_4MHZ),
        .CE(1'b1),
        .D(CLK_2MHZ_i_1_n_0),
        .Q(CLK_2MHZ_reg_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    CLK_4MHZ_i_1
       (.I0(CLK_4MHZ),
        .I1(RESET),
        .O(CLK_4MHZ_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    CLK_4MHZ_reg
       (.C(CLK_8MHZ),
        .CE(1'b1),
        .D(CLK_4MHZ_i_1_n_0),
        .Q(CLK_4MHZ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hF7)) 
    CONVST_i_1
       (.I0(ENABLE),
        .I1(CONVST),
        .I2(DONE_reg_0),
        .O(CONVST_i_1_n_0));
  FDPE CONVST_reg
       (.C(CLK_4MHZ),
        .CE(1'b1),
        .D(CONVST_i_1_n_0),
        .PRE(RESET),
        .Q(CONVST));
  LUT1 #(
    .INIT(2'h1)) 
    \COUNTER[0]_i_2 
       (.I0(COUNTER_reg[0]),
        .O(\COUNTER[0]_i_2_n_0 ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \COUNTER_reg[0] 
       (.C(CLK_2MHZ_reg_0),
        .CE(\A[2]_i_1_n_0 ),
        .CLR(RESET),
        .D(\COUNTER_reg[0]_i_1_n_7 ),
        .Q(COUNTER_reg[0]));
  CARRY4 \COUNTER_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\COUNTER_reg[0]_i_1_n_0 ,\COUNTER_reg[0]_i_1_n_1 ,\COUNTER_reg[0]_i_1_n_2 ,\COUNTER_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\COUNTER_reg[0]_i_1_n_4 ,\COUNTER_reg[0]_i_1_n_5 ,\COUNTER_reg[0]_i_1_n_6 ,\COUNTER_reg[0]_i_1_n_7 }),
        .S({COUNTER_reg[3:1],\COUNTER[0]_i_2_n_0 }));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \COUNTER_reg[10] 
       (.C(CLK_2MHZ_reg_0),
        .CE(\A[2]_i_1_n_0 ),
        .CLR(RESET),
        .D(\COUNTER_reg[8]_i_1_n_5 ),
        .Q(COUNTER_reg[10]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \COUNTER_reg[11] 
       (.C(CLK_2MHZ_reg_0),
        .CE(\A[2]_i_1_n_0 ),
        .CLR(RESET),
        .D(\COUNTER_reg[8]_i_1_n_4 ),
        .Q(COUNTER_reg[11]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \COUNTER_reg[12] 
       (.C(CLK_2MHZ_reg_0),
        .CE(\A[2]_i_1_n_0 ),
        .CLR(RESET),
        .D(\COUNTER_reg[12]_i_1_n_7 ),
        .Q(COUNTER_reg[12]));
  CARRY4 \COUNTER_reg[12]_i_1 
       (.CI(\COUNTER_reg[8]_i_1_n_0 ),
        .CO({\COUNTER_reg[12]_i_1_n_0 ,\COUNTER_reg[12]_i_1_n_1 ,\COUNTER_reg[12]_i_1_n_2 ,\COUNTER_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\COUNTER_reg[12]_i_1_n_4 ,\COUNTER_reg[12]_i_1_n_5 ,\COUNTER_reg[12]_i_1_n_6 ,\COUNTER_reg[12]_i_1_n_7 }),
        .S(COUNTER_reg[15:12]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \COUNTER_reg[13] 
       (.C(CLK_2MHZ_reg_0),
        .CE(\A[2]_i_1_n_0 ),
        .CLR(RESET),
        .D(\COUNTER_reg[12]_i_1_n_6 ),
        .Q(COUNTER_reg[13]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \COUNTER_reg[14] 
       (.C(CLK_2MHZ_reg_0),
        .CE(\A[2]_i_1_n_0 ),
        .CLR(RESET),
        .D(\COUNTER_reg[12]_i_1_n_5 ),
        .Q(COUNTER_reg[14]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \COUNTER_reg[15] 
       (.C(CLK_2MHZ_reg_0),
        .CE(\A[2]_i_1_n_0 ),
        .CLR(RESET),
        .D(\COUNTER_reg[12]_i_1_n_4 ),
        .Q(COUNTER_reg[15]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \COUNTER_reg[16] 
       (.C(CLK_2MHZ_reg_0),
        .CE(\A[2]_i_1_n_0 ),
        .CLR(RESET),
        .D(\COUNTER_reg[16]_i_1_n_7 ),
        .Q(COUNTER_reg[16]));
  CARRY4 \COUNTER_reg[16]_i_1 
       (.CI(\COUNTER_reg[12]_i_1_n_0 ),
        .CO(\NLW_COUNTER_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_COUNTER_reg[16]_i_1_O_UNCONNECTED [3:1],\COUNTER_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,COUNTER_reg[16]}));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \COUNTER_reg[1] 
       (.C(CLK_2MHZ_reg_0),
        .CE(\A[2]_i_1_n_0 ),
        .CLR(RESET),
        .D(\COUNTER_reg[0]_i_1_n_6 ),
        .Q(COUNTER_reg[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \COUNTER_reg[2] 
       (.C(CLK_2MHZ_reg_0),
        .CE(\A[2]_i_1_n_0 ),
        .CLR(RESET),
        .D(\COUNTER_reg[0]_i_1_n_5 ),
        .Q(COUNTER_reg[2]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \COUNTER_reg[3] 
       (.C(CLK_2MHZ_reg_0),
        .CE(\A[2]_i_1_n_0 ),
        .CLR(RESET),
        .D(\COUNTER_reg[0]_i_1_n_4 ),
        .Q(COUNTER_reg[3]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \COUNTER_reg[4] 
       (.C(CLK_2MHZ_reg_0),
        .CE(\A[2]_i_1_n_0 ),
        .CLR(RESET),
        .D(\COUNTER_reg[4]_i_1_n_7 ),
        .Q(COUNTER_reg[4]));
  CARRY4 \COUNTER_reg[4]_i_1 
       (.CI(\COUNTER_reg[0]_i_1_n_0 ),
        .CO({\COUNTER_reg[4]_i_1_n_0 ,\COUNTER_reg[4]_i_1_n_1 ,\COUNTER_reg[4]_i_1_n_2 ,\COUNTER_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\COUNTER_reg[4]_i_1_n_4 ,\COUNTER_reg[4]_i_1_n_5 ,\COUNTER_reg[4]_i_1_n_6 ,\COUNTER_reg[4]_i_1_n_7 }),
        .S(COUNTER_reg[7:4]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \COUNTER_reg[5] 
       (.C(CLK_2MHZ_reg_0),
        .CE(\A[2]_i_1_n_0 ),
        .CLR(RESET),
        .D(\COUNTER_reg[4]_i_1_n_6 ),
        .Q(COUNTER_reg[5]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \COUNTER_reg[6] 
       (.C(CLK_2MHZ_reg_0),
        .CE(\A[2]_i_1_n_0 ),
        .CLR(RESET),
        .D(\COUNTER_reg[4]_i_1_n_5 ),
        .Q(COUNTER_reg[6]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \COUNTER_reg[7] 
       (.C(CLK_2MHZ_reg_0),
        .CE(\A[2]_i_1_n_0 ),
        .CLR(RESET),
        .D(\COUNTER_reg[4]_i_1_n_4 ),
        .Q(COUNTER_reg[7]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \COUNTER_reg[8] 
       (.C(CLK_2MHZ_reg_0),
        .CE(\A[2]_i_1_n_0 ),
        .CLR(RESET),
        .D(\COUNTER_reg[8]_i_1_n_7 ),
        .Q(COUNTER_reg[8]));
  CARRY4 \COUNTER_reg[8]_i_1 
       (.CI(\COUNTER_reg[4]_i_1_n_0 ),
        .CO({\COUNTER_reg[8]_i_1_n_0 ,\COUNTER_reg[8]_i_1_n_1 ,\COUNTER_reg[8]_i_1_n_2 ,\COUNTER_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\COUNTER_reg[8]_i_1_n_4 ,\COUNTER_reg[8]_i_1_n_5 ,\COUNTER_reg[8]_i_1_n_6 ,\COUNTER_reg[8]_i_1_n_7 }),
        .S(COUNTER_reg[11:8]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \COUNTER_reg[9] 
       (.C(CLK_2MHZ_reg_0),
        .CE(\A[2]_i_1_n_0 ),
        .CLR(RESET),
        .D(\COUNTER_reg[8]_i_1_n_6 ),
        .Q(COUNTER_reg[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \DATA[7]_i_1 
       (.I0(DONE_reg_0),
        .O(\DATA[7]_i_1_n_0 ));
  FDRE \DATA_reg[0] 
       (.C(EOC),
        .CE(\DATA[7]_i_1_n_0 ),
        .D(DB[0]),
        .Q(DATA[0]),
        .R(RESET));
  FDRE \DATA_reg[1] 
       (.C(EOC),
        .CE(\DATA[7]_i_1_n_0 ),
        .D(DB[1]),
        .Q(DATA[1]),
        .R(RESET));
  FDRE \DATA_reg[2] 
       (.C(EOC),
        .CE(\DATA[7]_i_1_n_0 ),
        .D(DB[2]),
        .Q(DATA[2]),
        .R(RESET));
  FDRE \DATA_reg[3] 
       (.C(EOC),
        .CE(\DATA[7]_i_1_n_0 ),
        .D(DB[3]),
        .Q(DATA[3]),
        .R(RESET));
  FDRE \DATA_reg[4] 
       (.C(EOC),
        .CE(\DATA[7]_i_1_n_0 ),
        .D(DB[4]),
        .Q(DATA[4]),
        .R(RESET));
  FDRE \DATA_reg[5] 
       (.C(EOC),
        .CE(\DATA[7]_i_1_n_0 ),
        .D(DB[5]),
        .Q(DATA[5]),
        .R(RESET));
  FDRE \DATA_reg[6] 
       (.C(EOC),
        .CE(\DATA[7]_i_1_n_0 ),
        .D(DB[6]),
        .Q(DATA[6]),
        .R(RESET));
  FDRE \DATA_reg[7] 
       (.C(EOC),
        .CE(\DATA[7]_i_1_n_0 ),
        .D(DB[7]),
        .Q(DATA[7]),
        .R(RESET));
  LUT5 #(
    .INIT(32'hFFFF1000)) 
    DONE_i_1
       (.I0(DONE_i_2_n_0),
        .I1(DONE_i_3_n_0),
        .I2(DONE_i_4_n_0),
        .I3(DONE_i_5_n_0),
        .I4(DONE_reg_0),
        .O(DONE_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    DONE_i_2
       (.I0(COUNTER_reg[10]),
        .I1(COUNTER_reg[9]),
        .I2(COUNTER_reg[12]),
        .I3(COUNTER_reg[11]),
        .O(DONE_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    DONE_i_3
       (.I0(COUNTER_reg[16]),
        .I1(COUNTER_reg[15]),
        .I2(COUNTER_reg[14]),
        .I3(COUNTER_reg[13]),
        .O(DONE_i_3_n_0));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    DONE_i_4
       (.I0(COUNTER_reg[3]),
        .I1(COUNTER_reg[4]),
        .I2(COUNTER_reg[5]),
        .I3(COUNTER_reg[8]),
        .I4(COUNTER_reg[7]),
        .I5(COUNTER_reg[6]),
        .O(DONE_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h01)) 
    DONE_i_5
       (.I0(COUNTER_reg[2]),
        .I1(COUNTER_reg[1]),
        .I2(COUNTER_reg[0]),
        .O(DONE_i_5_n_0));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    DONE_reg
       (.C(CLK_2MHZ_reg_0),
        .CE(1'b1),
        .CLR(RESET),
        .D(DONE_i_1_n_0),
        .Q(DONE_reg_0));
  LUT6 #(
    .INIT(64'h888888888888B888)) 
    LAST_i_1
       (.I0(LAST),
        .I1(RESET),
        .I2(LAST_i_2_n_0),
        .I3(LAST_i_3_n_0),
        .I4(DONE_i_3_n_0),
        .I5(DONE_i_2_n_0),
        .O(LAST_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h80)) 
    LAST_i_2
       (.I0(COUNTER_reg[2]),
        .I1(COUNTER_reg[1]),
        .I2(COUNTER_reg[0]),
        .O(LAST_i_2_n_0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    LAST_i_3
       (.I0(COUNTER_reg[3]),
        .I1(COUNTER_reg[4]),
        .I2(COUNTER_reg[5]),
        .I3(COUNTER_reg[8]),
        .I4(COUNTER_reg[7]),
        .I5(COUNTER_reg[6]),
        .O(LAST_i_3_n_0));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    LAST_reg
       (.C(CLK_2MHZ_reg_0),
        .CE(1'b1),
        .CLR(RESET),
        .D(LAST_i_1_n_0),
        .Q(LAST));
  LUT2 #(
    .INIT(4'h1)) 
    VALID_i_1
       (.I0(DONE_reg_0),
        .I1(RESET),
        .O(VALID_i_1_n_0));
  FDRE VALID_reg
       (.C(EOC),
        .CE(1'b1),
        .D(VALID_i_1_n_0),
        .Q(VALID),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_FPGA_ADC_interface_0_1,FPGA_ADC_interface,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "FPGA_ADC_interface,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CONVST,
    DB,
    EOC,
    CS,
    RD,
    A,
    DONE,
    DATA,
    VALID,
    READY,
    LAST,
    CLK_2MHZ,
    RESET_OUT_INV,
    CLK_8MHZ,
    RESET,
    ENABLE);
  output CONVST;
  input [7:0]DB;
  input EOC;
  output CS;
  output RD;
  output [2:0]A;
  output DONE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 Data_axi_stream TDATA" *) output [7:0]DATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 Data_axi_stream TVALID" *) output VALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 Data_axi_stream TREADY" *) input READY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 Data_axi_stream TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Data_axi_stream, HAS_TLAST 1, HAS_TKEEP 0, HAS_TSTRB 0, HAS_TREADY 1, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, FREQ_HZ 2000000, PHASE 0.000, CLK_DOMAIN design_1_FPGA_ADC_interface_0_1_CLK_2MHZ, LAYERED_METADATA undef, INSERT_VIP 0" *) output LAST;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK_2MHZ CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK_2MHZ, ASSOCIATED_RESET RESET_OUT:RESET_OUT_INV, ASSOCIATED_BUSIF Data_axi_stream, FREQ_HZ 2000000, PHASE 0.000, CLK_DOMAIN design_1_FPGA_ADC_interface_0_1_CLK_2MHZ, INSERT_VIP 0" *) output CLK_2MHZ;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET_OUT RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET_OUT, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output RESET_OUT_INV;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK_8MHZ CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK_8MHZ, ASSOCIATED_RESET RESET, FREQ_HZ 8000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input CLK_8MHZ;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input RESET;
  input ENABLE;

  wire \<const0> ;
  wire [2:1]\^A ;
  wire CLK_2MHZ;
  wire CLK_8MHZ;
  wire CONVST;
  wire [7:0]DATA;
  wire [7:0]DB;
  wire DONE;
  wire ENABLE;
  wire EOC;
  wire LAST;
  wire RESET;
  wire RESET_OUT_INV;
  wire VALID;

  assign A[2:1] = \^A [2:1];
  assign A[0] = \<const0> ;
  assign CS = EOC;
  assign RD = EOC;
  GND GND
       (.G(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    RESET_OUT_INV_INST_0
       (.I0(RESET),
        .O(RESET_OUT_INV));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FPGA_ADC_interface inst
       (.A(\^A ),
        .CLK_2MHZ_reg_0(CLK_2MHZ),
        .CLK_8MHZ(CLK_8MHZ),
        .CONVST(CONVST),
        .DATA(DATA),
        .DB(DB),
        .DONE_reg_0(DONE),
        .ENABLE(ENABLE),
        .EOC(EOC),
        .LAST(LAST),
        .RESET(RESET),
        .VALID(VALID));
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
