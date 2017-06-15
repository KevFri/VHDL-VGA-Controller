-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

-- DATE "06/15/2017 18:48:44"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
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

ENTITY 	VGA IS
    PORT (
	pixel_clk : IN std_logic;
	reset_n : IN std_logic;
	red : BUFFER std_logic_vector(7 DOWNTO 0);
	green : BUFFER std_logic_vector(7 DOWNTO 0);
	blue : BUFFER std_logic_vector(7 DOWNTO 0);
	h_sync : BUFFER std_logic;
	v_sync : BUFFER std_logic;
	vga_clk : BUFFER std_logic
	);
END VGA;

-- Design Ports Information
-- red[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[2]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[3]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[4]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[6]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[7]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[0]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[1]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[3]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[4]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[5]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[6]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[7]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[1]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[3]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[4]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[5]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[7]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h_sync	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v_sync	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_clk	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_clk	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF VGA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pixel_clk : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_red : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_green : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_blue : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_h_sync : std_logic;
SIGNAL ww_v_sync : std_logic;
SIGNAL ww_vga_clk : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \pixel_clk~input_o\ : std_logic;
SIGNAL \pixel_clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \VGA_Controller|Add1~26\ : std_logic;
SIGNAL \VGA_Controller|Add1~29_sumout\ : std_logic;
SIGNAL \VGA_Controller|Add0~9_sumout\ : std_logic;
SIGNAL \VGA_Controller|Add0~10\ : std_logic;
SIGNAL \VGA_Controller|Add0~13_sumout\ : std_logic;
SIGNAL \VGA_Controller|Add0~14\ : std_logic;
SIGNAL \VGA_Controller|Add0~17_sumout\ : std_logic;
SIGNAL \VGA_Controller|h_count[2]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA_Controller|Add0~18\ : std_logic;
SIGNAL \VGA_Controller|Add0~21_sumout\ : std_logic;
SIGNAL \VGA_Controller|Add0~22\ : std_logic;
SIGNAL \VGA_Controller|Add0~5_sumout\ : std_logic;
SIGNAL \VGA_Controller|Add0~6\ : std_logic;
SIGNAL \VGA_Controller|Add0~1_sumout\ : std_logic;
SIGNAL \VGA_Controller|h_count[5]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA_Controller|Add0~2\ : std_logic;
SIGNAL \VGA_Controller|Add0~33_sumout\ : std_logic;
SIGNAL \VGA_Controller|Add0~34\ : std_logic;
SIGNAL \VGA_Controller|Add0~37_sumout\ : std_logic;
SIGNAL \VGA_Controller|LessThan0~1_combout\ : std_logic;
SIGNAL \VGA_Controller|Add0~38\ : std_logic;
SIGNAL \VGA_Controller|Add0~41_sumout\ : std_logic;
SIGNAL \VGA_Controller|Add0~42\ : std_logic;
SIGNAL \VGA_Controller|Add0~25_sumout\ : std_logic;
SIGNAL \VGA_Controller|Add0~26\ : std_logic;
SIGNAL \VGA_Controller|Add0~29_sumout\ : std_logic;
SIGNAL \VGA_Controller|LessThan0~0_combout\ : std_logic;
SIGNAL \VGA_Controller|LessThan0~2_combout\ : std_logic;
SIGNAL \VGA_Controller|Add1~30\ : std_logic;
SIGNAL \VGA_Controller|Add1~13_sumout\ : std_logic;
SIGNAL \VGA_Controller|Add1~14\ : std_logic;
SIGNAL \VGA_Controller|Add1~9_sumout\ : std_logic;
SIGNAL \VGA_Controller|Add1~10\ : std_logic;
SIGNAL \VGA_Controller|Add1~5_sumout\ : std_logic;
SIGNAL \VGA_Controller|Add1~6\ : std_logic;
SIGNAL \VGA_Controller|Add1~17_sumout\ : std_logic;
SIGNAL \VGA_Controller|Add1~18\ : std_logic;
SIGNAL \VGA_Controller|Add1~1_sumout\ : std_logic;
SIGNAL \VGA_Controller|Add1~2\ : std_logic;
SIGNAL \VGA_Controller|Add1~21_sumout\ : std_logic;
SIGNAL \VGA_Controller|Add1~22\ : std_logic;
SIGNAL \VGA_Controller|Add1~33_sumout\ : std_logic;
SIGNAL \VGA_Controller|LessThan1~1_combout\ : std_logic;
SIGNAL \VGA_Controller|LessThan1~0_combout\ : std_logic;
SIGNAL \VGA_Controller|Add1~34\ : std_logic;
SIGNAL \VGA_Controller|Add1~37_sumout\ : std_logic;
SIGNAL \VGA_Controller|v_count~0_combout\ : std_logic;
SIGNAL \VGA_Controller|v_count~1_combout\ : std_logic;
SIGNAL \VGA_Controller|Add1~25_sumout\ : std_logic;
SIGNAL \VGA_Controller|row[0]~feeder_combout\ : std_logic;
SIGNAL \VGA_Controller|v_count~2_combout\ : std_logic;
SIGNAL \VGA_Controller|v_count~4_combout\ : std_logic;
SIGNAL \VGA_Controller|LessThan7~1_combout\ : std_logic;
SIGNAL \VGA_Controller|v_count~8_combout\ : std_logic;
SIGNAL \VGA_Controller|v_count~3_combout\ : std_logic;
SIGNAL \VGA_Controller|LessThan7~0_combout\ : std_logic;
SIGNAL \VGA_Controller|LessThan7~2_combout\ : std_logic;
SIGNAL \VGA_Controller|LessThan7~3_combout\ : std_logic;
SIGNAL \VGA_Controller|LessThan6~0_combout\ : std_logic;
SIGNAL \VGA_Controller|LessThan6~1_combout\ : std_logic;
SIGNAL \VGA_Controller|process_0~11_combout\ : std_logic;
SIGNAL \VGA_Controller|disp_ena~q\ : std_logic;
SIGNAL \VGA_Controller|row[1]~feeder_combout\ : std_logic;
SIGNAL \VGA_Controller|row[2]~feeder_combout\ : std_logic;
SIGNAL \VGA_Controller|row[3]~feeder_combout\ : std_logic;
SIGNAL \VGA_Controller|row[4]~feeder_combout\ : std_logic;
SIGNAL \VGA_Controller|row[5]~feeder_combout\ : std_logic;
SIGNAL \VGA_Controller|row[6]~feeder_combout\ : std_logic;
SIGNAL \VGA_Controller|row[7]~feeder_combout\ : std_logic;
SIGNAL \VGA_Controller|LessThan6~2_combout\ : std_logic;
SIGNAL \VGA_Controller|LessThan6~3_combout\ : std_logic;
SIGNAL \VGA_Controller|row[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ImageGenerator|Add0~1_sumout\ : std_logic;
SIGNAL \VGA_Controller|row[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ImageGenerator|Add0~2\ : std_logic;
SIGNAL \ImageGenerator|Add0~5_sumout\ : std_logic;
SIGNAL \VGA_Controller|row[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ImageGenerator|Add0~6\ : std_logic;
SIGNAL \ImageGenerator|Add0~9_sumout\ : std_logic;
SIGNAL \VGA_Controller|row[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ImageGenerator|Add0~10\ : std_logic;
SIGNAL \ImageGenerator|Add0~13_sumout\ : std_logic;
SIGNAL \VGA_Controller|row[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ImageGenerator|Add0~14\ : std_logic;
SIGNAL \ImageGenerator|Add0~17_sumout\ : std_logic;
SIGNAL \ImageGenerator|Add0~18\ : std_logic;
SIGNAL \ImageGenerator|Add0~21_sumout\ : std_logic;
SIGNAL \VGA_Controller|row[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ImageGenerator|Add0~22\ : std_logic;
SIGNAL \ImageGenerator|Add0~25_sumout\ : std_logic;
SIGNAL \ImageGenerator|Add0~26\ : std_logic;
SIGNAL \ImageGenerator|Add0~29_sumout\ : std_logic;
SIGNAL \VGA_Controller|process_0~0_combout\ : std_logic;
SIGNAL \VGA_Controller|process_0~3_combout\ : std_logic;
SIGNAL \VGA_Controller|process_0~2_combout\ : std_logic;
SIGNAL \VGA_Controller|process_0~1_combout\ : std_logic;
SIGNAL \VGA_Controller|process_0~4_combout\ : std_logic;
SIGNAL \VGA_Controller|h_sync~q\ : std_logic;
SIGNAL \VGA_Controller|process_0~6_combout\ : std_logic;
SIGNAL \VGA_Controller|v_count~7_combout\ : std_logic;
SIGNAL \VGA_Controller|process_0~9_combout\ : std_logic;
SIGNAL \VGA_Controller|v_count~5_combout\ : std_logic;
SIGNAL \VGA_Controller|v_count~6_combout\ : std_logic;
SIGNAL \VGA_Controller|process_0~5_combout\ : std_logic;
SIGNAL \VGA_Controller|LessThan1~2_combout\ : std_logic;
SIGNAL \VGA_Controller|process_0~7_combout\ : std_logic;
SIGNAL \VGA_Controller|process_0~8_combout\ : std_logic;
SIGNAL \VGA_Controller|process_0~10_combout\ : std_logic;
SIGNAL \VGA_Controller|v_sync~q\ : std_logic;
SIGNAL \VGA_Controller|row\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \VGA_Controller|column\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \VGA_Controller|h_count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \VGA_Controller|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ImageGenerator|red\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ImageGenerator|green\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ImageGenerator|blue\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \VGA_Controller|ALT_INV_h_count[5]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_h_count[2]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_row[6]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_row[4]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_row[3]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_row[2]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_row[1]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_row[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ImageGenerator|ALT_INV_blue\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ImageGenerator|ALT_INV_green\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ImageGenerator|ALT_INV_red\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \VGA_Controller|ALT_INV_LessThan6~2_combout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_LessThan6~1_combout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_LessThan6~0_combout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_LessThan7~3_combout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_LessThan7~1_combout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_LessThan7~0_combout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_v_count~8_combout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_process_0~9_combout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_process_0~8_combout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_process_0~7_combout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_LessThan1~2_combout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_process_0~6_combout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_v_count~7_combout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_process_0~5_combout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_v_count~6_combout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_v_count~5_combout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_v_count~4_combout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_v_count~3_combout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_v_count~2_combout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_v_count~1_combout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_v_count~0_combout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_process_0~3_combout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_disp_ena~q\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_Controller|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_h_count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \VGA_Controller|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_column\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ImageGenerator|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ImageGenerator|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ImageGenerator|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ImageGenerator|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ImageGenerator|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ImageGenerator|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ImageGenerator|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ImageGenerator|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \VGA_Controller|ALT_INV_row\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_pixel_clk <= pixel_clk;
ww_reset_n <= reset_n;
red <= ww_red;
green <= ww_green;
blue <= ww_blue;
h_sync <= ww_h_sync;
v_sync <= ww_v_sync;
vga_clk <= ww_vga_clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\VGA_Controller|ALT_INV_h_count[5]~DUPLICATE_q\ <= NOT \VGA_Controller|h_count[5]~DUPLICATE_q\;
\VGA_Controller|ALT_INV_h_count[2]~DUPLICATE_q\ <= NOT \VGA_Controller|h_count[2]~DUPLICATE_q\;
\VGA_Controller|ALT_INV_row[6]~DUPLICATE_q\ <= NOT \VGA_Controller|row[6]~DUPLICATE_q\;
\VGA_Controller|ALT_INV_row[4]~DUPLICATE_q\ <= NOT \VGA_Controller|row[4]~DUPLICATE_q\;
\VGA_Controller|ALT_INV_row[3]~DUPLICATE_q\ <= NOT \VGA_Controller|row[3]~DUPLICATE_q\;
\VGA_Controller|ALT_INV_row[2]~DUPLICATE_q\ <= NOT \VGA_Controller|row[2]~DUPLICATE_q\;
\VGA_Controller|ALT_INV_row[1]~DUPLICATE_q\ <= NOT \VGA_Controller|row[1]~DUPLICATE_q\;
\VGA_Controller|ALT_INV_row[0]~DUPLICATE_q\ <= NOT \VGA_Controller|row[0]~DUPLICATE_q\;
\ImageGenerator|ALT_INV_blue\(7) <= NOT \ImageGenerator|blue\(7);
\ImageGenerator|ALT_INV_blue\(6) <= NOT \ImageGenerator|blue\(6);
\ImageGenerator|ALT_INV_blue\(5) <= NOT \ImageGenerator|blue\(5);
\ImageGenerator|ALT_INV_blue\(4) <= NOT \ImageGenerator|blue\(4);
\ImageGenerator|ALT_INV_blue\(3) <= NOT \ImageGenerator|blue\(3);
\ImageGenerator|ALT_INV_blue\(2) <= NOT \ImageGenerator|blue\(2);
\ImageGenerator|ALT_INV_blue\(1) <= NOT \ImageGenerator|blue\(1);
\ImageGenerator|ALT_INV_blue\(0) <= NOT \ImageGenerator|blue\(0);
\ImageGenerator|ALT_INV_green\(7) <= NOT \ImageGenerator|green\(7);
\ImageGenerator|ALT_INV_green\(6) <= NOT \ImageGenerator|green\(6);
\ImageGenerator|ALT_INV_green\(5) <= NOT \ImageGenerator|green\(5);
\ImageGenerator|ALT_INV_green\(4) <= NOT \ImageGenerator|green\(4);
\ImageGenerator|ALT_INV_green\(3) <= NOT \ImageGenerator|green\(3);
\ImageGenerator|ALT_INV_green\(2) <= NOT \ImageGenerator|green\(2);
\ImageGenerator|ALT_INV_green\(1) <= NOT \ImageGenerator|green\(1);
\ImageGenerator|ALT_INV_green\(0) <= NOT \ImageGenerator|green\(0);
\ImageGenerator|ALT_INV_red\(7) <= NOT \ImageGenerator|red\(7);
\ImageGenerator|ALT_INV_red\(6) <= NOT \ImageGenerator|red\(6);
\ImageGenerator|ALT_INV_red\(5) <= NOT \ImageGenerator|red\(5);
\ImageGenerator|ALT_INV_red\(4) <= NOT \ImageGenerator|red\(4);
\ImageGenerator|ALT_INV_red\(3) <= NOT \ImageGenerator|red\(3);
\ImageGenerator|ALT_INV_red\(2) <= NOT \ImageGenerator|red\(2);
\ImageGenerator|ALT_INV_red\(1) <= NOT \ImageGenerator|red\(1);
\ImageGenerator|ALT_INV_red\(0) <= NOT \ImageGenerator|red\(0);
\VGA_Controller|ALT_INV_LessThan6~2_combout\ <= NOT \VGA_Controller|LessThan6~2_combout\;
\VGA_Controller|ALT_INV_LessThan6~1_combout\ <= NOT \VGA_Controller|LessThan6~1_combout\;
\VGA_Controller|ALT_INV_LessThan6~0_combout\ <= NOT \VGA_Controller|LessThan6~0_combout\;
\VGA_Controller|ALT_INV_LessThan7~3_combout\ <= NOT \VGA_Controller|LessThan7~3_combout\;
\VGA_Controller|ALT_INV_LessThan7~1_combout\ <= NOT \VGA_Controller|LessThan7~1_combout\;
\VGA_Controller|ALT_INV_LessThan7~0_combout\ <= NOT \VGA_Controller|LessThan7~0_combout\;
\VGA_Controller|ALT_INV_v_count~8_combout\ <= NOT \VGA_Controller|v_count~8_combout\;
\VGA_Controller|ALT_INV_process_0~9_combout\ <= NOT \VGA_Controller|process_0~9_combout\;
\VGA_Controller|ALT_INV_process_0~8_combout\ <= NOT \VGA_Controller|process_0~8_combout\;
\VGA_Controller|ALT_INV_process_0~7_combout\ <= NOT \VGA_Controller|process_0~7_combout\;
\VGA_Controller|ALT_INV_LessThan1~2_combout\ <= NOT \VGA_Controller|LessThan1~2_combout\;
\VGA_Controller|ALT_INV_process_0~6_combout\ <= NOT \VGA_Controller|process_0~6_combout\;
\VGA_Controller|ALT_INV_v_count~7_combout\ <= NOT \VGA_Controller|v_count~7_combout\;
\VGA_Controller|ALT_INV_process_0~5_combout\ <= NOT \VGA_Controller|process_0~5_combout\;
\VGA_Controller|ALT_INV_v_count~6_combout\ <= NOT \VGA_Controller|v_count~6_combout\;
\VGA_Controller|ALT_INV_v_count~5_combout\ <= NOT \VGA_Controller|v_count~5_combout\;
\VGA_Controller|ALT_INV_v_count~4_combout\ <= NOT \VGA_Controller|v_count~4_combout\;
\VGA_Controller|ALT_INV_v_count~3_combout\ <= NOT \VGA_Controller|v_count~3_combout\;
\VGA_Controller|ALT_INV_v_count~2_combout\ <= NOT \VGA_Controller|v_count~2_combout\;
\VGA_Controller|ALT_INV_v_count~1_combout\ <= NOT \VGA_Controller|v_count~1_combout\;
\VGA_Controller|ALT_INV_v_count~0_combout\ <= NOT \VGA_Controller|v_count~0_combout\;
\VGA_Controller|ALT_INV_LessThan1~1_combout\ <= NOT \VGA_Controller|LessThan1~1_combout\;
\VGA_Controller|ALT_INV_LessThan1~0_combout\ <= NOT \VGA_Controller|LessThan1~0_combout\;
\VGA_Controller|ALT_INV_LessThan0~2_combout\ <= NOT \VGA_Controller|LessThan0~2_combout\;
\VGA_Controller|ALT_INV_process_0~3_combout\ <= NOT \VGA_Controller|process_0~3_combout\;
\VGA_Controller|ALT_INV_LessThan0~1_combout\ <= NOT \VGA_Controller|LessThan0~1_combout\;
\VGA_Controller|ALT_INV_LessThan0~0_combout\ <= NOT \VGA_Controller|LessThan0~0_combout\;
\VGA_Controller|ALT_INV_process_0~2_combout\ <= NOT \VGA_Controller|process_0~2_combout\;
\VGA_Controller|ALT_INV_process_0~1_combout\ <= NOT \VGA_Controller|process_0~1_combout\;
\VGA_Controller|ALT_INV_process_0~0_combout\ <= NOT \VGA_Controller|process_0~0_combout\;
\VGA_Controller|ALT_INV_disp_ena~q\ <= NOT \VGA_Controller|disp_ena~q\;
\VGA_Controller|ALT_INV_Add1~37_sumout\ <= NOT \VGA_Controller|Add1~37_sumout\;
\VGA_Controller|ALT_INV_Add1~33_sumout\ <= NOT \VGA_Controller|Add1~33_sumout\;
\VGA_Controller|ALT_INV_Add1~29_sumout\ <= NOT \VGA_Controller|Add1~29_sumout\;
\VGA_Controller|ALT_INV_Add1~25_sumout\ <= NOT \VGA_Controller|Add1~25_sumout\;
\VGA_Controller|ALT_INV_Add1~21_sumout\ <= NOT \VGA_Controller|Add1~21_sumout\;
\VGA_Controller|ALT_INV_Add1~17_sumout\ <= NOT \VGA_Controller|Add1~17_sumout\;
\VGA_Controller|ALT_INV_Add1~13_sumout\ <= NOT \VGA_Controller|Add1~13_sumout\;
\VGA_Controller|ALT_INV_Add1~9_sumout\ <= NOT \VGA_Controller|Add1~9_sumout\;
\VGA_Controller|ALT_INV_Add1~5_sumout\ <= NOT \VGA_Controller|Add1~5_sumout\;
\VGA_Controller|ALT_INV_v_count\(9) <= NOT \VGA_Controller|v_count\(9);
\VGA_Controller|ALT_INV_v_count\(4) <= NOT \VGA_Controller|v_count\(4);
\VGA_Controller|ALT_INV_v_count\(7) <= NOT \VGA_Controller|v_count\(7);
\VGA_Controller|ALT_INV_v_count\(0) <= NOT \VGA_Controller|v_count\(0);
\VGA_Controller|ALT_INV_v_count\(1) <= NOT \VGA_Controller|v_count\(1);
\VGA_Controller|ALT_INV_v_count\(2) <= NOT \VGA_Controller|v_count\(2);
\VGA_Controller|ALT_INV_v_count\(3) <= NOT \VGA_Controller|v_count\(3);
\VGA_Controller|ALT_INV_v_count\(5) <= NOT \VGA_Controller|v_count\(5);
\VGA_Controller|ALT_INV_v_count\(8) <= NOT \VGA_Controller|v_count\(8);
\VGA_Controller|ALT_INV_Add1~1_sumout\ <= NOT \VGA_Controller|Add1~1_sumout\;
\VGA_Controller|ALT_INV_v_count\(6) <= NOT \VGA_Controller|v_count\(6);
\VGA_Controller|ALT_INV_Add0~41_sumout\ <= NOT \VGA_Controller|Add0~41_sumout\;
\VGA_Controller|ALT_INV_h_count\(4) <= NOT \VGA_Controller|h_count\(4);
\VGA_Controller|ALT_INV_h_count\(5) <= NOT \VGA_Controller|h_count\(5);
\VGA_Controller|ALT_INV_h_count\(6) <= NOT \VGA_Controller|h_count\(6);
\VGA_Controller|ALT_INV_h_count\(7) <= NOT \VGA_Controller|h_count\(7);
\VGA_Controller|ALT_INV_h_count\(8) <= NOT \VGA_Controller|h_count\(8);
\VGA_Controller|ALT_INV_h_count\(9) <= NOT \VGA_Controller|h_count\(9);
\VGA_Controller|ALT_INV_h_count\(0) <= NOT \VGA_Controller|h_count\(0);
\VGA_Controller|ALT_INV_h_count\(1) <= NOT \VGA_Controller|h_count\(1);
\VGA_Controller|ALT_INV_h_count\(2) <= NOT \VGA_Controller|h_count\(2);
\VGA_Controller|ALT_INV_h_count\(3) <= NOT \VGA_Controller|h_count\(3);
\VGA_Controller|ALT_INV_h_count\(10) <= NOT \VGA_Controller|h_count\(10);
\VGA_Controller|ALT_INV_Add0~37_sumout\ <= NOT \VGA_Controller|Add0~37_sumout\;
\VGA_Controller|ALT_INV_Add0~33_sumout\ <= NOT \VGA_Controller|Add0~33_sumout\;
\VGA_Controller|ALT_INV_Add0~29_sumout\ <= NOT \VGA_Controller|Add0~29_sumout\;
\VGA_Controller|ALT_INV_Add0~25_sumout\ <= NOT \VGA_Controller|Add0~25_sumout\;
\VGA_Controller|ALT_INV_Add0~21_sumout\ <= NOT \VGA_Controller|Add0~21_sumout\;
\VGA_Controller|ALT_INV_Add0~17_sumout\ <= NOT \VGA_Controller|Add0~17_sumout\;
\VGA_Controller|ALT_INV_Add0~13_sumout\ <= NOT \VGA_Controller|Add0~13_sumout\;
\VGA_Controller|ALT_INV_Add0~9_sumout\ <= NOT \VGA_Controller|Add0~9_sumout\;
\VGA_Controller|ALT_INV_Add0~5_sumout\ <= NOT \VGA_Controller|Add0~5_sumout\;
\VGA_Controller|ALT_INV_Add0~1_sumout\ <= NOT \VGA_Controller|Add0~1_sumout\;
\VGA_Controller|ALT_INV_column\(7) <= NOT \VGA_Controller|column\(7);
\VGA_Controller|ALT_INV_column\(6) <= NOT \VGA_Controller|column\(6);
\VGA_Controller|ALT_INV_column\(5) <= NOT \VGA_Controller|column\(5);
\VGA_Controller|ALT_INV_column\(4) <= NOT \VGA_Controller|column\(4);
\VGA_Controller|ALT_INV_column\(3) <= NOT \VGA_Controller|column\(3);
\VGA_Controller|ALT_INV_column\(2) <= NOT \VGA_Controller|column\(2);
\VGA_Controller|ALT_INV_column\(1) <= NOT \VGA_Controller|column\(1);
\VGA_Controller|ALT_INV_column\(0) <= NOT \VGA_Controller|column\(0);
\ImageGenerator|ALT_INV_Add0~29_sumout\ <= NOT \ImageGenerator|Add0~29_sumout\;
\ImageGenerator|ALT_INV_Add0~25_sumout\ <= NOT \ImageGenerator|Add0~25_sumout\;
\ImageGenerator|ALT_INV_Add0~21_sumout\ <= NOT \ImageGenerator|Add0~21_sumout\;
\ImageGenerator|ALT_INV_Add0~17_sumout\ <= NOT \ImageGenerator|Add0~17_sumout\;
\ImageGenerator|ALT_INV_Add0~13_sumout\ <= NOT \ImageGenerator|Add0~13_sumout\;
\ImageGenerator|ALT_INV_Add0~9_sumout\ <= NOT \ImageGenerator|Add0~9_sumout\;
\ImageGenerator|ALT_INV_Add0~5_sumout\ <= NOT \ImageGenerator|Add0~5_sumout\;
\ImageGenerator|ALT_INV_Add0~1_sumout\ <= NOT \ImageGenerator|Add0~1_sumout\;
\VGA_Controller|ALT_INV_row\(7) <= NOT \VGA_Controller|row\(7);
\VGA_Controller|ALT_INV_row\(6) <= NOT \VGA_Controller|row\(6);
\VGA_Controller|ALT_INV_row\(5) <= NOT \VGA_Controller|row\(5);
\VGA_Controller|ALT_INV_row\(4) <= NOT \VGA_Controller|row\(4);
\VGA_Controller|ALT_INV_row\(3) <= NOT \VGA_Controller|row\(3);
\VGA_Controller|ALT_INV_row\(2) <= NOT \VGA_Controller|row\(2);
\VGA_Controller|ALT_INV_row\(1) <= NOT \VGA_Controller|row\(1);
\VGA_Controller|ALT_INV_row\(0) <= NOT \VGA_Controller|row\(0);

-- Location: IOOBUF_X40_Y81_N53
\red[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ImageGenerator|red\(0),
	devoe => ww_devoe,
	o => ww_red(0));

-- Location: IOOBUF_X38_Y81_N2
\red[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ImageGenerator|red\(1),
	devoe => ww_devoe,
	o => ww_red(1));

-- Location: IOOBUF_X26_Y81_N59
\red[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ImageGenerator|red\(2),
	devoe => ww_devoe,
	o => ww_red(2));

-- Location: IOOBUF_X38_Y81_N19
\red[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ImageGenerator|red\(3),
	devoe => ww_devoe,
	o => ww_red(3));

-- Location: IOOBUF_X36_Y81_N36
\red[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ImageGenerator|red\(4),
	devoe => ww_devoe,
	o => ww_red(4));

-- Location: IOOBUF_X22_Y81_N19
\red[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ImageGenerator|red\(5),
	devoe => ww_devoe,
	o => ww_red(5));

-- Location: IOOBUF_X22_Y81_N2
\red[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ImageGenerator|red\(6),
	devoe => ww_devoe,
	o => ww_red(6));

-- Location: IOOBUF_X26_Y81_N42
\red[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ImageGenerator|red\(7),
	devoe => ww_devoe,
	o => ww_red(7));

-- Location: IOOBUF_X4_Y81_N19
\green[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ImageGenerator|green\(0),
	devoe => ww_devoe,
	o => ww_green(0));

-- Location: IOOBUF_X4_Y81_N2
\green[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ImageGenerator|green\(1),
	devoe => ww_devoe,
	o => ww_green(1));

-- Location: IOOBUF_X20_Y81_N19
\green[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ImageGenerator|green\(2),
	devoe => ww_devoe,
	o => ww_green(2));

-- Location: IOOBUF_X6_Y81_N2
\green[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ImageGenerator|green\(3),
	devoe => ww_devoe,
	o => ww_green(3));

-- Location: IOOBUF_X10_Y81_N59
\green[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ImageGenerator|green\(4),
	devoe => ww_devoe,
	o => ww_green(4));

-- Location: IOOBUF_X10_Y81_N42
\green[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ImageGenerator|green\(5),
	devoe => ww_devoe,
	o => ww_green(5));

-- Location: IOOBUF_X18_Y81_N42
\green[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ImageGenerator|green\(6),
	devoe => ww_devoe,
	o => ww_green(6));

-- Location: IOOBUF_X18_Y81_N59
\green[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ImageGenerator|green\(7),
	devoe => ww_devoe,
	o => ww_green(7));

-- Location: IOOBUF_X40_Y81_N36
\blue[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ImageGenerator|blue\(0),
	devoe => ww_devoe,
	o => ww_blue(0));

-- Location: IOOBUF_X28_Y81_N19
\blue[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ImageGenerator|blue\(1),
	devoe => ww_devoe,
	o => ww_blue(1));

-- Location: IOOBUF_X20_Y81_N2
\blue[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ImageGenerator|blue\(2),
	devoe => ww_devoe,
	o => ww_blue(2));

-- Location: IOOBUF_X36_Y81_N19
\blue[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ImageGenerator|blue\(3),
	devoe => ww_devoe,
	o => ww_blue(3));

-- Location: IOOBUF_X28_Y81_N2
\blue[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ImageGenerator|blue\(4),
	devoe => ww_devoe,
	o => ww_blue(4));

-- Location: IOOBUF_X36_Y81_N2
\blue[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ImageGenerator|blue\(5),
	devoe => ww_devoe,
	o => ww_blue(5));

-- Location: IOOBUF_X40_Y81_N19
\blue[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ImageGenerator|blue\(6),
	devoe => ww_devoe,
	o => ww_blue(6));

-- Location: IOOBUF_X32_Y81_N19
\blue[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ImageGenerator|blue\(7),
	devoe => ww_devoe,
	o => ww_blue(7));

-- Location: IOOBUF_X36_Y81_N53
\h_sync~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_Controller|h_sync~q\,
	devoe => ww_devoe,
	o => ww_h_sync);

-- Location: IOOBUF_X34_Y81_N42
\v_sync~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_Controller|v_sync~q\,
	devoe => ww_devoe,
	o => ww_v_sync);

-- Location: IOOBUF_X38_Y81_N36
\vga_clk~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pixel_clk~inputCLKENA0_outclk\,
	devoe => ww_devoe,
	o => ww_vga_clk);

-- Location: IOIBUF_X32_Y0_N1
\pixel_clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_clk,
	o => \pixel_clk~input_o\);

-- Location: CLKCTRL_G5
\pixel_clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \pixel_clk~input_o\,
	outclk => \pixel_clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X36_Y0_N1
\reset_n~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: LABCELL_X29_Y77_N0
\VGA_Controller|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|Add1~25_sumout\ = SUM(( \VGA_Controller|v_count\(0) ) + ( VCC ) + ( !VCC ))
-- \VGA_Controller|Add1~26\ = CARRY(( \VGA_Controller|v_count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA_Controller|ALT_INV_v_count\(0),
	cin => GND,
	sumout => \VGA_Controller|Add1~25_sumout\,
	cout => \VGA_Controller|Add1~26\);

-- Location: LABCELL_X29_Y77_N3
\VGA_Controller|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|Add1~29_sumout\ = SUM(( \VGA_Controller|v_count\(1) ) + ( GND ) + ( \VGA_Controller|Add1~26\ ))
-- \VGA_Controller|Add1~30\ = CARRY(( \VGA_Controller|v_count\(1) ) + ( GND ) + ( \VGA_Controller|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA_Controller|ALT_INV_v_count\(1),
	cin => \VGA_Controller|Add1~26\,
	sumout => \VGA_Controller|Add1~29_sumout\,
	cout => \VGA_Controller|Add1~30\);

-- Location: MLABCELL_X28_Y77_N0
\VGA_Controller|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|Add0~9_sumout\ = SUM(( \VGA_Controller|h_count\(0) ) + ( VCC ) + ( !VCC ))
-- \VGA_Controller|Add0~10\ = CARRY(( \VGA_Controller|h_count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA_Controller|ALT_INV_h_count\(0),
	cin => GND,
	sumout => \VGA_Controller|Add0~9_sumout\,
	cout => \VGA_Controller|Add0~10\);

-- Location: FF_X28_Y77_N56
\VGA_Controller|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputCLKENA0_outclk\,
	asdata => \VGA_Controller|Add0~9_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \VGA_Controller|ALT_INV_LessThan0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller|h_count\(0));

-- Location: MLABCELL_X28_Y77_N3
\VGA_Controller|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|Add0~13_sumout\ = SUM(( \VGA_Controller|h_count\(1) ) + ( GND ) + ( \VGA_Controller|Add0~10\ ))
-- \VGA_Controller|Add0~14\ = CARRY(( \VGA_Controller|h_count\(1) ) + ( GND ) + ( \VGA_Controller|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA_Controller|ALT_INV_h_count\(1),
	cin => \VGA_Controller|Add0~10\,
	sumout => \VGA_Controller|Add0~13_sumout\,
	cout => \VGA_Controller|Add0~14\);

-- Location: FF_X28_Y77_N38
\VGA_Controller|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputCLKENA0_outclk\,
	asdata => \VGA_Controller|Add0~13_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \VGA_Controller|ALT_INV_LessThan0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller|h_count\(1));

-- Location: MLABCELL_X28_Y77_N6
\VGA_Controller|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|Add0~17_sumout\ = SUM(( \VGA_Controller|h_count[2]~DUPLICATE_q\ ) + ( GND ) + ( \VGA_Controller|Add0~14\ ))
-- \VGA_Controller|Add0~18\ = CARRY(( \VGA_Controller|h_count[2]~DUPLICATE_q\ ) + ( GND ) + ( \VGA_Controller|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA_Controller|ALT_INV_h_count[2]~DUPLICATE_q\,
	cin => \VGA_Controller|Add0~14\,
	sumout => \VGA_Controller|Add0~17_sumout\,
	cout => \VGA_Controller|Add0~18\);

-- Location: FF_X28_Y77_N59
\VGA_Controller|h_count[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputCLKENA0_outclk\,
	asdata => \VGA_Controller|Add0~17_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \VGA_Controller|ALT_INV_LessThan0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller|h_count[2]~DUPLICATE_q\);

-- Location: MLABCELL_X28_Y77_N9
\VGA_Controller|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|Add0~21_sumout\ = SUM(( \VGA_Controller|h_count\(3) ) + ( GND ) + ( \VGA_Controller|Add0~18\ ))
-- \VGA_Controller|Add0~22\ = CARRY(( \VGA_Controller|h_count\(3) ) + ( GND ) + ( \VGA_Controller|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \VGA_Controller|ALT_INV_h_count\(3),
	cin => \VGA_Controller|Add0~18\,
	sumout => \VGA_Controller|Add0~21_sumout\,
	cout => \VGA_Controller|Add0~22\);

-- Location: FF_X28_Y77_N41
\VGA_Controller|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputCLKENA0_outclk\,
	asdata => \VGA_Controller|Add0~21_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \VGA_Controller|ALT_INV_LessThan0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller|h_count\(3));

-- Location: MLABCELL_X28_Y77_N12
\VGA_Controller|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|Add0~5_sumout\ = SUM(( \VGA_Controller|h_count\(4) ) + ( GND ) + ( \VGA_Controller|Add0~22\ ))
-- \VGA_Controller|Add0~6\ = CARRY(( \VGA_Controller|h_count\(4) ) + ( GND ) + ( \VGA_Controller|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \VGA_Controller|ALT_INV_h_count\(4),
	cin => \VGA_Controller|Add0~22\,
	sumout => \VGA_Controller|Add0~5_sumout\,
	cout => \VGA_Controller|Add0~6\);

-- Location: FF_X28_Y77_N53
\VGA_Controller|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputCLKENA0_outclk\,
	asdata => \VGA_Controller|Add0~5_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \VGA_Controller|ALT_INV_LessThan0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller|h_count\(4));

-- Location: MLABCELL_X28_Y77_N15
\VGA_Controller|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|Add0~1_sumout\ = SUM(( \VGA_Controller|h_count[5]~DUPLICATE_q\ ) + ( GND ) + ( \VGA_Controller|Add0~6\ ))
-- \VGA_Controller|Add0~2\ = CARRY(( \VGA_Controller|h_count[5]~DUPLICATE_q\ ) + ( GND ) + ( \VGA_Controller|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA_Controller|ALT_INV_h_count[5]~DUPLICATE_q\,
	cin => \VGA_Controller|Add0~6\,
	sumout => \VGA_Controller|Add0~1_sumout\,
	cout => \VGA_Controller|Add0~2\);

-- Location: FF_X28_Y77_N49
\VGA_Controller|h_count[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputCLKENA0_outclk\,
	asdata => \VGA_Controller|Add0~1_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \VGA_Controller|ALT_INV_LessThan0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller|h_count[5]~DUPLICATE_q\);

-- Location: MLABCELL_X28_Y77_N18
\VGA_Controller|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|Add0~33_sumout\ = SUM(( \VGA_Controller|h_count\(6) ) + ( GND ) + ( \VGA_Controller|Add0~2\ ))
-- \VGA_Controller|Add0~34\ = CARRY(( \VGA_Controller|h_count\(6) ) + ( GND ) + ( \VGA_Controller|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Controller|ALT_INV_h_count\(6),
	cin => \VGA_Controller|Add0~2\,
	sumout => \VGA_Controller|Add0~33_sumout\,
	cout => \VGA_Controller|Add0~34\);

-- Location: FF_X28_Y77_N32
\VGA_Controller|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputCLKENA0_outclk\,
	asdata => \VGA_Controller|Add0~33_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \VGA_Controller|ALT_INV_LessThan0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller|h_count\(6));

-- Location: MLABCELL_X28_Y77_N21
\VGA_Controller|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|Add0~37_sumout\ = SUM(( \VGA_Controller|h_count\(7) ) + ( GND ) + ( \VGA_Controller|Add0~34\ ))
-- \VGA_Controller|Add0~38\ = CARRY(( \VGA_Controller|h_count\(7) ) + ( GND ) + ( \VGA_Controller|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \VGA_Controller|ALT_INV_h_count\(7),
	cin => \VGA_Controller|Add0~34\,
	sumout => \VGA_Controller|Add0~37_sumout\,
	cout => \VGA_Controller|Add0~38\);

-- Location: FF_X28_Y77_N44
\VGA_Controller|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputCLKENA0_outclk\,
	asdata => \VGA_Controller|Add0~37_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \VGA_Controller|ALT_INV_LessThan0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller|h_count\(7));

-- Location: FF_X28_Y77_N50
\VGA_Controller|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputCLKENA0_outclk\,
	asdata => \VGA_Controller|Add0~1_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \VGA_Controller|ALT_INV_LessThan0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller|h_count\(5));

-- Location: MLABCELL_X28_Y77_N42
\VGA_Controller|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|LessThan0~1_combout\ = ( !\VGA_Controller|h_count\(5) & ( (!\VGA_Controller|h_count\(6) & (!\VGA_Controller|h_count\(4) & !\VGA_Controller|h_count\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Controller|ALT_INV_h_count\(6),
	datac => \VGA_Controller|ALT_INV_h_count\(4),
	datad => \VGA_Controller|ALT_INV_h_count\(7),
	dataf => \VGA_Controller|ALT_INV_h_count\(5),
	combout => \VGA_Controller|LessThan0~1_combout\);

-- Location: MLABCELL_X28_Y77_N24
\VGA_Controller|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|Add0~41_sumout\ = SUM(( \VGA_Controller|h_count\(8) ) + ( GND ) + ( \VGA_Controller|Add0~38\ ))
-- \VGA_Controller|Add0~42\ = CARRY(( \VGA_Controller|h_count\(8) ) + ( GND ) + ( \VGA_Controller|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA_Controller|ALT_INV_h_count\(8),
	cin => \VGA_Controller|Add0~38\,
	sumout => \VGA_Controller|Add0~41_sumout\,
	cout => \VGA_Controller|Add0~42\);

-- Location: FF_X28_Y77_N47
\VGA_Controller|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputCLKENA0_outclk\,
	asdata => \VGA_Controller|Add0~41_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \VGA_Controller|ALT_INV_LessThan0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller|h_count\(8));

-- Location: MLABCELL_X28_Y77_N27
\VGA_Controller|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|Add0~25_sumout\ = SUM(( \VGA_Controller|h_count\(9) ) + ( GND ) + ( \VGA_Controller|Add0~42\ ))
-- \VGA_Controller|Add0~26\ = CARRY(( \VGA_Controller|h_count\(9) ) + ( GND ) + ( \VGA_Controller|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \VGA_Controller|ALT_INV_h_count\(9),
	cin => \VGA_Controller|Add0~42\,
	sumout => \VGA_Controller|Add0~25_sumout\,
	cout => \VGA_Controller|Add0~26\);

-- Location: FF_X28_Y77_N17
\VGA_Controller|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputCLKENA0_outclk\,
	asdata => \VGA_Controller|Add0~25_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \VGA_Controller|ALT_INV_LessThan0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller|h_count\(9));

-- Location: MLABCELL_X28_Y77_N30
\VGA_Controller|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|Add0~29_sumout\ = SUM(( \VGA_Controller|h_count\(10) ) + ( GND ) + ( \VGA_Controller|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Controller|ALT_INV_h_count\(10),
	cin => \VGA_Controller|Add0~26\,
	sumout => \VGA_Controller|Add0~29_sumout\);

-- Location: FF_X28_Y77_N11
\VGA_Controller|h_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputCLKENA0_outclk\,
	asdata => \VGA_Controller|Add0~29_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \VGA_Controller|ALT_INV_LessThan0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller|h_count\(10));

-- Location: FF_X28_Y77_N58
\VGA_Controller|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputCLKENA0_outclk\,
	asdata => \VGA_Controller|Add0~17_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \VGA_Controller|ALT_INV_LessThan0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller|h_count\(2));

-- Location: MLABCELL_X28_Y77_N51
\VGA_Controller|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|LessThan0~0_combout\ = ( !\VGA_Controller|h_count\(8) & ( \VGA_Controller|h_count\(2) & ( (!\VGA_Controller|h_count\(9) & ((!\VGA_Controller|h_count\(0)) # ((!\VGA_Controller|h_count\(3)) # (!\VGA_Controller|h_count\(1))))) ) ) ) # ( 
-- !\VGA_Controller|h_count\(8) & ( !\VGA_Controller|h_count\(2) & ( !\VGA_Controller|h_count\(9) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000011110000111000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller|ALT_INV_h_count\(0),
	datab => \VGA_Controller|ALT_INV_h_count\(3),
	datac => \VGA_Controller|ALT_INV_h_count\(9),
	datad => \VGA_Controller|ALT_INV_h_count\(1),
	datae => \VGA_Controller|ALT_INV_h_count\(8),
	dataf => \VGA_Controller|ALT_INV_h_count\(2),
	combout => \VGA_Controller|LessThan0~0_combout\);

-- Location: LABCELL_X29_Y77_N45
\VGA_Controller|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|LessThan0~2_combout\ = ( \VGA_Controller|LessThan0~0_combout\ & ( (!\VGA_Controller|h_count\(10)) # (\VGA_Controller|LessThan0~1_combout\) ) ) # ( !\VGA_Controller|LessThan0~0_combout\ & ( !\VGA_Controller|h_count\(10) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \VGA_Controller|ALT_INV_LessThan0~1_combout\,
	datad => \VGA_Controller|ALT_INV_h_count\(10),
	dataf => \VGA_Controller|ALT_INV_LessThan0~0_combout\,
	combout => \VGA_Controller|LessThan0~2_combout\);

-- Location: FF_X29_Y77_N5
\VGA_Controller|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputCLKENA0_outclk\,
	d => \VGA_Controller|Add1~29_sumout\,
	asdata => \VGA_Controller|v_count\(1),
	clrn => \reset_n~input_o\,
	sclr => \VGA_Controller|v_count~1_combout\,
	sload => \VGA_Controller|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller|v_count\(1));

-- Location: LABCELL_X29_Y77_N6
\VGA_Controller|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|Add1~13_sumout\ = SUM(( \VGA_Controller|v_count\(2) ) + ( GND ) + ( \VGA_Controller|Add1~30\ ))
-- \VGA_Controller|Add1~14\ = CARRY(( \VGA_Controller|v_count\(2) ) + ( GND ) + ( \VGA_Controller|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Controller|ALT_INV_v_count\(2),
	cin => \VGA_Controller|Add1~30\,
	sumout => \VGA_Controller|Add1~13_sumout\,
	cout => \VGA_Controller|Add1~14\);

-- Location: FF_X29_Y77_N8
\VGA_Controller|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputCLKENA0_outclk\,
	d => \VGA_Controller|Add1~13_sumout\,
	asdata => \VGA_Controller|v_count\(2),
	clrn => \reset_n~input_o\,
	sclr => \VGA_Controller|v_count~1_combout\,
	sload => \VGA_Controller|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller|v_count\(2));

-- Location: LABCELL_X29_Y77_N9
\VGA_Controller|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|Add1~9_sumout\ = SUM(( \VGA_Controller|v_count\(3) ) + ( GND ) + ( \VGA_Controller|Add1~14\ ))
-- \VGA_Controller|Add1~10\ = CARRY(( \VGA_Controller|v_count\(3) ) + ( GND ) + ( \VGA_Controller|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \VGA_Controller|ALT_INV_v_count\(3),
	cin => \VGA_Controller|Add1~14\,
	sumout => \VGA_Controller|Add1~9_sumout\,
	cout => \VGA_Controller|Add1~10\);

-- Location: FF_X29_Y77_N11
\VGA_Controller|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputCLKENA0_outclk\,
	d => \VGA_Controller|Add1~9_sumout\,
	asdata => \VGA_Controller|v_count\(3),
	clrn => \reset_n~input_o\,
	sclr => \VGA_Controller|v_count~1_combout\,
	sload => \VGA_Controller|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller|v_count\(3));

-- Location: LABCELL_X29_Y77_N12
\VGA_Controller|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|Add1~5_sumout\ = SUM(( \VGA_Controller|v_count\(4) ) + ( GND ) + ( \VGA_Controller|Add1~10\ ))
-- \VGA_Controller|Add1~6\ = CARRY(( \VGA_Controller|v_count\(4) ) + ( GND ) + ( \VGA_Controller|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Controller|ALT_INV_v_count\(4),
	cin => \VGA_Controller|Add1~10\,
	sumout => \VGA_Controller|Add1~5_sumout\,
	cout => \VGA_Controller|Add1~6\);

-- Location: FF_X29_Y77_N14
\VGA_Controller|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputCLKENA0_outclk\,
	d => \VGA_Controller|Add1~5_sumout\,
	asdata => \VGA_Controller|v_count\(4),
	clrn => \reset_n~input_o\,
	sclr => \VGA_Controller|v_count~1_combout\,
	sload => \VGA_Controller|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller|v_count\(4));

-- Location: LABCELL_X29_Y77_N15
\VGA_Controller|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|Add1~17_sumout\ = SUM(( \VGA_Controller|v_count\(5) ) + ( GND ) + ( \VGA_Controller|Add1~6\ ))
-- \VGA_Controller|Add1~18\ = CARRY(( \VGA_Controller|v_count\(5) ) + ( GND ) + ( \VGA_Controller|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \VGA_Controller|ALT_INV_v_count\(5),
	cin => \VGA_Controller|Add1~6\,
	sumout => \VGA_Controller|Add1~17_sumout\,
	cout => \VGA_Controller|Add1~18\);

-- Location: FF_X29_Y77_N17
\VGA_Controller|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputCLKENA0_outclk\,
	d => \VGA_Controller|Add1~17_sumout\,
	asdata => \VGA_Controller|v_count\(5),
	clrn => \reset_n~input_o\,
	sclr => \VGA_Controller|v_count~1_combout\,
	sload => \VGA_Controller|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller|v_count\(5));

-- Location: LABCELL_X29_Y77_N18
\VGA_Controller|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|Add1~1_sumout\ = SUM(( \VGA_Controller|v_count\(6) ) + ( GND ) + ( \VGA_Controller|Add1~18\ ))
-- \VGA_Controller|Add1~2\ = CARRY(( \VGA_Controller|v_count\(6) ) + ( GND ) + ( \VGA_Controller|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \VGA_Controller|ALT_INV_v_count\(6),
	cin => \VGA_Controller|Add1~18\,
	sumout => \VGA_Controller|Add1~1_sumout\,
	cout => \VGA_Controller|Add1~2\);

-- Location: FF_X29_Y77_N20
\VGA_Controller|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputCLKENA0_outclk\,
	d => \VGA_Controller|Add1~1_sumout\,
	asdata => \VGA_Controller|v_count\(6),
	clrn => \reset_n~input_o\,
	sclr => \VGA_Controller|v_count~1_combout\,
	sload => \VGA_Controller|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller|v_count\(6));

-- Location: LABCELL_X29_Y77_N21
\VGA_Controller|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|Add1~21_sumout\ = SUM(( \VGA_Controller|v_count\(7) ) + ( GND ) + ( \VGA_Controller|Add1~2\ ))
-- \VGA_Controller|Add1~22\ = CARRY(( \VGA_Controller|v_count\(7) ) + ( GND ) + ( \VGA_Controller|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA_Controller|ALT_INV_v_count\(7),
	cin => \VGA_Controller|Add1~2\,
	sumout => \VGA_Controller|Add1~21_sumout\,
	cout => \VGA_Controller|Add1~22\);

-- Location: FF_X29_Y77_N23
\VGA_Controller|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputCLKENA0_outclk\,
	d => \VGA_Controller|Add1~21_sumout\,
	asdata => \VGA_Controller|v_count\(7),
	clrn => \reset_n~input_o\,
	sclr => \VGA_Controller|v_count~1_combout\,
	sload => \VGA_Controller|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller|v_count\(7));

-- Location: LABCELL_X29_Y77_N24
\VGA_Controller|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|Add1~33_sumout\ = SUM(( \VGA_Controller|v_count\(8) ) + ( GND ) + ( \VGA_Controller|Add1~22\ ))
-- \VGA_Controller|Add1~34\ = CARRY(( \VGA_Controller|v_count\(8) ) + ( GND ) + ( \VGA_Controller|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \VGA_Controller|ALT_INV_v_count\(8),
	cin => \VGA_Controller|Add1~22\,
	sumout => \VGA_Controller|Add1~33_sumout\,
	cout => \VGA_Controller|Add1~34\);

-- Location: FF_X29_Y77_N26
\VGA_Controller|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputCLKENA0_outclk\,
	d => \VGA_Controller|Add1~33_sumout\,
	asdata => \VGA_Controller|v_count\(8),
	clrn => \reset_n~input_o\,
	sclr => \VGA_Controller|v_count~1_combout\,
	sload => \VGA_Controller|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller|v_count\(8));

-- Location: LABCELL_X29_Y77_N48
\VGA_Controller|LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|LessThan1~1_combout\ = ( !\VGA_Controller|v_count\(0) & ( !\VGA_Controller|v_count\(8) & ( (!\VGA_Controller|v_count\(6) & (!\VGA_Controller|v_count\(5) & (!\VGA_Controller|v_count\(1) & !\VGA_Controller|v_count\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller|ALT_INV_v_count\(6),
	datab => \VGA_Controller|ALT_INV_v_count\(5),
	datac => \VGA_Controller|ALT_INV_v_count\(1),
	datad => \VGA_Controller|ALT_INV_v_count\(2),
	datae => \VGA_Controller|ALT_INV_v_count\(0),
	dataf => \VGA_Controller|ALT_INV_v_count\(8),
	combout => \VGA_Controller|LessThan1~1_combout\);

-- Location: LABCELL_X29_Y77_N42
\VGA_Controller|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|LessThan1~0_combout\ = ( !\VGA_Controller|v_count\(3) & ( (!\VGA_Controller|v_count\(8) & (!\VGA_Controller|v_count\(5) & !\VGA_Controller|v_count\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller|ALT_INV_v_count\(8),
	datab => \VGA_Controller|ALT_INV_v_count\(5),
	datac => \VGA_Controller|ALT_INV_v_count\(6),
	dataf => \VGA_Controller|ALT_INV_v_count\(3),
	combout => \VGA_Controller|LessThan1~0_combout\);

-- Location: LABCELL_X29_Y77_N27
\VGA_Controller|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|Add1~37_sumout\ = SUM(( \VGA_Controller|v_count\(9) ) + ( GND ) + ( \VGA_Controller|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA_Controller|ALT_INV_v_count\(9),
	cin => \VGA_Controller|Add1~34\,
	sumout => \VGA_Controller|Add1~37_sumout\);

-- Location: FF_X29_Y77_N29
\VGA_Controller|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputCLKENA0_outclk\,
	d => \VGA_Controller|Add1~37_sumout\,
	asdata => \VGA_Controller|v_count\(9),
	clrn => \reset_n~input_o\,
	sclr => \VGA_Controller|v_count~1_combout\,
	sload => \VGA_Controller|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller|v_count\(9));

-- Location: LABCELL_X29_Y77_N54
\VGA_Controller|v_count~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|v_count~0_combout\ = ( \VGA_Controller|v_count\(9) & ( \VGA_Controller|v_count\(6) & ( (\VGA_Controller|v_count\(8)) # (\VGA_Controller|v_count\(7)) ) ) ) # ( \VGA_Controller|v_count\(9) & ( !\VGA_Controller|v_count\(6) & ( 
-- ((\VGA_Controller|v_count\(7) & ((\VGA_Controller|v_count\(4)) # (\VGA_Controller|v_count\(5))))) # (\VGA_Controller|v_count\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111110101111100000000000000000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller|ALT_INV_v_count\(7),
	datab => \VGA_Controller|ALT_INV_v_count\(5),
	datac => \VGA_Controller|ALT_INV_v_count\(8),
	datad => \VGA_Controller|ALT_INV_v_count\(4),
	datae => \VGA_Controller|ALT_INV_v_count\(9),
	dataf => \VGA_Controller|ALT_INV_v_count\(6),
	combout => \VGA_Controller|v_count~0_combout\);

-- Location: LABCELL_X29_Y77_N39
\VGA_Controller|v_count~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|v_count~1_combout\ = ( \VGA_Controller|v_count~0_combout\ & ( \VGA_Controller|LessThan0~0_combout\ & ( (!\VGA_Controller|LessThan1~1_combout\ & (!\VGA_Controller|LessThan1~0_combout\ & (!\VGA_Controller|LessThan0~1_combout\ & 
-- \VGA_Controller|h_count\(10)))) ) ) ) # ( \VGA_Controller|v_count~0_combout\ & ( !\VGA_Controller|LessThan0~0_combout\ & ( (!\VGA_Controller|LessThan1~1_combout\ & (!\VGA_Controller|LessThan1~0_combout\ & \VGA_Controller|h_count\(10))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000100000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller|ALT_INV_LessThan1~1_combout\,
	datab => \VGA_Controller|ALT_INV_LessThan1~0_combout\,
	datac => \VGA_Controller|ALT_INV_LessThan0~1_combout\,
	datad => \VGA_Controller|ALT_INV_h_count\(10),
	datae => \VGA_Controller|ALT_INV_v_count~0_combout\,
	dataf => \VGA_Controller|ALT_INV_LessThan0~0_combout\,
	combout => \VGA_Controller|v_count~1_combout\);

-- Location: FF_X29_Y77_N2
\VGA_Controller|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputCLKENA0_outclk\,
	d => \VGA_Controller|Add1~25_sumout\,
	asdata => \VGA_Controller|v_count\(0),
	clrn => \reset_n~input_o\,
	sclr => \VGA_Controller|v_count~1_combout\,
	sload => \VGA_Controller|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller|v_count\(0));

-- Location: LABCELL_X30_Y77_N6
\VGA_Controller|row[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|row[0]~feeder_combout\ = \VGA_Controller|Add1~25_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Controller|ALT_INV_Add1~25_sumout\,
	combout => \VGA_Controller|row[0]~feeder_combout\);

-- Location: LABCELL_X30_Y77_N0
\VGA_Controller|v_count~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|v_count~2_combout\ = ( \VGA_Controller|Add1~1_sumout\ & ( (!\VGA_Controller|LessThan0~2_combout\ & ((!\VGA_Controller|v_count~1_combout\))) # (\VGA_Controller|LessThan0~2_combout\ & (\VGA_Controller|v_count\(6))) ) ) # ( 
-- !\VGA_Controller|Add1~1_sumout\ & ( (\VGA_Controller|LessThan0~2_combout\ & \VGA_Controller|v_count\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110110001101100011011000110110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller|ALT_INV_LessThan0~2_combout\,
	datab => \VGA_Controller|ALT_INV_v_count\(6),
	datac => \VGA_Controller|ALT_INV_v_count~1_combout\,
	dataf => \VGA_Controller|ALT_INV_Add1~1_sumout\,
	combout => \VGA_Controller|v_count~2_combout\);

-- Location: LABCELL_X30_Y77_N15
\VGA_Controller|v_count~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|v_count~4_combout\ = ( \VGA_Controller|Add1~9_sumout\ & ( ((\VGA_Controller|h_count\(10) & ((!\VGA_Controller|LessThan0~1_combout\) # (!\VGA_Controller|LessThan0~0_combout\)))) # (\VGA_Controller|v_count\(3)) ) ) # ( 
-- !\VGA_Controller|Add1~9_sumout\ & ( (\VGA_Controller|v_count\(3) & ((!\VGA_Controller|h_count\(10)) # ((\VGA_Controller|LessThan0~1_combout\ & \VGA_Controller|LessThan0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101011000000001010101101010100111111110101010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller|ALT_INV_h_count\(10),
	datab => \VGA_Controller|ALT_INV_LessThan0~1_combout\,
	datac => \VGA_Controller|ALT_INV_LessThan0~0_combout\,
	datad => \VGA_Controller|ALT_INV_v_count\(3),
	dataf => \VGA_Controller|ALT_INV_Add1~9_sumout\,
	combout => \VGA_Controller|v_count~4_combout\);

-- Location: LABCELL_X30_Y77_N18
\VGA_Controller|LessThan7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|LessThan7~1_combout\ = ( \VGA_Controller|Add1~33_sumout\ & ( (!\VGA_Controller|v_count\(7) & (!\VGA_Controller|v_count\(8) & \VGA_Controller|LessThan0~2_combout\)) ) ) # ( !\VGA_Controller|Add1~33_sumout\ & ( 
-- (!\VGA_Controller|LessThan0~2_combout\ & (((!\VGA_Controller|Add1~21_sumout\)))) # (\VGA_Controller|LessThan0~2_combout\ & (!\VGA_Controller|v_count\(7) & (!\VGA_Controller|v_count\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100000001000111110000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller|ALT_INV_v_count\(7),
	datab => \VGA_Controller|ALT_INV_v_count\(8),
	datac => \VGA_Controller|ALT_INV_LessThan0~2_combout\,
	datad => \VGA_Controller|ALT_INV_Add1~21_sumout\,
	dataf => \VGA_Controller|ALT_INV_Add1~33_sumout\,
	combout => \VGA_Controller|LessThan7~1_combout\);

-- Location: LABCELL_X29_Y77_N33
\VGA_Controller|v_count~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|v_count~8_combout\ = ( \VGA_Controller|Add1~17_sumout\ & ( (!\VGA_Controller|v_count~1_combout\ & ((!\VGA_Controller|LessThan0~2_combout\) # (\VGA_Controller|v_count\(5)))) ) ) # ( !\VGA_Controller|Add1~17_sumout\ & ( 
-- (\VGA_Controller|v_count\(5) & (!\VGA_Controller|v_count~1_combout\ & \VGA_Controller|LessThan0~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000011110000010100001111000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller|ALT_INV_v_count\(5),
	datac => \VGA_Controller|ALT_INV_v_count~1_combout\,
	datad => \VGA_Controller|ALT_INV_LessThan0~2_combout\,
	dataf => \VGA_Controller|ALT_INV_Add1~17_sumout\,
	combout => \VGA_Controller|v_count~8_combout\);

-- Location: LABCELL_X30_Y77_N45
\VGA_Controller|v_count~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|v_count~3_combout\ = ( \VGA_Controller|Add1~5_sumout\ & ( ((\VGA_Controller|h_count\(10) & ((!\VGA_Controller|LessThan0~1_combout\) # (!\VGA_Controller|LessThan0~0_combout\)))) # (\VGA_Controller|v_count\(4)) ) ) # ( 
-- !\VGA_Controller|Add1~5_sumout\ & ( (\VGA_Controller|v_count\(4) & ((!\VGA_Controller|h_count\(10)) # ((\VGA_Controller|LessThan0~1_combout\ & \VGA_Controller|LessThan0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000001010101010000000101010101111111010101010111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller|ALT_INV_v_count\(4),
	datab => \VGA_Controller|ALT_INV_LessThan0~1_combout\,
	datac => \VGA_Controller|ALT_INV_LessThan0~0_combout\,
	datad => \VGA_Controller|ALT_INV_h_count\(10),
	dataf => \VGA_Controller|ALT_INV_Add1~5_sumout\,
	combout => \VGA_Controller|v_count~3_combout\);

-- Location: LABCELL_X30_Y77_N51
\VGA_Controller|LessThan7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|LessThan7~0_combout\ = ( !\VGA_Controller|v_count~1_combout\ & ( (!\VGA_Controller|LessThan0~2_combout\ & ((\VGA_Controller|Add1~37_sumout\))) # (\VGA_Controller|LessThan0~2_combout\ & (\VGA_Controller|v_count\(9))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller|ALT_INV_LessThan0~2_combout\,
	datac => \VGA_Controller|ALT_INV_v_count\(9),
	datad => \VGA_Controller|ALT_INV_Add1~37_sumout\,
	dataf => \VGA_Controller|ALT_INV_v_count~1_combout\,
	combout => \VGA_Controller|LessThan7~0_combout\);

-- Location: LABCELL_X30_Y77_N54
\VGA_Controller|LessThan7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|LessThan7~2_combout\ = ( \VGA_Controller|v_count~3_combout\ & ( \VGA_Controller|LessThan7~0_combout\ & ( (\VGA_Controller|LessThan7~1_combout\ & ((!\VGA_Controller|v_count~2_combout\) # ((!\VGA_Controller|v_count~4_combout\ & 
-- !\VGA_Controller|v_count~8_combout\)))) ) ) ) # ( !\VGA_Controller|v_count~3_combout\ & ( \VGA_Controller|LessThan7~0_combout\ & ( (\VGA_Controller|LessThan7~1_combout\ & ((!\VGA_Controller|v_count~2_combout\) # (!\VGA_Controller|v_count~8_combout\))) ) ) 
-- ) # ( \VGA_Controller|v_count~3_combout\ & ( !\VGA_Controller|LessThan7~0_combout\ ) ) # ( !\VGA_Controller|v_count~3_combout\ & ( !\VGA_Controller|LessThan7~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000010100000111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller|ALT_INV_v_count~2_combout\,
	datab => \VGA_Controller|ALT_INV_v_count~4_combout\,
	datac => \VGA_Controller|ALT_INV_LessThan7~1_combout\,
	datad => \VGA_Controller|ALT_INV_v_count~8_combout\,
	datae => \VGA_Controller|ALT_INV_v_count~3_combout\,
	dataf => \VGA_Controller|ALT_INV_LessThan7~0_combout\,
	combout => \VGA_Controller|LessThan7~2_combout\);

-- Location: FF_X30_Y77_N8
\VGA_Controller|row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputCLKENA0_outclk\,
	d => \VGA_Controller|row[0]~feeder_combout\,
	asdata => \VGA_Controller|v_count\(0),
	clrn => \reset_n~input_o\,
	sclr => \VGA_Controller|v_count~1_combout\,
	sload => \VGA_Controller|LessThan0~2_combout\,
	ena => \VGA_Controller|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller|row\(0));

-- Location: LABCELL_X30_Y77_N36
\VGA_Controller|LessThan7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|LessThan7~3_combout\ = ( \VGA_Controller|v_count~3_combout\ & ( \VGA_Controller|v_count~4_combout\ ) ) # ( !\VGA_Controller|v_count~3_combout\ & ( \VGA_Controller|v_count~4_combout\ & ( (!\VGA_Controller|v_count~1_combout\ & 
-- ((!\VGA_Controller|LessThan0~2_combout\ & ((\VGA_Controller|Add1~17_sumout\))) # (\VGA_Controller|LessThan0~2_combout\ & (\VGA_Controller|v_count\(5))))) ) ) ) # ( \VGA_Controller|v_count~3_combout\ & ( !\VGA_Controller|v_count~4_combout\ & ( 
-- (!\VGA_Controller|v_count~1_combout\ & ((!\VGA_Controller|LessThan0~2_combout\ & ((\VGA_Controller|Add1~17_sumout\))) # (\VGA_Controller|LessThan0~2_combout\ & (\VGA_Controller|v_count\(5))))) ) ) ) # ( !\VGA_Controller|v_count~3_combout\ & ( 
-- !\VGA_Controller|v_count~4_combout\ & ( (!\VGA_Controller|v_count~1_combout\ & ((!\VGA_Controller|LessThan0~2_combout\ & ((\VGA_Controller|Add1~17_sumout\))) # (\VGA_Controller|LessThan0~2_combout\ & (\VGA_Controller|v_count\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000100001011000000010000101100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller|ALT_INV_LessThan0~2_combout\,
	datab => \VGA_Controller|ALT_INV_v_count\(5),
	datac => \VGA_Controller|ALT_INV_v_count~1_combout\,
	datad => \VGA_Controller|ALT_INV_Add1~17_sumout\,
	datae => \VGA_Controller|ALT_INV_v_count~3_combout\,
	dataf => \VGA_Controller|ALT_INV_v_count~4_combout\,
	combout => \VGA_Controller|LessThan7~3_combout\);

-- Location: MLABCELL_X28_Y77_N39
\VGA_Controller|LessThan6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|LessThan6~0_combout\ = (!\VGA_Controller|Add0~33_sumout\ & (!\VGA_Controller|Add0~1_sumout\ & (!\VGA_Controller|Add0~37_sumout\ & !\VGA_Controller|Add0~29_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller|ALT_INV_Add0~33_sumout\,
	datab => \VGA_Controller|ALT_INV_Add0~1_sumout\,
	datac => \VGA_Controller|ALT_INV_Add0~37_sumout\,
	datad => \VGA_Controller|ALT_INV_Add0~29_sumout\,
	combout => \VGA_Controller|LessThan6~0_combout\);

-- Location: LABCELL_X29_Y77_N30
\VGA_Controller|LessThan6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|LessThan6~1_combout\ = ( \VGA_Controller|Add0~41_sumout\ & ( (\VGA_Controller|LessThan0~2_combout\ & ((\VGA_Controller|Add0~25_sumout\) # (\VGA_Controller|Add0~29_sumout\))) ) ) # ( !\VGA_Controller|Add0~41_sumout\ & ( 
-- (\VGA_Controller|LessThan0~2_combout\ & \VGA_Controller|Add0~29_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011001100110000001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Controller|ALT_INV_LessThan0~2_combout\,
	datac => \VGA_Controller|ALT_INV_Add0~29_sumout\,
	datad => \VGA_Controller|ALT_INV_Add0~25_sumout\,
	dataf => \VGA_Controller|ALT_INV_Add0~41_sumout\,
	combout => \VGA_Controller|LessThan6~1_combout\);

-- Location: LABCELL_X30_Y77_N30
\VGA_Controller|process_0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|process_0~11_combout\ = ( \VGA_Controller|LessThan7~0_combout\ & ( \VGA_Controller|LessThan6~1_combout\ & ( (\VGA_Controller|LessThan7~1_combout\ & (\VGA_Controller|LessThan6~0_combout\ & ((!\VGA_Controller|v_count~2_combout\) # 
-- (!\VGA_Controller|LessThan7~3_combout\)))) ) ) ) # ( !\VGA_Controller|LessThan7~0_combout\ & ( \VGA_Controller|LessThan6~1_combout\ & ( \VGA_Controller|LessThan6~0_combout\ ) ) ) # ( \VGA_Controller|LessThan7~0_combout\ & ( 
-- !\VGA_Controller|LessThan6~1_combout\ & ( (\VGA_Controller|LessThan7~1_combout\ & ((!\VGA_Controller|v_count~2_combout\) # (!\VGA_Controller|LessThan7~3_combout\))) ) ) ) # ( !\VGA_Controller|LessThan7~0_combout\ & ( !\VGA_Controller|LessThan6~1_combout\ 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001100100011001000000000111111110000000000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller|ALT_INV_v_count~2_combout\,
	datab => \VGA_Controller|ALT_INV_LessThan7~1_combout\,
	datac => \VGA_Controller|ALT_INV_LessThan7~3_combout\,
	datad => \VGA_Controller|ALT_INV_LessThan6~0_combout\,
	datae => \VGA_Controller|ALT_INV_LessThan7~0_combout\,
	dataf => \VGA_Controller|ALT_INV_LessThan6~1_combout\,
	combout => \VGA_Controller|process_0~11_combout\);

-- Location: FF_X30_Y77_N32
\VGA_Controller|disp_ena\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputCLKENA0_outclk\,
	d => \VGA_Controller|process_0~11_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller|disp_ena~q\);

-- Location: LABCELL_X33_Y77_N15
\ImageGenerator|red[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ImageGenerator|red\(0) = ( \VGA_Controller|disp_ena~q\ & ( \ImageGenerator|red\(0) & ( \VGA_Controller|row\(0) ) ) ) # ( !\VGA_Controller|disp_ena~q\ & ( \ImageGenerator|red\(0) ) ) # ( \VGA_Controller|disp_ena~q\ & ( !\ImageGenerator|red\(0) & ( 
-- \VGA_Controller|row\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \VGA_Controller|ALT_INV_row\(0),
	datae => \VGA_Controller|ALT_INV_disp_ena~q\,
	dataf => \ImageGenerator|ALT_INV_red\(0),
	combout => \ImageGenerator|red\(0));

-- Location: LABCELL_X30_Y77_N9
\VGA_Controller|row[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|row[1]~feeder_combout\ = ( \VGA_Controller|Add1~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \VGA_Controller|ALT_INV_Add1~29_sumout\,
	combout => \VGA_Controller|row[1]~feeder_combout\);

-- Location: FF_X30_Y77_N10
\VGA_Controller|row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputCLKENA0_outclk\,
	d => \VGA_Controller|row[1]~feeder_combout\,
	asdata => \VGA_Controller|v_count\(1),
	clrn => \reset_n~input_o\,
	sclr => \VGA_Controller|v_count~1_combout\,
	sload => \VGA_Controller|LessThan0~2_combout\,
	ena => \VGA_Controller|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller|row\(1));

-- Location: LABCELL_X33_Y77_N18
\ImageGenerator|red[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ImageGenerator|red\(1) = ( \VGA_Controller|disp_ena~q\ & ( \ImageGenerator|red\(1) & ( \VGA_Controller|row\(1) ) ) ) # ( !\VGA_Controller|disp_ena~q\ & ( \ImageGenerator|red\(1) ) ) # ( \VGA_Controller|disp_ena~q\ & ( !\ImageGenerator|red\(1) & ( 
-- \VGA_Controller|row\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \VGA_Controller|ALT_INV_row\(1),
	datae => \VGA_Controller|ALT_INV_disp_ena~q\,
	dataf => \ImageGenerator|ALT_INV_red\(1),
	combout => \ImageGenerator|red\(1));

-- Location: LABCELL_X30_Y77_N27
\VGA_Controller|row[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|row[2]~feeder_combout\ = ( \VGA_Controller|Add1~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \VGA_Controller|ALT_INV_Add1~13_sumout\,
	combout => \VGA_Controller|row[2]~feeder_combout\);

-- Location: FF_X30_Y77_N28
\VGA_Controller|row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputCLKENA0_outclk\,
	d => \VGA_Controller|row[2]~feeder_combout\,
	asdata => \VGA_Controller|v_count\(2),
	clrn => \reset_n~input_o\,
	sclr => \VGA_Controller|v_count~1_combout\,
	sload => \VGA_Controller|LessThan0~2_combout\,
	ena => \VGA_Controller|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller|row\(2));

-- Location: LABCELL_X33_Y77_N24
\ImageGenerator|red[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ImageGenerator|red\(2) = ( \VGA_Controller|disp_ena~q\ & ( \ImageGenerator|red\(2) & ( \VGA_Controller|row\(2) ) ) ) # ( !\VGA_Controller|disp_ena~q\ & ( \ImageGenerator|red\(2) ) ) # ( \VGA_Controller|disp_ena~q\ & ( !\ImageGenerator|red\(2) & ( 
-- \VGA_Controller|row\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \VGA_Controller|ALT_INV_row\(2),
	datae => \VGA_Controller|ALT_INV_disp_ena~q\,
	dataf => \ImageGenerator|ALT_INV_red\(2),
	combout => \ImageGenerator|red\(2));

-- Location: LABCELL_X30_Y77_N42
\VGA_Controller|row[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|row[3]~feeder_combout\ = ( \VGA_Controller|Add1~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \VGA_Controller|ALT_INV_Add1~9_sumout\,
	combout => \VGA_Controller|row[3]~feeder_combout\);

-- Location: FF_X30_Y77_N43
\VGA_Controller|row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputCLKENA0_outclk\,
	d => \VGA_Controller|row[3]~feeder_combout\,
	asdata => \VGA_Controller|v_count\(3),
	clrn => \reset_n~input_o\,
	sclr => \VGA_Controller|v_count~1_combout\,
	sload => \VGA_Controller|LessThan0~2_combout\,
	ena => \VGA_Controller|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller|row\(3));

-- Location: LABCELL_X33_Y77_N33
\ImageGenerator|red[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ImageGenerator|red\(3) = ( \VGA_Controller|disp_ena~q\ & ( \ImageGenerator|red\(3) & ( \VGA_Controller|row\(3) ) ) ) # ( !\VGA_Controller|disp_ena~q\ & ( \ImageGenerator|red\(3) ) ) # ( \VGA_Controller|disp_ena~q\ & ( !\ImageGenerator|red\(3) & ( 
-- \VGA_Controller|row\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \VGA_Controller|ALT_INV_row\(3),
	datae => \VGA_Controller|ALT_INV_disp_ena~q\,
	dataf => \ImageGenerator|ALT_INV_red\(3),
	combout => \ImageGenerator|red\(3));

-- Location: LABCELL_X30_Y77_N21
\VGA_Controller|row[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|row[4]~feeder_combout\ = ( \VGA_Controller|Add1~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \VGA_Controller|ALT_INV_Add1~5_sumout\,
	combout => \VGA_Controller|row[4]~feeder_combout\);

-- Location: FF_X30_Y77_N22
\VGA_Controller|row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputCLKENA0_outclk\,
	d => \VGA_Controller|row[4]~feeder_combout\,
	asdata => \VGA_Controller|v_count\(4),
	clrn => \reset_n~input_o\,
	sclr => \VGA_Controller|v_count~1_combout\,
	sload => \VGA_Controller|LessThan0~2_combout\,
	ena => \VGA_Controller|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller|row\(4));

-- Location: LABCELL_X31_Y77_N33
\ImageGenerator|red[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ImageGenerator|red\(4) = ( \ImageGenerator|red\(4) & ( (!\VGA_Controller|disp_ena~q\) # (\VGA_Controller|row\(4)) ) ) # ( !\ImageGenerator|red\(4) & ( (\VGA_Controller|row\(4) & \VGA_Controller|disp_ena~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \VGA_Controller|ALT_INV_row\(4),
	datad => \VGA_Controller|ALT_INV_disp_ena~q\,
	dataf => \ImageGenerator|ALT_INV_red\(4),
	combout => \ImageGenerator|red\(4));

-- Location: LABCELL_X30_Y77_N24
\VGA_Controller|row[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|row[5]~feeder_combout\ = ( \VGA_Controller|Add1~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \VGA_Controller|ALT_INV_Add1~17_sumout\,
	combout => \VGA_Controller|row[5]~feeder_combout\);

-- Location: FF_X30_Y77_N26
\VGA_Controller|row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputCLKENA0_outclk\,
	d => \VGA_Controller|row[5]~feeder_combout\,
	asdata => \VGA_Controller|v_count\(5),
	clrn => \reset_n~input_o\,
	sclr => \VGA_Controller|v_count~1_combout\,
	sload => \VGA_Controller|LessThan0~2_combout\,
	ena => \VGA_Controller|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller|row\(5));

-- Location: LABCELL_X33_Y77_N48
\ImageGenerator|red[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ImageGenerator|red\(5) = ( \VGA_Controller|disp_ena~q\ & ( \ImageGenerator|red\(5) & ( \VGA_Controller|row\(5) ) ) ) # ( !\VGA_Controller|disp_ena~q\ & ( \ImageGenerator|red\(5) ) ) # ( \VGA_Controller|disp_ena~q\ & ( !\ImageGenerator|red\(5) & ( 
-- \VGA_Controller|row\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \VGA_Controller|ALT_INV_row\(5),
	datae => \VGA_Controller|ALT_INV_disp_ena~q\,
	dataf => \ImageGenerator|ALT_INV_red\(5),
	combout => \ImageGenerator|red\(5));

-- Location: LABCELL_X30_Y77_N3
\VGA_Controller|row[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|row[6]~feeder_combout\ = ( \VGA_Controller|Add1~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \VGA_Controller|ALT_INV_Add1~1_sumout\,
	combout => \VGA_Controller|row[6]~feeder_combout\);

-- Location: FF_X30_Y77_N4
\VGA_Controller|row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputCLKENA0_outclk\,
	d => \VGA_Controller|row[6]~feeder_combout\,
	asdata => \VGA_Controller|v_count\(6),
	clrn => \reset_n~input_o\,
	sclr => \VGA_Controller|v_count~1_combout\,
	sload => \VGA_Controller|LessThan0~2_combout\,
	ena => \VGA_Controller|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller|row\(6));

-- Location: LABCELL_X31_Y77_N51
\ImageGenerator|red[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ImageGenerator|red\(6) = ( \VGA_Controller|disp_ena~q\ & ( \VGA_Controller|row\(6) ) ) # ( !\VGA_Controller|disp_ena~q\ & ( \ImageGenerator|red\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \VGA_Controller|ALT_INV_row\(6),
	datad => \ImageGenerator|ALT_INV_red\(6),
	dataf => \VGA_Controller|ALT_INV_disp_ena~q\,
	combout => \ImageGenerator|red\(6));

-- Location: LABCELL_X30_Y77_N48
\VGA_Controller|row[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|row[7]~feeder_combout\ = \VGA_Controller|Add1~21_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \VGA_Controller|ALT_INV_Add1~21_sumout\,
	combout => \VGA_Controller|row[7]~feeder_combout\);

-- Location: FF_X30_Y77_N49
\VGA_Controller|row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputCLKENA0_outclk\,
	d => \VGA_Controller|row[7]~feeder_combout\,
	asdata => \VGA_Controller|v_count\(7),
	clrn => \reset_n~input_o\,
	sclr => \VGA_Controller|v_count~1_combout\,
	sload => \VGA_Controller|LessThan0~2_combout\,
	ena => \VGA_Controller|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller|row\(7));

-- Location: LABCELL_X31_Y77_N3
\ImageGenerator|red[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ImageGenerator|red\(7) = ( \VGA_Controller|disp_ena~q\ & ( \VGA_Controller|row\(7) ) ) # ( !\VGA_Controller|disp_ena~q\ & ( \ImageGenerator|red\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \VGA_Controller|ALT_INV_row\(7),
	datad => \ImageGenerator|ALT_INV_red\(7),
	dataf => \VGA_Controller|ALT_INV_disp_ena~q\,
	combout => \ImageGenerator|red\(7));

-- Location: LABCELL_X27_Y77_N18
\VGA_Controller|LessThan6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|LessThan6~2_combout\ = ( !\VGA_Controller|Add0~33_sumout\ & ( (!\VGA_Controller|Add0~1_sumout\ & !\VGA_Controller|Add0~37_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \VGA_Controller|ALT_INV_Add0~1_sumout\,
	datad => \VGA_Controller|ALT_INV_Add0~37_sumout\,
	dataf => \VGA_Controller|ALT_INV_Add0~33_sumout\,
	combout => \VGA_Controller|LessThan6~2_combout\);

-- Location: LABCELL_X27_Y77_N27
\VGA_Controller|LessThan6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|LessThan6~3_combout\ = ( \VGA_Controller|LessThan6~2_combout\ & ( (!\VGA_Controller|LessThan0~2_combout\) # (!\VGA_Controller|Add0~29_sumout\) ) ) # ( !\VGA_Controller|LessThan6~2_combout\ & ( (!\VGA_Controller|LessThan0~2_combout\) # 
-- ((!\VGA_Controller|Add0~29_sumout\ & ((!\VGA_Controller|Add0~41_sumout\) # (!\VGA_Controller|Add0~25_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011101010111110101110101011111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller|ALT_INV_LessThan0~2_combout\,
	datab => \VGA_Controller|ALT_INV_Add0~41_sumout\,
	datac => \VGA_Controller|ALT_INV_Add0~29_sumout\,
	datad => \VGA_Controller|ALT_INV_Add0~25_sumout\,
	dataf => \VGA_Controller|ALT_INV_LessThan6~2_combout\,
	combout => \VGA_Controller|LessThan6~3_combout\);

-- Location: FF_X27_Y77_N56
\VGA_Controller|column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputCLKENA0_outclk\,
	asdata => \VGA_Controller|Add0~9_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \VGA_Controller|ALT_INV_LessThan0~2_combout\,
	sload => VCC,
	ena => \VGA_Controller|LessThan6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller|column\(0));

-- Location: FF_X30_Y77_N7
\VGA_Controller|row[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputCLKENA0_outclk\,
	d => \VGA_Controller|row[0]~feeder_combout\,
	asdata => \VGA_Controller|v_count\(0),
	clrn => \reset_n~input_o\,
	sclr => \VGA_Controller|v_count~1_combout\,
	sload => \VGA_Controller|LessThan0~2_combout\,
	ena => \VGA_Controller|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller|row[0]~DUPLICATE_q\);

-- Location: LABCELL_X27_Y77_N30
\ImageGenerator|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ImageGenerator|Add0~1_sumout\ = SUM(( \VGA_Controller|row[0]~DUPLICATE_q\ ) + ( \VGA_Controller|column\(0) ) + ( !VCC ))
-- \ImageGenerator|Add0~2\ = CARRY(( \VGA_Controller|row[0]~DUPLICATE_q\ ) + ( \VGA_Controller|column\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \VGA_Controller|ALT_INV_column\(0),
	datad => \VGA_Controller|ALT_INV_row[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \ImageGenerator|Add0~1_sumout\,
	cout => \ImageGenerator|Add0~2\);

-- Location: LABCELL_X31_Y77_N18
\ImageGenerator|green[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ImageGenerator|green\(0) = ( \ImageGenerator|green\(0) & ( (!\VGA_Controller|disp_ena~q\) # (\ImageGenerator|Add0~1_sumout\) ) ) # ( !\ImageGenerator|green\(0) & ( (\VGA_Controller|disp_ena~q\ & \ImageGenerator|Add0~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \VGA_Controller|ALT_INV_disp_ena~q\,
	datad => \ImageGenerator|ALT_INV_Add0~1_sumout\,
	dataf => \ImageGenerator|ALT_INV_green\(0),
	combout => \ImageGenerator|green\(0));

-- Location: FF_X27_Y77_N14
\VGA_Controller|column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputCLKENA0_outclk\,
	asdata => \VGA_Controller|Add0~13_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \VGA_Controller|ALT_INV_LessThan0~2_combout\,
	sload => VCC,
	ena => \VGA_Controller|LessThan6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller|column\(1));

-- Location: FF_X30_Y77_N11
\VGA_Controller|row[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputCLKENA0_outclk\,
	d => \VGA_Controller|row[1]~feeder_combout\,
	asdata => \VGA_Controller|v_count\(1),
	clrn => \reset_n~input_o\,
	sclr => \VGA_Controller|v_count~1_combout\,
	sload => \VGA_Controller|LessThan0~2_combout\,
	ena => \VGA_Controller|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller|row[1]~DUPLICATE_q\);

-- Location: LABCELL_X27_Y77_N33
\ImageGenerator|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ImageGenerator|Add0~5_sumout\ = SUM(( \VGA_Controller|row[1]~DUPLICATE_q\ ) + ( \VGA_Controller|column\(1) ) + ( \ImageGenerator|Add0~2\ ))
-- \ImageGenerator|Add0~6\ = CARRY(( \VGA_Controller|row[1]~DUPLICATE_q\ ) + ( \VGA_Controller|column\(1) ) + ( \ImageGenerator|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \VGA_Controller|ALT_INV_column\(1),
	datad => \VGA_Controller|ALT_INV_row[1]~DUPLICATE_q\,
	cin => \ImageGenerator|Add0~2\,
	sumout => \ImageGenerator|Add0~5_sumout\,
	cout => \ImageGenerator|Add0~6\);

-- Location: LABCELL_X27_Y77_N9
\ImageGenerator|green[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ImageGenerator|green\(1) = ( \ImageGenerator|Add0~5_sumout\ & ( (\ImageGenerator|green\(1)) # (\VGA_Controller|disp_ena~q\) ) ) # ( !\ImageGenerator|Add0~5_sumout\ & ( (!\VGA_Controller|disp_ena~q\ & \ImageGenerator|green\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller|ALT_INV_disp_ena~q\,
	datac => \ImageGenerator|ALT_INV_green\(1),
	dataf => \ImageGenerator|ALT_INV_Add0~5_sumout\,
	combout => \ImageGenerator|green\(1));

-- Location: FF_X27_Y77_N26
\VGA_Controller|column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputCLKENA0_outclk\,
	asdata => \VGA_Controller|Add0~17_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \VGA_Controller|ALT_INV_LessThan0~2_combout\,
	sload => VCC,
	ena => \VGA_Controller|LessThan6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller|column\(2));

-- Location: FF_X30_Y77_N29
\VGA_Controller|row[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputCLKENA0_outclk\,
	d => \VGA_Controller|row[2]~feeder_combout\,
	asdata => \VGA_Controller|v_count\(2),
	clrn => \reset_n~input_o\,
	sclr => \VGA_Controller|v_count~1_combout\,
	sload => \VGA_Controller|LessThan0~2_combout\,
	ena => \VGA_Controller|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller|row[2]~DUPLICATE_q\);

-- Location: LABCELL_X27_Y77_N36
\ImageGenerator|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ImageGenerator|Add0~9_sumout\ = SUM(( \VGA_Controller|row[2]~DUPLICATE_q\ ) + ( \VGA_Controller|column\(2) ) + ( \ImageGenerator|Add0~6\ ))
-- \ImageGenerator|Add0~10\ = CARRY(( \VGA_Controller|row[2]~DUPLICATE_q\ ) + ( \VGA_Controller|column\(2) ) + ( \ImageGenerator|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \VGA_Controller|ALT_INV_column\(2),
	datad => \VGA_Controller|ALT_INV_row[2]~DUPLICATE_q\,
	cin => \ImageGenerator|Add0~6\,
	sumout => \ImageGenerator|Add0~9_sumout\,
	cout => \ImageGenerator|Add0~10\);

-- Location: LABCELL_X27_Y77_N15
\ImageGenerator|green[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ImageGenerator|green\(2) = ( \ImageGenerator|Add0~9_sumout\ & ( (\ImageGenerator|green\(2)) # (\VGA_Controller|disp_ena~q\) ) ) # ( !\ImageGenerator|Add0~9_sumout\ & ( (!\VGA_Controller|disp_ena~q\ & \ImageGenerator|green\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller|ALT_INV_disp_ena~q\,
	datac => \ImageGenerator|ALT_INV_green\(2),
	dataf => \ImageGenerator|ALT_INV_Add0~9_sumout\,
	combout => \ImageGenerator|green\(2));

-- Location: FF_X27_Y77_N11
\VGA_Controller|column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputCLKENA0_outclk\,
	asdata => \VGA_Controller|Add0~21_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \VGA_Controller|ALT_INV_LessThan0~2_combout\,
	sload => VCC,
	ena => \VGA_Controller|LessThan6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller|column\(3));

-- Location: FF_X30_Y77_N44
\VGA_Controller|row[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputCLKENA0_outclk\,
	d => \VGA_Controller|row[3]~feeder_combout\,
	asdata => \VGA_Controller|v_count\(3),
	clrn => \reset_n~input_o\,
	sclr => \VGA_Controller|v_count~1_combout\,
	sload => \VGA_Controller|LessThan0~2_combout\,
	ena => \VGA_Controller|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller|row[3]~DUPLICATE_q\);

-- Location: LABCELL_X27_Y77_N39
\ImageGenerator|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ImageGenerator|Add0~13_sumout\ = SUM(( \VGA_Controller|row[3]~DUPLICATE_q\ ) + ( \VGA_Controller|column\(3) ) + ( \ImageGenerator|Add0~10\ ))
-- \ImageGenerator|Add0~14\ = CARRY(( \VGA_Controller|row[3]~DUPLICATE_q\ ) + ( \VGA_Controller|column\(3) ) + ( \ImageGenerator|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \VGA_Controller|ALT_INV_column\(3),
	datad => \VGA_Controller|ALT_INV_row[3]~DUPLICATE_q\,
	cin => \ImageGenerator|Add0~10\,
	sumout => \ImageGenerator|Add0~13_sumout\,
	cout => \ImageGenerator|Add0~14\);

-- Location: LABCELL_X27_Y77_N12
\ImageGenerator|green[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ImageGenerator|green\(3) = ( \ImageGenerator|green\(3) & ( (!\VGA_Controller|disp_ena~q\) # (\ImageGenerator|Add0~13_sumout\) ) ) # ( !\ImageGenerator|green\(3) & ( (\ImageGenerator|Add0~13_sumout\ & \VGA_Controller|disp_ena~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ImageGenerator|ALT_INV_Add0~13_sumout\,
	datac => \VGA_Controller|ALT_INV_disp_ena~q\,
	dataf => \ImageGenerator|ALT_INV_green\(3),
	combout => \ImageGenerator|green\(3));

-- Location: FF_X30_Y77_N23
\VGA_Controller|row[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputCLKENA0_outclk\,
	d => \VGA_Controller|row[4]~feeder_combout\,
	asdata => \VGA_Controller|v_count\(4),
	clrn => \reset_n~input_o\,
	sclr => \VGA_Controller|v_count~1_combout\,
	sload => \VGA_Controller|LessThan0~2_combout\,
	ena => \VGA_Controller|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller|row[4]~DUPLICATE_q\);

-- Location: FF_X27_Y77_N17
\VGA_Controller|column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputCLKENA0_outclk\,
	asdata => \VGA_Controller|Add0~5_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \VGA_Controller|ALT_INV_LessThan0~2_combout\,
	sload => VCC,
	ena => \VGA_Controller|LessThan6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller|column\(4));

-- Location: LABCELL_X27_Y77_N42
\ImageGenerator|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ImageGenerator|Add0~17_sumout\ = SUM(( \VGA_Controller|column\(4) ) + ( \VGA_Controller|row[4]~DUPLICATE_q\ ) + ( \ImageGenerator|Add0~14\ ))
-- \ImageGenerator|Add0~18\ = CARRY(( \VGA_Controller|column\(4) ) + ( \VGA_Controller|row[4]~DUPLICATE_q\ ) + ( \ImageGenerator|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \VGA_Controller|ALT_INV_row[4]~DUPLICATE_q\,
	datad => \VGA_Controller|ALT_INV_column\(4),
	cin => \ImageGenerator|Add0~14\,
	sumout => \ImageGenerator|Add0~17_sumout\,
	cout => \ImageGenerator|Add0~18\);

-- Location: LABCELL_X27_Y77_N6
\ImageGenerator|green[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ImageGenerator|green\(4) = ( \ImageGenerator|Add0~17_sumout\ & ( (\VGA_Controller|disp_ena~q\) # (\ImageGenerator|green\(4)) ) ) # ( !\ImageGenerator|Add0~17_sumout\ & ( (\ImageGenerator|green\(4) & !\VGA_Controller|disp_ena~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ImageGenerator|ALT_INV_green\(4),
	datac => \VGA_Controller|ALT_INV_disp_ena~q\,
	dataf => \ImageGenerator|ALT_INV_Add0~17_sumout\,
	combout => \ImageGenerator|green\(4));

-- Location: FF_X27_Y77_N59
\VGA_Controller|column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputCLKENA0_outclk\,
	asdata => \VGA_Controller|Add0~1_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \VGA_Controller|ALT_INV_LessThan0~2_combout\,
	sload => VCC,
	ena => \VGA_Controller|LessThan6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller|column\(5));

-- Location: LABCELL_X27_Y77_N45
\ImageGenerator|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ImageGenerator|Add0~21_sumout\ = SUM(( \VGA_Controller|column\(5) ) + ( \VGA_Controller|row\(5) ) + ( \ImageGenerator|Add0~18\ ))
-- \ImageGenerator|Add0~22\ = CARRY(( \VGA_Controller|column\(5) ) + ( \VGA_Controller|row\(5) ) + ( \ImageGenerator|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \VGA_Controller|ALT_INV_row\(5),
	datad => \VGA_Controller|ALT_INV_column\(5),
	cin => \ImageGenerator|Add0~18\,
	sumout => \ImageGenerator|Add0~21_sumout\,
	cout => \ImageGenerator|Add0~22\);

-- Location: LABCELL_X27_Y77_N54
\ImageGenerator|green[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ImageGenerator|green\(5) = ( \ImageGenerator|Add0~21_sumout\ & ( (\VGA_Controller|disp_ena~q\) # (\ImageGenerator|green\(5)) ) ) # ( !\ImageGenerator|Add0~21_sumout\ & ( (\ImageGenerator|green\(5) & !\VGA_Controller|disp_ena~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ImageGenerator|ALT_INV_green\(5),
	datac => \VGA_Controller|ALT_INV_disp_ena~q\,
	dataf => \ImageGenerator|ALT_INV_Add0~21_sumout\,
	combout => \ImageGenerator|green\(5));

-- Location: FF_X27_Y77_N8
\VGA_Controller|column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputCLKENA0_outclk\,
	asdata => \VGA_Controller|Add0~33_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \VGA_Controller|ALT_INV_LessThan0~2_combout\,
	sload => VCC,
	ena => \VGA_Controller|LessThan6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller|column\(6));

-- Location: FF_X30_Y77_N5
\VGA_Controller|row[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputCLKENA0_outclk\,
	d => \VGA_Controller|row[6]~feeder_combout\,
	asdata => \VGA_Controller|v_count\(6),
	clrn => \reset_n~input_o\,
	sclr => \VGA_Controller|v_count~1_combout\,
	sload => \VGA_Controller|LessThan0~2_combout\,
	ena => \VGA_Controller|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller|row[6]~DUPLICATE_q\);

-- Location: LABCELL_X27_Y77_N48
\ImageGenerator|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ImageGenerator|Add0~25_sumout\ = SUM(( \VGA_Controller|column\(6) ) + ( \VGA_Controller|row[6]~DUPLICATE_q\ ) + ( \ImageGenerator|Add0~22\ ))
-- \ImageGenerator|Add0~26\ = CARRY(( \VGA_Controller|column\(6) ) + ( \VGA_Controller|row[6]~DUPLICATE_q\ ) + ( \ImageGenerator|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \VGA_Controller|ALT_INV_column\(6),
	dataf => \VGA_Controller|ALT_INV_row[6]~DUPLICATE_q\,
	cin => \ImageGenerator|Add0~22\,
	sumout => \ImageGenerator|Add0~25_sumout\,
	cout => \ImageGenerator|Add0~26\);

-- Location: LABCELL_X27_Y77_N57
\ImageGenerator|green[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ImageGenerator|green\(6) = ( \ImageGenerator|Add0~25_sumout\ & ( (\ImageGenerator|green\(6)) # (\VGA_Controller|disp_ena~q\) ) ) # ( !\ImageGenerator|Add0~25_sumout\ & ( (!\VGA_Controller|disp_ena~q\ & \ImageGenerator|green\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller|ALT_INV_disp_ena~q\,
	datac => \ImageGenerator|ALT_INV_green\(6),
	dataf => \ImageGenerator|ALT_INV_Add0~25_sumout\,
	combout => \ImageGenerator|green\(6));

-- Location: FF_X27_Y77_N29
\VGA_Controller|column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputCLKENA0_outclk\,
	asdata => \VGA_Controller|Add0~37_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \VGA_Controller|ALT_INV_LessThan0~2_combout\,
	sload => VCC,
	ena => \VGA_Controller|LessThan6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller|column\(7));

-- Location: LABCELL_X27_Y77_N51
\ImageGenerator|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ImageGenerator|Add0~29_sumout\ = SUM(( \VGA_Controller|row\(7) ) + ( \VGA_Controller|column\(7) ) + ( \ImageGenerator|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller|ALT_INV_column\(7),
	datad => \VGA_Controller|ALT_INV_row\(7),
	cin => \ImageGenerator|Add0~26\,
	sumout => \ImageGenerator|Add0~29_sumout\);

-- Location: LABCELL_X27_Y77_N21
\ImageGenerator|green[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ImageGenerator|green\(7) = ( \ImageGenerator|Add0~29_sumout\ & ( (\ImageGenerator|green\(7)) # (\VGA_Controller|disp_ena~q\) ) ) # ( !\ImageGenerator|Add0~29_sumout\ & ( (!\VGA_Controller|disp_ena~q\ & \ImageGenerator|green\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller|ALT_INV_disp_ena~q\,
	datad => \ImageGenerator|ALT_INV_green\(7),
	dataf => \ImageGenerator|ALT_INV_Add0~29_sumout\,
	combout => \ImageGenerator|green\(7));

-- Location: LABCELL_X30_Y77_N12
\ImageGenerator|blue[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ImageGenerator|blue\(0) = ( \ImageGenerator|blue\(0) & ( (!\VGA_Controller|disp_ena~q\) # (\VGA_Controller|column\(0)) ) ) # ( !\ImageGenerator|blue\(0) & ( (\VGA_Controller|column\(0) & \VGA_Controller|disp_ena~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \VGA_Controller|ALT_INV_column\(0),
	datad => \VGA_Controller|ALT_INV_disp_ena~q\,
	dataf => \ImageGenerator|ALT_INV_blue\(0),
	combout => \ImageGenerator|blue\(0));

-- Location: LABCELL_X33_Y77_N42
\ImageGenerator|blue[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ImageGenerator|blue\(1) = ( \VGA_Controller|disp_ena~q\ & ( \ImageGenerator|blue\(1) & ( \VGA_Controller|column\(1) ) ) ) # ( !\VGA_Controller|disp_ena~q\ & ( \ImageGenerator|blue\(1) ) ) # ( \VGA_Controller|disp_ena~q\ & ( !\ImageGenerator|blue\(1) & ( 
-- \VGA_Controller|column\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \VGA_Controller|ALT_INV_column\(1),
	datae => \VGA_Controller|ALT_INV_disp_ena~q\,
	dataf => \ImageGenerator|ALT_INV_blue\(1),
	combout => \ImageGenerator|blue\(1));

-- Location: LABCELL_X31_Y77_N6
\ImageGenerator|blue[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ImageGenerator|blue\(2) = ( \ImageGenerator|blue\(2) & ( (!\VGA_Controller|disp_ena~q\) # (\VGA_Controller|column\(2)) ) ) # ( !\ImageGenerator|blue\(2) & ( (\VGA_Controller|disp_ena~q\ & \VGA_Controller|column\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller|ALT_INV_disp_ena~q\,
	datad => \VGA_Controller|ALT_INV_column\(2),
	dataf => \ImageGenerator|ALT_INV_blue\(2),
	combout => \ImageGenerator|blue\(2));

-- Location: LABCELL_X33_Y77_N3
\ImageGenerator|blue[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ImageGenerator|blue\(3) = ( \ImageGenerator|blue\(3) & ( \VGA_Controller|disp_ena~q\ & ( \VGA_Controller|column\(3) ) ) ) # ( !\ImageGenerator|blue\(3) & ( \VGA_Controller|disp_ena~q\ & ( \VGA_Controller|column\(3) ) ) ) # ( \ImageGenerator|blue\(3) & ( 
-- !\VGA_Controller|disp_ena~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \VGA_Controller|ALT_INV_column\(3),
	datae => \ImageGenerator|ALT_INV_blue\(3),
	dataf => \VGA_Controller|ALT_INV_disp_ena~q\,
	combout => \ImageGenerator|blue\(3));

-- Location: LABCELL_X33_Y77_N9
\ImageGenerator|blue[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ImageGenerator|blue\(4) = ( \VGA_Controller|disp_ena~q\ & ( \ImageGenerator|blue\(4) & ( \VGA_Controller|column\(4) ) ) ) # ( !\VGA_Controller|disp_ena~q\ & ( \ImageGenerator|blue\(4) ) ) # ( \VGA_Controller|disp_ena~q\ & ( !\ImageGenerator|blue\(4) & ( 
-- \VGA_Controller|column\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010111111111111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller|ALT_INV_column\(4),
	datae => \VGA_Controller|ALT_INV_disp_ena~q\,
	dataf => \ImageGenerator|ALT_INV_blue\(4),
	combout => \ImageGenerator|blue\(4));

-- Location: LABCELL_X31_Y77_N9
\ImageGenerator|blue[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ImageGenerator|blue\(5) = ( \ImageGenerator|blue\(5) & ( (!\VGA_Controller|disp_ena~q\) # (\VGA_Controller|column\(5)) ) ) # ( !\ImageGenerator|blue\(5) & ( (\VGA_Controller|disp_ena~q\ & \VGA_Controller|column\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller|ALT_INV_disp_ena~q\,
	datad => \VGA_Controller|ALT_INV_column\(5),
	dataf => \ImageGenerator|ALT_INV_blue\(5),
	combout => \ImageGenerator|blue\(5));

-- Location: LABCELL_X33_Y77_N39
\ImageGenerator|blue[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ImageGenerator|blue\(6) = ( \VGA_Controller|disp_ena~q\ & ( \ImageGenerator|blue\(6) & ( \VGA_Controller|column\(6) ) ) ) # ( !\VGA_Controller|disp_ena~q\ & ( \ImageGenerator|blue\(6) ) ) # ( \VGA_Controller|disp_ena~q\ & ( !\ImageGenerator|blue\(6) & ( 
-- \VGA_Controller|column\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \VGA_Controller|ALT_INV_column\(6),
	datae => \VGA_Controller|ALT_INV_disp_ena~q\,
	dataf => \ImageGenerator|ALT_INV_blue\(6),
	combout => \ImageGenerator|blue\(6));

-- Location: LABCELL_X31_Y77_N57
\ImageGenerator|blue[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ImageGenerator|blue\(7) = ( \VGA_Controller|disp_ena~q\ & ( \VGA_Controller|column\(7) ) ) # ( !\VGA_Controller|disp_ena~q\ & ( \ImageGenerator|blue\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \VGA_Controller|ALT_INV_column\(7),
	datad => \ImageGenerator|ALT_INV_blue\(7),
	dataf => \VGA_Controller|ALT_INV_disp_ena~q\,
	combout => \ImageGenerator|blue\(7));

-- Location: MLABCELL_X28_Y77_N54
\VGA_Controller|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|process_0~0_combout\ = ( \VGA_Controller|Add0~9_sumout\ & ( \VGA_Controller|Add0~17_sumout\ & ( (!\VGA_Controller|Add0~5_sumout\ & !\VGA_Controller|Add0~1_sumout\) ) ) ) # ( !\VGA_Controller|Add0~9_sumout\ & ( 
-- \VGA_Controller|Add0~17_sumout\ & ( (!\VGA_Controller|Add0~5_sumout\ & !\VGA_Controller|Add0~1_sumout\) ) ) ) # ( \VGA_Controller|Add0~9_sumout\ & ( !\VGA_Controller|Add0~17_sumout\ & ( (!\VGA_Controller|Add0~5_sumout\ & !\VGA_Controller|Add0~1_sumout\) ) 
-- ) ) # ( !\VGA_Controller|Add0~9_sumout\ & ( !\VGA_Controller|Add0~17_sumout\ & ( (!\VGA_Controller|Add0~1_sumout\ & ((!\VGA_Controller|Add0~5_sumout\) # ((!\VGA_Controller|Add0~21_sumout\ & !\VGA_Controller|Add0~13_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110000000000110011000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller|ALT_INV_Add0~21_sumout\,
	datab => \VGA_Controller|ALT_INV_Add0~5_sumout\,
	datac => \VGA_Controller|ALT_INV_Add0~13_sumout\,
	datad => \VGA_Controller|ALT_INV_Add0~1_sumout\,
	datae => \VGA_Controller|ALT_INV_Add0~9_sumout\,
	dataf => \VGA_Controller|ALT_INV_Add0~17_sumout\,
	combout => \VGA_Controller|process_0~0_combout\);

-- Location: MLABCELL_X28_Y77_N45
\VGA_Controller|process_0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|process_0~3_combout\ = ( \VGA_Controller|LessThan0~1_combout\ & ( (\VGA_Controller|Add0~41_sumout\ & ((!\VGA_Controller|h_count\(10)) # (\VGA_Controller|LessThan0~0_combout\))) ) ) # ( !\VGA_Controller|LessThan0~1_combout\ & ( 
-- (!\VGA_Controller|h_count\(10) & \VGA_Controller|Add0~41_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111101010000000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller|ALT_INV_LessThan0~0_combout\,
	datac => \VGA_Controller|ALT_INV_h_count\(10),
	datad => \VGA_Controller|ALT_INV_Add0~41_sumout\,
	dataf => \VGA_Controller|ALT_INV_LessThan0~1_combout\,
	combout => \VGA_Controller|process_0~3_combout\);

-- Location: MLABCELL_X28_Y77_N36
\VGA_Controller|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|process_0~2_combout\ = ( \VGA_Controller|Add0~21_sumout\ & ( (!\VGA_Controller|Add0~37_sumout\ & ((!\VGA_Controller|Add0~33_sumout\) # ((!\VGA_Controller|Add0~1_sumout\ & !\VGA_Controller|Add0~5_sumout\)))) ) ) # ( 
-- !\VGA_Controller|Add0~21_sumout\ & ( (!\VGA_Controller|Add0~37_sumout\ & ((!\VGA_Controller|Add0~33_sumout\) # (!\VGA_Controller|Add0~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111000000000111011100000000011101010000000001110101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller|ALT_INV_Add0~33_sumout\,
	datab => \VGA_Controller|ALT_INV_Add0~1_sumout\,
	datac => \VGA_Controller|ALT_INV_Add0~5_sumout\,
	datad => \VGA_Controller|ALT_INV_Add0~37_sumout\,
	dataf => \VGA_Controller|ALT_INV_Add0~21_sumout\,
	combout => \VGA_Controller|process_0~2_combout\);

-- Location: LABCELL_X27_Y77_N24
\VGA_Controller|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|process_0~1_combout\ = ( \VGA_Controller|Add0~37_sumout\ & ( \VGA_Controller|Add0~33_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \VGA_Controller|ALT_INV_Add0~33_sumout\,
	dataf => \VGA_Controller|ALT_INV_Add0~37_sumout\,
	combout => \VGA_Controller|process_0~1_combout\);

-- Location: LABCELL_X27_Y77_N0
\VGA_Controller|process_0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|process_0~4_combout\ = ( \VGA_Controller|Add0~25_sumout\ & ( \VGA_Controller|process_0~1_combout\ & ( (!\VGA_Controller|Add0~29_sumout\ & (\VGA_Controller|process_0~0_combout\ & (\VGA_Controller|process_0~3_combout\ & 
-- !\VGA_Controller|process_0~2_combout\))) ) ) ) # ( \VGA_Controller|Add0~25_sumout\ & ( !\VGA_Controller|process_0~1_combout\ & ( (!\VGA_Controller|Add0~29_sumout\ & (\VGA_Controller|process_0~3_combout\ & !\VGA_Controller|process_0~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller|ALT_INV_Add0~29_sumout\,
	datab => \VGA_Controller|ALT_INV_process_0~0_combout\,
	datac => \VGA_Controller|ALT_INV_process_0~3_combout\,
	datad => \VGA_Controller|ALT_INV_process_0~2_combout\,
	datae => \VGA_Controller|ALT_INV_Add0~25_sumout\,
	dataf => \VGA_Controller|ALT_INV_process_0~1_combout\,
	combout => \VGA_Controller|process_0~4_combout\);

-- Location: FF_X27_Y77_N1
\VGA_Controller|h_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputCLKENA0_outclk\,
	d => \VGA_Controller|process_0~4_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller|h_sync~q\);

-- Location: LABCELL_X31_Y77_N30
\VGA_Controller|process_0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|process_0~6_combout\ = ( \VGA_Controller|LessThan0~0_combout\ & ( (!\VGA_Controller|h_count\(10) & (((\VGA_Controller|v_count\(6))))) # (\VGA_Controller|h_count\(10) & ((!\VGA_Controller|LessThan0~1_combout\ & 
-- (\VGA_Controller|Add1~1_sumout\)) # (\VGA_Controller|LessThan0~1_combout\ & ((\VGA_Controller|v_count\(6)))))) ) ) # ( !\VGA_Controller|LessThan0~0_combout\ & ( (!\VGA_Controller|h_count\(10) & ((\VGA_Controller|v_count\(6)))) # 
-- (\VGA_Controller|h_count\(10) & (\VGA_Controller|Add1~1_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100110101001100110011010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller|ALT_INV_Add1~1_sumout\,
	datab => \VGA_Controller|ALT_INV_v_count\(6),
	datac => \VGA_Controller|ALT_INV_h_count\(10),
	datad => \VGA_Controller|ALT_INV_LessThan0~1_combout\,
	dataf => \VGA_Controller|ALT_INV_LessThan0~0_combout\,
	combout => \VGA_Controller|process_0~6_combout\);

-- Location: LABCELL_X31_Y77_N0
\VGA_Controller|v_count~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|v_count~7_combout\ = ( \VGA_Controller|Add1~21_sumout\ & ( ((\VGA_Controller|h_count\(10) & ((!\VGA_Controller|LessThan0~0_combout\) # (!\VGA_Controller|LessThan0~1_combout\)))) # (\VGA_Controller|v_count\(7)) ) ) # ( 
-- !\VGA_Controller|Add1~21_sumout\ & ( (\VGA_Controller|v_count\(7) & ((!\VGA_Controller|h_count\(10)) # ((\VGA_Controller|LessThan0~0_combout\ & \VGA_Controller|LessThan0~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110001000000001111000100001110111111110000111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller|ALT_INV_LessThan0~0_combout\,
	datab => \VGA_Controller|ALT_INV_LessThan0~1_combout\,
	datac => \VGA_Controller|ALT_INV_h_count\(10),
	datad => \VGA_Controller|ALT_INV_v_count\(7),
	dataf => \VGA_Controller|ALT_INV_Add1~21_sumout\,
	combout => \VGA_Controller|v_count~7_combout\);

-- Location: LABCELL_X31_Y77_N39
\VGA_Controller|process_0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|process_0~9_combout\ = ( \VGA_Controller|LessThan0~2_combout\ & ( \VGA_Controller|Add1~37_sumout\ & ( (!\VGA_Controller|v_count\(8) & (\VGA_Controller|v_count\(9) & !\VGA_Controller|v_count~1_combout\)) ) ) ) # ( 
-- !\VGA_Controller|LessThan0~2_combout\ & ( \VGA_Controller|Add1~37_sumout\ & ( (!\VGA_Controller|Add1~33_sumout\ & !\VGA_Controller|v_count~1_combout\) ) ) ) # ( \VGA_Controller|LessThan0~2_combout\ & ( !\VGA_Controller|Add1~37_sumout\ & ( 
-- (!\VGA_Controller|v_count\(8) & (\VGA_Controller|v_count\(9) & !\VGA_Controller|v_count~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000000010101010000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller|ALT_INV_Add1~33_sumout\,
	datab => \VGA_Controller|ALT_INV_v_count\(8),
	datac => \VGA_Controller|ALT_INV_v_count\(9),
	datad => \VGA_Controller|ALT_INV_v_count~1_combout\,
	datae => \VGA_Controller|ALT_INV_LessThan0~2_combout\,
	dataf => \VGA_Controller|ALT_INV_Add1~37_sumout\,
	combout => \VGA_Controller|process_0~9_combout\);

-- Location: LABCELL_X31_Y77_N54
\VGA_Controller|v_count~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|v_count~5_combout\ = ( \VGA_Controller|Add1~13_sumout\ & ( ((\VGA_Controller|h_count\(10) & ((!\VGA_Controller|LessThan0~0_combout\) # (!\VGA_Controller|LessThan0~1_combout\)))) # (\VGA_Controller|v_count\(2)) ) ) # ( 
-- !\VGA_Controller|Add1~13_sumout\ & ( (\VGA_Controller|v_count\(2) & ((!\VGA_Controller|h_count\(10)) # ((\VGA_Controller|LessThan0~0_combout\ & \VGA_Controller|LessThan0~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100011001000100010001101110111011100110111011101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller|ALT_INV_h_count\(10),
	datab => \VGA_Controller|ALT_INV_v_count\(2),
	datac => \VGA_Controller|ALT_INV_LessThan0~0_combout\,
	datad => \VGA_Controller|ALT_INV_LessThan0~1_combout\,
	dataf => \VGA_Controller|ALT_INV_Add1~13_sumout\,
	combout => \VGA_Controller|v_count~5_combout\);

-- Location: LABCELL_X31_Y77_N48
\VGA_Controller|v_count~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|v_count~6_combout\ = ( \VGA_Controller|Add1~17_sumout\ & ( ((\VGA_Controller|h_count\(10) & ((!\VGA_Controller|LessThan0~1_combout\) # (!\VGA_Controller|LessThan0~0_combout\)))) # (\VGA_Controller|v_count\(5)) ) ) # ( 
-- !\VGA_Controller|Add1~17_sumout\ & ( (\VGA_Controller|v_count\(5) & ((!\VGA_Controller|h_count\(10)) # ((\VGA_Controller|LessThan0~1_combout\ & \VGA_Controller|LessThan0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101011000000001010101101010100111111110101010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller|ALT_INV_h_count\(10),
	datab => \VGA_Controller|ALT_INV_LessThan0~1_combout\,
	datac => \VGA_Controller|ALT_INV_LessThan0~0_combout\,
	datad => \VGA_Controller|ALT_INV_v_count\(5),
	dataf => \VGA_Controller|ALT_INV_Add1~17_sumout\,
	combout => \VGA_Controller|v_count~6_combout\);

-- Location: LABCELL_X31_Y77_N21
\VGA_Controller|process_0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|process_0~5_combout\ = ( \VGA_Controller|v_count~6_combout\ & ( (!\VGA_Controller|v_count~3_combout\ & (\VGA_Controller|v_count~1_combout\ & (!\VGA_Controller|v_count~4_combout\ & !\VGA_Controller|v_count~5_combout\))) ) ) # ( 
-- !\VGA_Controller|v_count~6_combout\ & ( (!\VGA_Controller|v_count~3_combout\ & (!\VGA_Controller|v_count~4_combout\ & !\VGA_Controller|v_count~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller|ALT_INV_v_count~3_combout\,
	datab => \VGA_Controller|ALT_INV_v_count~1_combout\,
	datac => \VGA_Controller|ALT_INV_v_count~4_combout\,
	datad => \VGA_Controller|ALT_INV_v_count~5_combout\,
	dataf => \VGA_Controller|ALT_INV_v_count~6_combout\,
	combout => \VGA_Controller|process_0~5_combout\);

-- Location: LABCELL_X30_Y76_N36
\VGA_Controller|LessThan1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|LessThan1~2_combout\ = ( !\VGA_Controller|v_count\(0) & ( !\VGA_Controller|v_count\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \VGA_Controller|ALT_INV_v_count\(0),
	dataf => \VGA_Controller|ALT_INV_v_count\(1),
	combout => \VGA_Controller|LessThan1~2_combout\);

-- Location: LABCELL_X31_Y77_N12
\VGA_Controller|process_0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|process_0~7_combout\ = ( \VGA_Controller|LessThan0~1_combout\ & ( \VGA_Controller|LessThan1~2_combout\ & ( ((!\VGA_Controller|h_count\(10)) # ((!\VGA_Controller|Add1~29_sumout\ & !\VGA_Controller|Add1~25_sumout\))) # 
-- (\VGA_Controller|LessThan0~0_combout\) ) ) ) # ( !\VGA_Controller|LessThan0~1_combout\ & ( \VGA_Controller|LessThan1~2_combout\ & ( (!\VGA_Controller|h_count\(10)) # ((!\VGA_Controller|Add1~29_sumout\ & !\VGA_Controller|Add1~25_sumout\)) ) ) ) # ( 
-- \VGA_Controller|LessThan0~1_combout\ & ( !\VGA_Controller|LessThan1~2_combout\ & ( (!\VGA_Controller|LessThan0~0_combout\ & (!\VGA_Controller|Add1~29_sumout\ & (\VGA_Controller|h_count\(10) & !\VGA_Controller|Add1~25_sumout\))) ) ) ) # ( 
-- !\VGA_Controller|LessThan0~1_combout\ & ( !\VGA_Controller|LessThan1~2_combout\ & ( (!\VGA_Controller|Add1~29_sumout\ & (\VGA_Controller|h_count\(10) & !\VGA_Controller|Add1~25_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000010000000000011111100111100001111110111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller|ALT_INV_LessThan0~0_combout\,
	datab => \VGA_Controller|ALT_INV_Add1~29_sumout\,
	datac => \VGA_Controller|ALT_INV_h_count\(10),
	datad => \VGA_Controller|ALT_INV_Add1~25_sumout\,
	datae => \VGA_Controller|ALT_INV_LessThan0~1_combout\,
	dataf => \VGA_Controller|ALT_INV_LessThan1~2_combout\,
	combout => \VGA_Controller|process_0~7_combout\);

-- Location: LABCELL_X31_Y77_N42
\VGA_Controller|process_0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|process_0~8_combout\ = ( \VGA_Controller|v_count~5_combout\ & ( \VGA_Controller|v_count~6_combout\ & ( (!\VGA_Controller|v_count~1_combout\ & (\VGA_Controller|v_count~4_combout\ & (\VGA_Controller|v_count~3_combout\ & 
-- !\VGA_Controller|process_0~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller|ALT_INV_v_count~1_combout\,
	datab => \VGA_Controller|ALT_INV_v_count~4_combout\,
	datac => \VGA_Controller|ALT_INV_v_count~3_combout\,
	datad => \VGA_Controller|ALT_INV_process_0~7_combout\,
	datae => \VGA_Controller|ALT_INV_v_count~5_combout\,
	dataf => \VGA_Controller|ALT_INV_v_count~6_combout\,
	combout => \VGA_Controller|process_0~8_combout\);

-- Location: LABCELL_X31_Y77_N24
\VGA_Controller|process_0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_Controller|process_0~10_combout\ = ( \VGA_Controller|process_0~5_combout\ & ( \VGA_Controller|process_0~8_combout\ & ( (\VGA_Controller|process_0~9_combout\ & ((!\VGA_Controller|process_0~6_combout\) # (!\VGA_Controller|v_count~7_combout\))) ) ) ) # 
-- ( !\VGA_Controller|process_0~5_combout\ & ( \VGA_Controller|process_0~8_combout\ & ( (\VGA_Controller|v_count~2_combout\ & (\VGA_Controller|process_0~9_combout\ & ((!\VGA_Controller|process_0~6_combout\) # (!\VGA_Controller|v_count~7_combout\)))) ) ) ) # 
-- ( \VGA_Controller|process_0~5_combout\ & ( !\VGA_Controller|process_0~8_combout\ & ( (!\VGA_Controller|process_0~6_combout\ & (\VGA_Controller|v_count~7_combout\ & \VGA_Controller|process_0~9_combout\)) ) ) ) # ( !\VGA_Controller|process_0~5_combout\ & ( 
-- !\VGA_Controller|process_0~8_combout\ & ( (!\VGA_Controller|process_0~6_combout\ & (\VGA_Controller|v_count~2_combout\ & (\VGA_Controller|v_count~7_combout\ & \VGA_Controller|process_0~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000101000000000001100100000000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Controller|ALT_INV_process_0~6_combout\,
	datab => \VGA_Controller|ALT_INV_v_count~2_combout\,
	datac => \VGA_Controller|ALT_INV_v_count~7_combout\,
	datad => \VGA_Controller|ALT_INV_process_0~9_combout\,
	datae => \VGA_Controller|ALT_INV_process_0~5_combout\,
	dataf => \VGA_Controller|ALT_INV_process_0~8_combout\,
	combout => \VGA_Controller|process_0~10_combout\);

-- Location: FF_X31_Y77_N25
\VGA_Controller|v_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputCLKENA0_outclk\,
	d => \VGA_Controller|process_0~10_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Controller|v_sync~q\);

-- Location: MLABCELL_X39_Y27_N3
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


