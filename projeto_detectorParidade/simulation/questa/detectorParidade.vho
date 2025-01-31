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

-- DATE "01/24/2025 16:11:11"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	detectorParidade IS
    PORT (
	key1 : IN std_logic;
	key2 : IN std_logic;
	key3 : IN std_logic;
	led0 : OUT std_logic;
	led1 : OUT std_logic
	);
END detectorParidade;

-- Design Ports Information
-- led0	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key1	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key2	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key3	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF detectorParidade IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_key1 : std_logic;
SIGNAL ww_key2 : std_logic;
SIGNAL ww_key3 : std_logic;
SIGNAL ww_led0 : std_logic;
SIGNAL ww_led1 : std_logic;
SIGNAL \led0~output_o\ : std_logic;
SIGNAL \led1~output_o\ : std_logic;
SIGNAL \key3~input_o\ : std_logic;
SIGNAL \key1~input_o\ : std_logic;
SIGNAL \key2~input_o\ : std_logic;
SIGNAL \paridade~0_combout\ : std_logic;
SIGNAL \ALT_INV_paridade~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_key1 <= key1;
ww_key2 <= key2;
ww_key3 <= key3;
led0 <= ww_led0;
led1 <= ww_led1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_paridade~0_combout\ <= NOT \paridade~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X23_Y24_N16
\led0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_paridade~0_combout\,
	devoe => ww_devoe,
	o => \led0~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\led1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \paridade~0_combout\,
	devoe => ww_devoe,
	o => \led1~output_o\);

-- Location: IOIBUF_X34_Y12_N8
\key3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key3,
	o => \key3~input_o\);

-- Location: IOIBUF_X34_Y12_N15
\key1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key1,
	o => \key1~input_o\);

-- Location: IOIBUF_X34_Y12_N22
\key2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key2,
	o => \key2~input_o\);

-- Location: LCCOMB_X33_Y13_N8
\paridade~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \paridade~0_combout\ = \key3~input_o\ $ (\key1~input_o\ $ (\key2~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key3~input_o\,
	datab => \key1~input_o\,
	datad => \key2~input_o\,
	combout => \paridade~0_combout\);

ww_led0 <= \led0~output_o\;

ww_led1 <= \led1~output_o\;
END structure;


