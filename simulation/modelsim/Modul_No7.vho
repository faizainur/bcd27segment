-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "02/27/2019 12:09:26"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	display_7segment IS
    PORT (
	selector : IN std_logic_vector(3 DOWNTO 0);
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	C : IN std_logic_vector(3 DOWNTO 0);
	D : IN std_logic_vector(3 DOWNTO 0);
	out_seg : OUT std_logic_vector(6 DOWNTO 0)
	);
END display_7segment;

-- Design Ports Information
-- out_seg[0]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_seg[1]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_seg[2]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_seg[3]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_seg[4]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_seg[5]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_seg[6]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[3]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selector[0]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selector[1]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selector[2]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selector[3]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[1]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[2]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[0]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[0]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF display_7segment IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_selector : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_C : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_D : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_out_seg : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \C[2]~input_o\ : std_logic;
SIGNAL \D[2]~input_o\ : std_logic;
SIGNAL \selector[2]~input_o\ : std_logic;
SIGNAL \selector[3]~input_o\ : std_logic;
SIGNAL \selector[1]~input_o\ : std_logic;
SIGNAL \MUX4|Equal1~0_combout\ : std_logic;
SIGNAL \selector[0]~input_o\ : std_logic;
SIGNAL \MUX4|out_mux4[3]~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \MUX4|out_mux4[2]~3_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \D[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \C[1]~input_o\ : std_logic;
SIGNAL \MUX4|out_mux4[1]~2_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \D[0]~input_o\ : std_logic;
SIGNAL \C[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \MUX4|out_mux4[0]~4_combout\ : std_logic;
SIGNAL \D[3]~input_o\ : std_logic;
SIGNAL \C[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \MUX4|out_mux4[3]~1_combout\ : std_logic;
SIGNAL \DECODER|out_seg[0]~0_combout\ : std_logic;
SIGNAL \DECODER|out_seg[1]~1_combout\ : std_logic;
SIGNAL \DECODER|out_seg[2]~2_combout\ : std_logic;
SIGNAL \DECODER|out_seg[3]~3_combout\ : std_logic;
SIGNAL \DECODER|out_seg[4]~4_combout\ : std_logic;
SIGNAL \DECODER|out_seg[5]~5_combout\ : std_logic;
SIGNAL \DECODER|out_seg[6]~6_combout\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_C[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_D[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_C[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_D[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_C[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_D[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_selector[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_selector[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_selector[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_selector[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_C[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_D[3]~input_o\ : std_logic;
SIGNAL \MUX4|ALT_INV_out_mux4[0]~4_combout\ : std_logic;
SIGNAL \MUX4|ALT_INV_out_mux4[2]~3_combout\ : std_logic;
SIGNAL \MUX4|ALT_INV_out_mux4[1]~2_combout\ : std_logic;
SIGNAL \MUX4|ALT_INV_out_mux4[3]~1_combout\ : std_logic;
SIGNAL \MUX4|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \MUX4|ALT_INV_out_mux4[3]~0_combout\ : std_logic;

BEGIN

ww_selector <= selector;
ww_A <= A;
ww_B <= B;
ww_C <= C;
ww_D <= D;
out_seg <= ww_out_seg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_C[0]~input_o\ <= NOT \C[0]~input_o\;
\ALT_INV_D[0]~input_o\ <= NOT \D[0]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_C[2]~input_o\ <= NOT \C[2]~input_o\;
\ALT_INV_D[2]~input_o\ <= NOT \D[2]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_C[1]~input_o\ <= NOT \C[1]~input_o\;
\ALT_INV_D[1]~input_o\ <= NOT \D[1]~input_o\;
\ALT_INV_selector[3]~input_o\ <= NOT \selector[3]~input_o\;
\ALT_INV_selector[2]~input_o\ <= NOT \selector[2]~input_o\;
\ALT_INV_selector[1]~input_o\ <= NOT \selector[1]~input_o\;
\ALT_INV_selector[0]~input_o\ <= NOT \selector[0]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_C[3]~input_o\ <= NOT \C[3]~input_o\;
\ALT_INV_D[3]~input_o\ <= NOT \D[3]~input_o\;
\MUX4|ALT_INV_out_mux4[0]~4_combout\ <= NOT \MUX4|out_mux4[0]~4_combout\;
\MUX4|ALT_INV_out_mux4[2]~3_combout\ <= NOT \MUX4|out_mux4[2]~3_combout\;
\MUX4|ALT_INV_out_mux4[1]~2_combout\ <= NOT \MUX4|out_mux4[1]~2_combout\;
\MUX4|ALT_INV_out_mux4[3]~1_combout\ <= NOT \MUX4|out_mux4[3]~1_combout\;
\MUX4|ALT_INV_Equal1~0_combout\ <= NOT \MUX4|Equal1~0_combout\;
\MUX4|ALT_INV_out_mux4[3]~0_combout\ <= NOT \MUX4|out_mux4[3]~0_combout\;

-- Location: IOOBUF_X89_Y35_N62
\out_seg[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER|out_seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_out_seg(0));

-- Location: IOOBUF_X89_Y9_N39
\out_seg[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER|out_seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_out_seg(1));

-- Location: IOOBUF_X89_Y6_N56
\out_seg[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER|out_seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_out_seg(2));

-- Location: IOOBUF_X89_Y9_N22
\out_seg[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER|out_seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_out_seg(3));

-- Location: IOOBUF_X70_Y0_N36
\out_seg[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER|out_seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_out_seg(4));

-- Location: IOOBUF_X89_Y8_N22
\out_seg[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER|out_seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_out_seg(5));

-- Location: IOOBUF_X70_Y0_N53
\out_seg[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER|out_seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_out_seg(6));

-- Location: IOIBUF_X72_Y0_N18
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X89_Y4_N95
\C[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(2),
	o => \C[2]~input_o\);

-- Location: IOIBUF_X72_Y0_N52
\D[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(2),
	o => \D[2]~input_o\);

-- Location: IOIBUF_X89_Y4_N78
\selector[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selector(2),
	o => \selector[2]~input_o\);

-- Location: IOIBUF_X70_Y0_N18
\selector[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selector(3),
	o => \selector[3]~input_o\);

-- Location: IOIBUF_X72_Y0_N35
\selector[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selector(1),
	o => \selector[1]~input_o\);

-- Location: LABCELL_X83_Y4_N39
\MUX4|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX4|Equal1~0_combout\ = ( !\selector[1]~input_o\ & ( (!\selector[2]~input_o\ & !\selector[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000000000000000010100000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selector[2]~input_o\,
	datac => \ALT_INV_selector[3]~input_o\,
	datae => \ALT_INV_selector[1]~input_o\,
	combout => \MUX4|Equal1~0_combout\);

-- Location: IOIBUF_X89_Y4_N61
\selector[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selector(0),
	o => \selector[0]~input_o\);

-- Location: LABCELL_X83_Y4_N0
\MUX4|out_mux4[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX4|out_mux4[3]~0_combout\ = ( \selector[1]~input_o\ & ( (!\selector[2]~input_o\ & (!\selector[3]~input_o\ & !\selector[0]~input_o\)) ) ) # ( !\selector[1]~input_o\ & ( (!\selector[2]~input_o\ & (!\selector[3]~input_o\ & \selector[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000100000001000000000001000000010001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selector[2]~input_o\,
	datab => \ALT_INV_selector[3]~input_o\,
	datac => \ALT_INV_selector[0]~input_o\,
	datae => \ALT_INV_selector[1]~input_o\,
	combout => \MUX4|out_mux4[3]~0_combout\);

-- Location: IOIBUF_X89_Y9_N55
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LABCELL_X83_Y4_N48
\MUX4|out_mux4[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX4|out_mux4[2]~3_combout\ = ( \MUX4|out_mux4[3]~0_combout\ & ( \A[2]~input_o\ & ( (!\MUX4|Equal1~0_combout\ & ((\C[2]~input_o\))) # (\MUX4|Equal1~0_combout\ & (\B[2]~input_o\)) ) ) ) # ( !\MUX4|out_mux4[3]~0_combout\ & ( \A[2]~input_o\ & ( 
-- (\MUX4|Equal1~0_combout\) # (\D[2]~input_o\) ) ) ) # ( \MUX4|out_mux4[3]~0_combout\ & ( !\A[2]~input_o\ & ( (!\MUX4|Equal1~0_combout\ & ((\C[2]~input_o\))) # (\MUX4|Equal1~0_combout\ & (\B[2]~input_o\)) ) ) ) # ( !\MUX4|out_mux4[3]~0_combout\ & ( 
-- !\A[2]~input_o\ & ( (\D[2]~input_o\ & !\MUX4|Equal1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000001100110101010100001111111111110011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_C[2]~input_o\,
	datac => \ALT_INV_D[2]~input_o\,
	datad => \MUX4|ALT_INV_Equal1~0_combout\,
	datae => \MUX4|ALT_INV_out_mux4[3]~0_combout\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \MUX4|out_mux4[2]~3_combout\);

-- Location: IOIBUF_X89_Y6_N21
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X72_Y0_N1
\D[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(1),
	o => \D[1]~input_o\);

-- Location: IOIBUF_X89_Y9_N4
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X70_Y0_N1
\C[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(1),
	o => \C[1]~input_o\);

-- Location: LABCELL_X83_Y4_N42
\MUX4|out_mux4[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX4|out_mux4[1]~2_combout\ = ( \B[1]~input_o\ & ( \C[1]~input_o\ & ( ((!\MUX4|Equal1~0_combout\ & ((\D[1]~input_o\))) # (\MUX4|Equal1~0_combout\ & (\A[1]~input_o\))) # (\MUX4|out_mux4[3]~0_combout\) ) ) ) # ( !\B[1]~input_o\ & ( \C[1]~input_o\ & ( 
-- (!\MUX4|out_mux4[3]~0_combout\ & ((!\MUX4|Equal1~0_combout\ & ((\D[1]~input_o\))) # (\MUX4|Equal1~0_combout\ & (\A[1]~input_o\)))) # (\MUX4|out_mux4[3]~0_combout\ & (((!\MUX4|Equal1~0_combout\)))) ) ) ) # ( \B[1]~input_o\ & ( !\C[1]~input_o\ & ( 
-- (!\MUX4|out_mux4[3]~0_combout\ & ((!\MUX4|Equal1~0_combout\ & ((\D[1]~input_o\))) # (\MUX4|Equal1~0_combout\ & (\A[1]~input_o\)))) # (\MUX4|out_mux4[3]~0_combout\ & (((\MUX4|Equal1~0_combout\)))) ) ) ) # ( !\B[1]~input_o\ & ( !\C[1]~input_o\ & ( 
-- (!\MUX4|out_mux4[3]~0_combout\ & ((!\MUX4|Equal1~0_combout\ & ((\D[1]~input_o\))) # (\MUX4|Equal1~0_combout\ & (\A[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001100000101111100111111010100000011111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_D[1]~input_o\,
	datac => \MUX4|ALT_INV_out_mux4[3]~0_combout\,
	datad => \MUX4|ALT_INV_Equal1~0_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_C[1]~input_o\,
	combout => \MUX4|out_mux4[1]~2_combout\);

-- Location: IOIBUF_X89_Y4_N44
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X89_Y6_N4
\D[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(0),
	o => \D[0]~input_o\);

-- Location: IOIBUF_X89_Y6_N38
\C[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(0),
	o => \C[0]~input_o\);

-- Location: IOIBUF_X66_Y0_N58
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LABCELL_X83_Y4_N24
\MUX4|out_mux4[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX4|out_mux4[0]~4_combout\ = ( \C[0]~input_o\ & ( \B[0]~input_o\ & ( (!\MUX4|out_mux4[3]~0_combout\ & ((!\MUX4|Equal1~0_combout\ & ((!\D[0]~input_o\))) # (\MUX4|Equal1~0_combout\ & (!\A[0]~input_o\)))) ) ) ) # ( !\C[0]~input_o\ & ( \B[0]~input_o\ & ( 
-- (!\MUX4|out_mux4[3]~0_combout\ & ((!\MUX4|Equal1~0_combout\ & ((!\D[0]~input_o\))) # (\MUX4|Equal1~0_combout\ & (!\A[0]~input_o\)))) # (\MUX4|out_mux4[3]~0_combout\ & (!\MUX4|Equal1~0_combout\)) ) ) ) # ( \C[0]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\MUX4|out_mux4[3]~0_combout\ & ((!\MUX4|Equal1~0_combout\ & ((!\D[0]~input_o\))) # (\MUX4|Equal1~0_combout\ & (!\A[0]~input_o\)))) # (\MUX4|out_mux4[3]~0_combout\ & (\MUX4|Equal1~0_combout\)) ) ) ) # ( !\C[0]~input_o\ & ( !\B[0]~input_o\ & ( 
-- ((!\MUX4|Equal1~0_combout\ & ((!\D[0]~input_o\))) # (\MUX4|Equal1~0_combout\ & (!\A[0]~input_o\))) # (\MUX4|out_mux4[3]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110101110101101110010011000111101100011001001010100000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX4|ALT_INV_out_mux4[3]~0_combout\,
	datab => \MUX4|ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_D[0]~input_o\,
	datae => \ALT_INV_C[0]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \MUX4|out_mux4[0]~4_combout\);

-- Location: IOIBUF_X89_Y8_N38
\D[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(3),
	o => \D[3]~input_o\);

-- Location: IOIBUF_X89_Y8_N4
\C[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(3),
	o => \C[3]~input_o\);

-- Location: IOIBUF_X89_Y8_N55
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X89_Y35_N78
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LABCELL_X88_Y8_N3
\MUX4|out_mux4[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX4|out_mux4[3]~1_combout\ = ( \MUX4|Equal1~0_combout\ & ( \A[3]~input_o\ & ( (!\MUX4|out_mux4[3]~0_combout\) # (\B[3]~input_o\) ) ) ) # ( !\MUX4|Equal1~0_combout\ & ( \A[3]~input_o\ & ( (!\MUX4|out_mux4[3]~0_combout\ & (\D[3]~input_o\)) # 
-- (\MUX4|out_mux4[3]~0_combout\ & ((\C[3]~input_o\))) ) ) ) # ( \MUX4|Equal1~0_combout\ & ( !\A[3]~input_o\ & ( (\MUX4|out_mux4[3]~0_combout\ & \B[3]~input_o\) ) ) ) # ( !\MUX4|Equal1~0_combout\ & ( !\A[3]~input_o\ & ( (!\MUX4|out_mux4[3]~0_combout\ & 
-- (\D[3]~input_o\)) # (\MUX4|out_mux4[3]~0_combout\ & ((\C[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111000000000101010100100111001001111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX4|ALT_INV_out_mux4[3]~0_combout\,
	datab => \ALT_INV_D[3]~input_o\,
	datac => \ALT_INV_C[3]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \MUX4|ALT_INV_Equal1~0_combout\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \MUX4|out_mux4[3]~1_combout\);

-- Location: LABCELL_X83_Y4_N30
\DECODER|out_seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|out_seg[0]~0_combout\ = ( \MUX4|out_mux4[3]~1_combout\ ) # ( !\MUX4|out_mux4[3]~1_combout\ & ( (!\MUX4|out_mux4[2]~3_combout\ & (\MUX4|out_mux4[1]~2_combout\)) # (\MUX4|out_mux4[2]~3_combout\ & ((!\MUX4|out_mux4[1]~2_combout\) # 
-- (\MUX4|out_mux4[0]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011101100111011001110110011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX4|ALT_INV_out_mux4[2]~3_combout\,
	datab => \MUX4|ALT_INV_out_mux4[1]~2_combout\,
	datac => \MUX4|ALT_INV_out_mux4[0]~4_combout\,
	dataf => \MUX4|ALT_INV_out_mux4[3]~1_combout\,
	combout => \DECODER|out_seg[0]~0_combout\);

-- Location: LABCELL_X83_Y4_N33
\DECODER|out_seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|out_seg[1]~1_combout\ = ( \MUX4|out_mux4[0]~4_combout\ & ( ((!\MUX4|out_mux4[1]~2_combout\) # (\MUX4|out_mux4[3]~1_combout\)) # (\MUX4|out_mux4[2]~3_combout\) ) ) # ( !\MUX4|out_mux4[0]~4_combout\ & ( ((\MUX4|out_mux4[2]~3_combout\ & 
-- !\MUX4|out_mux4[1]~2_combout\)) # (\MUX4|out_mux4[3]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111101001111010011110100111111011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX4|ALT_INV_out_mux4[2]~3_combout\,
	datab => \MUX4|ALT_INV_out_mux4[1]~2_combout\,
	datac => \MUX4|ALT_INV_out_mux4[3]~1_combout\,
	dataf => \MUX4|ALT_INV_out_mux4[0]~4_combout\,
	combout => \DECODER|out_seg[1]~1_combout\);

-- Location: LABCELL_X83_Y4_N6
\DECODER|out_seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|out_seg[2]~2_combout\ = ( \MUX4|out_mux4[0]~4_combout\ & ( (!\MUX4|out_mux4[1]~2_combout\ & ((!\MUX4|out_mux4[2]~3_combout\))) # (\MUX4|out_mux4[1]~2_combout\ & (!\MUX4|out_mux4[3]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000110011001111000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX4|ALT_INV_out_mux4[3]~1_combout\,
	datac => \MUX4|ALT_INV_out_mux4[2]~3_combout\,
	datad => \MUX4|ALT_INV_out_mux4[1]~2_combout\,
	dataf => \MUX4|ALT_INV_out_mux4[0]~4_combout\,
	combout => \DECODER|out_seg[2]~2_combout\);

-- Location: LABCELL_X83_Y4_N9
\DECODER|out_seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|out_seg[3]~3_combout\ = ( \MUX4|out_mux4[0]~4_combout\ & ( (!\MUX4|out_mux4[2]~3_combout\) # ((\MUX4|out_mux4[1]~2_combout\) # (\MUX4|out_mux4[3]~1_combout\)) ) ) # ( !\MUX4|out_mux4[0]~4_combout\ & ( (!\MUX4|out_mux4[2]~3_combout\ $ 
-- (!\MUX4|out_mux4[1]~2_combout\)) # (\MUX4|out_mux4[3]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111101101111011011110110111101110111111101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX4|ALT_INV_out_mux4[2]~3_combout\,
	datab => \MUX4|ALT_INV_out_mux4[3]~1_combout\,
	datac => \MUX4|ALT_INV_out_mux4[1]~2_combout\,
	dataf => \MUX4|ALT_INV_out_mux4[0]~4_combout\,
	combout => \DECODER|out_seg[3]~3_combout\);

-- Location: LABCELL_X83_Y4_N12
\DECODER|out_seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|out_seg[4]~4_combout\ = ( \MUX4|out_mux4[0]~4_combout\ & ( ((!\MUX4|out_mux4[1]~2_combout\) # (\MUX4|out_mux4[2]~3_combout\)) # (\MUX4|out_mux4[3]~1_combout\) ) ) # ( !\MUX4|out_mux4[0]~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111001111111111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX4|ALT_INV_out_mux4[3]~1_combout\,
	datac => \MUX4|ALT_INV_out_mux4[2]~3_combout\,
	datad => \MUX4|ALT_INV_out_mux4[1]~2_combout\,
	dataf => \MUX4|ALT_INV_out_mux4[0]~4_combout\,
	combout => \DECODER|out_seg[4]~4_combout\);

-- Location: LABCELL_X83_Y4_N15
\DECODER|out_seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|out_seg[5]~5_combout\ = ( \MUX4|out_mux4[0]~4_combout\ & ( (!\MUX4|out_mux4[2]~3_combout\) # ((!\MUX4|out_mux4[1]~2_combout\) # (\MUX4|out_mux4[3]~1_combout\)) ) ) # ( !\MUX4|out_mux4[0]~4_combout\ & ( (!\MUX4|out_mux4[2]~3_combout\) # 
-- ((\MUX4|out_mux4[1]~2_combout\) # (\MUX4|out_mux4[3]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111110111111101111111011111111111011111110111111101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX4|ALT_INV_out_mux4[2]~3_combout\,
	datab => \MUX4|ALT_INV_out_mux4[3]~1_combout\,
	datac => \MUX4|ALT_INV_out_mux4[1]~2_combout\,
	dataf => \MUX4|ALT_INV_out_mux4[0]~4_combout\,
	combout => \DECODER|out_seg[5]~5_combout\);

-- Location: LABCELL_X83_Y4_N18
\DECODER|out_seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|out_seg[6]~6_combout\ = ( \MUX4|out_mux4[3]~1_combout\ ) # ( !\MUX4|out_mux4[3]~1_combout\ & ( (!\MUX4|out_mux4[2]~3_combout\ $ (!\MUX4|out_mux4[0]~4_combout\)) # (\MUX4|out_mux4[1]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111101101111011011110110111101111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX4|ALT_INV_out_mux4[2]~3_combout\,
	datab => \MUX4|ALT_INV_out_mux4[1]~2_combout\,
	datac => \MUX4|ALT_INV_out_mux4[0]~4_combout\,
	dataf => \MUX4|ALT_INV_out_mux4[3]~1_combout\,
	combout => \DECODER|out_seg[6]~6_combout\);

-- Location: LABCELL_X29_Y16_N0
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


