// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Apr 14 15:39:24 2019
// Host        : Lenovo running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_FPGA_ADC_interface_0_1_stub.v
// Design      : design_1_FPGA_ADC_interface_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "FPGA_ADC_interface,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(CONVST, DB, EOC, CS, RD, A, DONE, DATA, VALID, READY, LAST, 
  CLK_2MHZ, RESET_OUT_INV, CLK_8MHZ, RESET, ENABLE)
/* synthesis syn_black_box black_box_pad_pin="CONVST,DB[7:0],EOC,CS,RD,A[2:0],DONE,DATA[7:0],VALID,READY,LAST,CLK_2MHZ,RESET_OUT_INV,CLK_8MHZ,RESET,ENABLE" */;
  output CONVST;
  input [7:0]DB;
  input EOC;
  output CS;
  output RD;
  output [2:0]A;
  output DONE;
  output [7:0]DATA;
  output VALID;
  input READY;
  output LAST;
  output CLK_2MHZ;
  output RESET_OUT_INV;
  input CLK_8MHZ;
  input RESET;
  input ENABLE;
endmodule
