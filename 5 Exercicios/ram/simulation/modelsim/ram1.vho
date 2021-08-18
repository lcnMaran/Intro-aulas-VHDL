-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "08/09/2021 21:50:53"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	RAM1 IS
    PORT (
	ram_input : IN std_logic_vector(7 DOWNTO 0);
	ram_output : OUT std_logic_vector(7 DOWNTO 0);
	ram_address : IN std_logic_vector(7 DOWNTO 0);
	clk : IN std_logic;
	we : IN std_logic
	);
END RAM1;

-- Design Ports Information
-- ram_output[0]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram_output[1]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram_output[2]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram_output[3]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram_output[4]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram_output[5]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram_output[6]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram_output[7]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram_address[3]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram_address[4]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram_address[5]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram_address[6]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram_address[7]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram_address[2]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram_address[1]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram_input[0]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram_address[0]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- we	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram_input[1]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram_input[2]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram_input[3]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram_input[4]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram_input[5]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram_input[6]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram_input[7]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RAM1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ram_input : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ram_output : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ram_address : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_we : std_logic;
SIGNAL \ram_address[3]~input_o\ : std_logic;
SIGNAL \ram_address[4]~input_o\ : std_logic;
SIGNAL \ram_address[5]~input_o\ : std_logic;
SIGNAL \ram_address[6]~input_o\ : std_logic;
SIGNAL \ram_address[7]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ram_input[0]~input_o\ : std_logic;
SIGNAL \ram_address[0]~input_o\ : std_logic;
SIGNAL \we~input_o\ : std_logic;
SIGNAL \ram_address[2]~input_o\ : std_logic;
SIGNAL \ram_address[1]~input_o\ : std_logic;
SIGNAL \ram~141_combout\ : std_logic;
SIGNAL \ram~68_q\ : std_logic;
SIGNAL \ram~160_combout\ : std_logic;
SIGNAL \ram~144_combout\ : std_logic;
SIGNAL \ram~20_q\ : std_logic;
SIGNAL \ram~147_combout\ : std_logic;
SIGNAL \ram~28_q\ : std_logic;
SIGNAL \ram~36feeder_combout\ : std_logic;
SIGNAL \ram~145_combout\ : std_logic;
SIGNAL \ram~36_q\ : std_logic;
SIGNAL \ram~146_combout\ : std_logic;
SIGNAL \ram~12_q\ : std_logic;
SIGNAL \ram~108_combout\ : std_logic;
SIGNAL \ram~148_combout\ : std_logic;
SIGNAL \ram~143_combout\ : std_logic;
SIGNAL \ram~60_q\ : std_logic;
SIGNAL \ram~52feeder_combout\ : std_logic;
SIGNAL \ram~140_combout\ : std_logic;
SIGNAL \ram~52_q\ : std_logic;
SIGNAL \ram~142_combout\ : std_logic;
SIGNAL \ram~44_q\ : std_logic;
SIGNAL \ram~76_combout\ : std_logic;
SIGNAL \ram_input[1]~input_o\ : std_logic;
SIGNAL \ram~161_combout\ : std_logic;
SIGNAL \ram~21_q\ : std_logic;
SIGNAL \ram~37_q\ : std_logic;
SIGNAL \ram~29_q\ : std_logic;
SIGNAL \ram~13_q\ : std_logic;
SIGNAL \ram~112_combout\ : std_logic;
SIGNAL \ram~53_q\ : std_logic;
SIGNAL \ram~61_q\ : std_logic;
SIGNAL \ram~149_combout\ : std_logic;
SIGNAL \ram~69_q\ : std_logic;
SIGNAL \ram~150_combout\ : std_logic;
SIGNAL \ram~45_q\ : std_logic;
SIGNAL \ram~80_combout\ : std_logic;
SIGNAL \ram_input[2]~input_o\ : std_logic;
SIGNAL \ram~54feeder_combout\ : std_logic;
SIGNAL \ram~54_q\ : std_logic;
SIGNAL \ram~70_q\ : std_logic;
SIGNAL \ram~152_combout\ : std_logic;
SIGNAL \ram~62_q\ : std_logic;
SIGNAL \ram~163_combout\ : std_logic;
SIGNAL \ram~38_q\ : std_logic;
SIGNAL \ram~162_combout\ : std_logic;
SIGNAL \ram~22_q\ : std_logic;
SIGNAL \ram~30_q\ : std_logic;
SIGNAL \ram~164_combout\ : std_logic;
SIGNAL \ram~14_q\ : std_logic;
SIGNAL \ram~116_combout\ : std_logic;
SIGNAL \ram~151_combout\ : std_logic;
SIGNAL \ram~46_q\ : std_logic;
SIGNAL \ram~84_combout\ : std_logic;
SIGNAL \ram_input[3]~input_o\ : std_logic;
SIGNAL \ram~153_combout\ : std_logic;
SIGNAL \ram~71_q\ : std_logic;
SIGNAL \ram~55_q\ : std_logic;
SIGNAL \ram~63_q\ : std_logic;
SIGNAL \ram~165_combout\ : std_logic;
SIGNAL \ram~23_q\ : std_logic;
SIGNAL \ram~39feeder_combout\ : std_logic;
SIGNAL \ram~39_q\ : std_logic;
SIGNAL \ram~31_q\ : std_logic;
SIGNAL \ram~166_combout\ : std_logic;
SIGNAL \ram~15_q\ : std_logic;
SIGNAL \ram~120_combout\ : std_logic;
SIGNAL \ram~47_q\ : std_logic;
SIGNAL \ram~88_combout\ : std_logic;
SIGNAL \ram_input[4]~input_o\ : std_logic;
SIGNAL \ram~72_q\ : std_logic;
SIGNAL \ram~167_combout\ : std_logic;
SIGNAL \ram~24_q\ : std_logic;
SIGNAL \ram~32_q\ : std_logic;
SIGNAL \ram~40_q\ : std_logic;
SIGNAL \ram~168_combout\ : std_logic;
SIGNAL \ram~16_q\ : std_logic;
SIGNAL \ram~124_combout\ : std_logic;
SIGNAL \ram~156_combout\ : std_logic;
SIGNAL \ram~64_q\ : std_logic;
SIGNAL \ram~154_combout\ : std_logic;
SIGNAL \ram~56_q\ : std_logic;
SIGNAL \ram~155_combout\ : std_logic;
SIGNAL \ram~48_q\ : std_logic;
SIGNAL \ram~92_combout\ : std_logic;
SIGNAL \ram_input[5]~input_o\ : std_logic;
SIGNAL \ram~169_combout\ : std_logic;
SIGNAL \ram~25_q\ : std_logic;
SIGNAL \ram~33_q\ : std_logic;
SIGNAL \ram~41_q\ : std_logic;
SIGNAL \ram~170_combout\ : std_logic;
SIGNAL \ram~17_q\ : std_logic;
SIGNAL \ram~128_combout\ : std_logic;
SIGNAL \ram~57_q\ : std_logic;
SIGNAL \ram~65_q\ : std_logic;
SIGNAL \ram~157_combout\ : std_logic;
SIGNAL \ram~73_q\ : std_logic;
SIGNAL \ram~49_q\ : std_logic;
SIGNAL \ram~96_combout\ : std_logic;
SIGNAL \ram_input[6]~input_o\ : std_logic;
SIGNAL \ram~171_combout\ : std_logic;
SIGNAL \ram~26_q\ : std_logic;
SIGNAL \ram~34_q\ : std_logic;
SIGNAL \ram~172_combout\ : std_logic;
SIGNAL \ram~42_q\ : std_logic;
SIGNAL \ram~173_combout\ : std_logic;
SIGNAL \ram~18_q\ : std_logic;
SIGNAL \ram~132_combout\ : std_logic;
SIGNAL \ram~58_q\ : std_logic;
SIGNAL \ram~158_combout\ : std_logic;
SIGNAL \ram~66_q\ : std_logic;
SIGNAL \ram~74_q\ : std_logic;
SIGNAL \ram~50_q\ : std_logic;
SIGNAL \ram~100_combout\ : std_logic;
SIGNAL \ram_input[7]~input_o\ : std_logic;
SIGNAL \ram~59_q\ : std_logic;
SIGNAL \ram~159_combout\ : std_logic;
SIGNAL \ram~75_q\ : std_logic;
SIGNAL \ram~67_q\ : std_logic;
SIGNAL \ram~35_q\ : std_logic;
SIGNAL \ram~43feeder_combout\ : std_logic;
SIGNAL \ram~43_q\ : std_logic;
SIGNAL \ram~174_combout\ : std_logic;
SIGNAL \ram~27_q\ : std_logic;
SIGNAL \ram~175_combout\ : std_logic;
SIGNAL \ram~19_q\ : std_logic;
SIGNAL \ram~136_combout\ : std_logic;
SIGNAL \ram~51_q\ : std_logic;
SIGNAL \ram~104_combout\ : std_logic;
SIGNAL \ALT_INV_ram_input[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_ram_input[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_ram_input[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_ram_input[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_ram_input[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_ram_input[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_ram_input[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_we~input_o\ : std_logic;
SIGNAL \ALT_INV_ram_address[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_ram_input[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_ram_address[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_ram_address[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_ram~35_q\ : std_logic;
SIGNAL \ALT_INV_ram~19_q\ : std_logic;
SIGNAL \ALT_INV_ram~43_q\ : std_logic;
SIGNAL \ALT_INV_ram~27_q\ : std_logic;
SIGNAL \ALT_INV_ram~34_q\ : std_logic;
SIGNAL \ALT_INV_ram~18_q\ : std_logic;
SIGNAL \ALT_INV_ram~42_q\ : std_logic;
SIGNAL \ALT_INV_ram~26_q\ : std_logic;
SIGNAL \ALT_INV_ram~33_q\ : std_logic;
SIGNAL \ALT_INV_ram~17_q\ : std_logic;
SIGNAL \ALT_INV_ram~41_q\ : std_logic;
SIGNAL \ALT_INV_ram~25_q\ : std_logic;
SIGNAL \ALT_INV_ram~32_q\ : std_logic;
SIGNAL \ALT_INV_ram~16_q\ : std_logic;
SIGNAL \ALT_INV_ram~40_q\ : std_logic;
SIGNAL \ALT_INV_ram~24_q\ : std_logic;
SIGNAL \ALT_INV_ram~31_q\ : std_logic;
SIGNAL \ALT_INV_ram~15_q\ : std_logic;
SIGNAL \ALT_INV_ram~39_q\ : std_logic;
SIGNAL \ALT_INV_ram~23_q\ : std_logic;
SIGNAL \ALT_INV_ram~30_q\ : std_logic;
SIGNAL \ALT_INV_ram~14_q\ : std_logic;
SIGNAL \ALT_INV_ram~38_q\ : std_logic;
SIGNAL \ALT_INV_ram~22_q\ : std_logic;
SIGNAL \ALT_INV_ram~29_q\ : std_logic;
SIGNAL \ALT_INV_ram~13_q\ : std_logic;
SIGNAL \ALT_INV_ram~37_q\ : std_logic;
SIGNAL \ALT_INV_ram~21_q\ : std_logic;
SIGNAL \ALT_INV_ram~28_q\ : std_logic;
SIGNAL \ALT_INV_ram~12_q\ : std_logic;
SIGNAL \ALT_INV_ram~36_q\ : std_logic;
SIGNAL \ALT_INV_ram~20_q\ : std_logic;
SIGNAL \ALT_INV_ram~67_q\ : std_logic;
SIGNAL \ALT_INV_ram~51_q\ : std_logic;
SIGNAL \ALT_INV_ram~75_q\ : std_logic;
SIGNAL \ALT_INV_ram~59_q\ : std_logic;
SIGNAL \ALT_INV_ram~66_q\ : std_logic;
SIGNAL \ALT_INV_ram~50_q\ : std_logic;
SIGNAL \ALT_INV_ram~74_q\ : std_logic;
SIGNAL \ALT_INV_ram~58_q\ : std_logic;
SIGNAL \ALT_INV_ram~65_q\ : std_logic;
SIGNAL \ALT_INV_ram~49_q\ : std_logic;
SIGNAL \ALT_INV_ram~73_q\ : std_logic;
SIGNAL \ALT_INV_ram~57_q\ : std_logic;
SIGNAL \ALT_INV_ram~64_q\ : std_logic;
SIGNAL \ALT_INV_ram~48_q\ : std_logic;
SIGNAL \ALT_INV_ram~72_q\ : std_logic;
SIGNAL \ALT_INV_ram~56_q\ : std_logic;
SIGNAL \ALT_INV_ram~63_q\ : std_logic;
SIGNAL \ALT_INV_ram~47_q\ : std_logic;
SIGNAL \ALT_INV_ram~71_q\ : std_logic;
SIGNAL \ALT_INV_ram~55_q\ : std_logic;
SIGNAL \ALT_INV_ram~62_q\ : std_logic;
SIGNAL \ALT_INV_ram~46_q\ : std_logic;
SIGNAL \ALT_INV_ram~70_q\ : std_logic;
SIGNAL \ALT_INV_ram~54_q\ : std_logic;
SIGNAL \ALT_INV_ram~61_q\ : std_logic;
SIGNAL \ALT_INV_ram~45_q\ : std_logic;
SIGNAL \ALT_INV_ram~69_q\ : std_logic;
SIGNAL \ALT_INV_ram~53_q\ : std_logic;
SIGNAL \ALT_INV_ram~60_q\ : std_logic;
SIGNAL \ALT_INV_ram~44_q\ : std_logic;
SIGNAL \ALT_INV_ram~68_q\ : std_logic;
SIGNAL \ALT_INV_ram~52_q\ : std_logic;
SIGNAL \ALT_INV_ram~136_combout\ : std_logic;
SIGNAL \ALT_INV_ram~132_combout\ : std_logic;
SIGNAL \ALT_INV_ram~128_combout\ : std_logic;
SIGNAL \ALT_INV_ram~124_combout\ : std_logic;
SIGNAL \ALT_INV_ram~120_combout\ : std_logic;
SIGNAL \ALT_INV_ram~116_combout\ : std_logic;
SIGNAL \ALT_INV_ram~112_combout\ : std_logic;
SIGNAL \ALT_INV_ram~108_combout\ : std_logic;

BEGIN

ww_ram_input <= ram_input;
ram_output <= ww_ram_output;
ww_ram_address <= ram_address;
ww_clk <= clk;
ww_we <= we;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_ram_input[7]~input_o\ <= NOT \ram_input[7]~input_o\;
\ALT_INV_ram_input[6]~input_o\ <= NOT \ram_input[6]~input_o\;
\ALT_INV_ram_input[5]~input_o\ <= NOT \ram_input[5]~input_o\;
\ALT_INV_ram_input[4]~input_o\ <= NOT \ram_input[4]~input_o\;
\ALT_INV_ram_input[3]~input_o\ <= NOT \ram_input[3]~input_o\;
\ALT_INV_ram_input[2]~input_o\ <= NOT \ram_input[2]~input_o\;
\ALT_INV_ram_input[1]~input_o\ <= NOT \ram_input[1]~input_o\;
\ALT_INV_we~input_o\ <= NOT \we~input_o\;
\ALT_INV_ram_address[0]~input_o\ <= NOT \ram_address[0]~input_o\;
\ALT_INV_ram_input[0]~input_o\ <= NOT \ram_input[0]~input_o\;
\ALT_INV_ram_address[1]~input_o\ <= NOT \ram_address[1]~input_o\;
\ALT_INV_ram_address[2]~input_o\ <= NOT \ram_address[2]~input_o\;
\ALT_INV_ram~35_q\ <= NOT \ram~35_q\;
\ALT_INV_ram~19_q\ <= NOT \ram~19_q\;
\ALT_INV_ram~43_q\ <= NOT \ram~43_q\;
\ALT_INV_ram~27_q\ <= NOT \ram~27_q\;
\ALT_INV_ram~34_q\ <= NOT \ram~34_q\;
\ALT_INV_ram~18_q\ <= NOT \ram~18_q\;
\ALT_INV_ram~42_q\ <= NOT \ram~42_q\;
\ALT_INV_ram~26_q\ <= NOT \ram~26_q\;
\ALT_INV_ram~33_q\ <= NOT \ram~33_q\;
\ALT_INV_ram~17_q\ <= NOT \ram~17_q\;
\ALT_INV_ram~41_q\ <= NOT \ram~41_q\;
\ALT_INV_ram~25_q\ <= NOT \ram~25_q\;
\ALT_INV_ram~32_q\ <= NOT \ram~32_q\;
\ALT_INV_ram~16_q\ <= NOT \ram~16_q\;
\ALT_INV_ram~40_q\ <= NOT \ram~40_q\;
\ALT_INV_ram~24_q\ <= NOT \ram~24_q\;
\ALT_INV_ram~31_q\ <= NOT \ram~31_q\;
\ALT_INV_ram~15_q\ <= NOT \ram~15_q\;
\ALT_INV_ram~39_q\ <= NOT \ram~39_q\;
\ALT_INV_ram~23_q\ <= NOT \ram~23_q\;
\ALT_INV_ram~30_q\ <= NOT \ram~30_q\;
\ALT_INV_ram~14_q\ <= NOT \ram~14_q\;
\ALT_INV_ram~38_q\ <= NOT \ram~38_q\;
\ALT_INV_ram~22_q\ <= NOT \ram~22_q\;
\ALT_INV_ram~29_q\ <= NOT \ram~29_q\;
\ALT_INV_ram~13_q\ <= NOT \ram~13_q\;
\ALT_INV_ram~37_q\ <= NOT \ram~37_q\;
\ALT_INV_ram~21_q\ <= NOT \ram~21_q\;
\ALT_INV_ram~28_q\ <= NOT \ram~28_q\;
\ALT_INV_ram~12_q\ <= NOT \ram~12_q\;
\ALT_INV_ram~36_q\ <= NOT \ram~36_q\;
\ALT_INV_ram~20_q\ <= NOT \ram~20_q\;
\ALT_INV_ram~67_q\ <= NOT \ram~67_q\;
\ALT_INV_ram~51_q\ <= NOT \ram~51_q\;
\ALT_INV_ram~75_q\ <= NOT \ram~75_q\;
\ALT_INV_ram~59_q\ <= NOT \ram~59_q\;
\ALT_INV_ram~66_q\ <= NOT \ram~66_q\;
\ALT_INV_ram~50_q\ <= NOT \ram~50_q\;
\ALT_INV_ram~74_q\ <= NOT \ram~74_q\;
\ALT_INV_ram~58_q\ <= NOT \ram~58_q\;
\ALT_INV_ram~65_q\ <= NOT \ram~65_q\;
\ALT_INV_ram~49_q\ <= NOT \ram~49_q\;
\ALT_INV_ram~73_q\ <= NOT \ram~73_q\;
\ALT_INV_ram~57_q\ <= NOT \ram~57_q\;
\ALT_INV_ram~64_q\ <= NOT \ram~64_q\;
\ALT_INV_ram~48_q\ <= NOT \ram~48_q\;
\ALT_INV_ram~72_q\ <= NOT \ram~72_q\;
\ALT_INV_ram~56_q\ <= NOT \ram~56_q\;
\ALT_INV_ram~63_q\ <= NOT \ram~63_q\;
\ALT_INV_ram~47_q\ <= NOT \ram~47_q\;
\ALT_INV_ram~71_q\ <= NOT \ram~71_q\;
\ALT_INV_ram~55_q\ <= NOT \ram~55_q\;
\ALT_INV_ram~62_q\ <= NOT \ram~62_q\;
\ALT_INV_ram~46_q\ <= NOT \ram~46_q\;
\ALT_INV_ram~70_q\ <= NOT \ram~70_q\;
\ALT_INV_ram~54_q\ <= NOT \ram~54_q\;
\ALT_INV_ram~61_q\ <= NOT \ram~61_q\;
\ALT_INV_ram~45_q\ <= NOT \ram~45_q\;
\ALT_INV_ram~69_q\ <= NOT \ram~69_q\;
\ALT_INV_ram~53_q\ <= NOT \ram~53_q\;
\ALT_INV_ram~60_q\ <= NOT \ram~60_q\;
\ALT_INV_ram~44_q\ <= NOT \ram~44_q\;
\ALT_INV_ram~68_q\ <= NOT \ram~68_q\;
\ALT_INV_ram~52_q\ <= NOT \ram~52_q\;
\ALT_INV_ram~136_combout\ <= NOT \ram~136_combout\;
\ALT_INV_ram~132_combout\ <= NOT \ram~132_combout\;
\ALT_INV_ram~128_combout\ <= NOT \ram~128_combout\;
\ALT_INV_ram~124_combout\ <= NOT \ram~124_combout\;
\ALT_INV_ram~120_combout\ <= NOT \ram~120_combout\;
\ALT_INV_ram~116_combout\ <= NOT \ram~116_combout\;
\ALT_INV_ram~112_combout\ <= NOT \ram~112_combout\;
\ALT_INV_ram~108_combout\ <= NOT \ram~108_combout\;

-- Location: IOOBUF_X89_Y38_N56
\ram_output[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram~76_combout\,
	devoe => ww_devoe,
	o => ww_ram_output(0));

-- Location: IOOBUF_X89_Y38_N22
\ram_output[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram~80_combout\,
	devoe => ww_devoe,
	o => ww_ram_output(1));

-- Location: IOOBUF_X89_Y37_N5
\ram_output[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram~84_combout\,
	devoe => ww_devoe,
	o => ww_ram_output(2));

-- Location: IOOBUF_X89_Y9_N56
\ram_output[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram~88_combout\,
	devoe => ww_devoe,
	o => ww_ram_output(3));

-- Location: IOOBUF_X89_Y9_N22
\ram_output[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram~92_combout\,
	devoe => ww_devoe,
	o => ww_ram_output(4));

-- Location: IOOBUF_X89_Y38_N5
\ram_output[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram~96_combout\,
	devoe => ww_devoe,
	o => ww_ram_output(5));

-- Location: IOOBUF_X89_Y9_N5
\ram_output[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram~100_combout\,
	devoe => ww_devoe,
	o => ww_ram_output(6));

-- Location: IOOBUF_X89_Y8_N39
\ram_output[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram~104_combout\,
	devoe => ww_devoe,
	o => ww_ram_output(7));

-- Location: IOIBUF_X89_Y35_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y35_N95
\ram_input[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ram_input(0),
	o => \ram_input[0]~input_o\);

-- Location: IOIBUF_X89_Y37_N38
\ram_address[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ram_address(0),
	o => \ram_address[0]~input_o\);

-- Location: IOIBUF_X89_Y37_N55
\we~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_we,
	o => \we~input_o\);

-- Location: IOIBUF_X89_Y38_N38
\ram_address[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ram_address(2),
	o => \ram_address[2]~input_o\);

-- Location: IOIBUF_X89_Y37_N21
\ram_address[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ram_address(1),
	o => \ram_address[1]~input_o\);

-- Location: MLABCELL_X87_Y34_N12
\ram~141\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~141_combout\ = ( \ram_address[1]~input_o\ & ( (\ram_address[0]~input_o\ & (\we~input_o\ & \ram_address[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ram_address[0]~input_o\,
	datac => \ALT_INV_we~input_o\,
	datad => \ALT_INV_ram_address[2]~input_o\,
	dataf => \ALT_INV_ram_address[1]~input_o\,
	combout => \ram~141_combout\);

-- Location: FF_X84_Y34_N29
\ram~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ram_input[0]~input_o\,
	sload => VCC,
	ena => \ram~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~68_q\);

-- Location: LABCELL_X88_Y34_N33
\ram~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~160_combout\ = ( !\ram_input[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_ram_input[0]~input_o\,
	combout => \ram~160_combout\);

-- Location: MLABCELL_X87_Y34_N48
\ram~144\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~144_combout\ = ( !\ram_address[2]~input_o\ & ( (\ram_address[0]~input_o\ & (\we~input_o\ & !\ram_address[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ram_address[0]~input_o\,
	datac => \ALT_INV_we~input_o\,
	datad => \ALT_INV_ram_address[1]~input_o\,
	dataf => \ALT_INV_ram_address[2]~input_o\,
	combout => \ram~144_combout\);

-- Location: FF_X88_Y34_N35
\ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~160_combout\,
	ena => \ram~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~20_q\);

-- Location: MLABCELL_X87_Y34_N24
\ram~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~147_combout\ = ( !\ram_address[2]~input_o\ & ( (!\ram_address[0]~input_o\ & (\we~input_o\ & \ram_address[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ram_address[0]~input_o\,
	datac => \ALT_INV_we~input_o\,
	datad => \ALT_INV_ram_address[1]~input_o\,
	dataf => \ALT_INV_ram_address[2]~input_o\,
	combout => \ram~147_combout\);

-- Location: FF_X87_Y34_N31
\ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ram_input[0]~input_o\,
	sload => VCC,
	ena => \ram~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~28_q\);

-- Location: LABCELL_X88_Y34_N39
\ram~36feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~36feeder_combout\ = ( \ram_input[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_ram_input[0]~input_o\,
	combout => \ram~36feeder_combout\);

-- Location: MLABCELL_X87_Y34_N51
\ram~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~145_combout\ = ( !\ram_address[2]~input_o\ & ( (\we~input_o\ & (\ram_address[0]~input_o\ & \ram_address[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_we~input_o\,
	datab => \ALT_INV_ram_address[0]~input_o\,
	datac => \ALT_INV_ram_address[1]~input_o\,
	dataf => \ALT_INV_ram_address[2]~input_o\,
	combout => \ram~145_combout\);

-- Location: FF_X88_Y34_N40
\ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~36feeder_combout\,
	ena => \ram~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~36_q\);

-- Location: MLABCELL_X87_Y34_N6
\ram~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~146_combout\ = ( !\ram_address[2]~input_o\ & ( (\we~input_o\ & (!\ram_address[0]~input_o\ & !\ram_address[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_we~input_o\,
	datab => \ALT_INV_ram_address[0]~input_o\,
	datac => \ALT_INV_ram_address[1]~input_o\,
	dataf => \ALT_INV_ram_address[2]~input_o\,
	combout => \ram~146_combout\);

-- Location: FF_X88_Y34_N17
\ram~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ram_input[0]~input_o\,
	sload => VCC,
	ena => \ram~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~12_q\);

-- Location: MLABCELL_X87_Y34_N30
\ram~108\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~108_combout\ = ( !\ram_address[1]~input_o\ & ( (!\ram_address[2]~input_o\ & ((!\ram_address[0]~input_o\ & (((\ram~12_q\)))) # (\ram_address[0]~input_o\ & (!\ram~20_q\)))) # (\ram_address[2]~input_o\ & ((((\ram_address[0]~input_o\))))) ) ) # ( 
-- \ram_address[1]~input_o\ & ( ((!\ram_address[2]~input_o\ & ((!\ram_address[0]~input_o\ & (\ram~28_q\)) # (\ram_address[0]~input_o\ & ((\ram~36_q\))))) # (\ram_address[2]~input_o\ & (((\ram_address[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110010111011000011000011001100001100101110110000110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram~20_q\,
	datab => \ALT_INV_ram_address[2]~input_o\,
	datac => \ALT_INV_ram~28_q\,
	datad => \ALT_INV_ram_address[0]~input_o\,
	datae => \ALT_INV_ram_address[1]~input_o\,
	dataf => \ALT_INV_ram~36_q\,
	datag => \ALT_INV_ram~12_q\,
	combout => \ram~108_combout\);

-- Location: MLABCELL_X84_Y34_N30
\ram~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~148_combout\ = !\ram_input[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ram_input[0]~input_o\,
	combout => \ram~148_combout\);

-- Location: MLABCELL_X87_Y34_N3
\ram~143\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~143_combout\ = (\ram_address[1]~input_o\ & (\ram_address[2]~input_o\ & (!\ram_address[0]~input_o\ & \we~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_address[1]~input_o\,
	datab => \ALT_INV_ram_address[2]~input_o\,
	datac => \ALT_INV_ram_address[0]~input_o\,
	datad => \ALT_INV_we~input_o\,
	combout => \ram~143_combout\);

-- Location: FF_X84_Y34_N31
\ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~148_combout\,
	ena => \ram~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~60_q\);

-- Location: MLABCELL_X87_Y35_N0
\ram~52feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~52feeder_combout\ = ( \ram_input[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_ram_input[0]~input_o\,
	combout => \ram~52feeder_combout\);

-- Location: MLABCELL_X87_Y34_N27
\ram~140\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~140_combout\ = ( \ram_address[2]~input_o\ & ( (\we~input_o\ & (\ram_address[0]~input_o\ & !\ram_address[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_we~input_o\,
	datab => \ALT_INV_ram_address[0]~input_o\,
	datac => \ALT_INV_ram_address[1]~input_o\,
	dataf => \ALT_INV_ram_address[2]~input_o\,
	combout => \ram~140_combout\);

-- Location: FF_X87_Y35_N1
\ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~52feeder_combout\,
	ena => \ram~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~52_q\);

-- Location: MLABCELL_X87_Y34_N15
\ram~142\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~142_combout\ = ( !\ram_address[1]~input_o\ & ( (\we~input_o\ & (!\ram_address[0]~input_o\ & \ram_address[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_we~input_o\,
	datab => \ALT_INV_ram_address[0]~input_o\,
	datac => \ALT_INV_ram_address[2]~input_o\,
	dataf => \ALT_INV_ram_address[1]~input_o\,
	combout => \ram~142_combout\);

-- Location: FF_X84_Y34_N2
\ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ram_input[0]~input_o\,
	sload => VCC,
	ena => \ram~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~44_q\);

-- Location: MLABCELL_X84_Y34_N0
\ram~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~76_combout\ = ( !\ram_address[1]~input_o\ & ( ((!\ram~108_combout\ & (\ram~44_q\ & ((\ram_address[2]~input_o\)))) # (\ram~108_combout\ & (((!\ram_address[2]~input_o\) # (\ram~52_q\))))) ) ) # ( \ram_address[1]~input_o\ & ( (!\ram~108_combout\ & 
-- (((!\ram~60_q\ & ((\ram_address[2]~input_o\)))))) # (\ram~108_combout\ & ((((!\ram_address[2]~input_o\))) # (\ram~68_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100110011001100110011001100001100001111111101000111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram~68_q\,
	datab => \ALT_INV_ram~108_combout\,
	datac => \ALT_INV_ram~60_q\,
	datad => \ALT_INV_ram~52_q\,
	datae => \ALT_INV_ram_address[1]~input_o\,
	dataf => \ALT_INV_ram_address[2]~input_o\,
	datag => \ALT_INV_ram~44_q\,
	combout => \ram~76_combout\);

-- Location: IOIBUF_X89_Y36_N38
\ram_input[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ram_input(1),
	o => \ram_input[1]~input_o\);

-- Location: LABCELL_X88_Y34_N18
\ram~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~161_combout\ = !\ram_input[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ram_input[1]~input_o\,
	combout => \ram~161_combout\);

-- Location: FF_X88_Y34_N19
\ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~161_combout\,
	ena => \ram~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~21_q\);

-- Location: FF_X88_Y34_N56
\ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ram_input[1]~input_o\,
	sload => VCC,
	ena => \ram~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~37_q\);

-- Location: FF_X87_Y34_N38
\ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ram_input[1]~input_o\,
	sload => VCC,
	ena => \ram~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~29_q\);

-- Location: FF_X88_Y34_N2
\ram~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ram_input[1]~input_o\,
	sload => VCC,
	ena => \ram~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~13_q\);

-- Location: MLABCELL_X87_Y34_N36
\ram~112\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~112_combout\ = ( !\ram_address[1]~input_o\ & ( ((!\ram_address[0]~input_o\ & (((\ram~13_q\ & !\ram_address[2]~input_o\)))) # (\ram_address[0]~input_o\ & ((!\ram~21_q\) # ((\ram_address[2]~input_o\))))) ) ) # ( \ram_address[1]~input_o\ & ( 
-- ((!\ram_address[0]~input_o\ & (((\ram~29_q\ & !\ram_address[2]~input_o\)))) # (\ram_address[0]~input_o\ & (((\ram_address[2]~input_o\)) # (\ram~37_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111110101010000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram~21_q\,
	datab => \ALT_INV_ram~37_q\,
	datac => \ALT_INV_ram~29_q\,
	datad => \ALT_INV_ram_address[0]~input_o\,
	datae => \ALT_INV_ram_address[1]~input_o\,
	dataf => \ALT_INV_ram_address[2]~input_o\,
	datag => \ALT_INV_ram~13_q\,
	combout => \ram~112_combout\);

-- Location: FF_X87_Y34_N1
\ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ram_input[1]~input_o\,
	sload => VCC,
	ena => \ram~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~53_q\);

-- Location: FF_X85_Y34_N31
\ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ram_input[1]~input_o\,
	sload => VCC,
	ena => \ram~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~61_q\);

-- Location: MLABCELL_X84_Y34_N36
\ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~149_combout\ = !\ram_input[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ram_input[1]~input_o\,
	combout => \ram~149_combout\);

-- Location: FF_X84_Y34_N37
\ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~149_combout\,
	ena => \ram~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~69_q\);

-- Location: LABCELL_X85_Y34_N15
\ram~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~150_combout\ = !\ram_input[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ram_input[1]~input_o\,
	combout => \ram~150_combout\);

-- Location: FF_X85_Y34_N17
\ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~150_combout\,
	ena => \ram~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~45_q\);

-- Location: LABCELL_X85_Y34_N30
\ram~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~80_combout\ = ( !\ram_address[1]~input_o\ & ( (!\ram~112_combout\ & (((!\ram~45_q\ & (\ram_address[2]~input_o\))))) # (\ram~112_combout\ & ((((!\ram_address[2]~input_o\))) # (\ram~53_q\))) ) ) # ( \ram_address[1]~input_o\ & ( (!\ram~112_combout\ & 
-- (((\ram~61_q\ & (\ram_address[2]~input_o\))))) # (\ram~112_combout\ & ((((!\ram_address[2]~input_o\) # (!\ram~69_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010110110001010101010101111101010101101100010101010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram~112_combout\,
	datab => \ALT_INV_ram~53_q\,
	datac => \ALT_INV_ram~61_q\,
	datad => \ALT_INV_ram_address[2]~input_o\,
	datae => \ALT_INV_ram_address[1]~input_o\,
	dataf => \ALT_INV_ram~69_q\,
	datag => \ALT_INV_ram~45_q\,
	combout => \ram~80_combout\);

-- Location: IOIBUF_X89_Y9_N38
\ram_input[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ram_input(2),
	o => \ram_input[2]~input_o\);

-- Location: MLABCELL_X87_Y34_N9
\ram~54feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~54feeder_combout\ = ( \ram_input[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_ram_input[2]~input_o\,
	combout => \ram~54feeder_combout\);

-- Location: FF_X87_Y34_N10
\ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~54feeder_combout\,
	ena => \ram~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~54_q\);

-- Location: FF_X84_Y34_N8
\ram~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ram_input[2]~input_o\,
	sload => VCC,
	ena => \ram~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~70_q\);

-- Location: MLABCELL_X84_Y34_N33
\ram~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~152_combout\ = ( !\ram_input[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_ram_input[2]~input_o\,
	combout => \ram~152_combout\);

-- Location: FF_X84_Y34_N35
\ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~152_combout\,
	ena => \ram~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~62_q\);

-- Location: LABCELL_X88_Y34_N57
\ram~163\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~163_combout\ = ( !\ram_input[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_ram_input[2]~input_o\,
	combout => \ram~163_combout\);

-- Location: FF_X88_Y34_N58
\ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~163_combout\,
	ena => \ram~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~38_q\);

-- Location: LABCELL_X88_Y34_N21
\ram~162\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~162_combout\ = !\ram_input[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_input[2]~input_o\,
	combout => \ram~162_combout\);

-- Location: FF_X88_Y34_N22
\ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~162_combout\,
	ena => \ram~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~22_q\);

-- Location: FF_X87_Y34_N43
\ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ram_input[2]~input_o\,
	sload => VCC,
	ena => \ram~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~30_q\);

-- Location: LABCELL_X88_Y34_N3
\ram~164\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~164_combout\ = ( !\ram_input[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_ram_input[2]~input_o\,
	combout => \ram~164_combout\);

-- Location: FF_X88_Y34_N5
\ram~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~164_combout\,
	ena => \ram~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~14_q\);

-- Location: MLABCELL_X87_Y34_N42
\ram~116\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~116_combout\ = ( !\ram_address[1]~input_o\ & ( ((!\ram_address[0]~input_o\ & (((!\ram~14_q\ & !\ram_address[2]~input_o\)))) # (\ram_address[0]~input_o\ & ((!\ram~22_q\) # ((\ram_address[2]~input_o\))))) ) ) # ( \ram_address[1]~input_o\ & ( 
-- ((!\ram_address[0]~input_o\ & (((\ram~30_q\ & !\ram_address[2]~input_o\)))) # (\ram_address[0]~input_o\ & ((!\ram~38_q\) # ((\ram_address[2]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1111000011001100000011111010101000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram~38_q\,
	datab => \ALT_INV_ram~22_q\,
	datac => \ALT_INV_ram~30_q\,
	datad => \ALT_INV_ram_address[0]~input_o\,
	datae => \ALT_INV_ram_address[1]~input_o\,
	dataf => \ALT_INV_ram_address[2]~input_o\,
	datag => \ALT_INV_ram~14_q\,
	combout => \ram~116_combout\);

-- Location: MLABCELL_X84_Y34_N12
\ram~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~151_combout\ = ( !\ram_input[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_ram_input[2]~input_o\,
	combout => \ram~151_combout\);

-- Location: FF_X84_Y34_N14
\ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~151_combout\,
	ena => \ram~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~46_q\);

-- Location: MLABCELL_X84_Y34_N6
\ram~84\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~84_combout\ = ( !\ram_address[1]~input_o\ & ( ((!\ram~116_combout\ & (((!\ram~46_q\ & \ram_address[2]~input_o\)))) # (\ram~116_combout\ & (((!\ram_address[2]~input_o\)) # (\ram~54_q\)))) ) ) # ( \ram_address[1]~input_o\ & ( ((!\ram~116_combout\ & 
-- (((!\ram~62_q\ & \ram_address[2]~input_o\)))) # (\ram~116_combout\ & (((!\ram_address[2]~input_o\)) # (\ram~70_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000011111111000000001111111111110000010101011111000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram~54_q\,
	datab => \ALT_INV_ram~70_q\,
	datac => \ALT_INV_ram~62_q\,
	datad => \ALT_INV_ram~116_combout\,
	datae => \ALT_INV_ram_address[1]~input_o\,
	dataf => \ALT_INV_ram_address[2]~input_o\,
	datag => \ALT_INV_ram~46_q\,
	combout => \ram~84_combout\);

-- Location: IOIBUF_X89_Y36_N4
\ram_input[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ram_input(3),
	o => \ram_input[3]~input_o\);

-- Location: MLABCELL_X84_Y34_N18
\ram~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~153_combout\ = ( !\ram_input[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_ram_input[3]~input_o\,
	combout => \ram~153_combout\);

-- Location: FF_X84_Y34_N20
\ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~153_combout\,
	ena => \ram~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~71_q\);

-- Location: FF_X87_Y34_N8
\ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ram_input[3]~input_o\,
	sload => VCC,
	ena => \ram~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~55_q\);

-- Location: FF_X84_Y34_N44
\ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ram_input[3]~input_o\,
	sload => VCC,
	ena => \ram~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~63_q\);

-- Location: LABCELL_X88_Y34_N30
\ram~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~165_combout\ = ( !\ram_input[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_ram_input[3]~input_o\,
	combout => \ram~165_combout\);

-- Location: FF_X88_Y34_N31
\ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~165_combout\,
	ena => \ram~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~23_q\);

-- Location: LABCELL_X88_Y34_N36
\ram~39feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~39feeder_combout\ = ( \ram_input[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_ram_input[3]~input_o\,
	combout => \ram~39feeder_combout\);

-- Location: FF_X88_Y34_N38
\ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~39feeder_combout\,
	ena => \ram~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~39_q\);

-- Location: FF_X87_Y34_N20
\ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ram_input[3]~input_o\,
	sload => VCC,
	ena => \ram~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~31_q\);

-- Location: LABCELL_X88_Y34_N12
\ram~166\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~166_combout\ = ( !\ram_input[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_ram_input[3]~input_o\,
	combout => \ram~166_combout\);

-- Location: FF_X88_Y34_N13
\ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~166_combout\,
	ena => \ram~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~15_q\);

-- Location: MLABCELL_X87_Y34_N18
\ram~120\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~120_combout\ = ( !\ram_address[1]~input_o\ & ( ((!\ram_address[0]~input_o\ & (((!\ram~15_q\ & !\ram_address[2]~input_o\)))) # (\ram_address[0]~input_o\ & ((!\ram~23_q\) # ((\ram_address[2]~input_o\))))) ) ) # ( \ram_address[1]~input_o\ & ( 
-- ((!\ram_address[0]~input_o\ & (((\ram~31_q\ & !\ram_address[2]~input_o\)))) # (\ram_address[0]~input_o\ & (((\ram_address[2]~input_o\)) # (\ram~39_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1111000010101010000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram~23_q\,
	datab => \ALT_INV_ram~39_q\,
	datac => \ALT_INV_ram~31_q\,
	datad => \ALT_INV_ram_address[0]~input_o\,
	datae => \ALT_INV_ram_address[1]~input_o\,
	dataf => \ALT_INV_ram_address[2]~input_o\,
	datag => \ALT_INV_ram~15_q\,
	combout => \ram~120_combout\);

-- Location: FF_X84_Y34_N13
\ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ram_input[3]~input_o\,
	sload => VCC,
	ena => \ram~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~47_q\);

-- Location: MLABCELL_X84_Y34_N42
\ram~88\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~88_combout\ = ( !\ram_address[1]~input_o\ & ( ((!\ram~120_combout\ & (((\ram~47_q\ & \ram_address[2]~input_o\)))) # (\ram~120_combout\ & (((!\ram_address[2]~input_o\)) # (\ram~55_q\)))) ) ) # ( \ram_address[1]~input_o\ & ( ((!\ram~120_combout\ & 
-- (((\ram~63_q\ & \ram_address[2]~input_o\)))) # (\ram~120_combout\ & ((!\ram~71_q\) # ((!\ram_address[2]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000011111111000000001111111100001111001100110000111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram~71_q\,
	datab => \ALT_INV_ram~55_q\,
	datac => \ALT_INV_ram~63_q\,
	datad => \ALT_INV_ram~120_combout\,
	datae => \ALT_INV_ram_address[1]~input_o\,
	dataf => \ALT_INV_ram_address[2]~input_o\,
	datag => \ALT_INV_ram~47_q\,
	combout => \ram~88_combout\);

-- Location: IOIBUF_X89_Y36_N55
\ram_input[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ram_input(4),
	o => \ram_input[4]~input_o\);

-- Location: FF_X84_Y34_N50
\ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ram_input[4]~input_o\,
	sload => VCC,
	ena => \ram~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~72_q\);

-- Location: LABCELL_X88_Y34_N6
\ram~167\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~167_combout\ = !\ram_input[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ram_input[4]~input_o\,
	combout => \ram~167_combout\);

-- Location: FF_X88_Y34_N7
\ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~167_combout\,
	ena => \ram~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~24_q\);

-- Location: FF_X87_Y34_N56
\ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ram_input[4]~input_o\,
	sload => VCC,
	ena => \ram~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~32_q\);

-- Location: FF_X88_Y34_N43
\ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ram_input[4]~input_o\,
	sload => VCC,
	ena => \ram~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~40_q\);

-- Location: LABCELL_X88_Y34_N48
\ram~168\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~168_combout\ = !\ram_input[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ram_input[4]~input_o\,
	combout => \ram~168_combout\);

-- Location: FF_X88_Y34_N50
\ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~168_combout\,
	ena => \ram~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~16_q\);

-- Location: MLABCELL_X87_Y34_N54
\ram~124\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~124_combout\ = ( !\ram_address[1]~input_o\ & ( (!\ram_address[2]~input_o\ & ((!\ram_address[0]~input_o\ & (((!\ram~16_q\)))) # (\ram_address[0]~input_o\ & (!\ram~24_q\)))) # (\ram_address[2]~input_o\ & ((((\ram_address[0]~input_o\))))) ) ) # ( 
-- \ram_address[1]~input_o\ & ( ((!\ram_address[2]~input_o\ & ((!\ram_address[0]~input_o\ & (\ram~32_q\)) # (\ram_address[0]~input_o\ & ((\ram~40_q\))))) # (\ram_address[2]~input_o\ & (((\ram_address[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1100000010111011000011000011001111000000101110110000110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram~24_q\,
	datab => \ALT_INV_ram_address[2]~input_o\,
	datac => \ALT_INV_ram~32_q\,
	datad => \ALT_INV_ram_address[0]~input_o\,
	datae => \ALT_INV_ram_address[1]~input_o\,
	dataf => \ALT_INV_ram~40_q\,
	datag => \ALT_INV_ram~16_q\,
	combout => \ram~124_combout\);

-- Location: LABCELL_X85_Y34_N24
\ram~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~156_combout\ = ( !\ram_input[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_ram_input[4]~input_o\,
	combout => \ram~156_combout\);

-- Location: FF_X85_Y34_N25
\ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~156_combout\,
	ena => \ram~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~64_q\);

-- Location: MLABCELL_X87_Y35_N36
\ram~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~154_combout\ = ( !\ram_input[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_ram_input[4]~input_o\,
	combout => \ram~154_combout\);

-- Location: FF_X87_Y35_N38
\ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~154_combout\,
	ena => \ram~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~56_q\);

-- Location: LABCELL_X85_Y34_N51
\ram~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~155_combout\ = !\ram_input[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ram_input[4]~input_o\,
	combout => \ram~155_combout\);

-- Location: FF_X85_Y34_N52
\ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~155_combout\,
	ena => \ram~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~48_q\);

-- Location: MLABCELL_X84_Y34_N48
\ram~92\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~92_combout\ = ( !\ram_address[1]~input_o\ & ( ((!\ram~124_combout\ & (!\ram~48_q\ & ((\ram_address[2]~input_o\)))) # (\ram~124_combout\ & (((!\ram~56_q\) # (!\ram_address[2]~input_o\))))) ) ) # ( \ram_address[1]~input_o\ & ( (!\ram~124_combout\ & 
-- (((!\ram~64_q\ & ((\ram_address[2]~input_o\)))))) # (\ram~124_combout\ & ((((!\ram_address[2]~input_o\))) # (\ram~72_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100110011001100110011001111110011110000001101000111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram~72_q\,
	datab => \ALT_INV_ram~124_combout\,
	datac => \ALT_INV_ram~64_q\,
	datad => \ALT_INV_ram~56_q\,
	datae => \ALT_INV_ram_address[1]~input_o\,
	dataf => \ALT_INV_ram_address[2]~input_o\,
	datag => \ALT_INV_ram~48_q\,
	combout => \ram~92_combout\);

-- Location: IOIBUF_X89_Y35_N44
\ram_input[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ram_input(5),
	o => \ram_input[5]~input_o\);

-- Location: LABCELL_X88_Y34_N9
\ram~169\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~169_combout\ = !\ram_input[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ram_input[5]~input_o\,
	combout => \ram~169_combout\);

-- Location: FF_X88_Y34_N10
\ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~169_combout\,
	ena => \ram~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~25_q\);

-- Location: FF_X85_Y34_N56
\ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ram_input[5]~input_o\,
	sload => VCC,
	ena => \ram~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~33_q\);

-- Location: FF_X88_Y34_N47
\ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ram_input[5]~input_o\,
	sload => VCC,
	ena => \ram~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~41_q\);

-- Location: LABCELL_X88_Y34_N51
\ram~170\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~170_combout\ = !\ram_input[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ram_input[5]~input_o\,
	combout => \ram~170_combout\);

-- Location: FF_X88_Y34_N52
\ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~170_combout\,
	ena => \ram~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~17_q\);

-- Location: LABCELL_X85_Y34_N54
\ram~128\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~128_combout\ = ( !\ram_address[1]~input_o\ & ( (!\ram_address[0]~input_o\ & (((!\ram~17_q\ & ((!\ram_address[2]~input_o\)))))) # (\ram_address[0]~input_o\ & ((!\ram~25_q\) # (((\ram_address[2]~input_o\))))) ) ) # ( \ram_address[1]~input_o\ & ( 
-- (!\ram_address[0]~input_o\ & (((\ram~33_q\ & ((!\ram_address[2]~input_o\)))))) # (\ram_address[0]~input_o\ & ((((\ram_address[2]~input_o\) # (\ram~41_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1110010011100100000010100101111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_address[0]~input_o\,
	datab => \ALT_INV_ram~25_q\,
	datac => \ALT_INV_ram~33_q\,
	datad => \ALT_INV_ram~41_q\,
	datae => \ALT_INV_ram_address[1]~input_o\,
	dataf => \ALT_INV_ram_address[2]~input_o\,
	datag => \ALT_INV_ram~17_q\,
	combout => \ram~128_combout\);

-- Location: FF_X87_Y34_N17
\ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ram_input[5]~input_o\,
	sload => VCC,
	ena => \ram~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~57_q\);

-- Location: FF_X85_Y34_N7
\ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ram_input[5]~input_o\,
	sload => VCC,
	ena => \ram~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~65_q\);

-- Location: MLABCELL_X84_Y34_N39
\ram~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~157_combout\ = ( !\ram_input[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_ram_input[5]~input_o\,
	combout => \ram~157_combout\);

-- Location: FF_X84_Y34_N40
\ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~157_combout\,
	ena => \ram~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~73_q\);

-- Location: FF_X85_Y34_N14
\ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ram_input[5]~input_o\,
	sload => VCC,
	ena => \ram~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~49_q\);

-- Location: LABCELL_X85_Y34_N6
\ram~96\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~96_combout\ = ( !\ram_address[1]~input_o\ & ( (!\ram~128_combout\ & (((\ram~49_q\ & (\ram_address[2]~input_o\))))) # (\ram~128_combout\ & ((((!\ram_address[2]~input_o\))) # (\ram~57_q\))) ) ) # ( \ram_address[1]~input_o\ & ( (!\ram~128_combout\ & 
-- (((\ram~65_q\ & (\ram_address[2]~input_o\))))) # (\ram~128_combout\ & ((((!\ram_address[2]~input_o\) # (!\ram~73_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010100011011010101010101111101010101000110110101010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram~128_combout\,
	datab => \ALT_INV_ram~57_q\,
	datac => \ALT_INV_ram~65_q\,
	datad => \ALT_INV_ram_address[2]~input_o\,
	datae => \ALT_INV_ram_address[1]~input_o\,
	dataf => \ALT_INV_ram~73_q\,
	datag => \ALT_INV_ram~49_q\,
	combout => \ram~96_combout\);

-- Location: IOIBUF_X89_Y36_N21
\ram_input[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ram_input(6),
	o => \ram_input[6]~input_o\);

-- Location: LABCELL_X88_Y34_N24
\ram~171\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~171_combout\ = ( !\ram_input[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_ram_input[6]~input_o\,
	combout => \ram~171_combout\);

-- Location: FF_X88_Y34_N25
\ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~171_combout\,
	ena => \ram~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~26_q\);

-- Location: FF_X85_Y34_N1
\ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ram_input[6]~input_o\,
	sload => VCC,
	ena => \ram~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~34_q\);

-- Location: MLABCELL_X87_Y35_N42
\ram~172\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~172_combout\ = ( !\ram_input[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_ram_input[6]~input_o\,
	combout => \ram~172_combout\);

-- Location: FF_X87_Y35_N43
\ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~172_combout\,
	ena => \ram~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~42_q\);

-- Location: MLABCELL_X87_Y35_N48
\ram~173\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~173_combout\ = ( !\ram_input[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_ram_input[6]~input_o\,
	combout => \ram~173_combout\);

-- Location: FF_X87_Y35_N49
\ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~173_combout\,
	ena => \ram~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~18_q\);

-- Location: LABCELL_X85_Y34_N0
\ram~132\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~132_combout\ = ( !\ram_address[1]~input_o\ & ( (!\ram_address[0]~input_o\ & (((!\ram~18_q\ & (!\ram_address[2]~input_o\))))) # (\ram_address[0]~input_o\ & ((!\ram~26_q\) # (((\ram_address[2]~input_o\))))) ) ) # ( \ram_address[1]~input_o\ & ( 
-- (!\ram_address[0]~input_o\ & (((\ram~34_q\ & (!\ram_address[2]~input_o\))))) # (\ram_address[0]~input_o\ & ((((!\ram~42_q\) # (\ram_address[2]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1110010001010101010111110101010111100100010101010000101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_address[0]~input_o\,
	datab => \ALT_INV_ram~26_q\,
	datac => \ALT_INV_ram~34_q\,
	datad => \ALT_INV_ram_address[2]~input_o\,
	datae => \ALT_INV_ram_address[1]~input_o\,
	dataf => \ALT_INV_ram~42_q\,
	datag => \ALT_INV_ram~18_q\,
	combout => \ram~132_combout\);

-- Location: FF_X87_Y34_N11
\ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ram_input[6]~input_o\,
	sload => VCC,
	ena => \ram~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~58_q\);

-- Location: LABCELL_X85_Y34_N27
\ram~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~158_combout\ = ( !\ram_input[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_ram_input[6]~input_o\,
	combout => \ram~158_combout\);

-- Location: FF_X85_Y34_N29
\ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~158_combout\,
	ena => \ram~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~66_q\);

-- Location: FF_X84_Y34_N56
\ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ram_input[6]~input_o\,
	sload => VCC,
	ena => \ram~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~74_q\);

-- Location: FF_X85_Y34_N43
\ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ram_input[6]~input_o\,
	sload => VCC,
	ena => \ram~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~50_q\);

-- Location: LABCELL_X85_Y34_N42
\ram~100\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~100_combout\ = ( !\ram_address[1]~input_o\ & ( (!\ram~132_combout\ & (((\ram~50_q\ & (\ram_address[2]~input_o\))))) # (\ram~132_combout\ & ((((!\ram_address[2]~input_o\))) # (\ram~58_q\))) ) ) # ( \ram_address[1]~input_o\ & ( (!\ram~132_combout\ & 
-- (((!\ram~66_q\ & (\ram_address[2]~input_o\))))) # (\ram~132_combout\ & ((((!\ram_address[2]~input_o\) # (\ram~74_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010100011011010101011010000001010101000110110101010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram~132_combout\,
	datab => \ALT_INV_ram~58_q\,
	datac => \ALT_INV_ram~66_q\,
	datad => \ALT_INV_ram_address[2]~input_o\,
	datae => \ALT_INV_ram_address[1]~input_o\,
	dataf => \ALT_INV_ram~74_q\,
	datag => \ALT_INV_ram~50_q\,
	combout => \ram~100_combout\);

-- Location: IOIBUF_X89_Y35_N78
\ram_input[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ram_input(7),
	o => \ram_input[7]~input_o\);

-- Location: FF_X87_Y34_N52
\ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ram_input[7]~input_o\,
	sload => VCC,
	ena => \ram~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~59_q\);

-- Location: MLABCELL_X84_Y34_N57
\ram~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~159_combout\ = !\ram_input[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_input[7]~input_o\,
	combout => \ram~159_combout\);

-- Location: FF_X84_Y34_N58
\ram~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~159_combout\,
	ena => \ram~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~75_q\);

-- Location: FF_X85_Y34_N20
\ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ram_input[7]~input_o\,
	sload => VCC,
	ena => \ram~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~67_q\);

-- Location: FF_X85_Y34_N38
\ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ram_input[7]~input_o\,
	sload => VCC,
	ena => \ram~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~35_q\);

-- Location: MLABCELL_X87_Y35_N57
\ram~43feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~43feeder_combout\ = ( \ram_input[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_ram_input[7]~input_o\,
	combout => \ram~43feeder_combout\);

-- Location: FF_X87_Y35_N58
\ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~43feeder_combout\,
	ena => \ram~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~43_q\);

-- Location: LABCELL_X88_Y34_N27
\ram~174\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~174_combout\ = !\ram_input[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ram_input[7]~input_o\,
	combout => \ram~174_combout\);

-- Location: FF_X88_Y34_N28
\ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~174_combout\,
	ena => \ram~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~27_q\);

-- Location: MLABCELL_X87_Y35_N33
\ram~175\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~175_combout\ = ( !\ram_input[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_ram_input[7]~input_o\,
	combout => \ram~175_combout\);

-- Location: FF_X87_Y35_N34
\ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~175_combout\,
	ena => \ram~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~19_q\);

-- Location: LABCELL_X85_Y34_N36
\ram~136\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~136_combout\ = ( !\ram_address[1]~input_o\ & ( (!\ram_address[0]~input_o\ & (!\ram_address[2]~input_o\ & (!\ram~19_q\))) # (\ram_address[0]~input_o\ & ((((!\ram~27_q\))) # (\ram_address[2]~input_o\))) ) ) # ( \ram_address[1]~input_o\ & ( 
-- (!\ram_address[0]~input_o\ & (!\ram_address[2]~input_o\ & (\ram~35_q\))) # (\ram_address[0]~input_o\ & ((((\ram~43_q\))) # (\ram_address[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1101010111010101000110010101110110010001100100010001100101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram_address[0]~input_o\,
	datab => \ALT_INV_ram_address[2]~input_o\,
	datac => \ALT_INV_ram~35_q\,
	datad => \ALT_INV_ram~43_q\,
	datae => \ALT_INV_ram_address[1]~input_o\,
	dataf => \ALT_INV_ram~27_q\,
	datag => \ALT_INV_ram~19_q\,
	combout => \ram~136_combout\);

-- Location: FF_X85_Y34_N49
\ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ram_input[7]~input_o\,
	sload => VCC,
	ena => \ram~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~51_q\);

-- Location: LABCELL_X85_Y34_N18
\ram~104\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~104_combout\ = ( !\ram_address[1]~input_o\ & ( ((!\ram~136_combout\ & (((\ram~51_q\ & \ram_address[2]~input_o\)))) # (\ram~136_combout\ & (((!\ram_address[2]~input_o\)) # (\ram~59_q\)))) ) ) # ( \ram_address[1]~input_o\ & ( ((!\ram~136_combout\ & 
-- (((\ram~67_q\ & \ram_address[2]~input_o\)))) # (\ram~136_combout\ & ((!\ram~75_q\) # ((!\ram_address[2]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000011111111000000001111111100001111010101010000111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram~59_q\,
	datab => \ALT_INV_ram~75_q\,
	datac => \ALT_INV_ram~67_q\,
	datad => \ALT_INV_ram~136_combout\,
	datae => \ALT_INV_ram_address[1]~input_o\,
	dataf => \ALT_INV_ram_address[2]~input_o\,
	datag => \ALT_INV_ram~51_q\,
	combout => \ram~104_combout\);

-- Location: IOIBUF_X72_Y0_N35
\ram_address[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ram_address(3),
	o => \ram_address[3]~input_o\);

-- Location: IOIBUF_X38_Y81_N1
\ram_address[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ram_address(4),
	o => \ram_address[4]~input_o\);

-- Location: IOIBUF_X54_Y0_N18
\ram_address[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ram_address(5),
	o => \ram_address[5]~input_o\);

-- Location: IOIBUF_X72_Y0_N52
\ram_address[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ram_address(6),
	o => \ram_address[6]~input_o\);

-- Location: IOIBUF_X60_Y0_N35
\ram_address[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ram_address(7),
	o => \ram_address[7]~input_o\);

-- Location: LABCELL_X12_Y53_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


