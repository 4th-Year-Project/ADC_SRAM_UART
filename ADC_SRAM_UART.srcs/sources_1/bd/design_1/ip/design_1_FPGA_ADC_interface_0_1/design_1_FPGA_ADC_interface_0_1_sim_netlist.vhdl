-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sun Apr 14 15:39:25 2019
-- Host        : Lenovo running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_FPGA_ADC_interface_0_1/design_1_FPGA_ADC_interface_0_1_sim_netlist.vhdl
-- Design      : design_1_FPGA_ADC_interface_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_FPGA_ADC_interface_0_1_FPGA_ADC_interface is
  port (
    CONVST : out STD_LOGIC;
    CLK_2MHZ_reg_0 : out STD_LOGIC;
    DONE_reg_0 : out STD_LOGIC;
    VALID : out STD_LOGIC;
    LAST : out STD_LOGIC;
    A : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    RESET : in STD_LOGIC;
    CLK_8MHZ : in STD_LOGIC;
    EOC : in STD_LOGIC;
    ENABLE : in STD_LOGIC;
    DB : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_FPGA_ADC_interface_0_1_FPGA_ADC_interface : entity is "FPGA_ADC_interface";
end design_1_FPGA_ADC_interface_0_1_FPGA_ADC_interface;

architecture STRUCTURE of design_1_FPGA_ADC_interface_0_1_FPGA_ADC_interface is
  signal \^a\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \A[2]_i_1_n_0\ : STD_LOGIC;
  signal \A[2]_i_3_n_0\ : STD_LOGIC;
  signal CLK_2MHZ_i_1_n_0 : STD_LOGIC;
  signal \^clk_2mhz_reg_0\ : STD_LOGIC;
  signal CLK_4MHZ : STD_LOGIC;
  signal CLK_4MHZ_i_1_n_0 : STD_LOGIC;
  signal \^convst\ : STD_LOGIC;
  signal CONVST_i_1_n_0 : STD_LOGIC;
  signal \COUNTER[0]_i_2_n_0\ : STD_LOGIC;
  signal COUNTER_reg : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \COUNTER_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \COUNTER_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \COUNTER_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \COUNTER_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \COUNTER_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \COUNTER_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \COUNTER_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \COUNTER_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \COUNTER_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \COUNTER_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \COUNTER_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \COUNTER_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \COUNTER_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \COUNTER_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \COUNTER_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \COUNTER_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \COUNTER_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \COUNTER_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \COUNTER_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \COUNTER_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \COUNTER_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \COUNTER_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \COUNTER_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \COUNTER_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \COUNTER_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \COUNTER_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \COUNTER_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \COUNTER_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \COUNTER_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \COUNTER_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \COUNTER_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \COUNTER_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \COUNTER_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \DATA[7]_i_1_n_0\ : STD_LOGIC;
  signal DONE_i_1_n_0 : STD_LOGIC;
  signal DONE_i_2_n_0 : STD_LOGIC;
  signal DONE_i_3_n_0 : STD_LOGIC;
  signal \^done_reg_0\ : STD_LOGIC;
  signal \^last\ : STD_LOGIC;
  signal LAST_i_1_n_0 : STD_LOGIC;
  signal LAST_i_2_n_0 : STD_LOGIC;
  signal LAST_i_3_n_0 : STD_LOGIC;
  signal VALID_i_1_n_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \NLW_COUNTER_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_COUNTER_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \A[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \A[2]_i_2\ : label is "soft_lutpair0";
begin
  A(1 downto 0) <= \^a\(1 downto 0);
  CLK_2MHZ_reg_0 <= \^clk_2mhz_reg_0\;
  CONVST <= \^convst\;
  DONE_reg_0 <= \^done_reg_0\;
  LAST <= \^last\;
\A[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^a\(0),
      O => p_1_in(1)
    );
\A[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F000000010000"
    )
        port map (
      I0 => COUNTER_reg(8),
      I1 => COUNTER_reg(9),
      I2 => COUNTER_reg(16),
      I3 => COUNTER_reg(15),
      I4 => ENABLE,
      I5 => \A[2]_i_3_n_0\,
      O => \A[2]_i_1_n_0\
    );
\A[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^a\(0),
      I1 => \^a\(1),
      O => p_1_in(2)
    );
\A[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => COUNTER_reg(10),
      I1 => COUNTER_reg(13),
      I2 => COUNTER_reg(14),
      I3 => COUNTER_reg(12),
      I4 => COUNTER_reg(11),
      O => \A[2]_i_3_n_0\
    );
\A_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^clk_2mhz_reg_0\,
      CE => \A[2]_i_1_n_0\,
      CLR => RESET,
      D => p_1_in(1),
      Q => \^a\(0)
    );
\A_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^clk_2mhz_reg_0\,
      CE => \A[2]_i_1_n_0\,
      CLR => RESET,
      D => p_1_in(2),
      Q => \^a\(1)
    );
CLK_2MHZ_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^clk_2mhz_reg_0\,
      I1 => RESET,
      O => CLK_2MHZ_i_1_n_0
    );
CLK_2MHZ_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_4MHZ,
      CE => '1',
      D => CLK_2MHZ_i_1_n_0,
      Q => \^clk_2mhz_reg_0\,
      R => '0'
    );
CLK_4MHZ_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => CLK_4MHZ,
      I1 => RESET,
      O => CLK_4MHZ_i_1_n_0
    );
CLK_4MHZ_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_8MHZ,
      CE => '1',
      D => CLK_4MHZ_i_1_n_0,
      Q => CLK_4MHZ,
      R => '0'
    );
CONVST_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => \^convst\,
      I1 => ENABLE,
      I2 => \^done_reg_0\,
      O => CONVST_i_1_n_0
    );
CONVST_reg: unisim.vcomponents.FDPE
     port map (
      C => CLK_4MHZ,
      CE => '1',
      D => CONVST_i_1_n_0,
      PRE => RESET,
      Q => \^convst\
    );
\COUNTER[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => COUNTER_reg(0),
      O => \COUNTER[0]_i_2_n_0\
    );
\COUNTER_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^clk_2mhz_reg_0\,
      CE => \A[2]_i_1_n_0\,
      CLR => RESET,
      D => \COUNTER_reg[0]_i_1_n_7\,
      Q => COUNTER_reg(0)
    );
\COUNTER_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \COUNTER_reg[0]_i_1_n_0\,
      CO(2) => \COUNTER_reg[0]_i_1_n_1\,
      CO(1) => \COUNTER_reg[0]_i_1_n_2\,
      CO(0) => \COUNTER_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \COUNTER_reg[0]_i_1_n_4\,
      O(2) => \COUNTER_reg[0]_i_1_n_5\,
      O(1) => \COUNTER_reg[0]_i_1_n_6\,
      O(0) => \COUNTER_reg[0]_i_1_n_7\,
      S(3 downto 1) => COUNTER_reg(3 downto 1),
      S(0) => \COUNTER[0]_i_2_n_0\
    );
\COUNTER_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^clk_2mhz_reg_0\,
      CE => \A[2]_i_1_n_0\,
      CLR => RESET,
      D => \COUNTER_reg[8]_i_1_n_5\,
      Q => COUNTER_reg(10)
    );
\COUNTER_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^clk_2mhz_reg_0\,
      CE => \A[2]_i_1_n_0\,
      CLR => RESET,
      D => \COUNTER_reg[8]_i_1_n_4\,
      Q => COUNTER_reg(11)
    );
\COUNTER_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^clk_2mhz_reg_0\,
      CE => \A[2]_i_1_n_0\,
      CLR => RESET,
      D => \COUNTER_reg[12]_i_1_n_7\,
      Q => COUNTER_reg(12)
    );
\COUNTER_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \COUNTER_reg[8]_i_1_n_0\,
      CO(3) => \COUNTER_reg[12]_i_1_n_0\,
      CO(2) => \COUNTER_reg[12]_i_1_n_1\,
      CO(1) => \COUNTER_reg[12]_i_1_n_2\,
      CO(0) => \COUNTER_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \COUNTER_reg[12]_i_1_n_4\,
      O(2) => \COUNTER_reg[12]_i_1_n_5\,
      O(1) => \COUNTER_reg[12]_i_1_n_6\,
      O(0) => \COUNTER_reg[12]_i_1_n_7\,
      S(3 downto 0) => COUNTER_reg(15 downto 12)
    );
\COUNTER_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^clk_2mhz_reg_0\,
      CE => \A[2]_i_1_n_0\,
      CLR => RESET,
      D => \COUNTER_reg[12]_i_1_n_6\,
      Q => COUNTER_reg(13)
    );
\COUNTER_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^clk_2mhz_reg_0\,
      CE => \A[2]_i_1_n_0\,
      CLR => RESET,
      D => \COUNTER_reg[12]_i_1_n_5\,
      Q => COUNTER_reg(14)
    );
\COUNTER_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^clk_2mhz_reg_0\,
      CE => \A[2]_i_1_n_0\,
      CLR => RESET,
      D => \COUNTER_reg[12]_i_1_n_4\,
      Q => COUNTER_reg(15)
    );
\COUNTER_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^clk_2mhz_reg_0\,
      CE => \A[2]_i_1_n_0\,
      CLR => RESET,
      D => \COUNTER_reg[16]_i_1_n_7\,
      Q => COUNTER_reg(16)
    );
\COUNTER_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \COUNTER_reg[12]_i_1_n_0\,
      CO(3 downto 0) => \NLW_COUNTER_reg[16]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_COUNTER_reg[16]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \COUNTER_reg[16]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => COUNTER_reg(16)
    );
\COUNTER_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^clk_2mhz_reg_0\,
      CE => \A[2]_i_1_n_0\,
      CLR => RESET,
      D => \COUNTER_reg[0]_i_1_n_6\,
      Q => COUNTER_reg(1)
    );
\COUNTER_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^clk_2mhz_reg_0\,
      CE => \A[2]_i_1_n_0\,
      CLR => RESET,
      D => \COUNTER_reg[0]_i_1_n_5\,
      Q => COUNTER_reg(2)
    );
\COUNTER_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^clk_2mhz_reg_0\,
      CE => \A[2]_i_1_n_0\,
      CLR => RESET,
      D => \COUNTER_reg[0]_i_1_n_4\,
      Q => COUNTER_reg(3)
    );
\COUNTER_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^clk_2mhz_reg_0\,
      CE => \A[2]_i_1_n_0\,
      CLR => RESET,
      D => \COUNTER_reg[4]_i_1_n_7\,
      Q => COUNTER_reg(4)
    );
\COUNTER_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \COUNTER_reg[0]_i_1_n_0\,
      CO(3) => \COUNTER_reg[4]_i_1_n_0\,
      CO(2) => \COUNTER_reg[4]_i_1_n_1\,
      CO(1) => \COUNTER_reg[4]_i_1_n_2\,
      CO(0) => \COUNTER_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \COUNTER_reg[4]_i_1_n_4\,
      O(2) => \COUNTER_reg[4]_i_1_n_5\,
      O(1) => \COUNTER_reg[4]_i_1_n_6\,
      O(0) => \COUNTER_reg[4]_i_1_n_7\,
      S(3 downto 0) => COUNTER_reg(7 downto 4)
    );
\COUNTER_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^clk_2mhz_reg_0\,
      CE => \A[2]_i_1_n_0\,
      CLR => RESET,
      D => \COUNTER_reg[4]_i_1_n_6\,
      Q => COUNTER_reg(5)
    );
\COUNTER_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^clk_2mhz_reg_0\,
      CE => \A[2]_i_1_n_0\,
      CLR => RESET,
      D => \COUNTER_reg[4]_i_1_n_5\,
      Q => COUNTER_reg(6)
    );
\COUNTER_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^clk_2mhz_reg_0\,
      CE => \A[2]_i_1_n_0\,
      CLR => RESET,
      D => \COUNTER_reg[4]_i_1_n_4\,
      Q => COUNTER_reg(7)
    );
\COUNTER_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^clk_2mhz_reg_0\,
      CE => \A[2]_i_1_n_0\,
      CLR => RESET,
      D => \COUNTER_reg[8]_i_1_n_7\,
      Q => COUNTER_reg(8)
    );
\COUNTER_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \COUNTER_reg[4]_i_1_n_0\,
      CO(3) => \COUNTER_reg[8]_i_1_n_0\,
      CO(2) => \COUNTER_reg[8]_i_1_n_1\,
      CO(1) => \COUNTER_reg[8]_i_1_n_2\,
      CO(0) => \COUNTER_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \COUNTER_reg[8]_i_1_n_4\,
      O(2) => \COUNTER_reg[8]_i_1_n_5\,
      O(1) => \COUNTER_reg[8]_i_1_n_6\,
      O(0) => \COUNTER_reg[8]_i_1_n_7\,
      S(3 downto 0) => COUNTER_reg(11 downto 8)
    );
\COUNTER_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^clk_2mhz_reg_0\,
      CE => \A[2]_i_1_n_0\,
      CLR => RESET,
      D => \COUNTER_reg[8]_i_1_n_6\,
      Q => COUNTER_reg(9)
    );
\DATA[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^done_reg_0\,
      O => \DATA[7]_i_1_n_0\
    );
\DATA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => EOC,
      CE => \DATA[7]_i_1_n_0\,
      D => DB(0),
      Q => DATA(0),
      R => RESET
    );
\DATA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => EOC,
      CE => \DATA[7]_i_1_n_0\,
      D => DB(1),
      Q => DATA(1),
      R => RESET
    );
\DATA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => EOC,
      CE => \DATA[7]_i_1_n_0\,
      D => DB(2),
      Q => DATA(2),
      R => RESET
    );
\DATA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => EOC,
      CE => \DATA[7]_i_1_n_0\,
      D => DB(3),
      Q => DATA(3),
      R => RESET
    );
\DATA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => EOC,
      CE => \DATA[7]_i_1_n_0\,
      D => DB(4),
      Q => DATA(4),
      R => RESET
    );
\DATA_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => EOC,
      CE => \DATA[7]_i_1_n_0\,
      D => DB(5),
      Q => DATA(5),
      R => RESET
    );
\DATA_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => EOC,
      CE => \DATA[7]_i_1_n_0\,
      D => DB(6),
      Q => DATA(6),
      R => RESET
    );
\DATA_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => EOC,
      CE => \DATA[7]_i_1_n_0\,
      D => DB(7),
      Q => DATA(7),
      R => RESET
    );
DONE_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => DONE_i_2_n_0,
      I1 => DONE_i_3_n_0,
      I2 => \A[2]_i_3_n_0\,
      I3 => \^done_reg_0\,
      O => DONE_i_1_n_0
    );
DONE_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => COUNTER_reg(6),
      I1 => COUNTER_reg(7),
      I2 => COUNTER_reg(4),
      I3 => COUNTER_reg(5),
      I4 => COUNTER_reg(9),
      I5 => COUNTER_reg(8),
      O => DONE_i_2_n_0
    );
DONE_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => COUNTER_reg(2),
      I1 => COUNTER_reg(3),
      I2 => COUNTER_reg(0),
      I3 => COUNTER_reg(1),
      I4 => COUNTER_reg(16),
      I5 => COUNTER_reg(15),
      O => DONE_i_3_n_0
    );
DONE_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^clk_2mhz_reg_0\,
      CE => '1',
      CLR => RESET,
      D => DONE_i_1_n_0,
      Q => \^done_reg_0\
    );
LAST_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8B888888"
    )
        port map (
      I0 => \^last\,
      I1 => RESET,
      I2 => \A[2]_i_3_n_0\,
      I3 => LAST_i_2_n_0,
      I4 => LAST_i_3_n_0,
      O => LAST_i_1_n_0
    );
LAST_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => COUNTER_reg(2),
      I1 => COUNTER_reg(3),
      I2 => COUNTER_reg(0),
      I3 => COUNTER_reg(1),
      I4 => COUNTER_reg(16),
      I5 => COUNTER_reg(15),
      O => LAST_i_2_n_0
    );
LAST_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => COUNTER_reg(6),
      I1 => COUNTER_reg(7),
      I2 => COUNTER_reg(4),
      I3 => COUNTER_reg(5),
      I4 => COUNTER_reg(9),
      I5 => COUNTER_reg(8),
      O => LAST_i_3_n_0
    );
LAST_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^clk_2mhz_reg_0\,
      CE => '1',
      CLR => RESET,
      D => LAST_i_1_n_0,
      Q => \^last\
    );
VALID_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^done_reg_0\,
      I1 => RESET,
      O => VALID_i_1_n_0
    );
VALID_reg: unisim.vcomponents.FDRE
     port map (
      C => EOC,
      CE => '1',
      D => VALID_i_1_n_0,
      Q => VALID,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_FPGA_ADC_interface_0_1 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_FPGA_ADC_interface_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_FPGA_ADC_interface_0_1 : entity is "design_1_FPGA_ADC_interface_0_1,FPGA_ADC_interface,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_FPGA_ADC_interface_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_FPGA_ADC_interface_0_1 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_FPGA_ADC_interface_0_1 : entity is "FPGA_ADC_interface,Vivado 2018.3";
end design_1_FPGA_ADC_interface_0_1;

architecture STRUCTURE of design_1_FPGA_ADC_interface_0_1 is
  signal \<const0>\ : STD_LOGIC;
  signal \^a\ : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \^eoc\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK_2MHZ : signal is "xilinx.com:signal:clock:1.0 CLK_2MHZ CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK_2MHZ : signal is "XIL_INTERFACENAME CLK_2MHZ, ASSOCIATED_RESET RESET_OUT:RESET_OUT_INV, ASSOCIATED_BUSIF Data_axi_stream, FREQ_HZ 2000000, PHASE 0.000, CLK_DOMAIN design_1_FPGA_ADC_interface_0_1_CLK_2MHZ, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of CLK_8MHZ : signal is "xilinx.com:signal:clock:1.0 CLK_8MHZ CLK";
  attribute X_INTERFACE_PARAMETER of CLK_8MHZ : signal is "XIL_INTERFACENAME CLK_8MHZ, ASSOCIATED_RESET RESET, FREQ_HZ 8000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of LAST : signal is "xilinx.com:interface:axis:1.0 Data_axi_stream TLAST";
  attribute X_INTERFACE_PARAMETER of LAST : signal is "XIL_INTERFACENAME Data_axi_stream, HAS_TLAST 1, HAS_TKEEP 0, HAS_TSTRB 0, HAS_TREADY 1, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, FREQ_HZ 2000000, PHASE 0.000, CLK_DOMAIN design_1_FPGA_ADC_interface_0_1_CLK_2MHZ, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of READY : signal is "xilinx.com:interface:axis:1.0 Data_axi_stream TREADY";
  attribute X_INTERFACE_INFO of RESET : signal is "xilinx.com:signal:reset:1.0 RESET RST";
  attribute X_INTERFACE_PARAMETER of RESET : signal is "XIL_INTERFACENAME RESET, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of RESET_OUT_INV : signal is "xilinx.com:signal:reset:1.0 RESET_OUT RST";
  attribute X_INTERFACE_PARAMETER of RESET_OUT_INV : signal is "XIL_INTERFACENAME RESET_OUT, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of VALID : signal is "xilinx.com:interface:axis:1.0 Data_axi_stream TVALID";
  attribute X_INTERFACE_INFO of DATA : signal is "xilinx.com:interface:axis:1.0 Data_axi_stream TDATA";
begin
  A(2 downto 1) <= \^a\(2 downto 1);
  A(0) <= \<const0>\;
  CS <= \^eoc\;
  RD <= \^eoc\;
  \^eoc\ <= EOC;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
RESET_OUT_INV_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => RESET,
      O => RESET_OUT_INV
    );
inst: entity work.design_1_FPGA_ADC_interface_0_1_FPGA_ADC_interface
     port map (
      A(1 downto 0) => \^a\(2 downto 1),
      CLK_2MHZ_reg_0 => CLK_2MHZ,
      CLK_8MHZ => CLK_8MHZ,
      CONVST => CONVST,
      DATA(7 downto 0) => DATA(7 downto 0),
      DB(7 downto 0) => DB(7 downto 0),
      DONE_reg_0 => DONE,
      ENABLE => ENABLE,
      EOC => \^eoc\,
      LAST => LAST,
      RESET => RESET,
      VALID => VALID
    );
end STRUCTURE;
