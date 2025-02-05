-- Copyright (C) 2024  Intel Corporation. All rights reserved.
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
-- VERSION "Version 23.1std.1 Build 993 05/14/2024 SC Lite Edition"

-- DATE "02/05/2025 10:22:56"

-- 
-- Device: Altera EP4CE6F17C8 Package FBGA256
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cronometro IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	seg_display : BUFFER std_logic_vector(27 DOWNTO 0);
	min_display : BUFFER std_logic_vector(27 DOWNTO 0)
	);
END cronometro;

-- Design Ports Information
-- seg_display[0]	=>  Location: PIN_M12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_display[1]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_display[2]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_display[3]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_display[4]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_display[5]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_display[6]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_display[7]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_display[8]	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_display[9]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_display[10]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_display[11]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_display[12]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_display[13]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_display[14]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_display[15]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_display[16]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_display[17]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_display[18]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_display[19]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_display[20]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_display[21]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_display[22]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_display[23]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_display[24]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_display[25]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_display[26]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_display[27]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_display[0]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_display[1]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_display[2]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_display[3]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_display[4]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_display[5]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_display[6]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_display[7]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_display[8]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_display[9]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_display[10]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_display[11]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_display[12]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_display[13]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_display[14]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_display[15]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_display[16]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_display[17]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_display[18]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_display[19]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_display[20]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_display[21]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_display[22]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_display[23]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_display[24]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_display[25]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_display[26]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_display[27]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cronometro IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_seg_display : std_logic_vector(27 DOWNTO 0);
SIGNAL ww_min_display : std_logic_vector(27 DOWNTO 0);
SIGNAL \clk_1hz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \seg_display[0]~output_o\ : std_logic;
SIGNAL \seg_display[1]~output_o\ : std_logic;
SIGNAL \seg_display[2]~output_o\ : std_logic;
SIGNAL \seg_display[3]~output_o\ : std_logic;
SIGNAL \seg_display[4]~output_o\ : std_logic;
SIGNAL \seg_display[5]~output_o\ : std_logic;
SIGNAL \seg_display[6]~output_o\ : std_logic;
SIGNAL \seg_display[7]~output_o\ : std_logic;
SIGNAL \seg_display[8]~output_o\ : std_logic;
SIGNAL \seg_display[9]~output_o\ : std_logic;
SIGNAL \seg_display[10]~output_o\ : std_logic;
SIGNAL \seg_display[11]~output_o\ : std_logic;
SIGNAL \seg_display[12]~output_o\ : std_logic;
SIGNAL \seg_display[13]~output_o\ : std_logic;
SIGNAL \seg_display[14]~output_o\ : std_logic;
SIGNAL \seg_display[15]~output_o\ : std_logic;
SIGNAL \seg_display[16]~output_o\ : std_logic;
SIGNAL \seg_display[17]~output_o\ : std_logic;
SIGNAL \seg_display[18]~output_o\ : std_logic;
SIGNAL \seg_display[19]~output_o\ : std_logic;
SIGNAL \seg_display[20]~output_o\ : std_logic;
SIGNAL \seg_display[21]~output_o\ : std_logic;
SIGNAL \seg_display[22]~output_o\ : std_logic;
SIGNAL \seg_display[23]~output_o\ : std_logic;
SIGNAL \seg_display[24]~output_o\ : std_logic;
SIGNAL \seg_display[25]~output_o\ : std_logic;
SIGNAL \seg_display[26]~output_o\ : std_logic;
SIGNAL \seg_display[27]~output_o\ : std_logic;
SIGNAL \min_display[0]~output_o\ : std_logic;
SIGNAL \min_display[1]~output_o\ : std_logic;
SIGNAL \min_display[2]~output_o\ : std_logic;
SIGNAL \min_display[3]~output_o\ : std_logic;
SIGNAL \min_display[4]~output_o\ : std_logic;
SIGNAL \min_display[5]~output_o\ : std_logic;
SIGNAL \min_display[6]~output_o\ : std_logic;
SIGNAL \min_display[7]~output_o\ : std_logic;
SIGNAL \min_display[8]~output_o\ : std_logic;
SIGNAL \min_display[9]~output_o\ : std_logic;
SIGNAL \min_display[10]~output_o\ : std_logic;
SIGNAL \min_display[11]~output_o\ : std_logic;
SIGNAL \min_display[12]~output_o\ : std_logic;
SIGNAL \min_display[13]~output_o\ : std_logic;
SIGNAL \min_display[14]~output_o\ : std_logic;
SIGNAL \min_display[15]~output_o\ : std_logic;
SIGNAL \min_display[16]~output_o\ : std_logic;
SIGNAL \min_display[17]~output_o\ : std_logic;
SIGNAL \min_display[18]~output_o\ : std_logic;
SIGNAL \min_display[19]~output_o\ : std_logic;
SIGNAL \min_display[20]~output_o\ : std_logic;
SIGNAL \min_display[21]~output_o\ : std_logic;
SIGNAL \min_display[22]~output_o\ : std_logic;
SIGNAL \min_display[23]~output_o\ : std_logic;
SIGNAL \min_display[24]~output_o\ : std_logic;
SIGNAL \min_display[25]~output_o\ : std_logic;
SIGNAL \min_display[26]~output_o\ : std_logic;
SIGNAL \min_display[27]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \clk_count~16_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \clk_count~15_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \clk_count~14_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \clk_count~13_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \clk_count~12_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \clk_count~11_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \clk_count~10_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \clk_count~21_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \clk_count~20_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \clk_count~19_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \clk_count~18_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \clk_count~17_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \clk_1hz~0_combout\ : std_logic;
SIGNAL \clk_1hz~feeder_combout\ : std_logic;
SIGNAL \clk_1hz~q\ : std_logic;
SIGNAL \clk_1hz~clkctrl_outclk\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \seg~3_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \seg~2_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \seg~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \seg~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[27]~43_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[26]~44_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[28]~42_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \display_sel[0]~1_combout\ : std_logic;
SIGNAL \display_sel[1]~0_combout\ : std_logic;
SIGNAL \Mux55~0_combout\ : std_logic;
SIGNAL \seg_display[0]~reg0_q\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \seg_display[1]~reg0feeder_combout\ : std_logic;
SIGNAL \seg_display[1]~reg0_q\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \seg_display[2]~reg0feeder_combout\ : std_logic;
SIGNAL \seg_display[2]~reg0_q\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \seg_display[3]~reg0feeder_combout\ : std_logic;
SIGNAL \seg_display[3]~reg0_q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \seg_display[4]~reg0feeder_combout\ : std_logic;
SIGNAL \seg_display[4]~reg0_q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \seg_display[5]~reg0feeder_combout\ : std_logic;
SIGNAL \seg_display[5]~reg0_q\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \seg_display[6]~reg0_q\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~17_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~19_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[15]~23_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[15]~22_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[23]~30_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[23]~24_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~25_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~31_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~27_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~26_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[20]~29_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[20]~28_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \seg_display[7]~reg0_q\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \seg_display[8]~reg0feeder_combout\ : std_logic;
SIGNAL \seg_display[8]~reg0_q\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \seg_display[9]~reg0feeder_combout\ : std_logic;
SIGNAL \seg_display[9]~reg0_q\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \seg_display[10]~reg0_q\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \seg_display[11]~reg0_q\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \seg_display[12]~reg0feeder_combout\ : std_logic;
SIGNAL \seg_display[12]~reg0_q\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \seg_display[13]~reg0_q\ : std_logic;
SIGNAL \Mux83~0_combout\ : std_logic;
SIGNAL \seg_display[14]~reg0_q\ : std_logic;
SIGNAL \seg_display[15]~reg0_q\ : std_logic;
SIGNAL \seg_display[16]~reg0_q\ : std_logic;
SIGNAL \seg_display[17]~reg0_q\ : std_logic;
SIGNAL \seg_display[18]~reg0_q\ : std_logic;
SIGNAL \seg_display[19]~reg0_q\ : std_logic;
SIGNAL \seg_display[20]~reg0_q\ : std_logic;
SIGNAL \seg_display[21]~reg0_q\ : std_logic;
SIGNAL \seg_display[22]~reg0_q\ : std_logic;
SIGNAL \seg_display[23]~reg0_q\ : std_logic;
SIGNAL \seg_display[24]~reg0_q\ : std_logic;
SIGNAL \seg_display[25]~reg0_q\ : std_logic;
SIGNAL \seg_display[26]~reg0_q\ : std_logic;
SIGNAL \seg_display[27]~reg0_q\ : std_logic;
SIGNAL \min[0]~2_combout\ : std_logic;
SIGNAL \min[2]~6_combout\ : std_logic;
SIGNAL \min[3]~0_combout\ : std_logic;
SIGNAL \min[3]~1_combout\ : std_logic;
SIGNAL \min[1]~3_combout\ : std_logic;
SIGNAL \min[3]~4_combout\ : std_logic;
SIGNAL \min[3]~5_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[15]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[13]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[14]~1_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \min_display[0]~reg0feeder_combout\ : std_logic;
SIGNAL \Mux83~1_combout\ : std_logic;
SIGNAL \min_display[0]~reg0_q\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \min_display[1]~reg0feeder_combout\ : std_logic;
SIGNAL \min_display[1]~reg0_q\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \min_display[2]~reg0feeder_combout\ : std_logic;
SIGNAL \min_display[2]~reg0_q\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \min_display[3]~reg0feeder_combout\ : std_logic;
SIGNAL \min_display[3]~reg0_q\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \min_display[4]~reg0feeder_combout\ : std_logic;
SIGNAL \min_display[4]~reg0_q\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \min_display[5]~reg0_q\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \min_display[6]~reg0_q\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \min_display[7]~1_combout\ : std_logic;
SIGNAL \min_display[7]~reg0_q\ : std_logic;
SIGNAL \min_display[10]~2_combout\ : std_logic;
SIGNAL \min_display[10]~reg0_q\ : std_logic;
SIGNAL \min_display[11]~3_combout\ : std_logic;
SIGNAL \min_display[11]~reg0_q\ : std_logic;
SIGNAL \min_display[12]~4_combout\ : std_logic;
SIGNAL \min_display[12]~reg0_q\ : std_logic;
SIGNAL \Mux83~2_combout\ : std_logic;
SIGNAL \min_display[14]~reg0_q\ : std_logic;
SIGNAL \min_display[15]~reg0_q\ : std_logic;
SIGNAL \min_display[16]~reg0_q\ : std_logic;
SIGNAL \min_display[17]~reg0_q\ : std_logic;
SIGNAL \min_display[18]~reg0_q\ : std_logic;
SIGNAL \min_display[19]~reg0_q\ : std_logic;
SIGNAL \min_display[20]~reg0_q\ : std_logic;
SIGNAL \min_display[21]~6_combout\ : std_logic;
SIGNAL \min_display[21]~reg0_q\ : std_logic;
SIGNAL \min_display[24]~7_combout\ : std_logic;
SIGNAL \min_display[24]~reg0_q\ : std_logic;
SIGNAL \min_display[25]~8_combout\ : std_logic;
SIGNAL \min_display[25]~reg0_q\ : std_logic;
SIGNAL \min_display[26]~9_combout\ : std_logic;
SIGNAL \min_display[26]~reg0_q\ : std_logic;
SIGNAL clk_count : std_logic_vector(25 DOWNTO 0);
SIGNAL min : std_logic_vector(3 DOWNTO 0);
SIGNAL seg : std_logic_vector(5 DOWNTO 0);
SIGNAL display_sel : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
seg_display <= ww_seg_display;
min_display <= ww_min_display;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_1hz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_1hz~q\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y2_N16
\seg_display[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_display[0]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_display[0]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\seg_display[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_display[1]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_display[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\seg_display[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_display[2]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_display[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\seg_display[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_display[3]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_display[3]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\seg_display[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_display[4]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_display[4]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\seg_display[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_display[5]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_display[5]~output_o\);

-- Location: IOOBUF_X21_Y0_N16
\seg_display[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_display[6]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_display[6]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\seg_display[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_display[7]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_display[7]~output_o\);

-- Location: IOOBUF_X25_Y0_N9
\seg_display[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_display[8]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_display[8]~output_o\);

-- Location: IOOBUF_X25_Y0_N23
\seg_display[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_display[9]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_display[9]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\seg_display[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_display[10]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_display[10]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\seg_display[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_display[11]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_display[11]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\seg_display[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_display[12]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_display[12]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\seg_display[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_display[13]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_display[13]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\seg_display[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_display[14]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_display[14]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\seg_display[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_display[15]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_display[15]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\seg_display[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_display[16]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_display[16]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\seg_display[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_display[17]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_display[17]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\seg_display[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_display[18]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_display[18]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\seg_display[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_display[19]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_display[19]~output_o\);

-- Location: IOOBUF_X21_Y0_N23
\seg_display[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_display[20]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_display[20]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\seg_display[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_display[21]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_display[21]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\seg_display[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_display[22]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_display[22]~output_o\);

-- Location: IOOBUF_X28_Y0_N16
\seg_display[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_display[23]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_display[23]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\seg_display[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_display[24]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_display[24]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\seg_display[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_display[25]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_display[25]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\seg_display[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_display[26]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_display[26]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\seg_display[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_display[27]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_display[27]~output_o\);

-- Location: IOOBUF_X34_Y8_N9
\min_display[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_display[0]~reg0_q\,
	devoe => ww_devoe,
	o => \min_display[0]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\min_display[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_display[1]~reg0_q\,
	devoe => ww_devoe,
	o => \min_display[1]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\min_display[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_display[2]~reg0_q\,
	devoe => ww_devoe,
	o => \min_display[2]~output_o\);

-- Location: IOOBUF_X34_Y8_N23
\min_display[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_display[3]~reg0_q\,
	devoe => ww_devoe,
	o => \min_display[3]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\min_display[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_display[4]~reg0_q\,
	devoe => ww_devoe,
	o => \min_display[4]~output_o\);

-- Location: IOOBUF_X34_Y5_N23
\min_display[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_display[5]~reg0_q\,
	devoe => ww_devoe,
	o => \min_display[5]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\min_display[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_display[6]~reg0_q\,
	devoe => ww_devoe,
	o => \min_display[6]~output_o\);

-- Location: IOOBUF_X34_Y7_N23
\min_display[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_display[7]~reg0_q\,
	devoe => ww_devoe,
	o => \min_display[7]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\min_display[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \min_display[8]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\min_display[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \min_display[9]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\min_display[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_display[10]~reg0_q\,
	devoe => ww_devoe,
	o => \min_display[10]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\min_display[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_display[11]~reg0_q\,
	devoe => ww_devoe,
	o => \min_display[11]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\min_display[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_display[12]~reg0_q\,
	devoe => ww_devoe,
	o => \min_display[12]~output_o\);

-- Location: IOOBUF_X32_Y24_N9
\min_display[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \min_display[13]~output_o\);

-- Location: IOOBUF_X28_Y0_N9
\min_display[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_display[14]~reg0_q\,
	devoe => ww_devoe,
	o => \min_display[14]~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\min_display[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_display[15]~reg0_q\,
	devoe => ww_devoe,
	o => \min_display[15]~output_o\);

-- Location: IOOBUF_X30_Y0_N16
\min_display[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_display[16]~reg0_q\,
	devoe => ww_devoe,
	o => \min_display[16]~output_o\);

-- Location: IOOBUF_X34_Y3_N16
\min_display[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_display[17]~reg0_q\,
	devoe => ww_devoe,
	o => \min_display[17]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\min_display[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_display[18]~reg0_q\,
	devoe => ww_devoe,
	o => \min_display[18]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\min_display[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_display[19]~reg0_q\,
	devoe => ww_devoe,
	o => \min_display[19]~output_o\);

-- Location: IOOBUF_X34_Y7_N16
\min_display[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_display[20]~reg0_q\,
	devoe => ww_devoe,
	o => \min_display[20]~output_o\);

-- Location: IOOBUF_X34_Y6_N16
\min_display[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_display[21]~reg0_q\,
	devoe => ww_devoe,
	o => \min_display[21]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\min_display[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \min_display[22]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\min_display[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \min_display[23]~output_o\);

-- Location: IOOBUF_X34_Y5_N16
\min_display[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_display[24]~reg0_q\,
	devoe => ww_devoe,
	o => \min_display[24]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\min_display[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_display[25]~reg0_q\,
	devoe => ww_devoe,
	o => \min_display[25]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\min_display[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_display[26]~reg0_q\,
	devoe => ww_devoe,
	o => \min_display[26]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\min_display[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \min_display[27]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X25_Y9_N6
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = clk_count(0) $ (VCC)
-- \Add0~1\ = CARRY(clk_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: IOIBUF_X0_Y11_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X25_Y9_N7
\clk_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(0));

-- Location: LCCOMB_X25_Y9_N8
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (clk_count(1) & (!\Add0~1\)) # (!clk_count(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!clk_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X25_Y9_N9
\clk_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(1));

-- Location: LCCOMB_X25_Y9_N10
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (clk_count(2) & (\Add0~3\ $ (GND))) # (!clk_count(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((clk_count(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X25_Y9_N11
\clk_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(2));

-- Location: LCCOMB_X25_Y9_N12
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (clk_count(3) & (!\Add0~5\)) # (!clk_count(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!clk_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X25_Y9_N13
\clk_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(3));

-- Location: LCCOMB_X25_Y9_N14
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (clk_count(4) & (\Add0~7\ $ (GND))) # (!clk_count(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((clk_count(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X25_Y9_N15
\clk_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(4));

-- Location: LCCOMB_X25_Y9_N16
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (clk_count(5) & (!\Add0~9\)) # (!clk_count(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!clk_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X25_Y9_N17
\clk_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(5));

-- Location: LCCOMB_X25_Y9_N18
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (clk_count(6) & (\Add0~11\ $ (GND))) # (!clk_count(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((clk_count(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X25_Y9_N19
\clk_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(6));

-- Location: LCCOMB_X25_Y9_N20
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (clk_count(7) & (!\Add0~13\)) # (!clk_count(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!clk_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X25_Y9_N2
\clk_count~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~16_combout\ = (\Add0~14_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~14_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~4_combout\,
	combout => \clk_count~16_combout\);

-- Location: FF_X25_Y9_N3
\clk_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~16_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(7));

-- Location: LCCOMB_X25_Y9_N22
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (clk_count(8) & (\Add0~15\ $ (GND))) # (!clk_count(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((clk_count(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X25_Y9_N23
\clk_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(8));

-- Location: LCCOMB_X25_Y9_N24
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (clk_count(9) & (!\Add0~17\)) # (!clk_count(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!clk_count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X25_Y9_N25
\clk_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(9));

-- Location: LCCOMB_X26_Y9_N20
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!clk_count(7) & (!clk_count(8) & (!clk_count(9) & clk_count(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(7),
	datab => clk_count(8),
	datac => clk_count(9),
	datad => clk_count(6),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X25_Y9_N0
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (clk_count(3) & (clk_count(4) & (clk_count(2) & clk_count(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(3),
	datab => clk_count(4),
	datac => clk_count(2),
	datad => clk_count(5),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X26_Y8_N12
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Equal0~5_combout\ & (clk_count(1) & (clk_count(0) & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => clk_count(1),
	datac => clk_count(0),
	datad => \Equal0~6_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X25_Y9_N26
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (clk_count(10) & (\Add0~19\ $ (GND))) # (!clk_count(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((clk_count(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X25_Y9_N27
\clk_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(10));

-- Location: LCCOMB_X25_Y9_N28
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (clk_count(11) & (!\Add0~21\)) # (!clk_count(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!clk_count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X25_Y9_N29
\clk_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(11));

-- Location: LCCOMB_X25_Y9_N30
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (clk_count(12) & (\Add0~23\ $ (GND))) # (!clk_count(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((clk_count(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X25_Y9_N4
\clk_count~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~15_combout\ = (\Add0~24_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~4_combout\,
	combout => \clk_count~15_combout\);

-- Location: FF_X25_Y9_N5
\clk_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~15_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(12));

-- Location: LCCOMB_X25_Y8_N0
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (clk_count(13) & (!\Add0~25\)) # (!clk_count(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!clk_count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X26_Y8_N16
\clk_count~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~14_combout\ = (\Add0~26_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => \Equal0~4_combout\,
	datac => \Add0~26_combout\,
	combout => \clk_count~14_combout\);

-- Location: FF_X26_Y8_N17
\clk_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(13));

-- Location: LCCOMB_X25_Y8_N2
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (clk_count(14) & (\Add0~27\ $ (GND))) # (!clk_count(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((clk_count(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X26_Y8_N26
\clk_count~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~13_combout\ = (\Add0~28_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~28_combout\,
	combout => \clk_count~13_combout\);

-- Location: FF_X26_Y8_N27
\clk_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~13_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(14));

-- Location: LCCOMB_X25_Y8_N4
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (clk_count(15) & (!\Add0~29\)) # (!clk_count(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!clk_count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X26_Y8_N2
\clk_count~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~12_combout\ = (\Add0~30_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => \Equal0~4_combout\,
	datac => \Add0~30_combout\,
	combout => \clk_count~12_combout\);

-- Location: FF_X26_Y8_N3
\clk_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(15));

-- Location: LCCOMB_X25_Y8_N6
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (clk_count(16) & (\Add0~31\ $ (GND))) # (!clk_count(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((clk_count(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: FF_X25_Y8_N7
\clk_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~32_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(16));

-- Location: LCCOMB_X25_Y8_N8
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (clk_count(17) & (!\Add0~33\)) # (!clk_count(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!clk_count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X26_Y8_N14
\clk_count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~11_combout\ = (\Add0~34_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~34_combout\,
	combout => \clk_count~11_combout\);

-- Location: FF_X26_Y8_N15
\clk_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(17));

-- Location: LCCOMB_X25_Y8_N10
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (clk_count(18) & (\Add0~35\ $ (GND))) # (!clk_count(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((clk_count(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: FF_X25_Y8_N11
\clk_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~36_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(18));

-- Location: LCCOMB_X25_Y8_N12
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (clk_count(19) & (!\Add0~37\)) # (!clk_count(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!clk_count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X26_Y8_N6
\clk_count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~10_combout\ = (\Add0~38_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~38_combout\,
	combout => \clk_count~10_combout\);

-- Location: FF_X26_Y8_N7
\clk_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(19));

-- Location: LCCOMB_X25_Y8_N14
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (clk_count(20) & (\Add0~39\ $ (GND))) # (!clk_count(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((clk_count(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X25_Y8_N30
\clk_count~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~21_combout\ = (\Add0~40_combout\ & ((!\Equal0~7_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \Equal0~7_combout\,
	datad => \Add0~40_combout\,
	combout => \clk_count~21_combout\);

-- Location: FF_X25_Y8_N31
\clk_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~21_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(20));

-- Location: LCCOMB_X25_Y8_N16
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (clk_count(21) & (!\Add0~41\)) # (!clk_count(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!clk_count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X25_Y8_N28
\clk_count~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~20_combout\ = (\Add0~42_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~42_combout\,
	combout => \clk_count~20_combout\);

-- Location: FF_X25_Y8_N29
\clk_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(21));

-- Location: LCCOMB_X26_Y8_N22
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!clk_count(18) & (clk_count(20) & (clk_count(21) & clk_count(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(18),
	datab => clk_count(20),
	datac => clk_count(21),
	datad => clk_count(19),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X26_Y8_N20
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (clk_count(14) & (!clk_count(16) & (clk_count(17) & clk_count(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(14),
	datab => clk_count(16),
	datac => clk_count(17),
	datad => clk_count(15),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X26_Y8_N4
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!clk_count(10) & (clk_count(13) & (!clk_count(11) & clk_count(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(10),
	datab => clk_count(13),
	datac => clk_count(11),
	datad => clk_count(12),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X25_Y8_N18
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (clk_count(22) & (\Add0~43\ $ (GND))) # (!clk_count(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((clk_count(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X25_Y8_N26
\clk_count~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~19_combout\ = (\Add0~44_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~44_combout\,
	combout => \clk_count~19_combout\);

-- Location: FF_X25_Y8_N27
\clk_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~19_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(22));

-- Location: LCCOMB_X25_Y8_N20
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (clk_count(23) & (!\Add0~45\)) # (!clk_count(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!clk_count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X26_Y8_N28
\clk_count~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~18_combout\ = (\Add0~46_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~46_combout\,
	combout => \clk_count~18_combout\);

-- Location: FF_X26_Y8_N29
\clk_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~18_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(23));

-- Location: LCCOMB_X25_Y8_N22
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (clk_count(24) & (\Add0~47\ $ (GND))) # (!clk_count(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((clk_count(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: FF_X25_Y8_N23
\clk_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~48_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(24));

-- Location: LCCOMB_X25_Y8_N24
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = \Add0~49\ $ (clk_count(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => clk_count(25),
	cin => \Add0~49\,
	combout => \Add0~50_combout\);

-- Location: LCCOMB_X26_Y8_N30
\clk_count~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~17_combout\ = (\Add0~50_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~50_combout\,
	combout => \clk_count~17_combout\);

-- Location: FF_X26_Y8_N31
\clk_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(25));

-- Location: LCCOMB_X26_Y8_N10
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (clk_count(25) & (!clk_count(24) & (clk_count(22) & clk_count(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(25),
	datab => clk_count(24),
	datac => clk_count(22),
	datad => clk_count(23),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X26_Y8_N8
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~2_combout\ & (\Equal0~3_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X26_Y8_N24
\clk_1hz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1hz~0_combout\ = \clk_1hz~q\ $ (((\Equal0~4_combout\ & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_1hz~q\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~7_combout\,
	combout => \clk_1hz~0_combout\);

-- Location: LCCOMB_X26_Y8_N18
\clk_1hz~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1hz~feeder_combout\ = \clk_1hz~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_1hz~0_combout\,
	combout => \clk_1hz~feeder_combout\);

-- Location: FF_X26_Y8_N19
clk_1hz : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_1hz~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1hz~q\);

-- Location: CLKCTRL_G8
\clk_1hz~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_1hz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_1hz~clkctrl_outclk\);

-- Location: LCCOMB_X25_Y4_N2
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = seg(0) $ (VCC)
-- \Add2~1\ = CARRY(seg(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => seg(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: FF_X25_Y4_N3
\seg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \Add2~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(0));

-- Location: LCCOMB_X25_Y4_N4
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (seg(1) & (!\Add2~1\)) # (!seg(1) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!seg(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => seg(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: FF_X25_Y4_N5
\seg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \Add2~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(1));

-- Location: LCCOMB_X25_Y4_N6
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (seg(2) & (\Add2~3\ $ (GND))) # (!seg(2) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((seg(2) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => seg(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X23_Y4_N12
\seg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg~3_combout\ = (\Add2~4_combout\ & (((!seg(0)) # (!\Equal1~0_combout\)) # (!seg(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(1),
	datab => \Equal1~0_combout\,
	datac => seg(0),
	datad => \Add2~4_combout\,
	combout => \seg~3_combout\);

-- Location: FF_X23_Y4_N13
\seg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \seg~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(2));

-- Location: LCCOMB_X25_Y4_N8
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (seg(3) & (!\Add2~5\)) # (!seg(3) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!seg(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => seg(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X23_Y4_N30
\seg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg~2_combout\ = (\Add2~6_combout\ & (((!seg(0)) # (!\Equal1~0_combout\)) # (!seg(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(1),
	datab => \Equal1~0_combout\,
	datac => seg(0),
	datad => \Add2~6_combout\,
	combout => \seg~2_combout\);

-- Location: FF_X23_Y4_N31
\seg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \seg~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(3));

-- Location: LCCOMB_X25_Y4_N10
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (seg(4) & (\Add2~7\ $ (GND))) # (!seg(4) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((seg(4) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X25_Y4_N12
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = seg(5) $ (\Add2~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => seg(5),
	cin => \Add2~9\,
	combout => \Add2~10_combout\);

-- Location: LCCOMB_X23_Y4_N2
\seg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg~0_combout\ = (\Add2~10_combout\ & (((!seg(0)) # (!\Equal1~0_combout\)) # (!seg(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(1),
	datab => \Equal1~0_combout\,
	datac => seg(0),
	datad => \Add2~10_combout\,
	combout => \seg~0_combout\);

-- Location: FF_X23_Y4_N3
\seg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \seg~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(5));

-- Location: LCCOMB_X25_Y4_N0
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (seg(4) & (seg(5) & (!seg(2) & seg(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(4),
	datab => seg(5),
	datac => seg(2),
	datad => seg(3),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X23_Y4_N8
\seg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg~1_combout\ = (\Add2~8_combout\ & (((!seg(0)) # (!\Equal1~0_combout\)) # (!seg(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(1),
	datab => \Equal1~0_combout\,
	datac => seg(0),
	datad => \Add2~8_combout\,
	combout => \seg~1_combout\);

-- Location: FF_X23_Y4_N9
\seg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \seg~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(4));

-- Location: LCCOMB_X23_Y4_N18
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = seg(3) $ (VCC)
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(seg(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(3),
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X23_Y4_N20
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (seg(4) & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!seg(4) & (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!seg(4) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => seg(4),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X23_Y4_N22
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (seg(5) & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!seg(5) & (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((seg(5) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => seg(5),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X23_Y4_N24
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X24_Y4_N12
\Mod0|auto_generated|divider|divider|StageOut[20]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\ = (seg(4) & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(4),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\);

-- Location: LCCOMB_X24_Y4_N2
\Mod0|auto_generated|divider|divider|StageOut[20]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\);

-- Location: LCCOMB_X24_Y4_N10
\Mod0|auto_generated|divider|divider|StageOut[19]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\);

-- Location: LCCOMB_X24_Y4_N8
\Mod0|auto_generated|divider|divider|StageOut[19]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ = (seg(3) & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => seg(3),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\);

-- Location: LCCOMB_X23_Y4_N14
\Mod0|auto_generated|divider|divider|StageOut[18]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\ = (seg(2) & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(2),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\);

-- Location: LCCOMB_X23_Y4_N28
\Mod0|auto_generated|divider|divider|StageOut[18]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\ = (seg(2) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(2),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\);

-- Location: LCCOMB_X24_Y4_N16
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X24_Y4_N18
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X24_Y4_N20
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X23_Y4_N0
\Mod0|auto_generated|divider|divider|StageOut[21]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ = (seg(5) & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => seg(5),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\);

-- Location: LCCOMB_X23_Y4_N6
\Mod0|auto_generated|divider|divider|StageOut[21]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\);

-- Location: LCCOMB_X24_Y4_N22
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X24_Y4_N24
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X24_Y4_N0
\Mod0|auto_generated|divider|divider|StageOut[27]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\);

-- Location: LCCOMB_X24_Y4_N4
\Mod0|auto_generated|divider|divider|StageOut[27]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[27]~43_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (seg(4))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(4),
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[27]~43_combout\);

-- Location: LCCOMB_X24_Y4_N30
\Mod0|auto_generated|divider|divider|StageOut[26]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[26]~44_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (seg(3))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => seg(3),
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[26]~44_combout\);

-- Location: LCCOMB_X24_Y4_N14
\Mod0|auto_generated|divider|divider|StageOut[26]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\);

-- Location: LCCOMB_X23_Y2_N16
\Mod0|auto_generated|divider|divider|StageOut[25]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\ = (seg(2) & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => seg(2),
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\);

-- Location: LCCOMB_X24_Y4_N26
\Mod0|auto_generated|divider|divider|StageOut[25]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\);

-- Location: LCCOMB_X24_Y4_N28
\Mod0|auto_generated|divider|divider|StageOut[24]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\ = (seg(1) & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(1),
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\);

-- Location: LCCOMB_X24_Y4_N6
\Mod0|auto_generated|divider|divider|StageOut[24]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\ = (seg(1) & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(1),
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\);

-- Location: LCCOMB_X24_Y2_N0
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X24_Y2_N2
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X24_Y2_N4
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[26]~44_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[26]~44_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[26]~44_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[26]~44_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X24_Y2_N6
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[27]~43_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[27]~43_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[27]~43_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[27]~43_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X25_Y4_N28
\Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (((!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \Mux0~6_combout\);

-- Location: LCCOMB_X25_Y4_N18
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (!\Mod0|auto_generated|divider|divider|StageOut[27]~43_combout\ & (\Mux0~6_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[27]~43_combout\,
	datad => \Mux0~6_combout\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X24_Y2_N22
\Mod0|auto_generated|divider|divider|StageOut[28]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[28]~42_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (seg(5))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(5),
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[28]~42_combout\);

-- Location: LCCOMB_X24_Y2_N20
\Mod0|auto_generated|divider|divider|StageOut[28]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\);

-- Location: LCCOMB_X24_Y2_N8
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[28]~42_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[28]~42_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[28]~42_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[28]~42_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X24_Y2_N10
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X24_Y2_N26
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\Mux0~2_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & ((!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datab => \Mux0~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X24_Y2_N18
\Mod0|auto_generated|divider|divider|StageOut[33]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[26]~44_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[26]~44_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\);

-- Location: LCCOMB_X24_Y2_N30
\Mod0|auto_generated|divider|divider|StageOut[31]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((seg(1)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => seg(1),
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\);

-- Location: LCCOMB_X24_Y2_N12
\Mod0|auto_generated|divider|divider|StageOut[32]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\);

-- Location: LCCOMB_X24_Y2_N16
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\)))) # (!\Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ $ (((seg(0) & !\Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(0),
	datab => \Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X24_Y2_N28
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux6~0_combout\) # (!\Mux0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux0~3_combout\,
	datad => \Mux6~0_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X25_Y4_N22
\display_sel[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_sel[0]~1_combout\ = !display_sel(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => display_sel(0),
	combout => \display_sel[0]~1_combout\);

-- Location: FF_X25_Y4_N23
\display_sel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \display_sel[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_sel(0));

-- Location: LCCOMB_X25_Y4_N16
\display_sel[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_sel[1]~0_combout\ = display_sel(0) $ (display_sel(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display_sel(0),
	datac => display_sel(1),
	combout => \display_sel[1]~0_combout\);

-- Location: FF_X25_Y4_N17
\display_sel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \display_sel[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_sel(1));

-- Location: LCCOMB_X23_Y4_N26
\Mux55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~0_combout\ = (!display_sel(0) & !display_sel(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => display_sel(0),
	datad => display_sel(1),
	combout => \Mux55~0_combout\);

-- Location: FF_X24_Y2_N1
\seg_display[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	asdata => \Mux6~1_combout\,
	sload => VCC,
	ena => \Mux55~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_display[0]~reg0_q\);

-- Location: LCCOMB_X23_Y2_N14
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\) # (seg(0) $ (\Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ & \Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(0),
	datab => \Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X23_Y2_N10
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux5~0_combout\) # (!\Mux0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux5~0_combout\,
	datad => \Mux0~3_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X23_Y2_N4
\seg_display[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_display[1]~reg0feeder_combout\ = \Mux5~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux5~1_combout\,
	combout => \seg_display[1]~reg0feeder_combout\);

-- Location: FF_X23_Y2_N5
\seg_display[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \seg_display[1]~reg0feeder_combout\,
	ena => \Mux55~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_display[1]~reg0_q\);

-- Location: LCCOMB_X23_Y2_N12
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\)))) # (!\Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\) # (!seg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(0),
	datab => \Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X23_Y2_N20
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\) # (!\Mux0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~3_combout\,
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X23_Y2_N30
\seg_display[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_display[2]~reg0feeder_combout\ = \Mux4~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux4~1_combout\,
	combout => \seg_display[2]~reg0feeder_combout\);

-- Location: FF_X23_Y2_N31
\seg_display[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \seg_display[2]~reg0feeder_combout\,
	ena => \Mux55~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_display[2]~reg0_q\);

-- Location: LCCOMB_X23_Y2_N6
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\) # ((seg(0) & \Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ $ (((seg(0) & !\Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(0),
	datab => \Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X23_Y2_N2
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\) # (!\Mux0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~3_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X23_Y2_N8
\seg_display[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_display[3]~reg0feeder_combout\ = \Mux3~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux3~1_combout\,
	combout => \seg_display[3]~reg0feeder_combout\);

-- Location: FF_X23_Y2_N9
\seg_display[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \seg_display[3]~reg0feeder_combout\,
	ena => \Mux55~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_display[3]~reg0_q\);

-- Location: LCCOMB_X23_Y2_N0
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (seg(0)) # ((\Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\))) # (!\Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\,
	datab => seg(0),
	datac => \Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X23_Y2_N28
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux2~0_combout\) # (!\Mux0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~3_combout\,
	datad => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X23_Y2_N22
\seg_display[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_display[4]~reg0feeder_combout\ = \Mux2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux2~1_combout\,
	combout => \seg_display[4]~reg0feeder_combout\);

-- Location: FF_X23_Y2_N23
\seg_display[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \seg_display[4]~reg0feeder_combout\,
	ena => \Mux55~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_display[4]~reg0_q\);

-- Location: LCCOMB_X23_Y2_N26
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (seg(0) & ((\Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ $ (!\Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\)))) # (!seg(0) & 
-- ((\Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\))) # (!\Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(0),
	datab => \Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X23_Y2_N18
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux1~0_combout\) # (!\Mux0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux1~0_combout\,
	datad => \Mux0~3_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X23_Y2_N24
\seg_display[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_display[5]~reg0feeder_combout\ = \Mux1~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux1~1_combout\,
	combout => \seg_display[5]~reg0feeder_combout\);

-- Location: FF_X23_Y2_N25
\seg_display[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \seg_display[5]~reg0feeder_combout\,
	ena => \Mux55~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_display[5]~reg0_q\);

-- Location: LCCOMB_X24_Y2_N24
\Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\ & ((!\Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\) # (!seg(0))))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ $ (\Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\,
	datab => seg(0),
	datac => \Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\,
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X24_Y2_N14
\Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (!\Mux0~4_combout\) # (!\Mux0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux0~3_combout\,
	datad => \Mux0~4_combout\,
	combout => \Mux0~5_combout\);

-- Location: FF_X24_Y2_N11
\seg_display[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	asdata => \Mux0~5_combout\,
	sload => VCC,
	ena => \Mux55~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_display[6]~reg0_q\);

-- Location: LCCOMB_X22_Y4_N4
\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = seg(3) $ (VCC)
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(seg(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(3),
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X22_Y4_N6
\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (seg(4) & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!seg(4) & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!seg(4) & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => seg(4),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X22_Y4_N8
\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (seg(5) & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!seg(5) & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((seg(5) & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg(5),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X22_Y4_N10
\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X22_Y4_N26
\Div0|auto_generated|divider|divider|StageOut[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~17_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~17_combout\);

-- Location: LCCOMB_X22_Y4_N28
\Div0|auto_generated|divider|divider|StageOut[18]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~16_combout\ = (seg(5) & \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(5),
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~16_combout\);

-- Location: LCCOMB_X23_Y4_N4
\Div0|auto_generated|divider|divider|StageOut[17]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~18_combout\ = (seg(4) & \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => seg(4),
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~18_combout\);

-- Location: LCCOMB_X22_Y4_N2
\Div0|auto_generated|divider|divider|StageOut[17]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~19_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~19_combout\);

-- Location: LCCOMB_X22_Y4_N30
\Div0|auto_generated|divider|divider|StageOut[16]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~21_combout\);

-- Location: LCCOMB_X22_Y4_N0
\Div0|auto_generated|divider|divider|StageOut[16]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~20_combout\ = (seg(3) & \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => seg(3),
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~20_combout\);

-- Location: LCCOMB_X22_Y4_N22
\Div0|auto_generated|divider|divider|StageOut[15]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[15]~23_combout\ = (seg(2) & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => seg(2),
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[15]~23_combout\);

-- Location: LCCOMB_X22_Y4_N24
\Div0|auto_generated|divider|divider|StageOut[15]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[15]~22_combout\ = (seg(2) & \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => seg(2),
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[15]~22_combout\);

-- Location: LCCOMB_X22_Y4_N12
\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[15]~23_combout\) # (\Div0|auto_generated|divider|divider|StageOut[15]~22_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[15]~23_combout\) # (\Div0|auto_generated|divider|divider|StageOut[15]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[15]~23_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[15]~22_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X22_Y4_N14
\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[16]~21_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[16]~20_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[16]~20_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[16]~20_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[16]~21_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[16]~20_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X22_Y4_N16
\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[17]~18_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[17]~19_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[17]~18_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[17]~19_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[17]~18_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[17]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[17]~18_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[17]~19_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X22_Y4_N18
\Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[18]~17_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[18]~16_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[18]~17_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[18]~16_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X22_Y4_N20
\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X21_Y4_N24
\Div0|auto_generated|divider|divider|StageOut[23]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[23]~30_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (seg(4))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(4),
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[23]~30_combout\);

-- Location: LCCOMB_X21_Y4_N0
\Div0|auto_generated|divider|divider|StageOut[23]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[23]~24_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[23]~24_combout\);

-- Location: LCCOMB_X21_Y4_N22
\Div0|auto_generated|divider|divider|StageOut[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~25_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~25_combout\);

-- Location: LCCOMB_X21_Y4_N18
\Div0|auto_generated|divider|divider|StageOut[22]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~31_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((seg(3)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => seg(3),
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~31_combout\);

-- Location: LCCOMB_X21_Y4_N26
\Div0|auto_generated|divider|divider|StageOut[21]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~27_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~27_combout\);

-- Location: LCCOMB_X21_Y4_N16
\Div0|auto_generated|divider|divider|StageOut[21]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~26_combout\ = (seg(2) & \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(2),
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~26_combout\);

-- Location: LCCOMB_X21_Y4_N30
\Div0|auto_generated|divider|divider|StageOut[20]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[20]~29_combout\ = (seg(1) & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => seg(1),
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[20]~29_combout\);

-- Location: LCCOMB_X21_Y4_N20
\Div0|auto_generated|divider|divider|StageOut[20]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[20]~28_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & seg(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => seg(1),
	combout => \Div0|auto_generated|divider|divider|StageOut[20]~28_combout\);

-- Location: LCCOMB_X21_Y4_N4
\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[20]~29_combout\) # (\Div0|auto_generated|divider|divider|StageOut[20]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[20]~29_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[20]~28_combout\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\);

-- Location: LCCOMB_X21_Y4_N6
\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[21]~27_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[21]~26_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[21]~27_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[21]~26_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\);

-- Location: LCCOMB_X21_Y4_N8
\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\ & ((\Div0|auto_generated|divider|divider|StageOut[22]~25_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[22]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[22]~25_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[22]~31_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\);

-- Location: LCCOMB_X21_Y4_N10
\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[23]~30_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[23]~24_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[23]~30_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[23]~24_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X21_Y4_N12
\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X21_Y4_N2
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mux13~0_combout\);

-- Location: FF_X21_Y4_N21
\seg_display[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	asdata => \Mux13~0_combout\,
	sload => VCC,
	ena => \Mux55~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_display[7]~reg0_q\);

-- Location: LCCOMB_X25_Y4_N20
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X25_Y2_N24
\seg_display[8]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_display[8]~reg0feeder_combout\ = \Mux12~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux12~0_combout\,
	combout => \seg_display[8]~reg0feeder_combout\);

-- Location: FF_X25_Y2_N25
\seg_display[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \seg_display[8]~reg0feeder_combout\,
	ena => \Mux55~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_display[8]~reg0_q\);

-- Location: LCCOMB_X26_Y4_N0
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X26_Y4_N28
\seg_display[9]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_display[9]~reg0feeder_combout\ = \Mux11~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux11~0_combout\,
	combout => \seg_display[9]~reg0feeder_combout\);

-- Location: FF_X26_Y4_N29
\seg_display[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \seg_display[9]~reg0feeder_combout\,
	ena => \Mux55~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_display[9]~reg0_q\);

-- Location: LCCOMB_X21_Y4_N28
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mux10~0_combout\);

-- Location: FF_X21_Y4_N11
\seg_display[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	asdata => \Mux10~0_combout\,
	sload => VCC,
	ena => \Mux55~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_display[10]~reg0_q\);

-- Location: LCCOMB_X23_Y4_N16
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ((!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mux9~0_combout\);

-- Location: FF_X24_Y4_N21
\seg_display[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	asdata => \Mux9~0_combout\,
	sload => VCC,
	ena => \Mux55~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_display[11]~reg0_q\);

-- Location: LCCOMB_X26_Y4_N6
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X26_Y4_N30
\seg_display[12]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_display[12]~reg0feeder_combout\ = \Mux8~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux8~0_combout\,
	combout => \seg_display[12]~reg0feeder_combout\);

-- Location: FF_X26_Y4_N31
\seg_display[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \seg_display[12]~reg0feeder_combout\,
	ena => \Mux55~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_display[12]~reg0_q\);

-- Location: LCCOMB_X21_Y4_N14
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mux7~0_combout\);

-- Location: FF_X21_Y4_N31
\seg_display[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	asdata => \Mux7~0_combout\,
	sload => VCC,
	ena => \Mux55~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_display[13]~reg0_q\);

-- Location: LCCOMB_X23_Y4_N10
\Mux83~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux83~0_combout\ = (!display_sel(0) & display_sel(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => display_sel(0),
	datad => display_sel(1),
	combout => \Mux83~0_combout\);

-- Location: FF_X24_Y2_N29
\seg_display[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \Mux6~1_combout\,
	ena => \Mux83~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_display[14]~reg0_q\);

-- Location: FF_X23_Y2_N11
\seg_display[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \Mux5~1_combout\,
	ena => \Mux83~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_display[15]~reg0_q\);

-- Location: FF_X23_Y2_N21
\seg_display[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \Mux4~1_combout\,
	ena => \Mux83~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_display[16]~reg0_q\);

-- Location: FF_X23_Y2_N3
\seg_display[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \Mux3~1_combout\,
	ena => \Mux83~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_display[17]~reg0_q\);

-- Location: FF_X23_Y2_N29
\seg_display[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \Mux2~1_combout\,
	ena => \Mux83~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_display[18]~reg0_q\);

-- Location: FF_X23_Y2_N19
\seg_display[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \Mux1~1_combout\,
	ena => \Mux83~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_display[19]~reg0_q\);

-- Location: FF_X24_Y2_N15
\seg_display[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \Mux0~5_combout\,
	ena => \Mux83~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_display[20]~reg0_q\);

-- Location: FF_X21_Y4_N3
\seg_display[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \Mux13~0_combout\,
	ena => \Mux83~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_display[21]~reg0_q\);

-- Location: FF_X25_Y4_N21
\seg_display[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \Mux12~0_combout\,
	ena => \Mux83~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_display[22]~reg0_q\);

-- Location: FF_X26_Y4_N1
\seg_display[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \Mux11~0_combout\,
	ena => \Mux83~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_display[23]~reg0_q\);

-- Location: FF_X21_Y4_N29
\seg_display[24]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \Mux10~0_combout\,
	ena => \Mux83~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_display[24]~reg0_q\);

-- Location: FF_X23_Y4_N17
\seg_display[25]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \Mux9~0_combout\,
	ena => \Mux83~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_display[25]~reg0_q\);

-- Location: FF_X26_Y4_N7
\seg_display[26]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \Mux8~0_combout\,
	ena => \Mux83~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_display[26]~reg0_q\);

-- Location: FF_X21_Y4_N15
\seg_display[27]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \Mux7~0_combout\,
	ena => \Mux83~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_display[27]~reg0_q\);

-- Location: LCCOMB_X29_Y4_N24
\min[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[0]~2_combout\ = \min[3]~1_combout\ $ (min(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min[3]~1_combout\,
	datac => min(0),
	combout => \min[0]~2_combout\);

-- Location: FF_X29_Y4_N25
\min[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \min[0]~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(0));

-- Location: LCCOMB_X29_Y4_N6
\min[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[2]~6_combout\ = min(2) $ (((\min[3]~1_combout\ & (min(0) & min(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min[3]~1_combout\,
	datab => min(0),
	datac => min(2),
	datad => min(1),
	combout => \min[2]~6_combout\);

-- Location: FF_X29_Y4_N7
\min[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \min[2]~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(2));

-- Location: LCCOMB_X29_Y4_N22
\min[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[3]~0_combout\ = ((!min(2) & (!min(0) & !min(1)))) # (!min(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(2),
	datab => min(0),
	datac => min(3),
	datad => min(1),
	combout => \min[3]~0_combout\);

-- Location: LCCOMB_X25_Y4_N30
\min[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[3]~1_combout\ = (\min[3]~0_combout\ & (seg(0) & (seg(1) & \Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min[3]~0_combout\,
	datab => seg(0),
	datac => seg(1),
	datad => \Equal1~0_combout\,
	combout => \min[3]~1_combout\);

-- Location: LCCOMB_X29_Y4_N10
\min[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[1]~3_combout\ = min(1) $ (((\min[3]~1_combout\ & min(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min[3]~1_combout\,
	datac => min(1),
	datad => min(0),
	combout => \min[1]~3_combout\);

-- Location: FF_X29_Y4_N11
\min[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \min[1]~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(1));

-- Location: LCCOMB_X29_Y4_N28
\min[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[3]~4_combout\ = (min(1) & (min(0) & (\min[3]~1_combout\ & min(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(1),
	datab => min(0),
	datac => \min[3]~1_combout\,
	datad => min(2),
	combout => \min[3]~4_combout\);

-- Location: LCCOMB_X29_Y4_N12
\min[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[3]~5_combout\ = min(3) $ (\min[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => min(3),
	datad => \min[3]~4_combout\,
	combout => \min[3]~5_combout\);

-- Location: FF_X29_Y4_N13
\min[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \min[3]~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(3));

-- Location: LCCOMB_X29_Y4_N14
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = min(1) $ (VCC)
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(min(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(1),
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X29_Y4_N16
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (min(2) & (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!min(2) & (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!min(2) & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(2),
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X29_Y4_N18
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (min(3) & (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!min(3) & (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((min(3) & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(3),
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X29_Y4_N20
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X29_Y4_N8
\Mod1|auto_generated|divider|divider|StageOut[15]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[15]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (min(3))) # (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(3),
	datab => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[15]~2_combout\);

-- Location: LCCOMB_X29_Y4_N4
\Mod1|auto_generated|divider|divider|StageOut[13]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[13]~0_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (min(1))) # (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(1),
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[13]~0_combout\);

-- Location: LCCOMB_X29_Y4_N26
\Mod1|auto_generated|divider|divider|StageOut[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[14]~1_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (min(2))) # (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(2),
	datab => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[14]~1_combout\);

-- Location: LCCOMB_X30_Y4_N26
\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[13]~0_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[15]~2_combout\)) # (!\Mod1|auto_generated|divider|divider|StageOut[13]~0_combout\ & 
-- (\Mod1|auto_generated|divider|divider|StageOut[14]~1_combout\ $ (((!\Mod1|auto_generated|divider|divider|StageOut[15]~2_combout\ & min(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[15]~2_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[13]~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datad => min(0),
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X30_Y4_N8
\min_display[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_display[0]~reg0feeder_combout\ = \Mux20~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux20~0_combout\,
	combout => \min_display[0]~reg0feeder_combout\);

-- Location: LCCOMB_X25_Y4_N24
\Mux83~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux83~1_combout\ = (display_sel(0) & !display_sel(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => display_sel(0),
	datad => display_sel(1),
	combout => \Mux83~1_combout\);

-- Location: FF_X30_Y4_N9
\min_display[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \min_display[0]~reg0feeder_combout\,
	ena => \Mux83~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \min_display[0]~reg0_q\);

-- Location: LCCOMB_X30_Y4_N12
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[15]~2_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[13]~0_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[14]~1_combout\)))) # 
-- (!\Mod1|auto_generated|divider|divider|StageOut[15]~2_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[14]~1_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[13]~0_combout\ $ (min(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[15]~2_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[13]~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datad => min(0),
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X30_Y4_N10
\min_display[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_display[1]~reg0feeder_combout\ = \Mux19~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux19~0_combout\,
	combout => \min_display[1]~reg0feeder_combout\);

-- Location: FF_X30_Y4_N11
\min_display[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \min_display[1]~reg0feeder_combout\,
	ena => \Mux83~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \min_display[1]~reg0_q\);

-- Location: LCCOMB_X30_Y4_N30
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[14]~1_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[15]~2_combout\)) # (!\Mod1|auto_generated|divider|divider|StageOut[14]~1_combout\ & 
-- (\Mod1|auto_generated|divider|divider|StageOut[13]~0_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[15]~2_combout\) # (!min(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[15]~2_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[13]~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datad => min(0),
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X30_Y4_N24
\min_display[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_display[2]~reg0feeder_combout\ = \Mux18~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux18~0_combout\,
	combout => \min_display[2]~reg0feeder_combout\);

-- Location: FF_X30_Y4_N25
\min_display[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \min_display[2]~reg0feeder_combout\,
	ena => \Mux83~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \min_display[2]~reg0_q\);

-- Location: LCCOMB_X30_Y4_N0
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[13]~0_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[15]~2_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[14]~1_combout\ & min(0))))) # 
-- (!\Mod1|auto_generated|divider|divider|StageOut[13]~0_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[14]~1_combout\ $ (((!\Mod1|auto_generated|divider|divider|StageOut[15]~2_combout\ & min(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[15]~2_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[13]~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datad => min(0),
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X30_Y4_N2
\min_display[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_display[3]~reg0feeder_combout\ = \Mux17~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux17~0_combout\,
	combout => \min_display[3]~reg0feeder_combout\);

-- Location: FF_X30_Y4_N3
\min_display[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \min_display[3]~reg0feeder_combout\,
	ena => \Mux83~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \min_display[3]~reg0_q\);

-- Location: LCCOMB_X30_Y4_N6
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (min(0)) # ((\Mod1|auto_generated|divider|divider|StageOut[13]~0_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[15]~2_combout\)) # (!\Mod1|auto_generated|divider|divider|StageOut[13]~0_combout\ & 
-- ((\Mod1|auto_generated|divider|divider|StageOut[14]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[15]~2_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[13]~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datad => min(0),
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X30_Y4_N4
\min_display[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_display[4]~reg0feeder_combout\ = \Mux16~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux16~0_combout\,
	combout => \min_display[4]~reg0feeder_combout\);

-- Location: FF_X30_Y4_N5
\min_display[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \min_display[4]~reg0feeder_combout\,
	ena => \Mux83~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \min_display[4]~reg0_q\);

-- Location: LCCOMB_X30_Y4_N28
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[14]~1_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[15]~2_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[13]~0_combout\ & min(0))))) # 
-- (!\Mod1|auto_generated|divider|divider|StageOut[14]~1_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[13]~0_combout\) # ((!\Mod1|auto_generated|divider|divider|StageOut[15]~2_combout\ & min(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[15]~2_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[13]~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datad => min(0),
	combout => \Mux15~0_combout\);

-- Location: FF_X30_Y4_N21
\min_display[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	asdata => \Mux15~0_combout\,
	sload => VCC,
	ena => \Mux83~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \min_display[5]~reg0_q\);

-- Location: LCCOMB_X30_Y4_N14
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[13]~0_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[15]~2_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[14]~1_combout\ & min(0))))) # 
-- (!\Mod1|auto_generated|divider|divider|StageOut[13]~0_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[15]~2_combout\ $ ((!\Mod1|auto_generated|divider|divider|StageOut[14]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[15]~2_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[13]~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datad => min(0),
	combout => \Mux14~0_combout\);

-- Location: FF_X30_Y4_N23
\min_display[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	asdata => \Mux14~0_combout\,
	sload => VCC,
	ena => \Mux83~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \min_display[6]~reg0_q\);

-- Location: LCCOMB_X30_Y4_N16
\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\ = CARRY(min(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(1),
	datad => VCC,
	cout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\);

-- Location: LCCOMB_X30_Y4_N18
\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3_cout\ = CARRY((!min(2) & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => min(2),
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3_cout\);

-- Location: LCCOMB_X30_Y4_N20
\Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5_cout\ = CARRY((min(3) & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(3),
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5_cout\);

-- Location: LCCOMB_X30_Y4_N22
\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X33_Y4_N8
\min_display[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_display[7]~1_combout\ = !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \min_display[7]~1_combout\);

-- Location: FF_X33_Y4_N9
\min_display[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \min_display[7]~1_combout\,
	ena => \Mux83~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \min_display[7]~reg0_q\);

-- Location: LCCOMB_X33_Y4_N2
\min_display[10]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_display[10]~2_combout\ = !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \min_display[10]~2_combout\);

-- Location: FF_X33_Y4_N3
\min_display[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \min_display[10]~2_combout\,
	ena => \Mux83~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \min_display[10]~reg0_q\);

-- Location: LCCOMB_X33_Y4_N24
\min_display[11]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_display[11]~3_combout\ = !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \min_display[11]~3_combout\);

-- Location: FF_X33_Y4_N25
\min_display[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \min_display[11]~3_combout\,
	ena => \Mux83~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \min_display[11]~reg0_q\);

-- Location: LCCOMB_X33_Y4_N14
\min_display[12]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_display[12]~4_combout\ = !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \min_display[12]~4_combout\);

-- Location: FF_X33_Y4_N15
\min_display[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \min_display[12]~4_combout\,
	ena => \Mux83~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \min_display[12]~reg0_q\);

-- Location: LCCOMB_X25_Y4_N14
\Mux83~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux83~2_combout\ = (display_sel(0) & display_sel(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => display_sel(0),
	datad => display_sel(1),
	combout => \Mux83~2_combout\);

-- Location: FF_X30_Y4_N27
\min_display[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \Mux20~0_combout\,
	ena => \Mux83~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \min_display[14]~reg0_q\);

-- Location: FF_X30_Y4_N13
\min_display[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \Mux19~0_combout\,
	ena => \Mux83~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \min_display[15]~reg0_q\);

-- Location: FF_X30_Y4_N31
\min_display[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \Mux18~0_combout\,
	ena => \Mux83~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \min_display[16]~reg0_q\);

-- Location: FF_X30_Y4_N1
\min_display[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \Mux17~0_combout\,
	ena => \Mux83~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \min_display[17]~reg0_q\);

-- Location: FF_X30_Y4_N7
\min_display[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \Mux16~0_combout\,
	ena => \Mux83~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \min_display[18]~reg0_q\);

-- Location: FF_X30_Y4_N29
\min_display[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \Mux15~0_combout\,
	ena => \Mux83~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \min_display[19]~reg0_q\);

-- Location: FF_X30_Y4_N15
\min_display[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \Mux14~0_combout\,
	ena => \Mux83~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \min_display[20]~reg0_q\);

-- Location: LCCOMB_X33_Y4_N4
\min_display[21]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_display[21]~6_combout\ = !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \min_display[21]~6_combout\);

-- Location: FF_X33_Y4_N5
\min_display[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \min_display[21]~6_combout\,
	ena => \Mux83~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \min_display[21]~reg0_q\);

-- Location: LCCOMB_X33_Y4_N10
\min_display[24]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_display[24]~7_combout\ = !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \min_display[24]~7_combout\);

-- Location: FF_X33_Y4_N11
\min_display[24]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \min_display[24]~7_combout\,
	ena => \Mux83~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \min_display[24]~reg0_q\);

-- Location: LCCOMB_X33_Y4_N12
\min_display[25]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_display[25]~8_combout\ = !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \min_display[25]~8_combout\);

-- Location: FF_X33_Y4_N13
\min_display[25]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \min_display[25]~8_combout\,
	ena => \Mux83~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \min_display[25]~reg0_q\);

-- Location: LCCOMB_X33_Y4_N22
\min_display[26]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_display[26]~9_combout\ = !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \min_display[26]~9_combout\);

-- Location: FF_X33_Y4_N23
\min_display[26]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \min_display[26]~9_combout\,
	ena => \Mux83~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \min_display[26]~reg0_q\);

ww_seg_display(0) <= \seg_display[0]~output_o\;

ww_seg_display(1) <= \seg_display[1]~output_o\;

ww_seg_display(2) <= \seg_display[2]~output_o\;

ww_seg_display(3) <= \seg_display[3]~output_o\;

ww_seg_display(4) <= \seg_display[4]~output_o\;

ww_seg_display(5) <= \seg_display[5]~output_o\;

ww_seg_display(6) <= \seg_display[6]~output_o\;

ww_seg_display(7) <= \seg_display[7]~output_o\;

ww_seg_display(8) <= \seg_display[8]~output_o\;

ww_seg_display(9) <= \seg_display[9]~output_o\;

ww_seg_display(10) <= \seg_display[10]~output_o\;

ww_seg_display(11) <= \seg_display[11]~output_o\;

ww_seg_display(12) <= \seg_display[12]~output_o\;

ww_seg_display(13) <= \seg_display[13]~output_o\;

ww_seg_display(14) <= \seg_display[14]~output_o\;

ww_seg_display(15) <= \seg_display[15]~output_o\;

ww_seg_display(16) <= \seg_display[16]~output_o\;

ww_seg_display(17) <= \seg_display[17]~output_o\;

ww_seg_display(18) <= \seg_display[18]~output_o\;

ww_seg_display(19) <= \seg_display[19]~output_o\;

ww_seg_display(20) <= \seg_display[20]~output_o\;

ww_seg_display(21) <= \seg_display[21]~output_o\;

ww_seg_display(22) <= \seg_display[22]~output_o\;

ww_seg_display(23) <= \seg_display[23]~output_o\;

ww_seg_display(24) <= \seg_display[24]~output_o\;

ww_seg_display(25) <= \seg_display[25]~output_o\;

ww_seg_display(26) <= \seg_display[26]~output_o\;

ww_seg_display(27) <= \seg_display[27]~output_o\;

ww_min_display(0) <= \min_display[0]~output_o\;

ww_min_display(1) <= \min_display[1]~output_o\;

ww_min_display(2) <= \min_display[2]~output_o\;

ww_min_display(3) <= \min_display[3]~output_o\;

ww_min_display(4) <= \min_display[4]~output_o\;

ww_min_display(5) <= \min_display[5]~output_o\;

ww_min_display(6) <= \min_display[6]~output_o\;

ww_min_display(7) <= \min_display[7]~output_o\;

ww_min_display(8) <= \min_display[8]~output_o\;

ww_min_display(9) <= \min_display[9]~output_o\;

ww_min_display(10) <= \min_display[10]~output_o\;

ww_min_display(11) <= \min_display[11]~output_o\;

ww_min_display(12) <= \min_display[12]~output_o\;

ww_min_display(13) <= \min_display[13]~output_o\;

ww_min_display(14) <= \min_display[14]~output_o\;

ww_min_display(15) <= \min_display[15]~output_o\;

ww_min_display(16) <= \min_display[16]~output_o\;

ww_min_display(17) <= \min_display[17]~output_o\;

ww_min_display(18) <= \min_display[18]~output_o\;

ww_min_display(19) <= \min_display[19]~output_o\;

ww_min_display(20) <= \min_display[20]~output_o\;

ww_min_display(21) <= \min_display[21]~output_o\;

ww_min_display(22) <= \min_display[22]~output_o\;

ww_min_display(23) <= \min_display[23]~output_o\;

ww_min_display(24) <= \min_display[24]~output_o\;

ww_min_display(25) <= \min_display[25]~output_o\;

ww_min_display(26) <= \min_display[26]~output_o\;

ww_min_display(27) <= \min_display[27]~output_o\;
END structure;


