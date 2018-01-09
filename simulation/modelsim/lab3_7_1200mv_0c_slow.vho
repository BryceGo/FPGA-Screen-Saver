-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.2 Build 153 07/15/2015 SJ Full Version"

-- DATE "02/20/2017 17:37:21"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab3 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(17 DOWNTO 0);
	LEDG : OUT std_logic_vector(7 DOWNTO 0);
	LEDR : OUT std_logic_vector(7 DOWNTO 0);
	VGA_R : OUT std_logic_vector(9 DOWNTO 0);
	VGA_G : OUT std_logic_vector(9 DOWNTO 0);
	VGA_B : OUT std_logic_vector(9 DOWNTO 0);
	VGA_HS : OUT std_logic;
	VGA_VS : OUT std_logic;
	VGA_BLANK : OUT std_logic;
	VGA_SYNC : OUT std_logic;
	VGA_CLK : OUT std_logic
	);
END lab3;

-- Design Ports Information
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[0]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[1]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[2]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[3]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[4]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[5]	=>  Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[6]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[7]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[8]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[9]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[0]	=>  Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[1]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[2]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[3]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[4]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[5]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[6]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[7]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[8]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[9]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[0]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[1]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[2]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[3]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[4]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[5]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[6]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[7]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[8]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[9]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_HS	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_VS	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_BLANK	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_SYNC	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_CLK	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_R : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_VGA_BLANK : std_logic;
SIGNAL ww_VGA_SYNC : std_logic;
SIGNAL ww_VGA_CLK : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \vga_u0|mypll|altpll_component|pll_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \vga_u0|mypll|altpll_component|pll_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vga_u0|mypll|altpll_component|_clk0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vga_u0|mypll|altpll_component|pll~CLK1\ : std_logic;
SIGNAL \vga_u0|mypll|altpll_component|pll~CLK2\ : std_logic;
SIGNAL \vga_u0|mypll|altpll_component|pll~CLK3\ : std_logic;
SIGNAL \vga_u0|mypll|altpll_component|pll~CLK4\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \filScr0|initY~feeder_combout\ : std_logic;
SIGNAL \filScr0|initY~q\ : std_logic;
SIGNAL \filScr0|Add0~18_combout\ : std_logic;
SIGNAL \filScr0|Add0~0_combout\ : std_logic;
SIGNAL \filScr0|process_0~0_combout\ : std_logic;
SIGNAL \filScr0|Add1~22_combout\ : std_logic;
SIGNAL \filScr0|loadX~q\ : std_logic;
SIGNAL \filScr0|Add1~0_combout\ : std_logic;
SIGNAL \filScr0|Add1~23_combout\ : std_logic;
SIGNAL \filScr0|Add1~1\ : std_logic;
SIGNAL \filScr0|Add1~2_combout\ : std_logic;
SIGNAL \filScr0|Add1~21_combout\ : std_logic;
SIGNAL \filScr0|Add1~3\ : std_logic;
SIGNAL \filScr0|Add1~4_combout\ : std_logic;
SIGNAL \filScr0|Equal1~0_combout\ : std_logic;
SIGNAL \filScr0|Add1~20_combout\ : std_logic;
SIGNAL \filScr0|Add1~5\ : std_logic;
SIGNAL \filScr0|Add1~6_combout\ : std_logic;
SIGNAL \filScr0|Add1~19_combout\ : std_logic;
SIGNAL \filScr0|Add1~7\ : std_logic;
SIGNAL \filScr0|Add1~8_combout\ : std_logic;
SIGNAL \filScr0|Equal1~1_combout\ : std_logic;
SIGNAL \filScr0|Add1~18_combout\ : std_logic;
SIGNAL \filScr0|Add1~9\ : std_logic;
SIGNAL \filScr0|Add1~10_combout\ : std_logic;
SIGNAL \filScr0|Add1~16_combout\ : std_logic;
SIGNAL \filScr0|Add1~11\ : std_logic;
SIGNAL \filScr0|Add1~12_combout\ : std_logic;
SIGNAL \filScr0|Add1~17_combout\ : std_logic;
SIGNAL \filScr0|Add1~13\ : std_logic;
SIGNAL \filScr0|Add1~14_combout\ : std_logic;
SIGNAL \filScr0|Equal1~2_combout\ : std_logic;
SIGNAL \filScr0|initX~0_combout\ : std_logic;
SIGNAL \filScr0|initX~q\ : std_logic;
SIGNAL \filScr0|Add0~1\ : std_logic;
SIGNAL \filScr0|Add0~2_combout\ : std_logic;
SIGNAL \filScr0|Add0~19_combout\ : std_logic;
SIGNAL \filScr0|Add0~3\ : std_logic;
SIGNAL \filScr0|Add0~4_combout\ : std_logic;
SIGNAL \filScr0|Add0~20_combout\ : std_logic;
SIGNAL \filScr0|Add0~5\ : std_logic;
SIGNAL \filScr0|Add0~6_combout\ : std_logic;
SIGNAL \filScr0|Add0~8_combout\ : std_logic;
SIGNAL \filScr0|Add0~7\ : std_logic;
SIGNAL \filScr0|Add0~9_combout\ : std_logic;
SIGNAL \filScr0|Add0~16_combout\ : std_logic;
SIGNAL \filScr0|Add0~10\ : std_logic;
SIGNAL \filScr0|Add0~11_combout\ : std_logic;
SIGNAL \filScr0|Add0~17_combout\ : std_logic;
SIGNAL \filScr0|Add0~12\ : std_logic;
SIGNAL \filScr0|Add0~13_combout\ : std_logic;
SIGNAL \filScr0|Add0~15_combout\ : std_logic;
SIGNAL \filScr0|process_0~1_combout\ : std_logic;
SIGNAL \filScr0|donesecond~0_combout\ : std_logic;
SIGNAL \filScr0|donesecond~q\ : std_logic;
SIGNAL \filScr0|done~0_combout\ : std_logic;
SIGNAL \filScr0|done~1_combout\ : std_logic;
SIGNAL \filScr0|done~q\ : std_logic;
SIGNAL \vga_u0|mypll|altpll_component|pll~FBOUT\ : std_logic;
SIGNAL \vga_u0|mypll|altpll_component|_clk0\ : std_logic;
SIGNAL \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\ : std_logic;
SIGNAL \vga_u0|controller|Add0~0_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add0~1\ : std_logic;
SIGNAL \vga_u0|controller|Add0~2_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add0~3\ : std_logic;
SIGNAL \vga_u0|controller|Add0~4_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add0~5\ : std_logic;
SIGNAL \vga_u0|controller|Add0~6_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add0~7\ : std_logic;
SIGNAL \vga_u0|controller|Add0~8_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add0~9\ : std_logic;
SIGNAL \vga_u0|controller|Add0~10_combout\ : std_logic;
SIGNAL \vga_u0|controller|xCounter~0_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add0~11\ : std_logic;
SIGNAL \vga_u0|controller|Add0~12_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add0~13\ : std_logic;
SIGNAL \vga_u0|controller|Add0~14_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add0~15\ : std_logic;
SIGNAL \vga_u0|controller|Add0~16_combout\ : std_logic;
SIGNAL \vga_u0|controller|xCounter~1_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add0~17\ : std_logic;
SIGNAL \vga_u0|controller|Add0~18_combout\ : std_logic;
SIGNAL \vga_u0|controller|xCounter~2_combout\ : std_logic;
SIGNAL \vga_u0|controller|Equal0~1_combout\ : std_logic;
SIGNAL \vga_u0|controller|Equal0~0_combout\ : std_logic;
SIGNAL \vga_u0|controller|Equal0~2_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add1~0_combout\ : std_logic;
SIGNAL \vga_u0|controller|yCounter[0]~10_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add1~1\ : std_logic;
SIGNAL \vga_u0|controller|Add1~2_combout\ : std_logic;
SIGNAL \vga_u0|controller|yCounter[1]~9_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add1~3\ : std_logic;
SIGNAL \vga_u0|controller|Add1~4_combout\ : std_logic;
SIGNAL \vga_u0|controller|yCounter[2]~8_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add1~5\ : std_logic;
SIGNAL \vga_u0|controller|Add1~6_combout\ : std_logic;
SIGNAL \vga_u0|controller|yCounter[3]~7_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add1~7\ : std_logic;
SIGNAL \vga_u0|controller|Add1~8_combout\ : std_logic;
SIGNAL \vga_u0|controller|yCounter[4]~6_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add1~9\ : std_logic;
SIGNAL \vga_u0|controller|Add1~10_combout\ : std_logic;
SIGNAL \vga_u0|controller|yCounter[5]~5_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add1~11\ : std_logic;
SIGNAL \vga_u0|controller|Add1~12_combout\ : std_logic;
SIGNAL \vga_u0|controller|yCounter[6]~4_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add1~13\ : std_logic;
SIGNAL \vga_u0|controller|Add1~14_combout\ : std_logic;
SIGNAL \vga_u0|controller|yCounter[7]~3_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add1~15\ : std_logic;
SIGNAL \vga_u0|controller|Add1~17\ : std_logic;
SIGNAL \vga_u0|controller|Add1~18_combout\ : std_logic;
SIGNAL \vga_u0|controller|yCounter[9]~1_combout\ : std_logic;
SIGNAL \vga_u0|controller|always1~0_combout\ : std_logic;
SIGNAL \vga_u0|controller|always1~1_combout\ : std_logic;
SIGNAL \vga_u0|controller|always1~2_combout\ : std_logic;
SIGNAL \vga_u0|controller|yCounter[9]~0_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add1~16_combout\ : std_logic;
SIGNAL \vga_u0|controller|yCounter[8]~2_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|Add0~1\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|Add0~3\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|Add0~5\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|Add0~7\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|Add0~9\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|Add0~11\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|Add0~13\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|Add0~14_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|Add0~12_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|Add0~10_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|Add0~8_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|Add0~6_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|Add0~4_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|Add0~2_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|Add0~0_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[5]~1\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[6]~3\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[7]~5\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[8]~7\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[9]~9\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[10]~11\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[11]~13\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[12]~15\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[13]~17\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[14]~18_combout\ : std_logic;
SIGNAL \filScr0|plot~q\ : std_logic;
SIGNAL \vga_u0|writeEn~0_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|Add0~1\ : std_logic;
SIGNAL \vga_u0|user_input_translator|Add0~3\ : std_logic;
SIGNAL \vga_u0|user_input_translator|Add0~5\ : std_logic;
SIGNAL \vga_u0|user_input_translator|Add0~7\ : std_logic;
SIGNAL \vga_u0|user_input_translator|Add0~9\ : std_logic;
SIGNAL \vga_u0|user_input_translator|Add0~11\ : std_logic;
SIGNAL \vga_u0|user_input_translator|Add0~12_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|Add0~10_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|Add0~8_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|Add0~6_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|Add0~4_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|Add0~2_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|Add0~0_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[5]~1\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[6]~3\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[7]~5\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[8]~7\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[9]~9\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[10]~11\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[11]~13\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[12]~15\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[13]~16_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|Add0~13\ : std_logic;
SIGNAL \vga_u0|user_input_translator|Add0~14_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[13]~17\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[14]~18_combout\ : std_logic;
SIGNAL \vga_u0|LessThan3~0_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[13]~16_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[5]~0_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[6]~2_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[7]~4_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[8]~6_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[9]~8_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[10]~10_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[11]~12_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[12]~14_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[5]~0_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[6]~2_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[7]~4_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[8]~6_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[9]~8_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[10]~10_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[11]~12_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[12]~14_combout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \vga_u0|controller|VGA_R[0]~0_combout\ : std_logic;
SIGNAL \vga_u0|controller|VGA_VS1~0_combout\ : std_logic;
SIGNAL \vga_u0|controller|on_screen~0_combout\ : std_logic;
SIGNAL \vga_u0|controller|on_screen~1_combout\ : std_logic;
SIGNAL \vga_u0|controller|on_screen~2_combout\ : std_logic;
SIGNAL \vga_u0|controller|on_screen~3_combout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \vga_u0|controller|VGA_R[0]~1_combout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \vga_u0|controller|VGA_G[0]~0_combout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \vga_u0|controller|VGA_G[0]~1_combout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \vga_u0|controller|VGA_B[0]~0_combout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \vga_u0|controller|VGA_B[0]~1_combout\ : std_logic;
SIGNAL \vga_u0|controller|VGA_HS1~0_combout\ : std_logic;
SIGNAL \vga_u0|controller|VGA_HS1~1_combout\ : std_logic;
SIGNAL \vga_u0|controller|VGA_HS1~2_combout\ : std_logic;
SIGNAL \vga_u0|controller|VGA_HS1~q\ : std_logic;
SIGNAL \vga_u0|controller|VGA_HS~q\ : std_logic;
SIGNAL \vga_u0|controller|VGA_VS1~1_combout\ : std_logic;
SIGNAL \vga_u0|controller|VGA_VS1~2_combout\ : std_logic;
SIGNAL \vga_u0|controller|VGA_VS1~q\ : std_logic;
SIGNAL \vga_u0|controller|VGA_VS~q\ : std_logic;
SIGNAL \vga_u0|controller|VGA_BLANK1~0_combout\ : std_logic;
SIGNAL \vga_u0|controller|VGA_BLANK1~q\ : std_logic;
SIGNAL \vga_u0|controller|VGA_BLANK~feeder_combout\ : std_logic;
SIGNAL \vga_u0|controller|VGA_BLANK~q\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|rden_decode_b|w_anode143w\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|decode2|w_anode126w\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \vga_u0|controller|xCounter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|rden_decode_b|w_anode157w\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \vga_u0|controller|yCounter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|out_address_reg_b\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \filScr0|y\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \filScr0|x\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|decode2|w_anode118w\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|decode2|w_anode105w\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|address_reg_b\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|rden_decode_b|w_anode166w\ : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
VGA_BLANK <= ww_VGA_BLANK;
VGA_SYNC <= ww_VGA_SYNC;
VGA_CLK <= ww_VGA_CLK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\vga_u0|VideoMemory|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \filScr0|x\(2);

\vga_u0|VideoMemory|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\vga_u0|user_input_translator|mem_address[12]~14_combout\ & \vga_u0|user_input_translator|mem_address[11]~12_combout\ & \vga_u0|user_input_translator|mem_address[10]~10_combout\ & 
\vga_u0|user_input_translator|mem_address[9]~8_combout\ & \vga_u0|user_input_translator|mem_address[8]~6_combout\ & \vga_u0|user_input_translator|mem_address[7]~4_combout\ & \vga_u0|user_input_translator|mem_address[6]~2_combout\ & 
\vga_u0|user_input_translator|mem_address[5]~0_combout\ & \filScr0|x\(4) & \filScr0|x\(3) & \filScr0|x\(2) & \filScr0|x\(1) & \filScr0|x\(0));

\vga_u0|VideoMemory|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\vga_u0|controller|controller_translator|mem_address[12]~14_combout\ & \vga_u0|controller|controller_translator|mem_address[11]~12_combout\ & 
\vga_u0|controller|controller_translator|mem_address[10]~10_combout\ & \vga_u0|controller|controller_translator|mem_address[9]~8_combout\ & \vga_u0|controller|controller_translator|mem_address[8]~6_combout\ & 
\vga_u0|controller|controller_translator|mem_address[7]~4_combout\ & \vga_u0|controller|controller_translator|mem_address[6]~2_combout\ & \vga_u0|controller|controller_translator|mem_address[5]~0_combout\ & \vga_u0|controller|xCounter\(6) & 
\vga_u0|controller|xCounter\(5) & \vga_u0|controller|xCounter\(4) & \vga_u0|controller|xCounter\(3) & \vga_u0|controller|xCounter\(2));

\vga_u0|VideoMemory|auto_generated|ram_block1a5~portbdataout\ <= \vga_u0|VideoMemory|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\vga_u0|VideoMemory|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \filScr0|x\(2);

\vga_u0|VideoMemory|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\vga_u0|user_input_translator|mem_address[12]~14_combout\ & \vga_u0|user_input_translator|mem_address[11]~12_combout\ & \vga_u0|user_input_translator|mem_address[10]~10_combout\ & 
\vga_u0|user_input_translator|mem_address[9]~8_combout\ & \vga_u0|user_input_translator|mem_address[8]~6_combout\ & \vga_u0|user_input_translator|mem_address[7]~4_combout\ & \vga_u0|user_input_translator|mem_address[6]~2_combout\ & 
\vga_u0|user_input_translator|mem_address[5]~0_combout\ & \filScr0|x\(4) & \filScr0|x\(3) & \filScr0|x\(2) & \filScr0|x\(1) & \filScr0|x\(0));

\vga_u0|VideoMemory|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\vga_u0|controller|controller_translator|mem_address[12]~14_combout\ & \vga_u0|controller|controller_translator|mem_address[11]~12_combout\ & 
\vga_u0|controller|controller_translator|mem_address[10]~10_combout\ & \vga_u0|controller|controller_translator|mem_address[9]~8_combout\ & \vga_u0|controller|controller_translator|mem_address[8]~6_combout\ & 
\vga_u0|controller|controller_translator|mem_address[7]~4_combout\ & \vga_u0|controller|controller_translator|mem_address[6]~2_combout\ & \vga_u0|controller|controller_translator|mem_address[5]~0_combout\ & \vga_u0|controller|xCounter\(6) & 
\vga_u0|controller|xCounter\(5) & \vga_u0|controller|xCounter\(4) & \vga_u0|controller|xCounter\(3) & \vga_u0|controller|xCounter\(2));

\vga_u0|VideoMemory|auto_generated|ram_block1a2~portbdataout\ <= \vga_u0|VideoMemory|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\vga_u0|VideoMemory|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \filScr0|x\(1);

\vga_u0|VideoMemory|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\vga_u0|user_input_translator|mem_address[12]~14_combout\ & \vga_u0|user_input_translator|mem_address[11]~12_combout\ & \vga_u0|user_input_translator|mem_address[10]~10_combout\ & 
\vga_u0|user_input_translator|mem_address[9]~8_combout\ & \vga_u0|user_input_translator|mem_address[8]~6_combout\ & \vga_u0|user_input_translator|mem_address[7]~4_combout\ & \vga_u0|user_input_translator|mem_address[6]~2_combout\ & 
\vga_u0|user_input_translator|mem_address[5]~0_combout\ & \filScr0|x\(4) & \filScr0|x\(3) & \filScr0|x\(2) & \filScr0|x\(1) & \filScr0|x\(0));

\vga_u0|VideoMemory|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\vga_u0|controller|controller_translator|mem_address[12]~14_combout\ & \vga_u0|controller|controller_translator|mem_address[11]~12_combout\ & 
\vga_u0|controller|controller_translator|mem_address[10]~10_combout\ & \vga_u0|controller|controller_translator|mem_address[9]~8_combout\ & \vga_u0|controller|controller_translator|mem_address[8]~6_combout\ & 
\vga_u0|controller|controller_translator|mem_address[7]~4_combout\ & \vga_u0|controller|controller_translator|mem_address[6]~2_combout\ & \vga_u0|controller|controller_translator|mem_address[5]~0_combout\ & \vga_u0|controller|xCounter\(6) & 
\vga_u0|controller|xCounter\(5) & \vga_u0|controller|xCounter\(4) & \vga_u0|controller|xCounter\(3) & \vga_u0|controller|xCounter\(2));

\vga_u0|VideoMemory|auto_generated|ram_block1a4~portbdataout\ <= \vga_u0|VideoMemory|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\vga_u0|VideoMemory|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \filScr0|x\(1);

\vga_u0|VideoMemory|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\vga_u0|user_input_translator|mem_address[12]~14_combout\ & \vga_u0|user_input_translator|mem_address[11]~12_combout\ & \vga_u0|user_input_translator|mem_address[10]~10_combout\ & 
\vga_u0|user_input_translator|mem_address[9]~8_combout\ & \vga_u0|user_input_translator|mem_address[8]~6_combout\ & \vga_u0|user_input_translator|mem_address[7]~4_combout\ & \vga_u0|user_input_translator|mem_address[6]~2_combout\ & 
\vga_u0|user_input_translator|mem_address[5]~0_combout\ & \filScr0|x\(4) & \filScr0|x\(3) & \filScr0|x\(2) & \filScr0|x\(1) & \filScr0|x\(0));

\vga_u0|VideoMemory|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\vga_u0|controller|controller_translator|mem_address[12]~14_combout\ & \vga_u0|controller|controller_translator|mem_address[11]~12_combout\ & 
\vga_u0|controller|controller_translator|mem_address[10]~10_combout\ & \vga_u0|controller|controller_translator|mem_address[9]~8_combout\ & \vga_u0|controller|controller_translator|mem_address[8]~6_combout\ & 
\vga_u0|controller|controller_translator|mem_address[7]~4_combout\ & \vga_u0|controller|controller_translator|mem_address[6]~2_combout\ & \vga_u0|controller|controller_translator|mem_address[5]~0_combout\ & \vga_u0|controller|xCounter\(6) & 
\vga_u0|controller|xCounter\(5) & \vga_u0|controller|xCounter\(4) & \vga_u0|controller|xCounter\(3) & \vga_u0|controller|xCounter\(2));

\vga_u0|VideoMemory|auto_generated|ram_block1a1~portbdataout\ <= \vga_u0|VideoMemory|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\vga_u0|VideoMemory|auto_generated|ram_block1a7_PORTADATAIN_bus\ <= (\filScr0|x\(2) & \filScr0|x\(1));

\vga_u0|VideoMemory|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\vga_u0|user_input_translator|mem_address[11]~12_combout\ & \vga_u0|user_input_translator|mem_address[10]~10_combout\ & \vga_u0|user_input_translator|mem_address[9]~8_combout\ & 
\vga_u0|user_input_translator|mem_address[8]~6_combout\ & \vga_u0|user_input_translator|mem_address[7]~4_combout\ & \vga_u0|user_input_translator|mem_address[6]~2_combout\ & \vga_u0|user_input_translator|mem_address[5]~0_combout\ & \filScr0|x\(4) & 
\filScr0|x\(3) & \filScr0|x\(2) & \filScr0|x\(1) & \filScr0|x\(0));

\vga_u0|VideoMemory|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\vga_u0|controller|controller_translator|mem_address[11]~12_combout\ & \vga_u0|controller|controller_translator|mem_address[10]~10_combout\ & 
\vga_u0|controller|controller_translator|mem_address[9]~8_combout\ & \vga_u0|controller|controller_translator|mem_address[8]~6_combout\ & \vga_u0|controller|controller_translator|mem_address[7]~4_combout\ & 
\vga_u0|controller|controller_translator|mem_address[6]~2_combout\ & \vga_u0|controller|controller_translator|mem_address[5]~0_combout\ & \vga_u0|controller|xCounter\(6) & \vga_u0|controller|xCounter\(5) & \vga_u0|controller|xCounter\(4) & 
\vga_u0|controller|xCounter\(3) & \vga_u0|controller|xCounter\(2));

\vga_u0|VideoMemory|auto_generated|ram_block1a7~portbdataout\ <= \vga_u0|VideoMemory|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);
\vga_u0|VideoMemory|auto_generated|ram_block1a8\ <= \vga_u0|VideoMemory|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(1);

\vga_u0|VideoMemory|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \filScr0|x\(0);

\vga_u0|VideoMemory|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\vga_u0|user_input_translator|mem_address[12]~14_combout\ & \vga_u0|user_input_translator|mem_address[11]~12_combout\ & \vga_u0|user_input_translator|mem_address[10]~10_combout\ & 
\vga_u0|user_input_translator|mem_address[9]~8_combout\ & \vga_u0|user_input_translator|mem_address[8]~6_combout\ & \vga_u0|user_input_translator|mem_address[7]~4_combout\ & \vga_u0|user_input_translator|mem_address[6]~2_combout\ & 
\vga_u0|user_input_translator|mem_address[5]~0_combout\ & \filScr0|x\(4) & \filScr0|x\(3) & \filScr0|x\(2) & \filScr0|x\(1) & \filScr0|x\(0));

\vga_u0|VideoMemory|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\vga_u0|controller|controller_translator|mem_address[12]~14_combout\ & \vga_u0|controller|controller_translator|mem_address[11]~12_combout\ & 
\vga_u0|controller|controller_translator|mem_address[10]~10_combout\ & \vga_u0|controller|controller_translator|mem_address[9]~8_combout\ & \vga_u0|controller|controller_translator|mem_address[8]~6_combout\ & 
\vga_u0|controller|controller_translator|mem_address[7]~4_combout\ & \vga_u0|controller|controller_translator|mem_address[6]~2_combout\ & \vga_u0|controller|controller_translator|mem_address[5]~0_combout\ & \vga_u0|controller|xCounter\(6) & 
\vga_u0|controller|xCounter\(5) & \vga_u0|controller|xCounter\(4) & \vga_u0|controller|xCounter\(3) & \vga_u0|controller|xCounter\(2));

\vga_u0|VideoMemory|auto_generated|ram_block1a3~portbdataout\ <= \vga_u0|VideoMemory|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\vga_u0|VideoMemory|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \filScr0|x\(0);

\vga_u0|VideoMemory|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\vga_u0|user_input_translator|mem_address[12]~14_combout\ & \vga_u0|user_input_translator|mem_address[11]~12_combout\ & \vga_u0|user_input_translator|mem_address[10]~10_combout\ & 
\vga_u0|user_input_translator|mem_address[9]~8_combout\ & \vga_u0|user_input_translator|mem_address[8]~6_combout\ & \vga_u0|user_input_translator|mem_address[7]~4_combout\ & \vga_u0|user_input_translator|mem_address[6]~2_combout\ & 
\vga_u0|user_input_translator|mem_address[5]~0_combout\ & \filScr0|x\(4) & \filScr0|x\(3) & \filScr0|x\(2) & \filScr0|x\(1) & \filScr0|x\(0));

\vga_u0|VideoMemory|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\vga_u0|controller|controller_translator|mem_address[12]~14_combout\ & \vga_u0|controller|controller_translator|mem_address[11]~12_combout\ & 
\vga_u0|controller|controller_translator|mem_address[10]~10_combout\ & \vga_u0|controller|controller_translator|mem_address[9]~8_combout\ & \vga_u0|controller|controller_translator|mem_address[8]~6_combout\ & 
\vga_u0|controller|controller_translator|mem_address[7]~4_combout\ & \vga_u0|controller|controller_translator|mem_address[6]~2_combout\ & \vga_u0|controller|controller_translator|mem_address[5]~0_combout\ & \vga_u0|controller|xCounter\(6) & 
\vga_u0|controller|xCounter\(5) & \vga_u0|controller|xCounter\(4) & \vga_u0|controller|xCounter\(3) & \vga_u0|controller|xCounter\(2));

\vga_u0|VideoMemory|auto_generated|ram_block1a0~portbdataout\ <= \vga_u0|VideoMemory|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\vga_u0|VideoMemory|auto_generated|ram_block1a6_PORTADATAIN_bus\ <= (gnd & \filScr0|x\(0));

\vga_u0|VideoMemory|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\vga_u0|user_input_translator|mem_address[11]~12_combout\ & \vga_u0|user_input_translator|mem_address[10]~10_combout\ & \vga_u0|user_input_translator|mem_address[9]~8_combout\ & 
\vga_u0|user_input_translator|mem_address[8]~6_combout\ & \vga_u0|user_input_translator|mem_address[7]~4_combout\ & \vga_u0|user_input_translator|mem_address[6]~2_combout\ & \vga_u0|user_input_translator|mem_address[5]~0_combout\ & \filScr0|x\(4) & 
\filScr0|x\(3) & \filScr0|x\(2) & \filScr0|x\(1) & \filScr0|x\(0));

\vga_u0|VideoMemory|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\vga_u0|controller|controller_translator|mem_address[11]~12_combout\ & \vga_u0|controller|controller_translator|mem_address[10]~10_combout\ & 
\vga_u0|controller|controller_translator|mem_address[9]~8_combout\ & \vga_u0|controller|controller_translator|mem_address[8]~6_combout\ & \vga_u0|controller|controller_translator|mem_address[7]~4_combout\ & 
\vga_u0|controller|controller_translator|mem_address[6]~2_combout\ & \vga_u0|controller|controller_translator|mem_address[5]~0_combout\ & \vga_u0|controller|xCounter\(6) & \vga_u0|controller|xCounter\(5) & \vga_u0|controller|xCounter\(4) & 
\vga_u0|controller|xCounter\(3) & \vga_u0|controller|xCounter\(2));

\vga_u0|VideoMemory|auto_generated|ram_block1a6~portbdataout\ <= \vga_u0|VideoMemory|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\vga_u0|mypll|altpll_component|pll_INCLK_bus\ <= (gnd & \CLOCK_50~input_o\);

\vga_u0|mypll|altpll_component|_clk0\ <= \vga_u0|mypll|altpll_component|pll_CLK_bus\(0);
\vga_u0|mypll|altpll_component|pll~CLK1\ <= \vga_u0|mypll|altpll_component|pll_CLK_bus\(1);
\vga_u0|mypll|altpll_component|pll~CLK2\ <= \vga_u0|mypll|altpll_component|pll_CLK_bus\(2);
\vga_u0|mypll|altpll_component|pll~CLK3\ <= \vga_u0|mypll|altpll_component|pll_CLK_bus\(3);
\vga_u0|mypll|altpll_component|pll~CLK4\ <= \vga_u0|mypll|altpll_component|pll_CLK_bus\(4);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\vga_u0|mypll|altpll_component|_clk0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \vga_u0|mypll|altpll_component|_clk0\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \filScr0|done~q\,
	devoe => ww_devoe,
	o => ww_LEDG(0));

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDG(1));

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDG(2));

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDG(3));

-- Location: IOOBUF_X72_Y73_N16
\LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDG(4));

-- Location: IOOBUF_X74_Y73_N16
\LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDG(5));

-- Location: IOOBUF_X72_Y73_N23
\LEDG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDG(6));

-- Location: IOOBUF_X74_Y73_N23
\LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDG(7));

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X33_Y73_N2
\VGA_R[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_u0|controller|VGA_R[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(0));

-- Location: IOOBUF_X31_Y73_N2
\VGA_R[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_u0|controller|VGA_R[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(1));

-- Location: IOOBUF_X35_Y73_N23
\VGA_R[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_u0|controller|VGA_R[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(2));

-- Location: IOOBUF_X33_Y73_N9
\VGA_R[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_u0|controller|VGA_R[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(3));

-- Location: IOOBUF_X20_Y73_N9
\VGA_R[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_u0|controller|VGA_R[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(4));

-- Location: IOOBUF_X40_Y73_N9
\VGA_R[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_u0|controller|VGA_R[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(5));

-- Location: IOOBUF_X11_Y73_N23
\VGA_R[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_u0|controller|VGA_R[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(6));

-- Location: IOOBUF_X20_Y73_N16
\VGA_R[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_u0|controller|VGA_R[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(7));

-- Location: IOOBUF_X60_Y73_N2
\VGA_R[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_u0|controller|VGA_R[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(8));

-- Location: IOOBUF_X58_Y73_N16
\VGA_R[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_u0|controller|VGA_R[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(9));

-- Location: IOOBUF_X11_Y73_N16
\VGA_G[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_u0|controller|VGA_G[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(0));

-- Location: IOOBUF_X25_Y73_N16
\VGA_G[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_u0|controller|VGA_G[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(1));

-- Location: IOOBUF_X11_Y73_N9
\VGA_G[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_u0|controller|VGA_G[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(2));

-- Location: IOOBUF_X25_Y73_N23
\VGA_G[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_u0|controller|VGA_G[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(3));

-- Location: IOOBUF_X16_Y73_N9
\VGA_G[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_u0|controller|VGA_G[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(4));

-- Location: IOOBUF_X16_Y73_N2
\VGA_G[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_u0|controller|VGA_G[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(5));

-- Location: IOOBUF_X20_Y73_N2
\VGA_G[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_u0|controller|VGA_G[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(6));

-- Location: IOOBUF_X23_Y73_N16
\VGA_G[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_u0|controller|VGA_G[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(7));

-- Location: IOOBUF_X40_Y0_N16
\VGA_G[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_u0|controller|VGA_G[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(8));

-- Location: IOOBUF_X11_Y0_N23
\VGA_G[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_u0|controller|VGA_G[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(9));

-- Location: IOOBUF_X38_Y73_N9
\VGA_B[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_u0|controller|VGA_B[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(0));

-- Location: IOOBUF_X38_Y73_N2
\VGA_B[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_u0|controller|VGA_B[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(1));

-- Location: IOOBUF_X23_Y73_N2
\VGA_B[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_u0|controller|VGA_B[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(2));

-- Location: IOOBUF_X42_Y73_N9
\VGA_B[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_u0|controller|VGA_B[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(3));

-- Location: IOOBUF_X42_Y73_N2
\VGA_B[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_u0|controller|VGA_B[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(4));

-- Location: IOOBUF_X52_Y73_N16
\VGA_B[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_u0|controller|VGA_B[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(5));

-- Location: IOOBUF_X23_Y73_N9
\VGA_B[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_u0|controller|VGA_B[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(6));

-- Location: IOOBUF_X52_Y73_N23
\VGA_B[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_u0|controller|VGA_B[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(7));

-- Location: IOOBUF_X65_Y73_N23
\VGA_B[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_u0|controller|VGA_B[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(8));

-- Location: IOOBUF_X65_Y73_N16
\VGA_B[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_u0|controller|VGA_B[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(9));

-- Location: IOOBUF_X38_Y73_N16
\VGA_HS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_u0|controller|VGA_HS~q\,
	devoe => ww_devoe,
	o => ww_VGA_HS);

-- Location: IOOBUF_X54_Y73_N2
\VGA_VS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_u0|controller|VGA_VS~q\,
	devoe => ww_devoe,
	o => ww_VGA_VS);

-- Location: IOOBUF_X65_Y0_N23
\VGA_BLANK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_u0|controller|VGA_BLANK~q\,
	devoe => ww_devoe,
	o => ww_VGA_BLANK);

-- Location: IOOBUF_X0_Y21_N23
\VGA_SYNC~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_VGA_SYNC);

-- Location: IOOBUF_X47_Y73_N2
\VGA_CLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	devoe => ww_devoe,
	o => ww_VGA_CLK);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: FF_X73_Y25_N25
\filScr0|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \filScr0|Add0~17_combout\,
	ena => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filScr0|y\(5));

-- Location: LCCOMB_X74_Y25_N28
\filScr0|initY~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \filScr0|initY~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \filScr0|initY~feeder_combout\);

-- Location: FF_X74_Y25_N29
\filScr0|initY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \filScr0|initY~feeder_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filScr0|initY~q\);

-- Location: LCCOMB_X74_Y25_N30
\filScr0|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \filScr0|Add0~18_combout\ = (\filScr0|Add0~0_combout\ & \filScr0|initY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \filScr0|Add0~0_combout\,
	datad => \filScr0|initY~q\,
	combout => \filScr0|Add0~18_combout\);

-- Location: FF_X74_Y25_N31
\filScr0|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \filScr0|Add0~18_combout\,
	ena => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filScr0|y\(0));

-- Location: LCCOMB_X74_Y25_N8
\filScr0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \filScr0|Add0~0_combout\ = (\filScr0|initX~q\ & (\filScr0|y\(0) & VCC)) # (!\filScr0|initX~q\ & (\filScr0|y\(0) $ (VCC)))
-- \filScr0|Add0~1\ = CARRY((!\filScr0|initX~q\ & \filScr0|y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filScr0|initX~q\,
	datab => \filScr0|y\(0),
	datad => VCC,
	combout => \filScr0|Add0~0_combout\,
	cout => \filScr0|Add0~1\);

-- Location: LCCOMB_X74_Y25_N24
\filScr0|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \filScr0|process_0~0_combout\ = (((!\filScr0|Add0~2_combout\) # (!\filScr0|Add0~0_combout\)) # (!\filScr0|initY~q\)) # (!\filScr0|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filScr0|Add0~4_combout\,
	datab => \filScr0|initY~q\,
	datac => \filScr0|Add0~0_combout\,
	datad => \filScr0|Add0~2_combout\,
	combout => \filScr0|process_0~0_combout\);

-- Location: LCCOMB_X75_Y25_N30
\filScr0|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \filScr0|Add1~22_combout\ = (\filScr0|initX~q\ & \filScr0|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \filScr0|initX~q\,
	datad => \filScr0|Add1~2_combout\,
	combout => \filScr0|Add1~22_combout\);

-- Location: FF_X75_Y25_N31
\filScr0|x[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \filScr0|Add1~22_combout\,
	ena => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filScr0|x\(1));

-- Location: FF_X75_Y25_N25
\filScr0|loadX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \filScr0|Equal1~2_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filScr0|loadX~q\);

-- Location: LCCOMB_X75_Y25_N8
\filScr0|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \filScr0|Add1~0_combout\ = (\filScr0|x\(0) & (\filScr0|loadX~q\ $ (VCC))) # (!\filScr0|x\(0) & (\filScr0|loadX~q\ & VCC))
-- \filScr0|Add1~1\ = CARRY((\filScr0|x\(0) & \filScr0|loadX~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filScr0|x\(0),
	datab => \filScr0|loadX~q\,
	datad => VCC,
	combout => \filScr0|Add1~0_combout\,
	cout => \filScr0|Add1~1\);

-- Location: LCCOMB_X75_Y25_N2
\filScr0|Add1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \filScr0|Add1~23_combout\ = (\filScr0|initX~q\ & \filScr0|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \filScr0|initX~q\,
	datac => \filScr0|Add1~0_combout\,
	combout => \filScr0|Add1~23_combout\);

-- Location: FF_X75_Y25_N3
\filScr0|x[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \filScr0|Add1~23_combout\,
	ena => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filScr0|x\(0));

-- Location: LCCOMB_X75_Y25_N10
\filScr0|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \filScr0|Add1~2_combout\ = (\filScr0|x\(1) & (!\filScr0|Add1~1\)) # (!\filScr0|x\(1) & ((\filScr0|Add1~1\) # (GND)))
-- \filScr0|Add1~3\ = CARRY((!\filScr0|Add1~1\) # (!\filScr0|x\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filScr0|x\(1),
	datad => VCC,
	cin => \filScr0|Add1~1\,
	combout => \filScr0|Add1~2_combout\,
	cout => \filScr0|Add1~3\);

-- Location: LCCOMB_X75_Y25_N4
\filScr0|Add1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \filScr0|Add1~21_combout\ = (\filScr0|initX~q\ & \filScr0|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \filScr0|initX~q\,
	datad => \filScr0|Add1~4_combout\,
	combout => \filScr0|Add1~21_combout\);

-- Location: FF_X75_Y25_N5
\filScr0|x[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \filScr0|Add1~21_combout\,
	ena => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filScr0|x\(2));

-- Location: LCCOMB_X75_Y25_N12
\filScr0|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \filScr0|Add1~4_combout\ = (\filScr0|x\(2) & (\filScr0|Add1~3\ $ (GND))) # (!\filScr0|x\(2) & (!\filScr0|Add1~3\ & VCC))
-- \filScr0|Add1~5\ = CARRY((\filScr0|x\(2) & !\filScr0|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \filScr0|x\(2),
	datad => VCC,
	cin => \filScr0|Add1~3\,
	combout => \filScr0|Add1~4_combout\,
	cout => \filScr0|Add1~5\);

-- Location: LCCOMB_X75_Y25_N28
\filScr0|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \filScr0|Equal1~0_combout\ = (\filScr0|Add1~2_combout\ & (\filScr0|initX~q\ & (\filScr0|Add1~0_combout\ & \filScr0|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filScr0|Add1~2_combout\,
	datab => \filScr0|initX~q\,
	datac => \filScr0|Add1~0_combout\,
	datad => \filScr0|Add1~4_combout\,
	combout => \filScr0|Equal1~0_combout\);

-- Location: LCCOMB_X75_Y25_N26
\filScr0|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \filScr0|Add1~20_combout\ = (\filScr0|initX~q\ & \filScr0|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \filScr0|initX~q\,
	datac => \filScr0|Add1~6_combout\,
	combout => \filScr0|Add1~20_combout\);

-- Location: FF_X75_Y25_N27
\filScr0|x[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \filScr0|Add1~20_combout\,
	ena => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filScr0|x\(3));

-- Location: LCCOMB_X75_Y25_N14
\filScr0|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \filScr0|Add1~6_combout\ = (\filScr0|x\(3) & (!\filScr0|Add1~5\)) # (!\filScr0|x\(3) & ((\filScr0|Add1~5\) # (GND)))
-- \filScr0|Add1~7\ = CARRY((!\filScr0|Add1~5\) # (!\filScr0|x\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filScr0|x\(3),
	datad => VCC,
	cin => \filScr0|Add1~5\,
	combout => \filScr0|Add1~6_combout\,
	cout => \filScr0|Add1~7\);

-- Location: LCCOMB_X75_Y25_N0
\filScr0|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \filScr0|Add1~19_combout\ = (\filScr0|initX~q\ & \filScr0|Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \filScr0|initX~q\,
	datad => \filScr0|Add1~8_combout\,
	combout => \filScr0|Add1~19_combout\);

-- Location: FF_X75_Y25_N1
\filScr0|x[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \filScr0|Add1~19_combout\,
	ena => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filScr0|x\(4));

-- Location: LCCOMB_X75_Y25_N16
\filScr0|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \filScr0|Add1~8_combout\ = (\filScr0|x\(4) & (\filScr0|Add1~7\ $ (GND))) # (!\filScr0|x\(4) & (!\filScr0|Add1~7\ & VCC))
-- \filScr0|Add1~9\ = CARRY((\filScr0|x\(4) & !\filScr0|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \filScr0|x\(4),
	datad => VCC,
	cin => \filScr0|Add1~7\,
	combout => \filScr0|Add1~8_combout\,
	cout => \filScr0|Add1~9\);

-- Location: LCCOMB_X75_Y25_N6
\filScr0|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \filScr0|Equal1~1_combout\ = (\filScr0|Equal1~0_combout\ & (\filScr0|Add1~6_combout\ & \filScr0|Add1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \filScr0|Equal1~0_combout\,
	datac => \filScr0|Add1~6_combout\,
	datad => \filScr0|Add1~8_combout\,
	combout => \filScr0|Equal1~1_combout\);

-- Location: LCCOMB_X72_Y25_N0
\filScr0|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \filScr0|Add1~18_combout\ = (\filScr0|initX~q\ & \filScr0|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filScr0|initX~q\,
	datad => \filScr0|Add1~10_combout\,
	combout => \filScr0|Add1~18_combout\);

-- Location: FF_X72_Y25_N1
\filScr0|x[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \filScr0|Add1~18_combout\,
	ena => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filScr0|x\(5));

-- Location: LCCOMB_X75_Y25_N18
\filScr0|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \filScr0|Add1~10_combout\ = (\filScr0|x\(5) & (!\filScr0|Add1~9\)) # (!\filScr0|x\(5) & ((\filScr0|Add1~9\) # (GND)))
-- \filScr0|Add1~11\ = CARRY((!\filScr0|Add1~9\) # (!\filScr0|x\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filScr0|x\(5),
	datad => VCC,
	cin => \filScr0|Add1~9\,
	combout => \filScr0|Add1~10_combout\,
	cout => \filScr0|Add1~11\);

-- Location: LCCOMB_X74_Y25_N2
\filScr0|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \filScr0|Add1~16_combout\ = (\filScr0|initX~q\ & \filScr0|Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filScr0|initX~q\,
	datad => \filScr0|Add1~14_combout\,
	combout => \filScr0|Add1~16_combout\);

-- Location: FF_X74_Y25_N3
\filScr0|x[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \filScr0|Add1~16_combout\,
	ena => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filScr0|x\(7));

-- Location: LCCOMB_X75_Y25_N20
\filScr0|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \filScr0|Add1~12_combout\ = (\filScr0|x\(6) & (\filScr0|Add1~11\ $ (GND))) # (!\filScr0|x\(6) & (!\filScr0|Add1~11\ & VCC))
-- \filScr0|Add1~13\ = CARRY((\filScr0|x\(6) & !\filScr0|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \filScr0|x\(6),
	datad => VCC,
	cin => \filScr0|Add1~11\,
	combout => \filScr0|Add1~12_combout\,
	cout => \filScr0|Add1~13\);

-- Location: LCCOMB_X74_Y25_N4
\filScr0|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \filScr0|Add1~17_combout\ = (\filScr0|Add1~12_combout\ & \filScr0|initX~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \filScr0|Add1~12_combout\,
	datad => \filScr0|initX~q\,
	combout => \filScr0|Add1~17_combout\);

-- Location: FF_X74_Y25_N5
\filScr0|x[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \filScr0|Add1~17_combout\,
	ena => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filScr0|x\(6));

-- Location: LCCOMB_X75_Y25_N22
\filScr0|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \filScr0|Add1~14_combout\ = \filScr0|Add1~13\ $ (\filScr0|x\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \filScr0|x\(7),
	cin => \filScr0|Add1~13\,
	combout => \filScr0|Add1~14_combout\);

-- Location: LCCOMB_X75_Y25_N24
\filScr0|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \filScr0|Equal1~2_combout\ = ((\filScr0|Add1~10_combout\) # ((\filScr0|Add1~12_combout\) # (!\filScr0|Add1~14_combout\))) # (!\filScr0|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filScr0|Equal1~1_combout\,
	datab => \filScr0|Add1~10_combout\,
	datac => \filScr0|Add1~14_combout\,
	datad => \filScr0|Add1~12_combout\,
	combout => \filScr0|Equal1~2_combout\);

-- Location: LCCOMB_X74_Y25_N6
\filScr0|initX~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \filScr0|initX~0_combout\ = (\filScr0|Equal1~2_combout\) # ((!\filScr0|donesecond~q\ & (!\filScr0|process_0~0_combout\ & !\filScr0|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filScr0|donesecond~q\,
	datab => \filScr0|process_0~0_combout\,
	datac => \filScr0|process_0~1_combout\,
	datad => \filScr0|Equal1~2_combout\,
	combout => \filScr0|initX~0_combout\);

-- Location: FF_X74_Y25_N7
\filScr0|initX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \filScr0|initX~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filScr0|initX~q\);

-- Location: LCCOMB_X74_Y25_N10
\filScr0|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \filScr0|Add0~2_combout\ = (\filScr0|y\(1) & (!\filScr0|Add0~1\)) # (!\filScr0|y\(1) & ((\filScr0|Add0~1\) # (GND)))
-- \filScr0|Add0~3\ = CARRY((!\filScr0|Add0~1\) # (!\filScr0|y\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filScr0|y\(1),
	datad => VCC,
	cin => \filScr0|Add0~1\,
	combout => \filScr0|Add0~2_combout\,
	cout => \filScr0|Add0~3\);

-- Location: LCCOMB_X73_Y25_N0
\filScr0|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \filScr0|Add0~19_combout\ = (\filScr0|Add0~2_combout\ & \filScr0|initY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \filScr0|Add0~2_combout\,
	datad => \filScr0|initY~q\,
	combout => \filScr0|Add0~19_combout\);

-- Location: FF_X73_Y25_N1
\filScr0|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \filScr0|Add0~19_combout\,
	ena => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filScr0|y\(1));

-- Location: LCCOMB_X74_Y25_N12
\filScr0|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \filScr0|Add0~4_combout\ = (\filScr0|y\(2) & (\filScr0|Add0~3\ $ (GND))) # (!\filScr0|y\(2) & (!\filScr0|Add0~3\ & VCC))
-- \filScr0|Add0~5\ = CARRY((\filScr0|y\(2) & !\filScr0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filScr0|y\(2),
	datad => VCC,
	cin => \filScr0|Add0~3\,
	combout => \filScr0|Add0~4_combout\,
	cout => \filScr0|Add0~5\);

-- Location: LCCOMB_X73_Y25_N2
\filScr0|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \filScr0|Add0~20_combout\ = (\filScr0|Add0~4_combout\ & \filScr0|initY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \filScr0|Add0~4_combout\,
	datad => \filScr0|initY~q\,
	combout => \filScr0|Add0~20_combout\);

-- Location: FF_X73_Y25_N3
\filScr0|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \filScr0|Add0~20_combout\,
	ena => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filScr0|y\(2));

-- Location: LCCOMB_X74_Y25_N14
\filScr0|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \filScr0|Add0~6_combout\ = (\filScr0|y\(3) & (!\filScr0|Add0~5\)) # (!\filScr0|y\(3) & ((\filScr0|Add0~5\) # (GND)))
-- \filScr0|Add0~7\ = CARRY((!\filScr0|Add0~5\) # (!\filScr0|y\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \filScr0|y\(3),
	datad => VCC,
	cin => \filScr0|Add0~5\,
	combout => \filScr0|Add0~6_combout\,
	cout => \filScr0|Add0~7\);

-- Location: LCCOMB_X73_Y25_N28
\filScr0|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \filScr0|Add0~8_combout\ = (\filScr0|Add0~6_combout\ & \filScr0|initY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \filScr0|Add0~6_combout\,
	datad => \filScr0|initY~q\,
	combout => \filScr0|Add0~8_combout\);

-- Location: FF_X73_Y25_N29
\filScr0|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \filScr0|Add0~8_combout\,
	ena => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filScr0|y\(3));

-- Location: LCCOMB_X74_Y25_N16
\filScr0|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \filScr0|Add0~9_combout\ = (\filScr0|y\(4) & (\filScr0|Add0~7\ $ (GND))) # (!\filScr0|y\(4) & (!\filScr0|Add0~7\ & VCC))
-- \filScr0|Add0~10\ = CARRY((\filScr0|y\(4) & !\filScr0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filScr0|y\(4),
	datad => VCC,
	cin => \filScr0|Add0~7\,
	combout => \filScr0|Add0~9_combout\,
	cout => \filScr0|Add0~10\);

-- Location: LCCOMB_X73_Y25_N20
\filScr0|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \filScr0|Add0~16_combout\ = (\filScr0|initY~q\ & \filScr0|Add0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \filScr0|initY~q\,
	datad => \filScr0|Add0~9_combout\,
	combout => \filScr0|Add0~16_combout\);

-- Location: FF_X73_Y25_N27
\filScr0|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \filScr0|Add0~16_combout\,
	sload => VCC,
	ena => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filScr0|y\(4));

-- Location: LCCOMB_X74_Y25_N18
\filScr0|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \filScr0|Add0~11_combout\ = (\filScr0|y\(5) & (!\filScr0|Add0~10\)) # (!\filScr0|y\(5) & ((\filScr0|Add0~10\) # (GND)))
-- \filScr0|Add0~12\ = CARRY((!\filScr0|Add0~10\) # (!\filScr0|y\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \filScr0|y\(5),
	datad => VCC,
	cin => \filScr0|Add0~10\,
	combout => \filScr0|Add0~11_combout\,
	cout => \filScr0|Add0~12\);

-- Location: LCCOMB_X73_Y25_N24
\filScr0|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \filScr0|Add0~17_combout\ = (\filScr0|Add0~11_combout\ & \filScr0|initY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \filScr0|Add0~11_combout\,
	datad => \filScr0|initY~q\,
	combout => \filScr0|Add0~17_combout\);

-- Location: FF_X73_Y25_N23
\filScr0|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \filScr0|Add0~15_combout\,
	ena => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filScr0|y\(6));

-- Location: LCCOMB_X74_Y25_N20
\filScr0|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \filScr0|Add0~13_combout\ = \filScr0|Add0~12\ $ (!\filScr0|y\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \filScr0|y\(6),
	cin => \filScr0|Add0~12\,
	combout => \filScr0|Add0~13_combout\);

-- Location: LCCOMB_X73_Y25_N22
\filScr0|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \filScr0|Add0~15_combout\ = (\filScr0|Add0~13_combout\ & \filScr0|initY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \filScr0|Add0~13_combout\,
	datad => \filScr0|initY~q\,
	combout => \filScr0|Add0~15_combout\);

-- Location: LCCOMB_X73_Y25_N30
\filScr0|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \filScr0|process_0~1_combout\ = (((\filScr0|Add0~8_combout\) # (!\filScr0|Add0~15_combout\)) # (!\filScr0|Add0~16_combout\)) # (!\filScr0|Add0~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filScr0|Add0~17_combout\,
	datab => \filScr0|Add0~16_combout\,
	datac => \filScr0|Add0~15_combout\,
	datad => \filScr0|Add0~8_combout\,
	combout => \filScr0|process_0~1_combout\);

-- Location: LCCOMB_X74_Y25_N26
\filScr0|donesecond~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \filScr0|donesecond~0_combout\ = (\filScr0|donesecond~q\) # ((!\filScr0|process_0~1_combout\ & (!\filScr0|process_0~0_combout\ & !\filScr0|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filScr0|process_0~1_combout\,
	datab => \filScr0|process_0~0_combout\,
	datac => \filScr0|donesecond~q\,
	datad => \filScr0|Equal1~2_combout\,
	combout => \filScr0|donesecond~0_combout\);

-- Location: FF_X74_Y25_N27
\filScr0|donesecond\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \filScr0|donesecond~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filScr0|donesecond~q\);

-- Location: LCCOMB_X74_Y25_N22
\filScr0|done~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \filScr0|done~0_combout\ = (\filScr0|donesecond~q\) # ((\filScr0|process_0~0_combout\) # ((\filScr0|process_0~1_combout\) # (\filScr0|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filScr0|donesecond~q\,
	datab => \filScr0|process_0~0_combout\,
	datac => \filScr0|process_0~1_combout\,
	datad => \filScr0|Equal1~2_combout\,
	combout => \filScr0|done~0_combout\);

-- Location: LCCOMB_X74_Y25_N0
\filScr0|done~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \filScr0|done~1_combout\ = (\filScr0|done~q\) # (!\filScr0|done~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filScr0|done~0_combout\,
	datac => \filScr0|done~q\,
	combout => \filScr0|done~1_combout\);

-- Location: FF_X74_Y25_N1
\filScr0|done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \filScr0|done~1_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filScr0|done~q\);

-- Location: PLL_1
\vga_u0|mypll|altpll_component|pll\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 12,
	c0_initial => 1,
	c0_low => 12,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 2,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 6264,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "manual",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \vga_u0|mypll|altpll_component|pll~FBOUT\,
	inclk => \vga_u0|mypll|altpll_component|pll_INCLK_bus\,
	fbout => \vga_u0|mypll|altpll_component|pll~FBOUT\,
	clk => \vga_u0|mypll|altpll_component|pll_CLK_bus\);

-- Location: CLKCTRL_G3
\vga_u0|mypll|altpll_component|_clk0~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\);

-- Location: LCCOMB_X66_Y24_N8
\vga_u0|controller|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add0~0_combout\ = \vga_u0|controller|xCounter\(0) $ (VCC)
-- \vga_u0|controller|Add0~1\ = CARRY(\vga_u0|controller|xCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|xCounter\(0),
	datad => VCC,
	combout => \vga_u0|controller|Add0~0_combout\,
	cout => \vga_u0|controller|Add0~1\);

-- Location: FF_X66_Y24_N9
\vga_u0|controller|xCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	d => \vga_u0|controller|Add0~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_u0|controller|xCounter\(0));

-- Location: LCCOMB_X66_Y24_N10
\vga_u0|controller|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add0~2_combout\ = (\vga_u0|controller|xCounter\(1) & (!\vga_u0|controller|Add0~1\)) # (!\vga_u0|controller|xCounter\(1) & ((\vga_u0|controller|Add0~1\) # (GND)))
-- \vga_u0|controller|Add0~3\ = CARRY((!\vga_u0|controller|Add0~1\) # (!\vga_u0|controller|xCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|xCounter\(1),
	datad => VCC,
	cin => \vga_u0|controller|Add0~1\,
	combout => \vga_u0|controller|Add0~2_combout\,
	cout => \vga_u0|controller|Add0~3\);

-- Location: FF_X66_Y24_N11
\vga_u0|controller|xCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	d => \vga_u0|controller|Add0~2_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_u0|controller|xCounter\(1));

-- Location: LCCOMB_X66_Y24_N12
\vga_u0|controller|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add0~4_combout\ = (\vga_u0|controller|xCounter\(2) & (\vga_u0|controller|Add0~3\ $ (GND))) # (!\vga_u0|controller|xCounter\(2) & (!\vga_u0|controller|Add0~3\ & VCC))
-- \vga_u0|controller|Add0~5\ = CARRY((\vga_u0|controller|xCounter\(2) & !\vga_u0|controller|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|xCounter\(2),
	datad => VCC,
	cin => \vga_u0|controller|Add0~3\,
	combout => \vga_u0|controller|Add0~4_combout\,
	cout => \vga_u0|controller|Add0~5\);

-- Location: FF_X66_Y24_N13
\vga_u0|controller|xCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	d => \vga_u0|controller|Add0~4_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_u0|controller|xCounter\(2));

-- Location: LCCOMB_X66_Y24_N14
\vga_u0|controller|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add0~6_combout\ = (\vga_u0|controller|xCounter\(3) & (!\vga_u0|controller|Add0~5\)) # (!\vga_u0|controller|xCounter\(3) & ((\vga_u0|controller|Add0~5\) # (GND)))
-- \vga_u0|controller|Add0~7\ = CARRY((!\vga_u0|controller|Add0~5\) # (!\vga_u0|controller|xCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|xCounter\(3),
	datad => VCC,
	cin => \vga_u0|controller|Add0~5\,
	combout => \vga_u0|controller|Add0~6_combout\,
	cout => \vga_u0|controller|Add0~7\);

-- Location: FF_X66_Y24_N15
\vga_u0|controller|xCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	d => \vga_u0|controller|Add0~6_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_u0|controller|xCounter\(3));

-- Location: LCCOMB_X66_Y24_N16
\vga_u0|controller|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add0~8_combout\ = (\vga_u0|controller|xCounter\(4) & (\vga_u0|controller|Add0~7\ $ (GND))) # (!\vga_u0|controller|xCounter\(4) & (!\vga_u0|controller|Add0~7\ & VCC))
-- \vga_u0|controller|Add0~9\ = CARRY((\vga_u0|controller|xCounter\(4) & !\vga_u0|controller|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|xCounter\(4),
	datad => VCC,
	cin => \vga_u0|controller|Add0~7\,
	combout => \vga_u0|controller|Add0~8_combout\,
	cout => \vga_u0|controller|Add0~9\);

-- Location: FF_X66_Y24_N17
\vga_u0|controller|xCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	d => \vga_u0|controller|Add0~8_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_u0|controller|xCounter\(4));

-- Location: LCCOMB_X66_Y24_N18
\vga_u0|controller|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add0~10_combout\ = (\vga_u0|controller|xCounter\(5) & (!\vga_u0|controller|Add0~9\)) # (!\vga_u0|controller|xCounter\(5) & ((\vga_u0|controller|Add0~9\) # (GND)))
-- \vga_u0|controller|Add0~11\ = CARRY((!\vga_u0|controller|Add0~9\) # (!\vga_u0|controller|xCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|xCounter\(5),
	datad => VCC,
	cin => \vga_u0|controller|Add0~9\,
	combout => \vga_u0|controller|Add0~10_combout\,
	cout => \vga_u0|controller|Add0~11\);

-- Location: LCCOMB_X66_Y24_N0
\vga_u0|controller|xCounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|xCounter~0_combout\ = (!\vga_u0|controller|Equal0~2_combout\ & \vga_u0|controller|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|Equal0~2_combout\,
	datad => \vga_u0|controller|Add0~10_combout\,
	combout => \vga_u0|controller|xCounter~0_combout\);

-- Location: FF_X66_Y24_N1
\vga_u0|controller|xCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	d => \vga_u0|controller|xCounter~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_u0|controller|xCounter\(5));

-- Location: LCCOMB_X66_Y24_N20
\vga_u0|controller|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add0~12_combout\ = (\vga_u0|controller|xCounter\(6) & (\vga_u0|controller|Add0~11\ $ (GND))) # (!\vga_u0|controller|xCounter\(6) & (!\vga_u0|controller|Add0~11\ & VCC))
-- \vga_u0|controller|Add0~13\ = CARRY((\vga_u0|controller|xCounter\(6) & !\vga_u0|controller|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|xCounter\(6),
	datad => VCC,
	cin => \vga_u0|controller|Add0~11\,
	combout => \vga_u0|controller|Add0~12_combout\,
	cout => \vga_u0|controller|Add0~13\);

-- Location: FF_X66_Y24_N21
\vga_u0|controller|xCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	d => \vga_u0|controller|Add0~12_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_u0|controller|xCounter\(6));

-- Location: LCCOMB_X66_Y24_N22
\vga_u0|controller|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add0~14_combout\ = (\vga_u0|controller|xCounter\(7) & (!\vga_u0|controller|Add0~13\)) # (!\vga_u0|controller|xCounter\(7) & ((\vga_u0|controller|Add0~13\) # (GND)))
-- \vga_u0|controller|Add0~15\ = CARRY((!\vga_u0|controller|Add0~13\) # (!\vga_u0|controller|xCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|xCounter\(7),
	datad => VCC,
	cin => \vga_u0|controller|Add0~13\,
	combout => \vga_u0|controller|Add0~14_combout\,
	cout => \vga_u0|controller|Add0~15\);

-- Location: FF_X66_Y24_N23
\vga_u0|controller|xCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	d => \vga_u0|controller|Add0~14_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_u0|controller|xCounter\(7));

-- Location: LCCOMB_X66_Y24_N24
\vga_u0|controller|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add0~16_combout\ = (\vga_u0|controller|xCounter\(8) & (\vga_u0|controller|Add0~15\ $ (GND))) # (!\vga_u0|controller|xCounter\(8) & (!\vga_u0|controller|Add0~15\ & VCC))
-- \vga_u0|controller|Add0~17\ = CARRY((\vga_u0|controller|xCounter\(8) & !\vga_u0|controller|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|xCounter\(8),
	datad => VCC,
	cin => \vga_u0|controller|Add0~15\,
	combout => \vga_u0|controller|Add0~16_combout\,
	cout => \vga_u0|controller|Add0~17\);

-- Location: LCCOMB_X66_Y24_N2
\vga_u0|controller|xCounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|xCounter~1_combout\ = (!\vga_u0|controller|Equal0~2_combout\ & \vga_u0|controller|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|Equal0~2_combout\,
	datad => \vga_u0|controller|Add0~16_combout\,
	combout => \vga_u0|controller|xCounter~1_combout\);

-- Location: FF_X66_Y24_N3
\vga_u0|controller|xCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	d => \vga_u0|controller|xCounter~1_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_u0|controller|xCounter\(8));

-- Location: LCCOMB_X66_Y24_N26
\vga_u0|controller|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add0~18_combout\ = \vga_u0|controller|xCounter\(9) $ (\vga_u0|controller|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|xCounter\(9),
	cin => \vga_u0|controller|Add0~17\,
	combout => \vga_u0|controller|Add0~18_combout\);

-- Location: LCCOMB_X66_Y24_N4
\vga_u0|controller|xCounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|xCounter~2_combout\ = (\vga_u0|controller|Add0~18_combout\ & !\vga_u0|controller|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_u0|controller|Add0~18_combout\,
	datad => \vga_u0|controller|Equal0~2_combout\,
	combout => \vga_u0|controller|xCounter~2_combout\);

-- Location: FF_X66_Y24_N5
\vga_u0|controller|xCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	d => \vga_u0|controller|xCounter~2_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_u0|controller|xCounter\(9));

-- Location: LCCOMB_X66_Y24_N28
\vga_u0|controller|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Equal0~1_combout\ = (\vga_u0|controller|xCounter\(4) & (\vga_u0|controller|xCounter\(9) & (!\vga_u0|controller|xCounter\(7) & \vga_u0|controller|xCounter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|xCounter\(4),
	datab => \vga_u0|controller|xCounter\(9),
	datac => \vga_u0|controller|xCounter\(7),
	datad => \vga_u0|controller|xCounter\(8),
	combout => \vga_u0|controller|Equal0~1_combout\);

-- Location: LCCOMB_X65_Y25_N20
\vga_u0|controller|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Equal0~0_combout\ = (\vga_u0|controller|xCounter\(1) & (!\vga_u0|controller|xCounter\(6) & (!\vga_u0|controller|xCounter\(5) & \vga_u0|controller|xCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|xCounter\(1),
	datab => \vga_u0|controller|xCounter\(6),
	datac => \vga_u0|controller|xCounter\(5),
	datad => \vga_u0|controller|xCounter\(0),
	combout => \vga_u0|controller|Equal0~0_combout\);

-- Location: LCCOMB_X65_Y25_N30
\vga_u0|controller|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Equal0~2_combout\ = (\vga_u0|controller|xCounter\(2) & (\vga_u0|controller|Equal0~1_combout\ & (\vga_u0|controller|xCounter\(3) & \vga_u0|controller|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|xCounter\(2),
	datab => \vga_u0|controller|Equal0~1_combout\,
	datac => \vga_u0|controller|xCounter\(3),
	datad => \vga_u0|controller|Equal0~0_combout\,
	combout => \vga_u0|controller|Equal0~2_combout\);

-- Location: LCCOMB_X67_Y24_N12
\vga_u0|controller|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add1~0_combout\ = \vga_u0|controller|yCounter\(0) $ (VCC)
-- \vga_u0|controller|Add1~1\ = CARRY(\vga_u0|controller|yCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|yCounter\(0),
	datad => VCC,
	combout => \vga_u0|controller|Add1~0_combout\,
	cout => \vga_u0|controller|Add1~1\);

-- Location: LCCOMB_X67_Y24_N2
\vga_u0|controller|yCounter[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|yCounter[0]~10_combout\ = (\vga_u0|controller|yCounter[9]~0_combout\ & (!\vga_u0|controller|Equal0~2_combout\ & (\vga_u0|controller|yCounter\(0)))) # (!\vga_u0|controller|yCounter[9]~0_combout\ & ((\vga_u0|controller|Add1~0_combout\) # 
-- ((!\vga_u0|controller|Equal0~2_combout\ & \vga_u0|controller|yCounter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter[9]~0_combout\,
	datab => \vga_u0|controller|Equal0~2_combout\,
	datac => \vga_u0|controller|yCounter\(0),
	datad => \vga_u0|controller|Add1~0_combout\,
	combout => \vga_u0|controller|yCounter[0]~10_combout\);

-- Location: FF_X67_Y24_N3
\vga_u0|controller|yCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	d => \vga_u0|controller|yCounter[0]~10_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_u0|controller|yCounter\(0));

-- Location: LCCOMB_X67_Y24_N14
\vga_u0|controller|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add1~2_combout\ = (\vga_u0|controller|yCounter\(1) & (!\vga_u0|controller|Add1~1\)) # (!\vga_u0|controller|yCounter\(1) & ((\vga_u0|controller|Add1~1\) # (GND)))
-- \vga_u0|controller|Add1~3\ = CARRY((!\vga_u0|controller|Add1~1\) # (!\vga_u0|controller|yCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|yCounter\(1),
	datad => VCC,
	cin => \vga_u0|controller|Add1~1\,
	combout => \vga_u0|controller|Add1~2_combout\,
	cout => \vga_u0|controller|Add1~3\);

-- Location: LCCOMB_X67_Y24_N0
\vga_u0|controller|yCounter[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|yCounter[1]~9_combout\ = (\vga_u0|controller|yCounter[9]~0_combout\ & (((\vga_u0|controller|yCounter\(1) & !\vga_u0|controller|Equal0~2_combout\)))) # (!\vga_u0|controller|yCounter[9]~0_combout\ & ((\vga_u0|controller|Add1~2_combout\) # 
-- ((\vga_u0|controller|yCounter\(1) & !\vga_u0|controller|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter[9]~0_combout\,
	datab => \vga_u0|controller|Add1~2_combout\,
	datac => \vga_u0|controller|yCounter\(1),
	datad => \vga_u0|controller|Equal0~2_combout\,
	combout => \vga_u0|controller|yCounter[1]~9_combout\);

-- Location: FF_X67_Y24_N1
\vga_u0|controller|yCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	d => \vga_u0|controller|yCounter[1]~9_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_u0|controller|yCounter\(1));

-- Location: LCCOMB_X67_Y24_N16
\vga_u0|controller|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add1~4_combout\ = (\vga_u0|controller|yCounter\(2) & (\vga_u0|controller|Add1~3\ $ (GND))) # (!\vga_u0|controller|yCounter\(2) & (!\vga_u0|controller|Add1~3\ & VCC))
-- \vga_u0|controller|Add1~5\ = CARRY((\vga_u0|controller|yCounter\(2) & !\vga_u0|controller|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter\(2),
	datad => VCC,
	cin => \vga_u0|controller|Add1~3\,
	combout => \vga_u0|controller|Add1~4_combout\,
	cout => \vga_u0|controller|Add1~5\);

-- Location: LCCOMB_X67_Y24_N6
\vga_u0|controller|yCounter[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|yCounter[2]~8_combout\ = (\vga_u0|controller|yCounter[9]~0_combout\ & (((\vga_u0|controller|yCounter\(2) & !\vga_u0|controller|Equal0~2_combout\)))) # (!\vga_u0|controller|yCounter[9]~0_combout\ & ((\vga_u0|controller|Add1~4_combout\) # 
-- ((\vga_u0|controller|yCounter\(2) & !\vga_u0|controller|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter[9]~0_combout\,
	datab => \vga_u0|controller|Add1~4_combout\,
	datac => \vga_u0|controller|yCounter\(2),
	datad => \vga_u0|controller|Equal0~2_combout\,
	combout => \vga_u0|controller|yCounter[2]~8_combout\);

-- Location: FF_X67_Y24_N7
\vga_u0|controller|yCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	d => \vga_u0|controller|yCounter[2]~8_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_u0|controller|yCounter\(2));

-- Location: LCCOMB_X67_Y24_N18
\vga_u0|controller|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add1~6_combout\ = (\vga_u0|controller|yCounter\(3) & (!\vga_u0|controller|Add1~5\)) # (!\vga_u0|controller|yCounter\(3) & ((\vga_u0|controller|Add1~5\) # (GND)))
-- \vga_u0|controller|Add1~7\ = CARRY((!\vga_u0|controller|Add1~5\) # (!\vga_u0|controller|yCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter\(3),
	datad => VCC,
	cin => \vga_u0|controller|Add1~5\,
	combout => \vga_u0|controller|Add1~6_combout\,
	cout => \vga_u0|controller|Add1~7\);

-- Location: LCCOMB_X66_Y24_N30
\vga_u0|controller|yCounter[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|yCounter[3]~7_combout\ = (\vga_u0|controller|Equal0~2_combout\ & (!\vga_u0|controller|yCounter[9]~0_combout\ & ((\vga_u0|controller|Add1~6_combout\)))) # (!\vga_u0|controller|Equal0~2_combout\ & ((\vga_u0|controller|yCounter\(3)) # 
-- ((!\vga_u0|controller|yCounter[9]~0_combout\ & \vga_u0|controller|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|Equal0~2_combout\,
	datab => \vga_u0|controller|yCounter[9]~0_combout\,
	datac => \vga_u0|controller|yCounter\(3),
	datad => \vga_u0|controller|Add1~6_combout\,
	combout => \vga_u0|controller|yCounter[3]~7_combout\);

-- Location: FF_X66_Y24_N31
\vga_u0|controller|yCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	d => \vga_u0|controller|yCounter[3]~7_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_u0|controller|yCounter\(3));

-- Location: LCCOMB_X67_Y24_N20
\vga_u0|controller|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add1~8_combout\ = (\vga_u0|controller|yCounter\(4) & (\vga_u0|controller|Add1~7\ $ (GND))) # (!\vga_u0|controller|yCounter\(4) & (!\vga_u0|controller|Add1~7\ & VCC))
-- \vga_u0|controller|Add1~9\ = CARRY((\vga_u0|controller|yCounter\(4) & !\vga_u0|controller|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|yCounter\(4),
	datad => VCC,
	cin => \vga_u0|controller|Add1~7\,
	combout => \vga_u0|controller|Add1~8_combout\,
	cout => \vga_u0|controller|Add1~9\);

-- Location: LCCOMB_X67_Y25_N4
\vga_u0|controller|yCounter[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|yCounter[4]~6_combout\ = (\vga_u0|controller|Add1~8_combout\ & (((!\vga_u0|controller|Equal0~2_combout\ & \vga_u0|controller|yCounter\(4))) # (!\vga_u0|controller|yCounter[9]~0_combout\))) # (!\vga_u0|controller|Add1~8_combout\ & 
-- (!\vga_u0|controller|Equal0~2_combout\ & (\vga_u0|controller|yCounter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|Add1~8_combout\,
	datab => \vga_u0|controller|Equal0~2_combout\,
	datac => \vga_u0|controller|yCounter\(4),
	datad => \vga_u0|controller|yCounter[9]~0_combout\,
	combout => \vga_u0|controller|yCounter[4]~6_combout\);

-- Location: FF_X67_Y25_N5
\vga_u0|controller|yCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	d => \vga_u0|controller|yCounter[4]~6_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_u0|controller|yCounter\(4));

-- Location: LCCOMB_X67_Y24_N22
\vga_u0|controller|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add1~10_combout\ = (\vga_u0|controller|yCounter\(5) & (!\vga_u0|controller|Add1~9\)) # (!\vga_u0|controller|yCounter\(5) & ((\vga_u0|controller|Add1~9\) # (GND)))
-- \vga_u0|controller|Add1~11\ = CARRY((!\vga_u0|controller|Add1~9\) # (!\vga_u0|controller|yCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter\(5),
	datad => VCC,
	cin => \vga_u0|controller|Add1~9\,
	combout => \vga_u0|controller|Add1~10_combout\,
	cout => \vga_u0|controller|Add1~11\);

-- Location: LCCOMB_X67_Y25_N0
\vga_u0|controller|yCounter[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|yCounter[5]~5_combout\ = (\vga_u0|controller|Add1~10_combout\ & (((!\vga_u0|controller|Equal0~2_combout\ & \vga_u0|controller|yCounter\(5))) # (!\vga_u0|controller|yCounter[9]~0_combout\))) # (!\vga_u0|controller|Add1~10_combout\ & 
-- (!\vga_u0|controller|Equal0~2_combout\ & (\vga_u0|controller|yCounter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|Add1~10_combout\,
	datab => \vga_u0|controller|Equal0~2_combout\,
	datac => \vga_u0|controller|yCounter\(5),
	datad => \vga_u0|controller|yCounter[9]~0_combout\,
	combout => \vga_u0|controller|yCounter[5]~5_combout\);

-- Location: FF_X67_Y25_N1
\vga_u0|controller|yCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	d => \vga_u0|controller|yCounter[5]~5_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_u0|controller|yCounter\(5));

-- Location: LCCOMB_X67_Y24_N24
\vga_u0|controller|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add1~12_combout\ = (\vga_u0|controller|yCounter\(6) & (\vga_u0|controller|Add1~11\ $ (GND))) # (!\vga_u0|controller|yCounter\(6) & (!\vga_u0|controller|Add1~11\ & VCC))
-- \vga_u0|controller|Add1~13\ = CARRY((\vga_u0|controller|yCounter\(6) & !\vga_u0|controller|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|yCounter\(6),
	datad => VCC,
	cin => \vga_u0|controller|Add1~11\,
	combout => \vga_u0|controller|Add1~12_combout\,
	cout => \vga_u0|controller|Add1~13\);

-- Location: LCCOMB_X67_Y24_N4
\vga_u0|controller|yCounter[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|yCounter[6]~4_combout\ = (\vga_u0|controller|yCounter[9]~0_combout\ & (((\vga_u0|controller|yCounter\(6) & !\vga_u0|controller|Equal0~2_combout\)))) # (!\vga_u0|controller|yCounter[9]~0_combout\ & ((\vga_u0|controller|Add1~12_combout\) 
-- # ((\vga_u0|controller|yCounter\(6) & !\vga_u0|controller|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter[9]~0_combout\,
	datab => \vga_u0|controller|Add1~12_combout\,
	datac => \vga_u0|controller|yCounter\(6),
	datad => \vga_u0|controller|Equal0~2_combout\,
	combout => \vga_u0|controller|yCounter[6]~4_combout\);

-- Location: FF_X67_Y24_N5
\vga_u0|controller|yCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	d => \vga_u0|controller|yCounter[6]~4_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_u0|controller|yCounter\(6));

-- Location: LCCOMB_X67_Y24_N26
\vga_u0|controller|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add1~14_combout\ = (\vga_u0|controller|yCounter\(7) & (!\vga_u0|controller|Add1~13\)) # (!\vga_u0|controller|yCounter\(7) & ((\vga_u0|controller|Add1~13\) # (GND)))
-- \vga_u0|controller|Add1~15\ = CARRY((!\vga_u0|controller|Add1~13\) # (!\vga_u0|controller|yCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter\(7),
	datad => VCC,
	cin => \vga_u0|controller|Add1~13\,
	combout => \vga_u0|controller|Add1~14_combout\,
	cout => \vga_u0|controller|Add1~15\);

-- Location: LCCOMB_X67_Y24_N10
\vga_u0|controller|yCounter[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|yCounter[7]~3_combout\ = (\vga_u0|controller|yCounter[9]~0_combout\ & (((\vga_u0|controller|yCounter\(7) & !\vga_u0|controller|Equal0~2_combout\)))) # (!\vga_u0|controller|yCounter[9]~0_combout\ & ((\vga_u0|controller|Add1~14_combout\) 
-- # ((\vga_u0|controller|yCounter\(7) & !\vga_u0|controller|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter[9]~0_combout\,
	datab => \vga_u0|controller|Add1~14_combout\,
	datac => \vga_u0|controller|yCounter\(7),
	datad => \vga_u0|controller|Equal0~2_combout\,
	combout => \vga_u0|controller|yCounter[7]~3_combout\);

-- Location: FF_X67_Y24_N11
\vga_u0|controller|yCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	d => \vga_u0|controller|yCounter[7]~3_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_u0|controller|yCounter\(7));

-- Location: LCCOMB_X67_Y24_N28
\vga_u0|controller|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add1~16_combout\ = (\vga_u0|controller|yCounter\(8) & (\vga_u0|controller|Add1~15\ $ (GND))) # (!\vga_u0|controller|yCounter\(8) & (!\vga_u0|controller|Add1~15\ & VCC))
-- \vga_u0|controller|Add1~17\ = CARRY((\vga_u0|controller|yCounter\(8) & !\vga_u0|controller|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|yCounter\(8),
	datad => VCC,
	cin => \vga_u0|controller|Add1~15\,
	combout => \vga_u0|controller|Add1~16_combout\,
	cout => \vga_u0|controller|Add1~17\);

-- Location: LCCOMB_X67_Y24_N30
\vga_u0|controller|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add1~18_combout\ = \vga_u0|controller|yCounter\(9) $ (\vga_u0|controller|Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|yCounter\(9),
	cin => \vga_u0|controller|Add1~17\,
	combout => \vga_u0|controller|Add1~18_combout\);

-- Location: LCCOMB_X66_Y24_N6
\vga_u0|controller|yCounter[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|yCounter[9]~1_combout\ = (\vga_u0|controller|Equal0~2_combout\ & (!\vga_u0|controller|yCounter[9]~0_combout\ & ((\vga_u0|controller|Add1~18_combout\)))) # (!\vga_u0|controller|Equal0~2_combout\ & ((\vga_u0|controller|yCounter\(9)) # 
-- ((!\vga_u0|controller|yCounter[9]~0_combout\ & \vga_u0|controller|Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|Equal0~2_combout\,
	datab => \vga_u0|controller|yCounter[9]~0_combout\,
	datac => \vga_u0|controller|yCounter\(9),
	datad => \vga_u0|controller|Add1~18_combout\,
	combout => \vga_u0|controller|yCounter[9]~1_combout\);

-- Location: FF_X66_Y24_N7
\vga_u0|controller|yCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	d => \vga_u0|controller|yCounter[9]~1_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_u0|controller|yCounter\(9));

-- Location: LCCOMB_X67_Y25_N6
\vga_u0|controller|always1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|always1~0_combout\ = (\vga_u0|controller|yCounter\(9) & (\vga_u0|controller|yCounter\(3) & (!\vga_u0|controller|yCounter\(4) & \vga_u0|controller|yCounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter\(9),
	datab => \vga_u0|controller|yCounter\(3),
	datac => \vga_u0|controller|yCounter\(4),
	datad => \vga_u0|controller|yCounter\(2),
	combout => \vga_u0|controller|always1~0_combout\);

-- Location: LCCOMB_X67_Y25_N24
\vga_u0|controller|always1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|always1~1_combout\ = (!\vga_u0|controller|yCounter\(7) & (!\vga_u0|controller|yCounter\(1) & (!\vga_u0|controller|yCounter\(8) & !\vga_u0|controller|yCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter\(7),
	datab => \vga_u0|controller|yCounter\(1),
	datac => \vga_u0|controller|yCounter\(8),
	datad => \vga_u0|controller|yCounter\(0),
	combout => \vga_u0|controller|always1~1_combout\);

-- Location: LCCOMB_X67_Y25_N26
\vga_u0|controller|always1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|always1~2_combout\ = (!\vga_u0|controller|yCounter\(6) & !\vga_u0|controller|yCounter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_u0|controller|yCounter\(6),
	datad => \vga_u0|controller|yCounter\(5),
	combout => \vga_u0|controller|always1~2_combout\);

-- Location: LCCOMB_X67_Y25_N28
\vga_u0|controller|yCounter[9]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|yCounter[9]~0_combout\ = ((\vga_u0|controller|always1~0_combout\ & (\vga_u0|controller|always1~1_combout\ & \vga_u0|controller|always1~2_combout\))) # (!\vga_u0|controller|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|always1~0_combout\,
	datab => \vga_u0|controller|always1~1_combout\,
	datac => \vga_u0|controller|always1~2_combout\,
	datad => \vga_u0|controller|Equal0~2_combout\,
	combout => \vga_u0|controller|yCounter[9]~0_combout\);

-- Location: LCCOMB_X67_Y24_N8
\vga_u0|controller|yCounter[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|yCounter[8]~2_combout\ = (\vga_u0|controller|yCounter[9]~0_combout\ & (((\vga_u0|controller|yCounter\(8) & !\vga_u0|controller|Equal0~2_combout\)))) # (!\vga_u0|controller|yCounter[9]~0_combout\ & ((\vga_u0|controller|Add1~16_combout\) 
-- # ((\vga_u0|controller|yCounter\(8) & !\vga_u0|controller|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter[9]~0_combout\,
	datab => \vga_u0|controller|Add1~16_combout\,
	datac => \vga_u0|controller|yCounter\(8),
	datad => \vga_u0|controller|Equal0~2_combout\,
	combout => \vga_u0|controller|yCounter[8]~2_combout\);

-- Location: FF_X67_Y24_N9
\vga_u0|controller|yCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	d => \vga_u0|controller|yCounter[8]~2_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_u0|controller|yCounter\(8));

-- Location: LCCOMB_X67_Y25_N8
\vga_u0|controller|controller_translator|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|Add0~0_combout\ = (\vga_u0|controller|yCounter\(2) & (\vga_u0|controller|yCounter\(4) $ (VCC))) # (!\vga_u0|controller|yCounter\(2) & (\vga_u0|controller|yCounter\(4) & VCC))
-- \vga_u0|controller|controller_translator|Add0~1\ = CARRY((\vga_u0|controller|yCounter\(2) & \vga_u0|controller|yCounter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter\(2),
	datab => \vga_u0|controller|yCounter\(4),
	datad => VCC,
	combout => \vga_u0|controller|controller_translator|Add0~0_combout\,
	cout => \vga_u0|controller|controller_translator|Add0~1\);

-- Location: LCCOMB_X67_Y25_N10
\vga_u0|controller|controller_translator|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|Add0~2_combout\ = (\vga_u0|controller|yCounter\(5) & ((\vga_u0|controller|yCounter\(3) & (\vga_u0|controller|controller_translator|Add0~1\ & VCC)) # (!\vga_u0|controller|yCounter\(3) & 
-- (!\vga_u0|controller|controller_translator|Add0~1\)))) # (!\vga_u0|controller|yCounter\(5) & ((\vga_u0|controller|yCounter\(3) & (!\vga_u0|controller|controller_translator|Add0~1\)) # (!\vga_u0|controller|yCounter\(3) & 
-- ((\vga_u0|controller|controller_translator|Add0~1\) # (GND)))))
-- \vga_u0|controller|controller_translator|Add0~3\ = CARRY((\vga_u0|controller|yCounter\(5) & (!\vga_u0|controller|yCounter\(3) & !\vga_u0|controller|controller_translator|Add0~1\)) # (!\vga_u0|controller|yCounter\(5) & 
-- ((!\vga_u0|controller|controller_translator|Add0~1\) # (!\vga_u0|controller|yCounter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter\(5),
	datab => \vga_u0|controller|yCounter\(3),
	datad => VCC,
	cin => \vga_u0|controller|controller_translator|Add0~1\,
	combout => \vga_u0|controller|controller_translator|Add0~2_combout\,
	cout => \vga_u0|controller|controller_translator|Add0~3\);

-- Location: LCCOMB_X67_Y25_N12
\vga_u0|controller|controller_translator|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|Add0~4_combout\ = ((\vga_u0|controller|yCounter\(4) $ (\vga_u0|controller|yCounter\(6) $ (!\vga_u0|controller|controller_translator|Add0~3\)))) # (GND)
-- \vga_u0|controller|controller_translator|Add0~5\ = CARRY((\vga_u0|controller|yCounter\(4) & ((\vga_u0|controller|yCounter\(6)) # (!\vga_u0|controller|controller_translator|Add0~3\))) # (!\vga_u0|controller|yCounter\(4) & (\vga_u0|controller|yCounter\(6) & 
-- !\vga_u0|controller|controller_translator|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter\(4),
	datab => \vga_u0|controller|yCounter\(6),
	datad => VCC,
	cin => \vga_u0|controller|controller_translator|Add0~3\,
	combout => \vga_u0|controller|controller_translator|Add0~4_combout\,
	cout => \vga_u0|controller|controller_translator|Add0~5\);

-- Location: LCCOMB_X67_Y25_N14
\vga_u0|controller|controller_translator|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|Add0~6_combout\ = (\vga_u0|controller|yCounter\(7) & ((\vga_u0|controller|yCounter\(5) & (\vga_u0|controller|controller_translator|Add0~5\ & VCC)) # (!\vga_u0|controller|yCounter\(5) & 
-- (!\vga_u0|controller|controller_translator|Add0~5\)))) # (!\vga_u0|controller|yCounter\(7) & ((\vga_u0|controller|yCounter\(5) & (!\vga_u0|controller|controller_translator|Add0~5\)) # (!\vga_u0|controller|yCounter\(5) & 
-- ((\vga_u0|controller|controller_translator|Add0~5\) # (GND)))))
-- \vga_u0|controller|controller_translator|Add0~7\ = CARRY((\vga_u0|controller|yCounter\(7) & (!\vga_u0|controller|yCounter\(5) & !\vga_u0|controller|controller_translator|Add0~5\)) # (!\vga_u0|controller|yCounter\(7) & 
-- ((!\vga_u0|controller|controller_translator|Add0~5\) # (!\vga_u0|controller|yCounter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter\(7),
	datab => \vga_u0|controller|yCounter\(5),
	datad => VCC,
	cin => \vga_u0|controller|controller_translator|Add0~5\,
	combout => \vga_u0|controller|controller_translator|Add0~6_combout\,
	cout => \vga_u0|controller|controller_translator|Add0~7\);

-- Location: LCCOMB_X67_Y25_N16
\vga_u0|controller|controller_translator|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|Add0~8_combout\ = ((\vga_u0|controller|yCounter\(8) $ (\vga_u0|controller|yCounter\(6) $ (!\vga_u0|controller|controller_translator|Add0~7\)))) # (GND)
-- \vga_u0|controller|controller_translator|Add0~9\ = CARRY((\vga_u0|controller|yCounter\(8) & ((\vga_u0|controller|yCounter\(6)) # (!\vga_u0|controller|controller_translator|Add0~7\))) # (!\vga_u0|controller|yCounter\(8) & (\vga_u0|controller|yCounter\(6) & 
-- !\vga_u0|controller|controller_translator|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter\(8),
	datab => \vga_u0|controller|yCounter\(6),
	datad => VCC,
	cin => \vga_u0|controller|controller_translator|Add0~7\,
	combout => \vga_u0|controller|controller_translator|Add0~8_combout\,
	cout => \vga_u0|controller|controller_translator|Add0~9\);

-- Location: LCCOMB_X67_Y25_N18
\vga_u0|controller|controller_translator|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|Add0~10_combout\ = (\vga_u0|controller|yCounter\(7) & (!\vga_u0|controller|controller_translator|Add0~9\)) # (!\vga_u0|controller|yCounter\(7) & ((\vga_u0|controller|controller_translator|Add0~9\) # (GND)))
-- \vga_u0|controller|controller_translator|Add0~11\ = CARRY((!\vga_u0|controller|controller_translator|Add0~9\) # (!\vga_u0|controller|yCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter\(7),
	datad => VCC,
	cin => \vga_u0|controller|controller_translator|Add0~9\,
	combout => \vga_u0|controller|controller_translator|Add0~10_combout\,
	cout => \vga_u0|controller|controller_translator|Add0~11\);

-- Location: LCCOMB_X67_Y25_N20
\vga_u0|controller|controller_translator|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|Add0~12_combout\ = (\vga_u0|controller|yCounter\(8) & (\vga_u0|controller|controller_translator|Add0~11\ $ (GND))) # (!\vga_u0|controller|yCounter\(8) & (!\vga_u0|controller|controller_translator|Add0~11\ & VCC))
-- \vga_u0|controller|controller_translator|Add0~13\ = CARRY((\vga_u0|controller|yCounter\(8) & !\vga_u0|controller|controller_translator|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|yCounter\(8),
	datad => VCC,
	cin => \vga_u0|controller|controller_translator|Add0~11\,
	combout => \vga_u0|controller|controller_translator|Add0~12_combout\,
	cout => \vga_u0|controller|controller_translator|Add0~13\);

-- Location: LCCOMB_X67_Y25_N22
\vga_u0|controller|controller_translator|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|Add0~14_combout\ = \vga_u0|controller|controller_translator|Add0~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \vga_u0|controller|controller_translator|Add0~13\,
	combout => \vga_u0|controller|controller_translator|Add0~14_combout\);

-- Location: LCCOMB_X66_Y25_N6
\vga_u0|controller|controller_translator|mem_address[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|mem_address[5]~0_combout\ = (\vga_u0|controller|yCounter\(2) & (\vga_u0|controller|xCounter\(7) $ (VCC))) # (!\vga_u0|controller|yCounter\(2) & (\vga_u0|controller|xCounter\(7) & VCC))
-- \vga_u0|controller|controller_translator|mem_address[5]~1\ = CARRY((\vga_u0|controller|yCounter\(2) & \vga_u0|controller|xCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter\(2),
	datab => \vga_u0|controller|xCounter\(7),
	datad => VCC,
	combout => \vga_u0|controller|controller_translator|mem_address[5]~0_combout\,
	cout => \vga_u0|controller|controller_translator|mem_address[5]~1\);

-- Location: LCCOMB_X66_Y25_N8
\vga_u0|controller|controller_translator|mem_address[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|mem_address[6]~2_combout\ = (\vga_u0|controller|yCounter\(3) & ((\vga_u0|controller|xCounter\(8) & (\vga_u0|controller|controller_translator|mem_address[5]~1\ & VCC)) # (!\vga_u0|controller|xCounter\(8) & 
-- (!\vga_u0|controller|controller_translator|mem_address[5]~1\)))) # (!\vga_u0|controller|yCounter\(3) & ((\vga_u0|controller|xCounter\(8) & (!\vga_u0|controller|controller_translator|mem_address[5]~1\)) # (!\vga_u0|controller|xCounter\(8) & 
-- ((\vga_u0|controller|controller_translator|mem_address[5]~1\) # (GND)))))
-- \vga_u0|controller|controller_translator|mem_address[6]~3\ = CARRY((\vga_u0|controller|yCounter\(3) & (!\vga_u0|controller|xCounter\(8) & !\vga_u0|controller|controller_translator|mem_address[5]~1\)) # (!\vga_u0|controller|yCounter\(3) & 
-- ((!\vga_u0|controller|controller_translator|mem_address[5]~1\) # (!\vga_u0|controller|xCounter\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter\(3),
	datab => \vga_u0|controller|xCounter\(8),
	datad => VCC,
	cin => \vga_u0|controller|controller_translator|mem_address[5]~1\,
	combout => \vga_u0|controller|controller_translator|mem_address[6]~2_combout\,
	cout => \vga_u0|controller|controller_translator|mem_address[6]~3\);

-- Location: LCCOMB_X66_Y25_N10
\vga_u0|controller|controller_translator|mem_address[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|mem_address[7]~4_combout\ = ((\vga_u0|controller|xCounter\(9) $ (\vga_u0|controller|controller_translator|Add0~0_combout\ $ (!\vga_u0|controller|controller_translator|mem_address[6]~3\)))) # (GND)
-- \vga_u0|controller|controller_translator|mem_address[7]~5\ = CARRY((\vga_u0|controller|xCounter\(9) & ((\vga_u0|controller|controller_translator|Add0~0_combout\) # (!\vga_u0|controller|controller_translator|mem_address[6]~3\))) # 
-- (!\vga_u0|controller|xCounter\(9) & (\vga_u0|controller|controller_translator|Add0~0_combout\ & !\vga_u0|controller|controller_translator|mem_address[6]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|xCounter\(9),
	datab => \vga_u0|controller|controller_translator|Add0~0_combout\,
	datad => VCC,
	cin => \vga_u0|controller|controller_translator|mem_address[6]~3\,
	combout => \vga_u0|controller|controller_translator|mem_address[7]~4_combout\,
	cout => \vga_u0|controller|controller_translator|mem_address[7]~5\);

-- Location: LCCOMB_X66_Y25_N12
\vga_u0|controller|controller_translator|mem_address[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|mem_address[8]~6_combout\ = (\vga_u0|controller|controller_translator|Add0~2_combout\ & (!\vga_u0|controller|controller_translator|mem_address[7]~5\)) # (!\vga_u0|controller|controller_translator|Add0~2_combout\ & 
-- ((\vga_u0|controller|controller_translator|mem_address[7]~5\) # (GND)))
-- \vga_u0|controller|controller_translator|mem_address[8]~7\ = CARRY((!\vga_u0|controller|controller_translator|mem_address[7]~5\) # (!\vga_u0|controller|controller_translator|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|controller_translator|Add0~2_combout\,
	datad => VCC,
	cin => \vga_u0|controller|controller_translator|mem_address[7]~5\,
	combout => \vga_u0|controller|controller_translator|mem_address[8]~6_combout\,
	cout => \vga_u0|controller|controller_translator|mem_address[8]~7\);

-- Location: LCCOMB_X66_Y25_N14
\vga_u0|controller|controller_translator|mem_address[9]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|mem_address[9]~8_combout\ = (\vga_u0|controller|controller_translator|Add0~4_combout\ & (\vga_u0|controller|controller_translator|mem_address[8]~7\ $ (GND))) # 
-- (!\vga_u0|controller|controller_translator|Add0~4_combout\ & (!\vga_u0|controller|controller_translator|mem_address[8]~7\ & VCC))
-- \vga_u0|controller|controller_translator|mem_address[9]~9\ = CARRY((\vga_u0|controller|controller_translator|Add0~4_combout\ & !\vga_u0|controller|controller_translator|mem_address[8]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|controller_translator|Add0~4_combout\,
	datad => VCC,
	cin => \vga_u0|controller|controller_translator|mem_address[8]~7\,
	combout => \vga_u0|controller|controller_translator|mem_address[9]~8_combout\,
	cout => \vga_u0|controller|controller_translator|mem_address[9]~9\);

-- Location: LCCOMB_X66_Y25_N16
\vga_u0|controller|controller_translator|mem_address[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|mem_address[10]~10_combout\ = (\vga_u0|controller|controller_translator|Add0~6_combout\ & (!\vga_u0|controller|controller_translator|mem_address[9]~9\)) # (!\vga_u0|controller|controller_translator|Add0~6_combout\ 
-- & ((\vga_u0|controller|controller_translator|mem_address[9]~9\) # (GND)))
-- \vga_u0|controller|controller_translator|mem_address[10]~11\ = CARRY((!\vga_u0|controller|controller_translator|mem_address[9]~9\) # (!\vga_u0|controller|controller_translator|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|controller_translator|Add0~6_combout\,
	datad => VCC,
	cin => \vga_u0|controller|controller_translator|mem_address[9]~9\,
	combout => \vga_u0|controller|controller_translator|mem_address[10]~10_combout\,
	cout => \vga_u0|controller|controller_translator|mem_address[10]~11\);

-- Location: LCCOMB_X66_Y25_N18
\vga_u0|controller|controller_translator|mem_address[11]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|mem_address[11]~12_combout\ = (\vga_u0|controller|controller_translator|Add0~8_combout\ & (\vga_u0|controller|controller_translator|mem_address[10]~11\ $ (GND))) # 
-- (!\vga_u0|controller|controller_translator|Add0~8_combout\ & (!\vga_u0|controller|controller_translator|mem_address[10]~11\ & VCC))
-- \vga_u0|controller|controller_translator|mem_address[11]~13\ = CARRY((\vga_u0|controller|controller_translator|Add0~8_combout\ & !\vga_u0|controller|controller_translator|mem_address[10]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|controller_translator|Add0~8_combout\,
	datad => VCC,
	cin => \vga_u0|controller|controller_translator|mem_address[10]~11\,
	combout => \vga_u0|controller|controller_translator|mem_address[11]~12_combout\,
	cout => \vga_u0|controller|controller_translator|mem_address[11]~13\);

-- Location: LCCOMB_X66_Y25_N20
\vga_u0|controller|controller_translator|mem_address[12]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|mem_address[12]~14_combout\ = (\vga_u0|controller|controller_translator|Add0~10_combout\ & (!\vga_u0|controller|controller_translator|mem_address[11]~13\)) # 
-- (!\vga_u0|controller|controller_translator|Add0~10_combout\ & ((\vga_u0|controller|controller_translator|mem_address[11]~13\) # (GND)))
-- \vga_u0|controller|controller_translator|mem_address[12]~15\ = CARRY((!\vga_u0|controller|controller_translator|mem_address[11]~13\) # (!\vga_u0|controller|controller_translator|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|controller_translator|Add0~10_combout\,
	datad => VCC,
	cin => \vga_u0|controller|controller_translator|mem_address[11]~13\,
	combout => \vga_u0|controller|controller_translator|mem_address[12]~14_combout\,
	cout => \vga_u0|controller|controller_translator|mem_address[12]~15\);

-- Location: LCCOMB_X66_Y25_N22
\vga_u0|controller|controller_translator|mem_address[13]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|mem_address[13]~16_combout\ = (\vga_u0|controller|controller_translator|Add0~12_combout\ & (\vga_u0|controller|controller_translator|mem_address[12]~15\ $ (GND))) # 
-- (!\vga_u0|controller|controller_translator|Add0~12_combout\ & (!\vga_u0|controller|controller_translator|mem_address[12]~15\ & VCC))
-- \vga_u0|controller|controller_translator|mem_address[13]~17\ = CARRY((\vga_u0|controller|controller_translator|Add0~12_combout\ & !\vga_u0|controller|controller_translator|mem_address[12]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|controller_translator|Add0~12_combout\,
	datad => VCC,
	cin => \vga_u0|controller|controller_translator|mem_address[12]~15\,
	combout => \vga_u0|controller|controller_translator|mem_address[13]~16_combout\,
	cout => \vga_u0|controller|controller_translator|mem_address[13]~17\);

-- Location: LCCOMB_X66_Y25_N24
\vga_u0|controller|controller_translator|mem_address[14]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|mem_address[14]~18_combout\ = \vga_u0|controller|controller_translator|mem_address[13]~17\ $ (\vga_u0|controller|controller_translator|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \vga_u0|controller|controller_translator|Add0~14_combout\,
	cin => \vga_u0|controller|controller_translator|mem_address[13]~17\,
	combout => \vga_u0|controller|controller_translator|mem_address[14]~18_combout\);

-- Location: FF_X66_Y25_N25
\vga_u0|VideoMemory|auto_generated|address_reg_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	d => \vga_u0|controller|controller_translator|mem_address[14]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_u0|VideoMemory|auto_generated|address_reg_b\(1));

-- Location: FF_X66_Y25_N3
\vga_u0|VideoMemory|auto_generated|out_address_reg_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \vga_u0|VideoMemory|auto_generated|address_reg_b\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_u0|VideoMemory|auto_generated|out_address_reg_b\(1));

-- Location: FF_X74_Y25_N23
\filScr0|plot\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \filScr0|done~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filScr0|plot~q\);

-- Location: LCCOMB_X72_Y25_N2
\vga_u0|writeEn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|writeEn~0_combout\ = (\filScr0|plot~q\ & (((!\filScr0|x\(5) & !\filScr0|x\(6))) # (!\filScr0|x\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filScr0|x\(7),
	datab => \filScr0|plot~q\,
	datac => \filScr0|x\(5),
	datad => \filScr0|x\(6),
	combout => \vga_u0|writeEn~0_combout\);

-- Location: LCCOMB_X73_Y25_N4
\vga_u0|user_input_translator|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|Add0~0_combout\ = (\filScr0|y\(0) & (\filScr0|y\(2) $ (VCC))) # (!\filScr0|y\(0) & (\filScr0|y\(2) & VCC))
-- \vga_u0|user_input_translator|Add0~1\ = CARRY((\filScr0|y\(0) & \filScr0|y\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filScr0|y\(0),
	datab => \filScr0|y\(2),
	datad => VCC,
	combout => \vga_u0|user_input_translator|Add0~0_combout\,
	cout => \vga_u0|user_input_translator|Add0~1\);

-- Location: LCCOMB_X73_Y25_N6
\vga_u0|user_input_translator|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|Add0~2_combout\ = (\filScr0|y\(3) & ((\filScr0|y\(1) & (\vga_u0|user_input_translator|Add0~1\ & VCC)) # (!\filScr0|y\(1) & (!\vga_u0|user_input_translator|Add0~1\)))) # (!\filScr0|y\(3) & ((\filScr0|y\(1) & 
-- (!\vga_u0|user_input_translator|Add0~1\)) # (!\filScr0|y\(1) & ((\vga_u0|user_input_translator|Add0~1\) # (GND)))))
-- \vga_u0|user_input_translator|Add0~3\ = CARRY((\filScr0|y\(3) & (!\filScr0|y\(1) & !\vga_u0|user_input_translator|Add0~1\)) # (!\filScr0|y\(3) & ((!\vga_u0|user_input_translator|Add0~1\) # (!\filScr0|y\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filScr0|y\(3),
	datab => \filScr0|y\(1),
	datad => VCC,
	cin => \vga_u0|user_input_translator|Add0~1\,
	combout => \vga_u0|user_input_translator|Add0~2_combout\,
	cout => \vga_u0|user_input_translator|Add0~3\);

-- Location: LCCOMB_X73_Y25_N8
\vga_u0|user_input_translator|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|Add0~4_combout\ = ((\filScr0|y\(4) $ (\filScr0|y\(2) $ (!\vga_u0|user_input_translator|Add0~3\)))) # (GND)
-- \vga_u0|user_input_translator|Add0~5\ = CARRY((\filScr0|y\(4) & ((\filScr0|y\(2)) # (!\vga_u0|user_input_translator|Add0~3\))) # (!\filScr0|y\(4) & (\filScr0|y\(2) & !\vga_u0|user_input_translator|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filScr0|y\(4),
	datab => \filScr0|y\(2),
	datad => VCC,
	cin => \vga_u0|user_input_translator|Add0~3\,
	combout => \vga_u0|user_input_translator|Add0~4_combout\,
	cout => \vga_u0|user_input_translator|Add0~5\);

-- Location: LCCOMB_X73_Y25_N10
\vga_u0|user_input_translator|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|Add0~6_combout\ = (\filScr0|y\(3) & ((\filScr0|y\(5) & (\vga_u0|user_input_translator|Add0~5\ & VCC)) # (!\filScr0|y\(5) & (!\vga_u0|user_input_translator|Add0~5\)))) # (!\filScr0|y\(3) & ((\filScr0|y\(5) & 
-- (!\vga_u0|user_input_translator|Add0~5\)) # (!\filScr0|y\(5) & ((\vga_u0|user_input_translator|Add0~5\) # (GND)))))
-- \vga_u0|user_input_translator|Add0~7\ = CARRY((\filScr0|y\(3) & (!\filScr0|y\(5) & !\vga_u0|user_input_translator|Add0~5\)) # (!\filScr0|y\(3) & ((!\vga_u0|user_input_translator|Add0~5\) # (!\filScr0|y\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filScr0|y\(3),
	datab => \filScr0|y\(5),
	datad => VCC,
	cin => \vga_u0|user_input_translator|Add0~5\,
	combout => \vga_u0|user_input_translator|Add0~6_combout\,
	cout => \vga_u0|user_input_translator|Add0~7\);

-- Location: LCCOMB_X73_Y25_N12
\vga_u0|user_input_translator|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|Add0~8_combout\ = ((\filScr0|y\(4) $ (\filScr0|y\(6) $ (!\vga_u0|user_input_translator|Add0~7\)))) # (GND)
-- \vga_u0|user_input_translator|Add0~9\ = CARRY((\filScr0|y\(4) & ((\filScr0|y\(6)) # (!\vga_u0|user_input_translator|Add0~7\))) # (!\filScr0|y\(4) & (\filScr0|y\(6) & !\vga_u0|user_input_translator|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filScr0|y\(4),
	datab => \filScr0|y\(6),
	datad => VCC,
	cin => \vga_u0|user_input_translator|Add0~7\,
	combout => \vga_u0|user_input_translator|Add0~8_combout\,
	cout => \vga_u0|user_input_translator|Add0~9\);

-- Location: LCCOMB_X73_Y25_N14
\vga_u0|user_input_translator|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|Add0~10_combout\ = (\filScr0|y\(5) & (!\vga_u0|user_input_translator|Add0~9\)) # (!\filScr0|y\(5) & ((\vga_u0|user_input_translator|Add0~9\) # (GND)))
-- \vga_u0|user_input_translator|Add0~11\ = CARRY((!\vga_u0|user_input_translator|Add0~9\) # (!\filScr0|y\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \filScr0|y\(5),
	datad => VCC,
	cin => \vga_u0|user_input_translator|Add0~9\,
	combout => \vga_u0|user_input_translator|Add0~10_combout\,
	cout => \vga_u0|user_input_translator|Add0~11\);

-- Location: LCCOMB_X73_Y25_N16
\vga_u0|user_input_translator|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|Add0~12_combout\ = (\filScr0|y\(6) & (\vga_u0|user_input_translator|Add0~11\ $ (GND))) # (!\filScr0|y\(6) & (!\vga_u0|user_input_translator|Add0~11\ & VCC))
-- \vga_u0|user_input_translator|Add0~13\ = CARRY((\filScr0|y\(6) & !\vga_u0|user_input_translator|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \filScr0|y\(6),
	datad => VCC,
	cin => \vga_u0|user_input_translator|Add0~11\,
	combout => \vga_u0|user_input_translator|Add0~12_combout\,
	cout => \vga_u0|user_input_translator|Add0~13\);

-- Location: LCCOMB_X72_Y25_N8
\vga_u0|user_input_translator|mem_address[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|mem_address[5]~0_combout\ = (\filScr0|x\(5) & (\filScr0|y\(0) $ (VCC))) # (!\filScr0|x\(5) & (\filScr0|y\(0) & VCC))
-- \vga_u0|user_input_translator|mem_address[5]~1\ = CARRY((\filScr0|x\(5) & \filScr0|y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filScr0|x\(5),
	datab => \filScr0|y\(0),
	datad => VCC,
	combout => \vga_u0|user_input_translator|mem_address[5]~0_combout\,
	cout => \vga_u0|user_input_translator|mem_address[5]~1\);

-- Location: LCCOMB_X72_Y25_N10
\vga_u0|user_input_translator|mem_address[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|mem_address[6]~2_combout\ = (\filScr0|x\(6) & ((\filScr0|y\(1) & (\vga_u0|user_input_translator|mem_address[5]~1\ & VCC)) # (!\filScr0|y\(1) & (!\vga_u0|user_input_translator|mem_address[5]~1\)))) # (!\filScr0|x\(6) & 
-- ((\filScr0|y\(1) & (!\vga_u0|user_input_translator|mem_address[5]~1\)) # (!\filScr0|y\(1) & ((\vga_u0|user_input_translator|mem_address[5]~1\) # (GND)))))
-- \vga_u0|user_input_translator|mem_address[6]~3\ = CARRY((\filScr0|x\(6) & (!\filScr0|y\(1) & !\vga_u0|user_input_translator|mem_address[5]~1\)) # (!\filScr0|x\(6) & ((!\vga_u0|user_input_translator|mem_address[5]~1\) # (!\filScr0|y\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filScr0|x\(6),
	datab => \filScr0|y\(1),
	datad => VCC,
	cin => \vga_u0|user_input_translator|mem_address[5]~1\,
	combout => \vga_u0|user_input_translator|mem_address[6]~2_combout\,
	cout => \vga_u0|user_input_translator|mem_address[6]~3\);

-- Location: LCCOMB_X72_Y25_N12
\vga_u0|user_input_translator|mem_address[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|mem_address[7]~4_combout\ = ((\filScr0|x\(7) $ (\vga_u0|user_input_translator|Add0~0_combout\ $ (!\vga_u0|user_input_translator|mem_address[6]~3\)))) # (GND)
-- \vga_u0|user_input_translator|mem_address[7]~5\ = CARRY((\filScr0|x\(7) & ((\vga_u0|user_input_translator|Add0~0_combout\) # (!\vga_u0|user_input_translator|mem_address[6]~3\))) # (!\filScr0|x\(7) & (\vga_u0|user_input_translator|Add0~0_combout\ & 
-- !\vga_u0|user_input_translator|mem_address[6]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filScr0|x\(7),
	datab => \vga_u0|user_input_translator|Add0~0_combout\,
	datad => VCC,
	cin => \vga_u0|user_input_translator|mem_address[6]~3\,
	combout => \vga_u0|user_input_translator|mem_address[7]~4_combout\,
	cout => \vga_u0|user_input_translator|mem_address[7]~5\);

-- Location: LCCOMB_X72_Y25_N14
\vga_u0|user_input_translator|mem_address[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|mem_address[8]~6_combout\ = (\vga_u0|user_input_translator|Add0~2_combout\ & (!\vga_u0|user_input_translator|mem_address[7]~5\)) # (!\vga_u0|user_input_translator|Add0~2_combout\ & 
-- ((\vga_u0|user_input_translator|mem_address[7]~5\) # (GND)))
-- \vga_u0|user_input_translator|mem_address[8]~7\ = CARRY((!\vga_u0|user_input_translator|mem_address[7]~5\) # (!\vga_u0|user_input_translator|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|user_input_translator|Add0~2_combout\,
	datad => VCC,
	cin => \vga_u0|user_input_translator|mem_address[7]~5\,
	combout => \vga_u0|user_input_translator|mem_address[8]~6_combout\,
	cout => \vga_u0|user_input_translator|mem_address[8]~7\);

-- Location: LCCOMB_X72_Y25_N16
\vga_u0|user_input_translator|mem_address[9]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|mem_address[9]~8_combout\ = (\vga_u0|user_input_translator|Add0~4_combout\ & (\vga_u0|user_input_translator|mem_address[8]~7\ $ (GND))) # (!\vga_u0|user_input_translator|Add0~4_combout\ & 
-- (!\vga_u0|user_input_translator|mem_address[8]~7\ & VCC))
-- \vga_u0|user_input_translator|mem_address[9]~9\ = CARRY((\vga_u0|user_input_translator|Add0~4_combout\ & !\vga_u0|user_input_translator|mem_address[8]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|user_input_translator|Add0~4_combout\,
	datad => VCC,
	cin => \vga_u0|user_input_translator|mem_address[8]~7\,
	combout => \vga_u0|user_input_translator|mem_address[9]~8_combout\,
	cout => \vga_u0|user_input_translator|mem_address[9]~9\);

-- Location: LCCOMB_X72_Y25_N18
\vga_u0|user_input_translator|mem_address[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|mem_address[10]~10_combout\ = (\vga_u0|user_input_translator|Add0~6_combout\ & (!\vga_u0|user_input_translator|mem_address[9]~9\)) # (!\vga_u0|user_input_translator|Add0~6_combout\ & 
-- ((\vga_u0|user_input_translator|mem_address[9]~9\) # (GND)))
-- \vga_u0|user_input_translator|mem_address[10]~11\ = CARRY((!\vga_u0|user_input_translator|mem_address[9]~9\) # (!\vga_u0|user_input_translator|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|user_input_translator|Add0~6_combout\,
	datad => VCC,
	cin => \vga_u0|user_input_translator|mem_address[9]~9\,
	combout => \vga_u0|user_input_translator|mem_address[10]~10_combout\,
	cout => \vga_u0|user_input_translator|mem_address[10]~11\);

-- Location: LCCOMB_X72_Y25_N20
\vga_u0|user_input_translator|mem_address[11]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|mem_address[11]~12_combout\ = (\vga_u0|user_input_translator|Add0~8_combout\ & (\vga_u0|user_input_translator|mem_address[10]~11\ $ (GND))) # (!\vga_u0|user_input_translator|Add0~8_combout\ & 
-- (!\vga_u0|user_input_translator|mem_address[10]~11\ & VCC))
-- \vga_u0|user_input_translator|mem_address[11]~13\ = CARRY((\vga_u0|user_input_translator|Add0~8_combout\ & !\vga_u0|user_input_translator|mem_address[10]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|user_input_translator|Add0~8_combout\,
	datad => VCC,
	cin => \vga_u0|user_input_translator|mem_address[10]~11\,
	combout => \vga_u0|user_input_translator|mem_address[11]~12_combout\,
	cout => \vga_u0|user_input_translator|mem_address[11]~13\);

-- Location: LCCOMB_X72_Y25_N22
\vga_u0|user_input_translator|mem_address[12]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|mem_address[12]~14_combout\ = (\vga_u0|user_input_translator|Add0~10_combout\ & (!\vga_u0|user_input_translator|mem_address[11]~13\)) # (!\vga_u0|user_input_translator|Add0~10_combout\ & 
-- ((\vga_u0|user_input_translator|mem_address[11]~13\) # (GND)))
-- \vga_u0|user_input_translator|mem_address[12]~15\ = CARRY((!\vga_u0|user_input_translator|mem_address[11]~13\) # (!\vga_u0|user_input_translator|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|user_input_translator|Add0~10_combout\,
	datad => VCC,
	cin => \vga_u0|user_input_translator|mem_address[11]~13\,
	combout => \vga_u0|user_input_translator|mem_address[12]~14_combout\,
	cout => \vga_u0|user_input_translator|mem_address[12]~15\);

-- Location: LCCOMB_X72_Y25_N24
\vga_u0|user_input_translator|mem_address[13]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|mem_address[13]~16_combout\ = (\vga_u0|user_input_translator|Add0~12_combout\ & (\vga_u0|user_input_translator|mem_address[12]~15\ $ (GND))) # (!\vga_u0|user_input_translator|Add0~12_combout\ & 
-- (!\vga_u0|user_input_translator|mem_address[12]~15\ & VCC))
-- \vga_u0|user_input_translator|mem_address[13]~17\ = CARRY((\vga_u0|user_input_translator|Add0~12_combout\ & !\vga_u0|user_input_translator|mem_address[12]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|user_input_translator|Add0~12_combout\,
	datad => VCC,
	cin => \vga_u0|user_input_translator|mem_address[12]~15\,
	combout => \vga_u0|user_input_translator|mem_address[13]~16_combout\,
	cout => \vga_u0|user_input_translator|mem_address[13]~17\);

-- Location: LCCOMB_X73_Y25_N18
\vga_u0|user_input_translator|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|Add0~14_combout\ = \vga_u0|user_input_translator|Add0~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \vga_u0|user_input_translator|Add0~13\,
	combout => \vga_u0|user_input_translator|Add0~14_combout\);

-- Location: LCCOMB_X72_Y25_N26
\vga_u0|user_input_translator|mem_address[14]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|mem_address[14]~18_combout\ = \vga_u0|user_input_translator|mem_address[13]~17\ $ (\vga_u0|user_input_translator|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \vga_u0|user_input_translator|Add0~14_combout\,
	cin => \vga_u0|user_input_translator|mem_address[13]~17\,
	combout => \vga_u0|user_input_translator|mem_address[14]~18_combout\);

-- Location: LCCOMB_X73_Y25_N26
\vga_u0|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|LessThan3~0_combout\ = (((!\filScr0|y\(6)) # (!\filScr0|y\(4))) # (!\filScr0|y\(5))) # (!\filScr0|y\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filScr0|y\(3),
	datab => \filScr0|y\(5),
	datac => \filScr0|y\(4),
	datad => \filScr0|y\(6),
	combout => \vga_u0|LessThan3~0_combout\);

-- Location: LCCOMB_X72_Y25_N6
\vga_u0|VideoMemory|auto_generated|decode2|w_anode105w[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|VideoMemory|auto_generated|decode2|w_anode105w\(2) = (\vga_u0|writeEn~0_combout\ & (!\vga_u0|user_input_translator|mem_address[13]~16_combout\ & (!\vga_u0|user_input_translator|mem_address[14]~18_combout\ & \vga_u0|LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|writeEn~0_combout\,
	datab => \vga_u0|user_input_translator|mem_address[13]~16_combout\,
	datac => \vga_u0|user_input_translator|mem_address[14]~18_combout\,
	datad => \vga_u0|LessThan3~0_combout\,
	combout => \vga_u0|VideoMemory|auto_generated|decode2|w_anode105w\(2));

-- Location: LCCOMB_X66_Y25_N26
\vga_u0|VideoMemory|auto_generated|rden_decode_b|w_anode143w[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|VideoMemory|auto_generated|rden_decode_b|w_anode143w\(2) = (!\vga_u0|controller|controller_translator|mem_address[13]~16_combout\ & !\vga_u0|controller|controller_translator|mem_address[14]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|controller_translator|mem_address[13]~16_combout\,
	datad => \vga_u0|controller|controller_translator|mem_address[14]~18_combout\,
	combout => \vga_u0|VideoMemory|auto_generated|rden_decode_b|w_anode143w\(2));

-- Location: M9K_X64_Y26_N0
\vga_u0|VideoMemory|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "vga_adapter:vga_u0|altsyncram:VideoMemory|altsyncram_9hg1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \vga_u0|VideoMemory|auto_generated|decode2|w_anode105w\(2),
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	ena0 => \vga_u0|VideoMemory|auto_generated|decode2|w_anode105w\(2),
	ena1 => \vga_u0|VideoMemory|auto_generated|rden_decode_b|w_anode143w\(2),
	portadatain => \vga_u0|VideoMemory|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \vga_u0|VideoMemory|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \vga_u0|VideoMemory|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \vga_u0|VideoMemory|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X72_Y25_N28
\vga_u0|VideoMemory|auto_generated|decode2|w_anode118w[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|VideoMemory|auto_generated|decode2|w_anode118w\(2) = (\vga_u0|writeEn~0_combout\ & (\vga_u0|user_input_translator|mem_address[13]~16_combout\ & (!\vga_u0|user_input_translator|mem_address[14]~18_combout\ & \vga_u0|LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|writeEn~0_combout\,
	datab => \vga_u0|user_input_translator|mem_address[13]~16_combout\,
	datac => \vga_u0|user_input_translator|mem_address[14]~18_combout\,
	datad => \vga_u0|LessThan3~0_combout\,
	combout => \vga_u0|VideoMemory|auto_generated|decode2|w_anode118w\(2));

-- Location: LCCOMB_X66_Y25_N30
\vga_u0|VideoMemory|auto_generated|rden_decode_b|w_anode157w[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|VideoMemory|auto_generated|rden_decode_b|w_anode157w\(2) = (\vga_u0|controller|controller_translator|mem_address[13]~16_combout\ & !\vga_u0|controller|controller_translator|mem_address[14]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|controller_translator|mem_address[13]~16_combout\,
	datad => \vga_u0|controller|controller_translator|mem_address[14]~18_combout\,
	combout => \vga_u0|VideoMemory|auto_generated|rden_decode_b|w_anode157w\(2));

-- Location: M9K_X78_Y27_N0
\vga_u0|VideoMemory|auto_generated|ram_block1a5\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "vga_adapter:vga_u0|altsyncram:VideoMemory|altsyncram_9hg1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \vga_u0|VideoMemory|auto_generated|decode2|w_anode118w\(2),
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	ena0 => \vga_u0|VideoMemory|auto_generated|decode2|w_anode118w\(2),
	ena1 => \vga_u0|VideoMemory|auto_generated|rden_decode_b|w_anode157w\(2),
	portadatain => \vga_u0|VideoMemory|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \vga_u0|VideoMemory|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \vga_u0|VideoMemory|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \vga_u0|VideoMemory|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

-- Location: FF_X66_Y25_N23
\vga_u0|VideoMemory|auto_generated|address_reg_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	d => \vga_u0|controller|controller_translator|mem_address[13]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_u0|VideoMemory|auto_generated|address_reg_b\(0));

-- Location: FF_X66_Y25_N31
\vga_u0|VideoMemory|auto_generated|out_address_reg_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \vga_u0|VideoMemory|auto_generated|address_reg_b\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_u0|VideoMemory|auto_generated|out_address_reg_b\(0));

-- Location: LCCOMB_X65_Y25_N6
\vga_u0|controller|VGA_R[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|VGA_R[0]~0_combout\ = (!\vga_u0|VideoMemory|auto_generated|out_address_reg_b\(1) & ((\vga_u0|VideoMemory|auto_generated|out_address_reg_b\(0) & ((\vga_u0|VideoMemory|auto_generated|ram_block1a5~portbdataout\))) # 
-- (!\vga_u0|VideoMemory|auto_generated|out_address_reg_b\(0) & (\vga_u0|VideoMemory|auto_generated|ram_block1a2~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|VideoMemory|auto_generated|out_address_reg_b\(1),
	datab => \vga_u0|VideoMemory|auto_generated|ram_block1a2~portbdataout\,
	datac => \vga_u0|VideoMemory|auto_generated|ram_block1a5~portbdataout\,
	datad => \vga_u0|VideoMemory|auto_generated|out_address_reg_b\(0),
	combout => \vga_u0|controller|VGA_R[0]~0_combout\);

-- Location: LCCOMB_X67_Y25_N2
\vga_u0|controller|VGA_VS1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|VGA_VS1~0_combout\ = (\vga_u0|controller|yCounter\(7) & (\vga_u0|controller|yCounter\(6) & (\vga_u0|controller|yCounter\(8) & \vga_u0|controller|yCounter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter\(7),
	datab => \vga_u0|controller|yCounter\(6),
	datac => \vga_u0|controller|yCounter\(8),
	datad => \vga_u0|controller|yCounter\(5),
	combout => \vga_u0|controller|VGA_VS1~0_combout\);

-- Location: LCCOMB_X65_Y25_N24
\vga_u0|controller|on_screen~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|on_screen~0_combout\ = (!\vga_u0|controller|xCounter\(2) & (!\vga_u0|controller|xCounter\(3) & (!\vga_u0|controller|xCounter\(5) & !\vga_u0|controller|xCounter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|xCounter\(2),
	datab => \vga_u0|controller|xCounter\(3),
	datac => \vga_u0|controller|xCounter\(5),
	datad => \vga_u0|controller|xCounter\(6),
	combout => \vga_u0|controller|on_screen~0_combout\);

-- Location: LCCOMB_X65_Y25_N18
\vga_u0|controller|on_screen~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|on_screen~1_combout\ = (!\vga_u0|controller|xCounter\(1) & (\vga_u0|controller|on_screen~0_combout\ & (!\vga_u0|controller|xCounter\(8) & !\vga_u0|controller|xCounter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|xCounter\(1),
	datab => \vga_u0|controller|on_screen~0_combout\,
	datac => \vga_u0|controller|xCounter\(8),
	datad => \vga_u0|controller|xCounter\(4),
	combout => \vga_u0|controller|on_screen~1_combout\);

-- Location: LCCOMB_X66_Y25_N28
\vga_u0|controller|on_screen~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|on_screen~2_combout\ = (\vga_u0|controller|xCounter\(9) & ((\vga_u0|controller|xCounter\(7)) # (\vga_u0|controller|xCounter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|xCounter\(9),
	datac => \vga_u0|controller|xCounter\(7),
	datad => \vga_u0|controller|xCounter\(8),
	combout => \vga_u0|controller|on_screen~2_combout\);

-- Location: LCCOMB_X65_Y25_N12
\vga_u0|controller|on_screen~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|on_screen~3_combout\ = (!\vga_u0|controller|VGA_VS1~0_combout\ & (!\vga_u0|controller|yCounter\(9) & ((\vga_u0|controller|on_screen~1_combout\) # (!\vga_u0|controller|on_screen~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|VGA_VS1~0_combout\,
	datab => \vga_u0|controller|on_screen~1_combout\,
	datac => \vga_u0|controller|yCounter\(9),
	datad => \vga_u0|controller|on_screen~2_combout\,
	combout => \vga_u0|controller|on_screen~3_combout\);

-- Location: LCCOMB_X72_Y25_N4
\vga_u0|VideoMemory|auto_generated|decode2|w_anode126w[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|VideoMemory|auto_generated|decode2|w_anode126w\(2) = (\vga_u0|writeEn~0_combout\ & (!\vga_u0|user_input_translator|mem_address[13]~16_combout\ & (\vga_u0|user_input_translator|mem_address[14]~18_combout\ & \vga_u0|LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|writeEn~0_combout\,
	datab => \vga_u0|user_input_translator|mem_address[13]~16_combout\,
	datac => \vga_u0|user_input_translator|mem_address[14]~18_combout\,
	datad => \vga_u0|LessThan3~0_combout\,
	combout => \vga_u0|VideoMemory|auto_generated|decode2|w_anode126w\(2));

-- Location: LCCOMB_X66_Y25_N2
\vga_u0|VideoMemory|auto_generated|rden_decode_b|w_anode166w[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|VideoMemory|auto_generated|rden_decode_b|w_anode166w\(2) = (!\vga_u0|controller|controller_translator|mem_address[13]~16_combout\ & \vga_u0|controller|controller_translator|mem_address[14]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|controller_translator|mem_address[13]~16_combout\,
	datad => \vga_u0|controller|controller_translator|mem_address[14]~18_combout\,
	combout => \vga_u0|VideoMemory|auto_generated|rden_decode_b|w_anode166w\(2));

-- Location: M9K_X64_Y25_N0
\vga_u0|VideoMemory|auto_generated|ram_block1a7\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "vga_adapter:vga_u0|altsyncram:VideoMemory|altsyncram_9hg1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \vga_u0|VideoMemory|auto_generated|decode2|w_anode126w\(2),
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	ena0 => \vga_u0|VideoMemory|auto_generated|decode2|w_anode126w\(2),
	ena1 => \vga_u0|VideoMemory|auto_generated|rden_decode_b|w_anode166w\(2),
	portadatain => \vga_u0|VideoMemory|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \vga_u0|VideoMemory|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \vga_u0|VideoMemory|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \vga_u0|VideoMemory|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X65_Y25_N0
\vga_u0|controller|VGA_R[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|VGA_R[0]~1_combout\ = (\vga_u0|controller|on_screen~3_combout\ & ((\vga_u0|controller|VGA_R[0]~0_combout\) # ((\vga_u0|VideoMemory|auto_generated|ram_block1a8\ & \vga_u0|VideoMemory|auto_generated|out_address_reg_b\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|VGA_R[0]~0_combout\,
	datab => \vga_u0|controller|on_screen~3_combout\,
	datac => \vga_u0|VideoMemory|auto_generated|ram_block1a8\,
	datad => \vga_u0|VideoMemory|auto_generated|out_address_reg_b\(1),
	combout => \vga_u0|controller|VGA_R[0]~1_combout\);

-- Location: M9K_X64_Y24_N0
\vga_u0|VideoMemory|auto_generated|ram_block1a1\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "vga_adapter:vga_u0|altsyncram:VideoMemory|altsyncram_9hg1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \vga_u0|VideoMemory|auto_generated|decode2|w_anode105w\(2),
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	ena0 => \vga_u0|VideoMemory|auto_generated|decode2|w_anode105w\(2),
	ena1 => \vga_u0|VideoMemory|auto_generated|rden_decode_b|w_anode143w\(2),
	portadatain => \vga_u0|VideoMemory|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \vga_u0|VideoMemory|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \vga_u0|VideoMemory|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \vga_u0|VideoMemory|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

-- Location: M9K_X78_Y26_N0
\vga_u0|VideoMemory|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "vga_adapter:vga_u0|altsyncram:VideoMemory|altsyncram_9hg1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \vga_u0|VideoMemory|auto_generated|decode2|w_anode118w\(2),
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	ena0 => \vga_u0|VideoMemory|auto_generated|decode2|w_anode118w\(2),
	ena1 => \vga_u0|VideoMemory|auto_generated|rden_decode_b|w_anode157w\(2),
	portadatain => \vga_u0|VideoMemory|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \vga_u0|VideoMemory|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \vga_u0|VideoMemory|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \vga_u0|VideoMemory|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X65_Y25_N26
\vga_u0|controller|VGA_G[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|VGA_G[0]~0_combout\ = (!\vga_u0|VideoMemory|auto_generated|out_address_reg_b\(1) & ((\vga_u0|VideoMemory|auto_generated|out_address_reg_b\(0) & ((\vga_u0|VideoMemory|auto_generated|ram_block1a4~portbdataout\))) # 
-- (!\vga_u0|VideoMemory|auto_generated|out_address_reg_b\(0) & (\vga_u0|VideoMemory|auto_generated|ram_block1a1~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|VideoMemory|auto_generated|ram_block1a1~portbdataout\,
	datab => \vga_u0|VideoMemory|auto_generated|out_address_reg_b\(0),
	datac => \vga_u0|VideoMemory|auto_generated|ram_block1a4~portbdataout\,
	datad => \vga_u0|VideoMemory|auto_generated|out_address_reg_b\(1),
	combout => \vga_u0|controller|VGA_G[0]~0_combout\);

-- Location: LCCOMB_X65_Y25_N4
\vga_u0|controller|VGA_G[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|VGA_G[0]~1_combout\ = (\vga_u0|controller|on_screen~3_combout\ & ((\vga_u0|controller|VGA_G[0]~0_combout\) # ((\vga_u0|VideoMemory|auto_generated|out_address_reg_b\(1) & \vga_u0|VideoMemory|auto_generated|ram_block1a7~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|VideoMemory|auto_generated|out_address_reg_b\(1),
	datab => \vga_u0|controller|on_screen~3_combout\,
	datac => \vga_u0|controller|VGA_G[0]~0_combout\,
	datad => \vga_u0|VideoMemory|auto_generated|ram_block1a7~portbdataout\,
	combout => \vga_u0|controller|VGA_G[0]~1_combout\);

-- Location: M9K_X64_Y27_N0
\vga_u0|VideoMemory|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "vga_adapter:vga_u0|altsyncram:VideoMemory|altsyncram_9hg1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \vga_u0|VideoMemory|auto_generated|decode2|w_anode105w\(2),
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	ena0 => \vga_u0|VideoMemory|auto_generated|decode2|w_anode105w\(2),
	ena1 => \vga_u0|VideoMemory|auto_generated|rden_decode_b|w_anode143w\(2),
	portadatain => \vga_u0|VideoMemory|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \vga_u0|VideoMemory|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \vga_u0|VideoMemory|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \vga_u0|VideoMemory|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: M9K_X78_Y24_N0
\vga_u0|VideoMemory|auto_generated|ram_block1a3\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "vga_adapter:vga_u0|altsyncram:VideoMemory|altsyncram_9hg1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \vga_u0|VideoMemory|auto_generated|decode2|w_anode118w\(2),
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	ena0 => \vga_u0|VideoMemory|auto_generated|decode2|w_anode118w\(2),
	ena1 => \vga_u0|VideoMemory|auto_generated|rden_decode_b|w_anode157w\(2),
	portadatain => \vga_u0|VideoMemory|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \vga_u0|VideoMemory|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \vga_u0|VideoMemory|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \vga_u0|VideoMemory|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X65_Y25_N22
\vga_u0|controller|VGA_B[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|VGA_B[0]~0_combout\ = (!\vga_u0|VideoMemory|auto_generated|out_address_reg_b\(1) & ((\vga_u0|VideoMemory|auto_generated|out_address_reg_b\(0) & ((\vga_u0|VideoMemory|auto_generated|ram_block1a3~portbdataout\))) # 
-- (!\vga_u0|VideoMemory|auto_generated|out_address_reg_b\(0) & (\vga_u0|VideoMemory|auto_generated|ram_block1a0~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|VideoMemory|auto_generated|out_address_reg_b\(1),
	datab => \vga_u0|VideoMemory|auto_generated|out_address_reg_b\(0),
	datac => \vga_u0|VideoMemory|auto_generated|ram_block1a0~portbdataout\,
	datad => \vga_u0|VideoMemory|auto_generated|ram_block1a3~portbdataout\,
	combout => \vga_u0|controller|VGA_B[0]~0_combout\);

-- Location: M9K_X78_Y25_N0
\vga_u0|VideoMemory|auto_generated|ram_block1a6\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "vga_adapter:vga_u0|altsyncram:VideoMemory|altsyncram_9hg1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \vga_u0|VideoMemory|auto_generated|decode2|w_anode126w\(2),
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	ena0 => \vga_u0|VideoMemory|auto_generated|decode2|w_anode126w\(2),
	ena1 => \vga_u0|VideoMemory|auto_generated|rden_decode_b|w_anode166w\(2),
	portadatain => \vga_u0|VideoMemory|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \vga_u0|VideoMemory|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \vga_u0|VideoMemory|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \vga_u0|VideoMemory|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X65_Y25_N8
\vga_u0|controller|VGA_B[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|VGA_B[0]~1_combout\ = (\vga_u0|controller|on_screen~3_combout\ & ((\vga_u0|controller|VGA_B[0]~0_combout\) # ((\vga_u0|VideoMemory|auto_generated|ram_block1a6~portbdataout\ & \vga_u0|VideoMemory|auto_generated|out_address_reg_b\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|VGA_B[0]~0_combout\,
	datab => \vga_u0|controller|on_screen~3_combout\,
	datac => \vga_u0|VideoMemory|auto_generated|ram_block1a6~portbdataout\,
	datad => \vga_u0|VideoMemory|auto_generated|out_address_reg_b\(1),
	combout => \vga_u0|controller|VGA_B[0]~1_combout\);

-- Location: LCCOMB_X65_Y25_N10
\vga_u0|controller|VGA_HS1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|VGA_HS1~0_combout\ = (\vga_u0|controller|xCounter\(3)) # ((\vga_u0|controller|xCounter\(2)) # ((\vga_u0|controller|xCounter\(1) & \vga_u0|controller|xCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|xCounter\(1),
	datab => \vga_u0|controller|xCounter\(3),
	datac => \vga_u0|controller|xCounter\(2),
	datad => \vga_u0|controller|xCounter\(0),
	combout => \vga_u0|controller|VGA_HS1~0_combout\);

-- Location: LCCOMB_X65_Y25_N28
\vga_u0|controller|VGA_HS1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|VGA_HS1~1_combout\ = (\vga_u0|controller|xCounter\(6) & (\vga_u0|controller|VGA_HS1~0_combout\ & (\vga_u0|controller|xCounter\(5) & \vga_u0|controller|xCounter\(4)))) # (!\vga_u0|controller|xCounter\(6) & 
-- (!\vga_u0|controller|xCounter\(5) & ((!\vga_u0|controller|xCounter\(4)) # (!\vga_u0|controller|VGA_HS1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|VGA_HS1~0_combout\,
	datab => \vga_u0|controller|xCounter\(6),
	datac => \vga_u0|controller|xCounter\(5),
	datad => \vga_u0|controller|xCounter\(4),
	combout => \vga_u0|controller|VGA_HS1~1_combout\);

-- Location: LCCOMB_X66_Y25_N0
\vga_u0|controller|VGA_HS1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|VGA_HS1~2_combout\ = ((\vga_u0|controller|VGA_HS1~1_combout\) # ((\vga_u0|controller|xCounter\(8)) # (!\vga_u0|controller|xCounter\(7)))) # (!\vga_u0|controller|xCounter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|xCounter\(9),
	datab => \vga_u0|controller|VGA_HS1~1_combout\,
	datac => \vga_u0|controller|xCounter\(7),
	datad => \vga_u0|controller|xCounter\(8),
	combout => \vga_u0|controller|VGA_HS1~2_combout\);

-- Location: FF_X66_Y25_N1
\vga_u0|controller|VGA_HS1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	d => \vga_u0|controller|VGA_HS1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_u0|controller|VGA_HS1~q\);

-- Location: FF_X42_Y62_N1
\vga_u0|controller|VGA_HS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \vga_u0|controller|VGA_HS1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_u0|controller|VGA_HS~q\);

-- Location: LCCOMB_X66_Y25_N4
\vga_u0|controller|VGA_VS1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|VGA_VS1~1_combout\ = (\vga_u0|controller|yCounter\(9)) # (((\vga_u0|controller|yCounter\(4)) # (!\vga_u0|controller|yCounter\(2))) # (!\vga_u0|controller|yCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter\(9),
	datab => \vga_u0|controller|yCounter\(3),
	datac => \vga_u0|controller|yCounter\(2),
	datad => \vga_u0|controller|yCounter\(4),
	combout => \vga_u0|controller|VGA_VS1~1_combout\);

-- Location: LCCOMB_X67_Y25_N30
\vga_u0|controller|VGA_VS1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|VGA_VS1~2_combout\ = (\vga_u0|controller|VGA_VS1~1_combout\) # ((\vga_u0|controller|yCounter\(0) $ (!\vga_u0|controller|yCounter\(1))) # (!\vga_u0|controller|VGA_VS1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|VGA_VS1~1_combout\,
	datab => \vga_u0|controller|yCounter\(0),
	datac => \vga_u0|controller|VGA_VS1~0_combout\,
	datad => \vga_u0|controller|yCounter\(1),
	combout => \vga_u0|controller|VGA_VS1~2_combout\);

-- Location: FF_X67_Y25_N31
\vga_u0|controller|VGA_VS1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	d => \vga_u0|controller|VGA_VS1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_u0|controller|VGA_VS1~q\);

-- Location: FF_X67_Y29_N25
\vga_u0|controller|VGA_VS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \vga_u0|controller|VGA_VS1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_u0|controller|VGA_VS~q\);

-- Location: LCCOMB_X65_Y25_N16
\vga_u0|controller|VGA_BLANK1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|VGA_BLANK1~0_combout\ = (!\vga_u0|controller|on_screen~2_combout\ & (!\vga_u0|controller|yCounter\(9) & !\vga_u0|controller|VGA_VS1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|on_screen~2_combout\,
	datac => \vga_u0|controller|yCounter\(9),
	datad => \vga_u0|controller|VGA_VS1~0_combout\,
	combout => \vga_u0|controller|VGA_BLANK1~0_combout\);

-- Location: FF_X65_Y25_N17
\vga_u0|controller|VGA_BLANK1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	d => \vga_u0|controller|VGA_BLANK1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_u0|controller|VGA_BLANK1~q\);

-- Location: LCCOMB_X65_Y25_N2
\vga_u0|controller|VGA_BLANK~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_u0|controller|VGA_BLANK~feeder_combout\ = \vga_u0|controller|VGA_BLANK1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \vga_u0|controller|VGA_BLANK1~q\,
	combout => \vga_u0|controller|VGA_BLANK~feeder_combout\);

-- Location: FF_X65_Y25_N3
\vga_u0|controller|VGA_BLANK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	d => \vga_u0|controller|VGA_BLANK~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_u0|controller|VGA_BLANK~q\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);
END structure;


