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

-- DATE "02/12/2025 12:58:02"

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

ENTITY 	crono IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	display : OUT std_logic_vector(6 DOWNTO 0);
	anode : OUT std_logic_vector(2 DOWNTO 0);
	btn_debounced : IN std_logic
	);
END crono;

-- Design Ports Information
-- display[0]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[1]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[2]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[3]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[4]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[5]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[6]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- anode[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- anode[1]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- anode[2]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_debounced	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF crono IS
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
SIGNAL ww_rst : std_logic;
SIGNAL ww_display : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_anode : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_btn_debounced : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \display[0]~output_o\ : std_logic;
SIGNAL \display[1]~output_o\ : std_logic;
SIGNAL \display[2]~output_o\ : std_logic;
SIGNAL \display[3]~output_o\ : std_logic;
SIGNAL \display[4]~output_o\ : std_logic;
SIGNAL \display[5]~output_o\ : std_logic;
SIGNAL \display[6]~output_o\ : std_logic;
SIGNAL \anode[0]~output_o\ : std_logic;
SIGNAL \anode[1]~output_o\ : std_logic;
SIGNAL \anode[2]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \seconds[0]~7_combout\ : std_logic;
SIGNAL \seconds[1]~10\ : std_logic;
SIGNAL \seconds[2]~11_combout\ : std_logic;
SIGNAL \btn_debounced~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \running~0_combout\ : std_logic;
SIGNAL \running~q\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
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
SIGNAL \clk_div~0_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \clk_div~1_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \clk_div~2_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \clk_div~3_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \clk_div~4_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \clk_div~5_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \clk_div~6_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \clk_div~7_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \clk_div~8_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \clk_div~9_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \clk_div~10_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \clk_div~11_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \one_sec_pulse~feeder_combout\ : std_logic;
SIGNAL \one_sec_pulse~q\ : std_logic;
SIGNAL \seconds[4]~20_combout\ : std_logic;
SIGNAL \seconds[2]~12\ : std_logic;
SIGNAL \seconds[3]~13_combout\ : std_logic;
SIGNAL \seconds[3]~14\ : std_logic;
SIGNAL \seconds[4]~15_combout\ : std_logic;
SIGNAL \seconds[4]~16\ : std_logic;
SIGNAL \seconds[5]~17_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \seconds[4]~6_combout\ : std_logic;
SIGNAL \seconds[4]~19_combout\ : std_logic;
SIGNAL \seconds[0]~8\ : std_logic;
SIGNAL \seconds[1]~9_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[20]~26_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[18]~30_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[18]~31_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[28]~39_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[28]~34_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[27]~40_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[27]~35_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[26]~41_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[26]~36_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[25]~37_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[25]~38_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[24]~33_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[24]~32_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[6]~3_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \mux_clk_div~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \mux_clk_div~1_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \mux_clk_div~2_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \mux_clk_div~3_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \mux_clk_div~4_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \mux_clk_div~5_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \mux_clk_div~6_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \mux_pulse~feeder_combout\ : std_logic;
SIGNAL \mux_pulse~q\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_1~1_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_1~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_1~5_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_1~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_1~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[7]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~17_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~19_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[15]~23_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[15]~22_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \minutes[2]~4_combout\ : std_logic;
SIGNAL \Add2~1_combout\ : std_logic;
SIGNAL \minutes[3]~5_combout\ : std_logic;
SIGNAL \minutes~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \minutes~1_combout\ : std_logic;
SIGNAL \minutes[0]~2_combout\ : std_logic;
SIGNAL \minutes[1]~3_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[23]~30_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[23]~24_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~31_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~25_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~26_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~27_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[20]~28_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[20]~29_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL mux_clk_div : std_logic_vector(15 DOWNTO 0);
SIGNAL clk_div : std_logic_vector(25 DOWNTO 0);
SIGNAL anode_sel : std_logic_vector(1 DOWNTO 0);
SIGNAL seconds : std_logic_vector(5 DOWNTO 0);
SIGNAL minutes : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL ALT_INV_anode_sel : std_logic_vector(1 DOWNTO 1);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
display <= ww_display;
anode <= ww_anode;
ww_btn_debounced <= btn_debounced;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_Equal3~0_combout\ <= NOT \Equal3~0_combout\;
\ALT_INV_Mux10~0_combout\ <= NOT \Mux10~0_combout\;
\ALT_INV_Mux0~2_combout\ <= NOT \Mux0~2_combout\;
ALT_INV_anode_sel(1) <= NOT anode_sel(1);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X30_Y0_N2
\display[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux10~0_combout\,
	devoe => ww_devoe,
	o => \display[0]~output_o\);

-- Location: IOOBUF_X34_Y7_N23
\display[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => \display[1]~output_o\);

-- Location: IOOBUF_X34_Y5_N23
\display[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~2_combout\,
	devoe => ww_devoe,
	o => \display[2]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\display[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~0_combout\,
	devoe => ww_devoe,
	o => \display[3]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\display[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~2_combout\,
	devoe => ww_devoe,
	o => \display[4]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\display[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~2_combout\,
	devoe => ww_devoe,
	o => \display[5]~output_o\);

-- Location: IOOBUF_X34_Y7_N16
\display[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \display[6]~output_o\);

-- Location: IOOBUF_X21_Y0_N16
\anode[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~2_combout\,
	devoe => ww_devoe,
	o => \anode[0]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\anode[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal3~0_combout\,
	devoe => ww_devoe,
	o => \anode[1]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\anode[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_anode_sel(1),
	devoe => ww_devoe,
	o => \anode[2]~output_o\);

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

-- Location: LCCOMB_X25_Y8_N12
\seconds[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds[0]~7_combout\ = seconds(0) $ (VCC)
-- \seconds[0]~8\ = CARRY(seconds(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seconds(0),
	datad => VCC,
	combout => \seconds[0]~7_combout\,
	cout => \seconds[0]~8\);

-- Location: LCCOMB_X25_Y8_N14
\seconds[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds[1]~9_combout\ = (seconds(1) & (!\seconds[0]~8\)) # (!seconds(1) & ((\seconds[0]~8\) # (GND)))
-- \seconds[1]~10\ = CARRY((!\seconds[0]~8\) # (!seconds(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => seconds(1),
	datad => VCC,
	cin => \seconds[0]~8\,
	combout => \seconds[1]~9_combout\,
	cout => \seconds[1]~10\);

-- Location: LCCOMB_X25_Y8_N16
\seconds[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds[2]~11_combout\ = (seconds(2) & (\seconds[1]~10\ $ (GND))) # (!seconds(2) & (!\seconds[1]~10\ & VCC))
-- \seconds[2]~12\ = CARRY((seconds(2) & !\seconds[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => seconds(2),
	datad => VCC,
	cin => \seconds[1]~10\,
	combout => \seconds[2]~11_combout\,
	cout => \seconds[2]~12\);

-- Location: IOIBUF_X34_Y12_N15
\btn_debounced~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_debounced,
	o => \btn_debounced~input_o\);

-- Location: IOIBUF_X34_Y2_N22
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: LCCOMB_X25_Y8_N24
\running~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \running~0_combout\ = (\rst~input_o\ & (\btn_debounced~input_o\ $ (!\running~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_debounced~input_o\,
	datab => \rst~input_o\,
	datac => \running~q\,
	combout => \running~0_combout\);

-- Location: FF_X25_Y8_N25
running : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \running~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \running~q\);

-- Location: LCCOMB_X13_Y12_N6
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = clk_div(0) $ (VCC)
-- \Add0~1\ = CARRY(clk_div(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: FF_X13_Y12_N7
\clk_div[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(0));

-- Location: LCCOMB_X13_Y12_N8
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (clk_div(1) & (!\Add0~1\)) # (!clk_div(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!clk_div(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X13_Y12_N9
\clk_div[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(1));

-- Location: LCCOMB_X13_Y12_N10
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (clk_div(2) & (\Add0~3\ $ (GND))) # (!clk_div(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((clk_div(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X13_Y12_N11
\clk_div[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(2));

-- Location: LCCOMB_X13_Y12_N12
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (clk_div(3) & (!\Add0~5\)) # (!clk_div(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!clk_div(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X13_Y12_N13
\clk_div[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(3));

-- Location: LCCOMB_X13_Y12_N14
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (clk_div(4) & (\Add0~7\ $ (GND))) # (!clk_div(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((clk_div(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X13_Y12_N15
\clk_div[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(4));

-- Location: LCCOMB_X13_Y12_N16
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (clk_div(5) & (!\Add0~9\)) # (!clk_div(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!clk_div(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X13_Y12_N17
\clk_div[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(5));

-- Location: LCCOMB_X13_Y12_N18
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (clk_div(6) & (\Add0~11\ $ (GND))) # (!clk_div(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((clk_div(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X13_Y12_N19
\clk_div[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(6));

-- Location: LCCOMB_X13_Y12_N20
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (clk_div(7) & (!\Add0~13\)) # (!clk_div(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!clk_div(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X13_Y12_N0
\clk_div~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div~0_combout\ = (\Add0~14_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~14_combout\,
	datad => \Equal0~8_combout\,
	combout => \clk_div~0_combout\);

-- Location: FF_X13_Y12_N1
\clk_div[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(7));

-- Location: LCCOMB_X13_Y12_N22
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (clk_div(8) & (\Add0~15\ $ (GND))) # (!clk_div(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((clk_div(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X13_Y12_N23
\clk_div[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(8));

-- Location: LCCOMB_X13_Y12_N24
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (clk_div(9) & (!\Add0~17\)) # (!clk_div(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!clk_div(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X13_Y12_N25
\clk_div[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(9));

-- Location: LCCOMB_X13_Y12_N26
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (clk_div(10) & (\Add0~19\ $ (GND))) # (!clk_div(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((clk_div(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X13_Y12_N27
\clk_div[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(10));

-- Location: LCCOMB_X13_Y12_N28
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (clk_div(11) & (!\Add0~21\)) # (!clk_div(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!clk_div(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X13_Y12_N29
\clk_div[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(11));

-- Location: LCCOMB_X13_Y12_N30
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (clk_div(12) & (\Add0~23\ $ (GND))) # (!clk_div(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((clk_div(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X13_Y12_N4
\clk_div~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div~1_combout\ = (\Add0~24_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~24_combout\,
	datad => \Equal0~8_combout\,
	combout => \clk_div~1_combout\);

-- Location: FF_X13_Y12_N5
\clk_div[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(12));

-- Location: LCCOMB_X13_Y11_N0
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (clk_div(13) & (!\Add0~25\)) # (!clk_div(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!clk_div(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X14_Y11_N18
\clk_div~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div~2_combout\ = (!\Equal0~8_combout\ & \Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datac => \Add0~26_combout\,
	combout => \clk_div~2_combout\);

-- Location: FF_X14_Y11_N19
\clk_div[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(13));

-- Location: LCCOMB_X13_Y11_N2
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (clk_div(14) & (\Add0~27\ $ (GND))) # (!clk_div(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((clk_div(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X14_Y11_N20
\clk_div~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div~3_combout\ = (!\Equal0~8_combout\ & \Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~8_combout\,
	datad => \Add0~28_combout\,
	combout => \clk_div~3_combout\);

-- Location: FF_X14_Y11_N21
\clk_div[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(14));

-- Location: LCCOMB_X13_Y11_N4
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (clk_div(15) & (!\Add0~29\)) # (!clk_div(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!clk_div(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X14_Y11_N6
\clk_div~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div~4_combout\ = (!\Equal0~8_combout\ & \Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datac => \Add0~30_combout\,
	combout => \clk_div~4_combout\);

-- Location: FF_X14_Y11_N7
\clk_div[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(15));

-- Location: LCCOMB_X13_Y11_N6
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (clk_div(16) & (\Add0~31\ $ (GND))) # (!clk_div(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((clk_div(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: FF_X13_Y11_N7
\clk_div[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(16));

-- Location: LCCOMB_X13_Y11_N8
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (clk_div(17) & (!\Add0~33\)) # (!clk_div(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!clk_div(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X13_Y11_N26
\clk_div~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div~5_combout\ = (!\Equal0~8_combout\ & \Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datac => \Add0~34_combout\,
	combout => \clk_div~5_combout\);

-- Location: FF_X13_Y11_N27
\clk_div[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(17));

-- Location: LCCOMB_X13_Y11_N10
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (clk_div(18) & (\Add0~35\ $ (GND))) # (!clk_div(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((clk_div(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: FF_X13_Y11_N11
\clk_div[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(18));

-- Location: LCCOMB_X13_Y11_N12
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (clk_div(19) & (!\Add0~37\)) # (!clk_div(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!clk_div(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X14_Y11_N4
\clk_div~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div~6_combout\ = (!\Equal0~8_combout\ & \Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~8_combout\,
	datad => \Add0~38_combout\,
	combout => \clk_div~6_combout\);

-- Location: FF_X14_Y11_N5
\clk_div[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(19));

-- Location: LCCOMB_X14_Y11_N22
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (clk_div(17) & (clk_div(19) & (!clk_div(16) & !clk_div(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(17),
	datab => clk_div(19),
	datac => clk_div(16),
	datad => clk_div(18),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X13_Y11_N14
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (clk_div(20) & (\Add0~39\ $ (GND))) # (!clk_div(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((clk_div(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X13_Y11_N28
\clk_div~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div~7_combout\ = (!\Equal0~8_combout\ & \Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datac => \Add0~40_combout\,
	combout => \clk_div~7_combout\);

-- Location: FF_X13_Y11_N29
\clk_div[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(20));

-- Location: LCCOMB_X13_Y11_N16
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (clk_div(21) & (!\Add0~41\)) # (!clk_div(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!clk_div(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X14_Y11_N12
\clk_div~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div~8_combout\ = (!\Equal0~8_combout\ & \Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datac => \Add0~42_combout\,
	combout => \clk_div~8_combout\);

-- Location: FF_X14_Y11_N13
\clk_div[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(21));

-- Location: LCCOMB_X13_Y11_N18
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (clk_div(22) & (\Add0~43\ $ (GND))) # (!clk_div(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((clk_div(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X13_Y11_N30
\clk_div~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div~9_combout\ = (!\Equal0~8_combout\ & \Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~8_combout\,
	datad => \Add0~44_combout\,
	combout => \clk_div~9_combout\);

-- Location: FF_X13_Y11_N31
\clk_div[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(22));

-- Location: LCCOMB_X13_Y11_N20
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (clk_div(23) & (!\Add0~45\)) # (!clk_div(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!clk_div(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X14_Y11_N14
\clk_div~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div~10_combout\ = (!\Equal0~8_combout\ & \Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~8_combout\,
	datad => \Add0~46_combout\,
	combout => \clk_div~10_combout\);

-- Location: FF_X14_Y11_N15
\clk_div[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(23));

-- Location: LCCOMB_X14_Y11_N28
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (clk_div(21) & (clk_div(22) & (clk_div(23) & clk_div(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(21),
	datab => clk_div(22),
	datac => clk_div(23),
	datad => clk_div(20),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X13_Y11_N22
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (clk_div(24) & (\Add0~47\ $ (GND))) # (!clk_div(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((clk_div(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: FF_X13_Y11_N23
\clk_div[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(24));

-- Location: LCCOMB_X13_Y11_N24
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = \Add0~49\ $ (clk_div(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => clk_div(25),
	cin => \Add0~49\,
	combout => \Add0~50_combout\);

-- Location: LCCOMB_X14_Y11_N26
\clk_div~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div~11_combout\ = (!\Equal0~8_combout\ & \Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~8_combout\,
	datad => \Add0~50_combout\,
	combout => \clk_div~11_combout\);

-- Location: FF_X14_Y11_N27
\clk_div[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(25));

-- Location: LCCOMB_X14_Y11_N8
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (clk_div(25) & !clk_div(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => clk_div(25),
	datad => clk_div(24),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X14_Y12_N8
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (clk_div(2) & (clk_div(0) & (clk_div(1) & clk_div(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(2),
	datab => clk_div(0),
	datac => clk_div(1),
	datad => clk_div(3),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X14_Y11_N16
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (clk_div(15) & (clk_div(14) & (clk_div(13) & clk_div(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(15),
	datab => clk_div(14),
	datac => clk_div(13),
	datad => clk_div(12),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X13_Y12_N2
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!clk_div(8) & (!clk_div(9) & (!clk_div(10) & !clk_div(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(8),
	datab => clk_div(9),
	datac => clk_div(10),
	datad => clk_div(11),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X14_Y12_N26
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (clk_div(5) & (clk_div(6) & (!clk_div(7) & clk_div(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(5),
	datab => clk_div(6),
	datac => clk_div(7),
	datad => clk_div(4),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X14_Y11_N10
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~3_combout\ & (\Equal0~2_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X14_Y11_N30
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~5_combout\ & (\Equal0~6_combout\ & (\Equal0~7_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~6_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X14_Y11_N24
\one_sec_pulse~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \one_sec_pulse~feeder_combout\ = \Equal0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~8_combout\,
	combout => \one_sec_pulse~feeder_combout\);

-- Location: FF_X14_Y11_N25
one_sec_pulse : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \one_sec_pulse~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \one_sec_pulse~q\);

-- Location: LCCOMB_X25_Y8_N26
\seconds[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds[4]~20_combout\ = ((\running~q\ & \one_sec_pulse~q\)) # (!\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \running~q\,
	datac => \rst~input_o\,
	datad => \one_sec_pulse~q\,
	combout => \seconds[4]~20_combout\);

-- Location: FF_X25_Y8_N17
\seconds[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \seconds[2]~11_combout\,
	sclr => \seconds[4]~19_combout\,
	ena => \seconds[4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seconds(2));

-- Location: LCCOMB_X25_Y8_N18
\seconds[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds[3]~13_combout\ = (seconds(3) & (!\seconds[2]~12\)) # (!seconds(3) & ((\seconds[2]~12\) # (GND)))
-- \seconds[3]~14\ = CARRY((!\seconds[2]~12\) # (!seconds(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => seconds(3),
	datad => VCC,
	cin => \seconds[2]~12\,
	combout => \seconds[3]~13_combout\,
	cout => \seconds[3]~14\);

-- Location: FF_X25_Y8_N19
\seconds[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \seconds[3]~13_combout\,
	sclr => \seconds[4]~19_combout\,
	ena => \seconds[4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seconds(3));

-- Location: LCCOMB_X25_Y8_N20
\seconds[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds[4]~15_combout\ = (seconds(4) & (\seconds[3]~14\ $ (GND))) # (!seconds(4) & (!\seconds[3]~14\ & VCC))
-- \seconds[4]~16\ = CARRY((seconds(4) & !\seconds[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => seconds(4),
	datad => VCC,
	cin => \seconds[3]~14\,
	combout => \seconds[4]~15_combout\,
	cout => \seconds[4]~16\);

-- Location: FF_X25_Y8_N21
\seconds[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \seconds[4]~15_combout\,
	sclr => \seconds[4]~19_combout\,
	ena => \seconds[4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seconds(4));

-- Location: LCCOMB_X25_Y8_N22
\seconds[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds[5]~17_combout\ = seconds(5) $ (\seconds[4]~16\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seconds(5),
	cin => \seconds[4]~16\,
	combout => \seconds[5]~17_combout\);

-- Location: FF_X25_Y8_N23
\seconds[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \seconds[5]~17_combout\,
	sclr => \seconds[4]~19_combout\,
	ena => \seconds[4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seconds(5));

-- Location: LCCOMB_X26_Y8_N10
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (((seconds(2)) # (!seconds(3))) # (!seconds(4))) # (!seconds(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seconds(5),
	datab => seconds(4),
	datac => seconds(2),
	datad => seconds(3),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X25_Y8_N2
\seconds[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds[4]~6_combout\ = (\running~q\ & \one_sec_pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \running~q\,
	datad => \one_sec_pulse~q\,
	combout => \seconds[4]~6_combout\);

-- Location: LCCOMB_X25_Y8_N8
\seconds[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds[4]~19_combout\ = ((seconds(0) & (seconds(1) & !\Equal2~0_combout\))) # (!\seconds[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seconds(0),
	datab => seconds(1),
	datac => \Equal2~0_combout\,
	datad => \seconds[4]~6_combout\,
	combout => \seconds[4]~19_combout\);

-- Location: FF_X25_Y8_N13
\seconds[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \seconds[0]~7_combout\,
	sclr => \seconds[4]~19_combout\,
	ena => \seconds[4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seconds(0));

-- Location: FF_X25_Y8_N15
\seconds[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \seconds[1]~9_combout\,
	sclr => \seconds[4]~19_combout\,
	ena => \seconds[4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seconds(1));

-- Location: LCCOMB_X24_Y4_N18
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = seconds(3) $ (VCC)
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(seconds(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => seconds(3),
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X24_Y4_N20
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (seconds(4) & (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!seconds(4) & (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!seconds(4) & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seconds(4),
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X24_Y4_N22
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (seconds(5) & (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!seconds(5) & (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((seconds(5) & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => seconds(5),
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X24_Y4_N24
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

-- Location: LCCOMB_X25_Y4_N12
\Mod1|auto_generated|divider|divider|StageOut[21]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\);

-- Location: LCCOMB_X25_Y4_N14
\Mod1|auto_generated|divider|divider|StageOut[21]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & seconds(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => seconds(5),
	combout => \Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\);

-- Location: LCCOMB_X24_Y4_N16
\Mod1|auto_generated|divider|divider|StageOut[20]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[20]~26_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & seconds(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => seconds(4),
	combout => \Mod1|auto_generated|divider|divider|StageOut[20]~26_combout\);

-- Location: LCCOMB_X25_Y4_N18
\Mod1|auto_generated|divider|divider|StageOut[20]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\);

-- Location: LCCOMB_X24_Y4_N14
\Mod1|auto_generated|divider|divider|StageOut[19]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\);

-- Location: LCCOMB_X25_Y4_N28
\Mod1|auto_generated|divider|divider|StageOut[19]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & seconds(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => seconds(3),
	combout => \Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\);

-- Location: LCCOMB_X25_Y4_N22
\Mod1|auto_generated|divider|divider|StageOut[18]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[18]~30_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & seconds(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => seconds(2),
	combout => \Mod1|auto_generated|divider|divider|StageOut[18]~30_combout\);

-- Location: LCCOMB_X25_Y4_N20
\Mod1|auto_generated|divider|divider|StageOut[18]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[18]~31_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & seconds(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => seconds(2),
	combout => \Mod1|auto_generated|divider|divider|StageOut[18]~31_combout\);

-- Location: LCCOMB_X25_Y4_N0
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[18]~30_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[18]~31_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[18]~30_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[18]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[18]~30_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[18]~31_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X25_Y4_N2
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X25_Y4_N4
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[20]~26_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[20]~26_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[20]~26_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[20]~26_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X25_Y4_N6
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X25_Y4_N8
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X25_Y4_N26
\Mod1|auto_generated|divider|divider|StageOut[28]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[28]~39_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (seconds(5))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seconds(5),
	datab => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[28]~39_combout\);

-- Location: LCCOMB_X25_Y4_N30
\Mod1|auto_generated|divider|divider|StageOut[28]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[28]~34_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[28]~34_combout\);

-- Location: LCCOMB_X25_Y4_N16
\Mod1|auto_generated|divider|divider|StageOut[27]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[27]~40_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((seconds(4)))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => seconds(4),
	combout => \Mod1|auto_generated|divider|divider|StageOut[27]~40_combout\);

-- Location: LCCOMB_X26_Y4_N24
\Mod1|auto_generated|divider|divider|StageOut[27]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[27]~35_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[27]~35_combout\);

-- Location: LCCOMB_X25_Y4_N10
\Mod1|auto_generated|divider|divider|StageOut[26]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[26]~41_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (seconds(3))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seconds(3),
	datab => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[26]~41_combout\);

-- Location: LCCOMB_X25_Y4_N24
\Mod1|auto_generated|divider|divider|StageOut[26]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[26]~36_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[26]~36_combout\);

-- Location: LCCOMB_X26_Y4_N26
\Mod1|auto_generated|divider|divider|StageOut[25]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[25]~37_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & seconds(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => seconds(2),
	combout => \Mod1|auto_generated|divider|divider|StageOut[25]~37_combout\);

-- Location: LCCOMB_X26_Y4_N16
\Mod1|auto_generated|divider|divider|StageOut[25]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[25]~38_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[25]~38_combout\);

-- Location: LCCOMB_X26_Y4_N22
\Mod1|auto_generated|divider|divider|StageOut[24]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[24]~33_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & seconds(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => seconds(1),
	combout => \Mod1|auto_generated|divider|divider|StageOut[24]~33_combout\);

-- Location: LCCOMB_X26_Y4_N28
\Mod1|auto_generated|divider|divider|StageOut[24]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[24]~32_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & seconds(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => seconds(1),
	combout => \Mod1|auto_generated|divider|divider|StageOut[24]~32_combout\);

-- Location: LCCOMB_X26_Y4_N4
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[24]~33_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[24]~32_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[24]~33_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[24]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[24]~33_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[24]~32_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X26_Y4_N6
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[25]~37_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[25]~38_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[25]~37_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[25]~38_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[25]~37_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[25]~38_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[25]~37_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[25]~38_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X26_Y4_N8
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[26]~41_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[26]~36_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[26]~41_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[26]~36_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[26]~41_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[26]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[26]~41_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[26]~36_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X26_Y4_N10
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[27]~40_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[27]~35_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[27]~40_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[27]~35_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X26_Y4_N12
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[28]~39_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[28]~34_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[28]~39_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[28]~34_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\);

-- Location: LCCOMB_X26_Y4_N14
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X25_Y1_N16
\Mod0|auto_generated|divider|divider|StageOut[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[6]~3_combout\ = anode_sel(0) $ (\Mod0|auto_generated|divider|divider|op_1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => anode_sel(0),
	datad => \Mod0|auto_generated|divider|divider|op_1~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[6]~3_combout\);

-- Location: LCCOMB_X23_Y8_N0
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = mux_clk_div(0) $ (VCC)
-- \Add1~1\ = CARRY(mux_clk_div(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mux_clk_div(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X24_Y8_N8
\mux_clk_div~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_clk_div~0_combout\ = (\Add1~0_combout\ & !\Equal1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~0_combout\,
	datad => \Equal1~4_combout\,
	combout => \mux_clk_div~0_combout\);

-- Location: FF_X23_Y8_N19
\mux_clk_div[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux_clk_div~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mux_clk_div(0));

-- Location: LCCOMB_X23_Y8_N2
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (mux_clk_div(1) & (!\Add1~1\)) # (!mux_clk_div(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!mux_clk_div(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mux_clk_div(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: FF_X23_Y8_N3
\mux_clk_div[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mux_clk_div(1));

-- Location: LCCOMB_X23_Y8_N4
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (mux_clk_div(2) & (\Add1~3\ $ (GND))) # (!mux_clk_div(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((mux_clk_div(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mux_clk_div(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: FF_X23_Y8_N5
\mux_clk_div[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mux_clk_div(2));

-- Location: LCCOMB_X23_Y8_N6
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (mux_clk_div(3) & (!\Add1~5\)) # (!mux_clk_div(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!mux_clk_div(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mux_clk_div(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: FF_X23_Y8_N7
\mux_clk_div[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mux_clk_div(3));

-- Location: LCCOMB_X24_Y8_N22
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!mux_clk_div(0) & (!mux_clk_div(2) & (!mux_clk_div(3) & !mux_clk_div(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mux_clk_div(0),
	datab => mux_clk_div(2),
	datac => mux_clk_div(3),
	datad => mux_clk_div(1),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X23_Y8_N8
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (mux_clk_div(4) & (\Add1~7\ $ (GND))) # (!mux_clk_div(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((mux_clk_div(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mux_clk_div(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X24_Y8_N20
\mux_clk_div~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_clk_div~1_combout\ = (!\Equal1~4_combout\ & \Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~4_combout\,
	datad => \Add1~8_combout\,
	combout => \mux_clk_div~1_combout\);

-- Location: FF_X24_Y8_N21
\mux_clk_div[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mux_clk_div~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mux_clk_div(4));

-- Location: LCCOMB_X23_Y8_N10
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (mux_clk_div(5) & (!\Add1~9\)) # (!mux_clk_div(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!mux_clk_div(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mux_clk_div(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: FF_X23_Y8_N11
\mux_clk_div[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mux_clk_div(5));

-- Location: LCCOMB_X23_Y8_N12
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (mux_clk_div(6) & (\Add1~11\ $ (GND))) # (!mux_clk_div(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((mux_clk_div(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mux_clk_div(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X24_Y8_N30
\mux_clk_div~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_clk_div~2_combout\ = (!\Equal1~4_combout\ & \Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~4_combout\,
	datad => \Add1~12_combout\,
	combout => \mux_clk_div~2_combout\);

-- Location: FF_X24_Y8_N31
\mux_clk_div[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mux_clk_div~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mux_clk_div(6));

-- Location: LCCOMB_X23_Y8_N14
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (mux_clk_div(7) & (!\Add1~13\)) # (!mux_clk_div(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!mux_clk_div(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mux_clk_div(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: FF_X23_Y8_N15
\mux_clk_div[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mux_clk_div(7));

-- Location: LCCOMB_X24_Y8_N16
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!mux_clk_div(5) & (mux_clk_div(4) & (mux_clk_div(6) & !mux_clk_div(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mux_clk_div(5),
	datab => mux_clk_div(4),
	datac => mux_clk_div(6),
	datad => mux_clk_div(7),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X23_Y8_N16
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (mux_clk_div(8) & (\Add1~15\ $ (GND))) # (!mux_clk_div(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((mux_clk_div(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mux_clk_div(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X24_Y8_N26
\mux_clk_div~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_clk_div~3_combout\ = (\Add1~16_combout\ & !\Equal1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~16_combout\,
	datad => \Equal1~4_combout\,
	combout => \mux_clk_div~3_combout\);

-- Location: FF_X24_Y8_N27
\mux_clk_div[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mux_clk_div~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mux_clk_div(8));

-- Location: LCCOMB_X23_Y8_N18
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (mux_clk_div(9) & (!\Add1~17\)) # (!mux_clk_div(9) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!mux_clk_div(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mux_clk_div(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X24_Y8_N12
\mux_clk_div~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_clk_div~4_combout\ = (!\Equal1~4_combout\ & \Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~4_combout\,
	datad => \Add1~18_combout\,
	combout => \mux_clk_div~4_combout\);

-- Location: FF_X24_Y8_N13
\mux_clk_div[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mux_clk_div~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mux_clk_div(9));

-- Location: LCCOMB_X23_Y8_N20
\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (mux_clk_div(10) & (\Add1~19\ $ (GND))) # (!mux_clk_div(10) & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((mux_clk_div(10) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mux_clk_div(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: FF_X23_Y8_N21
\mux_clk_div[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mux_clk_div(10));

-- Location: LCCOMB_X23_Y8_N22
\Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (mux_clk_div(11) & (!\Add1~21\)) # (!mux_clk_div(11) & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!mux_clk_div(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mux_clk_div(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: FF_X23_Y8_N23
\mux_clk_div[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mux_clk_div(11));

-- Location: LCCOMB_X24_Y8_N14
\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (mux_clk_div(9) & (!mux_clk_div(11) & (mux_clk_div(8) & !mux_clk_div(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mux_clk_div(9),
	datab => mux_clk_div(11),
	datac => mux_clk_div(8),
	datad => mux_clk_div(10),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X23_Y8_N24
\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (mux_clk_div(12) & (\Add1~23\ $ (GND))) # (!mux_clk_div(12) & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((mux_clk_div(12) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mux_clk_div(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: FF_X23_Y8_N25
\mux_clk_div[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mux_clk_div(12));

-- Location: LCCOMB_X23_Y8_N26
\Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (mux_clk_div(13) & (!\Add1~25\)) # (!mux_clk_div(13) & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!mux_clk_div(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mux_clk_div(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: FF_X23_Y8_N27
\mux_clk_div[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mux_clk_div(13));

-- Location: LCCOMB_X23_Y8_N28
\Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (mux_clk_div(14) & (\Add1~27\ $ (GND))) # (!mux_clk_div(14) & (!\Add1~27\ & VCC))
-- \Add1~29\ = CARRY((mux_clk_div(14) & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mux_clk_div(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X24_Y8_N4
\mux_clk_div~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_clk_div~5_combout\ = (!\Equal1~4_combout\ & \Add1~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~4_combout\,
	datad => \Add1~28_combout\,
	combout => \mux_clk_div~5_combout\);

-- Location: FF_X24_Y8_N5
\mux_clk_div[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mux_clk_div~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mux_clk_div(14));

-- Location: LCCOMB_X23_Y8_N30
\Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = \Add1~29\ $ (mux_clk_div(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => mux_clk_div(15),
	cin => \Add1~29\,
	combout => \Add1~30_combout\);

-- Location: LCCOMB_X24_Y8_N6
\mux_clk_div~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_clk_div~6_combout\ = (!\Equal1~4_combout\ & \Add1~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~4_combout\,
	datad => \Add1~30_combout\,
	combout => \mux_clk_div~6_combout\);

-- Location: FF_X24_Y8_N7
\mux_clk_div[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mux_clk_div~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mux_clk_div(15));

-- Location: LCCOMB_X24_Y8_N24
\Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (mux_clk_div(15) & (mux_clk_div(14) & (!mux_clk_div(13) & !mux_clk_div(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mux_clk_div(15),
	datab => mux_clk_div(14),
	datac => mux_clk_div(13),
	datad => mux_clk_div(12),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X24_Y8_N10
\Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~0_combout\ & (\Equal1~1_combout\ & (\Equal1~2_combout\ & \Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Equal1~1_combout\,
	datac => \Equal1~2_combout\,
	datad => \Equal1~3_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X24_Y8_N28
\mux_pulse~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_pulse~feeder_combout\ = \Equal1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Equal1~4_combout\,
	combout => \mux_pulse~feeder_combout\);

-- Location: FF_X24_Y8_N29
mux_pulse : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mux_pulse~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux_pulse~q\);

-- Location: FF_X25_Y1_N17
\anode_sel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mod0|auto_generated|divider|divider|StageOut[6]~3_combout\,
	ena => \mux_pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => anode_sel(0));

-- Location: LCCOMB_X25_Y1_N20
\Mod0|auto_generated|divider|divider|StageOut[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ = (anode_sel(1) & anode_sel(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => anode_sel(1),
	datad => anode_sel(0),
	combout => \Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\);

-- Location: LCCOMB_X25_Y1_N30
\Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = anode_sel(1) $ (anode_sel(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => anode_sel(1),
	datad => anode_sel(0),
	combout => \Add4~0_combout\);

-- Location: LCCOMB_X25_Y1_N6
\Mod0|auto_generated|divider|divider|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_1~1_cout\ = CARRY(!anode_sel(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => anode_sel(0),
	datad => VCC,
	cout => \Mod0|auto_generated|divider|divider|op_1~1_cout\);

-- Location: LCCOMB_X25_Y1_N8
\Mod0|auto_generated|divider|divider|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_1~2_combout\ = (\Add4~0_combout\ & (!\Mod0|auto_generated|divider|divider|op_1~1_cout\)) # (!\Add4~0_combout\ & ((\Mod0|auto_generated|divider|divider|op_1~1_cout\) # (GND)))
-- \Mod0|auto_generated|divider|divider|op_1~3\ = CARRY((!\Mod0|auto_generated|divider|divider|op_1~1_cout\) # (!\Add4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_1~1_cout\,
	combout => \Mod0|auto_generated|divider|divider|op_1~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_1~3\);

-- Location: LCCOMB_X25_Y1_N10
\Mod0|auto_generated|divider|divider|op_1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_1~5_cout\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\) # (!\Mod0|auto_generated|divider|divider|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_1~3\,
	cout => \Mod0|auto_generated|divider|divider|op_1~5_cout\);

-- Location: LCCOMB_X25_Y1_N12
\Mod0|auto_generated|divider|divider|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_1~6_combout\ = !\Mod0|auto_generated|divider|divider|op_1~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|op_1~5_cout\,
	combout => \Mod0|auto_generated|divider|divider|op_1~6_combout\);

-- Location: LCCOMB_X25_Y1_N2
\Mod0|auto_generated|divider|divider|StageOut[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[7]~4_combout\ = (\Mod0|auto_generated|divider|divider|op_1~6_combout\ & ((anode_sel(1) $ (anode_sel(0))))) # (!\Mod0|auto_generated|divider|divider|op_1~6_combout\ & 
-- (\Mod0|auto_generated|divider|divider|op_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_1~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_1~2_combout\,
	datac => anode_sel(1),
	datad => anode_sel(0),
	combout => \Mod0|auto_generated|divider|divider|StageOut[7]~4_combout\);

-- Location: FF_X25_Y1_N3
\anode_sel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mod0|auto_generated|divider|divider|StageOut[7]~4_combout\,
	ena => \mux_pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => anode_sel(1));

-- Location: LCCOMB_X26_Y5_N26
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (anode_sel(1) & ((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (seconds(1))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seconds(1),
	datab => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => anode_sel(1),
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X24_Y5_N6
\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = seconds(3) $ (VCC)
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(seconds(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => seconds(3),
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X24_Y5_N8
\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (seconds(4) & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!seconds(4) & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!seconds(4) & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seconds(4),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X24_Y5_N10
\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (seconds(5) & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!seconds(5) & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((seconds(5) & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => seconds(5),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X24_Y5_N12
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

-- Location: LCCOMB_X24_Y5_N0
\Div0|auto_generated|divider|divider|StageOut[18]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~16_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & seconds(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => seconds(5),
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~16_combout\);

-- Location: LCCOMB_X24_Y5_N14
\Div0|auto_generated|divider|divider|StageOut[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~17_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~17_combout\);

-- Location: LCCOMB_X24_Y5_N16
\Div0|auto_generated|divider|divider|StageOut[17]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~18_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & seconds(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => seconds(4),
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~18_combout\);

-- Location: LCCOMB_X24_Y5_N2
\Div0|auto_generated|divider|divider|StageOut[17]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~19_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~19_combout\);

-- Location: LCCOMB_X24_Y5_N4
\Div0|auto_generated|divider|divider|StageOut[16]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~20_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & seconds(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => seconds(3),
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~20_combout\);

-- Location: LCCOMB_X25_Y5_N12
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

-- Location: LCCOMB_X24_Y5_N30
\Div0|auto_generated|divider|divider|StageOut[15]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[15]~23_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & seconds(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => seconds(2),
	combout => \Div0|auto_generated|divider|divider|StageOut[15]~23_combout\);

-- Location: LCCOMB_X24_Y5_N28
\Div0|auto_generated|divider|divider|StageOut[15]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[15]~22_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & seconds(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => seconds(2),
	combout => \Div0|auto_generated|divider|divider|StageOut[15]~22_combout\);

-- Location: LCCOMB_X24_Y5_N18
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

-- Location: LCCOMB_X24_Y5_N20
\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[16]~20_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[16]~21_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[16]~20_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[16]~21_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[16]~20_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[16]~20_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[16]~21_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X24_Y5_N22
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

-- Location: LCCOMB_X24_Y5_N24
\Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[18]~16_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[18]~17_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[18]~16_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[18]~17_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X24_Y5_N26
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

-- Location: LCCOMB_X26_Y8_N4
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = minutes(2) $ (((minutes(1) & minutes(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => minutes(1),
	datac => minutes(2),
	datad => minutes(0),
	combout => \Add2~0_combout\);

-- Location: LCCOMB_X25_Y8_N0
\minutes[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes[2]~4_combout\ = (\minutes~1_combout\ & (\Add2~0_combout\)) # (!\minutes~1_combout\ & (((\rst~input_o\ & minutes(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \rst~input_o\,
	datac => minutes(2),
	datad => \minutes~1_combout\,
	combout => \minutes[2]~4_combout\);

-- Location: FF_X25_Y8_N1
\minutes[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \minutes[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minutes(2));

-- Location: LCCOMB_X26_Y8_N6
\Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~1_combout\ = minutes(3) $ (((minutes(2) & (minutes(1) & minutes(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minutes(2),
	datab => minutes(1),
	datac => minutes(3),
	datad => minutes(0),
	combout => \Add2~1_combout\);

-- Location: LCCOMB_X25_Y8_N6
\minutes[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes[3]~5_combout\ = (\minutes~1_combout\ & (\Add2~1_combout\)) # (!\minutes~1_combout\ & (((\rst~input_o\ & minutes(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~1_combout\,
	datab => \rst~input_o\,
	datac => minutes(3),
	datad => \minutes~1_combout\,
	combout => \minutes[3]~5_combout\);

-- Location: FF_X25_Y8_N7
\minutes[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \minutes[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minutes(3));

-- Location: LCCOMB_X26_Y8_N20
\minutes~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes~0_combout\ = ((!minutes(2) & (!minutes(1) & !minutes(0)))) # (!minutes(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minutes(2),
	datab => minutes(1),
	datac => minutes(3),
	datad => minutes(0),
	combout => \minutes~0_combout\);

-- Location: LCCOMB_X25_Y8_N4
\Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (!seconds(0)) # (!seconds(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => seconds(1),
	datad => seconds(0),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X25_Y8_N10
\minutes~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes~1_combout\ = (\minutes~0_combout\ & (!\Equal2~0_combout\ & (!\Equal2~1_combout\ & \seconds[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes~0_combout\,
	datab => \Equal2~0_combout\,
	datac => \Equal2~1_combout\,
	datad => \seconds[4]~6_combout\,
	combout => \minutes~1_combout\);

-- Location: LCCOMB_X25_Y8_N28
\minutes[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes[0]~2_combout\ = (minutes(0) & (\rst~input_o\ & !\minutes~1_combout\)) # (!minutes(0) & ((\minutes~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => minutes(0),
	datad => \minutes~1_combout\,
	combout => \minutes[0]~2_combout\);

-- Location: FF_X25_Y8_N29
\minutes[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \minutes[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minutes(0));

-- Location: LCCOMB_X25_Y8_N30
\minutes[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes[1]~3_combout\ = (\minutes~1_combout\ & (minutes(0) $ (((minutes(1)))))) # (!\minutes~1_combout\ & (((\rst~input_o\ & minutes(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minutes(0),
	datab => \rst~input_o\,
	datac => minutes(1),
	datad => \minutes~1_combout\,
	combout => \minutes[1]~3_combout\);

-- Location: FF_X25_Y8_N31
\minutes[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \minutes[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minutes(1));

-- Location: LCCOMB_X26_Y5_N0
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!anode_sel(1) & ((anode_sel(0) & (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)) # (!anode_sel(0) & ((minutes(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => anode_sel(1),
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => anode_sel(0),
	datad => minutes(1),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X26_Y5_N12
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\Mux2~1_combout\) # (\Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux2~1_combout\,
	datad => \Mux2~0_combout\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X26_Y4_N2
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((seconds(2)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => seconds(2),
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X26_Y5_N18
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!anode_sel(1) & ((anode_sel(0) & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)) # (!anode_sel(0) & ((minutes(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => anode_sel(1),
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => anode_sel(0),
	datad => minutes(2),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X26_Y5_N24
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux1~0_combout\) # ((anode_sel(1) & (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => anode_sel(1),
	datab => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X26_Y5_N2
\Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\Mux1~1_combout\) # ((anode_sel(1) & (\Mux1~2_combout\ & \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => anode_sel(1),
	datab => \Mux1~2_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mux1~1_combout\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X26_Y4_N0
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[26]~41_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[26]~36_combout\)))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[26]~41_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[26]~36_combout\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X26_Y5_N8
\Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (anode_sel(1) & (((\Mux0~3_combout\)))) # (!anode_sel(1) & (!anode_sel(0) & (minutes(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => anode_sel(0),
	datab => minutes(3),
	datac => anode_sel(1),
	datad => \Mux0~3_combout\,
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X25_Y5_N6
\Div0|auto_generated|divider|divider|StageOut[23]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[23]~30_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((seconds(4)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => seconds(4),
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[23]~30_combout\);

-- Location: LCCOMB_X25_Y5_N14
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

-- Location: LCCOMB_X25_Y5_N10
\Div0|auto_generated|divider|divider|StageOut[22]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~31_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (seconds(3))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => seconds(3),
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~31_combout\);

-- Location: LCCOMB_X25_Y5_N8
\Div0|auto_generated|divider|divider|StageOut[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~25_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~25_combout\);

-- Location: LCCOMB_X25_Y5_N26
\Div0|auto_generated|divider|divider|StageOut[21]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~26_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & seconds(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => seconds(2),
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~26_combout\);

-- Location: LCCOMB_X25_Y5_N28
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

-- Location: LCCOMB_X25_Y5_N30
\Div0|auto_generated|divider|divider|StageOut[20]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[20]~28_combout\ = (seconds(1) & \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => seconds(1),
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[20]~28_combout\);

-- Location: LCCOMB_X25_Y5_N4
\Div0|auto_generated|divider|divider|StageOut[20]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[20]~29_combout\ = (seconds(1) & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => seconds(1),
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[20]~29_combout\);

-- Location: LCCOMB_X25_Y5_N16
\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[20]~28_combout\) # (\Div0|auto_generated|divider|divider|StageOut[20]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[20]~28_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[20]~29_combout\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\);

-- Location: LCCOMB_X25_Y5_N18
\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[21]~26_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[21]~27_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[21]~26_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[21]~27_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\);

-- Location: LCCOMB_X25_Y5_N20
\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\ & ((\Div0|auto_generated|divider|divider|StageOut[22]~31_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[22]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[22]~31_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[22]~25_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\);

-- Location: LCCOMB_X25_Y5_N22
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

-- Location: LCCOMB_X25_Y5_N24
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

-- Location: LCCOMB_X26_Y5_N16
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!anode_sel(1) & ((anode_sel(0) & (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)) # (!anode_sel(0) & ((minutes(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => anode_sel(0),
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => anode_sel(1),
	datad => minutes(0),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X26_Y5_N10
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\) # ((seconds(0) & anode_sel(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seconds(0),
	datac => anode_sel(1),
	datad => \Mux3~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X26_Y5_N20
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\Mux0~4_combout\) # ((\Mux2~2_combout\ & ((!\Mux3~1_combout\) # (!\Mux1~3_combout\))) # (!\Mux2~2_combout\ & (\Mux1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \Mux1~3_combout\,
	datac => \Mux0~4_combout\,
	datad => \Mux3~1_combout\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X26_Y5_N22
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (!\Mux0~4_combout\ & ((\Mux2~2_combout\ & ((\Mux3~1_combout\) # (!\Mux1~3_combout\))) # (!\Mux2~2_combout\ & (!\Mux1~3_combout\ & \Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \Mux1~3_combout\,
	datac => \Mux0~4_combout\,
	datad => \Mux3~1_combout\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X26_Y5_N6
\Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\Mux3~1_combout\) # ((\Mux1~3_combout\ & (!\Mux2~1_combout\ & !\Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \Mux1~3_combout\,
	datac => \Mux2~1_combout\,
	datad => \Mux2~0_combout\,
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X26_Y5_N28
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (!\Mux0~4_combout\ & ((\Mux2~2_combout\ & (\Mux1~3_combout\ & \Mux3~1_combout\)) # (!\Mux2~2_combout\ & (\Mux1~3_combout\ $ (\Mux3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \Mux1~3_combout\,
	datac => \Mux0~4_combout\,
	datad => \Mux3~1_combout\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X26_Y5_N4
\Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (!\Mux3~1_combout\ & (!\Mux1~3_combout\ & ((\Mux2~1_combout\) # (\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \Mux1~3_combout\,
	datac => \Mux2~1_combout\,
	datad => \Mux2~0_combout\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X26_Y5_N30
\Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\Mux1~3_combout\ & (\Mux3~1_combout\ $ (((\Mux2~1_combout\) # (\Mux2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \Mux1~3_combout\,
	datac => \Mux2~1_combout\,
	datad => \Mux2~0_combout\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X26_Y5_N14
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!\Mux2~2_combout\ & (!\Mux0~4_combout\ & (\Mux1~3_combout\ $ (\Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \Mux1~3_combout\,
	datac => \Mux0~4_combout\,
	datad => \Mux3~1_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X25_Y1_N24
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (!anode_sel(1) & !anode_sel(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => anode_sel(1),
	datad => anode_sel(0),
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X25_Y1_N26
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!anode_sel(1) & anode_sel(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => anode_sel(1),
	datad => anode_sel(0),
	combout => \Equal3~0_combout\);

ww_display(0) <= \display[0]~output_o\;

ww_display(1) <= \display[1]~output_o\;

ww_display(2) <= \display[2]~output_o\;

ww_display(3) <= \display[3]~output_o\;

ww_display(4) <= \display[4]~output_o\;

ww_display(5) <= \display[5]~output_o\;

ww_display(6) <= \display[6]~output_o\;

ww_anode(0) <= \anode[0]~output_o\;

ww_anode(1) <= \anode[1]~output_o\;

ww_anode(2) <= \anode[2]~output_o\;
END structure;


