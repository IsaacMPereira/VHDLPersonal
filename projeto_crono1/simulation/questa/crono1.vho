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

-- DATE "02/12/2025 12:39:49"

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

ENTITY 	crono1 IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	iniciar : IN std_logic;
	parar : IN std_logic;
	reiniciar : IN std_logic;
	display_7seg : OUT std_logic_vector(6 DOWNTO 0);
	anodos : OUT std_logic_vector(3 DOWNTO 0)
	);
END crono1;

-- Design Ports Information
-- iniciar	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parar	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_7seg[0]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_7seg[1]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_7seg[2]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_7seg[3]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_7seg[4]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_7seg[5]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_7seg[6]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- anodos[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- anodos[1]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- anodos[2]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- anodos[3]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reiniciar	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF crono1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_iniciar : std_logic;
SIGNAL ww_parar : std_logic;
SIGNAL ww_reiniciar : std_logic;
SIGNAL ww_display_7seg : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_anodos : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_1s~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \iniciar~input_o\ : std_logic;
SIGNAL \parar~input_o\ : std_logic;
SIGNAL \display_7seg[0]~output_o\ : std_logic;
SIGNAL \display_7seg[1]~output_o\ : std_logic;
SIGNAL \display_7seg[2]~output_o\ : std_logic;
SIGNAL \display_7seg[3]~output_o\ : std_logic;
SIGNAL \display_7seg[4]~output_o\ : std_logic;
SIGNAL \display_7seg[5]~output_o\ : std_logic;
SIGNAL \display_7seg[6]~output_o\ : std_logic;
SIGNAL \anodos[0]~output_o\ : std_logic;
SIGNAL \anodos[1]~output_o\ : std_logic;
SIGNAL \anodos[2]~output_o\ : std_logic;
SIGNAL \anodos[3]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \clock_div_cont[0]~25_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \clock_div_cont[0]~26\ : std_logic;
SIGNAL \clock_div_cont[1]~27_combout\ : std_logic;
SIGNAL \clock_div_cont[1]~28\ : std_logic;
SIGNAL \clock_div_cont[2]~29_combout\ : std_logic;
SIGNAL \clock_div_cont[2]~30\ : std_logic;
SIGNAL \clock_div_cont[3]~31_combout\ : std_logic;
SIGNAL \clock_div_cont[3]~32\ : std_logic;
SIGNAL \clock_div_cont[4]~33_combout\ : std_logic;
SIGNAL \clock_div_cont[4]~34\ : std_logic;
SIGNAL \clock_div_cont[5]~35_combout\ : std_logic;
SIGNAL \clock_div_cont[5]~36\ : std_logic;
SIGNAL \clock_div_cont[6]~37_combout\ : std_logic;
SIGNAL \clock_div_cont[6]~38\ : std_logic;
SIGNAL \clock_div_cont[7]~39_combout\ : std_logic;
SIGNAL \clock_div_cont[7]~40\ : std_logic;
SIGNAL \clock_div_cont[8]~41_combout\ : std_logic;
SIGNAL \clock_div_cont[8]~42\ : std_logic;
SIGNAL \clock_div_cont[9]~43_combout\ : std_logic;
SIGNAL \clock_div_cont[9]~44\ : std_logic;
SIGNAL \clock_div_cont[10]~45_combout\ : std_logic;
SIGNAL \clock_div_cont[10]~46\ : std_logic;
SIGNAL \clock_div_cont[11]~47_combout\ : std_logic;
SIGNAL \clock_div_cont[11]~48\ : std_logic;
SIGNAL \clock_div_cont[12]~49_combout\ : std_logic;
SIGNAL \clock_div_cont[12]~50\ : std_logic;
SIGNAL \clock_div_cont[13]~51_combout\ : std_logic;
SIGNAL \clock_div_cont[13]~52\ : std_logic;
SIGNAL \clock_div_cont[14]~53_combout\ : std_logic;
SIGNAL \clock_div_cont[14]~54\ : std_logic;
SIGNAL \clock_div_cont[15]~55_combout\ : std_logic;
SIGNAL \clock_div_cont[15]~56\ : std_logic;
SIGNAL \clock_div_cont[16]~57_combout\ : std_logic;
SIGNAL \clock_div_cont[16]~58\ : std_logic;
SIGNAL \clock_div_cont[17]~59_combout\ : std_logic;
SIGNAL \clock_div_cont[17]~60\ : std_logic;
SIGNAL \clock_div_cont[18]~61_combout\ : std_logic;
SIGNAL \clock_div_cont[18]~62\ : std_logic;
SIGNAL \clock_div_cont[19]~63_combout\ : std_logic;
SIGNAL \clock_div_cont[19]~64\ : std_logic;
SIGNAL \clock_div_cont[20]~65_combout\ : std_logic;
SIGNAL \clock_div_cont[20]~66\ : std_logic;
SIGNAL \clock_div_cont[21]~67_combout\ : std_logic;
SIGNAL \clock_div_cont[21]~68\ : std_logic;
SIGNAL \clock_div_cont[22]~69_combout\ : std_logic;
SIGNAL \clock_div_cont[22]~70\ : std_logic;
SIGNAL \clock_div_cont[23]~71_combout\ : std_logic;
SIGNAL \clock_div_cont[23]~72\ : std_logic;
SIGNAL \clock_div_cont[24]~73_combout\ : std_logic;
SIGNAL \clock_1s~0_combout\ : std_logic;
SIGNAL \clock_1s~feeder_combout\ : std_logic;
SIGNAL \clock_1s~q\ : std_logic;
SIGNAL \clock_1s~clkctrl_outclk\ : std_logic;
SIGNAL \reiniciar~input_o\ : std_logic;
SIGNAL \Add3~1_combout\ : std_logic;
SIGNAL \minutos~3_combout\ : std_logic;
SIGNAL \segundos[0]~8_combout\ : std_logic;
SIGNAL \segundos[0]~9\ : std_logic;
SIGNAL \segundos[1]~10_combout\ : std_logic;
SIGNAL \segundos[1]~11\ : std_logic;
SIGNAL \segundos[2]~12_combout\ : std_logic;
SIGNAL \segundos[2]~13\ : std_logic;
SIGNAL \segundos[3]~14_combout\ : std_logic;
SIGNAL \segundos[3]~15\ : std_logic;
SIGNAL \segundos[4]~16_combout\ : std_logic;
SIGNAL \segundos[4]~17\ : std_logic;
SIGNAL \segundos[5]~18_combout\ : std_logic;
SIGNAL \segundos[2]~6_combout\ : std_logic;
SIGNAL \segundos[2]~7_combout\ : std_logic;
SIGNAL \minutos[3]~0_combout\ : std_logic;
SIGNAL \minutos~1_combout\ : std_logic;
SIGNAL \minutos~4_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \minutos~2_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \display_cont[0]~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[18]~16_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[18]~17_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[17]~19_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[17]~18_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[16]~20_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[16]~21_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[15]~22_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[15]~23_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[23]~30_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[23]~24_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[22]~25_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[22]~31_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[21]~27_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[21]~26_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[20]~29_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[20]~28_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL display_cont : std_logic_vector(1 DOWNTO 0);
SIGNAL minutos : std_logic_vector(3 DOWNTO 0);
SIGNAL segundos : std_logic_vector(5 DOWNTO 0);
SIGNAL clock_div_cont : std_logic_vector(24 DOWNTO 0);
SIGNAL \ALT_INV_clock_1s~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_iniciar <= iniciar;
ww_parar <= parar;
ww_reiniciar <= reiniciar;
display_7seg <= ww_display_7seg;
anodos <= ww_anodos;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock_1s~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_1s~q\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_clock_1s~clkctrl_outclk\ <= NOT \clock_1s~clkctrl_outclk\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X30_Y0_N2
\display_7seg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => \display_7seg[0]~output_o\);

-- Location: IOOBUF_X34_Y7_N23
\display_7seg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => \display_7seg[1]~output_o\);

-- Location: IOOBUF_X34_Y5_N23
\display_7seg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => \display_7seg[2]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\display_7seg[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~0_combout\,
	devoe => ww_devoe,
	o => \display_7seg[3]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\display_7seg[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => \display_7seg[4]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\display_7seg[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \display_7seg[5]~output_o\);

-- Location: IOOBUF_X34_Y7_N16
\display_7seg[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \display_7seg[6]~output_o\);

-- Location: IOOBUF_X21_Y0_N16
\anodos[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal1~0_combout\,
	devoe => ww_devoe,
	o => \anodos[0]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\anodos[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~0_combout\,
	devoe => ww_devoe,
	o => \anodos[1]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\anodos[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => display_cont(1),
	devoe => ww_devoe,
	o => \anodos[2]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\anodos[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \anodos[3]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G2
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X33_Y4_N8
\clock_div_cont[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div_cont[0]~25_combout\ = clock_div_cont(0) $ (VCC)
-- \clock_div_cont[0]~26\ = CARRY(clock_div_cont(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clock_div_cont(0),
	datad => VCC,
	combout => \clock_div_cont[0]~25_combout\,
	cout => \clock_div_cont[0]~26\);

-- Location: IOIBUF_X34_Y2_N22
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X33_Y3_N28
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (((!clock_div_cont(20)) # (!clock_div_cont(19))) # (!clock_div_cont(21))) # (!clock_div_cont(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clock_div_cont(18),
	datab => clock_div_cont(21),
	datac => clock_div_cont(19),
	datad => clock_div_cont(20),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X32_Y4_N16
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!clock_div_cont(6) & (!clock_div_cont(8) & (!clock_div_cont(9) & !clock_div_cont(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clock_div_cont(6),
	datab => clock_div_cont(8),
	datac => clock_div_cont(9),
	datad => clock_div_cont(7),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X33_Y3_N30
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (((!clock_div_cont(12)) # (!clock_div_cont(14))) # (!clock_div_cont(13))) # (!clock_div_cont(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clock_div_cont(11),
	datab => clock_div_cont(13),
	datac => clock_div_cont(14),
	datad => clock_div_cont(12),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X33_Y4_N0
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!clock_div_cont(15) & ((\LessThan0~0_combout\) # ((!clock_div_cont(10) & \LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clock_div_cont(15),
	datab => clock_div_cont(10),
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X33_Y4_N6
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!clock_div_cont(17) & ((\LessThan0~2_combout\) # (!clock_div_cont(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clock_div_cont(17),
	datac => clock_div_cont(16),
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X33_Y4_N4
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (!clock_div_cont(23) & (((\LessThan0~4_combout\) # (\LessThan0~3_combout\)) # (!clock_div_cont(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clock_div_cont(23),
	datab => clock_div_cont(22),
	datac => \LessThan0~4_combout\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X33_Y4_N2
\LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (clock_div_cont(24) & !\LessThan0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clock_div_cont(24),
	datac => \LessThan0~5_combout\,
	combout => \LessThan0~6_combout\);

-- Location: FF_X33_Y4_N9
\clock_div_cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_div_cont[0]~25_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_div_cont(0));

-- Location: LCCOMB_X33_Y4_N10
\clock_div_cont[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div_cont[1]~27_combout\ = (clock_div_cont(1) & (!\clock_div_cont[0]~26\)) # (!clock_div_cont(1) & ((\clock_div_cont[0]~26\) # (GND)))
-- \clock_div_cont[1]~28\ = CARRY((!\clock_div_cont[0]~26\) # (!clock_div_cont(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_div_cont(1),
	datad => VCC,
	cin => \clock_div_cont[0]~26\,
	combout => \clock_div_cont[1]~27_combout\,
	cout => \clock_div_cont[1]~28\);

-- Location: FF_X33_Y4_N11
\clock_div_cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_div_cont[1]~27_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_div_cont(1));

-- Location: LCCOMB_X33_Y4_N12
\clock_div_cont[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div_cont[2]~29_combout\ = (clock_div_cont(2) & (\clock_div_cont[1]~28\ $ (GND))) # (!clock_div_cont(2) & (!\clock_div_cont[1]~28\ & VCC))
-- \clock_div_cont[2]~30\ = CARRY((clock_div_cont(2) & !\clock_div_cont[1]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_div_cont(2),
	datad => VCC,
	cin => \clock_div_cont[1]~28\,
	combout => \clock_div_cont[2]~29_combout\,
	cout => \clock_div_cont[2]~30\);

-- Location: FF_X33_Y4_N13
\clock_div_cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_div_cont[2]~29_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_div_cont(2));

-- Location: LCCOMB_X33_Y4_N14
\clock_div_cont[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div_cont[3]~31_combout\ = (clock_div_cont(3) & (!\clock_div_cont[2]~30\)) # (!clock_div_cont(3) & ((\clock_div_cont[2]~30\) # (GND)))
-- \clock_div_cont[3]~32\ = CARRY((!\clock_div_cont[2]~30\) # (!clock_div_cont(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_div_cont(3),
	datad => VCC,
	cin => \clock_div_cont[2]~30\,
	combout => \clock_div_cont[3]~31_combout\,
	cout => \clock_div_cont[3]~32\);

-- Location: FF_X33_Y4_N15
\clock_div_cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_div_cont[3]~31_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_div_cont(3));

-- Location: LCCOMB_X33_Y4_N16
\clock_div_cont[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div_cont[4]~33_combout\ = (clock_div_cont(4) & (\clock_div_cont[3]~32\ $ (GND))) # (!clock_div_cont(4) & (!\clock_div_cont[3]~32\ & VCC))
-- \clock_div_cont[4]~34\ = CARRY((clock_div_cont(4) & !\clock_div_cont[3]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_div_cont(4),
	datad => VCC,
	cin => \clock_div_cont[3]~32\,
	combout => \clock_div_cont[4]~33_combout\,
	cout => \clock_div_cont[4]~34\);

-- Location: FF_X33_Y4_N17
\clock_div_cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_div_cont[4]~33_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_div_cont(4));

-- Location: LCCOMB_X33_Y4_N18
\clock_div_cont[5]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div_cont[5]~35_combout\ = (clock_div_cont(5) & (!\clock_div_cont[4]~34\)) # (!clock_div_cont(5) & ((\clock_div_cont[4]~34\) # (GND)))
-- \clock_div_cont[5]~36\ = CARRY((!\clock_div_cont[4]~34\) # (!clock_div_cont(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_div_cont(5),
	datad => VCC,
	cin => \clock_div_cont[4]~34\,
	combout => \clock_div_cont[5]~35_combout\,
	cout => \clock_div_cont[5]~36\);

-- Location: FF_X33_Y4_N19
\clock_div_cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_div_cont[5]~35_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_div_cont(5));

-- Location: LCCOMB_X33_Y4_N20
\clock_div_cont[6]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div_cont[6]~37_combout\ = (clock_div_cont(6) & (\clock_div_cont[5]~36\ $ (GND))) # (!clock_div_cont(6) & (!\clock_div_cont[5]~36\ & VCC))
-- \clock_div_cont[6]~38\ = CARRY((clock_div_cont(6) & !\clock_div_cont[5]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_div_cont(6),
	datad => VCC,
	cin => \clock_div_cont[5]~36\,
	combout => \clock_div_cont[6]~37_combout\,
	cout => \clock_div_cont[6]~38\);

-- Location: FF_X33_Y4_N21
\clock_div_cont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_div_cont[6]~37_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_div_cont(6));

-- Location: LCCOMB_X33_Y4_N22
\clock_div_cont[7]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div_cont[7]~39_combout\ = (clock_div_cont(7) & (!\clock_div_cont[6]~38\)) # (!clock_div_cont(7) & ((\clock_div_cont[6]~38\) # (GND)))
-- \clock_div_cont[7]~40\ = CARRY((!\clock_div_cont[6]~38\) # (!clock_div_cont(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_div_cont(7),
	datad => VCC,
	cin => \clock_div_cont[6]~38\,
	combout => \clock_div_cont[7]~39_combout\,
	cout => \clock_div_cont[7]~40\);

-- Location: FF_X33_Y4_N23
\clock_div_cont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_div_cont[7]~39_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_div_cont(7));

-- Location: LCCOMB_X33_Y4_N24
\clock_div_cont[8]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div_cont[8]~41_combout\ = (clock_div_cont(8) & (\clock_div_cont[7]~40\ $ (GND))) # (!clock_div_cont(8) & (!\clock_div_cont[7]~40\ & VCC))
-- \clock_div_cont[8]~42\ = CARRY((clock_div_cont(8) & !\clock_div_cont[7]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_div_cont(8),
	datad => VCC,
	cin => \clock_div_cont[7]~40\,
	combout => \clock_div_cont[8]~41_combout\,
	cout => \clock_div_cont[8]~42\);

-- Location: FF_X33_Y4_N25
\clock_div_cont[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_div_cont[8]~41_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_div_cont(8));

-- Location: LCCOMB_X33_Y4_N26
\clock_div_cont[9]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div_cont[9]~43_combout\ = (clock_div_cont(9) & (!\clock_div_cont[8]~42\)) # (!clock_div_cont(9) & ((\clock_div_cont[8]~42\) # (GND)))
-- \clock_div_cont[9]~44\ = CARRY((!\clock_div_cont[8]~42\) # (!clock_div_cont(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_div_cont(9),
	datad => VCC,
	cin => \clock_div_cont[8]~42\,
	combout => \clock_div_cont[9]~43_combout\,
	cout => \clock_div_cont[9]~44\);

-- Location: FF_X33_Y4_N27
\clock_div_cont[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_div_cont[9]~43_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_div_cont(9));

-- Location: LCCOMB_X33_Y4_N28
\clock_div_cont[10]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div_cont[10]~45_combout\ = (clock_div_cont(10) & (\clock_div_cont[9]~44\ $ (GND))) # (!clock_div_cont(10) & (!\clock_div_cont[9]~44\ & VCC))
-- \clock_div_cont[10]~46\ = CARRY((clock_div_cont(10) & !\clock_div_cont[9]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_div_cont(10),
	datad => VCC,
	cin => \clock_div_cont[9]~44\,
	combout => \clock_div_cont[10]~45_combout\,
	cout => \clock_div_cont[10]~46\);

-- Location: FF_X33_Y4_N29
\clock_div_cont[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_div_cont[10]~45_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_div_cont(10));

-- Location: LCCOMB_X33_Y4_N30
\clock_div_cont[11]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div_cont[11]~47_combout\ = (clock_div_cont(11) & (!\clock_div_cont[10]~46\)) # (!clock_div_cont(11) & ((\clock_div_cont[10]~46\) # (GND)))
-- \clock_div_cont[11]~48\ = CARRY((!\clock_div_cont[10]~46\) # (!clock_div_cont(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_div_cont(11),
	datad => VCC,
	cin => \clock_div_cont[10]~46\,
	combout => \clock_div_cont[11]~47_combout\,
	cout => \clock_div_cont[11]~48\);

-- Location: FF_X33_Y4_N31
\clock_div_cont[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_div_cont[11]~47_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_div_cont(11));

-- Location: LCCOMB_X33_Y3_N0
\clock_div_cont[12]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div_cont[12]~49_combout\ = (clock_div_cont(12) & (\clock_div_cont[11]~48\ $ (GND))) # (!clock_div_cont(12) & (!\clock_div_cont[11]~48\ & VCC))
-- \clock_div_cont[12]~50\ = CARRY((clock_div_cont(12) & !\clock_div_cont[11]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_div_cont(12),
	datad => VCC,
	cin => \clock_div_cont[11]~48\,
	combout => \clock_div_cont[12]~49_combout\,
	cout => \clock_div_cont[12]~50\);

-- Location: FF_X33_Y3_N1
\clock_div_cont[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_div_cont[12]~49_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_div_cont(12));

-- Location: LCCOMB_X33_Y3_N2
\clock_div_cont[13]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div_cont[13]~51_combout\ = (clock_div_cont(13) & (!\clock_div_cont[12]~50\)) # (!clock_div_cont(13) & ((\clock_div_cont[12]~50\) # (GND)))
-- \clock_div_cont[13]~52\ = CARRY((!\clock_div_cont[12]~50\) # (!clock_div_cont(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_div_cont(13),
	datad => VCC,
	cin => \clock_div_cont[12]~50\,
	combout => \clock_div_cont[13]~51_combout\,
	cout => \clock_div_cont[13]~52\);

-- Location: FF_X33_Y3_N3
\clock_div_cont[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_div_cont[13]~51_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_div_cont(13));

-- Location: LCCOMB_X33_Y3_N4
\clock_div_cont[14]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div_cont[14]~53_combout\ = (clock_div_cont(14) & (\clock_div_cont[13]~52\ $ (GND))) # (!clock_div_cont(14) & (!\clock_div_cont[13]~52\ & VCC))
-- \clock_div_cont[14]~54\ = CARRY((clock_div_cont(14) & !\clock_div_cont[13]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_div_cont(14),
	datad => VCC,
	cin => \clock_div_cont[13]~52\,
	combout => \clock_div_cont[14]~53_combout\,
	cout => \clock_div_cont[14]~54\);

-- Location: FF_X33_Y3_N5
\clock_div_cont[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_div_cont[14]~53_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_div_cont(14));

-- Location: LCCOMB_X33_Y3_N6
\clock_div_cont[15]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div_cont[15]~55_combout\ = (clock_div_cont(15) & (!\clock_div_cont[14]~54\)) # (!clock_div_cont(15) & ((\clock_div_cont[14]~54\) # (GND)))
-- \clock_div_cont[15]~56\ = CARRY((!\clock_div_cont[14]~54\) # (!clock_div_cont(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_div_cont(15),
	datad => VCC,
	cin => \clock_div_cont[14]~54\,
	combout => \clock_div_cont[15]~55_combout\,
	cout => \clock_div_cont[15]~56\);

-- Location: FF_X33_Y3_N7
\clock_div_cont[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_div_cont[15]~55_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_div_cont(15));

-- Location: LCCOMB_X33_Y3_N8
\clock_div_cont[16]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div_cont[16]~57_combout\ = (clock_div_cont(16) & (\clock_div_cont[15]~56\ $ (GND))) # (!clock_div_cont(16) & (!\clock_div_cont[15]~56\ & VCC))
-- \clock_div_cont[16]~58\ = CARRY((clock_div_cont(16) & !\clock_div_cont[15]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_div_cont(16),
	datad => VCC,
	cin => \clock_div_cont[15]~56\,
	combout => \clock_div_cont[16]~57_combout\,
	cout => \clock_div_cont[16]~58\);

-- Location: FF_X33_Y3_N9
\clock_div_cont[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_div_cont[16]~57_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_div_cont(16));

-- Location: LCCOMB_X33_Y3_N10
\clock_div_cont[17]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div_cont[17]~59_combout\ = (clock_div_cont(17) & (!\clock_div_cont[16]~58\)) # (!clock_div_cont(17) & ((\clock_div_cont[16]~58\) # (GND)))
-- \clock_div_cont[17]~60\ = CARRY((!\clock_div_cont[16]~58\) # (!clock_div_cont(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_div_cont(17),
	datad => VCC,
	cin => \clock_div_cont[16]~58\,
	combout => \clock_div_cont[17]~59_combout\,
	cout => \clock_div_cont[17]~60\);

-- Location: FF_X33_Y3_N11
\clock_div_cont[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_div_cont[17]~59_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_div_cont(17));

-- Location: LCCOMB_X33_Y3_N12
\clock_div_cont[18]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div_cont[18]~61_combout\ = (clock_div_cont(18) & (\clock_div_cont[17]~60\ $ (GND))) # (!clock_div_cont(18) & (!\clock_div_cont[17]~60\ & VCC))
-- \clock_div_cont[18]~62\ = CARRY((clock_div_cont(18) & !\clock_div_cont[17]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_div_cont(18),
	datad => VCC,
	cin => \clock_div_cont[17]~60\,
	combout => \clock_div_cont[18]~61_combout\,
	cout => \clock_div_cont[18]~62\);

-- Location: FF_X33_Y3_N13
\clock_div_cont[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_div_cont[18]~61_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_div_cont(18));

-- Location: LCCOMB_X33_Y3_N14
\clock_div_cont[19]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div_cont[19]~63_combout\ = (clock_div_cont(19) & (!\clock_div_cont[18]~62\)) # (!clock_div_cont(19) & ((\clock_div_cont[18]~62\) # (GND)))
-- \clock_div_cont[19]~64\ = CARRY((!\clock_div_cont[18]~62\) # (!clock_div_cont(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_div_cont(19),
	datad => VCC,
	cin => \clock_div_cont[18]~62\,
	combout => \clock_div_cont[19]~63_combout\,
	cout => \clock_div_cont[19]~64\);

-- Location: FF_X33_Y3_N15
\clock_div_cont[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_div_cont[19]~63_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_div_cont(19));

-- Location: LCCOMB_X33_Y3_N16
\clock_div_cont[20]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div_cont[20]~65_combout\ = (clock_div_cont(20) & (\clock_div_cont[19]~64\ $ (GND))) # (!clock_div_cont(20) & (!\clock_div_cont[19]~64\ & VCC))
-- \clock_div_cont[20]~66\ = CARRY((clock_div_cont(20) & !\clock_div_cont[19]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_div_cont(20),
	datad => VCC,
	cin => \clock_div_cont[19]~64\,
	combout => \clock_div_cont[20]~65_combout\,
	cout => \clock_div_cont[20]~66\);

-- Location: FF_X33_Y3_N17
\clock_div_cont[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_div_cont[20]~65_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_div_cont(20));

-- Location: LCCOMB_X33_Y3_N18
\clock_div_cont[21]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div_cont[21]~67_combout\ = (clock_div_cont(21) & (!\clock_div_cont[20]~66\)) # (!clock_div_cont(21) & ((\clock_div_cont[20]~66\) # (GND)))
-- \clock_div_cont[21]~68\ = CARRY((!\clock_div_cont[20]~66\) # (!clock_div_cont(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_div_cont(21),
	datad => VCC,
	cin => \clock_div_cont[20]~66\,
	combout => \clock_div_cont[21]~67_combout\,
	cout => \clock_div_cont[21]~68\);

-- Location: FF_X33_Y3_N19
\clock_div_cont[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_div_cont[21]~67_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_div_cont(21));

-- Location: LCCOMB_X33_Y3_N20
\clock_div_cont[22]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div_cont[22]~69_combout\ = (clock_div_cont(22) & (\clock_div_cont[21]~68\ $ (GND))) # (!clock_div_cont(22) & (!\clock_div_cont[21]~68\ & VCC))
-- \clock_div_cont[22]~70\ = CARRY((clock_div_cont(22) & !\clock_div_cont[21]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_div_cont(22),
	datad => VCC,
	cin => \clock_div_cont[21]~68\,
	combout => \clock_div_cont[22]~69_combout\,
	cout => \clock_div_cont[22]~70\);

-- Location: FF_X33_Y3_N21
\clock_div_cont[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_div_cont[22]~69_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_div_cont(22));

-- Location: LCCOMB_X33_Y3_N22
\clock_div_cont[23]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div_cont[23]~71_combout\ = (clock_div_cont(23) & (!\clock_div_cont[22]~70\)) # (!clock_div_cont(23) & ((\clock_div_cont[22]~70\) # (GND)))
-- \clock_div_cont[23]~72\ = CARRY((!\clock_div_cont[22]~70\) # (!clock_div_cont(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_div_cont(23),
	datad => VCC,
	cin => \clock_div_cont[22]~70\,
	combout => \clock_div_cont[23]~71_combout\,
	cout => \clock_div_cont[23]~72\);

-- Location: FF_X33_Y3_N23
\clock_div_cont[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_div_cont[23]~71_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_div_cont(23));

-- Location: LCCOMB_X33_Y3_N24
\clock_div_cont[24]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div_cont[24]~73_combout\ = \clock_div_cont[23]~72\ $ (!clock_div_cont(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => clock_div_cont(24),
	cin => \clock_div_cont[23]~72\,
	combout => \clock_div_cont[24]~73_combout\);

-- Location: FF_X33_Y3_N25
\clock_div_cont[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_div_cont[24]~73_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_div_cont(24));

-- Location: LCCOMB_X33_Y8_N0
\clock_1s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s~0_combout\ = \clock_1s~q\ $ (((clock_div_cont(24) & !\LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clock_div_cont(24),
	datac => \clock_1s~q\,
	datad => \LessThan0~5_combout\,
	combout => \clock_1s~0_combout\);

-- Location: LCCOMB_X33_Y8_N24
\clock_1s~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s~feeder_combout\ = \clock_1s~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_1s~0_combout\,
	combout => \clock_1s~feeder_combout\);

-- Location: FF_X33_Y8_N25
clock_1s : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_1s~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1s~q\);

-- Location: CLKCTRL_G8
\clock_1s~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_1s~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_1s~clkctrl_outclk\);

-- Location: IOIBUF_X34_Y12_N15
\reiniciar~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reiniciar,
	o => \reiniciar~input_o\);

-- Location: LCCOMB_X30_Y8_N12
\Add3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~1_combout\ = minutos(2) $ (((minutos(0) & minutos(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => minutos(0),
	datac => minutos(2),
	datad => minutos(1),
	combout => \Add3~1_combout\);

-- Location: LCCOMB_X30_Y8_N4
\minutos~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutos~3_combout\ = (\Add3~1_combout\ & (\reiniciar~input_o\ & \minutos[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~1_combout\,
	datac => \reiniciar~input_o\,
	datad => \minutos[3]~0_combout\,
	combout => \minutos~3_combout\);

-- Location: LCCOMB_X30_Y8_N14
\segundos[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \segundos[0]~8_combout\ = segundos(0) $ (VCC)
-- \segundos[0]~9\ = CARRY(segundos(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => segundos(0),
	datad => VCC,
	combout => \segundos[0]~8_combout\,
	cout => \segundos[0]~9\);

-- Location: FF_X30_Y8_N15
\segundos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_1s~clkctrl_outclk\,
	d => \segundos[0]~8_combout\,
	clrn => \reset~input_o\,
	sclr => \segundos[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => segundos(0));

-- Location: LCCOMB_X30_Y8_N16
\segundos[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \segundos[1]~10_combout\ = (segundos(1) & (!\segundos[0]~9\)) # (!segundos(1) & ((\segundos[0]~9\) # (GND)))
-- \segundos[1]~11\ = CARRY((!\segundos[0]~9\) # (!segundos(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => segundos(1),
	datad => VCC,
	cin => \segundos[0]~9\,
	combout => \segundos[1]~10_combout\,
	cout => \segundos[1]~11\);

-- Location: FF_X30_Y8_N17
\segundos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_1s~clkctrl_outclk\,
	d => \segundos[1]~10_combout\,
	clrn => \reset~input_o\,
	sclr => \segundos[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => segundos(1));

-- Location: LCCOMB_X30_Y8_N18
\segundos[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \segundos[2]~12_combout\ = (segundos(2) & (\segundos[1]~11\ $ (GND))) # (!segundos(2) & (!\segundos[1]~11\ & VCC))
-- \segundos[2]~13\ = CARRY((segundos(2) & !\segundos[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => segundos(2),
	datad => VCC,
	cin => \segundos[1]~11\,
	combout => \segundos[2]~12_combout\,
	cout => \segundos[2]~13\);

-- Location: FF_X30_Y8_N19
\segundos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_1s~clkctrl_outclk\,
	d => \segundos[2]~12_combout\,
	clrn => \reset~input_o\,
	sclr => \segundos[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => segundos(2));

-- Location: LCCOMB_X30_Y8_N20
\segundos[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \segundos[3]~14_combout\ = (segundos(3) & (!\segundos[2]~13\)) # (!segundos(3) & ((\segundos[2]~13\) # (GND)))
-- \segundos[3]~15\ = CARRY((!\segundos[2]~13\) # (!segundos(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => segundos(3),
	datad => VCC,
	cin => \segundos[2]~13\,
	combout => \segundos[3]~14_combout\,
	cout => \segundos[3]~15\);

-- Location: FF_X30_Y8_N21
\segundos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_1s~clkctrl_outclk\,
	d => \segundos[3]~14_combout\,
	clrn => \reset~input_o\,
	sclr => \segundos[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => segundos(3));

-- Location: LCCOMB_X30_Y8_N22
\segundos[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \segundos[4]~16_combout\ = (segundos(4) & (\segundos[3]~15\ $ (GND))) # (!segundos(4) & (!\segundos[3]~15\ & VCC))
-- \segundos[4]~17\ = CARRY((segundos(4) & !\segundos[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => segundos(4),
	datad => VCC,
	cin => \segundos[3]~15\,
	combout => \segundos[4]~16_combout\,
	cout => \segundos[4]~17\);

-- Location: FF_X30_Y8_N23
\segundos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_1s~clkctrl_outclk\,
	d => \segundos[4]~16_combout\,
	clrn => \reset~input_o\,
	sclr => \segundos[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => segundos(4));

-- Location: LCCOMB_X30_Y8_N24
\segundos[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \segundos[5]~18_combout\ = \segundos[4]~17\ $ (segundos(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => segundos(5),
	cin => \segundos[4]~17\,
	combout => \segundos[5]~18_combout\);

-- Location: FF_X30_Y8_N25
\segundos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_1s~clkctrl_outclk\,
	d => \segundos[5]~18_combout\,
	clrn => \reset~input_o\,
	sclr => \segundos[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => segundos(5));

-- Location: LCCOMB_X30_Y8_N6
\segundos[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \segundos[2]~6_combout\ = ((!segundos(2) & ((!segundos(1)) # (!segundos(0))))) # (!segundos(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => segundos(5),
	datab => segundos(2),
	datac => segundos(0),
	datad => segundos(1),
	combout => \segundos[2]~6_combout\);

-- Location: LCCOMB_X30_Y8_N8
\segundos[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \segundos[2]~7_combout\ = ((segundos(3) & (segundos(4) & !\segundos[2]~6_combout\))) # (!\reiniciar~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reiniciar~input_o\,
	datab => segundos(3),
	datac => segundos(4),
	datad => \segundos[2]~6_combout\,
	combout => \segundos[2]~7_combout\);

-- Location: FF_X30_Y8_N5
\minutos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_1s~clkctrl_outclk\,
	d => \minutos~3_combout\,
	clrn => \reset~input_o\,
	ena => \segundos[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minutos(2));

-- Location: LCCOMB_X30_Y8_N28
\minutos[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutos[3]~0_combout\ = ((!minutos(1) & (!minutos(0) & !minutos(2)))) # (!minutos(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minutos(1),
	datab => minutos(0),
	datac => minutos(2),
	datad => minutos(3),
	combout => \minutos[3]~0_combout\);

-- Location: LCCOMB_X30_Y8_N0
\minutos~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutos~1_combout\ = (\reiniciar~input_o\ & (!minutos(0) & \minutos[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reiniciar~input_o\,
	datac => minutos(0),
	datad => \minutos[3]~0_combout\,
	combout => \minutos~1_combout\);

-- Location: FF_X30_Y8_N1
\minutos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_1s~clkctrl_outclk\,
	d => \minutos~1_combout\,
	clrn => \reset~input_o\,
	ena => \segundos[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minutos(0));

-- Location: LCCOMB_X30_Y8_N10
\minutos~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutos~4_combout\ = (\reiniciar~input_o\ & (\minutos[3]~0_combout\ & (minutos(0) $ (minutos(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reiniciar~input_o\,
	datab => minutos(0),
	datac => minutos(1),
	datad => \minutos[3]~0_combout\,
	combout => \minutos~4_combout\);

-- Location: FF_X30_Y8_N11
\minutos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_1s~clkctrl_outclk\,
	d => \minutos~4_combout\,
	clrn => \reset~input_o\,
	ena => \segundos[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minutos(1));

-- Location: LCCOMB_X30_Y8_N26
\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = minutos(3) $ (((minutos(1) & (minutos(0) & minutos(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minutos(1),
	datab => minutos(0),
	datac => minutos(2),
	datad => minutos(3),
	combout => \Add3~0_combout\);

-- Location: LCCOMB_X30_Y8_N2
\minutos~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutos~2_combout\ = (\reiniciar~input_o\ & (\Add3~0_combout\ & \minutos[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reiniciar~input_o\,
	datac => \Add3~0_combout\,
	datad => \minutos[3]~0_combout\,
	combout => \minutos~2_combout\);

-- Location: FF_X30_Y8_N3
\minutos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_1s~clkctrl_outclk\,
	d => \minutos~2_combout\,
	clrn => \reset~input_o\,
	ena => \segundos[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minutos(3));

-- Location: FF_X32_Y7_N11
\display_cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_1s~clkctrl_outclk\,
	asdata => \Equal0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_cont(1));

-- Location: LCCOMB_X32_Y7_N18
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (display_cont(0)) # (display_cont(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => display_cont(0),
	datad => display_cont(1),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X32_Y7_N20
\display_cont[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_cont[0]~0_combout\ = !\Equal1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Equal1~0_combout\,
	combout => \display_cont[0]~0_combout\);

-- Location: FF_X32_Y7_N21
\display_cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_1s~clkctrl_outclk\,
	d => \display_cont[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_cont(0));

-- Location: LCCOMB_X32_Y7_N26
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!display_cont(1) & display_cont(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display_cont(1),
	datad => display_cont(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X32_Y9_N24
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = minutos(1) $ (VCC)
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(minutos(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minutos(1),
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X32_Y9_N26
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (minutos(2) & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!minutos(2) & (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!minutos(2) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => minutos(2),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X32_Y9_N28
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (minutos(3) & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!minutos(3) & (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((minutos(3) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => minutos(3),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X32_Y9_N30
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

-- Location: LCCOMB_X32_Y9_N4
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\Equal0~0_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (minutos(3))) # (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minutos(3),
	datab => \Equal0~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X31_Y8_N18
\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = segundos(3) $ (VCC)
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(segundos(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => segundos(3),
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X31_Y8_N20
\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (segundos(4) & (\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!segundos(4) & (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!segundos(4) & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => segundos(4),
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X31_Y8_N22
\Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (segundos(5) & (\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!segundos(5) & (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((segundos(5) & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => segundos(5),
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X31_Y8_N24
\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X31_Y8_N16
\Div1|auto_generated|divider|divider|StageOut[18]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[18]~16_combout\ = (segundos(5) & \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => segundos(5),
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[18]~16_combout\);

-- Location: LCCOMB_X31_Y8_N6
\Div1|auto_generated|divider|divider|StageOut[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[18]~17_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[18]~17_combout\);

-- Location: LCCOMB_X31_Y8_N26
\Div1|auto_generated|divider|divider|StageOut[17]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[17]~19_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[17]~19_combout\);

-- Location: LCCOMB_X31_Y8_N4
\Div1|auto_generated|divider|divider|StageOut[17]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[17]~18_combout\ = (segundos(4) & \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => segundos(4),
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[17]~18_combout\);

-- Location: LCCOMB_X31_Y8_N8
\Div1|auto_generated|divider|divider|StageOut[16]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[16]~20_combout\ = (segundos(3) & \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => segundos(3),
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[16]~20_combout\);

-- Location: LCCOMB_X31_Y8_N10
\Div1|auto_generated|divider|divider|StageOut[16]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[16]~21_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[16]~21_combout\);

-- Location: LCCOMB_X32_Y8_N30
\Div1|auto_generated|divider|divider|StageOut[15]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[15]~22_combout\ = (segundos(2) & \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => segundos(2),
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[15]~22_combout\);

-- Location: LCCOMB_X32_Y8_N26
\Div1|auto_generated|divider|divider|StageOut[15]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[15]~23_combout\ = (segundos(2) & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => segundos(2),
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[15]~23_combout\);

-- Location: LCCOMB_X32_Y8_N0
\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[15]~22_combout\) # (\Div1|auto_generated|divider|divider|StageOut[15]~23_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[15]~22_combout\) # (\Div1|auto_generated|divider|divider|StageOut[15]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[15]~22_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[15]~23_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X32_Y8_N2
\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[16]~20_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[16]~21_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[16]~20_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[16]~21_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[16]~20_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[16]~21_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[16]~20_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[16]~21_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X32_Y8_N4
\Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[17]~19_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[17]~18_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[17]~19_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[17]~18_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[17]~19_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[17]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[17]~19_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[17]~18_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X32_Y8_N6
\Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[18]~16_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[18]~17_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[18]~16_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[18]~17_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X32_Y8_N8
\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X32_Y9_N20
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\Equal0~0_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (minutos(1))) # (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minutos(1),
	datab => \Equal0~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X32_Y7_N28
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux2~0_combout\) # ((!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & display_cont(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mux2~0_combout\,
	datad => display_cont(1),
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X32_Y9_N22
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\Equal0~0_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((minutos(2)))) # (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Equal0~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => minutos(2),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X32_Y7_N22
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux1~0_combout\) # ((display_cont(1) & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display_cont(1),
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X32_Y9_N6
\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\ = CARRY(minutos(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minutos(1),
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\);

-- Location: LCCOMB_X32_Y9_N8
\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3_cout\ = CARRY((!minutos(2) & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => minutos(2),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3_cout\);

-- Location: LCCOMB_X32_Y9_N10
\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_cout\ = CARRY((minutos(3) & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => minutos(3),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_cout\);

-- Location: LCCOMB_X32_Y9_N12
\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X32_Y7_N10
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!display_cont(1) & ((display_cont(0) & (minutos(0))) # (!display_cont(0) & ((!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minutos(0),
	datab => display_cont(0),
	datac => display_cont(1),
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X31_Y8_N0
\Div1|auto_generated|divider|divider|StageOut[23]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[23]~30_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((segundos(4)))) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datab => segundos(4),
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[23]~30_combout\);

-- Location: LCCOMB_X32_Y8_N24
\Div1|auto_generated|divider|divider|StageOut[23]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[23]~24_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[23]~24_combout\);

-- Location: LCCOMB_X32_Y8_N22
\Div1|auto_generated|divider|divider|StageOut[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[22]~25_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[22]~25_combout\);

-- Location: LCCOMB_X31_Y8_N30
\Div1|auto_generated|divider|divider|StageOut[22]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[22]~31_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((segundos(3)))) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => segundos(3),
	combout => \Div1|auto_generated|divider|divider|StageOut[22]~31_combout\);

-- Location: LCCOMB_X32_Y8_N10
\Div1|auto_generated|divider|divider|StageOut[21]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[21]~27_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[21]~27_combout\);

-- Location: LCCOMB_X32_Y8_N28
\Div1|auto_generated|divider|divider|StageOut[21]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[21]~26_combout\ = (segundos(2) & \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => segundos(2),
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[21]~26_combout\);

-- Location: LCCOMB_X31_Y8_N14
\Div1|auto_generated|divider|divider|StageOut[20]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[20]~29_combout\ = (segundos(1) & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => segundos(1),
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[20]~29_combout\);

-- Location: LCCOMB_X31_Y8_N28
\Div1|auto_generated|divider|divider|StageOut[20]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[20]~28_combout\ = (segundos(1) & \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => segundos(1),
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[20]~28_combout\);

-- Location: LCCOMB_X32_Y8_N12
\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[20]~29_combout\) # (\Div1|auto_generated|divider|divider|StageOut[20]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[20]~29_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[20]~28_combout\,
	datad => VCC,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\);

-- Location: LCCOMB_X32_Y8_N14
\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[21]~27_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[21]~26_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[21]~27_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[21]~26_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\);

-- Location: LCCOMB_X32_Y8_N16
\Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\ & ((\Div1|auto_generated|divider|divider|StageOut[22]~25_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[22]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[22]~25_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[22]~31_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\);

-- Location: LCCOMB_X32_Y8_N18
\Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[23]~30_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[23]~24_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[23]~30_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[23]~24_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X32_Y8_N20
\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X32_Y7_N24
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\) # ((display_cont(1) & !\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display_cont(1),
	datac => \Mux3~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X32_Y7_N4
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\Mux2~1_combout\ & (\Mux0~0_combout\)) # (!\Mux2~1_combout\ & (\Mux1~1_combout\ $ (((!\Mux0~0_combout\ & \Mux3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \Mux2~1_combout\,
	datac => \Mux1~1_combout\,
	datad => \Mux3~1_combout\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X32_Y7_N14
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\Mux0~0_combout\ & ((\Mux2~1_combout\) # ((\Mux1~1_combout\)))) # (!\Mux0~0_combout\ & (\Mux1~1_combout\ & (\Mux2~1_combout\ $ (\Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \Mux2~1_combout\,
	datac => \Mux1~1_combout\,
	datad => \Mux3~1_combout\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X32_Y7_N8
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\Mux1~1_combout\ & (\Mux0~0_combout\)) # (!\Mux1~1_combout\ & (\Mux2~1_combout\ & ((\Mux0~0_combout\) # (!\Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \Mux2~1_combout\,
	datac => \Mux1~1_combout\,
	datad => \Mux3~1_combout\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X32_Y7_N30
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\Mux2~1_combout\ & ((\Mux0~0_combout\) # ((\Mux1~1_combout\ & \Mux3~1_combout\)))) # (!\Mux2~1_combout\ & (\Mux1~1_combout\ $ (((!\Mux0~0_combout\ & \Mux3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \Mux2~1_combout\,
	datac => \Mux1~1_combout\,
	datad => \Mux3~1_combout\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X32_Y7_N12
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Mux3~1_combout\) # ((\Mux2~1_combout\ & (\Mux0~0_combout\)) # (!\Mux2~1_combout\ & ((\Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \Mux2~1_combout\,
	datac => \Mux1~1_combout\,
	datad => \Mux3~1_combout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X32_Y7_N2
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\Mux1~1_combout\ & ((\Mux0~0_combout\) # ((\Mux2~1_combout\ & \Mux3~1_combout\)))) # (!\Mux1~1_combout\ & ((\Mux2~1_combout\) # ((!\Mux0~0_combout\ & \Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \Mux2~1_combout\,
	datac => \Mux1~1_combout\,
	datad => \Mux3~1_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X32_Y7_N16
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\Mux2~1_combout\ & (!\Mux0~0_combout\ & ((!\Mux3~1_combout\) # (!\Mux1~1_combout\)))) # (!\Mux2~1_combout\ & (\Mux0~0_combout\ $ ((\Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \Mux2~1_combout\,
	datac => \Mux1~1_combout\,
	datad => \Mux3~1_combout\,
	combout => \Mux4~0_combout\);

-- Location: IOIBUF_X34_Y12_N8
\iniciar~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iniciar,
	o => \iniciar~input_o\);

-- Location: IOIBUF_X34_Y12_N22
\parar~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parar,
	o => \parar~input_o\);

ww_display_7seg(0) <= \display_7seg[0]~output_o\;

ww_display_7seg(1) <= \display_7seg[1]~output_o\;

ww_display_7seg(2) <= \display_7seg[2]~output_o\;

ww_display_7seg(3) <= \display_7seg[3]~output_o\;

ww_display_7seg(4) <= \display_7seg[4]~output_o\;

ww_display_7seg(5) <= \display_7seg[5]~output_o\;

ww_display_7seg(6) <= \display_7seg[6]~output_o\;

ww_anodos(0) <= \anodos[0]~output_o\;

ww_anodos(1) <= \anodos[1]~output_o\;

ww_anodos(2) <= \anodos[2]~output_o\;

ww_anodos(3) <= \anodos[3]~output_o\;
END structure;


