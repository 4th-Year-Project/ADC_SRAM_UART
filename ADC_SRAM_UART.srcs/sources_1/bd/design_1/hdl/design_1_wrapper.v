//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Wed Apr 10 21:02:20 2019
//Host        : Lenovo running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (A,
    BTN1,
    CONVST,
    CS,
    DB,
    EOC,
    LED1,
    RD,
    reset,
    sys_clock);
  output [2:0]A;
  input BTN1;
  output CONVST;
  output CS;
  input [7:0]DB;
  input EOC;
  output LED1;
  output RD;
  input reset;
  input sys_clock;

  wire [2:0]A;
  wire BTN1;
  wire CONVST;
  wire CS;
  wire [7:0]DB;
  wire EOC;
  wire LED1;
  wire RD;
  wire reset;
  wire sys_clock;

  design_1 design_1_i
       (.A(A),
        .BTN1(BTN1),
        .CONVST(CONVST),
        .CS(CS),
        .DB(DB),
        .EOC(EOC),
        .LED1(LED1),
        .RD(RD),
        .reset(reset),
        .sys_clock(sys_clock));
endmodule
