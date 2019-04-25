// (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: Carslake.me:user:FPGA_ADC_interface:1.14
// IP Revision: 23

(* X_CORE_INFO = "FPGA_ADC_interface,Vivado 2018.3" *)
(* CHECK_LICENSE_TYPE = "design_1_FPGA_ADC_interface_0_0,FPGA_ADC_interface,{}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_FPGA_ADC_interface_0_0 (
  CONVST,
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
  ENABLE
);

output wire CONVST;
input wire [7 : 0] DB;
input wire EOC;
output wire CS;
output wire RD;
output wire [2 : 0] A;
output wire DONE;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 Data_axi_stream TDATA" *)
output wire [7 : 0] DATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 Data_axi_stream TVALID" *)
output wire VALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 Data_axi_stream TREADY" *)
input wire READY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Data_axi_stream, HAS_TLAST 1, HAS_TKEEP 0, HAS_TSTRB 0, HAS_TREADY 1, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, FREQ_HZ 2000000, PHASE 0.000, CLK_DOMAIN design_1_FPGA_ADC_interface_0_0_CLK_2MHZ, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 Data_axi_stream TLAST" *)
output wire LAST;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK_2MHZ, ASSOCIATED_RESET RESET_OUT:RESET_OUT_INV, ASSOCIATED_BUSIF Data_axi_stream, FREQ_HZ 2000000, PHASE 0.000, CLK_DOMAIN design_1_FPGA_ADC_interface_0_0_CLK_2MHZ, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK_2MHZ CLK" *)
output wire CLK_2MHZ;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET_OUT, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET_OUT RST" *)
output wire RESET_OUT_INV;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK_8MHZ, ASSOCIATED_RESET RESET, FREQ_HZ 8000000, PHASE 0.0, CLK_DOMAIN /clocking_and_reset/clk_wiz_1_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK_8MHZ CLK" *)
input wire CLK_8MHZ;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET RST" *)
input wire RESET;
input wire ENABLE;

  FPGA_ADC_interface #(
    .MAXSAMPLES(32000)
  ) inst (
    .CONVST(CONVST),
    .DB(DB),
    .EOC(EOC),
    .CS(CS),
    .RD(RD),
    .A(A),
    .DONE(DONE),
    .DATA(DATA),
    .VALID(VALID),
    .READY(READY),
    .LAST(LAST),
    .CLK_2MHZ(CLK_2MHZ),
    .RESET_OUT_INV(RESET_OUT_INV),
    .CLK_8MHZ(CLK_8MHZ),
    .RESET(RESET),
    .ENABLE(ENABLE)
  );
endmodule
