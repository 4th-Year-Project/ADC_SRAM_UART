-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sat Apr 13 14:11:18 2019
-- Host        : Lenovo running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_FPGA_ADC_interface_0_1_stub.vhdl
-- Design      : design_1_FPGA_ADC_interface_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    CONVST : out STD_LOGIC;
    DB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    EOC : in STD_LOGIC;
    CS : out STD_LOGIC;
    RD : out STD_LOGIC;
    A : out STD_LOGIC_VECTOR ( 2 downto 0 );
    DONE : out STD_LOGIC;
    DATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    VALID : out STD_LOGIC;
    READY : in STD_LOGIC;
    LAST : out STD_LOGIC;
    CLK_2MHZ : out STD_LOGIC;
    RESET_OUT_INV : out STD_LOGIC;
    CLK_8MHZ : in STD_LOGIC;
    RESET : in STD_LOGIC;
    ENABLE : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CONVST,DB[7:0],EOC,CS,RD,A[2:0],DONE,DATA[7:0],VALID,READY,LAST,CLK_2MHZ,RESET_OUT_INV,CLK_8MHZ,RESET,ENABLE";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "FPGA_ADC_interface,Vivado 2018.3";
begin
end;
