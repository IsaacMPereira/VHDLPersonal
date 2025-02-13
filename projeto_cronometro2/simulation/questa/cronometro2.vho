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

-- DATE "02/12/2025 10:08:18"

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

ENTITY 	cronometro2 IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	start_stop : IN std_logic;
	display_min : BUFFER std_logic_vector(6 DOWNTO 0);
	display_seg : BUFFER std_logic_vector(13 DOWNTO 0)
	);
END cronometro2;

-- Design Ports Information
-- display_min[0]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_min[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_min[2]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_min[3]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_min[4]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_min[5]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_min[6]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_seg[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_seg[1]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_seg[2]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_seg[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_seg[4]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_seg[5]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_seg[6]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_seg[7]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_seg[8]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_seg[9]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_seg[10]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_seg[11]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_seg[12]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_seg[13]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_stop	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cronometro2 IS
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
SIGNAL ww_start_stop : std_logic;
SIGNAL ww_display_min : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display_seg : std_logic_vector(13 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_display~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_1hz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \display_min[0]~output_o\ : std_logic;
SIGNAL \display_min[1]~output_o\ : std_logic;
SIGNAL \display_min[2]~output_o\ : std_logic;
SIGNAL \display_min[3]~output_o\ : std_logic;
SIGNAL \display_min[4]~output_o\ : std_logic;
SIGNAL \display_min[5]~output_o\ : std_logic;
SIGNAL \display_min[6]~output_o\ : std_logic;
SIGNAL \display_seg[0]~output_o\ : std_logic;
SIGNAL \display_seg[1]~output_o\ : std_logic;
SIGNAL \display_seg[2]~output_o\ : std_logic;
SIGNAL \display_seg[3]~output_o\ : std_logic;
SIGNAL \display_seg[4]~output_o\ : std_logic;
SIGNAL \display_seg[5]~output_o\ : std_logic;
SIGNAL \display_seg[6]~output_o\ : std_logic;
SIGNAL \display_seg[7]~output_o\ : std_logic;
SIGNAL \display_seg[8]~output_o\ : std_logic;
SIGNAL \display_seg[9]~output_o\ : std_logic;
SIGNAL \display_seg[10]~output_o\ : std_logic;
SIGNAL \display_seg[11]~output_o\ : std_logic;
SIGNAL \display_seg[12]~output_o\ : std_logic;
SIGNAL \display_seg[13]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \clk_disp_count~4_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \clk_disp_count~3_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \clk_disp_count~2_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \clk_disp_count~1_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \clk_disp_count~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \clk_disp_count~5_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \clk_display~0_combout\ : std_logic;
SIGNAL \clk_display~feeder_combout\ : std_logic;
SIGNAL \clk_display~q\ : std_logic;
SIGNAL \clk_display~clkctrl_outclk\ : std_logic;
SIGNAL \Add0~1_cout\ : std_logic;
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
SIGNAL \clk_count~11_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \clk_count~10_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \clk_count~9_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \clk_count~8_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \clk_count~7_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \clk_count~6_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \clk_count~5_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \clk_count~4_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \clk_count~3_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \clk_count~2_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \clk_count~1_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \clk_count~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \clk_1hz~0_combout\ : std_logic;
SIGNAL \clk_1hz~feeder_combout\ : std_logic;
SIGNAL \clk_1hz~q\ : std_logic;
SIGNAL \clk_1hz~clkctrl_outclk\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \start_stop~input_o\ : std_logic;
SIGNAL \last_pause_btn~q\ : std_logic;
SIGNAL \paused~0_combout\ : std_logic;
SIGNAL \paused~feeder_combout\ : std_logic;
SIGNAL \paused~q\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \seg~3_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \seg~2_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \seg~1_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \seg~0_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \min[1]~2_combout\ : std_logic;
SIGNAL \min[1]~3_combout\ : std_logic;
SIGNAL \min[2]~5_combout\ : std_logic;
SIGNAL \min[3]~4_combout\ : std_logic;
SIGNAL \min[3]~0_combout\ : std_logic;
SIGNAL \min[0]~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \display_sel~0_combout\ : std_logic;
SIGNAL \display_min[6]~0_combout\ : std_logic;
SIGNAL \display_min[0]~reg0_q\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \display_min[1]~reg0_q\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \display_min[2]~reg0_q\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \display_min[3]~reg0_q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \display_min[4]~reg0_q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \display_min[5]~reg0_q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \display_min[6]~reg0_q\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[20]~26_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[18]~31_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[18]~30_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[27]~35_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[27]~43_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[26]~36_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[26]~44_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[25]~37_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[25]~38_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[24]~33_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[24]~32_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mux14~6_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[28]~42_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[28]~34_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[33]~41_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[31]~39_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \display_seg[0]~reg0_q\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \display_seg[1]~reg0_q\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \display_seg[2]~reg0_q\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \display_seg[3]~reg0_q\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \display_seg[4]~reg0_q\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \display_seg[5]~reg0_q\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \Mux14~5_combout\ : std_logic;
SIGNAL \display_seg[6]~reg0_q\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~17_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~19_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~18_combout\ : std_logic;
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
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[23]~24_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[23]~30_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~31_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~25_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~27_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~26_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[20]~28_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[20]~29_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \display_seg[7]~reg0_q\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \display_seg[8]~reg0_q\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \display_seg[9]~reg0_q\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \display_seg[10]~reg0_q\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \display_seg[11]~reg0_q\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \display_seg[12]~reg0_q\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \display_seg[13]~reg0_q\ : std_logic;
SIGNAL clk_count : std_logic_vector(25 DOWNTO 0);
SIGNAL clk_disp_count : std_logic_vector(14 DOWNTO 0);
SIGNAL seg : std_logic_vector(5 DOWNTO 0);
SIGNAL min : std_logic_vector(3 DOWNTO 0);
SIGNAL display_sel : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_paused~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_start_stop <= start_stop;
display_min <= ww_display_min;
display_seg <= ww_display_seg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk_display~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_display~q\);

\clk_1hz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_1hz~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_paused~q\ <= NOT \paused~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y20_N16
\display_min[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_min[0]~reg0_q\,
	devoe => ww_devoe,
	o => \display_min[0]~output_o\);

-- Location: IOOBUF_X30_Y24_N9
\display_min[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_min[1]~reg0_q\,
	devoe => ww_devoe,
	o => \display_min[1]~output_o\);

-- Location: IOOBUF_X34_Y19_N2
\display_min[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_min[2]~reg0_q\,
	devoe => ww_devoe,
	o => \display_min[2]~output_o\);

-- Location: IOOBUF_X32_Y24_N16
\display_min[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_min[3]~reg0_q\,
	devoe => ww_devoe,
	o => \display_min[3]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\display_min[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_min[4]~reg0_q\,
	devoe => ww_devoe,
	o => \display_min[4]~output_o\);

-- Location: IOOBUF_X34_Y11_N9
\display_min[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_min[5]~reg0_q\,
	devoe => ww_devoe,
	o => \display_min[5]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\display_min[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_min[6]~reg0_q\,
	devoe => ww_devoe,
	o => \display_min[6]~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\display_seg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_seg[0]~reg0_q\,
	devoe => ww_devoe,
	o => \display_seg[0]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\display_seg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_seg[1]~reg0_q\,
	devoe => ww_devoe,
	o => \display_seg[1]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\display_seg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_seg[2]~reg0_q\,
	devoe => ww_devoe,
	o => \display_seg[2]~output_o\);

-- Location: IOOBUF_X34_Y20_N2
\display_seg[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_seg[3]~reg0_q\,
	devoe => ww_devoe,
	o => \display_seg[3]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\display_seg[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_seg[4]~reg0_q\,
	devoe => ww_devoe,
	o => \display_seg[4]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\display_seg[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_seg[5]~reg0_q\,
	devoe => ww_devoe,
	o => \display_seg[5]~output_o\);

-- Location: IOOBUF_X25_Y24_N2
\display_seg[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_seg[6]~reg0_q\,
	devoe => ww_devoe,
	o => \display_seg[6]~output_o\);

-- Location: IOOBUF_X34_Y19_N9
\display_seg[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_seg[7]~reg0_q\,
	devoe => ww_devoe,
	o => \display_seg[7]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\display_seg[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_seg[8]~reg0_q\,
	devoe => ww_devoe,
	o => \display_seg[8]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\display_seg[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_seg[9]~reg0_q\,
	devoe => ww_devoe,
	o => \display_seg[9]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\display_seg[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_seg[10]~reg0_q\,
	devoe => ww_devoe,
	o => \display_seg[10]~output_o\);

-- Location: IOOBUF_X25_Y24_N23
\display_seg[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_seg[11]~reg0_q\,
	devoe => ww_devoe,
	o => \display_seg[11]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\display_seg[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_seg[12]~reg0_q\,
	devoe => ww_devoe,
	o => \display_seg[12]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\display_seg[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_seg[13]~reg0_q\,
	devoe => ww_devoe,
	o => \display_seg[13]~output_o\);

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

-- Location: LCCOMB_X7_Y10_N2
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = clk_disp_count(0) $ (VCC)
-- \Add1~1\ = CARRY(clk_disp_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_disp_count(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

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

-- Location: CLKCTRL_G1
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

-- Location: FF_X7_Y10_N3
\clk_disp_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_disp_count(0));

-- Location: LCCOMB_X7_Y10_N4
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (clk_disp_count(1) & (!\Add1~1\)) # (!clk_disp_count(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!clk_disp_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_disp_count(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: FF_X7_Y10_N5
\clk_disp_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_disp_count(1));

-- Location: LCCOMB_X7_Y10_N6
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (clk_disp_count(2) & (\Add1~3\ $ (GND))) # (!clk_disp_count(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((clk_disp_count(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_disp_count(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: FF_X7_Y10_N7
\clk_disp_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_disp_count(2));

-- Location: LCCOMB_X7_Y10_N8
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (clk_disp_count(3) & (!\Add1~5\)) # (!clk_disp_count(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!clk_disp_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_disp_count(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X6_Y10_N30
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (clk_disp_count(0) & clk_disp_count(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_disp_count(0),
	datad => clk_disp_count(1),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X7_Y10_N10
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (clk_disp_count(4) & (\Add1~7\ $ (GND))) # (!clk_disp_count(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((clk_disp_count(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_disp_count(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: FF_X7_Y10_N11
\clk_disp_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_disp_count(4));

-- Location: LCCOMB_X7_Y10_N12
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (clk_disp_count(5) & (!\Add1~9\)) # (!clk_disp_count(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!clk_disp_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_disp_count(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X6_Y10_N22
\clk_disp_count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_disp_count~4_combout\ = (\Add1~10_combout\ & ((!\Equal1~2_combout\) # (!\Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~4_combout\,
	datac => \Add1~10_combout\,
	datad => \Equal1~2_combout\,
	combout => \clk_disp_count~4_combout\);

-- Location: FF_X6_Y10_N23
\clk_disp_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_disp_count~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_disp_count(5));

-- Location: LCCOMB_X7_Y10_N14
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (clk_disp_count(6) & (\Add1~11\ $ (GND))) # (!clk_disp_count(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((clk_disp_count(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_disp_count(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: FF_X7_Y10_N15
\clk_disp_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_disp_count(6));

-- Location: LCCOMB_X7_Y10_N16
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (clk_disp_count(7) & (!\Add1~13\)) # (!clk_disp_count(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!clk_disp_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_disp_count(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X6_Y10_N18
\clk_disp_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_disp_count~3_combout\ = (\Add1~14_combout\ & ((!\Equal1~4_combout\) # (!\Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => \Equal1~4_combout\,
	datad => \Add1~14_combout\,
	combout => \clk_disp_count~3_combout\);

-- Location: FF_X6_Y10_N19
\clk_disp_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_disp_count~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_disp_count(7));

-- Location: LCCOMB_X7_Y10_N18
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (clk_disp_count(8) & (\Add1~15\ $ (GND))) # (!clk_disp_count(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((clk_disp_count(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_disp_count(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X6_Y10_N26
\clk_disp_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_disp_count~2_combout\ = (\Add1~16_combout\ & ((!\Equal1~4_combout\) # (!\Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => \Equal1~4_combout\,
	datad => \Add1~16_combout\,
	combout => \clk_disp_count~2_combout\);

-- Location: FF_X6_Y10_N27
\clk_disp_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_disp_count~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_disp_count(8));

-- Location: LCCOMB_X7_Y10_N20
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (clk_disp_count(9) & (!\Add1~17\)) # (!clk_disp_count(9) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!clk_disp_count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_disp_count(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: FF_X7_Y10_N21
\clk_disp_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~18_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_disp_count(9));

-- Location: LCCOMB_X7_Y10_N22
\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (clk_disp_count(10) & (\Add1~19\ $ (GND))) # (!clk_disp_count(10) & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((clk_disp_count(10) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_disp_count(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: FF_X7_Y10_N23
\clk_disp_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_disp_count(10));

-- Location: LCCOMB_X7_Y10_N24
\Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (clk_disp_count(11) & (!\Add1~21\)) # (!clk_disp_count(11) & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!clk_disp_count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_disp_count(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: FF_X7_Y10_N25
\clk_disp_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~22_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_disp_count(11));

-- Location: LCCOMB_X7_Y10_N26
\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (clk_disp_count(12) & (\Add1~23\ $ (GND))) # (!clk_disp_count(12) & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((clk_disp_count(12) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_disp_count(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: FF_X7_Y10_N27
\clk_disp_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~24_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_disp_count(12));

-- Location: LCCOMB_X7_Y10_N28
\Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (clk_disp_count(13) & (!\Add1~25\)) # (!clk_disp_count(13) & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!clk_disp_count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_disp_count(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X6_Y10_N6
\clk_disp_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_disp_count~1_combout\ = (\Add1~26_combout\ & ((!\Equal1~4_combout\) # (!\Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => \Equal1~4_combout\,
	datad => \Add1~26_combout\,
	combout => \clk_disp_count~1_combout\);

-- Location: FF_X6_Y10_N7
\clk_disp_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_disp_count~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_disp_count(13));

-- Location: LCCOMB_X7_Y10_N30
\Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = \Add1~27\ $ (!clk_disp_count(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => clk_disp_count(14),
	cin => \Add1~27\,
	combout => \Add1~28_combout\);

-- Location: LCCOMB_X7_Y10_N0
\clk_disp_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_disp_count~0_combout\ = (\Add1~28_combout\ & ((!\Equal1~2_combout\) # (!\Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~4_combout\,
	datac => \Add1~28_combout\,
	datad => \Equal1~2_combout\,
	combout => \clk_disp_count~0_combout\);

-- Location: FF_X7_Y10_N1
\clk_disp_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_disp_count~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_disp_count(14));

-- Location: LCCOMB_X6_Y10_N4
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!clk_disp_count(9) & (!clk_disp_count(10) & (!clk_disp_count(12) & !clk_disp_count(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_disp_count(9),
	datab => clk_disp_count(10),
	datac => clk_disp_count(12),
	datad => clk_disp_count(11),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X6_Y10_N10
\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (\Equal1~0_combout\ & (clk_disp_count(14) & (\Equal1~1_combout\ & clk_disp_count(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => clk_disp_count(14),
	datac => \Equal1~1_combout\,
	datad => clk_disp_count(13),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X6_Y10_N16
\clk_disp_count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_disp_count~5_combout\ = (\Add1~6_combout\ & ((!\Equal1~2_combout\) # (!\Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~4_combout\,
	datac => \Add1~6_combout\,
	datad => \Equal1~2_combout\,
	combout => \clk_disp_count~5_combout\);

-- Location: FF_X6_Y10_N17
\clk_disp_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_disp_count~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_disp_count(3));

-- Location: LCCOMB_X6_Y10_N28
\Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (clk_disp_count(5) & (!clk_disp_count(6) & (clk_disp_count(8) & clk_disp_count(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_disp_count(5),
	datab => clk_disp_count(6),
	datac => clk_disp_count(8),
	datad => clk_disp_count(7),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X6_Y10_N24
\Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (clk_disp_count(2) & (!clk_disp_count(3) & (!clk_disp_count(4) & \Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_disp_count(2),
	datab => clk_disp_count(3),
	datac => clk_disp_count(4),
	datad => \Equal1~3_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X6_Y10_N12
\clk_display~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_display~0_combout\ = \clk_display~q\ $ (((\Equal1~4_combout\ & \Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_display~q\,
	datac => \Equal1~4_combout\,
	datad => \Equal1~2_combout\,
	combout => \clk_display~0_combout\);

-- Location: LCCOMB_X6_Y10_N0
\clk_display~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_display~feeder_combout\ = \clk_display~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_display~0_combout\,
	combout => \clk_display~feeder_combout\);

-- Location: FF_X6_Y10_N1
clk_display : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_display~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_display~q\);

-- Location: CLKCTRL_G3
\clk_display~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_display~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_display~clkctrl_outclk\);

-- Location: LCCOMB_X8_Y10_N8
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_cout\ = CARRY((clk_disp_count(0) & clk_disp_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_disp_count(0),
	datab => clk_disp_count(1),
	datad => VCC,
	cout => \Add0~1_cout\);

-- Location: LCCOMB_X8_Y10_N10
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (clk_count(2) & (!\Add0~1_cout\)) # (!clk_count(2) & ((\Add0~1_cout\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1_cout\) # (!clk_count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(2),
	datad => VCC,
	cin => \Add0~1_cout\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X8_Y10_N11
\clk_count[2]\ : dffeas
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
	q => clk_count(2));

-- Location: LCCOMB_X8_Y10_N12
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (clk_count(3) & (\Add0~3\ $ (GND))) # (!clk_count(3) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((clk_count(3) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(3),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X8_Y10_N13
\clk_count[3]\ : dffeas
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
	q => clk_count(3));

-- Location: LCCOMB_X8_Y10_N14
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (clk_count(4) & (!\Add0~5\)) # (!clk_count(4) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!clk_count(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(4),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X8_Y10_N15
\clk_count[4]\ : dffeas
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
	q => clk_count(4));

-- Location: LCCOMB_X8_Y10_N16
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (clk_count(5) & (\Add0~7\ $ (GND))) # (!clk_count(5) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((clk_count(5) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(5),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X8_Y10_N17
\clk_count[5]\ : dffeas
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
	q => clk_count(5));

-- Location: LCCOMB_X8_Y10_N18
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (clk_count(6) & (!\Add0~9\)) # (!clk_count(6) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!clk_count(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(6),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X8_Y10_N19
\clk_count[6]\ : dffeas
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
	q => clk_count(6));

-- Location: LCCOMB_X8_Y10_N20
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (clk_count(7) & (\Add0~11\ $ (GND))) # (!clk_count(7) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((clk_count(7) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(7),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X8_Y10_N0
\clk_count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~11_combout\ = (!\Equal0~7_combout\ & \Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~7_combout\,
	datad => \Add0~12_combout\,
	combout => \clk_count~11_combout\);

-- Location: FF_X8_Y10_N1
\clk_count[7]\ : dffeas
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
	q => clk_count(7));

-- Location: LCCOMB_X8_Y10_N22
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (clk_count(8) & (!\Add0~13\)) # (!clk_count(8) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!clk_count(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(8),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X8_Y10_N23
\clk_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(8));

-- Location: LCCOMB_X8_Y10_N24
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (clk_count(9) & (\Add0~15\ $ (GND))) # (!clk_count(9) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((clk_count(9) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(9),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X8_Y10_N25
\clk_count[9]\ : dffeas
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
	q => clk_count(9));

-- Location: LCCOMB_X8_Y10_N26
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (clk_count(10) & (!\Add0~17\)) # (!clk_count(10) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!clk_count(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(10),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X8_Y10_N27
\clk_count[10]\ : dffeas
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
	q => clk_count(10));

-- Location: LCCOMB_X8_Y10_N28
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (clk_count(11) & (\Add0~19\ $ (GND))) # (!clk_count(11) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((clk_count(11) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(11),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X8_Y10_N29
\clk_count[11]\ : dffeas
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
	q => clk_count(11));

-- Location: LCCOMB_X8_Y10_N30
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (clk_count(12) & (!\Add0~21\)) # (!clk_count(12) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!clk_count(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(12),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X8_Y10_N4
\clk_count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~10_combout\ = (!\Equal0~7_combout\ & \Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datac => \Add0~22_combout\,
	combout => \clk_count~10_combout\);

-- Location: FF_X8_Y10_N5
\clk_count[12]\ : dffeas
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
	q => clk_count(12));

-- Location: LCCOMB_X8_Y9_N0
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (clk_count(13) & (\Add0~23\ $ (GND))) # (!clk_count(13) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((clk_count(13) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(13),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X7_Y9_N6
\clk_count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~9_combout\ = (\Add0~24_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~24_combout\,
	datad => \Equal0~7_combout\,
	combout => \clk_count~9_combout\);

-- Location: FF_X7_Y9_N7
\clk_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(13));

-- Location: LCCOMB_X8_Y9_N2
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (clk_count(14) & (!\Add0~25\)) # (!clk_count(14) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!clk_count(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(14),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X7_Y9_N16
\clk_count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~8_combout\ = (!\Equal0~7_combout\ & \Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~7_combout\,
	datad => \Add0~26_combout\,
	combout => \clk_count~8_combout\);

-- Location: FF_X7_Y9_N17
\clk_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(14));

-- Location: LCCOMB_X8_Y9_N4
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (clk_count(15) & (\Add0~27\ $ (GND))) # (!clk_count(15) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((clk_count(15) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(15),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X7_Y9_N14
\clk_count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~7_combout\ = (!\Equal0~7_combout\ & \Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~7_combout\,
	datad => \Add0~28_combout\,
	combout => \clk_count~7_combout\);

-- Location: FF_X7_Y9_N15
\clk_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(15));

-- Location: LCCOMB_X7_Y9_N10
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (clk_count(13) & (clk_count(14) & (clk_count(15) & clk_count(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(13),
	datab => clk_count(14),
	datac => clk_count(15),
	datad => clk_count(12),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X8_Y9_N6
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (clk_count(16) & (!\Add0~29\)) # (!clk_count(16) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!clk_count(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(16),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: FF_X8_Y9_N7
\clk_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~30_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(16));

-- Location: LCCOMB_X8_Y9_N8
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (clk_count(17) & (\Add0~31\ $ (GND))) # (!clk_count(17) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((clk_count(17) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(17),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X8_Y9_N26
\clk_count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~6_combout\ = (\Add0~32_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~32_combout\,
	datad => \Equal0~7_combout\,
	combout => \clk_count~6_combout\);

-- Location: FF_X8_Y9_N27
\clk_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(17));

-- Location: LCCOMB_X8_Y9_N10
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (clk_count(18) & (!\Add0~33\)) # (!clk_count(18) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!clk_count(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(18),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: FF_X8_Y9_N11
\clk_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~34_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(18));

-- Location: LCCOMB_X8_Y9_N12
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (clk_count(19) & (\Add0~35\ $ (GND))) # (!clk_count(19) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((clk_count(19) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(19),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X7_Y9_N20
\clk_count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~5_combout\ = (!\Equal0~7_combout\ & \Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datac => \Add0~36_combout\,
	combout => \clk_count~5_combout\);

-- Location: FF_X7_Y9_N21
\clk_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(19));

-- Location: LCCOMB_X7_Y9_N24
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!clk_count(16) & (clk_count(19) & (clk_count(17) & !clk_count(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(16),
	datab => clk_count(19),
	datac => clk_count(17),
	datad => clk_count(18),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X8_Y9_N14
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (clk_count(20) & (!\Add0~37\)) # (!clk_count(20) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!clk_count(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(20),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X7_Y9_N8
\clk_count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~4_combout\ = (!\Equal0~7_combout\ & \Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datac => \Add0~38_combout\,
	combout => \clk_count~4_combout\);

-- Location: FF_X7_Y9_N9
\clk_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(20));

-- Location: LCCOMB_X8_Y9_N16
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (clk_count(21) & (\Add0~39\ $ (GND))) # (!clk_count(21) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((clk_count(21) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(21),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X7_Y9_N30
\clk_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~3_combout\ = (!\Equal0~7_combout\ & \Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~7_combout\,
	datad => \Add0~40_combout\,
	combout => \clk_count~3_combout\);

-- Location: FF_X7_Y9_N31
\clk_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(21));

-- Location: LCCOMB_X8_Y9_N18
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (clk_count(22) & (!\Add0~41\)) # (!clk_count(22) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!clk_count(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(22),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X8_Y9_N28
\clk_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~2_combout\ = (!\Equal0~7_combout\ & \Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datad => \Add0~42_combout\,
	combout => \clk_count~2_combout\);

-- Location: FF_X8_Y9_N29
\clk_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(22));

-- Location: LCCOMB_X8_Y9_N20
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (clk_count(23) & (\Add0~43\ $ (GND))) # (!clk_count(23) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((clk_count(23) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(23),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X8_Y9_N30
\clk_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~1_combout\ = (!\Equal0~7_combout\ & \Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datad => \Add0~44_combout\,
	combout => \clk_count~1_combout\);

-- Location: FF_X8_Y9_N31
\clk_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(23));

-- Location: LCCOMB_X8_Y9_N22
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (clk_count(24) & (!\Add0~45\)) # (!clk_count(24) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!clk_count(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(24),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: FF_X8_Y9_N23
\clk_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~46_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(24));

-- Location: LCCOMB_X8_Y9_N24
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = \Add0~47\ $ (!clk_count(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => clk_count(25),
	cin => \Add0~47\,
	combout => \Add0~48_combout\);

-- Location: LCCOMB_X7_Y9_N12
\clk_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~0_combout\ = (!\Equal0~7_combout\ & \Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~7_combout\,
	datad => \Add0~48_combout\,
	combout => \clk_count~0_combout\);

-- Location: FF_X7_Y9_N13
\clk_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(25));

-- Location: LCCOMB_X7_Y9_N2
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (clk_count(21) & (clk_count(20) & (clk_count(23) & clk_count(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(21),
	datab => clk_count(20),
	datac => clk_count(23),
	datad => clk_count(22),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X7_Y9_N26
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (clk_count(25) & (!clk_count(24) & (\Equal1~0_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(25),
	datab => clk_count(24),
	datac => \Equal1~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X8_Y10_N2
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!clk_count(8) & (!clk_count(9) & (!clk_count(10) & !clk_count(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(8),
	datab => clk_count(9),
	datac => clk_count(10),
	datad => clk_count(11),
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X8_Y10_N6
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!clk_count(7) & (clk_count(5) & (clk_count(4) & clk_count(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(7),
	datab => clk_count(5),
	datac => clk_count(4),
	datad => clk_count(6),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X7_Y9_N28
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (clk_count(2) & (clk_count(3) & (\Equal0~4_combout\ & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(2),
	datab => clk_count(3),
	datac => \Equal0~4_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X7_Y9_N18
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Equal0~3_combout\ & (\Equal0~2_combout\ & (\Equal0~1_combout\ & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~6_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X7_Y9_N22
\clk_1hz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1hz~0_combout\ = \clk_1hz~q\ $ (\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_1hz~q\,
	datad => \Equal0~7_combout\,
	combout => \clk_1hz~0_combout\);

-- Location: LCCOMB_X7_Y9_N4
\clk_1hz~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1hz~feeder_combout\ = \clk_1hz~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clk_1hz~0_combout\,
	combout => \clk_1hz~feeder_combout\);

-- Location: FF_X7_Y9_N5
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

-- Location: CLKCTRL_G4
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

-- Location: LCCOMB_X30_Y19_N2
\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = seg(0) $ (VCC)
-- \Add3~1\ = CARRY(seg(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => seg(0),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: IOIBUF_X34_Y19_N15
\start_stop~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_stop,
	o => \start_stop~input_o\);

-- Location: FF_X31_Y19_N7
last_pause_btn : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \start_stop~input_o\,
	sload => VCC,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \last_pause_btn~q\);

-- Location: LCCOMB_X31_Y19_N6
\paused~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \paused~0_combout\ = \paused~q\ $ (((\start_stop~input_o\ & !\last_pause_btn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start_stop~input_o\,
	datac => \last_pause_btn~q\,
	datad => \paused~q\,
	combout => \paused~0_combout\);

-- Location: LCCOMB_X31_Y19_N28
\paused~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \paused~feeder_combout\ = \paused~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \paused~0_combout\,
	combout => \paused~feeder_combout\);

-- Location: FF_X31_Y19_N29
paused : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \paused~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \paused~q\);

-- Location: FF_X30_Y19_N3
\seg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \Add3~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_paused~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(0));

-- Location: LCCOMB_X30_Y19_N4
\Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (seg(1) & (!\Add3~1\)) # (!seg(1) & ((\Add3~1\) # (GND)))
-- \Add3~3\ = CARRY((!\Add3~1\) # (!seg(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => seg(1),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: FF_X30_Y19_N5
\seg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \Add3~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_paused~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(1));

-- Location: LCCOMB_X30_Y19_N6
\Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (seg(2) & (\Add3~3\ $ (GND))) # (!seg(2) & (!\Add3~3\ & VCC))
-- \Add3~5\ = CARRY((seg(2) & !\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => seg(2),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X30_Y19_N18
\seg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg~3_combout\ = (\Add3~4_combout\ & (((!seg(1)) # (!seg(0))) # (!\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => seg(0),
	datac => seg(1),
	datad => \Add3~4_combout\,
	combout => \seg~3_combout\);

-- Location: FF_X30_Y19_N19
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
	ena => \ALT_INV_paused~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(2));

-- Location: LCCOMB_X30_Y19_N8
\Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (seg(3) & (!\Add3~5\)) # (!seg(3) & ((\Add3~5\) # (GND)))
-- \Add3~7\ = CARRY((!\Add3~5\) # (!seg(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg(3),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X28_Y19_N24
\seg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg~2_combout\ = (\Add3~6_combout\ & (((!\Equal2~0_combout\) # (!seg(1))) # (!seg(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(0),
	datab => seg(1),
	datac => \Equal2~0_combout\,
	datad => \Add3~6_combout\,
	combout => \seg~2_combout\);

-- Location: FF_X28_Y19_N25
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
	ena => \ALT_INV_paused~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(3));

-- Location: LCCOMB_X30_Y19_N10
\Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (seg(4) & (\Add3~7\ $ (GND))) # (!seg(4) & (!\Add3~7\ & VCC))
-- \Add3~9\ = CARRY((seg(4) & !\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => seg(4),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X28_Y19_N22
\seg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg~1_combout\ = (\Add3~8_combout\ & (((!\Equal2~0_combout\) # (!seg(1))) # (!seg(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(0),
	datab => seg(1),
	datac => \Equal2~0_combout\,
	datad => \Add3~8_combout\,
	combout => \seg~1_combout\);

-- Location: FF_X28_Y19_N23
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
	ena => \ALT_INV_paused~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(4));

-- Location: LCCOMB_X30_Y19_N12
\Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = \Add3~9\ $ (seg(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => seg(5),
	cin => \Add3~9\,
	combout => \Add3~10_combout\);

-- Location: LCCOMB_X28_Y19_N20
\seg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg~0_combout\ = (\Add3~10_combout\ & (((!\Equal2~0_combout\) # (!seg(1))) # (!seg(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(0),
	datab => seg(1),
	datac => \Equal2~0_combout\,
	datad => \Add3~10_combout\,
	combout => \seg~0_combout\);

-- Location: FF_X28_Y19_N21
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
	ena => \ALT_INV_paused~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(5));

-- Location: LCCOMB_X30_Y19_N24
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (seg(5) & (!seg(2) & (seg(3) & seg(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(5),
	datab => seg(2),
	datac => seg(3),
	datad => seg(4),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X30_Y19_N22
\Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (seg(0) & (seg(1) & \Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => seg(0),
	datac => seg(1),
	datad => \Equal2~0_combout\,
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X30_Y19_N14
\min[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[1]~2_combout\ = (min(0) & (\min[3]~0_combout\ & (\Equal2~1_combout\ & !\paused~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(0),
	datab => \min[3]~0_combout\,
	datac => \Equal2~1_combout\,
	datad => \paused~q\,
	combout => \min[1]~2_combout\);

-- Location: LCCOMB_X31_Y17_N0
\min[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[1]~3_combout\ = min(1) $ (\min[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => min(1),
	datad => \min[1]~2_combout\,
	combout => \min[1]~3_combout\);

-- Location: FF_X31_Y17_N1
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

-- Location: LCCOMB_X31_Y17_N12
\min[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[2]~5_combout\ = min(2) $ (((min(1) & \min[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(1),
	datac => min(2),
	datad => \min[1]~2_combout\,
	combout => \min[2]~5_combout\);

-- Location: FF_X31_Y17_N13
\min[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \min[2]~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(2));

-- Location: LCCOMB_X31_Y17_N6
\min[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[3]~4_combout\ = min(3) $ (((min(1) & (min(2) & \min[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(1),
	datab => min(2),
	datac => min(3),
	datad => \min[1]~2_combout\,
	combout => \min[3]~4_combout\);

-- Location: FF_X31_Y17_N7
\min[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \min[3]~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(3));

-- Location: LCCOMB_X30_Y19_N28
\min[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[3]~0_combout\ = ((!min(1) & (!min(0) & !min(2)))) # (!min(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(1),
	datab => min(0),
	datac => min(2),
	datad => min(3),
	combout => \min[3]~0_combout\);

-- Location: LCCOMB_X29_Y19_N0
\min[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[0]~1_combout\ = min(0) $ (((\min[3]~0_combout\ & (\Equal2~1_combout\ & !\paused~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min[3]~0_combout\,
	datab => \Equal2~1_combout\,
	datac => min(0),
	datad => \paused~q\,
	combout => \min[0]~1_combout\);

-- Location: FF_X29_Y19_N1
\min[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \min[0]~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(0));

-- Location: LCCOMB_X31_Y17_N18
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = min(1) $ (VCC)
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(min(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => min(1),
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X31_Y17_N20
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (min(2) & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!min(2) & (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!min(2) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(2),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X31_Y17_N22
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (min(3) & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!min(3) & (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((min(3) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(3),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X31_Y17_N24
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

-- Location: LCCOMB_X31_Y17_N28
\Mod0|auto_generated|divider|divider|StageOut[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((min(2)))) # (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => min(2),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\);

-- Location: LCCOMB_X31_Y17_N14
\Mod0|auto_generated|divider|divider|StageOut[13]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((min(1)))) # (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => min(1),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\);

-- Location: LCCOMB_X31_Y17_N10
\Mod0|auto_generated|divider|divider|StageOut[15]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (min(3))) # (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(3),
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\);

-- Location: LCCOMB_X31_Y17_N8
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\)))) # (!\Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ $ (((min(0) & !\Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(0),
	datab => \Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\,
	combout => \Mux6~0_combout\);

-- Location: FF_X30_Y17_N9
\display_sel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_display~clkctrl_outclk\,
	d => \display_min[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_sel(0));

-- Location: LCCOMB_X30_Y17_N10
\display_sel~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_sel~0_combout\ = (display_sel(0) & !display_sel(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => display_sel(0),
	datac => display_sel(1),
	combout => \display_sel~0_combout\);

-- Location: FF_X30_Y17_N11
\display_sel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_display~clkctrl_outclk\,
	d => \display_sel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_sel(1));

-- Location: LCCOMB_X30_Y17_N8
\display_min[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_min[6]~0_combout\ = (!display_sel(0) & !display_sel(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => display_sel(0),
	datad => display_sel(1),
	combout => \display_min[6]~0_combout\);

-- Location: FF_X31_Y17_N9
\display_min[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_display~clkctrl_outclk\,
	d => \Mux6~0_combout\,
	ena => \display_min[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_min[0]~reg0_q\);

-- Location: LCCOMB_X31_Y17_N2
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\) # (min(0) $ (\Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ & \Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(0),
	datab => \Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\,
	combout => \Mux5~0_combout\);

-- Location: FF_X31_Y17_N3
\display_min[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_display~clkctrl_outclk\,
	d => \Mux5~0_combout\,
	ena => \display_min[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_min[1]~reg0_q\);

-- Location: LCCOMB_X30_Y19_N30
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (min(2) & (((min(3))))) # (!min(2) & (min(1) & ((min(3)) # (!min(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(1),
	datab => min(2),
	datac => min(0),
	datad => min(3),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X30_Y19_N20
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\) # (!min(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(0),
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X30_Y19_N16
\Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Mux4~0_combout\)) # (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Mux4~0_combout\,
	datad => \Mux4~1_combout\,
	combout => \Mux4~2_combout\);

-- Location: FF_X30_Y19_N17
\display_min[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_display~clkctrl_outclk\,
	d => \Mux4~2_combout\,
	ena => \display_min[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_min[2]~reg0_q\);

-- Location: LCCOMB_X31_Y17_N16
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\) # ((min(0) & \Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ $ (((min(0) & !\Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(0),
	datab => \Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\,
	combout => \Mux3~0_combout\);

-- Location: FF_X31_Y17_N17
\display_min[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_display~clkctrl_outclk\,
	d => \Mux3~0_combout\,
	ena => \display_min[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_min[3]~reg0_q\);

-- Location: LCCOMB_X31_Y17_N30
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (min(0)) # ((\Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\))) # (!\Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(0),
	datab => \Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\,
	combout => \Mux2~0_combout\);

-- Location: FF_X31_Y17_N31
\display_min[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_display~clkctrl_outclk\,
	d => \Mux2~0_combout\,
	ena => \display_min[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_min[4]~reg0_q\);

-- Location: LCCOMB_X31_Y17_N4
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (min(0) & ((\Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ $ (!\Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\)))) # (!min(0) & 
-- ((\Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\))) # (!\Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(0),
	datab => \Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\,
	combout => \Mux1~0_combout\);

-- Location: FF_X31_Y17_N5
\display_min[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_display~clkctrl_outclk\,
	d => \Mux1~0_combout\,
	ena => \display_min[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_min[5]~reg0_q\);

-- Location: LCCOMB_X31_Y17_N26
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\) # ((min(0) & \Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ $ (!\Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(0),
	datab => \Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\,
	combout => \Mux0~0_combout\);

-- Location: FF_X31_Y17_N27
\display_min[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_display~clkctrl_outclk\,
	d => \Mux0~0_combout\,
	ena => \display_min[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_min[6]~reg0_q\);

-- Location: LCCOMB_X28_Y19_N0
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = seg(3) $ (VCC)
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(seg(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => seg(3),
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X28_Y19_N2
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (seg(4) & (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!seg(4) & (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!seg(4) & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg(4),
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X28_Y19_N4
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (seg(5) & (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!seg(5) & (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((seg(5) & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => seg(5),
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X28_Y19_N6
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

-- Location: LCCOMB_X28_Y19_N8
\Mod1|auto_generated|divider|divider|StageOut[20]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\);

-- Location: LCCOMB_X29_Y19_N14
\Mod1|auto_generated|divider|divider|StageOut[20]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[20]~26_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & seg(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => seg(4),
	combout => \Mod1|auto_generated|divider|divider|StageOut[20]~26_combout\);

-- Location: LCCOMB_X28_Y19_N26
\Mod1|auto_generated|divider|divider|StageOut[19]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\ = (seg(3) & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => seg(3),
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\);

-- Location: LCCOMB_X28_Y19_N28
\Mod1|auto_generated|divider|divider|StageOut[19]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\);

-- Location: LCCOMB_X29_Y19_N22
\Mod1|auto_generated|divider|divider|StageOut[18]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[18]~31_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & seg(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => seg(2),
	combout => \Mod1|auto_generated|divider|divider|StageOut[18]~31_combout\);

-- Location: LCCOMB_X29_Y19_N24
\Mod1|auto_generated|divider|divider|StageOut[18]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[18]~30_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & seg(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => seg(2),
	combout => \Mod1|auto_generated|divider|divider|StageOut[18]~30_combout\);

-- Location: LCCOMB_X29_Y19_N4
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[18]~31_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[18]~30_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[18]~31_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[18]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[18]~31_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[18]~30_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X29_Y19_N6
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X29_Y19_N8
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[20]~26_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[20]~26_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[20]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[20]~26_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X28_Y19_N10
\Mod1|auto_generated|divider|divider|StageOut[21]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\);

-- Location: LCCOMB_X29_Y19_N2
\Mod1|auto_generated|divider|divider|StageOut[21]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & seg(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => seg(5),
	combout => \Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\);

-- Location: LCCOMB_X29_Y19_N10
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

-- Location: LCCOMB_X29_Y19_N12
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

-- Location: LCCOMB_X29_Y19_N18
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

-- Location: LCCOMB_X29_Y17_N20
\Mod1|auto_generated|divider|divider|StageOut[27]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[27]~43_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((seg(4)))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datab => seg(4),
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[27]~43_combout\);

-- Location: LCCOMB_X29_Y19_N20
\Mod1|auto_generated|divider|divider|StageOut[26]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[26]~36_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[26]~36_combout\);

-- Location: LCCOMB_X29_Y17_N18
\Mod1|auto_generated|divider|divider|StageOut[26]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[26]~44_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (seg(3))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(3),
	datab => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[26]~44_combout\);

-- Location: LCCOMB_X29_Y19_N30
\Mod1|auto_generated|divider|divider|StageOut[25]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[25]~37_combout\ = (seg(2) & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => seg(2),
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[25]~37_combout\);

-- Location: LCCOMB_X29_Y19_N16
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

-- Location: LCCOMB_X29_Y17_N22
\Mod1|auto_generated|divider|divider|StageOut[24]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[24]~33_combout\ = (seg(1) & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => seg(1),
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[24]~33_combout\);

-- Location: LCCOMB_X29_Y17_N24
\Mod1|auto_generated|divider|divider|StageOut[24]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[24]~32_combout\ = (seg(1) & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => seg(1),
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[24]~32_combout\);

-- Location: LCCOMB_X29_Y17_N4
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

-- Location: LCCOMB_X29_Y17_N6
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

-- Location: LCCOMB_X29_Y17_N8
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[26]~36_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[26]~44_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[26]~36_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[26]~44_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[26]~36_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[26]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[26]~36_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[26]~44_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X29_Y17_N10
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\Mod1|auto_generated|divider|divider|StageOut[27]~35_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[27]~43_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\Mod1|auto_generated|divider|divider|StageOut[27]~35_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[27]~43_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[27]~35_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[27]~43_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[27]~35_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[27]~43_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X29_Y19_N26
\Mux14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~6_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (((!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mux14~6_combout\);

-- Location: LCCOMB_X29_Y17_N2
\Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\Mux14~6_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[27]~43_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datac => \Mux14~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[27]~43_combout\,
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X29_Y17_N26
\Mod1|auto_generated|divider|divider|StageOut[28]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[28]~42_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (seg(5))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(5),
	datab => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[28]~42_combout\);

-- Location: LCCOMB_X29_Y19_N28
\Mod1|auto_generated|divider|divider|StageOut[28]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[28]~34_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[28]~34_combout\);

-- Location: LCCOMB_X29_Y17_N12
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\Mod1|auto_generated|divider|divider|StageOut[28]~42_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[28]~34_combout\))))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\Mod1|auto_generated|divider|divider|StageOut[28]~42_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[28]~34_combout\) # (GND))))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[28]~42_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[28]~34_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[28]~42_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[28]~34_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X29_Y17_N14
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X29_Y17_N0
\Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\Mux14~2_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & ((!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datab => \Mux14~2_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mux14~3_combout\);

-- Location: LCCOMB_X29_Y17_N28
\Mod1|auto_generated|divider|divider|StageOut[33]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[33]~41_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[26]~36_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[26]~44_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[26]~36_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[26]~44_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[33]~41_combout\);

-- Location: LCCOMB_X29_Y17_N16
\Mod1|auto_generated|divider|divider|StageOut[31]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[31]~39_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (seg(1))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => seg(1),
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[31]~39_combout\);

-- Location: LCCOMB_X29_Y17_N30
\Mod1|auto_generated|divider|divider|StageOut[32]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[25]~37_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[25]~38_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[25]~37_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[25]~38_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\);

-- Location: LCCOMB_X30_Y17_N6
\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[31]~39_combout\ & (((\Mod1|auto_generated|divider|divider|StageOut[33]~41_combout\)))) # (!\Mod1|auto_generated|divider|divider|StageOut[31]~39_combout\ & 
-- (\Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\ $ (((seg(0) & !\Mod1|auto_generated|divider|divider|StageOut[33]~41_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(0),
	datab => \Mod1|auto_generated|divider|divider|StageOut[33]~41_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[31]~39_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X30_Y17_N24
\Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (\Mux20~0_combout\) # (!\Mux14~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux14~3_combout\,
	datad => \Mux20~0_combout\,
	combout => \Mux20~1_combout\);

-- Location: FF_X30_Y17_N25
\display_seg[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_display~clkctrl_outclk\,
	d => \Mux20~1_combout\,
	ena => display_sel(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_seg[0]~reg0_q\);

-- Location: LCCOMB_X30_Y17_N12
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[33]~41_combout\ & (((\Mod1|auto_generated|divider|divider|StageOut[31]~39_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\)))) # 
-- (!\Mod1|auto_generated|divider|divider|StageOut[33]~41_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\ & (seg(0) $ (\Mod1|auto_generated|divider|divider|StageOut[31]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(0),
	datab => \Mod1|auto_generated|divider|divider|StageOut[33]~41_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[31]~39_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X30_Y17_N14
\Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (\Mux19~0_combout\) # (!\Mux14~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux14~3_combout\,
	datad => \Mux19~0_combout\,
	combout => \Mux19~1_combout\);

-- Location: FF_X30_Y17_N15
\display_seg[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_display~clkctrl_outclk\,
	d => \Mux19~1_combout\,
	ena => display_sel(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_seg[1]~reg0_q\);

-- Location: LCCOMB_X30_Y17_N2
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\ & (((\Mod1|auto_generated|divider|divider|StageOut[33]~41_combout\)))) # (!\Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\ & 
-- (\Mod1|auto_generated|divider|divider|StageOut[31]~39_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[33]~41_combout\) # (!seg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(0),
	datab => \Mod1|auto_generated|divider|divider|StageOut[33]~41_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[31]~39_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X30_Y17_N4
\Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (\Mux18~0_combout\) # (!\Mux14~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux14~3_combout\,
	datad => \Mux18~0_combout\,
	combout => \Mux18~1_combout\);

-- Location: FF_X30_Y17_N5
\display_seg[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_display~clkctrl_outclk\,
	d => \Mux18~1_combout\,
	ena => display_sel(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_seg[2]~reg0_q\);

-- Location: LCCOMB_X30_Y17_N28
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[31]~39_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[33]~41_combout\) # ((seg(0) & \Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\)))) # 
-- (!\Mod1|auto_generated|divider|divider|StageOut[31]~39_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\ $ (((seg(0) & !\Mod1|auto_generated|divider|divider|StageOut[33]~41_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(0),
	datab => \Mod1|auto_generated|divider|divider|StageOut[33]~41_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[31]~39_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X30_Y17_N22
\Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\Mux17~0_combout\) # (!\Mux14~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux14~3_combout\,
	datad => \Mux17~0_combout\,
	combout => \Mux17~1_combout\);

-- Location: FF_X30_Y17_N23
\display_seg[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_display~clkctrl_outclk\,
	d => \Mux17~1_combout\,
	ena => display_sel(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_seg[3]~reg0_q\);

-- Location: LCCOMB_X30_Y17_N18
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (seg(0)) # ((\Mod1|auto_generated|divider|divider|StageOut[31]~39_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[33]~41_combout\)) # (!\Mod1|auto_generated|divider|divider|StageOut[31]~39_combout\ & 
-- ((\Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(0),
	datab => \Mod1|auto_generated|divider|divider|StageOut[33]~41_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[31]~39_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X30_Y17_N20
\Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (\Mux16~0_combout\) # (!\Mux14~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux14~3_combout\,
	datad => \Mux16~0_combout\,
	combout => \Mux16~1_combout\);

-- Location: FF_X30_Y17_N21
\display_seg[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_display~clkctrl_outclk\,
	d => \Mux16~1_combout\,
	ena => display_sel(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_seg[4]~reg0_q\);

-- Location: LCCOMB_X30_Y17_N16
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (seg(0) & ((\Mod1|auto_generated|divider|divider|StageOut[31]~39_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[33]~41_combout\ $ (!\Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\)))) # (!seg(0) & 
-- ((\Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[33]~41_combout\)) # (!\Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\ & 
-- ((\Mod1|auto_generated|divider|divider|StageOut[31]~39_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(0),
	datab => \Mod1|auto_generated|divider|divider|StageOut[33]~41_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[31]~39_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X30_Y17_N30
\Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\Mux15~0_combout\) # (!\Mux14~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux14~3_combout\,
	datad => \Mux15~0_combout\,
	combout => \Mux15~1_combout\);

-- Location: FF_X30_Y17_N31
\display_seg[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_display~clkctrl_outclk\,
	d => \Mux15~1_combout\,
	ena => display_sel(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_seg[5]~reg0_q\);

-- Location: LCCOMB_X30_Y17_N26
\Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[31]~39_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[33]~41_combout\ & ((!\Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\) # (!seg(0))))) # 
-- (!\Mod1|auto_generated|divider|divider|StageOut[31]~39_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[33]~41_combout\ $ (\Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(0),
	datab => \Mod1|auto_generated|divider|divider|StageOut[33]~41_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[31]~39_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\,
	combout => \Mux14~4_combout\);

-- Location: LCCOMB_X30_Y17_N0
\Mux14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~5_combout\ = (!\Mux14~3_combout\) # (!\Mux14~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux14~4_combout\,
	datad => \Mux14~3_combout\,
	combout => \Mux14~5_combout\);

-- Location: FF_X30_Y17_N1
\display_seg[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_display~clkctrl_outclk\,
	d => \Mux14~5_combout\,
	ena => display_sel(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_seg[6]~reg0_q\);

-- Location: LCCOMB_X28_Y19_N12
\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = seg(3) $ (VCC)
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(seg(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => seg(3),
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X28_Y19_N14
\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (seg(4) & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!seg(4) & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!seg(4) & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg(4),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X28_Y19_N16
\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (seg(5) & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!seg(5) & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((seg(5) & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => seg(5),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X28_Y19_N18
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

-- Location: LCCOMB_X28_Y18_N26
\Div0|auto_generated|divider|divider|StageOut[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~17_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~17_combout\);

-- Location: LCCOMB_X28_Y18_N0
\Div0|auto_generated|divider|divider|StageOut[18]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~16_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & seg(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => seg(5),
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~16_combout\);

-- Location: LCCOMB_X28_Y18_N6
\Div0|auto_generated|divider|divider|StageOut[17]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~19_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~19_combout\);

-- Location: LCCOMB_X28_Y18_N4
\Div0|auto_generated|divider|divider|StageOut[17]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~18_combout\ = (seg(4) & \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => seg(4),
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~18_combout\);

-- Location: LCCOMB_X28_Y18_N10
\Div0|auto_generated|divider|divider|StageOut[16]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~21_combout\);

-- Location: LCCOMB_X28_Y18_N8
\Div0|auto_generated|divider|divider|StageOut[16]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~20_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & seg(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => seg(3),
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~20_combout\);

-- Location: LCCOMB_X28_Y18_N12
\Div0|auto_generated|divider|divider|StageOut[15]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[15]~23_combout\ = (seg(2) & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(2),
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[15]~23_combout\);

-- Location: LCCOMB_X28_Y18_N24
\Div0|auto_generated|divider|divider|StageOut[15]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[15]~22_combout\ = (seg(2) & \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(2),
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[15]~22_combout\);

-- Location: LCCOMB_X28_Y18_N14
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

-- Location: LCCOMB_X28_Y18_N16
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

-- Location: LCCOMB_X28_Y18_N18
\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[17]~19_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[17]~18_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[17]~19_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[17]~18_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[17]~19_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[17]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[17]~19_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[17]~18_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X28_Y18_N20
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

-- Location: LCCOMB_X28_Y18_N22
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

-- Location: LCCOMB_X28_Y18_N2
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

-- Location: LCCOMB_X28_Y18_N30
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

-- Location: LCCOMB_X29_Y18_N30
\Div0|auto_generated|divider|divider|StageOut[22]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~31_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (seg(3))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(3),
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~31_combout\);

-- Location: LCCOMB_X28_Y18_N28
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

-- Location: LCCOMB_X30_Y18_N4
\Div0|auto_generated|divider|divider|StageOut[21]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~27_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~27_combout\);

-- Location: LCCOMB_X29_Y18_N4
\Div0|auto_generated|divider|divider|StageOut[21]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~26_combout\ = (seg(2) & \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => seg(2),
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~26_combout\);

-- Location: LCCOMB_X29_Y18_N10
\Div0|auto_generated|divider|divider|StageOut[20]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[20]~28_combout\ = (seg(1) & \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => seg(1),
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[20]~28_combout\);

-- Location: LCCOMB_X29_Y18_N8
\Div0|auto_generated|divider|divider|StageOut[20]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[20]~29_combout\ = (seg(1) & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => seg(1),
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[20]~29_combout\);

-- Location: LCCOMB_X29_Y18_N14
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

-- Location: LCCOMB_X29_Y18_N16
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

-- Location: LCCOMB_X29_Y18_N18
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

-- Location: LCCOMB_X29_Y18_N20
\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[23]~24_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[23]~30_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[23]~24_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[23]~30_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X29_Y18_N22
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

-- Location: LCCOMB_X29_Y18_N0
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mux13~0_combout\);

-- Location: FF_X29_Y18_N1
\display_seg[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_display~clkctrl_outclk\,
	d => \Mux13~0_combout\,
	ena => display_sel(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_seg[7]~reg0_q\);

-- Location: LCCOMB_X29_Y18_N6
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mux12~0_combout\);

-- Location: FF_X29_Y18_N7
\display_seg[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_display~clkctrl_outclk\,
	d => \Mux12~0_combout\,
	ena => display_sel(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_seg[8]~reg0_q\);

-- Location: LCCOMB_X29_Y18_N24
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mux11~0_combout\);

-- Location: FF_X29_Y18_N25
\display_seg[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_display~clkctrl_outclk\,
	d => \Mux11~0_combout\,
	ena => display_sel(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_seg[9]~reg0_q\);

-- Location: LCCOMB_X29_Y18_N2
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mux10~0_combout\);

-- Location: FF_X29_Y18_N3
\display_seg[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_display~clkctrl_outclk\,
	d => \Mux10~0_combout\,
	ena => display_sel(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_seg[10]~reg0_q\);

-- Location: LCCOMB_X29_Y18_N28
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ((!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mux9~0_combout\);

-- Location: FF_X29_Y18_N29
\display_seg[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_display~clkctrl_outclk\,
	d => \Mux9~0_combout\,
	ena => display_sel(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_seg[11]~reg0_q\);

-- Location: LCCOMB_X29_Y18_N26
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mux8~0_combout\);

-- Location: FF_X29_Y18_N27
\display_seg[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_display~clkctrl_outclk\,
	d => \Mux8~0_combout\,
	ena => display_sel(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_seg[12]~reg0_q\);

-- Location: LCCOMB_X29_Y18_N12
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mux7~0_combout\);

-- Location: FF_X29_Y18_N13
\display_seg[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_display~clkctrl_outclk\,
	d => \Mux7~0_combout\,
	ena => display_sel(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_seg[13]~reg0_q\);

ww_display_min(0) <= \display_min[0]~output_o\;

ww_display_min(1) <= \display_min[1]~output_o\;

ww_display_min(2) <= \display_min[2]~output_o\;

ww_display_min(3) <= \display_min[3]~output_o\;

ww_display_min(4) <= \display_min[4]~output_o\;

ww_display_min(5) <= \display_min[5]~output_o\;

ww_display_min(6) <= \display_min[6]~output_o\;

ww_display_seg(0) <= \display_seg[0]~output_o\;

ww_display_seg(1) <= \display_seg[1]~output_o\;

ww_display_seg(2) <= \display_seg[2]~output_o\;

ww_display_seg(3) <= \display_seg[3]~output_o\;

ww_display_seg(4) <= \display_seg[4]~output_o\;

ww_display_seg(5) <= \display_seg[5]~output_o\;

ww_display_seg(6) <= \display_seg[6]~output_o\;

ww_display_seg(7) <= \display_seg[7]~output_o\;

ww_display_seg(8) <= \display_seg[8]~output_o\;

ww_display_seg(9) <= \display_seg[9]~output_o\;

ww_display_seg(10) <= \display_seg[10]~output_o\;

ww_display_seg(11) <= \display_seg[11]~output_o\;

ww_display_seg(12) <= \display_seg[12]~output_o\;

ww_display_seg(13) <= \display_seg[13]~output_o\;
END structure;


