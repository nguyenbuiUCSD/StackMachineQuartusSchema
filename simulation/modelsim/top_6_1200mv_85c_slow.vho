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
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Full Version"

-- DATE "06/13/2018 19:03:45"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
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

ENTITY 	top IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	done : BUFFER std_logic
	);
END top;

-- Design Ports Information
-- done	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top IS
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
SIGNAL ww_done : std_logic;
SIGNAL \dmem1|guts_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \dmem1|guts_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dmem1|guts_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dmem1|guts_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \done~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \pc1|PC[0]~8_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \imem1|WideOr4~0_combout\ : std_logic;
SIGNAL \pc1|PC[4]~17\ : std_logic;
SIGNAL \pc1|PC[5]~18_combout\ : std_logic;
SIGNAL \pc1|PC[6]~21\ : std_logic;
SIGNAL \pc1|PC[7]~22_combout\ : std_logic;
SIGNAL \imem1|WideOr0~14_combout\ : std_logic;
SIGNAL \imem1|WideOr0~4_combout\ : std_logic;
SIGNAL \imem1|WideOr0~0_combout\ : std_logic;
SIGNAL \imem1|WideOr0~1_combout\ : std_logic;
SIGNAL \imem1|WideOr0~2_combout\ : std_logic;
SIGNAL \imem1|WideOr0~3_combout\ : std_logic;
SIGNAL \imem1|WideOr0~5_combout\ : std_logic;
SIGNAL \imem1|WideOr0~10_combout\ : std_logic;
SIGNAL \imem1|WideOr0~6_combout\ : std_logic;
SIGNAL \imem1|WideOr0~8_combout\ : std_logic;
SIGNAL \imem1|WideOr0~7_combout\ : std_logic;
SIGNAL \imem1|WideOr0~9_combout\ : std_logic;
SIGNAL \imem1|WideOr0~11_combout\ : std_logic;
SIGNAL \imem1|WideOr0~12_combout\ : std_logic;
SIGNAL \imem1|WideOr0~15_combout\ : std_logic;
SIGNAL \imem1|WideOr4~2_combout\ : std_logic;
SIGNAL \imem1|WideOr2~2_combout\ : std_logic;
SIGNAL \imem1|WideOr2~3_combout\ : std_logic;
SIGNAL \imem1|WideOr2~0_combout\ : std_logic;
SIGNAL \imem1|WideOr7~2_combout\ : std_logic;
SIGNAL \imem1|WideOr2~1_combout\ : std_logic;
SIGNAL \imem1|WideOr3~9_combout\ : std_logic;
SIGNAL \imem1|WideOr3~6_combout\ : std_logic;
SIGNAL \imem1|WideOr3~7_combout\ : std_logic;
SIGNAL \imem1|WideOr3~8_combout\ : std_logic;
SIGNAL \imem1|WideOr3~10_combout\ : std_logic;
SIGNAL \imem1|WideOr7~3_combout\ : std_logic;
SIGNAL \imem1|WideOr3~4_combout\ : std_logic;
SIGNAL \imem1|WideOr3~1_combout\ : std_logic;
SIGNAL \imem1|WideOr3~2_combout\ : std_logic;
SIGNAL \imem1|WideOr3~0_combout\ : std_logic;
SIGNAL \imem1|WideOr3~3_combout\ : std_logic;
SIGNAL \imem1|WideOr3~5_combout\ : std_logic;
SIGNAL \imem1|WideOr3~11_combout\ : std_logic;
SIGNAL \dc1|tomux2~0_combout\ : std_logic;
SIGNAL \imem1|WideOr8~11_combout\ : std_logic;
SIGNAL \imem1|WideOr8~4_combout\ : std_logic;
SIGNAL \imem1|WideOr8~8_combout\ : std_logic;
SIGNAL \imem1|WideOr8~5_combout\ : std_logic;
SIGNAL \imem1|WideOr8~6_combout\ : std_logic;
SIGNAL \imem1|WideOr8~7_combout\ : std_logic;
SIGNAL \imem1|WideOr8~9_combout\ : std_logic;
SIGNAL \imem1|WideOr8~0_combout\ : std_logic;
SIGNAL \imem1|WideOr8~1_combout\ : std_logic;
SIGNAL \imem1|WideOr8~2_combout\ : std_logic;
SIGNAL \imem1|WideOr8~3_combout\ : std_logic;
SIGNAL \imem1|WideOr8~10_combout\ : std_logic;
SIGNAL \imem1|WideOr8~12_combout\ : std_logic;
SIGNAL \imem1|WideOr4~6_combout\ : std_logic;
SIGNAL \imem1|WideOr4~4_combout\ : std_logic;
SIGNAL \imem1|WideOr4~3_combout\ : std_logic;
SIGNAL \imem1|WideOr4~5_combout\ : std_logic;
SIGNAL \imem1|WideOr4~8_combout\ : std_logic;
SIGNAL \imem1|WideOr4~1_combout\ : std_logic;
SIGNAL \imem1|WideOr4~7_combout\ : std_logic;
SIGNAL \imem1|WideOr4~9_combout\ : std_logic;
SIGNAL \imem1|WideOr4~10_combout\ : std_logic;
SIGNAL \imem1|WideOr4~11_combout\ : std_logic;
SIGNAL \imem1|WideOr5~1_combout\ : std_logic;
SIGNAL \imem1|WideOr5~5_combout\ : std_logic;
SIGNAL \imem1|WideOr5~4_combout\ : std_logic;
SIGNAL \imem1|WideOr5~6_combout\ : std_logic;
SIGNAL \imem1|WideOr5~2_combout\ : std_logic;
SIGNAL \imem1|WideOr5~3_combout\ : std_logic;
SIGNAL \imem1|WideOr5~7_combout\ : std_logic;
SIGNAL \imem1|WideOr5~0_combout\ : std_logic;
SIGNAL \imem1|WideOr5~8_combout\ : std_logic;
SIGNAL \imem1|WideOr5~9_combout\ : std_logic;
SIGNAL \imem1|WideOr5~10_combout\ : std_logic;
SIGNAL \imem1|WideOr5~11_combout\ : std_logic;
SIGNAL \imem1|WideOr5~12_combout\ : std_logic;
SIGNAL \imem1|WideOr5~13_combout\ : std_logic;
SIGNAL \imem1|WideOr5~14_combout\ : std_logic;
SIGNAL \imem1|WideOr5~15_combout\ : std_logic;
SIGNAL \dc1|toalu[0]~0_combout\ : std_logic;
SIGNAL \dc1|toalu[0]~4_combout\ : std_logic;
SIGNAL \dc1|toalu[0]~5_combout\ : std_logic;
SIGNAL \imem1|WideOr2~4_combout\ : std_logic;
SIGNAL \rf1|core~104_combout\ : std_logic;
SIGNAL \imem1|WideOr6~13_combout\ : std_logic;
SIGNAL \imem1|WideOr6~4_combout\ : std_logic;
SIGNAL \imem1|WideOr6~0_combout\ : std_logic;
SIGNAL \imem1|WideOr6~1_combout\ : std_logic;
SIGNAL \imem1|WideOr6~2_combout\ : std_logic;
SIGNAL \imem1|WideOr6~3_combout\ : std_logic;
SIGNAL \imem1|WideOr6~5_combout\ : std_logic;
SIGNAL \imem1|WideOr6~6_combout\ : std_logic;
SIGNAL \imem1|WideOr6~10_combout\ : std_logic;
SIGNAL \imem1|WideOr6~7_combout\ : std_logic;
SIGNAL \imem1|WideOr6~8_combout\ : std_logic;
SIGNAL \imem1|WideOr6~9_combout\ : std_logic;
SIGNAL \imem1|WideOr6~11_combout\ : std_logic;
SIGNAL \imem1|WideOr6~12_combout\ : std_logic;
SIGNAL \imem1|WideOr6~14_combout\ : std_logic;
SIGNAL \dc1|WideOr3~0_combout\ : std_logic;
SIGNAL \dc1|toalu[2]~3_combout\ : std_logic;
SIGNAL \dc1|tomux5[1]~0_combout\ : std_logic;
SIGNAL \dc1|toMarwe~3_combout\ : std_logic;
SIGNAL \dc1|toalu[1]~1_combout\ : std_logic;
SIGNAL \dc1|toalu[1]~2_combout\ : std_logic;
SIGNAL \alu1|Mux8~11_combout\ : std_logic;
SIGNAL \dc1|toBarwe~2_combout\ : std_logic;
SIGNAL \dc1|WideOr4~2_combout\ : std_logic;
SIGNAL \dc1|WideOr4~0_combout\ : std_logic;
SIGNAL \dc1|WideOr4~1_combout\ : std_logic;
SIGNAL \dc1|tomux5[0]~1_combout\ : std_logic;
SIGNAL \dc1|toDmemwe~0_combout\ : std_logic;
SIGNAL \mux41|Mux7~0_combout\ : std_logic;
SIGNAL \mux41|Mux5~0_combout\ : std_logic;
SIGNAL \mux41|Mux7~1_combout\ : std_logic;
SIGNAL \dc1|toDmemwe~1_combout\ : std_logic;
SIGNAL \dc1|toMarwe~2_combout\ : std_logic;
SIGNAL \dc1|WideOr4~3_combout\ : std_logic;
SIGNAL \dc1|tomux2~1_combout\ : std_logic;
SIGNAL \mux21|Mux6~0_combout\ : std_logic;
SIGNAL \dmem1|guts_rtl_0_bypass[0]~feeder_combout\ : std_logic;
SIGNAL \mux21|Mux5~0_combout\ : std_logic;
SIGNAL \mux21|Mux6~1_combout\ : std_logic;
SIGNAL \mux21|Mux5~1_combout\ : std_logic;
SIGNAL \mux21|Mux3~0_combout\ : std_logic;
SIGNAL \dmem1|guts_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \mux21|Mux1~0_combout\ : std_logic;
SIGNAL \mux21|Mux1~1_combout\ : std_logic;
SIGNAL \rf1|Add1~0_combout\ : std_logic;
SIGNAL \dc1|WideOr2~0_combout\ : std_logic;
SIGNAL \dc1|WideOr2~1_combout\ : std_logic;
SIGNAL \dc1|WideOr0~0_combout\ : std_logic;
SIGNAL \rf1|core~251_combout\ : std_logic;
SIGNAL \rf1|core~252_combout\ : std_logic;
SIGNAL \dc1|tosc[0]~1_combout\ : std_logic;
SIGNAL \rf1|Mux2~0_combout\ : std_logic;
SIGNAL \rf1|Mux1~0_combout\ : std_logic;
SIGNAL \rf1|Mux0~0_combout\ : std_logic;
SIGNAL \rf1|core~264_combout\ : std_logic;
SIGNAL \rf1|core~265_combout\ : std_logic;
SIGNAL \rf1|core~86_q\ : std_logic;
SIGNAL \rf1|core~262_combout\ : std_logic;
SIGNAL \rf1|core~263_combout\ : std_logic;
SIGNAL \rf1|core~94_q\ : std_logic;
SIGNAL \rf1|core~150_combout\ : std_logic;
SIGNAL \rf1|core~260_combout\ : std_logic;
SIGNAL \rf1|core~261_combout\ : std_logic;
SIGNAL \rf1|core~78_q\ : std_logic;
SIGNAL \rf1|core~266_combout\ : std_logic;
SIGNAL \rf1|core~267_combout\ : std_logic;
SIGNAL \rf1|core~70_q\ : std_logic;
SIGNAL \rf1|core~151_combout\ : std_logic;
SIGNAL \rf1|core~276_combout\ : std_logic;
SIGNAL \rf1|core~277_combout\ : std_logic;
SIGNAL \rf1|core~6_q\ : std_logic;
SIGNAL \rf1|core~270_combout\ : std_logic;
SIGNAL \rf1|core~271_combout\ : std_logic;
SIGNAL \rf1|core~14_q\ : std_logic;
SIGNAL \rf1|core~272_combout\ : std_logic;
SIGNAL \rf1|core~273_combout\ : std_logic;
SIGNAL \rf1|core~30_q\ : std_logic;
SIGNAL \rf1|core~274_combout\ : std_logic;
SIGNAL \rf1|core~275_combout\ : std_logic;
SIGNAL \rf1|core~22_q\ : std_logic;
SIGNAL \rf1|core~156_combout\ : std_logic;
SIGNAL \rf1|core~157_combout\ : std_logic;
SIGNAL \rf1|core~154_combout\ : std_logic;
SIGNAL \rf1|core~46feeder_combout\ : std_logic;
SIGNAL \rf1|core~250_combout\ : std_logic;
SIGNAL \rf1|core~253_combout\ : std_logic;
SIGNAL \rf1|core~46_q\ : std_logic;
SIGNAL \rf1|core~258_combout\ : std_logic;
SIGNAL \rf1|core~259_combout\ : std_logic;
SIGNAL \rf1|core~38_q\ : std_logic;
SIGNAL \rf1|core~254_combout\ : std_logic;
SIGNAL \rf1|core~255_combout\ : std_logic;
SIGNAL \rf1|core~62_q\ : std_logic;
SIGNAL \rf1|core~54feeder_combout\ : std_logic;
SIGNAL \rf1|core~256_combout\ : std_logic;
SIGNAL \rf1|core~257_combout\ : std_logic;
SIGNAL \rf1|core~54_q\ : std_logic;
SIGNAL \rf1|core~152_combout\ : std_logic;
SIGNAL \rf1|core~153_combout\ : std_logic;
SIGNAL \rf1|Add1~1_combout\ : std_logic;
SIGNAL \rf1|core~155_combout\ : std_logic;
SIGNAL \rf1|core~158_combout\ : std_logic;
SIGNAL \mux51|Mux1~1_combout\ : std_logic;
SIGNAL \dc1|tomux7~0_combout\ : std_logic;
SIGNAL \dc1|toCntwe~0_combout\ : std_logic;
SIGNAL \dc1|toCntwe~1_combout\ : std_logic;
SIGNAL \mux51|Mux1~0_combout\ : std_logic;
SIGNAL \mux51|Mux1~2_combout\ : std_logic;
SIGNAL \alu1|rslt~10_combout\ : std_logic;
SIGNAL \mux41|Mux6~0_combout\ : std_logic;
SIGNAL \rf1|core~41_q\ : std_logic;
SIGNAL \rf1|core~33_q\ : std_logic;
SIGNAL \rf1|core~57_q\ : std_logic;
SIGNAL \rf1|core~49_q\ : std_logic;
SIGNAL \rf1|core~204_combout\ : std_logic;
SIGNAL \rf1|core~205_combout\ : std_logic;
SIGNAL \rf1|core~65_q\ : std_logic;
SIGNAL \rf1|core~73_q\ : std_logic;
SIGNAL \rf1|core~81_q\ : std_logic;
SIGNAL \rf1|core~206_combout\ : std_logic;
SIGNAL \rf1|core~207_combout\ : std_logic;
SIGNAL \rf1|core~268_combout\ : std_logic;
SIGNAL \rf1|core~269_combout\ : std_logic;
SIGNAL \rf1|core~97_q\ : std_logic;
SIGNAL \rf1|core~208_combout\ : std_logic;
SIGNAL \rf1|core~209_combout\ : std_logic;
SIGNAL \rf1|core~9feeder_combout\ : std_logic;
SIGNAL \rf1|core~9_q\ : std_logic;
SIGNAL \rf1|core~1_q\ : std_logic;
SIGNAL \rf1|core~25_q\ : std_logic;
SIGNAL \rf1|core~17_q\ : std_logic;
SIGNAL \rf1|core~210_combout\ : std_logic;
SIGNAL \rf1|core~211_combout\ : std_logic;
SIGNAL \rf1|core~212_combout\ : std_logic;
SIGNAL \mux51|Mux6~0_combout\ : std_logic;
SIGNAL \alu1|rslt~7_combout\ : std_logic;
SIGNAL \alu1|Mux8~5_combout\ : std_logic;
SIGNAL \mux71|Z[2]~0_combout\ : std_logic;
SIGNAL \mux41|Mux4~0_combout\ : std_logic;
SIGNAL \rf1|core~19_q\ : std_logic;
SIGNAL \rf1|core~237_combout\ : std_logic;
SIGNAL \rf1|core~3_q\ : std_logic;
SIGNAL \rf1|core~11_q\ : std_logic;
SIGNAL \rf1|core~238_combout\ : std_logic;
SIGNAL \rf1|core~59_q\ : std_logic;
SIGNAL \rf1|core~51feeder_combout\ : std_logic;
SIGNAL \rf1|core~51_q\ : std_logic;
SIGNAL \rf1|core~231_combout\ : std_logic;
SIGNAL \rf1|core~43_q\ : std_logic;
SIGNAL \rf1|core~35_q\ : std_logic;
SIGNAL \rf1|core~232_combout\ : std_logic;
SIGNAL \rf1|core~99_q\ : std_logic;
SIGNAL \rf1|core~235_combout\ : std_logic;
SIGNAL \rf1|core~67_q\ : std_logic;
SIGNAL \rf1|core~75_q\ : std_logic;
SIGNAL \rf1|core~91_q\ : std_logic;
SIGNAL \rf1|core~83_q\ : std_logic;
SIGNAL \rf1|core~233_combout\ : std_logic;
SIGNAL \rf1|core~234_combout\ : std_logic;
SIGNAL \rf1|core~236_combout\ : std_logic;
SIGNAL \rf1|core~239_combout\ : std_logic;
SIGNAL \mux51|Mux4~0_combout\ : std_logic;
SIGNAL \alu1|Equal0~6_combout\ : std_logic;
SIGNAL \alu1|Mux6~3_combout\ : std_logic;
SIGNAL \alu1|Add0~8_combout\ : std_logic;
SIGNAL \mux41|Mux5~1_combout\ : std_logic;
SIGNAL \rf1|core~10feeder_combout\ : std_logic;
SIGNAL \rf1|core~10_q\ : std_logic;
SIGNAL \rf1|core~2_q\ : std_logic;
SIGNAL \rf1|core~18_q\ : std_logic;
SIGNAL \rf1|core~26_q\ : std_logic;
SIGNAL \rf1|core~228_combout\ : std_logic;
SIGNAL \rf1|core~229_combout\ : std_logic;
SIGNAL \rf1|core~34feeder_combout\ : std_logic;
SIGNAL \rf1|core~34_q\ : std_logic;
SIGNAL \rf1|core~42_q\ : std_logic;
SIGNAL \rf1|core~58_q\ : std_logic;
SIGNAL \rf1|core~50_q\ : std_logic;
SIGNAL \rf1|core~224_combout\ : std_logic;
SIGNAL \rf1|core~225_combout\ : std_logic;
SIGNAL \rf1|core~226_combout\ : std_logic;
SIGNAL \rf1|core~227_combout\ : std_logic;
SIGNAL \rf1|core~74feeder_combout\ : std_logic;
SIGNAL \rf1|core~74_q\ : std_logic;
SIGNAL \rf1|core~82_q\ : std_logic;
SIGNAL \rf1|core~90_q\ : std_logic;
SIGNAL \rf1|core~222_combout\ : std_logic;
SIGNAL \rf1|core~66feeder_combout\ : std_logic;
SIGNAL \rf1|core~66_q\ : std_logic;
SIGNAL \rf1|core~223_combout\ : std_logic;
SIGNAL \rf1|core~230_combout\ : std_logic;
SIGNAL \mux51|Mux5~0_combout\ : std_logic;
SIGNAL \alu1|rslt~8_combout\ : std_logic;
SIGNAL \alu1|Equal0~5_combout\ : std_logic;
SIGNAL \alu1|Add0~10_combout\ : std_logic;
SIGNAL \alu1|Add0~11_combout\ : std_logic;
SIGNAL \dc1|toalu[0]~6_combout\ : std_logic;
SIGNAL \alu1|Add0~13_cout\ : std_logic;
SIGNAL \alu1|Add0~15\ : std_logic;
SIGNAL \alu1|Add0~17\ : std_logic;
SIGNAL \alu1|Add0~18_combout\ : std_logic;
SIGNAL \alu1|Mux6~9_combout\ : std_logic;
SIGNAL \mux41|Mux5~2_combout\ : std_logic;
SIGNAL \alu1|ShiftRight0~10_combout\ : std_logic;
SIGNAL \mux51|Mux5~1_combout\ : std_logic;
SIGNAL \alu1|rslt~12_combout\ : std_logic;
SIGNAL \cnt1|CntValue[7]~3_combout\ : std_logic;
SIGNAL \rf1|core~7_q\ : std_logic;
SIGNAL \rf1|core~23_q\ : std_logic;
SIGNAL \rf1|core~31_q\ : std_logic;
SIGNAL \rf1|core~201_combout\ : std_logic;
SIGNAL \rf1|core~202_combout\ : std_logic;
SIGNAL \rf1|core~47_q\ : std_logic;
SIGNAL \rf1|core~39_q\ : std_logic;
SIGNAL \rf1|core~63_q\ : std_logic;
SIGNAL \rf1|core~55_q\ : std_logic;
SIGNAL \rf1|core~195_combout\ : std_logic;
SIGNAL \rf1|core~196_combout\ : std_logic;
SIGNAL \rf1|core~103_q\ : std_logic;
SIGNAL \rf1|core~199_combout\ : std_logic;
SIGNAL \rf1|core~71_q\ : std_logic;
SIGNAL \rf1|core~79_q\ : std_logic;
SIGNAL \rf1|core~87_q\ : std_logic;
SIGNAL \rf1|core~95feeder_combout\ : std_logic;
SIGNAL \rf1|core~95_q\ : std_logic;
SIGNAL \rf1|core~197_combout\ : std_logic;
SIGNAL \rf1|core~198_combout\ : std_logic;
SIGNAL \rf1|core~200_combout\ : std_logic;
SIGNAL \rf1|core~203_combout\ : std_logic;
SIGNAL \mux51|Mux0~0_combout\ : std_logic;
SIGNAL \mux51|Mux0~1_combout\ : std_logic;
SIGNAL \mux51|Mux0~2_combout\ : std_logic;
SIGNAL \mux41|Mux3~0_combout\ : std_logic;
SIGNAL \alu1|Mux4~9_combout\ : std_logic;
SIGNAL \alu1|Add0~30_combout\ : std_logic;
SIGNAL \alu1|Add0~21\ : std_logic;
SIGNAL \alu1|Add0~22_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~2_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~3_combout\ : std_logic;
SIGNAL \alu1|ShiftRight0~1_combout\ : std_logic;
SIGNAL \alu1|ShiftRight0~0_combout\ : std_logic;
SIGNAL \alu1|ShiftRight0~2_combout\ : std_logic;
SIGNAL \alu1|Mux6~2_combout\ : std_logic;
SIGNAL \alu1|Mux4~11_combout\ : std_logic;
SIGNAL \alu1|Mux4~6_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~12_combout\ : std_logic;
SIGNAL \alu1|Mux4~5_combout\ : std_logic;
SIGNAL \alu1|Mux4~7_combout\ : std_logic;
SIGNAL \alu1|Mux4~4_combout\ : std_logic;
SIGNAL \alu1|Mux4~8_combout\ : std_logic;
SIGNAL \alu1|Mux4~10_combout\ : std_logic;
SIGNAL \mux71|Z[4]~1_combout\ : std_logic;
SIGNAL \rf1|core~12feeder_combout\ : std_logic;
SIGNAL \rf1|core~12_q\ : std_logic;
SIGNAL \rf1|core~4_q\ : std_logic;
SIGNAL \rf1|core~20feeder_combout\ : std_logic;
SIGNAL \rf1|core~20_q\ : std_logic;
SIGNAL \rf1|core~28_q\ : std_logic;
SIGNAL \rf1|core~120_combout\ : std_logic;
SIGNAL \rf1|core~121_combout\ : std_logic;
SIGNAL \rf1|core~118_combout\ : std_logic;
SIGNAL \rf1|core~36_q\ : std_logic;
SIGNAL \rf1|core~44_q\ : std_logic;
SIGNAL \rf1|core~60_q\ : std_logic;
SIGNAL \rf1|core~52_q\ : std_logic;
SIGNAL \rf1|core~116_combout\ : std_logic;
SIGNAL \rf1|core~117_combout\ : std_logic;
SIGNAL \rf1|core~119_combout\ : std_logic;
SIGNAL \rf1|core~68_q\ : std_logic;
SIGNAL \rf1|core~76_q\ : std_logic;
SIGNAL \rf1|core~84_q\ : std_logic;
SIGNAL \rf1|core~92_q\ : std_logic;
SIGNAL \rf1|core~114_combout\ : std_logic;
SIGNAL \rf1|core~115_combout\ : std_logic;
SIGNAL \rf1|core~122_combout\ : std_logic;
SIGNAL \mux51|Mux3~1_combout\ : std_logic;
SIGNAL \mux51|Mux3~0_combout\ : std_logic;
SIGNAL \mux51|Mux3~2_combout\ : std_logic;
SIGNAL \alu1|rslt~11_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~9_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~8_combout\ : std_logic;
SIGNAL \alu1|ShiftRight0~6_combout\ : std_logic;
SIGNAL \alu1|ShiftRight0~7_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~10_combout\ : std_logic;
SIGNAL \alu1|Mux3~0_combout\ : std_logic;
SIGNAL \alu1|Mux3~1_combout\ : std_logic;
SIGNAL \alu1|Mux3~2_combout\ : std_logic;
SIGNAL \alu1|Equal0~8_combout\ : std_logic;
SIGNAL \alu1|Add0~32_combout\ : std_logic;
SIGNAL \mux41|Mux2~0_combout\ : std_logic;
SIGNAL \alu1|Add0~23\ : std_logic;
SIGNAL \alu1|Add0~24_combout\ : std_logic;
SIGNAL \alu1|Mux3~3_combout\ : std_logic;
SIGNAL \alu1|Mux3~4_combout\ : std_logic;
SIGNAL \mux71|Z[5]~2_combout\ : std_logic;
SIGNAL \dmem1|guts_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \mux21|Mux2~0_combout\ : std_logic;
SIGNAL \mux21|Mux2~1_combout\ : std_logic;
SIGNAL \mux21|Mux2~2_combout\ : std_logic;
SIGNAL \rf1|core~101feeder_combout\ : std_logic;
SIGNAL \rf1|core~101_q\ : std_logic;
SIGNAL \rf1|core~172_combout\ : std_logic;
SIGNAL \rf1|core~77_q\ : std_logic;
SIGNAL \rf1|core~85_q\ : std_logic;
SIGNAL \rf1|core~93_q\ : std_logic;
SIGNAL \rf1|core~170_combout\ : std_logic;
SIGNAL \rf1|core~69_q\ : std_logic;
SIGNAL \rf1|core~171_combout\ : std_logic;
SIGNAL \rf1|core~173_combout\ : std_logic;
SIGNAL \rf1|core~45feeder_combout\ : std_logic;
SIGNAL \rf1|core~45_q\ : std_logic;
SIGNAL \rf1|core~37_q\ : std_logic;
SIGNAL \rf1|core~61feeder_combout\ : std_logic;
SIGNAL \rf1|core~61_q\ : std_logic;
SIGNAL \rf1|core~53feeder_combout\ : std_logic;
SIGNAL \rf1|core~53_q\ : std_logic;
SIGNAL \rf1|core~168_combout\ : std_logic;
SIGNAL \rf1|core~169_combout\ : std_logic;
SIGNAL \rf1|core~5_q\ : std_logic;
SIGNAL \rf1|core~13_q\ : std_logic;
SIGNAL \rf1|core~29_q\ : std_logic;
SIGNAL \rf1|core~21_q\ : std_logic;
SIGNAL \rf1|core~174_combout\ : std_logic;
SIGNAL \rf1|core~175_combout\ : std_logic;
SIGNAL \rf1|core~176_combout\ : std_logic;
SIGNAL \mux51|Mux2~0_combout\ : std_logic;
SIGNAL \mux51|Mux2~1_combout\ : std_logic;
SIGNAL \mux51|Mux2~2_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~4_combout\ : std_logic;
SIGNAL \alu1|Mux6~4_combout\ : std_logic;
SIGNAL \alu1|ShiftRight0~3_combout\ : std_logic;
SIGNAL \alu1|Mux6~6_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~6_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~5_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~7_combout\ : std_logic;
SIGNAL \alu1|Mux6~11_combout\ : std_logic;
SIGNAL \alu1|Mux6~5_combout\ : std_logic;
SIGNAL \alu1|Mux6~7_combout\ : std_logic;
SIGNAL \alu1|Mux6~8_combout\ : std_logic;
SIGNAL \alu1|Mux6~10_combout\ : std_logic;
SIGNAL \mux71|Z[2]~3_combout\ : std_logic;
SIGNAL \alu1|Add0~9_combout\ : std_logic;
SIGNAL \alu1|Add0~19\ : std_logic;
SIGNAL \alu1|Add0~20_combout\ : std_logic;
SIGNAL \alu1|Mux5~6_combout\ : std_logic;
SIGNAL \alu1|rslt~9_combout\ : std_logic;
SIGNAL \alu1|ShiftRight0~8_combout\ : std_logic;
SIGNAL \alu1|ShiftRight0~11_combout\ : std_logic;
SIGNAL \alu1|ShiftLeft0~11_combout\ : std_logic;
SIGNAL \alu1|Mux5~8_combout\ : std_logic;
SIGNAL \alu1|Mux5~4_combout\ : std_logic;
SIGNAL \alu1|Mux5~5_combout\ : std_logic;
SIGNAL \alu1|Mux5~7_combout\ : std_logic;
SIGNAL \mux71|Z[3]~4_combout\ : std_logic;
SIGNAL \mux51|Mux4~1_combout\ : std_logic;
SIGNAL \alu1|Mux8~6_combout\ : std_logic;
SIGNAL \alu1|Mux8~7_combout\ : std_logic;
SIGNAL \alu1|Mux8~1_combout\ : std_logic;
SIGNAL \alu1|Mux8~0_combout\ : std_logic;
SIGNAL \alu1|Mux7~0_combout\ : std_logic;
SIGNAL \alu1|Mux7~1_combout\ : std_logic;
SIGNAL \alu1|Mux7~3_combout\ : std_logic;
SIGNAL \alu1|Add0~16_combout\ : std_logic;
SIGNAL \alu1|Mux7~4_combout\ : std_logic;
SIGNAL \alu1|Mux7~2_combout\ : std_logic;
SIGNAL \alu1|Mux7~5_combout\ : std_logic;
SIGNAL \cnt1|CntValue[1]~1_combout\ : std_logic;
SIGNAL \mux51|Mux6~1_combout\ : std_logic;
SIGNAL \alu1|ShiftRight0~4_combout\ : std_logic;
SIGNAL \alu1|ShiftRight0~5_combout\ : std_logic;
SIGNAL \alu1|Mux1~0_combout\ : std_logic;
SIGNAL \alu1|Mux2~3_combout\ : std_logic;
SIGNAL \mux41|Mux1~0_combout\ : std_logic;
SIGNAL \alu1|Mux2~2_combout\ : std_logic;
SIGNAL \alu1|Mux2~4_combout\ : std_logic;
SIGNAL \alu1|Mux2~0_combout\ : std_logic;
SIGNAL \alu1|Add0~31_combout\ : std_logic;
SIGNAL \alu1|Add0~25\ : std_logic;
SIGNAL \alu1|Add0~26_combout\ : std_logic;
SIGNAL \alu1|Mux2~1_combout\ : std_logic;
SIGNAL \alu1|Mux2~5_combout\ : std_logic;
SIGNAL \cnt1|CntValue[6]~2_combout\ : std_logic;
SIGNAL \mux21|Mux1~2_combout\ : std_logic;
SIGNAL \rf1|core~102feeder_combout\ : std_logic;
SIGNAL \rf1|core~102_q\ : std_logic;
SIGNAL \rf1|core~145_combout\ : std_logic;
SIGNAL \rf1|core~143_combout\ : std_logic;
SIGNAL \rf1|Add0~0_combout\ : std_logic;
SIGNAL \rf1|core~144_combout\ : std_logic;
SIGNAL \rf1|core~146_combout\ : std_logic;
SIGNAL \rf1|core~147_combout\ : std_logic;
SIGNAL \rf1|core~148_combout\ : std_logic;
SIGNAL \rf1|core~141_combout\ : std_logic;
SIGNAL \rf1|core~142_combout\ : std_logic;
SIGNAL \rf1|core~149_combout\ : std_logic;
SIGNAL \dmem1|guts_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \mux21|Mux3~1_combout\ : std_logic;
SIGNAL \mux21|Mux3~2_combout\ : std_logic;
SIGNAL \rf1|core~100_q\ : std_logic;
SIGNAL \rf1|core~109_combout\ : std_logic;
SIGNAL \rf1|core~107_combout\ : std_logic;
SIGNAL \rf1|core~108_combout\ : std_logic;
SIGNAL \rf1|core~110_combout\ : std_logic;
SIGNAL \rf1|core~105_combout\ : std_logic;
SIGNAL \rf1|core~106_combout\ : std_logic;
SIGNAL \rf1|core~111_combout\ : std_logic;
SIGNAL \rf1|core~112_combout\ : std_logic;
SIGNAL \rf1|core~113_combout\ : std_logic;
SIGNAL \mar1|MarValue[4]~feeder_combout\ : std_logic;
SIGNAL \dmem1|guts_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \mux21|Mux5~2_combout\ : std_logic;
SIGNAL \mux21|Mux5~3_combout\ : std_logic;
SIGNAL \rf1|core~98_q\ : std_logic;
SIGNAL \rf1|core~217_combout\ : std_logic;
SIGNAL \rf1|core~215_combout\ : std_logic;
SIGNAL \rf1|core~216_combout\ : std_logic;
SIGNAL \rf1|core~218_combout\ : std_logic;
SIGNAL \rf1|core~219_combout\ : std_logic;
SIGNAL \rf1|core~220_combout\ : std_logic;
SIGNAL \rf1|core~213_combout\ : std_logic;
SIGNAL \rf1|core~214_combout\ : std_logic;
SIGNAL \rf1|core~221_combout\ : std_logic;
SIGNAL \mar1|MarValue[2]~feeder_combout\ : std_logic;
SIGNAL \dmem1|guts_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \mux21|Mux4~0_combout\ : std_logic;
SIGNAL \mux21|Mux4~1_combout\ : std_logic;
SIGNAL \mux21|Mux4~2_combout\ : std_logic;
SIGNAL \rf1|core~27_q\ : std_logic;
SIGNAL \rf1|core~246_combout\ : std_logic;
SIGNAL \rf1|core~247_combout\ : std_logic;
SIGNAL \rf1|core~240_combout\ : std_logic;
SIGNAL \rf1|core~241_combout\ : std_logic;
SIGNAL \rf1|core~242_combout\ : std_logic;
SIGNAL \rf1|core~243_combout\ : std_logic;
SIGNAL \rf1|core~244_combout\ : std_logic;
SIGNAL \rf1|core~245_combout\ : std_logic;
SIGNAL \rf1|core~248_combout\ : std_logic;
SIGNAL \dmem1|guts_rtl_0_bypass[7]~feeder_combout\ : std_logic;
SIGNAL \dmem1|guts_rtl_0_bypass[5]~feeder_combout\ : std_logic;
SIGNAL \mux21|Mux6~3_combout\ : std_logic;
SIGNAL \dmem1|guts_rtl_0_bypass[15]~feeder_combout\ : std_logic;
SIGNAL \dmem1|guts_rtl_0_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \dmem1|guts_rtl_0_bypass[13]~feeder_combout\ : std_logic;
SIGNAL \mux21|Mux6~5_combout\ : std_logic;
SIGNAL \mux21|Mux6~2_combout\ : std_logic;
SIGNAL \dmem1|guts_rtl_0_bypass[11]~feeder_combout\ : std_logic;
SIGNAL \dmem1|guts_rtl_0_bypass[10]~feeder_combout\ : std_logic;
SIGNAL \mux21|Mux6~4_combout\ : std_logic;
SIGNAL \mux21|Mux6~6_combout\ : std_logic;
SIGNAL \mux21|Mux6~7_combout\ : std_logic;
SIGNAL \mux21|Mux6~8_combout\ : std_logic;
SIGNAL \dmem1|guts_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \mux21|Mux6~9_combout\ : std_logic;
SIGNAL \mux21|Mux6~10_combout\ : std_logic;
SIGNAL \mux21|Mux6~11_combout\ : std_logic;
SIGNAL \rf1|core~89_q\ : std_logic;
SIGNAL \rf1|core~177_combout\ : std_logic;
SIGNAL \rf1|core~178_combout\ : std_logic;
SIGNAL \rf1|core~183_combout\ : std_logic;
SIGNAL \rf1|core~184_combout\ : std_logic;
SIGNAL \rf1|core~179_combout\ : std_logic;
SIGNAL \rf1|core~180_combout\ : std_logic;
SIGNAL \rf1|core~181_combout\ : std_logic;
SIGNAL \rf1|core~182_combout\ : std_logic;
SIGNAL \rf1|core~185_combout\ : std_logic;
SIGNAL \dmem1|guts_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \mux21|Mux7~0_combout\ : std_logic;
SIGNAL \mux21|Mux7~1_combout\ : std_logic;
SIGNAL \mux21|Mux7~2_combout\ : std_logic;
SIGNAL \rf1|core~96_q\ : std_logic;
SIGNAL \rf1|core~136_combout\ : std_logic;
SIGNAL \rf1|core~32_q\ : std_logic;
SIGNAL \rf1|core~40_q\ : std_logic;
SIGNAL \rf1|core~56_q\ : std_logic;
SIGNAL \rf1|core~48_q\ : std_logic;
SIGNAL \rf1|core~134_combout\ : std_logic;
SIGNAL \rf1|core~135_combout\ : std_logic;
SIGNAL \rf1|core~137_combout\ : std_logic;
SIGNAL \rf1|core~0_q\ : std_logic;
SIGNAL \rf1|core~8_q\ : std_logic;
SIGNAL \rf1|core~16_q\ : std_logic;
SIGNAL \rf1|core~24_q\ : std_logic;
SIGNAL \rf1|core~138_combout\ : std_logic;
SIGNAL \rf1|core~139_combout\ : std_logic;
SIGNAL \rf1|core~64_q\ : std_logic;
SIGNAL \rf1|core~72_q\ : std_logic;
SIGNAL \rf1|core~80_q\ : std_logic;
SIGNAL \rf1|core~88_q\ : std_logic;
SIGNAL \rf1|core~132_combout\ : std_logic;
SIGNAL \rf1|core~133_combout\ : std_logic;
SIGNAL \rf1|core~140_combout\ : std_logic;
SIGNAL \mux51|Mux7~0_combout\ : std_logic;
SIGNAL \alu1|rslt~6_combout\ : std_logic;
SIGNAL \alu1|Mux8~8_combout\ : std_logic;
SIGNAL \alu1|Add0~14_combout\ : std_logic;
SIGNAL \alu1|Mux8~9_combout\ : std_logic;
SIGNAL \alu1|Mux8~2_combout\ : std_logic;
SIGNAL \alu1|Mux8~3_combout\ : std_logic;
SIGNAL \alu1|Mux8~4_combout\ : std_logic;
SIGNAL \alu1|Mux8~10_combout\ : std_logic;
SIGNAL \cnt1|CntValue[0]~0_combout\ : std_logic;
SIGNAL \mux51|Mux7~1_combout\ : std_logic;
SIGNAL \alu1|ShiftRight0~9_combout\ : std_logic;
SIGNAL \mux41|Mux0~0_combout\ : std_logic;
SIGNAL \alu1|Mux1~4_combout\ : std_logic;
SIGNAL \alu1|Add0~33_combout\ : std_logic;
SIGNAL \alu1|Add0~27\ : std_logic;
SIGNAL \alu1|Add0~28_combout\ : std_logic;
SIGNAL \alu1|Mux1~5_combout\ : std_logic;
SIGNAL \alu1|Mux1~1_combout\ : std_logic;
SIGNAL \alu1|Mux1~2_combout\ : std_logic;
SIGNAL \alu1|Mux1~3_combout\ : std_logic;
SIGNAL \alu1|Mux1~6_combout\ : std_logic;
SIGNAL \dmem1|guts_rtl_0_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \dmem1|guts_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \mux21|Mux0~0_combout\ : std_logic;
SIGNAL \mux21|Mux0~1_combout\ : std_logic;
SIGNAL \mux21|Mux0~2_combout\ : std_logic;
SIGNAL \mux21|Mux0~3_combout\ : std_logic;
SIGNAL \rf1|core~15feeder_combout\ : std_logic;
SIGNAL \rf1|core~15_q\ : std_logic;
SIGNAL \rf1|core~192_combout\ : std_logic;
SIGNAL \rf1|core~193_combout\ : std_logic;
SIGNAL \rf1|core~186_combout\ : std_logic;
SIGNAL \rf1|core~187_combout\ : std_logic;
SIGNAL \rf1|core~190_combout\ : std_logic;
SIGNAL \rf1|core~188_combout\ : std_logic;
SIGNAL \rf1|core~189_combout\ : std_logic;
SIGNAL \rf1|core~191_combout\ : std_logic;
SIGNAL \rf1|core~194_combout\ : std_logic;
SIGNAL \dc1|toBarwe~3_combout\ : std_logic;
SIGNAL \alu1|Equal0~4_combout\ : std_logic;
SIGNAL \alu1|Equal0~2_combout\ : std_logic;
SIGNAL \alu1|Equal0~3_combout\ : std_logic;
SIGNAL \alu1|Equal0~7_combout\ : std_logic;
SIGNAL \alu1|Mux0~0_combout\ : std_logic;
SIGNAL \imem1|WideOr0~13_combout\ : std_logic;
SIGNAL \dc1|toBarwe~4_combout\ : std_logic;
SIGNAL \dc1|WideOr1~0_combout\ : std_logic;
SIGNAL \dc1|tosc[1]~0_combout\ : std_logic;
SIGNAL \sc1|SC~11_combout\ : std_logic;
SIGNAL \sc1|SC~6_combout\ : std_logic;
SIGNAL \sc1|SC~7_combout\ : std_logic;
SIGNAL \rf1|Add0~2_combout\ : std_logic;
SIGNAL \rf1|core~161_combout\ : std_logic;
SIGNAL \rf1|core~162_combout\ : std_logic;
SIGNAL \rf1|core~163_combout\ : std_logic;
SIGNAL \rf1|core~164_combout\ : std_logic;
SIGNAL \rf1|core~159_combout\ : std_logic;
SIGNAL \rf1|core~160_combout\ : std_logic;
SIGNAL \rf1|core~165_combout\ : std_logic;
SIGNAL \rf1|core~166_combout\ : std_logic;
SIGNAL \rf1|core~167_combout\ : std_logic;
SIGNAL \bar1|BarValue[5]~feeder_combout\ : std_logic;
SIGNAL \pc1|PC[5]~19\ : std_logic;
SIGNAL \pc1|PC[6]~20_combout\ : std_logic;
SIGNAL \bar1|BarValue[6]~feeder_combout\ : std_logic;
SIGNAL \imem1|WideOr1~0_combout\ : std_logic;
SIGNAL \imem1|WideOr1~1_combout\ : std_logic;
SIGNAL \imem1|WideOr1~2_combout\ : std_logic;
SIGNAL \imem1|WideOr1~6_combout\ : std_logic;
SIGNAL \imem1|WideOr1~7_combout\ : std_logic;
SIGNAL \imem1|WideOr1~4_combout\ : std_logic;
SIGNAL \imem1|WideOr1~3_combout\ : std_logic;
SIGNAL \imem1|WideOr1~5_combout\ : std_logic;
SIGNAL \imem1|WideOr1~8_combout\ : std_logic;
SIGNAL \rf1|core~249_combout\ : std_logic;
SIGNAL \sc1|SC~5_combout\ : std_logic;
SIGNAL \rf1|Mux2~1_combout\ : std_logic;
SIGNAL \sc1|SC~4_combout\ : std_logic;
SIGNAL \sc1|SC~12_combout\ : std_logic;
SIGNAL \sc1|SC~8_combout\ : std_logic;
SIGNAL \sc1|SC~9_combout\ : std_logic;
SIGNAL \sc1|SC~10_combout\ : std_logic;
SIGNAL \rf1|Add0~1_combout\ : std_logic;
SIGNAL \rf1|core~129_combout\ : std_logic;
SIGNAL \rf1|core~130_combout\ : std_logic;
SIGNAL \rf1|core~127_combout\ : std_logic;
SIGNAL \rf1|core~125_combout\ : std_logic;
SIGNAL \rf1|core~126_combout\ : std_logic;
SIGNAL \rf1|core~128_combout\ : std_logic;
SIGNAL \rf1|core~123_combout\ : std_logic;
SIGNAL \rf1|core~124_combout\ : std_logic;
SIGNAL \rf1|core~131_combout\ : std_logic;
SIGNAL \bar1|BarValue[0]~feeder_combout\ : std_logic;
SIGNAL \pc1|PC[0]~9\ : std_logic;
SIGNAL \pc1|PC[1]~10_combout\ : std_logic;
SIGNAL \bar1|BarValue[1]~feeder_combout\ : std_logic;
SIGNAL \pc1|PC[1]~11\ : std_logic;
SIGNAL \pc1|PC[2]~12_combout\ : std_logic;
SIGNAL \bar1|BarValue[2]~feeder_combout\ : std_logic;
SIGNAL \pc1|PC[2]~13\ : std_logic;
SIGNAL \pc1|PC[3]~14_combout\ : std_logic;
SIGNAL \bar1|BarValue[3]~feeder_combout\ : std_logic;
SIGNAL \pc1|PC[3]~15\ : std_logic;
SIGNAL \pc1|PC[4]~16_combout\ : std_logic;
SIGNAL \bar1|BarValue[4]~feeder_combout\ : std_logic;
SIGNAL \imem1|WideOr7~4_combout\ : std_logic;
SIGNAL \imem1|WideOr7~20_combout\ : std_logic;
SIGNAL \imem1|WideOr7~18_combout\ : std_logic;
SIGNAL \imem1|WideOr7~5_combout\ : std_logic;
SIGNAL \imem1|WideOr7~9_combout\ : std_logic;
SIGNAL \imem1|WideOr7~7_combout\ : std_logic;
SIGNAL \imem1|WideOr7~6_combout\ : std_logic;
SIGNAL \imem1|WideOr7~8_combout\ : std_logic;
SIGNAL \imem1|WideOr7~10_combout\ : std_logic;
SIGNAL \imem1|WideOr7~11_combout\ : std_logic;
SIGNAL \imem1|WideOr7~15_combout\ : std_logic;
SIGNAL \imem1|WideOr7~12_combout\ : std_logic;
SIGNAL \imem1|WideOr7~13_combout\ : std_logic;
SIGNAL \imem1|WideOr7~14_combout\ : std_logic;
SIGNAL \imem1|WideOr7~16_combout\ : std_logic;
SIGNAL \imem1|WideOr7~17_combout\ : std_logic;
SIGNAL \imem1|WideOr7~19_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \pc1|PC\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \cnt1|CntValue\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dmem1|guts_rtl_0_bypass\ : std_logic_vector(0 TO 24);
SIGNAL \bar1|BarValue\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \sc1|SC\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mar1|MarValue\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dc1|ALT_INV_toMarwe~2_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
done <= ww_done;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\dmem1|guts_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
\rf1|core~194_combout\ & \rf1|core~149_combout\ & \rf1|core~167_combout\ & \rf1|core~113_combout\ & \rf1|core~248_combout\ & \rf1|core~221_combout\ & \rf1|core~185_combout\ & \rf1|core~131_combout\);

\dmem1|guts_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\mar1|MarValue\(7) & \mar1|MarValue\(6) & \mar1|MarValue\(5) & \mar1|MarValue\(4) & \mar1|MarValue\(3) & \mar1|MarValue\(2) & \mar1|MarValue\(1) & \mar1|MarValue\(0));

\dmem1|guts_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\rf1|core~194_combout\ & \rf1|core~149_combout\ & \rf1|core~167_combout\ & \rf1|core~113_combout\ & \rf1|core~248_combout\ & \rf1|core~221_combout\ & \rf1|core~185_combout\ & 
\rf1|core~131_combout\);

\dmem1|guts_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \dmem1|guts_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\dmem1|guts_rtl_0|auto_generated|ram_block1a1\ <= \dmem1|guts_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\dmem1|guts_rtl_0|auto_generated|ram_block1a2\ <= \dmem1|guts_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\dmem1|guts_rtl_0|auto_generated|ram_block1a3\ <= \dmem1|guts_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\dmem1|guts_rtl_0|auto_generated|ram_block1a4\ <= \dmem1|guts_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\dmem1|guts_rtl_0|auto_generated|ram_block1a5\ <= \dmem1|guts_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\dmem1|guts_rtl_0|auto_generated|ram_block1a6\ <= \dmem1|guts_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\dmem1|guts_rtl_0|auto_generated|ram_block1a7\ <= \dmem1|guts_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\dc1|ALT_INV_toMarwe~2_combout\ <= NOT \dc1|toMarwe~2_combout\;

-- Location: IOOBUF_X21_Y0_N9
\done~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~2_combout\,
	devoe => ww_devoe,
	o => \done~output_o\);

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

-- Location: LCCOMB_X22_Y12_N10
\pc1|PC[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc1|PC[0]~8_combout\ = \pc1|PC\(0) $ (VCC)
-- \pc1|PC[0]~9\ = CARRY(\pc1|PC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(0),
	datad => VCC,
	combout => \pc1|PC[0]~8_combout\,
	cout => \pc1|PC[0]~9\);

-- Location: IOIBUF_X25_Y0_N1
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X19_Y12_N12
\imem1|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr4~0_combout\ = (\pc1|PC\(3) & (!\pc1|PC\(1) & (\pc1|PC\(0) $ (\pc1|PC\(2))))) # (!\pc1|PC\(3) & (\pc1|PC\(1) & (!\pc1|PC\(0) & \pc1|PC\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(3),
	datab => \pc1|PC\(1),
	datac => \pc1|PC\(0),
	datad => \pc1|PC\(2),
	combout => \imem1|WideOr4~0_combout\);

-- Location: LCCOMB_X22_Y12_N18
\pc1|PC[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc1|PC[4]~16_combout\ = (\pc1|PC\(4) & (\pc1|PC[3]~15\ $ (GND))) # (!\pc1|PC\(4) & (!\pc1|PC[3]~15\ & VCC))
-- \pc1|PC[4]~17\ = CARRY((\pc1|PC\(4) & !\pc1|PC[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc1|PC\(4),
	datad => VCC,
	cin => \pc1|PC[3]~15\,
	combout => \pc1|PC[4]~16_combout\,
	cout => \pc1|PC[4]~17\);

-- Location: LCCOMB_X22_Y12_N20
\pc1|PC[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc1|PC[5]~18_combout\ = (\pc1|PC\(5) & (!\pc1|PC[4]~17\)) # (!\pc1|PC\(5) & ((\pc1|PC[4]~17\) # (GND)))
-- \pc1|PC[5]~19\ = CARRY((!\pc1|PC[4]~17\) # (!\pc1|PC\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc1|PC\(5),
	datad => VCC,
	cin => \pc1|PC[4]~17\,
	combout => \pc1|PC[5]~18_combout\,
	cout => \pc1|PC[5]~19\);

-- Location: LCCOMB_X22_Y12_N22
\pc1|PC[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc1|PC[6]~20_combout\ = (\pc1|PC\(6) & (\pc1|PC[5]~19\ $ (GND))) # (!\pc1|PC\(6) & (!\pc1|PC[5]~19\ & VCC))
-- \pc1|PC[6]~21\ = CARRY((\pc1|PC\(6) & !\pc1|PC[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(6),
	datad => VCC,
	cin => \pc1|PC[5]~19\,
	combout => \pc1|PC[6]~20_combout\,
	cout => \pc1|PC[6]~21\);

-- Location: LCCOMB_X22_Y12_N24
\pc1|PC[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc1|PC[7]~22_combout\ = \pc1|PC\(7) $ (\pc1|PC[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(7),
	cin => \pc1|PC[6]~21\,
	combout => \pc1|PC[7]~22_combout\);

-- Location: LCCOMB_X19_Y14_N4
\imem1|WideOr0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr0~14_combout\ = (\pc1|PC\(0) & ((\pc1|PC\(3) $ (!\pc1|PC\(2))) # (!\pc1|PC\(1)))) # (!\pc1|PC\(0) & (((\pc1|PC\(3)) # (\pc1|PC\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(1),
	datab => \pc1|PC\(3),
	datac => \pc1|PC\(2),
	datad => \pc1|PC\(0),
	combout => \imem1|WideOr0~14_combout\);

-- Location: LCCOMB_X23_Y15_N12
\imem1|WideOr0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr0~4_combout\ = (!\pc1|PC\(5) & (\pc1|PC\(3) & !\pc1|PC\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc1|PC\(5),
	datac => \pc1|PC\(3),
	datad => \pc1|PC\(0),
	combout => \imem1|WideOr0~4_combout\);

-- Location: LCCOMB_X23_Y15_N8
\imem1|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr0~0_combout\ = (\pc1|PC\(3) & (!\pc1|PC\(5) & (!\pc1|PC\(1) & !\pc1|PC\(0)))) # (!\pc1|PC\(3) & (\pc1|PC\(0) $ (((\pc1|PC\(5) & !\pc1|PC\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(3),
	datab => \pc1|PC\(5),
	datac => \pc1|PC\(1),
	datad => \pc1|PC\(0),
	combout => \imem1|WideOr0~0_combout\);

-- Location: LCCOMB_X23_Y15_N26
\imem1|WideOr0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr0~1_combout\ = (!\pc1|PC\(0) & ((\pc1|PC\(1) & (!\pc1|PC\(5) & \pc1|PC\(3))) # (!\pc1|PC\(1) & (\pc1|PC\(5) & !\pc1|PC\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(1),
	datab => \pc1|PC\(5),
	datac => \pc1|PC\(3),
	datad => \pc1|PC\(0),
	combout => \imem1|WideOr0~1_combout\);

-- Location: LCCOMB_X23_Y15_N28
\imem1|WideOr0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr0~2_combout\ = (\pc1|PC\(3) & (\pc1|PC\(5) & (\pc1|PC\(1) $ (!\pc1|PC\(0))))) # (!\pc1|PC\(3) & (!\pc1|PC\(5) & (!\pc1|PC\(1) & \pc1|PC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(3),
	datab => \pc1|PC\(5),
	datac => \pc1|PC\(1),
	datad => \pc1|PC\(0),
	combout => \imem1|WideOr0~2_combout\);

-- Location: LCCOMB_X23_Y15_N10
\imem1|WideOr0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr0~3_combout\ = (\pc1|PC\(2) & ((\pc1|PC\(6)) # ((\imem1|WideOr0~1_combout\)))) # (!\pc1|PC\(2) & (!\pc1|PC\(6) & ((\imem1|WideOr0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(2),
	datab => \pc1|PC\(6),
	datac => \imem1|WideOr0~1_combout\,
	datad => \imem1|WideOr0~2_combout\,
	combout => \imem1|WideOr0~3_combout\);

-- Location: LCCOMB_X23_Y15_N30
\imem1|WideOr0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr0~5_combout\ = (\pc1|PC\(6) & ((\imem1|WideOr0~3_combout\ & (\imem1|WideOr0~4_combout\)) # (!\imem1|WideOr0~3_combout\ & ((\imem1|WideOr0~0_combout\))))) # (!\pc1|PC\(6) & (((\imem1|WideOr0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr0~4_combout\,
	datab => \pc1|PC\(6),
	datac => \imem1|WideOr0~0_combout\,
	datad => \imem1|WideOr0~3_combout\,
	combout => \imem1|WideOr0~5_combout\);

-- Location: LCCOMB_X22_Y12_N0
\imem1|WideOr0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr0~10_combout\ = (\pc1|PC\(1) & (\pc1|PC\(5) & (!\pc1|PC\(2) & \pc1|PC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(1),
	datab => \pc1|PC\(5),
	datac => \pc1|PC\(2),
	datad => \pc1|PC\(0),
	combout => \imem1|WideOr0~10_combout\);

-- Location: LCCOMB_X22_Y12_N28
\imem1|WideOr0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr0~6_combout\ = (\pc1|PC\(5) & (\pc1|PC\(2) & ((\pc1|PC\(1)) # (!\pc1|PC\(0))))) # (!\pc1|PC\(5) & (!\pc1|PC\(1) & (\pc1|PC\(0) $ (\pc1|PC\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(0),
	datab => \pc1|PC\(5),
	datac => \pc1|PC\(2),
	datad => \pc1|PC\(1),
	combout => \imem1|WideOr0~6_combout\);

-- Location: LCCOMB_X22_Y12_N8
\imem1|WideOr0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr0~8_combout\ = (\pc1|PC\(2) & ((\pc1|PC\(1)) # ((!\pc1|PC\(0) & \pc1|PC\(5))))) # (!\pc1|PC\(2) & ((\pc1|PC\(0)) # ((\pc1|PC\(1) & \pc1|PC\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(1),
	datab => \pc1|PC\(2),
	datac => \pc1|PC\(0),
	datad => \pc1|PC\(5),
	combout => \imem1|WideOr0~8_combout\);

-- Location: LCCOMB_X22_Y12_N26
\imem1|WideOr0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr0~7_combout\ = (\pc1|PC\(0) & ((\pc1|PC\(2) & (\pc1|PC\(5))) # (!\pc1|PC\(2) & ((!\pc1|PC\(1)))))) # (!\pc1|PC\(0) & (!\pc1|PC\(5) & (\pc1|PC\(2) & \pc1|PC\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(0),
	datab => \pc1|PC\(5),
	datac => \pc1|PC\(2),
	datad => \pc1|PC\(1),
	combout => \imem1|WideOr0~7_combout\);

-- Location: LCCOMB_X22_Y12_N6
\imem1|WideOr0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr0~9_combout\ = (\pc1|PC\(6) & (\pc1|PC\(3))) # (!\pc1|PC\(6) & ((\pc1|PC\(3) & ((\imem1|WideOr0~7_combout\))) # (!\pc1|PC\(3) & (!\imem1|WideOr0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(6),
	datab => \pc1|PC\(3),
	datac => \imem1|WideOr0~8_combout\,
	datad => \imem1|WideOr0~7_combout\,
	combout => \imem1|WideOr0~9_combout\);

-- Location: LCCOMB_X23_Y14_N16
\imem1|WideOr0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr0~11_combout\ = (\pc1|PC\(6) & ((\imem1|WideOr0~9_combout\ & (\imem1|WideOr0~10_combout\)) # (!\imem1|WideOr0~9_combout\ & ((\imem1|WideOr0~6_combout\))))) # (!\pc1|PC\(6) & (((\imem1|WideOr0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(6),
	datab => \imem1|WideOr0~10_combout\,
	datac => \imem1|WideOr0~6_combout\,
	datad => \imem1|WideOr0~9_combout\,
	combout => \imem1|WideOr0~11_combout\);

-- Location: LCCOMB_X23_Y14_N2
\imem1|WideOr0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr0~12_combout\ = (!\pc1|PC\(7) & ((\pc1|PC\(4) & (\imem1|WideOr0~5_combout\)) # (!\pc1|PC\(4) & ((\imem1|WideOr0~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(4),
	datab => \pc1|PC\(7),
	datac => \imem1|WideOr0~5_combout\,
	datad => \imem1|WideOr0~11_combout\,
	combout => \imem1|WideOr0~12_combout\);

-- Location: LCCOMB_X23_Y14_N12
\imem1|WideOr0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr0~15_combout\ = (\imem1|WideOr0~12_combout\) # ((!\imem1|WideOr0~14_combout\ & \imem1|WideOr0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr0~14_combout\,
	datac => \imem1|WideOr0~13_combout\,
	datad => \imem1|WideOr0~12_combout\,
	combout => \imem1|WideOr0~15_combout\);

-- Location: LCCOMB_X23_Y12_N14
\imem1|WideOr4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr4~2_combout\ = (!\pc1|PC\(1) & (!\pc1|PC\(2) & (\pc1|PC\(3) & !\pc1|PC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(1),
	datab => \pc1|PC\(2),
	datac => \pc1|PC\(3),
	datad => \pc1|PC\(0),
	combout => \imem1|WideOr4~2_combout\);

-- Location: LCCOMB_X22_Y13_N0
\imem1|WideOr2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr2~2_combout\ = (\pc1|PC\(2) & (!\pc1|PC\(0) & (!\pc1|PC\(3) & !\pc1|PC\(1)))) # (!\pc1|PC\(2) & (\pc1|PC\(0) & (\pc1|PC\(3) & \pc1|PC\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(2),
	datab => \pc1|PC\(0),
	datac => \pc1|PC\(3),
	datad => \pc1|PC\(1),
	combout => \imem1|WideOr2~2_combout\);

-- Location: LCCOMB_X22_Y13_N22
\imem1|WideOr2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr2~3_combout\ = (\pc1|PC\(6) & (!\pc1|PC\(4) & ((\imem1|WideOr2~2_combout\)))) # (!\pc1|PC\(6) & (\pc1|PC\(4) & (\imem1|WideOr4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(6),
	datab => \pc1|PC\(4),
	datac => \imem1|WideOr4~2_combout\,
	datad => \imem1|WideOr2~2_combout\,
	combout => \imem1|WideOr2~3_combout\);

-- Location: LCCOMB_X19_Y12_N26
\imem1|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr2~0_combout\ = (\pc1|PC\(0) & (\pc1|PC\(7) $ (((!\pc1|PC\(1) & !\pc1|PC\(2)))))) # (!\pc1|PC\(0) & (\pc1|PC\(7) & (\pc1|PC\(1) & \pc1|PC\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(7),
	datab => \pc1|PC\(0),
	datac => \pc1|PC\(1),
	datad => \pc1|PC\(2),
	combout => \imem1|WideOr2~0_combout\);

-- Location: LCCOMB_X19_Y12_N16
\imem1|WideOr7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr7~2_combout\ = (!\pc1|PC\(4) & (!\pc1|PC\(5) & !\pc1|PC\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(4),
	datac => \pc1|PC\(5),
	datad => \pc1|PC\(6),
	combout => \imem1|WideOr7~2_combout\);

-- Location: LCCOMB_X19_Y12_N24
\imem1|WideOr2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr2~1_combout\ = (\imem1|WideOr7~2_combout\ & (\pc1|PC\(3) & ((\imem1|WideOr2~0_combout\)))) # (!\imem1|WideOr7~2_combout\ & (((\pc1|PC\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(3),
	datab => \pc1|PC\(7),
	datac => \imem1|WideOr2~0_combout\,
	datad => \imem1|WideOr7~2_combout\,
	combout => \imem1|WideOr2~1_combout\);

-- Location: LCCOMB_X21_Y13_N4
\imem1|WideOr3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr3~9_combout\ = (\pc1|PC\(4) & (!\pc1|PC\(5) & ((\pc1|PC\(2)) # (!\pc1|PC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(4),
	datab => \pc1|PC\(5),
	datac => \pc1|PC\(2),
	datad => \pc1|PC\(1),
	combout => \imem1|WideOr3~9_combout\);

-- Location: LCCOMB_X21_Y13_N26
\imem1|WideOr3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr3~6_combout\ = (\pc1|PC\(5) & ((\pc1|PC\(2) $ (!\pc1|PC\(4))) # (!\pc1|PC\(1)))) # (!\pc1|PC\(5) & ((\pc1|PC\(2)) # (\pc1|PC\(1) $ (\pc1|PC\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(1),
	datab => \pc1|PC\(2),
	datac => \pc1|PC\(4),
	datad => \pc1|PC\(5),
	combout => \imem1|WideOr3~6_combout\);

-- Location: LCCOMB_X21_Y13_N28
\imem1|WideOr3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr3~7_combout\ = (\pc1|PC\(2) & (!\pc1|PC\(4) & ((\pc1|PC\(5)) # (!\pc1|PC\(1))))) # (!\pc1|PC\(2) & (!\pc1|PC\(1) & (\pc1|PC\(4) & \pc1|PC\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(1),
	datab => \pc1|PC\(2),
	datac => \pc1|PC\(4),
	datad => \pc1|PC\(5),
	combout => \imem1|WideOr3~7_combout\);

-- Location: LCCOMB_X21_Y13_N10
\imem1|WideOr3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr3~8_combout\ = (\pc1|PC\(0) & ((\pc1|PC\(3)) # ((\imem1|WideOr3~6_combout\)))) # (!\pc1|PC\(0) & (!\pc1|PC\(3) & ((!\imem1|WideOr3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(0),
	datab => \pc1|PC\(3),
	datac => \imem1|WideOr3~6_combout\,
	datad => \imem1|WideOr3~7_combout\,
	combout => \imem1|WideOr3~8_combout\);

-- Location: LCCOMB_X21_Y13_N18
\imem1|WideOr3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr3~10_combout\ = (\imem1|WideOr3~8_combout\) # ((\pc1|PC\(3) & !\imem1|WideOr3~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc1|PC\(3),
	datac => \imem1|WideOr3~9_combout\,
	datad => \imem1|WideOr3~8_combout\,
	combout => \imem1|WideOr3~10_combout\);

-- Location: LCCOMB_X21_Y14_N22
\imem1|WideOr7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr7~3_combout\ = (!\pc1|PC\(4) & !\pc1|PC\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc1|PC\(4),
	datad => \pc1|PC\(5),
	combout => \imem1|WideOr7~3_combout\);

-- Location: LCCOMB_X21_Y13_N0
\imem1|WideOr3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr3~4_combout\ = (\pc1|PC\(1) & (\pc1|PC\(2) $ (((!\pc1|PC\(0) & !\pc1|PC\(3)))))) # (!\pc1|PC\(1) & (\pc1|PC\(2) & (\pc1|PC\(0) & \pc1|PC\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(1),
	datab => \pc1|PC\(2),
	datac => \pc1|PC\(0),
	datad => \pc1|PC\(3),
	combout => \imem1|WideOr3~4_combout\);

-- Location: LCCOMB_X21_Y13_N22
\imem1|WideOr3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr3~1_combout\ = (\pc1|PC\(3)) # ((\pc1|PC\(0) & ((\pc1|PC\(5)))) # (!\pc1|PC\(0) & (!\pc1|PC\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(2),
	datab => \pc1|PC\(3),
	datac => \pc1|PC\(0),
	datad => \pc1|PC\(5),
	combout => \imem1|WideOr3~1_combout\);

-- Location: LCCOMB_X21_Y13_N8
\imem1|WideOr3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr3~2_combout\ = (\pc1|PC\(1) & ((\pc1|PC\(2) $ (!\pc1|PC\(4))) # (!\pc1|PC\(3)))) # (!\pc1|PC\(1) & ((\pc1|PC\(4)) # ((\pc1|PC\(2) & \pc1|PC\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(1),
	datab => \pc1|PC\(2),
	datac => \pc1|PC\(4),
	datad => \pc1|PC\(3),
	combout => \imem1|WideOr3~2_combout\);

-- Location: LCCOMB_X21_Y13_N24
\imem1|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr3~0_combout\ = (\pc1|PC\(5) & (\pc1|PC\(0) $ (((\pc1|PC\(2)) # (\pc1|PC\(3)))))) # (!\pc1|PC\(5) & (((\pc1|PC\(0) & \pc1|PC\(3))) # (!\pc1|PC\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110101011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(2),
	datab => \pc1|PC\(5),
	datac => \pc1|PC\(0),
	datad => \pc1|PC\(3),
	combout => \imem1|WideOr3~0_combout\);

-- Location: LCCOMB_X21_Y13_N14
\imem1|WideOr3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr3~3_combout\ = (\imem1|WideOr3~2_combout\ & ((\imem1|WideOr3~1_combout\) # ((\pc1|PC\(1)) # (!\imem1|WideOr3~0_combout\)))) # (!\imem1|WideOr3~2_combout\ & (((\imem1|WideOr3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr3~1_combout\,
	datab => \pc1|PC\(1),
	datac => \imem1|WideOr3~2_combout\,
	datad => \imem1|WideOr3~0_combout\,
	combout => \imem1|WideOr3~3_combout\);

-- Location: LCCOMB_X21_Y14_N16
\imem1|WideOr3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr3~5_combout\ = (\pc1|PC\(7) & (\imem1|WideOr7~3_combout\ & (!\imem1|WideOr3~4_combout\))) # (!\pc1|PC\(7) & (((\imem1|WideOr3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr7~3_combout\,
	datab => \imem1|WideOr3~4_combout\,
	datac => \pc1|PC\(7),
	datad => \imem1|WideOr3~3_combout\,
	combout => \imem1|WideOr3~5_combout\);

-- Location: LCCOMB_X21_Y14_N2
\imem1|WideOr3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr3~11_combout\ = (\pc1|PC\(6) & (!\pc1|PC\(7) & (\imem1|WideOr3~10_combout\))) # (!\pc1|PC\(6) & (((\imem1|WideOr3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(7),
	datab => \pc1|PC\(6),
	datac => \imem1|WideOr3~10_combout\,
	datad => \imem1|WideOr3~5_combout\,
	combout => \imem1|WideOr3~11_combout\);

-- Location: LCCOMB_X21_Y14_N6
\dc1|tomux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dc1|tomux2~0_combout\ = (!\imem1|WideOr2~1_combout\ & (\imem1|WideOr3~11_combout\ & ((!\imem1|WideOr2~3_combout\) # (!\pc1|PC\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(5),
	datab => \imem1|WideOr2~3_combout\,
	datac => \imem1|WideOr2~1_combout\,
	datad => \imem1|WideOr3~11_combout\,
	combout => \dc1|tomux2~0_combout\);

-- Location: LCCOMB_X21_Y12_N6
\imem1|WideOr8~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr8~11_combout\ = (\pc1|PC\(0) & (!\pc1|PC\(2) & ((\pc1|PC\(3)) # (!\pc1|PC\(1))))) # (!\pc1|PC\(0) & (\pc1|PC\(2) & (\pc1|PC\(1) $ (\pc1|PC\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(0),
	datab => \pc1|PC\(2),
	datac => \pc1|PC\(1),
	datad => \pc1|PC\(3),
	combout => \imem1|WideOr8~11_combout\);

-- Location: LCCOMB_X23_Y15_N20
\imem1|WideOr8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr8~4_combout\ = (\pc1|PC\(5) & (((\pc1|PC\(2))))) # (!\pc1|PC\(5) & (\pc1|PC\(0) $ (((\pc1|PC\(6) & \pc1|PC\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(5),
	datab => \pc1|PC\(6),
	datac => \pc1|PC\(2),
	datad => \pc1|PC\(0),
	combout => \imem1|WideOr8~4_combout\);

-- Location: LCCOMB_X23_Y15_N4
\imem1|WideOr8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr8~8_combout\ = (\pc1|PC\(5) & ((\pc1|PC\(0) & ((!\pc1|PC\(6)))) # (!\pc1|PC\(0) & ((\pc1|PC\(6)) # (!\pc1|PC\(2)))))) # (!\pc1|PC\(5) & (((\pc1|PC\(2)) # (\pc1|PC\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(0),
	datab => \pc1|PC\(5),
	datac => \pc1|PC\(2),
	datad => \pc1|PC\(6),
	combout => \imem1|WideOr8~8_combout\);

-- Location: LCCOMB_X23_Y15_N22
\imem1|WideOr8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr8~5_combout\ = (\pc1|PC\(0) & (\pc1|PC\(5) $ (\pc1|PC\(2) $ (\pc1|PC\(6))))) # (!\pc1|PC\(0) & ((\pc1|PC\(5) & ((!\pc1|PC\(6)))) # (!\pc1|PC\(5) & ((\pc1|PC\(2)) # (\pc1|PC\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(0),
	datab => \pc1|PC\(5),
	datac => \pc1|PC\(2),
	datad => \pc1|PC\(6),
	combout => \imem1|WideOr8~5_combout\);

-- Location: LCCOMB_X23_Y15_N24
\imem1|WideOr8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr8~6_combout\ = (\pc1|PC\(0) & ((\pc1|PC\(5) & ((!\pc1|PC\(6)))) # (!\pc1|PC\(5) & ((\pc1|PC\(2)) # (\pc1|PC\(6)))))) # (!\pc1|PC\(0) & (\pc1|PC\(5) & (!\pc1|PC\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(0),
	datab => \pc1|PC\(5),
	datac => \pc1|PC\(2),
	datad => \pc1|PC\(6),
	combout => \imem1|WideOr8~6_combout\);

-- Location: LCCOMB_X23_Y15_N6
\imem1|WideOr8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr8~7_combout\ = (\pc1|PC\(3) & (\pc1|PC\(1))) # (!\pc1|PC\(3) & ((\pc1|PC\(1) & (!\imem1|WideOr8~5_combout\)) # (!\pc1|PC\(1) & ((!\imem1|WideOr8~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(3),
	datab => \pc1|PC\(1),
	datac => \imem1|WideOr8~5_combout\,
	datad => \imem1|WideOr8~6_combout\,
	combout => \imem1|WideOr8~7_combout\);

-- Location: LCCOMB_X23_Y15_N18
\imem1|WideOr8~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr8~9_combout\ = (\pc1|PC\(3) & ((\imem1|WideOr8~7_combout\ & ((!\imem1|WideOr8~8_combout\))) # (!\imem1|WideOr8~7_combout\ & (\imem1|WideOr8~4_combout\)))) # (!\pc1|PC\(3) & (((\imem1|WideOr8~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(3),
	datab => \imem1|WideOr8~4_combout\,
	datac => \imem1|WideOr8~8_combout\,
	datad => \imem1|WideOr8~7_combout\,
	combout => \imem1|WideOr8~9_combout\);

-- Location: LCCOMB_X23_Y15_N0
\imem1|WideOr8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr8~0_combout\ = (\pc1|PC\(5) & (((\pc1|PC\(1) & !\pc1|PC\(0))))) # (!\pc1|PC\(5) & ((\pc1|PC\(6) & ((\pc1|PC\(0)))) # (!\pc1|PC\(6) & ((\pc1|PC\(1)) # (!\pc1|PC\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(5),
	datab => \pc1|PC\(6),
	datac => \pc1|PC\(1),
	datad => \pc1|PC\(0),
	combout => \imem1|WideOr8~0_combout\);

-- Location: LCCOMB_X23_Y15_N14
\imem1|WideOr8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr8~1_combout\ = (\pc1|PC\(6) & (((\pc1|PC\(1))))) # (!\pc1|PC\(6) & (((!\pc1|PC\(5) & !\pc1|PC\(0))) # (!\pc1|PC\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(5),
	datab => \pc1|PC\(6),
	datac => \pc1|PC\(1),
	datad => \pc1|PC\(0),
	combout => \imem1|WideOr8~1_combout\);

-- Location: LCCOMB_X23_Y15_N16
\imem1|WideOr8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr8~2_combout\ = (\pc1|PC\(3) & ((\pc1|PC\(2)) # ((!\pc1|PC\(0) & \pc1|PC\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(3),
	datab => \pc1|PC\(0),
	datac => \pc1|PC\(2),
	datad => \pc1|PC\(5),
	combout => \imem1|WideOr8~2_combout\);

-- Location: LCCOMB_X23_Y15_N2
\imem1|WideOr8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr8~3_combout\ = (\pc1|PC\(2) & (\imem1|WideOr8~0_combout\ & (\imem1|WideOr8~1_combout\ $ (\imem1|WideOr8~2_combout\)))) # (!\pc1|PC\(2) & ((\imem1|WideOr8~1_combout\ & (!\imem1|WideOr8~0_combout\)) # (!\imem1|WideOr8~1_combout\ & 
-- ((\imem1|WideOr8~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(2),
	datab => \imem1|WideOr8~0_combout\,
	datac => \imem1|WideOr8~1_combout\,
	datad => \imem1|WideOr8~2_combout\,
	combout => \imem1|WideOr8~3_combout\);

-- Location: LCCOMB_X22_Y14_N12
\imem1|WideOr8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr8~10_combout\ = (!\pc1|PC\(7) & ((\pc1|PC\(4) & ((\imem1|WideOr8~3_combout\))) # (!\pc1|PC\(4) & (\imem1|WideOr8~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(7),
	datab => \pc1|PC\(4),
	datac => \imem1|WideOr8~9_combout\,
	datad => \imem1|WideOr8~3_combout\,
	combout => \imem1|WideOr8~10_combout\);

-- Location: LCCOMB_X22_Y14_N22
\imem1|WideOr8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr8~12_combout\ = (\imem1|WideOr8~10_combout\) # ((\imem1|WideOr0~13_combout\ & \imem1|WideOr8~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr0~13_combout\,
	datab => \imem1|WideOr8~11_combout\,
	datad => \imem1|WideOr8~10_combout\,
	combout => \imem1|WideOr8~12_combout\);

-- Location: LCCOMB_X22_Y15_N0
\imem1|WideOr4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr4~6_combout\ = (\pc1|PC\(3) & ((\pc1|PC\(0) & (\pc1|PC\(2))) # (!\pc1|PC\(0) & ((\pc1|PC\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(2),
	datab => \pc1|PC\(1),
	datac => \pc1|PC\(0),
	datad => \pc1|PC\(3),
	combout => \imem1|WideOr4~6_combout\);

-- Location: LCCOMB_X23_Y12_N30
\imem1|WideOr4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr4~4_combout\ = (\pc1|PC\(3) & ((\pc1|PC\(5) & (\pc1|PC\(4))) # (!\pc1|PC\(5) & ((\pc1|PC\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(3),
	datab => \pc1|PC\(4),
	datac => \pc1|PC\(0),
	datad => \pc1|PC\(5),
	combout => \imem1|WideOr4~4_combout\);

-- Location: LCCOMB_X23_Y12_N20
\imem1|WideOr4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr4~3_combout\ = (\pc1|PC\(5) & (\pc1|PC\(0) & (\pc1|PC\(3) $ (!\pc1|PC\(4))))) # (!\pc1|PC\(5) & (\pc1|PC\(3) & (\pc1|PC\(4) $ (!\pc1|PC\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(3),
	datab => \pc1|PC\(4),
	datac => \pc1|PC\(0),
	datad => \pc1|PC\(5),
	combout => \imem1|WideOr4~3_combout\);

-- Location: LCCOMB_X23_Y12_N4
\imem1|WideOr4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr4~5_combout\ = (\pc1|PC\(1) & (\imem1|WideOr4~4_combout\ & (\pc1|PC\(2) $ (\imem1|WideOr4~3_combout\)))) # (!\pc1|PC\(1) & ((\pc1|PC\(2) & (!\imem1|WideOr4~4_combout\ & \imem1|WideOr4~3_combout\)) # (!\pc1|PC\(2) & (\imem1|WideOr4~4_combout\ 
-- & !\imem1|WideOr4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(1),
	datab => \pc1|PC\(2),
	datac => \imem1|WideOr4~4_combout\,
	datad => \imem1|WideOr4~3_combout\,
	combout => \imem1|WideOr4~5_combout\);

-- Location: LCCOMB_X23_Y12_N8
\imem1|WideOr4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr4~8_combout\ = (!\pc1|PC\(2) & (!\pc1|PC\(0) & (!\pc1|PC\(3) & !\pc1|PC\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(2),
	datab => \pc1|PC\(0),
	datac => \pc1|PC\(3),
	datad => \pc1|PC\(1),
	combout => \imem1|WideOr4~8_combout\);

-- Location: LCCOMB_X23_Y12_N28
\imem1|WideOr4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr4~1_combout\ = (!\pc1|PC\(2) & (\pc1|PC\(0) & (!\pc1|PC\(3) & \pc1|PC\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(2),
	datab => \pc1|PC\(0),
	datac => \pc1|PC\(3),
	datad => \pc1|PC\(1),
	combout => \imem1|WideOr4~1_combout\);

-- Location: LCCOMB_X23_Y12_N26
\imem1|WideOr4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr4~7_combout\ = (\pc1|PC\(4) & (\pc1|PC\(5))) # (!\pc1|PC\(4) & ((\pc1|PC\(5) & (!\imem1|WideOr4~2_combout\)) # (!\pc1|PC\(5) & ((!\imem1|WideOr4~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(4),
	datab => \pc1|PC\(5),
	datac => \imem1|WideOr4~2_combout\,
	datad => \imem1|WideOr4~1_combout\,
	combout => \imem1|WideOr4~7_combout\);

-- Location: LCCOMB_X23_Y12_N18
\imem1|WideOr4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr4~9_combout\ = (\pc1|PC\(4) & ((\imem1|WideOr4~7_combout\ & (!\imem1|WideOr4~8_combout\)) # (!\imem1|WideOr4~7_combout\ & ((!\imem1|WideOr4~0_combout\))))) # (!\pc1|PC\(4) & (((\imem1|WideOr4~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(4),
	datab => \imem1|WideOr4~8_combout\,
	datac => \imem1|WideOr4~7_combout\,
	datad => \imem1|WideOr4~0_combout\,
	combout => \imem1|WideOr4~9_combout\);

-- Location: LCCOMB_X23_Y12_N16
\imem1|WideOr4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr4~10_combout\ = (\pc1|PC\(6) & (!\imem1|WideOr4~5_combout\)) # (!\pc1|PC\(6) & ((\imem1|WideOr4~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc1|PC\(6),
	datac => \imem1|WideOr4~5_combout\,
	datad => \imem1|WideOr4~9_combout\,
	combout => \imem1|WideOr4~10_combout\);

-- Location: LCCOMB_X23_Y12_N2
\imem1|WideOr4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr4~11_combout\ = (\pc1|PC\(7) & (\imem1|WideOr7~2_combout\ & (!\imem1|WideOr4~6_combout\))) # (!\pc1|PC\(7) & (((\imem1|WideOr4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr7~2_combout\,
	datab => \pc1|PC\(7),
	datac => \imem1|WideOr4~6_combout\,
	datad => \imem1|WideOr4~10_combout\,
	combout => \imem1|WideOr4~11_combout\);

-- Location: LCCOMB_X22_Y15_N14
\imem1|WideOr5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr5~1_combout\ = (\pc1|PC\(3) & ((\pc1|PC\(2) & (!\pc1|PC\(4) & \pc1|PC\(5))) # (!\pc1|PC\(2) & (\pc1|PC\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(2),
	datab => \pc1|PC\(4),
	datac => \pc1|PC\(5),
	datad => \pc1|PC\(3),
	combout => \imem1|WideOr5~1_combout\);

-- Location: LCCOMB_X22_Y15_N26
\imem1|WideOr5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr5~5_combout\ = (\pc1|PC\(3) & (!\pc1|PC\(2) & (\pc1|PC\(4) & !\pc1|PC\(5)))) # (!\pc1|PC\(3) & (\pc1|PC\(5) & (\pc1|PC\(2) $ (!\pc1|PC\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(2),
	datab => \pc1|PC\(4),
	datac => \pc1|PC\(3),
	datad => \pc1|PC\(5),
	combout => \imem1|WideOr5~5_combout\);

-- Location: LCCOMB_X22_Y15_N20
\imem1|WideOr5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr5~4_combout\ = (!\pc1|PC\(4) & (\pc1|PC\(3) & ((\pc1|PC\(2)) # (!\pc1|PC\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(2),
	datab => \pc1|PC\(4),
	datac => \pc1|PC\(3),
	datad => \pc1|PC\(5),
	combout => \imem1|WideOr5~4_combout\);

-- Location: LCCOMB_X22_Y15_N4
\imem1|WideOr5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr5~6_combout\ = (\pc1|PC\(0) & (!\pc1|PC\(1))) # (!\pc1|PC\(0) & ((\pc1|PC\(1) & ((!\imem1|WideOr5~4_combout\))) # (!\pc1|PC\(1) & (!\imem1|WideOr5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001101100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(0),
	datab => \pc1|PC\(1),
	datac => \imem1|WideOr5~5_combout\,
	datad => \imem1|WideOr5~4_combout\,
	combout => \imem1|WideOr5~6_combout\);

-- Location: LCCOMB_X22_Y15_N16
\imem1|WideOr5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr5~2_combout\ = (\pc1|PC\(5) & (\pc1|PC\(2) $ (((!\pc1|PC\(4) & !\pc1|PC\(3)))))) # (!\pc1|PC\(5) & (((\pc1|PC\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(2),
	datab => \pc1|PC\(4),
	datac => \pc1|PC\(3),
	datad => \pc1|PC\(5),
	combout => \imem1|WideOr5~2_combout\);

-- Location: LCCOMB_X22_Y15_N6
\imem1|WideOr5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr5~3_combout\ = (!\pc1|PC\(7) & (((\pc1|PC\(1)) # (\imem1|WideOr5~2_combout\)) # (!\pc1|PC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(0),
	datab => \pc1|PC\(7),
	datac => \pc1|PC\(1),
	datad => \imem1|WideOr5~2_combout\,
	combout => \imem1|WideOr5~3_combout\);

-- Location: LCCOMB_X22_Y15_N30
\imem1|WideOr5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr5~7_combout\ = (\imem1|WideOr5~3_combout\ & ((\imem1|WideOr5~6_combout\) # ((\pc1|PC\(0) & !\imem1|WideOr5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(0),
	datab => \imem1|WideOr5~1_combout\,
	datac => \imem1|WideOr5~6_combout\,
	datad => \imem1|WideOr5~3_combout\,
	combout => \imem1|WideOr5~7_combout\);

-- Location: LCCOMB_X21_Y13_N16
\imem1|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr5~0_combout\ = (\imem1|WideOr0~13_combout\ & !\imem1|WideOr3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \imem1|WideOr0~13_combout\,
	datad => \imem1|WideOr3~4_combout\,
	combout => \imem1|WideOr5~0_combout\);

-- Location: LCCOMB_X22_Y15_N12
\imem1|WideOr5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr5~8_combout\ = (\pc1|PC\(0) & (!\pc1|PC\(3) & (\pc1|PC\(1)))) # (!\pc1|PC\(0) & ((\pc1|PC\(3) & (\pc1|PC\(1) $ (!\pc1|PC\(5)))) # (!\pc1|PC\(3) & (!\pc1|PC\(1) & \pc1|PC\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(0),
	datab => \pc1|PC\(3),
	datac => \pc1|PC\(1),
	datad => \pc1|PC\(5),
	combout => \imem1|WideOr5~8_combout\);

-- Location: LCCOMB_X22_Y15_N22
\imem1|WideOr5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr5~9_combout\ = (\pc1|PC\(3) & ((\pc1|PC\(0)) # (\pc1|PC\(1) $ (!\pc1|PC\(5))))) # (!\pc1|PC\(3) & ((\pc1|PC\(1) & ((!\pc1|PC\(0)) # (!\pc1|PC\(5)))) # (!\pc1|PC\(1) & ((\pc1|PC\(5)) # (\pc1|PC\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(3),
	datab => \pc1|PC\(1),
	datac => \pc1|PC\(5),
	datad => \pc1|PC\(0),
	combout => \imem1|WideOr5~9_combout\);

-- Location: LCCOMB_X22_Y15_N24
\imem1|WideOr5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr5~10_combout\ = (\pc1|PC\(3) & (!\pc1|PC\(5) & (\pc1|PC\(1) $ (!\pc1|PC\(0))))) # (!\pc1|PC\(3) & (\pc1|PC\(0) & ((\pc1|PC\(5)) # (!\pc1|PC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(3),
	datab => \pc1|PC\(1),
	datac => \pc1|PC\(5),
	datad => \pc1|PC\(0),
	combout => \imem1|WideOr5~10_combout\);

-- Location: LCCOMB_X22_Y15_N18
\imem1|WideOr5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr5~11_combout\ = (\pc1|PC\(2) & ((\pc1|PC\(4)) # ((\imem1|WideOr5~9_combout\)))) # (!\pc1|PC\(2) & (!\pc1|PC\(4) & ((!\imem1|WideOr5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(2),
	datab => \pc1|PC\(4),
	datac => \imem1|WideOr5~9_combout\,
	datad => \imem1|WideOr5~10_combout\,
	combout => \imem1|WideOr5~11_combout\);

-- Location: LCCOMB_X22_Y15_N8
\imem1|WideOr5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr5~12_combout\ = (\pc1|PC\(0) & (\pc1|PC\(5) & (\pc1|PC\(1) $ (\pc1|PC\(3))))) # (!\pc1|PC\(0) & (((\pc1|PC\(3) & !\pc1|PC\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(0),
	datab => \pc1|PC\(1),
	datac => \pc1|PC\(3),
	datad => \pc1|PC\(5),
	combout => \imem1|WideOr5~12_combout\);

-- Location: LCCOMB_X22_Y15_N10
\imem1|WideOr5~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr5~13_combout\ = (!\pc1|PC\(7) & ((\pc1|PC\(4) & ((!\imem1|WideOr5~11_combout\) # (!\imem1|WideOr5~12_combout\))) # (!\pc1|PC\(4) & ((\imem1|WideOr5~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(4),
	datab => \pc1|PC\(7),
	datac => \imem1|WideOr5~12_combout\,
	datad => \imem1|WideOr5~11_combout\,
	combout => \imem1|WideOr5~13_combout\);

-- Location: LCCOMB_X22_Y15_N28
\imem1|WideOr5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr5~14_combout\ = (\imem1|WideOr5~13_combout\ & ((\imem1|WideOr5~11_combout\) # (!\imem1|WideOr5~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr5~8_combout\,
	datab => \imem1|WideOr5~11_combout\,
	datad => \imem1|WideOr5~13_combout\,
	combout => \imem1|WideOr5~14_combout\);

-- Location: LCCOMB_X22_Y14_N24
\imem1|WideOr5~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr5~15_combout\ = (\imem1|WideOr5~0_combout\) # ((\pc1|PC\(6) & ((\imem1|WideOr5~14_combout\))) # (!\pc1|PC\(6) & (\imem1|WideOr5~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr5~7_combout\,
	datab => \pc1|PC\(6),
	datac => \imem1|WideOr5~0_combout\,
	datad => \imem1|WideOr5~14_combout\,
	combout => \imem1|WideOr5~15_combout\);

-- Location: LCCOMB_X22_Y14_N18
\dc1|toalu[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dc1|toalu[0]~0_combout\ = (!\imem1|WideOr7~19_combout\ & \imem1|WideOr5~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \imem1|WideOr7~19_combout\,
	datad => \imem1|WideOr5~15_combout\,
	combout => \dc1|toalu[0]~0_combout\);

-- Location: LCCOMB_X22_Y14_N20
\dc1|toalu[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dc1|toalu[0]~4_combout\ = (\imem1|WideOr4~11_combout\ & (\imem1|WideOr8~12_combout\ & (!\imem1|WideOr1~8_combout\ & \dc1|toalu[0]~0_combout\))) # (!\imem1|WideOr4~11_combout\ & (((\imem1|WideOr1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr8~12_combout\,
	datab => \imem1|WideOr4~11_combout\,
	datac => \imem1|WideOr1~8_combout\,
	datad => \dc1|toalu[0]~0_combout\,
	combout => \dc1|toalu[0]~4_combout\);

-- Location: LCCOMB_X22_Y14_N30
\dc1|toalu[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dc1|toalu[0]~5_combout\ = (!\imem1|WideOr0~15_combout\ & (\dc1|tomux2~0_combout\ & \dc1|toalu[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \imem1|WideOr0~15_combout\,
	datac => \dc1|tomux2~0_combout\,
	datad => \dc1|toalu[0]~4_combout\,
	combout => \dc1|toalu[0]~5_combout\);

-- Location: LCCOMB_X21_Y14_N28
\imem1|WideOr2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr2~4_combout\ = (\imem1|WideOr2~1_combout\) # ((\pc1|PC\(5) & \imem1|WideOr2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(5),
	datac => \imem1|WideOr2~1_combout\,
	datad => \imem1|WideOr2~3_combout\,
	combout => \imem1|WideOr2~4_combout\);

-- Location: LCCOMB_X21_Y14_N26
\rf1|core~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~104_combout\ = (\imem1|WideOr3~11_combout\ & (!\imem1|WideOr2~4_combout\ & (!\imem1|WideOr1~8_combout\ & !\imem1|WideOr0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr3~11_combout\,
	datab => \imem1|WideOr2~4_combout\,
	datac => \imem1|WideOr1~8_combout\,
	datad => \imem1|WideOr0~15_combout\,
	combout => \rf1|core~104_combout\);

-- Location: LCCOMB_X21_Y13_N6
\imem1|WideOr6~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr6~13_combout\ = (\pc1|PC\(1) & ((\pc1|PC\(2) & ((\pc1|PC\(3)))) # (!\pc1|PC\(2) & (\pc1|PC\(0) & !\pc1|PC\(3))))) # (!\pc1|PC\(1) & (((\pc1|PC\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(1),
	datab => \pc1|PC\(2),
	datac => \pc1|PC\(0),
	datad => \pc1|PC\(3),
	combout => \imem1|WideOr6~13_combout\);

-- Location: LCCOMB_X22_Y13_N16
\imem1|WideOr6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr6~4_combout\ = (\pc1|PC\(6)) # ((\pc1|PC\(3) & ((!\pc1|PC\(2)) # (!\pc1|PC\(0)))) # (!\pc1|PC\(3) & ((\pc1|PC\(0)) # (\pc1|PC\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(3),
	datab => \pc1|PC\(6),
	datac => \pc1|PC\(0),
	datad => \pc1|PC\(2),
	combout => \imem1|WideOr6~4_combout\);

-- Location: LCCOMB_X22_Y13_N8
\imem1|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr6~0_combout\ = (\pc1|PC\(3) & ((\pc1|PC\(6) & (!\pc1|PC\(0) & !\pc1|PC\(2))) # (!\pc1|PC\(6) & (\pc1|PC\(0) $ (\pc1|PC\(2)))))) # (!\pc1|PC\(3) & (\pc1|PC\(0) $ (((\pc1|PC\(6) & \pc1|PC\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(3),
	datab => \pc1|PC\(6),
	datac => \pc1|PC\(0),
	datad => \pc1|PC\(2),
	combout => \imem1|WideOr6~0_combout\);

-- Location: LCCOMB_X22_Y13_N26
\imem1|WideOr6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr6~1_combout\ = (\pc1|PC\(6) & (((\pc1|PC\(3) & \pc1|PC\(2))))) # (!\pc1|PC\(6) & (\pc1|PC\(2) $ (((!\pc1|PC\(0) & \pc1|PC\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(6),
	datab => \pc1|PC\(0),
	datac => \pc1|PC\(3),
	datad => \pc1|PC\(2),
	combout => \imem1|WideOr6~1_combout\);

-- Location: LCCOMB_X22_Y13_N24
\imem1|WideOr6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr6~2_combout\ = (\pc1|PC\(3) & (!\pc1|PC\(0) & ((\pc1|PC\(6)) # (\pc1|PC\(2))))) # (!\pc1|PC\(3) & ((\pc1|PC\(0) & ((!\pc1|PC\(2)))) # (!\pc1|PC\(0) & (\pc1|PC\(6) & \pc1|PC\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(6),
	datab => \pc1|PC\(3),
	datac => \pc1|PC\(0),
	datad => \pc1|PC\(2),
	combout => \imem1|WideOr6~2_combout\);

-- Location: LCCOMB_X22_Y13_N6
\imem1|WideOr6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr6~3_combout\ = (\pc1|PC\(1) & ((\pc1|PC\(4)) # ((!\imem1|WideOr6~1_combout\)))) # (!\pc1|PC\(1) & (!\pc1|PC\(4) & ((!\imem1|WideOr6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(1),
	datab => \pc1|PC\(4),
	datac => \imem1|WideOr6~1_combout\,
	datad => \imem1|WideOr6~2_combout\,
	combout => \imem1|WideOr6~3_combout\);

-- Location: LCCOMB_X22_Y13_N14
\imem1|WideOr6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr6~5_combout\ = (\pc1|PC\(4) & ((\imem1|WideOr6~3_combout\ & (\imem1|WideOr6~4_combout\)) # (!\imem1|WideOr6~3_combout\ & ((!\imem1|WideOr6~0_combout\))))) # (!\pc1|PC\(4) & (((\imem1|WideOr6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(4),
	datab => \imem1|WideOr6~4_combout\,
	datac => \imem1|WideOr6~0_combout\,
	datad => \imem1|WideOr6~3_combout\,
	combout => \imem1|WideOr6~5_combout\);

-- Location: LCCOMB_X22_Y13_N12
\imem1|WideOr6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr6~6_combout\ = (\pc1|PC\(2) & (!\pc1|PC\(3) & (\pc1|PC\(6) $ (\pc1|PC\(1))))) # (!\pc1|PC\(2) & (\pc1|PC\(1) & (\pc1|PC\(6) $ (!\pc1|PC\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(2),
	datab => \pc1|PC\(6),
	datac => \pc1|PC\(3),
	datad => \pc1|PC\(1),
	combout => \imem1|WideOr6~6_combout\);

-- Location: LCCOMB_X22_Y13_N4
\imem1|WideOr6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr6~10_combout\ = (\pc1|PC\(6) & (\pc1|PC\(3) & ((\pc1|PC\(2)) # (!\pc1|PC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(2),
	datab => \pc1|PC\(6),
	datac => \pc1|PC\(3),
	datad => \pc1|PC\(1),
	combout => \imem1|WideOr6~10_combout\);

-- Location: LCCOMB_X22_Y13_N30
\imem1|WideOr6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr6~7_combout\ = (\pc1|PC\(6) & (!\pc1|PC\(1) & (\pc1|PC\(2) $ (\pc1|PC\(3))))) # (!\pc1|PC\(6) & (\pc1|PC\(2) & (\pc1|PC\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(2),
	datab => \pc1|PC\(6),
	datac => \pc1|PC\(3),
	datad => \pc1|PC\(1),
	combout => \imem1|WideOr6~7_combout\);

-- Location: LCCOMB_X22_Y13_N20
\imem1|WideOr6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr6~8_combout\ = (\pc1|PC\(6) & (((!\pc1|PC\(3) & !\pc1|PC\(2))))) # (!\pc1|PC\(6) & (\pc1|PC\(1) $ (((\pc1|PC\(3) & \pc1|PC\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(1),
	datab => \pc1|PC\(6),
	datac => \pc1|PC\(3),
	datad => \pc1|PC\(2),
	combout => \imem1|WideOr6~8_combout\);

-- Location: LCCOMB_X22_Y13_N18
\imem1|WideOr6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr6~9_combout\ = (\pc1|PC\(4) & (((\pc1|PC\(0))))) # (!\pc1|PC\(4) & ((\pc1|PC\(0) & (!\imem1|WideOr6~7_combout\)) # (!\pc1|PC\(0) & ((!\imem1|WideOr6~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr6~7_combout\,
	datab => \pc1|PC\(4),
	datac => \pc1|PC\(0),
	datad => \imem1|WideOr6~8_combout\,
	combout => \imem1|WideOr6~9_combout\);

-- Location: LCCOMB_X22_Y13_N10
\imem1|WideOr6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr6~11_combout\ = (\pc1|PC\(4) & ((\imem1|WideOr6~9_combout\ & ((!\imem1|WideOr6~10_combout\))) # (!\imem1|WideOr6~9_combout\ & (!\imem1|WideOr6~6_combout\)))) # (!\pc1|PC\(4) & (((\imem1|WideOr6~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr6~6_combout\,
	datab => \pc1|PC\(4),
	datac => \imem1|WideOr6~10_combout\,
	datad => \imem1|WideOr6~9_combout\,
	combout => \imem1|WideOr6~11_combout\);

-- Location: LCCOMB_X22_Y13_N28
\imem1|WideOr6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr6~12_combout\ = (!\pc1|PC\(7) & ((\pc1|PC\(5) & (\imem1|WideOr6~5_combout\)) # (!\pc1|PC\(5) & ((\imem1|WideOr6~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(7),
	datab => \pc1|PC\(5),
	datac => \imem1|WideOr6~5_combout\,
	datad => \imem1|WideOr6~11_combout\,
	combout => \imem1|WideOr6~12_combout\);

-- Location: LCCOMB_X22_Y13_N2
\imem1|WideOr6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr6~14_combout\ = (\imem1|WideOr6~12_combout\) # ((\imem1|WideOr0~13_combout\ & !\imem1|WideOr6~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr0~13_combout\,
	datac => \imem1|WideOr6~13_combout\,
	datad => \imem1|WideOr6~12_combout\,
	combout => \imem1|WideOr6~14_combout\);

-- Location: LCCOMB_X23_Y11_N4
\dc1|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dc1|WideOr3~0_combout\ = (\imem1|WideOr5~15_combout\ & ((\imem1|WideOr8~12_combout\ & ((!\imem1|WideOr7~19_combout\))) # (!\imem1|WideOr8~12_combout\ & (\imem1|WideOr6~14_combout\ & \imem1|WideOr7~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr6~14_combout\,
	datab => \imem1|WideOr8~12_combout\,
	datac => \imem1|WideOr7~19_combout\,
	datad => \imem1|WideOr5~15_combout\,
	combout => \dc1|WideOr3~0_combout\);

-- Location: LCCOMB_X23_Y11_N14
\dc1|toalu[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dc1|toalu[2]~3_combout\ = (\rf1|core~104_combout\ & (\dc1|WideOr3~0_combout\ & \imem1|WideOr4~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~104_combout\,
	datac => \dc1|WideOr3~0_combout\,
	datad => \imem1|WideOr4~11_combout\,
	combout => \dc1|toalu[2]~3_combout\);

-- Location: LCCOMB_X21_Y14_N8
\dc1|tomux5[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dc1|tomux5[1]~0_combout\ = (!\imem1|WideOr2~4_combout\ & (\imem1|WideOr3~11_combout\ & (\imem1|WideOr1~8_combout\ & !\imem1|WideOr0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr2~4_combout\,
	datab => \imem1|WideOr3~11_combout\,
	datac => \imem1|WideOr1~8_combout\,
	datad => \imem1|WideOr0~15_combout\,
	combout => \dc1|tomux5[1]~0_combout\);

-- Location: LCCOMB_X23_Y11_N28
\dc1|toMarwe~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dc1|toMarwe~3_combout\ = (!\imem1|WideOr7~19_combout\ & (\rf1|core~104_combout\ & \imem1|WideOr5~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr7~19_combout\,
	datac => \rf1|core~104_combout\,
	datad => \imem1|WideOr5~15_combout\,
	combout => \dc1|toMarwe~3_combout\);

-- Location: LCCOMB_X23_Y11_N16
\dc1|toalu[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dc1|toalu[1]~1_combout\ = (!\imem1|WideOr6~14_combout\ & (\imem1|WideOr8~12_combout\ & (\imem1|WideOr4~11_combout\ & \dc1|toMarwe~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr6~14_combout\,
	datab => \imem1|WideOr8~12_combout\,
	datac => \imem1|WideOr4~11_combout\,
	datad => \dc1|toMarwe~3_combout\,
	combout => \dc1|toalu[1]~1_combout\);

-- Location: LCCOMB_X23_Y11_N2
\dc1|toalu[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dc1|toalu[1]~2_combout\ = (\dc1|toalu[1]~1_combout\) # ((\imem1|WideOr1~8_combout\ & (!\imem1|WideOr0~15_combout\ & \dc1|tomux5[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr1~8_combout\,
	datab => \imem1|WideOr0~15_combout\,
	datac => \dc1|tomux5[1]~0_combout\,
	datad => \dc1|toalu[1]~1_combout\,
	combout => \dc1|toalu[1]~2_combout\);

-- Location: LCCOMB_X23_Y11_N26
\alu1|Mux8~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux8~11_combout\ = (\dc1|toalu[0]~5_combout\ & (\dc1|toalu[2]~3_combout\ & !\dc1|toalu[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dc1|toalu[0]~5_combout\,
	datac => \dc1|toalu[2]~3_combout\,
	datad => \dc1|toalu[1]~2_combout\,
	combout => \alu1|Mux8~11_combout\);

-- Location: LCCOMB_X22_Y14_N16
\dc1|toBarwe~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dc1|toBarwe~2_combout\ = (\imem1|WideOr6~14_combout\ & (!\imem1|WideOr7~19_combout\ & (!\imem1|WideOr4~11_combout\ & \imem1|WideOr5~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr6~14_combout\,
	datab => \imem1|WideOr7~19_combout\,
	datac => \imem1|WideOr4~11_combout\,
	datad => \imem1|WideOr5~15_combout\,
	combout => \dc1|toBarwe~2_combout\);

-- Location: LCCOMB_X22_Y14_N26
\dc1|WideOr4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dc1|WideOr4~2_combout\ = (!\imem1|WideOr8~12_combout\ & (\dc1|tomux2~0_combout\ & \dc1|toBarwe~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr8~12_combout\,
	datac => \dc1|tomux2~0_combout\,
	datad => \dc1|toBarwe~2_combout\,
	combout => \dc1|WideOr4~2_combout\);

-- Location: LCCOMB_X22_Y14_N10
\dc1|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dc1|WideOr4~0_combout\ = (\imem1|WideOr4~11_combout\ & (\imem1|WideOr7~19_combout\ $ (\imem1|WideOr5~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \imem1|WideOr7~19_combout\,
	datac => \imem1|WideOr4~11_combout\,
	datad => \imem1|WideOr5~15_combout\,
	combout => \dc1|WideOr4~0_combout\);

-- Location: LCCOMB_X22_Y14_N28
\dc1|WideOr4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dc1|WideOr4~1_combout\ = (\imem1|WideOr8~12_combout\ & (!\imem1|WideOr6~14_combout\ & (\dc1|tomux2~0_combout\ & \dc1|WideOr4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr8~12_combout\,
	datab => \imem1|WideOr6~14_combout\,
	datac => \dc1|tomux2~0_combout\,
	datad => \dc1|WideOr4~0_combout\,
	combout => \dc1|WideOr4~1_combout\);

-- Location: LCCOMB_X22_Y14_N2
\dc1|tomux5[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dc1|tomux5[0]~1_combout\ = (!\imem1|WideOr1~8_combout\ & (!\imem1|WideOr0~15_combout\ & ((\dc1|WideOr4~2_combout\) # (\dc1|WideOr4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr1~8_combout\,
	datab => \imem1|WideOr0~15_combout\,
	datac => \dc1|WideOr4~2_combout\,
	datad => \dc1|WideOr4~1_combout\,
	combout => \dc1|tomux5[0]~1_combout\);

-- Location: LCCOMB_X23_Y12_N24
\dc1|toDmemwe~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dc1|toDmemwe~0_combout\ = (\imem1|WideOr7~19_combout\ & (\imem1|WideOr4~11_combout\ & (\imem1|WideOr8~12_combout\ & !\imem1|WideOr6~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr7~19_combout\,
	datab => \imem1|WideOr4~11_combout\,
	datac => \imem1|WideOr8~12_combout\,
	datad => \imem1|WideOr6~14_combout\,
	combout => \dc1|toDmemwe~0_combout\);

-- Location: LCCOMB_X23_Y12_N12
\mux41|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux41|Mux7~0_combout\ = ((\imem1|WideOr5~15_combout\) # (!\dc1|toDmemwe~0_combout\)) # (!\dc1|tomux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dc1|tomux2~0_combout\,
	datac => \imem1|WideOr5~15_combout\,
	datad => \dc1|toDmemwe~0_combout\,
	combout => \mux41|Mux7~0_combout\);

-- Location: LCCOMB_X23_Y12_N22
\mux41|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux41|Mux5~0_combout\ = (\imem1|WideOr8~12_combout\ & ((\imem1|WideOr5~15_combout\) # ((!\dc1|toDmemwe~0_combout\)))) # (!\imem1|WideOr8~12_combout\ & (!\dc1|toBarwe~2_combout\ & ((\imem1|WideOr5~15_combout\) # (!\dc1|toDmemwe~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr8~12_combout\,
	datab => \imem1|WideOr5~15_combout\,
	datac => \dc1|toBarwe~2_combout\,
	datad => \dc1|toDmemwe~0_combout\,
	combout => \mux41|Mux5~0_combout\);

-- Location: LCCOMB_X23_Y12_N10
\mux41|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux41|Mux7~1_combout\ = (\mux41|Mux5~0_combout\ & (((\rf1|core~131_combout\)))) # (!\mux41|Mux5~0_combout\ & ((\rf1|core~104_combout\ & (\mux41|Mux7~0_combout\)) # (!\rf1|core~104_combout\ & ((\rf1|core~131_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux41|Mux7~0_combout\,
	datab => \rf1|core~131_combout\,
	datac => \mux41|Mux5~0_combout\,
	datad => \rf1|core~104_combout\,
	combout => \mux41|Mux7~1_combout\);

-- Location: LCCOMB_X19_Y11_N12
\dc1|toDmemwe~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dc1|toDmemwe~1_combout\ = (\dc1|toDmemwe~0_combout\ & (\imem1|WideOr5~15_combout\ & \rf1|core~104_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc1|toDmemwe~0_combout\,
	datab => \imem1|WideOr5~15_combout\,
	datac => \rf1|core~104_combout\,
	combout => \dc1|toDmemwe~1_combout\);

-- Location: LCCOMB_X21_Y11_N2
\dc1|toMarwe~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dc1|toMarwe~2_combout\ = (\imem1|WideOr4~11_combout\ & (!\imem1|WideOr6~14_combout\ & (!\imem1|WideOr8~12_combout\ & \dc1|toMarwe~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr4~11_combout\,
	datab => \imem1|WideOr6~14_combout\,
	datac => \imem1|WideOr8~12_combout\,
	datad => \dc1|toMarwe~3_combout\,
	combout => \dc1|toMarwe~2_combout\);

-- Location: FF_X21_Y11_N7
\mar1|MarValue[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf1|core~131_combout\,
	sload => VCC,
	ena => \dc1|toMarwe~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mar1|MarValue\(0));

-- Location: LCCOMB_X21_Y11_N20
\dc1|WideOr4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dc1|WideOr4~3_combout\ = (!\imem1|WideOr2~4_combout\ & (\imem1|WideOr4~11_combout\ & \imem1|WideOr3~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \imem1|WideOr2~4_combout\,
	datac => \imem1|WideOr4~11_combout\,
	datad => \imem1|WideOr3~11_combout\,
	combout => \dc1|WideOr4~3_combout\);

-- Location: LCCOMB_X24_Y11_N2
\dc1|tomux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dc1|tomux2~1_combout\ = (!\imem1|WideOr7~19_combout\ & (\imem1|WideOr6~14_combout\ & (\dc1|WideOr4~3_combout\ & !\imem1|WideOr8~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr7~19_combout\,
	datab => \imem1|WideOr6~14_combout\,
	datac => \dc1|WideOr4~3_combout\,
	datad => \imem1|WideOr8~12_combout\,
	combout => \dc1|tomux2~1_combout\);

-- Location: LCCOMB_X24_Y11_N0
\mux21|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux21|Mux6~0_combout\ = (\imem1|WideOr0~15_combout\) # ((!\imem1|WideOr1~8_combout\ & \dc1|tomux2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr0~15_combout\,
	datac => \imem1|WideOr1~8_combout\,
	datad => \dc1|tomux2~1_combout\,
	combout => \mux21|Mux6~0_combout\);

-- Location: LCCOMB_X19_Y11_N0
\dmem1|guts_rtl_0_bypass[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dmem1|guts_rtl_0_bypass[0]~feeder_combout\ = \dc1|toDmemwe~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dc1|toDmemwe~1_combout\,
	combout => \dmem1|guts_rtl_0_bypass[0]~feeder_combout\);

-- Location: FF_X19_Y11_N1
\dmem1|guts_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dmem1|guts_rtl_0_bypass[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dmem1|guts_rtl_0_bypass\(0));

-- Location: LCCOMB_X22_Y10_N14
\mux21|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux21|Mux5~0_combout\ = (!\mux21|Mux6~0_combout\ & ((!\dc1|toalu[2]~3_combout\) # (!\dc1|toalu[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dc1|toalu[1]~2_combout\,
	datac => \mux21|Mux6~0_combout\,
	datad => \dc1|toalu[2]~3_combout\,
	combout => \mux21|Mux5~0_combout\);

-- Location: FF_X19_Y11_N15
\dmem1|guts_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf1|core~248_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dmem1|guts_rtl_0_bypass\(20));

-- Location: LCCOMB_X24_Y11_N26
\mux21|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux21|Mux6~1_combout\ = (\imem1|WideOr5~15_combout\ & (\dc1|tomux2~1_combout\ & (!\imem1|WideOr1~8_combout\ & !\imem1|WideOr0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr5~15_combout\,
	datab => \dc1|tomux2~1_combout\,
	datac => \imem1|WideOr1~8_combout\,
	datad => \imem1|WideOr0~15_combout\,
	combout => \mux21|Mux6~1_combout\);

-- Location: LCCOMB_X21_Y11_N26
\mux21|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux21|Mux5~1_combout\ = (\mux21|Mux6~8_combout\ & ((\rf1|core~221_combout\) # ((\mux21|Mux6~1_combout\)))) # (!\mux21|Mux6~8_combout\ & (((!\imem1|WideOr6~14_combout\ & !\mux21|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~221_combout\,
	datab => \imem1|WideOr6~14_combout\,
	datac => \mux21|Mux6~8_combout\,
	datad => \mux21|Mux6~1_combout\,
	combout => \mux21|Mux5~1_combout\);

-- Location: FF_X21_Y11_N17
\dmem1|guts_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf1|core~221_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dmem1|guts_rtl_0_bypass\(19));

-- Location: LCCOMB_X19_Y11_N22
\mux21|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux21|Mux3~0_combout\ = (\mux21|Mux6~8_combout\ & ((\rf1|core~113_combout\) # ((\mux21|Mux6~1_combout\)))) # (!\mux21|Mux6~8_combout\ & (((!\imem1|WideOr4~11_combout\ & !\mux21|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~113_combout\,
	datab => \imem1|WideOr4~11_combout\,
	datac => \mux21|Mux6~8_combout\,
	datad => \mux21|Mux6~1_combout\,
	combout => \mux21|Mux3~0_combout\);

-- Location: FF_X25_Y13_N5
\mar1|MarValue[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf1|core~167_combout\,
	sload => VCC,
	ena => \dc1|toMarwe~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mar1|MarValue\(5));

-- Location: FF_X25_Y13_N27
\mar1|MarValue[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf1|core~194_combout\,
	ena => \dc1|toMarwe~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mar1|MarValue\(7));

-- Location: M9K_X15_Y11_N0
\dmem1|guts_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "dmem:dmem1|altsyncram:guts_rtl_0|altsyncram_nsd1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 255,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 8,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 255,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dc1|toDmemwe~1_combout\,
	portbre => VCC,
	portbaddrstall => \dc1|ALT_INV_toMarwe~2_combout\,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \dc1|toDmemwe~1_combout\,
	portadatain => \dmem1|guts_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \dmem1|guts_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \dmem1|guts_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dmem1|guts_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: FF_X19_Y11_N9
\dmem1|guts_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf1|core~149_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dmem1|guts_rtl_0_bypass\(23));

-- Location: LCCOMB_X19_Y11_N10
\mux21|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux21|Mux1~0_combout\ = (\mux21|Mux6~8_combout\ & (((\rf1|core~149_combout\) # (\mux21|Mux6~1_combout\)))) # (!\mux21|Mux6~8_combout\ & (\imem1|WideOr2~4_combout\ & ((!\mux21|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr2~4_combout\,
	datab => \rf1|core~149_combout\,
	datac => \mux21|Mux6~8_combout\,
	datad => \mux21|Mux6~1_combout\,
	combout => \mux21|Mux1~0_combout\);

-- Location: LCCOMB_X19_Y11_N8
\mux21|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux21|Mux1~1_combout\ = (\mux21|Mux6~1_combout\ & ((\mux21|Mux1~0_combout\ & ((\dmem1|guts_rtl_0_bypass\(23)))) # (!\mux21|Mux1~0_combout\ & (\dmem1|guts_rtl_0|auto_generated|ram_block1a6\)))) # (!\mux21|Mux6~1_combout\ & (((\mux21|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dmem1|guts_rtl_0|auto_generated|ram_block1a6\,
	datab => \mux21|Mux6~1_combout\,
	datac => \dmem1|guts_rtl_0_bypass\(23),
	datad => \mux21|Mux1~0_combout\,
	combout => \mux21|Mux1~1_combout\);

-- Location: LCCOMB_X24_Y13_N28
\rf1|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|Add1~0_combout\ = \sc1|SC\(2) $ (\sc1|SC\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc1|SC\(2),
	datad => \sc1|SC\(1),
	combout => \rf1|Add1~0_combout\);

-- Location: LCCOMB_X26_Y12_N20
\dc1|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dc1|WideOr2~0_combout\ = (\imem1|WideOr6~14_combout\ & ((\imem1|WideOr5~15_combout\) # (\imem1|WideOr7~19_combout\ $ (!\imem1|WideOr8~12_combout\)))) # (!\imem1|WideOr6~14_combout\ & ((\imem1|WideOr7~19_combout\ & ((\imem1|WideOr8~12_combout\))) # 
-- (!\imem1|WideOr7~19_combout\ & (\imem1|WideOr5~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr6~14_combout\,
	datab => \imem1|WideOr7~19_combout\,
	datac => \imem1|WideOr5~15_combout\,
	datad => \imem1|WideOr8~12_combout\,
	combout => \dc1|WideOr2~0_combout\);

-- Location: LCCOMB_X26_Y12_N2
\dc1|WideOr2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dc1|WideOr2~1_combout\ = (\dc1|tomux2~0_combout\ & ((\dc1|toBarwe~4_combout\) # ((\imem1|WideOr4~11_combout\ & \dc1|WideOr2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr4~11_combout\,
	datab => \dc1|WideOr2~0_combout\,
	datac => \dc1|tomux2~0_combout\,
	datad => \dc1|toBarwe~4_combout\,
	combout => \dc1|WideOr2~1_combout\);

-- Location: LCCOMB_X21_Y12_N16
\dc1|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dc1|WideOr0~0_combout\ = (\imem1|WideOr5~15_combout\ & (((\imem1|WideOr6~14_combout\)))) # (!\imem1|WideOr5~15_combout\ & ((\imem1|WideOr7~19_combout\ & (!\imem1|WideOr6~14_combout\ & \imem1|WideOr8~12_combout\)) # (!\imem1|WideOr7~19_combout\ & 
-- (\imem1|WideOr6~14_combout\ & !\imem1|WideOr8~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr7~19_combout\,
	datab => \imem1|WideOr5~15_combout\,
	datac => \imem1|WideOr6~14_combout\,
	datad => \imem1|WideOr8~12_combout\,
	combout => \dc1|WideOr0~0_combout\);

-- Location: LCCOMB_X23_Y14_N22
\rf1|core~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~251_combout\ = (\imem1|WideOr0~15_combout\) # ((\imem1|WideOr1~8_combout\) # ((\dc1|WideOr4~3_combout\ & \dc1|WideOr0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr0~15_combout\,
	datab => \dc1|WideOr4~3_combout\,
	datac => \imem1|WideOr1~8_combout\,
	datad => \dc1|WideOr0~0_combout\,
	combout => \rf1|core~251_combout\);

-- Location: LCCOMB_X23_Y14_N20
\rf1|core~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~252_combout\ = (\rf1|core~251_combout\ & ((\dc1|tomux2~0_combout\) # ((\imem1|WideOr0~15_combout\) # (!\imem1|WideOr1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~251_combout\,
	datab => \dc1|tomux2~0_combout\,
	datac => \imem1|WideOr1~8_combout\,
	datad => \imem1|WideOr0~15_combout\,
	combout => \rf1|core~252_combout\);

-- Location: LCCOMB_X26_Y12_N30
\dc1|tosc[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dc1|tosc[0]~1_combout\ = (\imem1|WideOr0~15_combout\) # ((!\imem1|WideOr1~8_combout\ & \dc1|WideOr2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr1~8_combout\,
	datac => \imem1|WideOr0~15_combout\,
	datad => \dc1|WideOr2~1_combout\,
	combout => \dc1|tosc[0]~1_combout\);

-- Location: LCCOMB_X26_Y12_N12
\rf1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|Mux2~0_combout\ = \sc1|SC\(1) $ (((\dc1|tosc[0]~1_combout\ & ((!\dc1|tosc[1]~0_combout\))) # (!\dc1|tosc[0]~1_combout\ & (\sc1|SC\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(1),
	datab => \sc1|SC\(0),
	datac => \dc1|tosc[0]~1_combout\,
	datad => \dc1|tosc[1]~0_combout\,
	combout => \rf1|Mux2~0_combout\);

-- Location: LCCOMB_X26_Y12_N26
\rf1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|Mux1~0_combout\ = (\dc1|tosc[0]~1_combout\ & ((\sc1|SC~11_combout\))) # (!\dc1|tosc[0]~1_combout\ & (!\rf1|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|Add0~2_combout\,
	datac => \dc1|tosc[0]~1_combout\,
	datad => \sc1|SC~11_combout\,
	combout => \rf1|Mux1~0_combout\);

-- Location: LCCOMB_X26_Y12_N24
\rf1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|Mux0~0_combout\ = (\dc1|tosc[0]~1_combout\ & ((\sc1|SC~12_combout\))) # (!\dc1|tosc[0]~1_combout\ & (!\rf1|Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf1|Add0~1_combout\,
	datac => \dc1|tosc[0]~1_combout\,
	datad => \sc1|SC~12_combout\,
	combout => \rf1|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y12_N10
\rf1|core~264\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~264_combout\ = (!\rf1|Mux2~0_combout\ & (!\rf1|Mux1~0_combout\ & (\rf1|core~249_combout\ & \rf1|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|Mux2~0_combout\,
	datab => \rf1|Mux1~0_combout\,
	datac => \rf1|core~249_combout\,
	datad => \rf1|Mux0~0_combout\,
	combout => \rf1|core~264_combout\);

-- Location: LCCOMB_X24_Y9_N30
\rf1|core~265\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~265_combout\ = (\rf1|core~252_combout\ & (\rf1|core~264_combout\ & ((\dc1|WideOr2~1_combout\) # (!\dc1|tosc[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc1|tosc[1]~0_combout\,
	datab => \dc1|WideOr2~1_combout\,
	datac => \rf1|core~252_combout\,
	datad => \rf1|core~264_combout\,
	combout => \rf1|core~265_combout\);

-- Location: FF_X24_Y9_N3
\rf1|core~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux1~2_combout\,
	sload => VCC,
	ena => \rf1|core~265_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~86_q\);

-- Location: LCCOMB_X24_Y12_N22
\rf1|core~262\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~262_combout\ = (\rf1|Mux0~0_combout\ & (!\rf1|core~249_combout\ & (!\rf1|Mux2~0_combout\ & !\rf1|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|Mux0~0_combout\,
	datab => \rf1|core~249_combout\,
	datac => \rf1|Mux2~0_combout\,
	datad => \rf1|Mux1~0_combout\,
	combout => \rf1|core~262_combout\);

-- Location: LCCOMB_X24_Y12_N8
\rf1|core~263\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~263_combout\ = (\rf1|core~252_combout\ & (\rf1|core~262_combout\ & ((\dc1|WideOr2~1_combout\) # (!\dc1|tosc[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc1|WideOr2~1_combout\,
	datab => \rf1|core~252_combout\,
	datac => \dc1|tosc[1]~0_combout\,
	datad => \rf1|core~262_combout\,
	combout => \rf1|core~263_combout\);

-- Location: FF_X24_Y9_N9
\rf1|core~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux1~2_combout\,
	sload => VCC,
	ena => \rf1|core~263_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~94_q\);

-- Location: LCCOMB_X24_Y9_N8
\rf1|core~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~150_combout\ = (\sc1|SC\(0) & (((\rf1|core~94_q\) # (\sc1|SC\(1))))) # (!\sc1|SC\(0) & (\rf1|core~86_q\ & ((!\sc1|SC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(0),
	datab => \rf1|core~86_q\,
	datac => \rf1|core~94_q\,
	datad => \sc1|SC\(1),
	combout => \rf1|core~150_combout\);

-- Location: LCCOMB_X25_Y12_N30
\rf1|core~260\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~260_combout\ = (!\rf1|core~249_combout\ & (!\rf1|Mux1~0_combout\ & (\rf1|Mux2~0_combout\ & \rf1|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~249_combout\,
	datab => \rf1|Mux1~0_combout\,
	datac => \rf1|Mux2~0_combout\,
	datad => \rf1|Mux0~0_combout\,
	combout => \rf1|core~260_combout\);

-- Location: LCCOMB_X25_Y12_N16
\rf1|core~261\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~261_combout\ = (\rf1|core~260_combout\ & (\rf1|core~252_combout\ & ((\dc1|WideOr2~1_combout\) # (!\dc1|tosc[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc1|WideOr2~1_combout\,
	datab => \dc1|tosc[1]~0_combout\,
	datac => \rf1|core~260_combout\,
	datad => \rf1|core~252_combout\,
	combout => \rf1|core~261_combout\);

-- Location: FF_X26_Y13_N3
\rf1|core~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux1~2_combout\,
	sload => VCC,
	ena => \rf1|core~261_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~78_q\);

-- Location: LCCOMB_X24_Y12_N28
\rf1|core~266\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~266_combout\ = (\rf1|Mux2~0_combout\ & (!\rf1|Mux1~0_combout\ & (\rf1|core~249_combout\ & \rf1|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|Mux2~0_combout\,
	datab => \rf1|Mux1~0_combout\,
	datac => \rf1|core~249_combout\,
	datad => \rf1|Mux0~0_combout\,
	combout => \rf1|core~266_combout\);

-- Location: LCCOMB_X24_Y12_N30
\rf1|core~267\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~267_combout\ = (\rf1|core~252_combout\ & (\rf1|core~266_combout\ & ((\dc1|WideOr2~1_combout\) # (!\dc1|tosc[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc1|tosc[1]~0_combout\,
	datab => \dc1|WideOr2~1_combout\,
	datac => \rf1|core~252_combout\,
	datad => \rf1|core~266_combout\,
	combout => \rf1|core~267_combout\);

-- Location: FF_X26_Y13_N1
\rf1|core~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux1~2_combout\,
	sload => VCC,
	ena => \rf1|core~267_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~70_q\);

-- Location: LCCOMB_X26_Y13_N0
\rf1|core~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~151_combout\ = (\rf1|core~150_combout\ & ((\rf1|core~78_q\) # ((!\sc1|SC\(1))))) # (!\rf1|core~150_combout\ & (((\rf1|core~70_q\ & \sc1|SC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~150_combout\,
	datab => \rf1|core~78_q\,
	datac => \rf1|core~70_q\,
	datad => \sc1|SC\(1),
	combout => \rf1|core~151_combout\);

-- Location: LCCOMB_X25_Y11_N8
\rf1|core~276\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~276_combout\ = (\rf1|core~249_combout\ & (!\rf1|Mux1~0_combout\ & (!\rf1|Mux0~0_combout\ & \rf1|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~249_combout\,
	datab => \rf1|Mux1~0_combout\,
	datac => \rf1|Mux0~0_combout\,
	datad => \rf1|Mux2~0_combout\,
	combout => \rf1|core~276_combout\);

-- Location: LCCOMB_X25_Y11_N2
\rf1|core~277\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~277_combout\ = (\rf1|core~252_combout\ & (\rf1|core~276_combout\ & ((\dc1|WideOr2~1_combout\) # (!\dc1|tosc[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc1|WideOr2~1_combout\,
	datab => \rf1|core~252_combout\,
	datac => \rf1|core~276_combout\,
	datad => \dc1|tosc[1]~0_combout\,
	combout => \rf1|core~277_combout\);

-- Location: FF_X25_Y10_N27
\rf1|core~6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mux21|Mux1~2_combout\,
	ena => \rf1|core~277_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~6_q\);

-- Location: LCCOMB_X24_Y12_N0
\rf1|core~270\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~270_combout\ = (\rf1|Mux2~0_combout\ & (!\rf1|Mux1~0_combout\ & (!\rf1|core~249_combout\ & !\rf1|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|Mux2~0_combout\,
	datab => \rf1|Mux1~0_combout\,
	datac => \rf1|core~249_combout\,
	datad => \rf1|Mux0~0_combout\,
	combout => \rf1|core~270_combout\);

-- Location: LCCOMB_X24_Y12_N14
\rf1|core~271\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~271_combout\ = (\rf1|core~252_combout\ & (\rf1|core~270_combout\ & ((\dc1|WideOr2~1_combout\) # (!\dc1|tosc[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc1|tosc[1]~0_combout\,
	datab => \dc1|WideOr2~1_combout\,
	datac => \rf1|core~252_combout\,
	datad => \rf1|core~270_combout\,
	combout => \rf1|core~271_combout\);

-- Location: FF_X25_Y12_N29
\rf1|core~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux1~2_combout\,
	sload => VCC,
	ena => \rf1|core~271_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~14_q\);

-- Location: LCCOMB_X25_Y12_N18
\rf1|core~272\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~272_combout\ = (!\rf1|core~249_combout\ & (!\rf1|Mux1~0_combout\ & (!\rf1|Mux2~0_combout\ & !\rf1|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~249_combout\,
	datab => \rf1|Mux1~0_combout\,
	datac => \rf1|Mux2~0_combout\,
	datad => \rf1|Mux0~0_combout\,
	combout => \rf1|core~272_combout\);

-- Location: LCCOMB_X25_Y11_N30
\rf1|core~273\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~273_combout\ = (\rf1|core~252_combout\ & (\rf1|core~272_combout\ & ((\dc1|WideOr2~1_combout\) # (!\dc1|tosc[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc1|WideOr2~1_combout\,
	datab => \rf1|core~252_combout\,
	datac => \dc1|tosc[1]~0_combout\,
	datad => \rf1|core~272_combout\,
	combout => \rf1|core~273_combout\);

-- Location: FF_X25_Y11_N13
\rf1|core~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux1~2_combout\,
	sload => VCC,
	ena => \rf1|core~273_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~30_q\);

-- Location: LCCOMB_X26_Y11_N0
\rf1|core~274\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~274_combout\ = (\rf1|core~249_combout\ & (!\rf1|Mux2~0_combout\ & (!\rf1|Mux0~0_combout\ & !\rf1|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~249_combout\,
	datab => \rf1|Mux2~0_combout\,
	datac => \rf1|Mux0~0_combout\,
	datad => \rf1|Mux1~0_combout\,
	combout => \rf1|core~274_combout\);

-- Location: LCCOMB_X26_Y11_N30
\rf1|core~275\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~275_combout\ = (\rf1|core~252_combout\ & (\rf1|core~274_combout\ & ((\dc1|WideOr2~1_combout\) # (!\dc1|tosc[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc1|WideOr2~1_combout\,
	datab => \rf1|core~252_combout\,
	datac => \dc1|tosc[1]~0_combout\,
	datad => \rf1|core~274_combout\,
	combout => \rf1|core~275_combout\);

-- Location: FF_X26_Y11_N19
\rf1|core~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux1~2_combout\,
	sload => VCC,
	ena => \rf1|core~275_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~22_q\);

-- Location: LCCOMB_X26_Y11_N18
\rf1|core~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~156_combout\ = (\sc1|SC\(0) & ((\rf1|core~30_q\) # ((\sc1|SC\(1))))) # (!\sc1|SC\(0) & (((\rf1|core~22_q\ & !\sc1|SC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~30_q\,
	datab => \sc1|SC\(0),
	datac => \rf1|core~22_q\,
	datad => \sc1|SC\(1),
	combout => \rf1|core~156_combout\);

-- Location: LCCOMB_X25_Y12_N28
\rf1|core~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~157_combout\ = (\sc1|SC\(1) & ((\rf1|core~156_combout\ & ((\rf1|core~14_q\))) # (!\rf1|core~156_combout\ & (\rf1|core~6_q\)))) # (!\sc1|SC\(1) & (((\rf1|core~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(1),
	datab => \rf1|core~6_q\,
	datac => \rf1|core~14_q\,
	datad => \rf1|core~156_combout\,
	combout => \rf1|core~157_combout\);

-- Location: LCCOMB_X26_Y15_N30
\rf1|core~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~154_combout\ = (\rf1|core~102_q\ & (!\sc1|SC\(0) & \sc1|SC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf1|core~102_q\,
	datac => \sc1|SC\(0),
	datad => \sc1|SC\(1),
	combout => \rf1|core~154_combout\);

-- Location: LCCOMB_X26_Y14_N20
\rf1|core~46feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~46feeder_combout\ = \mux21|Mux1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux21|Mux1~2_combout\,
	combout => \rf1|core~46feeder_combout\);

-- Location: LCCOMB_X26_Y12_N22
\rf1|core~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~250_combout\ = (\rf1|Mux1~0_combout\ & (!\rf1|Mux0~0_combout\ & (!\rf1|core~249_combout\ & \rf1|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|Mux1~0_combout\,
	datab => \rf1|Mux0~0_combout\,
	datac => \rf1|core~249_combout\,
	datad => \rf1|Mux2~0_combout\,
	combout => \rf1|core~250_combout\);

-- Location: LCCOMB_X26_Y12_N4
\rf1|core~253\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~253_combout\ = (\rf1|core~250_combout\ & (\rf1|core~252_combout\ & ((\dc1|WideOr2~1_combout\) # (!\dc1|tosc[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~250_combout\,
	datab => \dc1|WideOr2~1_combout\,
	datac => \rf1|core~252_combout\,
	datad => \dc1|tosc[1]~0_combout\,
	combout => \rf1|core~253_combout\);

-- Location: FF_X26_Y14_N21
\rf1|core~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf1|core~46feeder_combout\,
	ena => \rf1|core~253_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~46_q\);

-- Location: LCCOMB_X24_Y12_N20
\rf1|core~258\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~258_combout\ = (\rf1|Mux2~0_combout\ & (\rf1|Mux1~0_combout\ & (\rf1|core~249_combout\ & !\rf1|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|Mux2~0_combout\,
	datab => \rf1|Mux1~0_combout\,
	datac => \rf1|core~249_combout\,
	datad => \rf1|Mux0~0_combout\,
	combout => \rf1|core~258_combout\);

-- Location: LCCOMB_X24_Y12_N26
\rf1|core~259\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~259_combout\ = (\rf1|core~252_combout\ & (\rf1|core~258_combout\ & ((\dc1|WideOr2~1_combout\) # (!\dc1|tosc[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc1|tosc[1]~0_combout\,
	datab => \dc1|WideOr2~1_combout\,
	datac => \rf1|core~252_combout\,
	datad => \rf1|core~258_combout\,
	combout => \rf1|core~259_combout\);

-- Location: FF_X24_Y12_N7
\rf1|core~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux1~2_combout\,
	sload => VCC,
	ena => \rf1|core~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~38_q\);

-- Location: LCCOMB_X26_Y12_N14
\rf1|core~254\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~254_combout\ = (\rf1|Mux1~0_combout\ & (!\rf1|Mux0~0_combout\ & (!\rf1|core~249_combout\ & !\rf1|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|Mux1~0_combout\,
	datab => \rf1|Mux0~0_combout\,
	datac => \rf1|core~249_combout\,
	datad => \rf1|Mux2~0_combout\,
	combout => \rf1|core~254_combout\);

-- Location: LCCOMB_X26_Y12_N8
\rf1|core~255\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~255_combout\ = (\rf1|core~252_combout\ & (\rf1|core~254_combout\ & ((\dc1|WideOr2~1_combout\) # (!\dc1|tosc[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~252_combout\,
	datab => \dc1|tosc[1]~0_combout\,
	datac => \rf1|core~254_combout\,
	datad => \dc1|WideOr2~1_combout\,
	combout => \rf1|core~255_combout\);

-- Location: FF_X26_Y12_N29
\rf1|core~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux1~2_combout\,
	sload => VCC,
	ena => \rf1|core~255_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~62_q\);

-- Location: LCCOMB_X26_Y14_N14
\rf1|core~54feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~54feeder_combout\ = \mux21|Mux1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux21|Mux1~2_combout\,
	combout => \rf1|core~54feeder_combout\);

-- Location: LCCOMB_X24_Y12_N12
\rf1|core~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~256_combout\ = (!\rf1|Mux2~0_combout\ & (\rf1|Mux1~0_combout\ & (\rf1|core~249_combout\ & !\rf1|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|Mux2~0_combout\,
	datab => \rf1|Mux1~0_combout\,
	datac => \rf1|core~249_combout\,
	datad => \rf1|Mux0~0_combout\,
	combout => \rf1|core~256_combout\);

-- Location: LCCOMB_X24_Y12_N18
\rf1|core~257\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~257_combout\ = (\rf1|core~252_combout\ & (\rf1|core~256_combout\ & ((\dc1|WideOr2~1_combout\) # (!\dc1|tosc[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc1|tosc[1]~0_combout\,
	datab => \dc1|WideOr2~1_combout\,
	datac => \rf1|core~252_combout\,
	datad => \rf1|core~256_combout\,
	combout => \rf1|core~257_combout\);

-- Location: FF_X26_Y14_N15
\rf1|core~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf1|core~54feeder_combout\,
	ena => \rf1|core~257_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~54_q\);

-- Location: LCCOMB_X26_Y14_N28
\rf1|core~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~152_combout\ = (\sc1|SC\(0) & ((\rf1|core~62_q\) # ((\sc1|SC\(1))))) # (!\sc1|SC\(0) & (((\rf1|core~54_q\ & !\sc1|SC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~62_q\,
	datab => \sc1|SC\(0),
	datac => \rf1|core~54_q\,
	datad => \sc1|SC\(1),
	combout => \rf1|core~152_combout\);

-- Location: LCCOMB_X26_Y14_N2
\rf1|core~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~153_combout\ = (\sc1|SC\(1) & ((\rf1|core~152_combout\ & (\rf1|core~46_q\)) # (!\rf1|core~152_combout\ & ((\rf1|core~38_q\))))) # (!\sc1|SC\(1) & (((\rf1|core~152_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(1),
	datab => \rf1|core~46_q\,
	datac => \rf1|core~38_q\,
	datad => \rf1|core~152_combout\,
	combout => \rf1|core~153_combout\);

-- Location: LCCOMB_X25_Y9_N24
\rf1|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|Add1~1_combout\ = \sc1|SC\(3) $ (((\sc1|SC\(2)) # (\sc1|SC\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(2),
	datac => \sc1|SC\(3),
	datad => \sc1|SC\(1),
	combout => \rf1|Add1~1_combout\);

-- Location: LCCOMB_X26_Y14_N16
\rf1|core~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~155_combout\ = (\rf1|Add1~0_combout\ & (((\rf1|Add1~1_combout\)))) # (!\rf1|Add1~0_combout\ & ((\rf1|Add1~1_combout\ & ((\rf1|core~153_combout\))) # (!\rf1|Add1~1_combout\ & (\rf1|core~154_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~154_combout\,
	datab => \rf1|core~153_combout\,
	datac => \rf1|Add1~0_combout\,
	datad => \rf1|Add1~1_combout\,
	combout => \rf1|core~155_combout\);

-- Location: LCCOMB_X26_Y14_N30
\rf1|core~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~158_combout\ = (\rf1|Add1~0_combout\ & ((\rf1|core~155_combout\ & ((\rf1|core~157_combout\))) # (!\rf1|core~155_combout\ & (\rf1|core~151_combout\)))) # (!\rf1|Add1~0_combout\ & (((\rf1|core~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|Add1~0_combout\,
	datab => \rf1|core~151_combout\,
	datac => \rf1|core~157_combout\,
	datad => \rf1|core~155_combout\,
	combout => \rf1|core~158_combout\);

-- Location: LCCOMB_X26_Y14_N22
\mux51|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux51|Mux1~1_combout\ = (\rf1|core~158_combout\ & ((\imem1|WideOr0~15_combout\) # ((!\dc1|tomux2~0_combout\ & \imem1|WideOr1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc1|tomux2~0_combout\,
	datab => \imem1|WideOr1~8_combout\,
	datac => \rf1|core~158_combout\,
	datad => \imem1|WideOr0~15_combout\,
	combout => \mux51|Mux1~1_combout\);

-- Location: LCCOMB_X21_Y11_N22
\dc1|tomux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dc1|tomux7~0_combout\ = (\imem1|WideOr8~12_combout\) # ((!\rf1|core~104_combout\) # (!\dc1|toBarwe~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr8~12_combout\,
	datab => \dc1|toBarwe~2_combout\,
	datac => \rf1|core~104_combout\,
	combout => \dc1|tomux7~0_combout\);

-- Location: LCCOMB_X21_Y11_N12
\dc1|toCntwe~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dc1|toCntwe~0_combout\ = (\imem1|WideOr8~12_combout\ & (\imem1|WideOr7~19_combout\ & (!\imem1|WideOr5~15_combout\ & \imem1|WideOr4~11_combout\))) # (!\imem1|WideOr8~12_combout\ & (!\imem1|WideOr7~19_combout\ & (\imem1|WideOr5~15_combout\ & 
-- !\imem1|WideOr4~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr8~12_combout\,
	datab => \imem1|WideOr7~19_combout\,
	datac => \imem1|WideOr5~15_combout\,
	datad => \imem1|WideOr4~11_combout\,
	combout => \dc1|toCntwe~0_combout\);

-- Location: LCCOMB_X21_Y11_N4
\dc1|toCntwe~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dc1|toCntwe~1_combout\ = (\imem1|WideOr6~14_combout\ & (\rf1|core~104_combout\ & \dc1|toCntwe~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr6~14_combout\,
	datab => \rf1|core~104_combout\,
	datad => \dc1|toCntwe~0_combout\,
	combout => \dc1|toCntwe~1_combout\);

-- Location: FF_X25_Y10_N17
\cnt1|CntValue[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt1|CntValue[6]~2_combout\,
	asdata => \rf1|core~149_combout\,
	sload => \dc1|tomux7~0_combout\,
	ena => \dc1|toCntwe~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt1|CntValue\(6));

-- Location: LCCOMB_X26_Y14_N0
\mux51|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux51|Mux1~0_combout\ = (\rf1|core~158_combout\ & (!\imem1|WideOr1~8_combout\ & (!\dc1|WideOr4~2_combout\ & !\dc1|WideOr4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~158_combout\,
	datab => \imem1|WideOr1~8_combout\,
	datac => \dc1|WideOr4~2_combout\,
	datad => \dc1|WideOr4~1_combout\,
	combout => \mux51|Mux1~0_combout\);

-- Location: LCCOMB_X26_Y14_N12
\mux51|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux51|Mux1~2_combout\ = (\mux51|Mux1~1_combout\) # ((\mux51|Mux1~0_combout\) # ((\cnt1|CntValue\(6) & \dc1|tomux5[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux51|Mux1~1_combout\,
	datab => \cnt1|CntValue\(6),
	datac => \dc1|tomux5[0]~1_combout\,
	datad => \mux51|Mux1~0_combout\,
	combout => \mux51|Mux1~2_combout\);

-- Location: LCCOMB_X25_Y13_N14
\alu1|rslt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|rslt~10_combout\ = (\rf1|core~149_combout\ & (\mux51|Mux1~2_combout\ & ((\mux41|Mux5~0_combout\) # (!\rf1|core~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~104_combout\,
	datab => \rf1|core~149_combout\,
	datac => \mux41|Mux5~0_combout\,
	datad => \mux51|Mux1~2_combout\,
	combout => \alu1|rslt~10_combout\);

-- Location: LCCOMB_X24_Y10_N8
\mux41|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux41|Mux6~0_combout\ = (\rf1|core~185_combout\ & ((\mux41|Mux5~0_combout\) # (!\rf1|core~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf1|core~185_combout\,
	datac => \mux41|Mux5~0_combout\,
	datad => \rf1|core~104_combout\,
	combout => \mux41|Mux6~0_combout\);

-- Location: FF_X22_Y11_N15
\rf1|core~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux6~11_combout\,
	sload => VCC,
	ena => \rf1|core~253_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~41_q\);

-- Location: FF_X24_Y11_N7
\rf1|core~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux6~11_combout\,
	sload => VCC,
	ena => \rf1|core~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~33_q\);

-- Location: FF_X26_Y11_N23
\rf1|core~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux6~11_combout\,
	sload => VCC,
	ena => \rf1|core~255_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~57_q\);

-- Location: FF_X22_Y11_N17
\rf1|core~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux6~11_combout\,
	sload => VCC,
	ena => \rf1|core~257_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~49_q\);

-- Location: LCCOMB_X22_Y11_N16
\rf1|core~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~204_combout\ = (\sc1|SC\(1) & (((\sc1|SC\(0))))) # (!\sc1|SC\(1) & ((\sc1|SC\(0) & (\rf1|core~57_q\)) # (!\sc1|SC\(0) & ((\rf1|core~49_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~57_q\,
	datab => \sc1|SC\(1),
	datac => \rf1|core~49_q\,
	datad => \sc1|SC\(0),
	combout => \rf1|core~204_combout\);

-- Location: LCCOMB_X24_Y11_N6
\rf1|core~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~205_combout\ = (\sc1|SC\(1) & ((\rf1|core~204_combout\ & (\rf1|core~41_q\)) # (!\rf1|core~204_combout\ & ((\rf1|core~33_q\))))) # (!\sc1|SC\(1) & (((\rf1|core~204_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~41_q\,
	datab => \sc1|SC\(1),
	datac => \rf1|core~33_q\,
	datad => \rf1|core~204_combout\,
	combout => \rf1|core~205_combout\);

-- Location: FF_X23_Y14_N31
\rf1|core~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux6~11_combout\,
	sload => VCC,
	ena => \rf1|core~267_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~65_q\);

-- Location: FF_X23_Y14_N5
\rf1|core~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux6~11_combout\,
	sload => VCC,
	ena => \rf1|core~261_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~73_q\);

-- Location: FF_X24_Y9_N15
\rf1|core~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux6~11_combout\,
	sload => VCC,
	ena => \rf1|core~265_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~81_q\);

-- Location: LCCOMB_X24_Y9_N20
\rf1|core~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~206_combout\ = (\sc1|SC\(1) & (((\sc1|SC\(0))))) # (!\sc1|SC\(1) & ((\sc1|SC\(0) & ((\rf1|core~89_q\))) # (!\sc1|SC\(0) & (\rf1|core~81_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~81_q\,
	datab => \sc1|SC\(1),
	datac => \rf1|core~89_q\,
	datad => \sc1|SC\(0),
	combout => \rf1|core~206_combout\);

-- Location: LCCOMB_X23_Y14_N4
\rf1|core~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~207_combout\ = (\sc1|SC\(1) & ((\rf1|core~206_combout\ & ((\rf1|core~73_q\))) # (!\rf1|core~206_combout\ & (\rf1|core~65_q\)))) # (!\sc1|SC\(1) & (((\rf1|core~206_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~65_q\,
	datab => \sc1|SC\(1),
	datac => \rf1|core~73_q\,
	datad => \rf1|core~206_combout\,
	combout => \rf1|core~207_combout\);

-- Location: LCCOMB_X25_Y12_N6
\rf1|core~268\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~268_combout\ = (\rf1|Mux1~0_combout\ & (\rf1|Mux0~0_combout\ & (\rf1|Mux2~0_combout\ & \rf1|core~249_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|Mux1~0_combout\,
	datab => \rf1|Mux0~0_combout\,
	datac => \rf1|Mux2~0_combout\,
	datad => \rf1|core~249_combout\,
	combout => \rf1|core~268_combout\);

-- Location: LCCOMB_X25_Y12_N12
\rf1|core~269\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~269_combout\ = (\rf1|core~268_combout\ & (\rf1|core~252_combout\ & ((\dc1|WideOr2~1_combout\) # (!\dc1|tosc[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~268_combout\,
	datab => \dc1|tosc[1]~0_combout\,
	datac => \dc1|WideOr2~1_combout\,
	datad => \rf1|core~252_combout\,
	combout => \rf1|core~269_combout\);

-- Location: FF_X25_Y12_N9
\rf1|core~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux6~11_combout\,
	sload => VCC,
	ena => \rf1|core~269_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~97_q\);

-- Location: LCCOMB_X25_Y12_N4
\rf1|core~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~208_combout\ = (\sc1|SC\(1) & (!\sc1|SC\(0) & \rf1|core~97_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(1),
	datab => \sc1|SC\(0),
	datad => \rf1|core~97_q\,
	combout => \rf1|core~208_combout\);

-- Location: LCCOMB_X24_Y14_N4
\rf1|core~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~209_combout\ = (\rf1|Add1~1_combout\ & (((\rf1|Add1~0_combout\)))) # (!\rf1|Add1~1_combout\ & ((\rf1|Add1~0_combout\ & (\rf1|core~207_combout\)) # (!\rf1|Add1~0_combout\ & ((\rf1|core~208_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|Add1~1_combout\,
	datab => \rf1|core~207_combout\,
	datac => \rf1|core~208_combout\,
	datad => \rf1|Add1~0_combout\,
	combout => \rf1|core~209_combout\);

-- Location: LCCOMB_X25_Y9_N20
\rf1|core~9feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~9feeder_combout\ = \mux21|Mux6~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux21|Mux6~11_combout\,
	combout => \rf1|core~9feeder_combout\);

-- Location: FF_X25_Y9_N21
\rf1|core~9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf1|core~9feeder_combout\,
	ena => \rf1|core~271_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~9_q\);

-- Location: FF_X24_Y11_N25
\rf1|core~1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mux21|Mux6~11_combout\,
	ena => \rf1|core~277_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~1_q\);

-- Location: FF_X25_Y11_N1
\rf1|core~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux6~11_combout\,
	sload => VCC,
	ena => \rf1|core~273_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~25_q\);

-- Location: FF_X26_Y11_N25
\rf1|core~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux6~11_combout\,
	sload => VCC,
	ena => \rf1|core~275_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~17_q\);

-- Location: LCCOMB_X26_Y11_N24
\rf1|core~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~210_combout\ = (\sc1|SC\(0) & ((\rf1|core~25_q\) # ((\sc1|SC\(1))))) # (!\sc1|SC\(0) & (((\rf1|core~17_q\ & !\sc1|SC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~25_q\,
	datab => \sc1|SC\(0),
	datac => \rf1|core~17_q\,
	datad => \sc1|SC\(1),
	combout => \rf1|core~210_combout\);

-- Location: LCCOMB_X25_Y9_N0
\rf1|core~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~211_combout\ = (\sc1|SC\(1) & ((\rf1|core~210_combout\ & (\rf1|core~9_q\)) # (!\rf1|core~210_combout\ & ((\rf1|core~1_q\))))) # (!\sc1|SC\(1) & (((\rf1|core~210_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(1),
	datab => \rf1|core~9_q\,
	datac => \rf1|core~1_q\,
	datad => \rf1|core~210_combout\,
	combout => \rf1|core~211_combout\);

-- Location: LCCOMB_X24_Y14_N22
\rf1|core~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~212_combout\ = (\rf1|Add1~1_combout\ & ((\rf1|core~209_combout\ & ((\rf1|core~211_combout\))) # (!\rf1|core~209_combout\ & (\rf1|core~205_combout\)))) # (!\rf1|Add1~1_combout\ & (((\rf1|core~209_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|Add1~1_combout\,
	datab => \rf1|core~205_combout\,
	datac => \rf1|core~209_combout\,
	datad => \rf1|core~211_combout\,
	combout => \rf1|core~212_combout\);

-- Location: LCCOMB_X24_Y14_N8
\mux51|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux51|Mux6~0_combout\ = (\dc1|tomux5[1]~0_combout\ & (!\imem1|WideOr7~19_combout\)) # (!\dc1|tomux5[1]~0_combout\ & ((\rf1|core~212_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \imem1|WideOr7~19_combout\,
	datac => \rf1|core~212_combout\,
	datad => \dc1|tomux5[1]~0_combout\,
	combout => \mux51|Mux6~0_combout\);

-- Location: LCCOMB_X25_Y14_N14
\alu1|rslt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|rslt~7_combout\ = (\mux41|Mux6~0_combout\ & ((\dc1|tomux5[0]~1_combout\ & (\cnt1|CntValue\(1))) # (!\dc1|tomux5[0]~1_combout\ & ((\mux51|Mux6~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt1|CntValue\(1),
	datab => \dc1|tomux5[0]~1_combout\,
	datac => \mux41|Mux6~0_combout\,
	datad => \mux51|Mux6~0_combout\,
	combout => \alu1|rslt~7_combout\);

-- Location: LCCOMB_X23_Y11_N30
\alu1|Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux8~5_combout\ = (\dc1|toalu[1]~2_combout\ & (((!\rf1|core~104_combout\) # (!\dc1|WideOr3~0_combout\)) # (!\imem1|WideOr4~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr4~11_combout\,
	datab => \dc1|WideOr3~0_combout\,
	datac => \rf1|core~104_combout\,
	datad => \dc1|toalu[1]~2_combout\,
	combout => \alu1|Mux8~5_combout\);

-- Location: LCCOMB_X23_Y13_N24
\mux71|Z[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux71|Z[2]~0_combout\ = (!\dc1|tomux7~0_combout\ & ((!\dc1|toalu[1]~2_combout\) # (!\dc1|toalu[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dc1|toalu[2]~3_combout\,
	datac => \dc1|toalu[1]~2_combout\,
	datad => \dc1|tomux7~0_combout\,
	combout => \mux71|Z[2]~0_combout\);

-- Location: LCCOMB_X21_Y10_N12
\mux41|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux41|Mux4~0_combout\ = (\rf1|core~248_combout\ & ((\mux41|Mux5~0_combout\) # (!\rf1|core~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~104_combout\,
	datab => \rf1|core~248_combout\,
	datad => \mux41|Mux5~0_combout\,
	combout => \mux41|Mux4~0_combout\);

-- Location: FF_X26_Y11_N11
\rf1|core~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux4~2_combout\,
	sload => VCC,
	ena => \rf1|core~275_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~19_q\);

-- Location: LCCOMB_X26_Y11_N10
\rf1|core~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~237_combout\ = (\sc1|SC\(0) & ((\rf1|core~27_q\) # ((\sc1|SC\(1))))) # (!\sc1|SC\(0) & (((\rf1|core~19_q\ & !\sc1|SC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~27_q\,
	datab => \sc1|SC\(0),
	datac => \rf1|core~19_q\,
	datad => \sc1|SC\(1),
	combout => \rf1|core~237_combout\);

-- Location: FF_X25_Y11_N17
\rf1|core~3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux4~2_combout\,
	sload => VCC,
	ena => \rf1|core~277_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~3_q\);

-- Location: FF_X23_Y10_N7
\rf1|core~11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mux21|Mux4~2_combout\,
	ena => \rf1|core~271_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~11_q\);

-- Location: LCCOMB_X25_Y11_N16
\rf1|core~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~238_combout\ = (\rf1|core~237_combout\ & (((\rf1|core~11_q\)) # (!\sc1|SC\(1)))) # (!\rf1|core~237_combout\ & (\sc1|SC\(1) & (\rf1|core~3_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~237_combout\,
	datab => \sc1|SC\(1),
	datac => \rf1|core~3_q\,
	datad => \rf1|core~11_q\,
	combout => \rf1|core~238_combout\);

-- Location: FF_X26_Y12_N7
\rf1|core~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux4~2_combout\,
	sload => VCC,
	ena => \rf1|core~255_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~59_q\);

-- Location: LCCOMB_X26_Y10_N28
\rf1|core~51feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~51feeder_combout\ = \mux21|Mux4~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux21|Mux4~2_combout\,
	combout => \rf1|core~51feeder_combout\);

-- Location: FF_X26_Y10_N29
\rf1|core~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf1|core~51feeder_combout\,
	ena => \rf1|core~257_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~51_q\);

-- Location: LCCOMB_X26_Y12_N6
\rf1|core~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~231_combout\ = (\sc1|SC\(1) & (\sc1|SC\(0))) # (!\sc1|SC\(1) & ((\sc1|SC\(0) & (\rf1|core~59_q\)) # (!\sc1|SC\(0) & ((\rf1|core~51_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(1),
	datab => \sc1|SC\(0),
	datac => \rf1|core~59_q\,
	datad => \rf1|core~51_q\,
	combout => \rf1|core~231_combout\);

-- Location: FF_X25_Y14_N23
\rf1|core~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux4~2_combout\,
	sload => VCC,
	ena => \rf1|core~253_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~43_q\);

-- Location: FF_X25_Y14_N25
\rf1|core~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux4~2_combout\,
	sload => VCC,
	ena => \rf1|core~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~35_q\);

-- Location: LCCOMB_X25_Y14_N22
\rf1|core~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~232_combout\ = (\rf1|core~231_combout\ & (((\rf1|core~43_q\)) # (!\sc1|SC\(1)))) # (!\rf1|core~231_combout\ & (\sc1|SC\(1) & ((\rf1|core~35_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~231_combout\,
	datab => \sc1|SC\(1),
	datac => \rf1|core~43_q\,
	datad => \rf1|core~35_q\,
	combout => \rf1|core~232_combout\);

-- Location: FF_X25_Y12_N1
\rf1|core~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux4~2_combout\,
	sload => VCC,
	ena => \rf1|core~269_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~99_q\);

-- Location: LCCOMB_X25_Y12_N24
\rf1|core~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~235_combout\ = (\sc1|SC\(1) & (\rf1|core~99_q\ & !\sc1|SC\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(1),
	datab => \rf1|core~99_q\,
	datad => \sc1|SC\(0),
	combout => \rf1|core~235_combout\);

-- Location: FF_X23_Y14_N15
\rf1|core~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux4~2_combout\,
	sload => VCC,
	ena => \rf1|core~267_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~67_q\);

-- Location: FF_X23_Y14_N9
\rf1|core~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux4~2_combout\,
	sload => VCC,
	ena => \rf1|core~261_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~75_q\);

-- Location: FF_X24_Y9_N23
\rf1|core~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux4~2_combout\,
	sload => VCC,
	ena => \rf1|core~263_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~91_q\);

-- Location: FF_X24_Y9_N1
\rf1|core~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux4~2_combout\,
	sload => VCC,
	ena => \rf1|core~265_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~83_q\);

-- Location: LCCOMB_X24_Y9_N0
\rf1|core~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~233_combout\ = (\sc1|SC\(0) & ((\rf1|core~91_q\) # ((\sc1|SC\(1))))) # (!\sc1|SC\(0) & (((\rf1|core~83_q\ & !\sc1|SC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~91_q\,
	datab => \sc1|SC\(0),
	datac => \rf1|core~83_q\,
	datad => \sc1|SC\(1),
	combout => \rf1|core~233_combout\);

-- Location: LCCOMB_X23_Y14_N8
\rf1|core~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~234_combout\ = (\sc1|SC\(1) & ((\rf1|core~233_combout\ & ((\rf1|core~75_q\))) # (!\rf1|core~233_combout\ & (\rf1|core~67_q\)))) # (!\sc1|SC\(1) & (((\rf1|core~233_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(1),
	datab => \rf1|core~67_q\,
	datac => \rf1|core~75_q\,
	datad => \rf1|core~233_combout\,
	combout => \rf1|core~234_combout\);

-- Location: LCCOMB_X25_Y14_N28
\rf1|core~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~236_combout\ = (\rf1|Add1~0_combout\ & ((\rf1|Add1~1_combout\) # ((\rf1|core~234_combout\)))) # (!\rf1|Add1~0_combout\ & (!\rf1|Add1~1_combout\ & (\rf1|core~235_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|Add1~0_combout\,
	datab => \rf1|Add1~1_combout\,
	datac => \rf1|core~235_combout\,
	datad => \rf1|core~234_combout\,
	combout => \rf1|core~236_combout\);

-- Location: LCCOMB_X25_Y14_N10
\rf1|core~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~239_combout\ = (\rf1|Add1~1_combout\ & ((\rf1|core~236_combout\ & (\rf1|core~238_combout\)) # (!\rf1|core~236_combout\ & ((\rf1|core~232_combout\))))) # (!\rf1|Add1~1_combout\ & (((\rf1|core~236_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~238_combout\,
	datab => \rf1|Add1~1_combout\,
	datac => \rf1|core~232_combout\,
	datad => \rf1|core~236_combout\,
	combout => \rf1|core~239_combout\);

-- Location: LCCOMB_X25_Y14_N20
\mux51|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux51|Mux4~0_combout\ = (\dc1|tomux5[1]~0_combout\ & ((!\imem1|WideOr5~15_combout\))) # (!\dc1|tomux5[1]~0_combout\ & (\rf1|core~239_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~239_combout\,
	datab => \imem1|WideOr5~15_combout\,
	datad => \dc1|tomux5[1]~0_combout\,
	combout => \mux51|Mux4~0_combout\);

-- Location: LCCOMB_X21_Y10_N26
\alu1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Equal0~6_combout\ = \mux41|Mux4~0_combout\ $ (((\dc1|tomux5[0]~1_combout\ & (\cnt1|CntValue\(3))) # (!\dc1|tomux5[0]~1_combout\ & ((\mux51|Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc1|tomux5[0]~1_combout\,
	datab => \cnt1|CntValue\(3),
	datac => \mux41|Mux4~0_combout\,
	datad => \mux51|Mux4~0_combout\,
	combout => \alu1|Equal0~6_combout\);

-- Location: LCCOMB_X23_Y11_N8
\alu1|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux6~3_combout\ = (\dc1|toalu[2]~3_combout\ & (\dc1|toalu[0]~5_combout\)) # (!\dc1|toalu[2]~3_combout\ & ((\dc1|toalu[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dc1|toalu[0]~5_combout\,
	datac => \dc1|toalu[2]~3_combout\,
	datad => \dc1|toalu[1]~2_combout\,
	combout => \alu1|Mux6~3_combout\);

-- Location: LCCOMB_X25_Y14_N30
\alu1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Add0~8_combout\ = \dc1|toalu[0]~5_combout\ $ (((\dc1|tomux5[0]~1_combout\ & (\cnt1|CntValue\(3))) # (!\dc1|tomux5[0]~1_combout\ & ((\mux51|Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt1|CntValue\(3),
	datab => \dc1|tomux5[0]~1_combout\,
	datac => \dc1|toalu[0]~5_combout\,
	datad => \mux51|Mux4~0_combout\,
	combout => \alu1|Add0~8_combout\);

-- Location: LCCOMB_X24_Y10_N2
\mux41|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux41|Mux5~1_combout\ = (\rf1|core~221_combout\ & ((\mux41|Mux5~0_combout\) # (!\rf1|core~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf1|core~221_combout\,
	datac => \mux41|Mux5~0_combout\,
	datad => \rf1|core~104_combout\,
	combout => \mux41|Mux5~1_combout\);

-- Location: LCCOMB_X23_Y9_N18
\rf1|core~10feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~10feeder_combout\ = \mux21|Mux5~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux21|Mux5~3_combout\,
	combout => \rf1|core~10feeder_combout\);

-- Location: FF_X23_Y9_N19
\rf1|core~10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf1|core~10feeder_combout\,
	ena => \rf1|core~271_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~10_q\);

-- Location: FF_X22_Y10_N1
\rf1|core~2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mux21|Mux5~3_combout\,
	ena => \rf1|core~277_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~2_q\);

-- Location: FF_X26_Y11_N21
\rf1|core~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux5~3_combout\,
	sload => VCC,
	ena => \rf1|core~275_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~18_q\);

-- Location: FF_X25_Y11_N19
\rf1|core~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux5~3_combout\,
	sload => VCC,
	ena => \rf1|core~273_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~26_q\);

-- Location: LCCOMB_X26_Y11_N20
\rf1|core~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~228_combout\ = (\sc1|SC\(1) & (\sc1|SC\(0))) # (!\sc1|SC\(1) & ((\sc1|SC\(0) & ((\rf1|core~26_q\))) # (!\sc1|SC\(0) & (\rf1|core~18_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(1),
	datab => \sc1|SC\(0),
	datac => \rf1|core~18_q\,
	datad => \rf1|core~26_q\,
	combout => \rf1|core~228_combout\);

-- Location: LCCOMB_X23_Y9_N30
\rf1|core~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~229_combout\ = (\sc1|SC\(1) & ((\rf1|core~228_combout\ & (\rf1|core~10_q\)) # (!\rf1|core~228_combout\ & ((\rf1|core~2_q\))))) # (!\sc1|SC\(1) & (((\rf1|core~228_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(1),
	datab => \rf1|core~10_q\,
	datac => \rf1|core~2_q\,
	datad => \rf1|core~228_combout\,
	combout => \rf1|core~229_combout\);

-- Location: LCCOMB_X28_Y12_N24
\rf1|core~34feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~34feeder_combout\ = \mux21|Mux5~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux21|Mux5~3_combout\,
	combout => \rf1|core~34feeder_combout\);

-- Location: FF_X28_Y12_N25
\rf1|core~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf1|core~34feeder_combout\,
	ena => \rf1|core~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~34_q\);

-- Location: FF_X22_Y11_N31
\rf1|core~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux5~3_combout\,
	sload => VCC,
	ena => \rf1|core~253_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~42_q\);

-- Location: FF_X26_Y11_N7
\rf1|core~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux5~3_combout\,
	sload => VCC,
	ena => \rf1|core~255_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~58_q\);

-- Location: FF_X22_Y11_N29
\rf1|core~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux5~3_combout\,
	sload => VCC,
	ena => \rf1|core~257_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~50_q\);

-- Location: LCCOMB_X22_Y11_N28
\rf1|core~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~224_combout\ = (\sc1|SC\(1) & (((\sc1|SC\(0))))) # (!\sc1|SC\(1) & ((\sc1|SC\(0) & (\rf1|core~58_q\)) # (!\sc1|SC\(0) & ((\rf1|core~50_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(1),
	datab => \rf1|core~58_q\,
	datac => \rf1|core~50_q\,
	datad => \sc1|SC\(0),
	combout => \rf1|core~224_combout\);

-- Location: LCCOMB_X22_Y11_N30
\rf1|core~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~225_combout\ = (\sc1|SC\(1) & ((\rf1|core~224_combout\ & ((\rf1|core~42_q\))) # (!\rf1|core~224_combout\ & (\rf1|core~34_q\)))) # (!\sc1|SC\(1) & (((\rf1|core~224_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(1),
	datab => \rf1|core~34_q\,
	datac => \rf1|core~42_q\,
	datad => \rf1|core~224_combout\,
	combout => \rf1|core~225_combout\);

-- Location: LCCOMB_X25_Y12_N20
\rf1|core~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~226_combout\ = (\rf1|core~98_q\ & (\sc1|SC\(1) & !\sc1|SC\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf1|core~98_q\,
	datac => \sc1|SC\(1),
	datad => \sc1|SC\(0),
	combout => \rf1|core~226_combout\);

-- Location: LCCOMB_X22_Y11_N26
\rf1|core~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~227_combout\ = (\rf1|Add1~1_combout\ & ((\rf1|core~225_combout\) # ((\rf1|Add1~0_combout\)))) # (!\rf1|Add1~1_combout\ & (((\rf1|core~226_combout\ & !\rf1|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~225_combout\,
	datab => \rf1|Add1~1_combout\,
	datac => \rf1|core~226_combout\,
	datad => \rf1|Add1~0_combout\,
	combout => \rf1|core~227_combout\);

-- Location: LCCOMB_X24_Y13_N14
\rf1|core~74feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~74feeder_combout\ = \mux21|Mux5~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux21|Mux5~3_combout\,
	combout => \rf1|core~74feeder_combout\);

-- Location: FF_X24_Y13_N15
\rf1|core~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf1|core~74feeder_combout\,
	ena => \rf1|core~261_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~74_q\);

-- Location: FF_X24_Y9_N13
\rf1|core~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux5~3_combout\,
	sload => VCC,
	ena => \rf1|core~265_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~82_q\);

-- Location: FF_X24_Y9_N27
\rf1|core~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux5~3_combout\,
	sload => VCC,
	ena => \rf1|core~263_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~90_q\);

-- Location: LCCOMB_X24_Y9_N26
\rf1|core~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~222_combout\ = (\sc1|SC\(1) & (((\sc1|SC\(0))))) # (!\sc1|SC\(1) & ((\sc1|SC\(0) & ((\rf1|core~90_q\))) # (!\sc1|SC\(0) & (\rf1|core~82_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~82_q\,
	datab => \sc1|SC\(1),
	datac => \rf1|core~90_q\,
	datad => \sc1|SC\(0),
	combout => \rf1|core~222_combout\);

-- Location: LCCOMB_X24_Y13_N20
\rf1|core~66feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~66feeder_combout\ = \mux21|Mux5~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux21|Mux5~3_combout\,
	combout => \rf1|core~66feeder_combout\);

-- Location: FF_X24_Y13_N21
\rf1|core~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf1|core~66feeder_combout\,
	ena => \rf1|core~267_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~66_q\);

-- Location: LCCOMB_X24_Y13_N2
\rf1|core~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~223_combout\ = (\sc1|SC\(1) & ((\rf1|core~222_combout\ & (\rf1|core~74_q\)) # (!\rf1|core~222_combout\ & ((\rf1|core~66_q\))))) # (!\sc1|SC\(1) & (((\rf1|core~222_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(1),
	datab => \rf1|core~74_q\,
	datac => \rf1|core~222_combout\,
	datad => \rf1|core~66_q\,
	combout => \rf1|core~223_combout\);

-- Location: LCCOMB_X23_Y9_N20
\rf1|core~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~230_combout\ = (\rf1|Add1~0_combout\ & ((\rf1|core~227_combout\ & (\rf1|core~229_combout\)) # (!\rf1|core~227_combout\ & ((\rf1|core~223_combout\))))) # (!\rf1|Add1~0_combout\ & (((\rf1|core~227_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~229_combout\,
	datab => \rf1|Add1~0_combout\,
	datac => \rf1|core~227_combout\,
	datad => \rf1|core~223_combout\,
	combout => \rf1|core~230_combout\);

-- Location: LCCOMB_X23_Y13_N4
\mux51|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux51|Mux5~0_combout\ = (\dc1|tomux5[1]~0_combout\ & (\imem1|WideOr6~14_combout\)) # (!\dc1|tomux5[1]~0_combout\ & ((!\rf1|core~230_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr6~14_combout\,
	datac => \rf1|core~230_combout\,
	datad => \dc1|tomux5[1]~0_combout\,
	combout => \mux51|Mux5~0_combout\);

-- Location: LCCOMB_X23_Y13_N10
\alu1|rslt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|rslt~8_combout\ = (\mux41|Mux5~1_combout\ & ((\dc1|tomux5[0]~1_combout\ & ((\cnt1|CntValue\(2)))) # (!\dc1|tomux5[0]~1_combout\ & (!\mux51|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux41|Mux5~1_combout\,
	datab => \mux51|Mux5~0_combout\,
	datac => \cnt1|CntValue\(2),
	datad => \dc1|tomux5[0]~1_combout\,
	combout => \alu1|rslt~8_combout\);

-- Location: LCCOMB_X25_Y10_N20
\alu1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Equal0~5_combout\ = \mux41|Mux5~1_combout\ $ (((\dc1|tomux5[0]~1_combout\ & ((!\cnt1|CntValue\(2)))) # (!\dc1|tomux5[0]~1_combout\ & (\mux51|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux51|Mux5~0_combout\,
	datab => \cnt1|CntValue\(2),
	datac => \dc1|tomux5[0]~1_combout\,
	datad => \mux41|Mux5~1_combout\,
	combout => \alu1|Equal0~5_combout\);

-- Location: LCCOMB_X24_Y14_N0
\alu1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Add0~10_combout\ = \dc1|toalu[0]~5_combout\ $ (((\dc1|tomux5[0]~1_combout\ & (\cnt1|CntValue\(1))) # (!\dc1|tomux5[0]~1_combout\ & ((\mux51|Mux6~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc1|toalu[0]~5_combout\,
	datab => \cnt1|CntValue\(1),
	datac => \mux51|Mux6~0_combout\,
	datad => \dc1|tomux5[0]~1_combout\,
	combout => \alu1|Add0~10_combout\);

-- Location: LCCOMB_X21_Y10_N20
\alu1|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Add0~11_combout\ = \dc1|toalu[0]~5_combout\ $ (((\dc1|tomux5[0]~1_combout\ & ((!\cnt1|CntValue\(0)))) # (!\dc1|tomux5[0]~1_combout\ & (\mux51|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux51|Mux7~0_combout\,
	datab => \cnt1|CntValue\(0),
	datac => \dc1|toalu[0]~5_combout\,
	datad => \dc1|tomux5[0]~1_combout\,
	combout => \alu1|Add0~11_combout\);

-- Location: LCCOMB_X24_Y10_N4
\dc1|toalu[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dc1|toalu[0]~6_combout\ = (\dc1|tomux2~0_combout\ & \dc1|toalu[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dc1|tomux2~0_combout\,
	datad => \dc1|toalu[0]~4_combout\,
	combout => \dc1|toalu[0]~6_combout\);

-- Location: LCCOMB_X24_Y10_N10
\alu1|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Add0~13_cout\ = CARRY((!\imem1|WideOr0~15_combout\ & \dc1|toalu[0]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr0~15_combout\,
	datab => \dc1|toalu[0]~6_combout\,
	datad => VCC,
	cout => \alu1|Add0~13_cout\);

-- Location: LCCOMB_X24_Y10_N12
\alu1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Add0~14_combout\ = (\alu1|Add0~11_combout\ & ((\mux41|Mux7~1_combout\ & (!\alu1|Add0~13_cout\)) # (!\mux41|Mux7~1_combout\ & ((\alu1|Add0~13_cout\) # (GND))))) # (!\alu1|Add0~11_combout\ & ((\mux41|Mux7~1_combout\ & (\alu1|Add0~13_cout\ & VCC)) # 
-- (!\mux41|Mux7~1_combout\ & (!\alu1|Add0~13_cout\))))
-- \alu1|Add0~15\ = CARRY((\alu1|Add0~11_combout\ & ((!\alu1|Add0~13_cout\) # (!\mux41|Mux7~1_combout\))) # (!\alu1|Add0~11_combout\ & (!\mux41|Mux7~1_combout\ & !\alu1|Add0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|Add0~11_combout\,
	datab => \mux41|Mux7~1_combout\,
	datad => VCC,
	cin => \alu1|Add0~13_cout\,
	combout => \alu1|Add0~14_combout\,
	cout => \alu1|Add0~15\);

-- Location: LCCOMB_X24_Y10_N14
\alu1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Add0~16_combout\ = ((\alu1|Add0~10_combout\ $ (\mux41|Mux6~0_combout\ $ (!\alu1|Add0~15\)))) # (GND)
-- \alu1|Add0~17\ = CARRY((\alu1|Add0~10_combout\ & ((\mux41|Mux6~0_combout\) # (!\alu1|Add0~15\))) # (!\alu1|Add0~10_combout\ & (\mux41|Mux6~0_combout\ & !\alu1|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|Add0~10_combout\,
	datab => \mux41|Mux6~0_combout\,
	datad => VCC,
	cin => \alu1|Add0~15\,
	combout => \alu1|Add0~16_combout\,
	cout => \alu1|Add0~17\);

-- Location: LCCOMB_X24_Y10_N16
\alu1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Add0~18_combout\ = (\alu1|Add0~9_combout\ & ((\mux41|Mux5~1_combout\ & (!\alu1|Add0~17\)) # (!\mux41|Mux5~1_combout\ & ((\alu1|Add0~17\) # (GND))))) # (!\alu1|Add0~9_combout\ & ((\mux41|Mux5~1_combout\ & (\alu1|Add0~17\ & VCC)) # 
-- (!\mux41|Mux5~1_combout\ & (!\alu1|Add0~17\))))
-- \alu1|Add0~19\ = CARRY((\alu1|Add0~9_combout\ & ((!\alu1|Add0~17\) # (!\mux41|Mux5~1_combout\))) # (!\alu1|Add0~9_combout\ & (!\mux41|Mux5~1_combout\ & !\alu1|Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|Add0~9_combout\,
	datab => \mux41|Mux5~1_combout\,
	datad => VCC,
	cin => \alu1|Add0~17\,
	combout => \alu1|Add0~18_combout\,
	cout => \alu1|Add0~19\);

-- Location: LCCOMB_X24_Y10_N30
\alu1|Mux6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux6~9_combout\ = (\alu1|Mux6~3_combout\ & (\dc1|toalu[2]~3_combout\)) # (!\alu1|Mux6~3_combout\ & ((\dc1|toalu[2]~3_combout\ & (!\alu1|Equal0~5_combout\)) # (!\dc1|toalu[2]~3_combout\ & ((\alu1|Add0~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|Mux6~3_combout\,
	datab => \dc1|toalu[2]~3_combout\,
	datac => \alu1|Equal0~5_combout\,
	datad => \alu1|Add0~18_combout\,
	combout => \alu1|Mux6~9_combout\);

-- Location: LCCOMB_X23_Y12_N0
\mux41|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux41|Mux5~2_combout\ = (\imem1|WideOr1~8_combout\) # (((\mux41|Mux5~0_combout\) # (\imem1|WideOr0~15_combout\)) # (!\dc1|tomux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr1~8_combout\,
	datab => \dc1|tomux2~0_combout\,
	datac => \mux41|Mux5~0_combout\,
	datad => \imem1|WideOr0~15_combout\,
	combout => \mux41|Mux5~2_combout\);

-- Location: LCCOMB_X26_Y10_N6
\alu1|ShiftRight0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~10_combout\ = (\mux41|Mux5~2_combout\ & ((\mux51|Mux7~1_combout\ & ((\rf1|core~113_combout\))) # (!\mux51|Mux7~1_combout\ & (\rf1|core~167_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~167_combout\,
	datab => \mux41|Mux5~2_combout\,
	datac => \rf1|core~113_combout\,
	datad => \mux51|Mux7~1_combout\,
	combout => \alu1|ShiftRight0~10_combout\);

-- Location: LCCOMB_X23_Y13_N12
\mux51|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux51|Mux5~1_combout\ = (\dc1|tomux5[0]~1_combout\ & (!\cnt1|CntValue\(2))) # (!\dc1|tomux5[0]~1_combout\ & ((\mux51|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt1|CntValue\(2),
	datac => \mux51|Mux5~0_combout\,
	datad => \dc1|tomux5[0]~1_combout\,
	combout => \mux51|Mux5~1_combout\);

-- Location: LCCOMB_X24_Y11_N30
\alu1|rslt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|rslt~12_combout\ = (\rf1|core~194_combout\ & (\mux51|Mux0~2_combout\ & ((\mux41|Mux5~0_combout\) # (!\rf1|core~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~194_combout\,
	datab => \mux41|Mux5~0_combout\,
	datac => \rf1|core~104_combout\,
	datad => \mux51|Mux0~2_combout\,
	combout => \alu1|rslt~12_combout\);

-- Location: LCCOMB_X24_Y14_N14
\cnt1|CntValue[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt1|CntValue[7]~3_combout\ = (\alu1|Mux8~11_combout\ & (\alu1|rslt~12_combout\)) # (!\alu1|Mux8~11_combout\ & ((\alu1|Mux1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|Mux8~11_combout\,
	datab => \alu1|rslt~12_combout\,
	datad => \alu1|Mux1~6_combout\,
	combout => \cnt1|CntValue[7]~3_combout\);

-- Location: FF_X24_Y14_N15
\cnt1|CntValue[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt1|CntValue[7]~3_combout\,
	asdata => \rf1|core~194_combout\,
	sload => \dc1|tomux7~0_combout\,
	ena => \dc1|toCntwe~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt1|CntValue\(7));

-- Location: FF_X24_Y11_N21
\rf1|core~7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux0~3_combout\,
	sload => VCC,
	ena => \rf1|core~277_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~7_q\);

-- Location: FF_X26_Y11_N9
\rf1|core~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux0~3_combout\,
	sload => VCC,
	ena => \rf1|core~275_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~23_q\);

-- Location: FF_X25_Y11_N29
\rf1|core~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux0~3_combout\,
	sload => VCC,
	ena => \rf1|core~273_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~31_q\);

-- Location: LCCOMB_X26_Y11_N8
\rf1|core~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~201_combout\ = (\sc1|SC\(1) & (\sc1|SC\(0))) # (!\sc1|SC\(1) & ((\sc1|SC\(0) & ((\rf1|core~31_q\))) # (!\sc1|SC\(0) & (\rf1|core~23_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(1),
	datab => \sc1|SC\(0),
	datac => \rf1|core~23_q\,
	datad => \rf1|core~31_q\,
	combout => \rf1|core~201_combout\);

-- Location: LCCOMB_X25_Y9_N2
\rf1|core~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~202_combout\ = (\sc1|SC\(1) & ((\rf1|core~201_combout\ & (\rf1|core~15_q\)) # (!\rf1|core~201_combout\ & ((\rf1|core~7_q\))))) # (!\sc1|SC\(1) & (((\rf1|core~201_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~15_q\,
	datab => \sc1|SC\(1),
	datac => \rf1|core~7_q\,
	datad => \rf1|core~201_combout\,
	combout => \rf1|core~202_combout\);

-- Location: FF_X22_Y11_N19
\rf1|core~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux0~3_combout\,
	sload => VCC,
	ena => \rf1|core~253_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~47_q\);

-- Location: FF_X24_Y11_N23
\rf1|core~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux0~3_combout\,
	sload => VCC,
	ena => \rf1|core~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~39_q\);

-- Location: FF_X26_Y11_N3
\rf1|core~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux0~3_combout\,
	sload => VCC,
	ena => \rf1|core~255_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~63_q\);

-- Location: FF_X22_Y11_N25
\rf1|core~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux0~3_combout\,
	sload => VCC,
	ena => \rf1|core~257_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~55_q\);

-- Location: LCCOMB_X22_Y11_N24
\rf1|core~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~195_combout\ = (\sc1|SC\(1) & (((\sc1|SC\(0))))) # (!\sc1|SC\(1) & ((\sc1|SC\(0) & (\rf1|core~63_q\)) # (!\sc1|SC\(0) & ((\rf1|core~55_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(1),
	datab => \rf1|core~63_q\,
	datac => \rf1|core~55_q\,
	datad => \sc1|SC\(0),
	combout => \rf1|core~195_combout\);

-- Location: LCCOMB_X24_Y11_N22
\rf1|core~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~196_combout\ = (\sc1|SC\(1) & ((\rf1|core~195_combout\ & (\rf1|core~47_q\)) # (!\rf1|core~195_combout\ & ((\rf1|core~39_q\))))) # (!\sc1|SC\(1) & (((\rf1|core~195_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~47_q\,
	datab => \sc1|SC\(1),
	datac => \rf1|core~39_q\,
	datad => \rf1|core~195_combout\,
	combout => \rf1|core~196_combout\);

-- Location: FF_X25_Y12_N5
\rf1|core~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux0~3_combout\,
	sload => VCC,
	ena => \rf1|core~269_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~103_q\);

-- Location: LCCOMB_X25_Y12_N10
\rf1|core~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~199_combout\ = (\sc1|SC\(1) & (!\sc1|SC\(0) & \rf1|core~103_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(1),
	datab => \sc1|SC\(0),
	datac => \rf1|core~103_q\,
	combout => \rf1|core~199_combout\);

-- Location: FF_X23_Y14_N19
\rf1|core~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux0~3_combout\,
	sload => VCC,
	ena => \rf1|core~267_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~71_q\);

-- Location: FF_X23_Y14_N1
\rf1|core~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux0~3_combout\,
	sload => VCC,
	ena => \rf1|core~261_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~79_q\);

-- Location: FF_X24_Y9_N17
\rf1|core~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux0~3_combout\,
	sload => VCC,
	ena => \rf1|core~265_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~87_q\);

-- Location: LCCOMB_X24_Y15_N28
\rf1|core~95feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~95feeder_combout\ = \mux21|Mux0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux21|Mux0~3_combout\,
	combout => \rf1|core~95feeder_combout\);

-- Location: FF_X24_Y15_N29
\rf1|core~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf1|core~95feeder_combout\,
	ena => \rf1|core~263_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~95_q\);

-- Location: LCCOMB_X24_Y9_N16
\rf1|core~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~197_combout\ = (\sc1|SC\(0) & ((\sc1|SC\(1)) # ((\rf1|core~95_q\)))) # (!\sc1|SC\(0) & (!\sc1|SC\(1) & (\rf1|core~87_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(0),
	datab => \sc1|SC\(1),
	datac => \rf1|core~87_q\,
	datad => \rf1|core~95_q\,
	combout => \rf1|core~197_combout\);

-- Location: LCCOMB_X23_Y14_N0
\rf1|core~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~198_combout\ = (\sc1|SC\(1) & ((\rf1|core~197_combout\ & ((\rf1|core~79_q\))) # (!\rf1|core~197_combout\ & (\rf1|core~71_q\)))) # (!\sc1|SC\(1) & (((\rf1|core~197_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(1),
	datab => \rf1|core~71_q\,
	datac => \rf1|core~79_q\,
	datad => \rf1|core~197_combout\,
	combout => \rf1|core~198_combout\);

-- Location: LCCOMB_X23_Y14_N24
\rf1|core~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~200_combout\ = (\rf1|Add1~1_combout\ & (\rf1|Add1~0_combout\)) # (!\rf1|Add1~1_combout\ & ((\rf1|Add1~0_combout\ & ((\rf1|core~198_combout\))) # (!\rf1|Add1~0_combout\ & (\rf1|core~199_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|Add1~1_combout\,
	datab => \rf1|Add1~0_combout\,
	datac => \rf1|core~199_combout\,
	datad => \rf1|core~198_combout\,
	combout => \rf1|core~200_combout\);

-- Location: LCCOMB_X23_Y14_N10
\rf1|core~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~203_combout\ = (\rf1|Add1~1_combout\ & ((\rf1|core~200_combout\ & (\rf1|core~202_combout\)) # (!\rf1|core~200_combout\ & ((\rf1|core~196_combout\))))) # (!\rf1|Add1~1_combout\ & (((\rf1|core~200_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|Add1~1_combout\,
	datab => \rf1|core~202_combout\,
	datac => \rf1|core~196_combout\,
	datad => \rf1|core~200_combout\,
	combout => \rf1|core~203_combout\);

-- Location: LCCOMB_X22_Y14_N8
\mux51|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux51|Mux0~0_combout\ = (!\dc1|WideOr4~2_combout\ & (!\imem1|WideOr1~8_combout\ & (\rf1|core~203_combout\ & !\dc1|WideOr4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc1|WideOr4~2_combout\,
	datab => \imem1|WideOr1~8_combout\,
	datac => \rf1|core~203_combout\,
	datad => \dc1|WideOr4~1_combout\,
	combout => \mux51|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y14_N28
\mux51|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux51|Mux0~1_combout\ = (\rf1|core~203_combout\ & ((\imem1|WideOr0~15_combout\) # ((!\dc1|tomux2~0_combout\ & \imem1|WideOr1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr0~15_combout\,
	datab => \dc1|tomux2~0_combout\,
	datac => \imem1|WideOr1~8_combout\,
	datad => \rf1|core~203_combout\,
	combout => \mux51|Mux0~1_combout\);

-- Location: LCCOMB_X22_Y14_N6
\mux51|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux51|Mux0~2_combout\ = (\mux51|Mux0~0_combout\) # ((\mux51|Mux0~1_combout\) # ((\cnt1|CntValue\(7) & \dc1|tomux5[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt1|CntValue\(7),
	datab => \dc1|tomux5[0]~1_combout\,
	datac => \mux51|Mux0~0_combout\,
	datad => \mux51|Mux0~1_combout\,
	combout => \mux51|Mux0~2_combout\);

-- Location: LCCOMB_X21_Y10_N16
\mux41|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux41|Mux3~0_combout\ = (\rf1|core~113_combout\ & ((\mux41|Mux5~0_combout\) # (!\rf1|core~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~104_combout\,
	datac => \rf1|core~113_combout\,
	datad => \mux41|Mux5~0_combout\,
	combout => \mux41|Mux3~0_combout\);

-- Location: LCCOMB_X22_Y10_N10
\alu1|Mux4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux4~9_combout\ = (\dc1|toalu[2]~3_combout\ & ((\mux51|Mux3~2_combout\ & (\mux41|Mux3~0_combout\ $ (!\alu1|Mux6~3_combout\))) # (!\mux51|Mux3~2_combout\ & (\mux41|Mux3~0_combout\ & !\alu1|Mux6~3_combout\)))) # (!\dc1|toalu[2]~3_combout\ & 
-- (((\alu1|Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux51|Mux3~2_combout\,
	datab => \dc1|toalu[2]~3_combout\,
	datac => \mux41|Mux3~0_combout\,
	datad => \alu1|Mux6~3_combout\,
	combout => \alu1|Mux4~9_combout\);

-- Location: LCCOMB_X21_Y14_N4
\alu1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Add0~30_combout\ = \mux51|Mux3~2_combout\ $ (((\dc1|tomux2~0_combout\ & (!\imem1|WideOr0~15_combout\ & \dc1|toalu[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc1|tomux2~0_combout\,
	datab => \imem1|WideOr0~15_combout\,
	datac => \dc1|toalu[0]~4_combout\,
	datad => \mux51|Mux3~2_combout\,
	combout => \alu1|Add0~30_combout\);

-- Location: LCCOMB_X24_Y10_N18
\alu1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Add0~20_combout\ = ((\mux41|Mux4~0_combout\ $ (\alu1|Add0~8_combout\ $ (!\alu1|Add0~19\)))) # (GND)
-- \alu1|Add0~21\ = CARRY((\mux41|Mux4~0_combout\ & ((\alu1|Add0~8_combout\) # (!\alu1|Add0~19\))) # (!\mux41|Mux4~0_combout\ & (\alu1|Add0~8_combout\ & !\alu1|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux41|Mux4~0_combout\,
	datab => \alu1|Add0~8_combout\,
	datad => VCC,
	cin => \alu1|Add0~19\,
	combout => \alu1|Add0~20_combout\,
	cout => \alu1|Add0~21\);

-- Location: LCCOMB_X24_Y10_N20
\alu1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Add0~22_combout\ = (\mux41|Mux3~0_combout\ & ((\alu1|Add0~30_combout\ & (\alu1|Add0~21\ & VCC)) # (!\alu1|Add0~30_combout\ & (!\alu1|Add0~21\)))) # (!\mux41|Mux3~0_combout\ & ((\alu1|Add0~30_combout\ & (!\alu1|Add0~21\)) # (!\alu1|Add0~30_combout\ & 
-- ((\alu1|Add0~21\) # (GND)))))
-- \alu1|Add0~23\ = CARRY((\mux41|Mux3~0_combout\ & (!\alu1|Add0~30_combout\ & !\alu1|Add0~21\)) # (!\mux41|Mux3~0_combout\ & ((!\alu1|Add0~21\) # (!\alu1|Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux41|Mux3~0_combout\,
	datab => \alu1|Add0~30_combout\,
	datad => VCC,
	cin => \alu1|Add0~21\,
	combout => \alu1|Add0~22_combout\,
	cout => \alu1|Add0~23\);

-- Location: LCCOMB_X26_Y10_N14
\alu1|ShiftLeft0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~2_combout\ = (\mux41|Mux5~2_combout\ & ((\mux51|Mux7~1_combout\ & (\rf1|core~221_combout\)) # (!\mux51|Mux7~1_combout\ & ((\rf1|core~185_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~221_combout\,
	datab => \mux51|Mux7~1_combout\,
	datac => \mux41|Mux5~2_combout\,
	datad => \rf1|core~185_combout\,
	combout => \alu1|ShiftLeft0~2_combout\);

-- Location: LCCOMB_X26_Y10_N16
\alu1|ShiftLeft0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~3_combout\ = (\mux41|Mux5~2_combout\ & ((\mux51|Mux7~1_combout\ & ((\rf1|core~113_combout\))) # (!\mux51|Mux7~1_combout\ & (\rf1|core~248_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~248_combout\,
	datab => \mux41|Mux5~2_combout\,
	datac => \rf1|core~113_combout\,
	datad => \mux51|Mux7~1_combout\,
	combout => \alu1|ShiftLeft0~3_combout\);

-- Location: LCCOMB_X24_Y13_N8
\alu1|ShiftRight0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~1_combout\ = (\mux51|Mux6~1_combout\ & ((\rf1|core~194_combout\))) # (!\mux51|Mux6~1_combout\ & (\rf1|core~167_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf1|core~167_combout\,
	datac => \mux51|Mux6~1_combout\,
	datad => \rf1|core~194_combout\,
	combout => \alu1|ShiftRight0~1_combout\);

-- Location: LCCOMB_X23_Y13_N20
\alu1|ShiftRight0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~0_combout\ = (\mux51|Mux6~1_combout\ & ((\rf1|core~149_combout\))) # (!\mux51|Mux6~1_combout\ & (\rf1|core~113_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~113_combout\,
	datab => \rf1|core~149_combout\,
	datac => \mux51|Mux6~1_combout\,
	combout => \alu1|ShiftRight0~0_combout\);

-- Location: LCCOMB_X23_Y13_N22
\alu1|ShiftRight0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~2_combout\ = (\mux41|Mux5~2_combout\ & ((\mux51|Mux7~1_combout\ & ((\alu1|ShiftRight0~0_combout\))) # (!\mux51|Mux7~1_combout\ & (\alu1|ShiftRight0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux51|Mux7~1_combout\,
	datab => \mux41|Mux5~2_combout\,
	datac => \alu1|ShiftRight0~1_combout\,
	datad => \alu1|ShiftRight0~0_combout\,
	combout => \alu1|ShiftRight0~2_combout\);

-- Location: LCCOMB_X22_Y10_N2
\alu1|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux6~2_combout\ = (!\mux51|Mux4~1_combout\ & (\mux51|Mux5~1_combout\ & !\alu1|ShiftLeft0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux51|Mux4~1_combout\,
	datac => \mux51|Mux5~1_combout\,
	datad => \alu1|ShiftLeft0~4_combout\,
	combout => \alu1|Mux6~2_combout\);

-- Location: LCCOMB_X22_Y10_N18
\alu1|Mux4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux4~11_combout\ = \alu1|Mux6~2_combout\ $ ((((\imem1|WideOr0~15_combout\) # (!\dc1|tomux2~0_combout\)) # (!\dc1|toalu[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc1|toalu[0]~4_combout\,
	datab => \dc1|tomux2~0_combout\,
	datac => \imem1|WideOr0~15_combout\,
	datad => \alu1|Mux6~2_combout\,
	combout => \alu1|Mux4~11_combout\);

-- Location: LCCOMB_X22_Y10_N8
\alu1|Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux4~6_combout\ = (\dc1|toalu[0]~5_combout\) # ((\mux51|Mux6~1_combout\ & \alu1|Mux6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dc1|toalu[0]~5_combout\,
	datac => \mux51|Mux6~1_combout\,
	datad => \alu1|Mux6~2_combout\,
	combout => \alu1|Mux4~6_combout\);

-- Location: LCCOMB_X21_Y14_N10
\alu1|ShiftLeft0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~12_combout\ = (\alu1|ShiftLeft0~4_combout\) # ((\dc1|tomux5[0]~1_combout\ & (\cnt1|CntValue\(3))) # (!\dc1|tomux5[0]~1_combout\ & ((\mux51|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt1|CntValue\(3),
	datab => \mux51|Mux4~0_combout\,
	datac => \alu1|ShiftLeft0~4_combout\,
	datad => \dc1|tomux5[0]~1_combout\,
	combout => \alu1|ShiftLeft0~12_combout\);

-- Location: LCCOMB_X21_Y14_N12
\alu1|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux4~5_combout\ = (!\mux51|Mux6~1_combout\ & (\mux51|Mux7~1_combout\ & (\mux41|Mux7~1_combout\ & !\alu1|ShiftLeft0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux51|Mux6~1_combout\,
	datab => \mux51|Mux7~1_combout\,
	datac => \mux41|Mux7~1_combout\,
	datad => \alu1|ShiftLeft0~12_combout\,
	combout => \alu1|Mux4~5_combout\);

-- Location: LCCOMB_X22_Y10_N30
\alu1|Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux4~7_combout\ = (\alu1|Mux4~11_combout\ & ((\alu1|Mux4~6_combout\ & (\alu1|ShiftRight0~2_combout\)) # (!\alu1|Mux4~6_combout\ & ((\alu1|Mux4~5_combout\))))) # (!\alu1|Mux4~11_combout\ & (((!\alu1|Mux4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|ShiftRight0~2_combout\,
	datab => \alu1|Mux4~11_combout\,
	datac => \alu1|Mux4~6_combout\,
	datad => \alu1|Mux4~5_combout\,
	combout => \alu1|Mux4~7_combout\);

-- Location: LCCOMB_X23_Y13_N2
\alu1|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux4~4_combout\ = (\mux51|Mux5~1_combout\ & (!\dc1|toalu[0]~5_combout\ & (!\mux51|Mux4~1_combout\ & !\alu1|ShiftLeft0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux51|Mux5~1_combout\,
	datab => \dc1|toalu[0]~5_combout\,
	datac => \mux51|Mux4~1_combout\,
	datad => \alu1|ShiftLeft0~4_combout\,
	combout => \alu1|Mux4~4_combout\);

-- Location: LCCOMB_X22_Y10_N12
\alu1|Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux4~8_combout\ = (\alu1|Mux4~7_combout\ & (((\alu1|ShiftLeft0~3_combout\) # (!\alu1|Mux4~4_combout\)))) # (!\alu1|Mux4~7_combout\ & (\alu1|ShiftLeft0~2_combout\ & ((\alu1|Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|ShiftLeft0~2_combout\,
	datab => \alu1|ShiftLeft0~3_combout\,
	datac => \alu1|Mux4~7_combout\,
	datad => \alu1|Mux4~4_combout\,
	combout => \alu1|Mux4~8_combout\);

-- Location: LCCOMB_X22_Y10_N20
\alu1|Mux4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux4~10_combout\ = (\alu1|Mux4~9_combout\ & ((\dc1|toalu[2]~3_combout\) # ((\alu1|Mux4~8_combout\)))) # (!\alu1|Mux4~9_combout\ & (!\dc1|toalu[2]~3_combout\ & (\alu1|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|Mux4~9_combout\,
	datab => \dc1|toalu[2]~3_combout\,
	datac => \alu1|Add0~22_combout\,
	datad => \alu1|Mux4~8_combout\,
	combout => \alu1|Mux4~10_combout\);

-- Location: LCCOMB_X23_Y13_N8
\mux71|Z[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux71|Z[4]~1_combout\ = (\rf1|core~113_combout\ & ((\dc1|tomux7~0_combout\) # ((\mux71|Z[2]~0_combout\ & \alu1|Mux4~10_combout\)))) # (!\rf1|core~113_combout\ & (\mux71|Z[2]~0_combout\ & ((\alu1|Mux4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~113_combout\,
	datab => \mux71|Z[2]~0_combout\,
	datac => \dc1|tomux7~0_combout\,
	datad => \alu1|Mux4~10_combout\,
	combout => \mux71|Z[4]~1_combout\);

-- Location: FF_X23_Y13_N9
\cnt1|CntValue[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mux71|Z[4]~1_combout\,
	ena => \dc1|toCntwe~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt1|CntValue\(4));

-- Location: LCCOMB_X25_Y9_N4
\rf1|core~12feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~12feeder_combout\ = \mux21|Mux3~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux21|Mux3~2_combout\,
	combout => \rf1|core~12feeder_combout\);

-- Location: FF_X25_Y9_N5
\rf1|core~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf1|core~12feeder_combout\,
	ena => \rf1|core~271_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~12_q\);

-- Location: FF_X22_Y10_N25
\rf1|core~4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mux21|Mux3~2_combout\,
	ena => \rf1|core~277_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~4_q\);

-- Location: LCCOMB_X26_Y11_N26
\rf1|core~20feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~20feeder_combout\ = \mux21|Mux3~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux21|Mux3~2_combout\,
	combout => \rf1|core~20feeder_combout\);

-- Location: FF_X26_Y11_N27
\rf1|core~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf1|core~20feeder_combout\,
	ena => \rf1|core~275_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~20_q\);

-- Location: FF_X25_Y11_N21
\rf1|core~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux3~2_combout\,
	sload => VCC,
	ena => \rf1|core~273_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~28_q\);

-- Location: LCCOMB_X26_Y11_N28
\rf1|core~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~120_combout\ = (\sc1|SC\(0) & (((\rf1|core~28_q\) # (\sc1|SC\(1))))) # (!\sc1|SC\(0) & (\rf1|core~20_q\ & ((!\sc1|SC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~20_q\,
	datab => \rf1|core~28_q\,
	datac => \sc1|SC\(0),
	datad => \sc1|SC\(1),
	combout => \rf1|core~120_combout\);

-- Location: LCCOMB_X25_Y9_N10
\rf1|core~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~121_combout\ = (\sc1|SC\(1) & ((\rf1|core~120_combout\ & (\rf1|core~12_q\)) # (!\rf1|core~120_combout\ & ((\rf1|core~4_q\))))) # (!\sc1|SC\(1) & (((\rf1|core~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~12_q\,
	datab => \rf1|core~4_q\,
	datac => \sc1|SC\(1),
	datad => \rf1|core~120_combout\,
	combout => \rf1|core~121_combout\);

-- Location: LCCOMB_X25_Y12_N0
\rf1|core~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~118_combout\ = (\sc1|SC\(1) & (\rf1|core~100_q\ & !\sc1|SC\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(1),
	datab => \rf1|core~100_q\,
	datad => \sc1|SC\(0),
	combout => \rf1|core~118_combout\);

-- Location: FF_X24_Y11_N9
\rf1|core~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux3~2_combout\,
	sload => VCC,
	ena => \rf1|core~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~36_q\);

-- Location: FF_X22_Y11_N9
\rf1|core~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux3~2_combout\,
	sload => VCC,
	ena => \rf1|core~253_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~44_q\);

-- Location: FF_X26_Y11_N13
\rf1|core~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux3~2_combout\,
	sload => VCC,
	ena => \rf1|core~255_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~60_q\);

-- Location: FF_X22_Y11_N11
\rf1|core~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux3~2_combout\,
	sload => VCC,
	ena => \rf1|core~257_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~52_q\);

-- Location: LCCOMB_X22_Y11_N10
\rf1|core~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~116_combout\ = (\sc1|SC\(1) & (((\sc1|SC\(0))))) # (!\sc1|SC\(1) & ((\sc1|SC\(0) & (\rf1|core~60_q\)) # (!\sc1|SC\(0) & ((\rf1|core~52_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(1),
	datab => \rf1|core~60_q\,
	datac => \rf1|core~52_q\,
	datad => \sc1|SC\(0),
	combout => \rf1|core~116_combout\);

-- Location: LCCOMB_X22_Y11_N8
\rf1|core~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~117_combout\ = (\sc1|SC\(1) & ((\rf1|core~116_combout\ & ((\rf1|core~44_q\))) # (!\rf1|core~116_combout\ & (\rf1|core~36_q\)))) # (!\sc1|SC\(1) & (((\rf1|core~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(1),
	datab => \rf1|core~36_q\,
	datac => \rf1|core~44_q\,
	datad => \rf1|core~116_combout\,
	combout => \rf1|core~117_combout\);

-- Location: LCCOMB_X22_Y11_N4
\rf1|core~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~119_combout\ = (\rf1|Add1~1_combout\ & (((\rf1|core~117_combout\) # (\rf1|Add1~0_combout\)))) # (!\rf1|Add1~1_combout\ & (\rf1|core~118_combout\ & ((!\rf1|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~118_combout\,
	datab => \rf1|Add1~1_combout\,
	datac => \rf1|core~117_combout\,
	datad => \rf1|Add1~0_combout\,
	combout => \rf1|core~119_combout\);

-- Location: FF_X26_Y13_N11
\rf1|core~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux3~2_combout\,
	sload => VCC,
	ena => \rf1|core~267_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~68_q\);

-- Location: FF_X26_Y13_N9
\rf1|core~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux3~2_combout\,
	sload => VCC,
	ena => \rf1|core~261_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~76_q\);

-- Location: FF_X24_Y9_N11
\rf1|core~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux3~2_combout\,
	sload => VCC,
	ena => \rf1|core~265_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~84_q\);

-- Location: FF_X24_Y9_N25
\rf1|core~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux3~2_combout\,
	sload => VCC,
	ena => \rf1|core~263_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~92_q\);

-- Location: LCCOMB_X24_Y9_N24
\rf1|core~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~114_combout\ = (\sc1|SC\(1) & (((\sc1|SC\(0))))) # (!\sc1|SC\(1) & ((\sc1|SC\(0) & ((\rf1|core~92_q\))) # (!\sc1|SC\(0) & (\rf1|core~84_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~84_q\,
	datab => \sc1|SC\(1),
	datac => \rf1|core~92_q\,
	datad => \sc1|SC\(0),
	combout => \rf1|core~114_combout\);

-- Location: LCCOMB_X26_Y13_N18
\rf1|core~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~115_combout\ = (\sc1|SC\(1) & ((\rf1|core~114_combout\ & ((\rf1|core~76_q\))) # (!\rf1|core~114_combout\ & (\rf1|core~68_q\)))) # (!\sc1|SC\(1) & (((\rf1|core~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~68_q\,
	datab => \sc1|SC\(1),
	datac => \rf1|core~76_q\,
	datad => \rf1|core~114_combout\,
	combout => \rf1|core~115_combout\);

-- Location: LCCOMB_X22_Y11_N22
\rf1|core~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~122_combout\ = (\rf1|Add1~0_combout\ & ((\rf1|core~119_combout\ & (\rf1|core~121_combout\)) # (!\rf1|core~119_combout\ & ((\rf1|core~115_combout\))))) # (!\rf1|Add1~0_combout\ & (((\rf1|core~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~121_combout\,
	datab => \rf1|Add1~0_combout\,
	datac => \rf1|core~119_combout\,
	datad => \rf1|core~115_combout\,
	combout => \rf1|core~122_combout\);

-- Location: LCCOMB_X21_Y14_N20
\mux51|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux51|Mux3~1_combout\ = (\rf1|core~122_combout\ & ((\imem1|WideOr0~15_combout\) # ((!\dc1|tomux2~0_combout\ & \imem1|WideOr1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc1|tomux2~0_combout\,
	datab => \imem1|WideOr0~15_combout\,
	datac => \imem1|WideOr1~8_combout\,
	datad => \rf1|core~122_combout\,
	combout => \mux51|Mux3~1_combout\);

-- Location: LCCOMB_X22_Y14_N0
\mux51|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux51|Mux3~0_combout\ = (!\dc1|WideOr4~2_combout\ & (!\imem1|WideOr1~8_combout\ & (\rf1|core~122_combout\ & !\dc1|WideOr4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc1|WideOr4~2_combout\,
	datab => \imem1|WideOr1~8_combout\,
	datac => \rf1|core~122_combout\,
	datad => \dc1|WideOr4~1_combout\,
	combout => \mux51|Mux3~0_combout\);

-- Location: LCCOMB_X21_Y14_N18
\mux51|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux51|Mux3~2_combout\ = (\mux51|Mux3~1_combout\) # ((\mux51|Mux3~0_combout\) # ((\cnt1|CntValue\(4) & \dc1|tomux5[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt1|CntValue\(4),
	datab => \mux51|Mux3~1_combout\,
	datac => \mux51|Mux3~0_combout\,
	datad => \dc1|tomux5[0]~1_combout\,
	combout => \mux51|Mux3~2_combout\);

-- Location: LCCOMB_X23_Y11_N18
\alu1|rslt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|rslt~11_combout\ = (\rf1|core~167_combout\ & (\mux51|Mux2~2_combout\ & ((\mux41|Mux5~0_combout\) # (!\rf1|core~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~104_combout\,
	datab => \mux41|Mux5~0_combout\,
	datac => \rf1|core~167_combout\,
	datad => \mux51|Mux2~2_combout\,
	combout => \alu1|rslt~11_combout\);

-- Location: LCCOMB_X26_Y10_N4
\alu1|ShiftLeft0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~9_combout\ = (\mux41|Mux5~2_combout\ & ((\mux51|Mux7~1_combout\ & (\rf1|core~167_combout\)) # (!\mux51|Mux7~1_combout\ & ((\rf1|core~113_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~167_combout\,
	datab => \mux41|Mux5~2_combout\,
	datac => \rf1|core~113_combout\,
	datad => \mux51|Mux7~1_combout\,
	combout => \alu1|ShiftLeft0~9_combout\);

-- Location: LCCOMB_X26_Y10_N22
\alu1|ShiftLeft0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~8_combout\ = (\mux41|Mux5~2_combout\ & ((\mux51|Mux7~1_combout\ & (\rf1|core~248_combout\)) # (!\mux51|Mux7~1_combout\ & ((\rf1|core~221_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~248_combout\,
	datab => \rf1|core~221_combout\,
	datac => \mux41|Mux5~2_combout\,
	datad => \mux51|Mux7~1_combout\,
	combout => \alu1|ShiftLeft0~8_combout\);

-- Location: LCCOMB_X24_Y13_N4
\alu1|ShiftRight0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~6_combout\ = (\rf1|core~149_combout\ & (!\mux51|Mux6~1_combout\ & !\mux51|Mux7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf1|core~149_combout\,
	datac => \mux51|Mux6~1_combout\,
	datad => \mux51|Mux7~1_combout\,
	combout => \alu1|ShiftRight0~6_combout\);

-- Location: LCCOMB_X24_Y13_N6
\alu1|ShiftRight0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~7_combout\ = (\mux41|Mux5~2_combout\ & ((\alu1|ShiftRight0~6_combout\) # ((\alu1|ShiftRight0~1_combout\ & \mux51|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux41|Mux5~2_combout\,
	datab => \alu1|ShiftRight0~1_combout\,
	datac => \alu1|ShiftRight0~6_combout\,
	datad => \mux51|Mux7~1_combout\,
	combout => \alu1|ShiftRight0~7_combout\);

-- Location: LCCOMB_X23_Y12_N6
\alu1|ShiftLeft0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~10_combout\ = (\mux51|Mux7~1_combout\ & (((\mux41|Mux5~2_combout\ & \rf1|core~185_combout\)))) # (!\mux51|Mux7~1_combout\ & (\mux41|Mux7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux41|Mux7~1_combout\,
	datab => \mux41|Mux5~2_combout\,
	datac => \mux51|Mux7~1_combout\,
	datad => \rf1|core~185_combout\,
	combout => \alu1|ShiftLeft0~10_combout\);

-- Location: LCCOMB_X22_Y10_N16
\alu1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux3~0_combout\ = (!\mux51|Mux4~1_combout\ & (!\alu1|ShiftLeft0~4_combout\ & (!\mux51|Mux6~1_combout\ & \alu1|ShiftLeft0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux51|Mux4~1_combout\,
	datab => \alu1|ShiftLeft0~4_combout\,
	datac => \mux51|Mux6~1_combout\,
	datad => \alu1|ShiftLeft0~10_combout\,
	combout => \alu1|Mux3~0_combout\);

-- Location: LCCOMB_X22_Y10_N26
\alu1|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux3~1_combout\ = (\alu1|Mux4~6_combout\ & (\alu1|ShiftRight0~7_combout\ & ((\alu1|Mux4~11_combout\)))) # (!\alu1|Mux4~6_combout\ & (((\alu1|Mux3~0_combout\) # (!\alu1|Mux4~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|ShiftRight0~7_combout\,
	datab => \alu1|Mux3~0_combout\,
	datac => \alu1|Mux4~6_combout\,
	datad => \alu1|Mux4~11_combout\,
	combout => \alu1|Mux3~1_combout\);

-- Location: LCCOMB_X22_Y10_N28
\alu1|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux3~2_combout\ = (\alu1|Mux3~1_combout\ & ((\alu1|ShiftLeft0~9_combout\) # ((!\alu1|Mux4~4_combout\)))) # (!\alu1|Mux3~1_combout\ & (((\alu1|ShiftLeft0~8_combout\ & \alu1|Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|ShiftLeft0~9_combout\,
	datab => \alu1|ShiftLeft0~8_combout\,
	datac => \alu1|Mux3~1_combout\,
	datad => \alu1|Mux4~4_combout\,
	combout => \alu1|Mux3~2_combout\);

-- Location: LCCOMB_X21_Y14_N14
\alu1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Equal0~8_combout\ = \mux51|Mux2~2_combout\ $ (((\rf1|core~167_combout\ & ((\mux41|Mux5~0_combout\) # (!\rf1|core~104_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~104_combout\,
	datab => \mux41|Mux5~0_combout\,
	datac => \mux51|Mux2~2_combout\,
	datad => \rf1|core~167_combout\,
	combout => \alu1|Equal0~8_combout\);

-- Location: LCCOMB_X23_Y14_N26
\alu1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Add0~32_combout\ = \mux51|Mux2~2_combout\ $ (((!\imem1|WideOr0~15_combout\ & (\dc1|toalu[0]~4_combout\ & \dc1|tomux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr0~15_combout\,
	datab => \dc1|toalu[0]~4_combout\,
	datac => \dc1|tomux2~0_combout\,
	datad => \mux51|Mux2~2_combout\,
	combout => \alu1|Add0~32_combout\);

-- Location: LCCOMB_X25_Y13_N6
\mux41|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux41|Mux2~0_combout\ = (\rf1|core~167_combout\ & ((\mux41|Mux5~0_combout\) # (!\rf1|core~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf1|core~167_combout\,
	datac => \mux41|Mux5~0_combout\,
	datad => \rf1|core~104_combout\,
	combout => \mux41|Mux2~0_combout\);

-- Location: LCCOMB_X24_Y10_N22
\alu1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Add0~24_combout\ = ((\alu1|Add0~32_combout\ $ (\mux41|Mux2~0_combout\ $ (!\alu1|Add0~23\)))) # (GND)
-- \alu1|Add0~25\ = CARRY((\alu1|Add0~32_combout\ & ((\mux41|Mux2~0_combout\) # (!\alu1|Add0~23\))) # (!\alu1|Add0~32_combout\ & (\mux41|Mux2~0_combout\ & !\alu1|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|Add0~32_combout\,
	datab => \mux41|Mux2~0_combout\,
	datad => VCC,
	cin => \alu1|Add0~23\,
	combout => \alu1|Add0~24_combout\,
	cout => \alu1|Add0~25\);

-- Location: LCCOMB_X23_Y11_N24
\alu1|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux3~3_combout\ = (\alu1|Mux6~3_combout\ & (((\dc1|toalu[2]~3_combout\)))) # (!\alu1|Mux6~3_combout\ & ((\dc1|toalu[2]~3_combout\ & (\alu1|Equal0~8_combout\)) # (!\dc1|toalu[2]~3_combout\ & ((\alu1|Add0~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|Equal0~8_combout\,
	datab => \alu1|Mux6~3_combout\,
	datac => \alu1|Add0~24_combout\,
	datad => \dc1|toalu[2]~3_combout\,
	combout => \alu1|Mux3~3_combout\);

-- Location: LCCOMB_X23_Y11_N6
\alu1|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux3~4_combout\ = (\alu1|Mux6~3_combout\ & ((\alu1|Mux3~3_combout\ & (\alu1|rslt~11_combout\)) # (!\alu1|Mux3~3_combout\ & ((\alu1|Mux3~2_combout\))))) # (!\alu1|Mux6~3_combout\ & (((\alu1|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|Mux6~3_combout\,
	datab => \alu1|rslt~11_combout\,
	datac => \alu1|Mux3~2_combout\,
	datad => \alu1|Mux3~3_combout\,
	combout => \alu1|Mux3~4_combout\);

-- Location: LCCOMB_X23_Y13_N6
\mux71|Z[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux71|Z[5]~2_combout\ = (\rf1|core~167_combout\ & ((\dc1|tomux7~0_combout\) # ((\mux71|Z[2]~0_combout\ & \alu1|Mux3~4_combout\)))) # (!\rf1|core~167_combout\ & (\mux71|Z[2]~0_combout\ & ((\alu1|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~167_combout\,
	datab => \mux71|Z[2]~0_combout\,
	datac => \dc1|tomux7~0_combout\,
	datad => \alu1|Mux3~4_combout\,
	combout => \mux71|Z[5]~2_combout\);

-- Location: FF_X23_Y13_N7
\cnt1|CntValue[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mux71|Z[5]~2_combout\,
	ena => \dc1|toCntwe~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt1|CntValue\(5));

-- Location: FF_X19_Y11_N17
\dmem1|guts_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf1|core~167_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dmem1|guts_rtl_0_bypass\(22));

-- Location: LCCOMB_X19_Y11_N6
\mux21|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux21|Mux2~0_combout\ = (\mux21|Mux6~8_combout\ & (((\mux21|Mux6~1_combout\)))) # (!\mux21|Mux6~8_combout\ & ((\mux21|Mux6~1_combout\ & ((\dmem1|guts_rtl_0|auto_generated|ram_block1a5\))) # (!\mux21|Mux6~1_combout\ & (!\imem1|WideOr3~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr3~11_combout\,
	datab => \dmem1|guts_rtl_0|auto_generated|ram_block1a5\,
	datac => \mux21|Mux6~8_combout\,
	datad => \mux21|Mux6~1_combout\,
	combout => \mux21|Mux2~0_combout\);

-- Location: LCCOMB_X19_Y11_N16
\mux21|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux21|Mux2~1_combout\ = (\mux21|Mux6~8_combout\ & ((\mux21|Mux2~0_combout\ & ((\dmem1|guts_rtl_0_bypass\(22)))) # (!\mux21|Mux2~0_combout\ & (\rf1|core~167_combout\)))) # (!\mux21|Mux6~8_combout\ & (((\mux21|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux21|Mux6~8_combout\,
	datab => \rf1|core~167_combout\,
	datac => \dmem1|guts_rtl_0_bypass\(22),
	datad => \mux21|Mux2~0_combout\,
	combout => \mux21|Mux2~1_combout\);

-- Location: LCCOMB_X23_Y11_N0
\mux21|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux21|Mux2~2_combout\ = (\mux21|Mux2~1_combout\ & ((\mux21|Mux6~0_combout\) # ((\mux21|Mux5~0_combout\ & \alu1|Mux3~4_combout\)))) # (!\mux21|Mux2~1_combout\ & (((\mux21|Mux5~0_combout\ & \alu1|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux21|Mux2~1_combout\,
	datab => \mux21|Mux6~0_combout\,
	datac => \mux21|Mux5~0_combout\,
	datad => \alu1|Mux3~4_combout\,
	combout => \mux21|Mux2~2_combout\);

-- Location: LCCOMB_X24_Y12_N4
\rf1|core~101feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~101feeder_combout\ = \mux21|Mux2~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux21|Mux2~2_combout\,
	combout => \rf1|core~101feeder_combout\);

-- Location: FF_X24_Y12_N5
\rf1|core~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf1|core~101feeder_combout\,
	ena => \rf1|core~269_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~101_q\);

-- Location: LCCOMB_X24_Y12_N6
\rf1|core~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~172_combout\ = (!\sc1|SC\(0) & (\rf1|core~101_q\ & \sc1|SC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(0),
	datab => \rf1|core~101_q\,
	datad => \sc1|SC\(1),
	combout => \rf1|core~172_combout\);

-- Location: FF_X24_Y13_N27
\rf1|core~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux2~2_combout\,
	sload => VCC,
	ena => \rf1|core~261_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~77_q\);

-- Location: FF_X24_Y9_N19
\rf1|core~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux2~2_combout\,
	sload => VCC,
	ena => \rf1|core~265_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~85_q\);

-- Location: FF_X24_Y9_N5
\rf1|core~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux2~2_combout\,
	sload => VCC,
	ena => \rf1|core~263_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~93_q\);

-- Location: LCCOMB_X24_Y9_N4
\rf1|core~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~170_combout\ = (\sc1|SC\(1) & (((\sc1|SC\(0))))) # (!\sc1|SC\(1) & ((\sc1|SC\(0) & ((\rf1|core~93_q\))) # (!\sc1|SC\(0) & (\rf1|core~85_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~85_q\,
	datab => \sc1|SC\(1),
	datac => \rf1|core~93_q\,
	datad => \sc1|SC\(0),
	combout => \rf1|core~170_combout\);

-- Location: FF_X24_Y13_N25
\rf1|core~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux2~2_combout\,
	sload => VCC,
	ena => \rf1|core~267_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~69_q\);

-- Location: LCCOMB_X24_Y13_N24
\rf1|core~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~171_combout\ = (\rf1|core~170_combout\ & ((\rf1|core~77_q\) # ((!\sc1|SC\(1))))) # (!\rf1|core~170_combout\ & (((\rf1|core~69_q\ & \sc1|SC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~77_q\,
	datab => \rf1|core~170_combout\,
	datac => \rf1|core~69_q\,
	datad => \sc1|SC\(1),
	combout => \rf1|core~171_combout\);

-- Location: LCCOMB_X24_Y13_N22
\rf1|core~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~173_combout\ = (\rf1|Add1~1_combout\ & (\rf1|Add1~0_combout\)) # (!\rf1|Add1~1_combout\ & ((\rf1|Add1~0_combout\ & ((\rf1|core~171_combout\))) # (!\rf1|Add1~0_combout\ & (\rf1|core~172_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|Add1~1_combout\,
	datab => \rf1|Add1~0_combout\,
	datac => \rf1|core~172_combout\,
	datad => \rf1|core~171_combout\,
	combout => \rf1|core~173_combout\);

-- Location: LCCOMB_X23_Y9_N28
\rf1|core~45feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~45feeder_combout\ = \mux21|Mux2~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux21|Mux2~2_combout\,
	combout => \rf1|core~45feeder_combout\);

-- Location: FF_X23_Y9_N29
\rf1|core~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf1|core~45feeder_combout\,
	ena => \rf1|core~253_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~45_q\);

-- Location: FF_X24_Y11_N5
\rf1|core~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux2~2_combout\,
	sload => VCC,
	ena => \rf1|core~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~37_q\);

-- Location: LCCOMB_X22_Y9_N16
\rf1|core~61feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~61feeder_combout\ = \mux21|Mux2~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux21|Mux2~2_combout\,
	combout => \rf1|core~61feeder_combout\);

-- Location: FF_X22_Y9_N17
\rf1|core~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf1|core~61feeder_combout\,
	ena => \rf1|core~255_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~61_q\);

-- Location: LCCOMB_X23_Y13_N14
\rf1|core~53feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~53feeder_combout\ = \mux21|Mux2~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux21|Mux2~2_combout\,
	combout => \rf1|core~53feeder_combout\);

-- Location: FF_X23_Y13_N15
\rf1|core~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf1|core~53feeder_combout\,
	ena => \rf1|core~257_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~53_q\);

-- Location: LCCOMB_X23_Y13_N28
\rf1|core~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~168_combout\ = (\sc1|SC\(1) & (((\sc1|SC\(0))))) # (!\sc1|SC\(1) & ((\sc1|SC\(0) & (\rf1|core~61_q\)) # (!\sc1|SC\(0) & ((\rf1|core~53_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~61_q\,
	datab => \rf1|core~53_q\,
	datac => \sc1|SC\(1),
	datad => \sc1|SC\(0),
	combout => \rf1|core~168_combout\);

-- Location: LCCOMB_X24_Y11_N4
\rf1|core~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~169_combout\ = (\sc1|SC\(1) & ((\rf1|core~168_combout\ & (\rf1|core~45_q\)) # (!\rf1|core~168_combout\ & ((\rf1|core~37_q\))))) # (!\sc1|SC\(1) & (((\rf1|core~168_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~45_q\,
	datab => \sc1|SC\(1),
	datac => \rf1|core~37_q\,
	datad => \rf1|core~168_combout\,
	combout => \rf1|core~169_combout\);

-- Location: FF_X23_Y11_N1
\rf1|core~5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mux21|Mux2~2_combout\,
	ena => \rf1|core~277_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~5_q\);

-- Location: FF_X23_Y11_N23
\rf1|core~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux2~2_combout\,
	sload => VCC,
	ena => \rf1|core~271_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~13_q\);

-- Location: FF_X25_Y11_N15
\rf1|core~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux2~2_combout\,
	sload => VCC,
	ena => \rf1|core~273_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~29_q\);

-- Location: FF_X26_Y11_N17
\rf1|core~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux2~2_combout\,
	sload => VCC,
	ena => \rf1|core~275_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~21_q\);

-- Location: LCCOMB_X26_Y11_N16
\rf1|core~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~174_combout\ = (\sc1|SC\(0) & ((\rf1|core~29_q\) # ((\sc1|SC\(1))))) # (!\sc1|SC\(0) & (((\rf1|core~21_q\ & !\sc1|SC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~29_q\,
	datab => \sc1|SC\(0),
	datac => \rf1|core~21_q\,
	datad => \sc1|SC\(1),
	combout => \rf1|core~174_combout\);

-- Location: LCCOMB_X23_Y11_N22
\rf1|core~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~175_combout\ = (\sc1|SC\(1) & ((\rf1|core~174_combout\ & ((\rf1|core~13_q\))) # (!\rf1|core~174_combout\ & (\rf1|core~5_q\)))) # (!\sc1|SC\(1) & (((\rf1|core~174_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(1),
	datab => \rf1|core~5_q\,
	datac => \rf1|core~13_q\,
	datad => \rf1|core~174_combout\,
	combout => \rf1|core~175_combout\);

-- Location: LCCOMB_X24_Y13_N0
\rf1|core~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~176_combout\ = (\rf1|core~173_combout\ & (((\rf1|core~175_combout\)) # (!\rf1|Add1~1_combout\))) # (!\rf1|core~173_combout\ & (\rf1|Add1~1_combout\ & (\rf1|core~169_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~173_combout\,
	datab => \rf1|Add1~1_combout\,
	datac => \rf1|core~169_combout\,
	datad => \rf1|core~175_combout\,
	combout => \rf1|core~176_combout\);

-- Location: LCCOMB_X22_Y14_N4
\mux51|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux51|Mux2~0_combout\ = (!\imem1|WideOr1~8_combout\ & (\rf1|core~176_combout\ & (!\dc1|WideOr4~2_combout\ & !\dc1|WideOr4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr1~8_combout\,
	datab => \rf1|core~176_combout\,
	datac => \dc1|WideOr4~2_combout\,
	datad => \dc1|WideOr4~1_combout\,
	combout => \mux51|Mux2~0_combout\);

-- Location: LCCOMB_X23_Y14_N6
\mux51|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux51|Mux2~1_combout\ = (\rf1|core~176_combout\ & ((\imem1|WideOr0~15_combout\) # ((!\dc1|tomux2~0_combout\ & \imem1|WideOr1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr0~15_combout\,
	datab => \dc1|tomux2~0_combout\,
	datac => \imem1|WideOr1~8_combout\,
	datad => \rf1|core~176_combout\,
	combout => \mux51|Mux2~1_combout\);

-- Location: LCCOMB_X22_Y14_N14
\mux51|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux51|Mux2~2_combout\ = (\mux51|Mux2~0_combout\) # ((\mux51|Mux2~1_combout\) # ((\cnt1|CntValue\(5) & \dc1|tomux5[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt1|CntValue\(5),
	datab => \dc1|tomux5[0]~1_combout\,
	datac => \mux51|Mux2~0_combout\,
	datad => \mux51|Mux2~1_combout\,
	combout => \mux51|Mux2~2_combout\);

-- Location: LCCOMB_X21_Y14_N30
\alu1|ShiftLeft0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~4_combout\ = (\mux51|Mux0~2_combout\) # ((\mux51|Mux3~2_combout\) # ((\mux51|Mux2~2_combout\) # (\mux51|Mux1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux51|Mux0~2_combout\,
	datab => \mux51|Mux3~2_combout\,
	datac => \mux51|Mux2~2_combout\,
	datad => \mux51|Mux1~2_combout\,
	combout => \alu1|ShiftLeft0~4_combout\);

-- Location: LCCOMB_X23_Y10_N18
\alu1|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux6~4_combout\ = (\mux51|Mux5~1_combout\ & (!\mux51|Mux4~1_combout\ & (!\alu1|ShiftLeft0~4_combout\ & \dc1|toalu[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux51|Mux5~1_combout\,
	datab => \mux51|Mux4~1_combout\,
	datac => \alu1|ShiftLeft0~4_combout\,
	datad => \dc1|toalu[0]~5_combout\,
	combout => \alu1|Mux6~4_combout\);

-- Location: LCCOMB_X23_Y13_N30
\alu1|ShiftRight0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~3_combout\ = (\mux41|Mux5~2_combout\ & ((\mux51|Mux7~1_combout\ & ((\rf1|core~221_combout\))) # (!\mux51|Mux7~1_combout\ & (\rf1|core~248_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~248_combout\,
	datab => \mux41|Mux5~2_combout\,
	datac => \rf1|core~221_combout\,
	datad => \mux51|Mux7~1_combout\,
	combout => \alu1|ShiftRight0~3_combout\);

-- Location: LCCOMB_X23_Y10_N30
\alu1|Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux6~6_combout\ = (\alu1|Mux6~4_combout\ & ((\mux51|Mux6~1_combout\))) # (!\alu1|Mux6~4_combout\ & (\dc1|toalu[0]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dc1|toalu[0]~5_combout\,
	datac => \mux51|Mux6~1_combout\,
	datad => \alu1|Mux6~4_combout\,
	combout => \alu1|Mux6~6_combout\);

-- Location: LCCOMB_X24_Y14_N20
\alu1|ShiftLeft0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~6_combout\ = (!\mux51|Mux6~1_combout\ & ((\mux51|Mux7~1_combout\ & (\rf1|core~221_combout\)) # (!\mux51|Mux7~1_combout\ & ((\rf1|core~185_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux51|Mux7~1_combout\,
	datab => \rf1|core~221_combout\,
	datac => \mux51|Mux6~1_combout\,
	datad => \rf1|core~185_combout\,
	combout => \alu1|ShiftLeft0~6_combout\);

-- Location: LCCOMB_X24_Y14_N2
\alu1|ShiftLeft0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~5_combout\ = (\mux51|Mux6~1_combout\ & (((\mux51|Mux7~1_combout\)))) # (!\mux51|Mux6~1_combout\ & (((\mux41|Mux5~0_combout\)) # (!\rf1|core~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~104_combout\,
	datab => \mux41|Mux5~0_combout\,
	datac => \mux51|Mux6~1_combout\,
	datad => \mux51|Mux7~1_combout\,
	combout => \alu1|ShiftLeft0~5_combout\);

-- Location: LCCOMB_X23_Y10_N22
\alu1|ShiftLeft0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~7_combout\ = (\alu1|ShiftLeft0~5_combout\ & ((\alu1|ShiftLeft0~6_combout\) # ((\mux41|Mux7~1_combout\ & \mux51|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|ShiftLeft0~6_combout\,
	datab => \mux41|Mux7~1_combout\,
	datac => \mux51|Mux6~1_combout\,
	datad => \alu1|ShiftLeft0~5_combout\,
	combout => \alu1|ShiftLeft0~7_combout\);

-- Location: LCCOMB_X23_Y10_N4
\alu1|Mux6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux6~11_combout\ = (\alu1|ShiftLeft0~7_combout\ & (!\mux51|Mux4~1_combout\ & (!\alu1|ShiftLeft0~4_combout\ & \mux51|Mux5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|ShiftLeft0~7_combout\,
	datab => \mux51|Mux4~1_combout\,
	datac => \alu1|ShiftLeft0~4_combout\,
	datad => \mux51|Mux5~1_combout\,
	combout => \alu1|Mux6~11_combout\);

-- Location: LCCOMB_X23_Y10_N12
\alu1|Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux6~5_combout\ = (!\alu1|Mux6~4_combout\ & ((!\alu1|ShiftLeft0~12_combout\) # (!\dc1|toalu[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dc1|toalu[0]~5_combout\,
	datac => \alu1|ShiftLeft0~12_combout\,
	datad => \alu1|Mux6~4_combout\,
	combout => \alu1|Mux6~5_combout\);

-- Location: LCCOMB_X23_Y10_N16
\alu1|Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux6~7_combout\ = (\alu1|Mux6~6_combout\ & (\alu1|ShiftRight0~5_combout\ & ((\alu1|Mux6~5_combout\)))) # (!\alu1|Mux6~6_combout\ & (((\alu1|Mux6~11_combout\) # (!\alu1|Mux6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|Mux6~6_combout\,
	datab => \alu1|ShiftRight0~5_combout\,
	datac => \alu1|Mux6~11_combout\,
	datad => \alu1|Mux6~5_combout\,
	combout => \alu1|Mux6~7_combout\);

-- Location: LCCOMB_X23_Y10_N10
\alu1|Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux6~8_combout\ = (\alu1|Mux6~4_combout\ & ((\alu1|Mux6~7_combout\ & ((\alu1|ShiftRight0~3_combout\))) # (!\alu1|Mux6~7_combout\ & (\alu1|ShiftRight0~10_combout\)))) # (!\alu1|Mux6~4_combout\ & (((\alu1|Mux6~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|ShiftRight0~10_combout\,
	datab => \alu1|Mux6~4_combout\,
	datac => \alu1|ShiftRight0~3_combout\,
	datad => \alu1|Mux6~7_combout\,
	combout => \alu1|Mux6~8_combout\);

-- Location: LCCOMB_X23_Y10_N24
\alu1|Mux6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux6~10_combout\ = (\alu1|Mux6~3_combout\ & ((\alu1|Mux6~9_combout\ & (\alu1|rslt~8_combout\)) # (!\alu1|Mux6~9_combout\ & ((\alu1|Mux6~8_combout\))))) # (!\alu1|Mux6~3_combout\ & (((\alu1|Mux6~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|Mux6~3_combout\,
	datab => \alu1|rslt~8_combout\,
	datac => \alu1|Mux6~9_combout\,
	datad => \alu1|Mux6~8_combout\,
	combout => \alu1|Mux6~10_combout\);

-- Location: LCCOMB_X23_Y10_N0
\mux71|Z[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux71|Z[2]~3_combout\ = (\rf1|core~221_combout\ & ((\dc1|tomux7~0_combout\) # ((\mux71|Z[2]~0_combout\ & \alu1|Mux6~10_combout\)))) # (!\rf1|core~221_combout\ & (((\mux71|Z[2]~0_combout\ & \alu1|Mux6~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~221_combout\,
	datab => \dc1|tomux7~0_combout\,
	datac => \mux71|Z[2]~0_combout\,
	datad => \alu1|Mux6~10_combout\,
	combout => \mux71|Z[2]~3_combout\);

-- Location: FF_X23_Y10_N1
\cnt1|CntValue[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mux71|Z[2]~3_combout\,
	ena => \dc1|toCntwe~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt1|CntValue\(2));

-- Location: LCCOMB_X23_Y13_N18
\alu1|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Add0~9_combout\ = \dc1|toalu[0]~5_combout\ $ (((\dc1|tomux5[0]~1_combout\ & (!\cnt1|CntValue\(2))) # (!\dc1|tomux5[0]~1_combout\ & ((\mux51|Mux5~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt1|CntValue\(2),
	datab => \dc1|toalu[0]~5_combout\,
	datac => \mux51|Mux5~0_combout\,
	datad => \dc1|tomux5[0]~1_combout\,
	combout => \alu1|Add0~9_combout\);

-- Location: LCCOMB_X24_Y10_N0
\alu1|Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux5~6_combout\ = (\dc1|toalu[2]~3_combout\ & ((\alu1|Equal0~6_combout\) # ((\alu1|Mux6~3_combout\)))) # (!\dc1|toalu[2]~3_combout\ & (((!\alu1|Mux6~3_combout\ & \alu1|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|Equal0~6_combout\,
	datab => \dc1|toalu[2]~3_combout\,
	datac => \alu1|Mux6~3_combout\,
	datad => \alu1|Add0~20_combout\,
	combout => \alu1|Mux5~6_combout\);

-- Location: LCCOMB_X21_Y10_N6
\alu1|rslt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|rslt~9_combout\ = (\mux41|Mux4~0_combout\ & ((\dc1|tomux5[0]~1_combout\ & (\cnt1|CntValue\(3))) # (!\dc1|tomux5[0]~1_combout\ & ((\mux51|Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc1|tomux5[0]~1_combout\,
	datab => \cnt1|CntValue\(3),
	datac => \mux41|Mux4~0_combout\,
	datad => \mux51|Mux4~0_combout\,
	combout => \alu1|rslt~9_combout\);

-- Location: LCCOMB_X24_Y13_N16
\alu1|ShiftRight0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~8_combout\ = (\mux41|Mux5~2_combout\ & ((\mux51|Mux7~1_combout\ & (\rf1|core~248_combout\)) # (!\mux51|Mux7~1_combout\ & ((\rf1|core~113_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~248_combout\,
	datab => \rf1|core~113_combout\,
	datac => \mux41|Mux5~2_combout\,
	datad => \mux51|Mux7~1_combout\,
	combout => \alu1|ShiftRight0~8_combout\);

-- Location: LCCOMB_X24_Y13_N10
\alu1|ShiftRight0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~11_combout\ = (\mux41|Mux5~2_combout\ & ((\mux51|Mux7~1_combout\ & (\rf1|core~167_combout\)) # (!\mux51|Mux7~1_combout\ & ((\rf1|core~149_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux41|Mux5~2_combout\,
	datab => \rf1|core~167_combout\,
	datac => \rf1|core~149_combout\,
	datad => \mux51|Mux7~1_combout\,
	combout => \alu1|ShiftRight0~11_combout\);

-- Location: LCCOMB_X23_Y10_N20
\alu1|ShiftLeft0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|ShiftLeft0~11_combout\ = (\mux51|Mux6~1_combout\ & ((\alu1|ShiftLeft0~10_combout\))) # (!\mux51|Mux6~1_combout\ & (\alu1|ShiftLeft0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux51|Mux6~1_combout\,
	datac => \alu1|ShiftLeft0~8_combout\,
	datad => \alu1|ShiftLeft0~10_combout\,
	combout => \alu1|ShiftLeft0~11_combout\);

-- Location: LCCOMB_X23_Y10_N14
\alu1|Mux5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux5~8_combout\ = (\mux51|Mux5~1_combout\ & (!\mux51|Mux4~1_combout\ & (!\alu1|ShiftLeft0~4_combout\ & \alu1|ShiftLeft0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux51|Mux5~1_combout\,
	datab => \mux51|Mux4~1_combout\,
	datac => \alu1|ShiftLeft0~4_combout\,
	datad => \alu1|ShiftLeft0~11_combout\,
	combout => \alu1|Mux5~8_combout\);

-- Location: LCCOMB_X23_Y10_N26
\alu1|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux5~4_combout\ = (\alu1|Mux6~6_combout\ & (\alu1|ShiftRight0~9_combout\ & ((\alu1|Mux6~5_combout\)))) # (!\alu1|Mux6~6_combout\ & (((\alu1|Mux5~8_combout\) # (!\alu1|Mux6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|Mux6~6_combout\,
	datab => \alu1|ShiftRight0~9_combout\,
	datac => \alu1|Mux5~8_combout\,
	datad => \alu1|Mux6~5_combout\,
	combout => \alu1|Mux5~4_combout\);

-- Location: LCCOMB_X23_Y10_N28
\alu1|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux5~5_combout\ = (\alu1|Mux5~4_combout\ & ((\alu1|ShiftRight0~8_combout\) # ((!\alu1|Mux6~4_combout\)))) # (!\alu1|Mux5~4_combout\ & (((\alu1|ShiftRight0~11_combout\ & \alu1|Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|ShiftRight0~8_combout\,
	datab => \alu1|ShiftRight0~11_combout\,
	datac => \alu1|Mux5~4_combout\,
	datad => \alu1|Mux6~4_combout\,
	combout => \alu1|Mux5~5_combout\);

-- Location: LCCOMB_X23_Y10_N2
\alu1|Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux5~7_combout\ = (\alu1|Mux5~6_combout\ & ((\alu1|rslt~9_combout\) # ((!\alu1|Mux6~3_combout\)))) # (!\alu1|Mux5~6_combout\ & (((\alu1|Mux6~3_combout\ & \alu1|Mux5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|Mux5~6_combout\,
	datab => \alu1|rslt~9_combout\,
	datac => \alu1|Mux6~3_combout\,
	datad => \alu1|Mux5~5_combout\,
	combout => \alu1|Mux5~7_combout\);

-- Location: LCCOMB_X23_Y10_N8
\mux71|Z[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux71|Z[3]~4_combout\ = (\rf1|core~248_combout\ & ((\dc1|tomux7~0_combout\) # ((\mux71|Z[2]~0_combout\ & \alu1|Mux5~7_combout\)))) # (!\rf1|core~248_combout\ & (((\mux71|Z[2]~0_combout\ & \alu1|Mux5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~248_combout\,
	datab => \dc1|tomux7~0_combout\,
	datac => \mux71|Z[2]~0_combout\,
	datad => \alu1|Mux5~7_combout\,
	combout => \mux71|Z[3]~4_combout\);

-- Location: FF_X23_Y10_N9
\cnt1|CntValue[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mux71|Z[3]~4_combout\,
	ena => \dc1|toCntwe~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt1|CntValue\(3));

-- Location: LCCOMB_X25_Y14_N0
\mux51|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux51|Mux4~1_combout\ = (\dc1|tomux5[0]~1_combout\ & (\cnt1|CntValue\(3))) # (!\dc1|tomux5[0]~1_combout\ & ((\mux51|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt1|CntValue\(3),
	datac => \dc1|tomux5[0]~1_combout\,
	datad => \mux51|Mux4~0_combout\,
	combout => \mux51|Mux4~1_combout\);

-- Location: LCCOMB_X23_Y11_N12
\alu1|Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux8~6_combout\ = (\dc1|toalu[2]~3_combout\) # ((\dc1|toalu[0]~5_combout\ & \dc1|toalu[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dc1|toalu[0]~5_combout\,
	datac => \dc1|toalu[2]~3_combout\,
	datad => \dc1|toalu[1]~2_combout\,
	combout => \alu1|Mux8~6_combout\);

-- Location: LCCOMB_X25_Y14_N6
\alu1|Mux8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux8~7_combout\ = (\alu1|Mux8~5_combout\ & (((!\mux51|Mux4~1_combout\ & !\alu1|ShiftLeft0~4_combout\)) # (!\alu1|Mux8~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|Mux8~5_combout\,
	datab => \mux51|Mux4~1_combout\,
	datac => \alu1|Mux8~6_combout\,
	datad => \alu1|ShiftLeft0~4_combout\,
	combout => \alu1|Mux8~7_combout\);

-- Location: LCCOMB_X25_Y10_N14
\alu1|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux8~1_combout\ = (\mux51|Mux6~1_combout\) # ((\dc1|tomux5[0]~1_combout\ & (\cnt1|CntValue\(2))) # (!\dc1|tomux5[0]~1_combout\ & ((!\mux51|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt1|CntValue\(2),
	datab => \dc1|tomux5[0]~1_combout\,
	datac => \mux51|Mux5~0_combout\,
	datad => \mux51|Mux6~1_combout\,
	combout => \alu1|Mux8~1_combout\);

-- Location: LCCOMB_X23_Y13_N26
\alu1|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux8~0_combout\ = (\mux51|Mux5~1_combout\ & ((\mux51|Mux6~1_combout\) # (\mux51|Mux7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux51|Mux5~1_combout\,
	datac => \mux51|Mux6~1_combout\,
	datad => \mux51|Mux7~1_combout\,
	combout => \alu1|Mux8~0_combout\);

-- Location: LCCOMB_X25_Y14_N18
\alu1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux7~0_combout\ = (\alu1|Mux8~1_combout\ & (((\alu1|Mux8~0_combout\)))) # (!\alu1|Mux8~1_combout\ & ((\alu1|Mux8~0_combout\ & ((\mux41|Mux6~0_combout\))) # (!\alu1|Mux8~0_combout\ & (\mux41|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux41|Mux5~1_combout\,
	datab => \mux41|Mux6~0_combout\,
	datac => \alu1|Mux8~1_combout\,
	datad => \alu1|Mux8~0_combout\,
	combout => \alu1|Mux7~0_combout\);

-- Location: LCCOMB_X25_Y14_N4
\alu1|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux7~1_combout\ = (\alu1|Mux8~1_combout\ & ((\alu1|Mux7~0_combout\ & ((\alu1|ShiftRight0~8_combout\))) # (!\alu1|Mux7~0_combout\ & (\alu1|ShiftRight0~7_combout\)))) # (!\alu1|Mux8~1_combout\ & (((\alu1|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|ShiftRight0~7_combout\,
	datab => \alu1|ShiftRight0~8_combout\,
	datac => \alu1|Mux8~1_combout\,
	datad => \alu1|Mux7~0_combout\,
	combout => \alu1|Mux7~1_combout\);

-- Location: LCCOMB_X25_Y14_N8
\alu1|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux7~3_combout\ = (!\dc1|toalu[1]~2_combout\ & (\mux41|Mux6~0_combout\ $ (\mux51|Mux6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux41|Mux6~0_combout\,
	datac => \dc1|toalu[1]~2_combout\,
	datad => \mux51|Mux6~1_combout\,
	combout => \alu1|Mux7~3_combout\);

-- Location: LCCOMB_X25_Y14_N26
\alu1|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux7~4_combout\ = (\alu1|Mux8~5_combout\ & (((!\alu1|Mux8~6_combout\)))) # (!\alu1|Mux8~5_combout\ & ((\alu1|Mux8~6_combout\ & (\alu1|Mux7~3_combout\)) # (!\alu1|Mux8~6_combout\ & ((\alu1|Add0~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|Mux8~5_combout\,
	datab => \alu1|Mux7~3_combout\,
	datac => \alu1|Mux8~6_combout\,
	datad => \alu1|Add0~16_combout\,
	combout => \alu1|Mux7~4_combout\);

-- Location: LCCOMB_X25_Y14_N2
\alu1|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux7~2_combout\ = (!\mux51|Mux6~1_combout\ & (\alu1|ShiftLeft0~10_combout\ & \alu1|Mux6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux51|Mux6~1_combout\,
	datac => \alu1|ShiftLeft0~10_combout\,
	datad => \alu1|Mux6~2_combout\,
	combout => \alu1|Mux7~2_combout\);

-- Location: LCCOMB_X25_Y14_N16
\alu1|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux7~5_combout\ = (\alu1|Mux8~7_combout\ & ((\alu1|Mux7~4_combout\ & ((\alu1|Mux7~2_combout\))) # (!\alu1|Mux7~4_combout\ & (\alu1|Mux7~1_combout\)))) # (!\alu1|Mux8~7_combout\ & (((\alu1|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|Mux8~7_combout\,
	datab => \alu1|Mux7~1_combout\,
	datac => \alu1|Mux7~4_combout\,
	datad => \alu1|Mux7~2_combout\,
	combout => \alu1|Mux7~5_combout\);

-- Location: LCCOMB_X24_Y14_N24
\cnt1|CntValue[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt1|CntValue[1]~1_combout\ = (\alu1|Mux8~11_combout\ & (\alu1|rslt~7_combout\)) # (!\alu1|Mux8~11_combout\ & ((\alu1|Mux7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|Mux8~11_combout\,
	datab => \alu1|rslt~7_combout\,
	datad => \alu1|Mux7~5_combout\,
	combout => \cnt1|CntValue[1]~1_combout\);

-- Location: FF_X24_Y14_N25
\cnt1|CntValue[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt1|CntValue[1]~1_combout\,
	asdata => \rf1|core~185_combout\,
	sload => \dc1|tomux7~0_combout\,
	ena => \dc1|toCntwe~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt1|CntValue\(1));

-- Location: LCCOMB_X24_Y14_N30
\mux51|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux51|Mux6~1_combout\ = (\dc1|tomux5[0]~1_combout\ & (\cnt1|CntValue\(1))) # (!\dc1|tomux5[0]~1_combout\ & ((\mux51|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt1|CntValue\(1),
	datac => \mux51|Mux6~0_combout\,
	datad => \dc1|tomux5[0]~1_combout\,
	combout => \mux51|Mux6~1_combout\);

-- Location: LCCOMB_X24_Y13_N12
\alu1|ShiftRight0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~4_combout\ = (\mux51|Mux7~1_combout\ & ((\rf1|core~149_combout\))) # (!\mux51|Mux7~1_combout\ & (\rf1|core~194_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf1|core~194_combout\,
	datac => \rf1|core~149_combout\,
	datad => \mux51|Mux7~1_combout\,
	combout => \alu1|ShiftRight0~4_combout\);

-- Location: LCCOMB_X24_Y13_N18
\alu1|ShiftRight0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~5_combout\ = (!\mux51|Mux6~1_combout\ & (\mux41|Mux5~2_combout\ & \alu1|ShiftRight0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux51|Mux6~1_combout\,
	datac => \mux41|Mux5~2_combout\,
	datad => \alu1|ShiftRight0~4_combout\,
	combout => \alu1|ShiftRight0~5_combout\);

-- Location: LCCOMB_X25_Y10_N0
\alu1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux1~0_combout\ = (\alu1|Mux8~5_combout\ & ((\alu1|Mux6~2_combout\) # (!\alu1|Mux8~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|Mux8~5_combout\,
	datac => \alu1|Mux8~6_combout\,
	datad => \alu1|Mux6~2_combout\,
	combout => \alu1|Mux1~0_combout\);

-- Location: LCCOMB_X25_Y10_N30
\alu1|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux2~3_combout\ = (\alu1|Mux8~1_combout\ & ((\alu1|ShiftLeft0~7_combout\))) # (!\alu1|Mux8~1_combout\ & (\mux41|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux41|Mux2~0_combout\,
	datab => \alu1|Mux8~1_combout\,
	datad => \alu1|ShiftLeft0~7_combout\,
	combout => \alu1|Mux2~3_combout\);

-- Location: LCCOMB_X21_Y10_N2
\mux41|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux41|Mux1~0_combout\ = (\rf1|core~149_combout\ & ((\mux41|Mux5~0_combout\) # (!\rf1|core~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~104_combout\,
	datac => \rf1|core~149_combout\,
	datad => \mux41|Mux5~0_combout\,
	combout => \mux41|Mux1~0_combout\);

-- Location: LCCOMB_X25_Y10_N24
\alu1|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux2~2_combout\ = (\alu1|Mux8~1_combout\ & ((\alu1|ShiftLeft0~3_combout\))) # (!\alu1|Mux8~1_combout\ & (\mux41|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux41|Mux1~0_combout\,
	datac => \alu1|Mux8~1_combout\,
	datad => \alu1|ShiftLeft0~3_combout\,
	combout => \alu1|Mux2~2_combout\);

-- Location: LCCOMB_X25_Y10_N8
\alu1|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux2~4_combout\ = (!\alu1|ShiftLeft0~12_combout\ & ((\alu1|Mux8~0_combout\ & ((\alu1|Mux2~2_combout\))) # (!\alu1|Mux8~0_combout\ & (\alu1|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|Mux8~0_combout\,
	datab => \alu1|ShiftLeft0~12_combout\,
	datac => \alu1|Mux2~3_combout\,
	datad => \alu1|Mux2~2_combout\,
	combout => \alu1|Mux2~4_combout\);

-- Location: LCCOMB_X25_Y14_N12
\alu1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux2~0_combout\ = (\dc1|toalu[1]~2_combout\) # ((\alu1|Mux8~5_combout\) # (\mux51|Mux1~2_combout\ $ (!\mux41|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux51|Mux1~2_combout\,
	datab => \mux41|Mux1~0_combout\,
	datac => \dc1|toalu[1]~2_combout\,
	datad => \alu1|Mux8~5_combout\,
	combout => \alu1|Mux2~0_combout\);

-- Location: LCCOMB_X24_Y10_N28
\alu1|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Add0~31_combout\ = \mux51|Mux1~2_combout\ $ (((!\imem1|WideOr0~15_combout\ & (\dc1|tomux2~0_combout\ & \dc1|toalu[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr0~15_combout\,
	datab => \dc1|tomux2~0_combout\,
	datac => \mux51|Mux1~2_combout\,
	datad => \dc1|toalu[0]~4_combout\,
	combout => \alu1|Add0~31_combout\);

-- Location: LCCOMB_X24_Y10_N24
\alu1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Add0~26_combout\ = (\mux41|Mux1~0_combout\ & ((\alu1|Add0~31_combout\ & (\alu1|Add0~25\ & VCC)) # (!\alu1|Add0~31_combout\ & (!\alu1|Add0~25\)))) # (!\mux41|Mux1~0_combout\ & ((\alu1|Add0~31_combout\ & (!\alu1|Add0~25\)) # (!\alu1|Add0~31_combout\ & 
-- ((\alu1|Add0~25\) # (GND)))))
-- \alu1|Add0~27\ = CARRY((\mux41|Mux1~0_combout\ & (!\alu1|Add0~31_combout\ & !\alu1|Add0~25\)) # (!\mux41|Mux1~0_combout\ & ((!\alu1|Add0~25\) # (!\alu1|Add0~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux41|Mux1~0_combout\,
	datab => \alu1|Add0~31_combout\,
	datad => VCC,
	cin => \alu1|Add0~25\,
	combout => \alu1|Add0~26_combout\,
	cout => \alu1|Add0~27\);

-- Location: LCCOMB_X25_Y10_N6
\alu1|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux2~1_combout\ = (\alu1|Mux8~5_combout\ & (!\alu1|Mux8~6_combout\)) # (!\alu1|Mux8~5_combout\ & ((\alu1|Mux8~6_combout\ & (!\alu1|Mux2~0_combout\)) # (!\alu1|Mux8~6_combout\ & ((\alu1|Add0~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|Mux8~5_combout\,
	datab => \alu1|Mux8~6_combout\,
	datac => \alu1|Mux2~0_combout\,
	datad => \alu1|Add0~26_combout\,
	combout => \alu1|Mux2~1_combout\);

-- Location: LCCOMB_X25_Y10_N18
\alu1|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux2~5_combout\ = (\alu1|Mux1~0_combout\ & ((\alu1|Mux2~1_combout\ & ((\alu1|Mux2~4_combout\))) # (!\alu1|Mux2~1_combout\ & (\alu1|ShiftRight0~5_combout\)))) # (!\alu1|Mux1~0_combout\ & (((\alu1|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|ShiftRight0~5_combout\,
	datab => \alu1|Mux1~0_combout\,
	datac => \alu1|Mux2~4_combout\,
	datad => \alu1|Mux2~1_combout\,
	combout => \alu1|Mux2~5_combout\);

-- Location: LCCOMB_X25_Y10_N16
\cnt1|CntValue[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt1|CntValue[6]~2_combout\ = (\alu1|Mux8~11_combout\ & (\alu1|rslt~10_combout\)) # (!\alu1|Mux8~11_combout\ & ((\alu1|Mux2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|rslt~10_combout\,
	datab => \alu1|Mux8~11_combout\,
	datad => \alu1|Mux2~5_combout\,
	combout => \cnt1|CntValue[6]~2_combout\);

-- Location: LCCOMB_X25_Y10_N26
\mux21|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux21|Mux1~2_combout\ = (\mux21|Mux6~0_combout\ & (\mux21|Mux1~1_combout\)) # (!\mux21|Mux6~0_combout\ & ((\cnt1|CntValue[6]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux21|Mux6~0_combout\,
	datac => \mux21|Mux1~1_combout\,
	datad => \cnt1|CntValue[6]~2_combout\,
	combout => \mux21|Mux1~2_combout\);

-- Location: LCCOMB_X26_Y15_N28
\rf1|core~102feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~102feeder_combout\ = \mux21|Mux1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux21|Mux1~2_combout\,
	combout => \rf1|core~102feeder_combout\);

-- Location: FF_X26_Y15_N29
\rf1|core~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf1|core~102feeder_combout\,
	ena => \rf1|core~269_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~102_q\);

-- Location: LCCOMB_X26_Y13_N12
\rf1|core~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~145_combout\ = (\sc1|SC\(0) & (\rf1|core~102_q\ & !\sc1|SC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(0),
	datab => \rf1|core~102_q\,
	datad => \sc1|SC\(1),
	combout => \rf1|core~145_combout\);

-- Location: LCCOMB_X24_Y9_N2
\rf1|core~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~143_combout\ = (\sc1|SC\(1) & (((\rf1|core~86_q\ & \sc1|SC\(0))))) # (!\sc1|SC\(1) & ((\rf1|core~94_q\) # ((\sc1|SC\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~94_q\,
	datab => \sc1|SC\(1),
	datac => \rf1|core~86_q\,
	datad => \sc1|SC\(0),
	combout => \rf1|core~143_combout\);

-- Location: LCCOMB_X26_Y13_N16
\rf1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|Add0~0_combout\ = \sc1|SC\(0) $ (\sc1|SC\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc1|SC\(0),
	datad => \sc1|SC\(1),
	combout => \rf1|Add0~0_combout\);

-- Location: LCCOMB_X26_Y13_N2
\rf1|core~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~144_combout\ = (\rf1|core~143_combout\ & ((\rf1|core~70_q\) # ((!\rf1|Add0~0_combout\)))) # (!\rf1|core~143_combout\ & (((\rf1|core~78_q\ & \rf1|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~143_combout\,
	datab => \rf1|core~70_q\,
	datac => \rf1|core~78_q\,
	datad => \rf1|Add0~0_combout\,
	combout => \rf1|core~144_combout\);

-- Location: LCCOMB_X26_Y13_N6
\rf1|core~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~146_combout\ = (\rf1|Add0~1_combout\ & (((\rf1|Add0~2_combout\)))) # (!\rf1|Add0~1_combout\ & ((\rf1|Add0~2_combout\ & ((\rf1|core~144_combout\))) # (!\rf1|Add0~2_combout\ & (\rf1|core~145_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~145_combout\,
	datab => \rf1|Add0~1_combout\,
	datac => \rf1|Add0~2_combout\,
	datad => \rf1|core~144_combout\,
	combout => \rf1|core~146_combout\);

-- Location: LCCOMB_X25_Y11_N12
\rf1|core~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~147_combout\ = (\sc1|SC\(1) & (\rf1|core~22_q\ & ((\sc1|SC\(0))))) # (!\sc1|SC\(1) & (((\rf1|core~30_q\) # (\sc1|SC\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~22_q\,
	datab => \sc1|SC\(1),
	datac => \rf1|core~30_q\,
	datad => \sc1|SC\(0),
	combout => \rf1|core~147_combout\);

-- Location: LCCOMB_X25_Y12_N26
\rf1|core~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~148_combout\ = (\rf1|Add0~0_combout\ & ((\rf1|core~147_combout\ & ((\rf1|core~6_q\))) # (!\rf1|core~147_combout\ & (\rf1|core~14_q\)))) # (!\rf1|Add0~0_combout\ & (((\rf1|core~147_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|Add0~0_combout\,
	datab => \rf1|core~14_q\,
	datac => \rf1|core~6_q\,
	datad => \rf1|core~147_combout\,
	combout => \rf1|core~148_combout\);

-- Location: LCCOMB_X26_Y12_N28
\rf1|core~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~141_combout\ = (\sc1|SC\(1) & (\sc1|SC\(0) & ((\rf1|core~54_q\)))) # (!\sc1|SC\(1) & ((\sc1|SC\(0)) # ((\rf1|core~62_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(1),
	datab => \sc1|SC\(0),
	datac => \rf1|core~62_q\,
	datad => \rf1|core~54_q\,
	combout => \rf1|core~141_combout\);

-- Location: LCCOMB_X25_Y12_N22
\rf1|core~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~142_combout\ = (\rf1|core~141_combout\ & ((\rf1|core~38_q\) # ((!\rf1|Add0~0_combout\)))) # (!\rf1|core~141_combout\ & (((\rf1|core~46_q\ & \rf1|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~38_q\,
	datab => \rf1|core~141_combout\,
	datac => \rf1|core~46_q\,
	datad => \rf1|Add0~0_combout\,
	combout => \rf1|core~142_combout\);

-- Location: LCCOMB_X25_Y13_N2
\rf1|core~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~149_combout\ = (\rf1|core~146_combout\ & (((\rf1|core~148_combout\)) # (!\rf1|Add0~1_combout\))) # (!\rf1|core~146_combout\ & (\rf1|Add0~1_combout\ & ((\rf1|core~142_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~146_combout\,
	datab => \rf1|Add0~1_combout\,
	datac => \rf1|core~148_combout\,
	datad => \rf1|core~142_combout\,
	combout => \rf1|core~149_combout\);

-- Location: FF_X21_Y10_N3
\mar1|MarValue[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf1|core~149_combout\,
	sload => VCC,
	ena => \dc1|toMarwe~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mar1|MarValue\(6));

-- Location: FF_X19_Y11_N29
\dmem1|guts_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf1|core~113_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dmem1|guts_rtl_0_bypass\(21));

-- Location: LCCOMB_X19_Y11_N28
\mux21|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux21|Mux3~1_combout\ = (\mux21|Mux3~0_combout\ & (((\dmem1|guts_rtl_0_bypass\(21)) # (!\mux21|Mux6~1_combout\)))) # (!\mux21|Mux3~0_combout\ & (\dmem1|guts_rtl_0|auto_generated|ram_block1a4\ & ((\mux21|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux21|Mux3~0_combout\,
	datab => \dmem1|guts_rtl_0|auto_generated|ram_block1a4\,
	datac => \dmem1|guts_rtl_0_bypass\(21),
	datad => \mux21|Mux6~1_combout\,
	combout => \mux21|Mux3~1_combout\);

-- Location: LCCOMB_X22_Y10_N24
\mux21|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux21|Mux3~2_combout\ = (\mux21|Mux3~1_combout\ & ((\mux21|Mux6~0_combout\) # ((\mux21|Mux5~0_combout\ & \alu1|Mux4~10_combout\)))) # (!\mux21|Mux3~1_combout\ & (((\mux21|Mux5~0_combout\ & \alu1|Mux4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux21|Mux3~1_combout\,
	datab => \mux21|Mux6~0_combout\,
	datac => \mux21|Mux5~0_combout\,
	datad => \alu1|Mux4~10_combout\,
	combout => \mux21|Mux3~2_combout\);

-- Location: FF_X25_Y12_N25
\rf1|core~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux3~2_combout\,
	sload => VCC,
	ena => \rf1|core~269_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~100_q\);

-- Location: LCCOMB_X25_Y12_N14
\rf1|core~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~109_combout\ = (!\sc1|SC\(1) & (\rf1|core~100_q\ & \sc1|SC\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(1),
	datab => \rf1|core~100_q\,
	datad => \sc1|SC\(0),
	combout => \rf1|core~109_combout\);

-- Location: LCCOMB_X24_Y9_N10
\rf1|core~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~107_combout\ = (\sc1|SC\(1) & (((\rf1|core~84_q\ & \sc1|SC\(0))))) # (!\sc1|SC\(1) & ((\rf1|core~92_q\) # ((\sc1|SC\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(1),
	datab => \rf1|core~92_q\,
	datac => \rf1|core~84_q\,
	datad => \sc1|SC\(0),
	combout => \rf1|core~107_combout\);

-- Location: LCCOMB_X26_Y13_N24
\rf1|core~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~108_combout\ = (\rf1|core~107_combout\ & ((\rf1|core~68_q\) # ((!\rf1|Add0~0_combout\)))) # (!\rf1|core~107_combout\ & (((\rf1|core~76_q\ & \rf1|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~68_q\,
	datab => \rf1|core~76_q\,
	datac => \rf1|core~107_combout\,
	datad => \rf1|Add0~0_combout\,
	combout => \rf1|core~108_combout\);

-- Location: LCCOMB_X26_Y13_N28
\rf1|core~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~110_combout\ = (\rf1|Add0~1_combout\ & (((\rf1|Add0~2_combout\)))) # (!\rf1|Add0~1_combout\ & ((\rf1|Add0~2_combout\ & ((\rf1|core~108_combout\))) # (!\rf1|Add0~2_combout\ & (\rf1|core~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~109_combout\,
	datab => \rf1|Add0~1_combout\,
	datac => \rf1|Add0~2_combout\,
	datad => \rf1|core~108_combout\,
	combout => \rf1|core~110_combout\);

-- Location: LCCOMB_X26_Y11_N12
\rf1|core~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~105_combout\ = (\sc1|SC\(0) & ((\rf1|core~52_q\) # ((!\sc1|SC\(1))))) # (!\sc1|SC\(0) & (((\rf1|core~60_q\ & !\sc1|SC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~52_q\,
	datab => \sc1|SC\(0),
	datac => \rf1|core~60_q\,
	datad => \sc1|SC\(1),
	combout => \rf1|core~105_combout\);

-- Location: LCCOMB_X24_Y11_N8
\rf1|core~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~106_combout\ = (\rf1|core~105_combout\ & (((\rf1|core~36_q\) # (!\rf1|Add0~0_combout\)))) # (!\rf1|core~105_combout\ & (\rf1|core~44_q\ & ((\rf1|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~44_q\,
	datab => \rf1|core~105_combout\,
	datac => \rf1|core~36_q\,
	datad => \rf1|Add0~0_combout\,
	combout => \rf1|core~106_combout\);

-- Location: LCCOMB_X25_Y11_N20
\rf1|core~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~111_combout\ = (\sc1|SC\(0) & (((\rf1|core~20_q\)) # (!\sc1|SC\(1)))) # (!\sc1|SC\(0) & (!\sc1|SC\(1) & (\rf1|core~28_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(0),
	datab => \sc1|SC\(1),
	datac => \rf1|core~28_q\,
	datad => \rf1|core~20_q\,
	combout => \rf1|core~111_combout\);

-- Location: LCCOMB_X25_Y9_N30
\rf1|core~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~112_combout\ = (\rf1|core~111_combout\ & ((\rf1|core~4_q\) # ((!\rf1|Add0~0_combout\)))) # (!\rf1|core~111_combout\ & (((\rf1|core~12_q\ & \rf1|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~4_q\,
	datab => \rf1|core~12_q\,
	datac => \rf1|core~111_combout\,
	datad => \rf1|Add0~0_combout\,
	combout => \rf1|core~112_combout\);

-- Location: LCCOMB_X25_Y13_N24
\rf1|core~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~113_combout\ = (\rf1|core~110_combout\ & (((\rf1|core~112_combout\)) # (!\rf1|Add0~1_combout\))) # (!\rf1|core~110_combout\ & (\rf1|Add0~1_combout\ & (\rf1|core~106_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~110_combout\,
	datab => \rf1|Add0~1_combout\,
	datac => \rf1|core~106_combout\,
	datad => \rf1|core~112_combout\,
	combout => \rf1|core~113_combout\);

-- Location: LCCOMB_X19_Y11_N26
\mar1|MarValue[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mar1|MarValue[4]~feeder_combout\ = \rf1|core~113_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf1|core~113_combout\,
	combout => \mar1|MarValue[4]~feeder_combout\);

-- Location: FF_X19_Y11_N27
\mar1|MarValue[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mar1|MarValue[4]~feeder_combout\,
	ena => \dc1|toMarwe~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mar1|MarValue\(4));

-- Location: LCCOMB_X21_Y11_N16
\mux21|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux21|Mux5~2_combout\ = (\mux21|Mux5~1_combout\ & (((\dmem1|guts_rtl_0_bypass\(19))) # (!\mux21|Mux6~1_combout\))) # (!\mux21|Mux5~1_combout\ & (\mux21|Mux6~1_combout\ & ((\dmem1|guts_rtl_0|auto_generated|ram_block1a2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux21|Mux5~1_combout\,
	datab => \mux21|Mux6~1_combout\,
	datac => \dmem1|guts_rtl_0_bypass\(19),
	datad => \dmem1|guts_rtl_0|auto_generated|ram_block1a2\,
	combout => \mux21|Mux5~2_combout\);

-- Location: LCCOMB_X22_Y10_N0
\mux21|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux21|Mux5~3_combout\ = (\mux21|Mux5~0_combout\ & ((\alu1|Mux6~10_combout\) # ((\mux21|Mux6~0_combout\ & \mux21|Mux5~2_combout\)))) # (!\mux21|Mux5~0_combout\ & (\mux21|Mux6~0_combout\ & (\mux21|Mux5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux21|Mux5~0_combout\,
	datab => \mux21|Mux6~0_combout\,
	datac => \mux21|Mux5~2_combout\,
	datad => \alu1|Mux6~10_combout\,
	combout => \mux21|Mux5~3_combout\);

-- Location: FF_X25_Y12_N15
\rf1|core~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux5~3_combout\,
	sload => VCC,
	ena => \rf1|core~269_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~98_q\);

-- Location: LCCOMB_X26_Y13_N10
\rf1|core~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~217_combout\ = (\sc1|SC\(0) & (!\sc1|SC\(1) & \rf1|core~98_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(0),
	datab => \sc1|SC\(1),
	datad => \rf1|core~98_q\,
	combout => \rf1|core~217_combout\);

-- Location: LCCOMB_X24_Y9_N12
\rf1|core~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~215_combout\ = (\sc1|SC\(0) & (((\rf1|core~82_q\) # (!\sc1|SC\(1))))) # (!\sc1|SC\(0) & (\rf1|core~90_q\ & ((!\sc1|SC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~90_q\,
	datab => \sc1|SC\(0),
	datac => \rf1|core~82_q\,
	datad => \sc1|SC\(1),
	combout => \rf1|core~215_combout\);

-- Location: LCCOMB_X25_Y13_N16
\rf1|core~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~216_combout\ = (\rf1|core~215_combout\ & (((\rf1|core~66_q\) # (!\rf1|Add0~0_combout\)))) # (!\rf1|core~215_combout\ & (\rf1|core~74_q\ & ((\rf1|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~74_q\,
	datab => \rf1|core~66_q\,
	datac => \rf1|core~215_combout\,
	datad => \rf1|Add0~0_combout\,
	combout => \rf1|core~216_combout\);

-- Location: LCCOMB_X25_Y13_N30
\rf1|core~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~218_combout\ = (\rf1|Add0~1_combout\ & (\rf1|Add0~2_combout\)) # (!\rf1|Add0~1_combout\ & ((\rf1|Add0~2_combout\ & ((\rf1|core~216_combout\))) # (!\rf1|Add0~2_combout\ & (\rf1|core~217_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|Add0~1_combout\,
	datab => \rf1|Add0~2_combout\,
	datac => \rf1|core~217_combout\,
	datad => \rf1|core~216_combout\,
	combout => \rf1|core~218_combout\);

-- Location: LCCOMB_X25_Y11_N18
\rf1|core~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~219_combout\ = (\sc1|SC\(0) & ((\rf1|core~18_q\) # ((!\sc1|SC\(1))))) # (!\sc1|SC\(0) & (((\rf1|core~26_q\ & !\sc1|SC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~18_q\,
	datab => \sc1|SC\(0),
	datac => \rf1|core~26_q\,
	datad => \sc1|SC\(1),
	combout => \rf1|core~219_combout\);

-- Location: LCCOMB_X23_Y9_N4
\rf1|core~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~220_combout\ = (\rf1|core~219_combout\ & (((\rf1|core~2_q\) # (!\rf1|Add0~0_combout\)))) # (!\rf1|core~219_combout\ & (\rf1|core~10_q\ & ((\rf1|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~219_combout\,
	datab => \rf1|core~10_q\,
	datac => \rf1|core~2_q\,
	datad => \rf1|Add0~0_combout\,
	combout => \rf1|core~220_combout\);

-- Location: LCCOMB_X26_Y11_N6
\rf1|core~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~213_combout\ = (\sc1|SC\(1) & (\sc1|SC\(0) & ((\rf1|core~50_q\)))) # (!\sc1|SC\(1) & ((\sc1|SC\(0)) # ((\rf1|core~58_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(1),
	datab => \sc1|SC\(0),
	datac => \rf1|core~58_q\,
	datad => \rf1|core~50_q\,
	combout => \rf1|core~213_combout\);

-- Location: LCCOMB_X28_Y12_N2
\rf1|core~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~214_combout\ = (\rf1|Add0~0_combout\ & ((\rf1|core~213_combout\ & ((\rf1|core~34_q\))) # (!\rf1|core~213_combout\ & (\rf1|core~42_q\)))) # (!\rf1|Add0~0_combout\ & (((\rf1|core~213_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~42_q\,
	datab => \rf1|core~34_q\,
	datac => \rf1|Add0~0_combout\,
	datad => \rf1|core~213_combout\,
	combout => \rf1|core~214_combout\);

-- Location: LCCOMB_X28_Y12_N0
\rf1|core~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~221_combout\ = (\rf1|core~218_combout\ & (((\rf1|core~220_combout\)) # (!\rf1|Add0~1_combout\))) # (!\rf1|core~218_combout\ & (\rf1|Add0~1_combout\ & ((\rf1|core~214_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~218_combout\,
	datab => \rf1|Add0~1_combout\,
	datac => \rf1|core~220_combout\,
	datad => \rf1|core~214_combout\,
	combout => \rf1|core~221_combout\);

-- Location: LCCOMB_X16_Y11_N24
\mar1|MarValue[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mar1|MarValue[2]~feeder_combout\ = \rf1|core~221_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf1|core~221_combout\,
	combout => \mar1|MarValue[2]~feeder_combout\);

-- Location: FF_X16_Y11_N25
\mar1|MarValue[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mar1|MarValue[2]~feeder_combout\,
	ena => \dc1|toMarwe~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mar1|MarValue\(2));

-- Location: LCCOMB_X19_Y11_N20
\mux21|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux21|Mux4~0_combout\ = (\mux21|Mux6~8_combout\ & (((\mux21|Mux6~1_combout\)))) # (!\mux21|Mux6~8_combout\ & ((\mux21|Mux6~1_combout\ & (\dmem1|guts_rtl_0|auto_generated|ram_block1a3\)) # (!\mux21|Mux6~1_combout\ & ((!\imem1|WideOr5~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dmem1|guts_rtl_0|auto_generated|ram_block1a3\,
	datab => \imem1|WideOr5~15_combout\,
	datac => \mux21|Mux6~8_combout\,
	datad => \mux21|Mux6~1_combout\,
	combout => \mux21|Mux4~0_combout\);

-- Location: LCCOMB_X19_Y11_N14
\mux21|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux21|Mux4~1_combout\ = (\mux21|Mux6~8_combout\ & ((\mux21|Mux4~0_combout\ & ((\dmem1|guts_rtl_0_bypass\(20)))) # (!\mux21|Mux4~0_combout\ & (\rf1|core~248_combout\)))) # (!\mux21|Mux6~8_combout\ & (((\mux21|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux21|Mux6~8_combout\,
	datab => \rf1|core~248_combout\,
	datac => \dmem1|guts_rtl_0_bypass\(20),
	datad => \mux21|Mux4~0_combout\,
	combout => \mux21|Mux4~1_combout\);

-- Location: LCCOMB_X23_Y10_N6
\mux21|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux21|Mux4~2_combout\ = (\mux21|Mux5~0_combout\ & ((\alu1|Mux5~7_combout\) # ((\mux21|Mux6~0_combout\ & \mux21|Mux4~1_combout\)))) # (!\mux21|Mux5~0_combout\ & (\mux21|Mux6~0_combout\ & (\mux21|Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux21|Mux5~0_combout\,
	datab => \mux21|Mux6~0_combout\,
	datac => \mux21|Mux4~1_combout\,
	datad => \alu1|Mux5~7_combout\,
	combout => \mux21|Mux4~2_combout\);

-- Location: FF_X25_Y11_N27
\rf1|core~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux4~2_combout\,
	sload => VCC,
	ena => \rf1|core~273_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~27_q\);

-- Location: LCCOMB_X25_Y11_N26
\rf1|core~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~246_combout\ = (\sc1|SC\(0) & (((\rf1|core~19_q\)) # (!\sc1|SC\(1)))) # (!\sc1|SC\(0) & (!\sc1|SC\(1) & (\rf1|core~27_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(0),
	datab => \sc1|SC\(1),
	datac => \rf1|core~27_q\,
	datad => \rf1|core~19_q\,
	combout => \rf1|core~246_combout\);

-- Location: LCCOMB_X25_Y11_N24
\rf1|core~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~247_combout\ = (\rf1|core~246_combout\ & ((\rf1|core~3_q\) # ((!\rf1|Add0~0_combout\)))) # (!\rf1|core~246_combout\ & (((\rf1|Add0~0_combout\ & \rf1|core~11_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~246_combout\,
	datab => \rf1|core~3_q\,
	datac => \rf1|Add0~0_combout\,
	datad => \rf1|core~11_q\,
	combout => \rf1|core~247_combout\);

-- Location: LCCOMB_X24_Y9_N22
\rf1|core~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~240_combout\ = (\sc1|SC\(0) & (((\rf1|core~83_q\)) # (!\sc1|SC\(1)))) # (!\sc1|SC\(0) & (!\sc1|SC\(1) & (\rf1|core~91_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(0),
	datab => \sc1|SC\(1),
	datac => \rf1|core~91_q\,
	datad => \rf1|core~83_q\,
	combout => \rf1|core~240_combout\);

-- Location: LCCOMB_X23_Y14_N14
\rf1|core~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~241_combout\ = (\rf1|Add0~0_combout\ & ((\rf1|core~240_combout\ & ((\rf1|core~67_q\))) # (!\rf1|core~240_combout\ & (\rf1|core~75_q\)))) # (!\rf1|Add0~0_combout\ & (((\rf1|core~240_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|Add0~0_combout\,
	datab => \rf1|core~75_q\,
	datac => \rf1|core~67_q\,
	datad => \rf1|core~240_combout\,
	combout => \rf1|core~241_combout\);

-- Location: LCCOMB_X26_Y10_N10
\rf1|core~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~242_combout\ = (\sc1|SC\(1) & (((\rf1|core~51_q\ & \sc1|SC\(0))))) # (!\sc1|SC\(1) & ((\rf1|core~59_q\) # ((\sc1|SC\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(1),
	datab => \rf1|core~59_q\,
	datac => \rf1|core~51_q\,
	datad => \sc1|SC\(0),
	combout => \rf1|core~242_combout\);

-- Location: LCCOMB_X25_Y14_N24
\rf1|core~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~243_combout\ = (\rf1|core~242_combout\ & (((\rf1|core~35_q\) # (!\rf1|Add0~0_combout\)))) # (!\rf1|core~242_combout\ & (\rf1|core~43_q\ & ((\rf1|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~43_q\,
	datab => \rf1|core~242_combout\,
	datac => \rf1|core~35_q\,
	datad => \rf1|Add0~0_combout\,
	combout => \rf1|core~243_combout\);

-- Location: LCCOMB_X25_Y13_N4
\rf1|core~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~244_combout\ = (\sc1|SC\(0) & (!\sc1|SC\(1) & \rf1|core~99_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(0),
	datab => \sc1|SC\(1),
	datad => \rf1|core~99_q\,
	combout => \rf1|core~244_combout\);

-- Location: LCCOMB_X25_Y13_N10
\rf1|core~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~245_combout\ = (\rf1|Add0~1_combout\ & ((\rf1|core~243_combout\) # ((\rf1|Add0~2_combout\)))) # (!\rf1|Add0~1_combout\ & (((\rf1|core~244_combout\ & !\rf1|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|Add0~1_combout\,
	datab => \rf1|core~243_combout\,
	datac => \rf1|core~244_combout\,
	datad => \rf1|Add0~2_combout\,
	combout => \rf1|core~245_combout\);

-- Location: LCCOMB_X25_Y13_N28
\rf1|core~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~248_combout\ = (\rf1|Add0~2_combout\ & ((\rf1|core~245_combout\ & (\rf1|core~247_combout\)) # (!\rf1|core~245_combout\ & ((\rf1|core~241_combout\))))) # (!\rf1|Add0~2_combout\ & (((\rf1|core~245_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~247_combout\,
	datab => \rf1|Add0~2_combout\,
	datac => \rf1|core~241_combout\,
	datad => \rf1|core~245_combout\,
	combout => \rf1|core~248_combout\);

-- Location: FF_X25_Y13_N29
\mar1|MarValue[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf1|core~248_combout\,
	ena => \dc1|toMarwe~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mar1|MarValue\(3));

-- Location: LCCOMB_X21_Y10_N8
\dmem1|guts_rtl_0_bypass[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dmem1|guts_rtl_0_bypass[7]~feeder_combout\ = \mar1|MarValue\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mar1|MarValue\(3),
	combout => \dmem1|guts_rtl_0_bypass[7]~feeder_combout\);

-- Location: FF_X21_Y10_N9
\dmem1|guts_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dmem1|guts_rtl_0_bypass[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dmem1|guts_rtl_0_bypass\(7));

-- Location: LCCOMB_X21_Y10_N18
\dmem1|guts_rtl_0_bypass[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dmem1|guts_rtl_0_bypass[5]~feeder_combout\ = \mar1|MarValue\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mar1|MarValue\(2),
	combout => \dmem1|guts_rtl_0_bypass[5]~feeder_combout\);

-- Location: FF_X21_Y10_N19
\dmem1|guts_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dmem1|guts_rtl_0_bypass[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dmem1|guts_rtl_0_bypass\(5));

-- Location: FF_X21_Y10_N11
\dmem1|guts_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf1|core~248_combout\,
	sload => VCC,
	ena => \dc1|toMarwe~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dmem1|guts_rtl_0_bypass\(8));

-- Location: FF_X21_Y10_N13
\dmem1|guts_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf1|core~221_combout\,
	sload => VCC,
	ena => \dc1|toMarwe~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dmem1|guts_rtl_0_bypass\(6));

-- Location: LCCOMB_X21_Y10_N10
\mux21|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux21|Mux6~3_combout\ = (\dmem1|guts_rtl_0_bypass\(7) & (\dmem1|guts_rtl_0_bypass\(8) & (\dmem1|guts_rtl_0_bypass\(5) $ (!\dmem1|guts_rtl_0_bypass\(6))))) # (!\dmem1|guts_rtl_0_bypass\(7) & (!\dmem1|guts_rtl_0_bypass\(8) & (\dmem1|guts_rtl_0_bypass\(5) $ 
-- (!\dmem1|guts_rtl_0_bypass\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dmem1|guts_rtl_0_bypass\(7),
	datab => \dmem1|guts_rtl_0_bypass\(5),
	datac => \dmem1|guts_rtl_0_bypass\(8),
	datad => \dmem1|guts_rtl_0_bypass\(6),
	combout => \mux21|Mux6~3_combout\);

-- Location: LCCOMB_X21_Y10_N22
\dmem1|guts_rtl_0_bypass[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dmem1|guts_rtl_0_bypass[15]~feeder_combout\ = \mar1|MarValue\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mar1|MarValue\(7),
	combout => \dmem1|guts_rtl_0_bypass[15]~feeder_combout\);

-- Location: FF_X21_Y10_N23
\dmem1|guts_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dmem1|guts_rtl_0_bypass[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dmem1|guts_rtl_0_bypass\(15));

-- Location: LCCOMB_X21_Y10_N30
\dmem1|guts_rtl_0_bypass[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dmem1|guts_rtl_0_bypass[14]~feeder_combout\ = \rf1|core~149_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf1|core~149_combout\,
	combout => \dmem1|guts_rtl_0_bypass[14]~feeder_combout\);

-- Location: FF_X21_Y10_N31
\dmem1|guts_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dmem1|guts_rtl_0_bypass[14]~feeder_combout\,
	ena => \dc1|toMarwe~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dmem1|guts_rtl_0_bypass\(14));

-- Location: FF_X21_Y10_N5
\dmem1|guts_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf1|core~194_combout\,
	sload => VCC,
	ena => \dc1|toMarwe~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dmem1|guts_rtl_0_bypass\(16));

-- Location: LCCOMB_X21_Y10_N0
\dmem1|guts_rtl_0_bypass[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dmem1|guts_rtl_0_bypass[13]~feeder_combout\ = \mar1|MarValue\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mar1|MarValue\(6),
	combout => \dmem1|guts_rtl_0_bypass[13]~feeder_combout\);

-- Location: FF_X21_Y10_N1
\dmem1|guts_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dmem1|guts_rtl_0_bypass[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dmem1|guts_rtl_0_bypass\(13));

-- Location: LCCOMB_X21_Y10_N4
\mux21|Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux21|Mux6~5_combout\ = (\dmem1|guts_rtl_0_bypass\(15) & (\dmem1|guts_rtl_0_bypass\(16) & (\dmem1|guts_rtl_0_bypass\(14) $ (!\dmem1|guts_rtl_0_bypass\(13))))) # (!\dmem1|guts_rtl_0_bypass\(15) & (!\dmem1|guts_rtl_0_bypass\(16) & 
-- (\dmem1|guts_rtl_0_bypass\(14) $ (!\dmem1|guts_rtl_0_bypass\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dmem1|guts_rtl_0_bypass\(15),
	datab => \dmem1|guts_rtl_0_bypass\(14),
	datac => \dmem1|guts_rtl_0_bypass\(16),
	datad => \dmem1|guts_rtl_0_bypass\(13),
	combout => \mux21|Mux6~5_combout\);

-- Location: FF_X21_Y11_N19
\dmem1|guts_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mar1|MarValue\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dmem1|guts_rtl_0_bypass\(1));

-- Location: FF_X21_Y11_N5
\dmem1|guts_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mar1|MarValue\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dmem1|guts_rtl_0_bypass\(3));

-- Location: FF_X21_Y11_N31
\dmem1|guts_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf1|core~185_combout\,
	sload => VCC,
	ena => \dc1|toMarwe~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dmem1|guts_rtl_0_bypass\(4));

-- Location: FF_X21_Y11_N25
\dmem1|guts_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf1|core~131_combout\,
	sload => VCC,
	ena => \dc1|toMarwe~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dmem1|guts_rtl_0_bypass\(2));

-- Location: LCCOMB_X21_Y11_N30
\mux21|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux21|Mux6~2_combout\ = (\dmem1|guts_rtl_0_bypass\(1) & (\dmem1|guts_rtl_0_bypass\(2) & (\dmem1|guts_rtl_0_bypass\(3) $ (!\dmem1|guts_rtl_0_bypass\(4))))) # (!\dmem1|guts_rtl_0_bypass\(1) & (!\dmem1|guts_rtl_0_bypass\(2) & (\dmem1|guts_rtl_0_bypass\(3) $ 
-- (!\dmem1|guts_rtl_0_bypass\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dmem1|guts_rtl_0_bypass\(1),
	datab => \dmem1|guts_rtl_0_bypass\(3),
	datac => \dmem1|guts_rtl_0_bypass\(4),
	datad => \dmem1|guts_rtl_0_bypass\(2),
	combout => \mux21|Mux6~2_combout\);

-- Location: LCCOMB_X19_Y11_N4
\dmem1|guts_rtl_0_bypass[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dmem1|guts_rtl_0_bypass[11]~feeder_combout\ = \mar1|MarValue\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mar1|MarValue\(5),
	combout => \dmem1|guts_rtl_0_bypass[11]~feeder_combout\);

-- Location: FF_X19_Y11_N5
\dmem1|guts_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dmem1|guts_rtl_0_bypass[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dmem1|guts_rtl_0_bypass\(11));

-- Location: FF_X19_Y11_N3
\dmem1|guts_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mar1|MarValue\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dmem1|guts_rtl_0_bypass\(9));

-- Location: FF_X19_Y11_N31
\dmem1|guts_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf1|core~167_combout\,
	sload => VCC,
	ena => \dc1|toMarwe~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dmem1|guts_rtl_0_bypass\(12));

-- Location: LCCOMB_X19_Y11_N24
\dmem1|guts_rtl_0_bypass[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dmem1|guts_rtl_0_bypass[10]~feeder_combout\ = \rf1|core~113_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf1|core~113_combout\,
	combout => \dmem1|guts_rtl_0_bypass[10]~feeder_combout\);

-- Location: FF_X19_Y11_N25
\dmem1|guts_rtl_0_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dmem1|guts_rtl_0_bypass[10]~feeder_combout\,
	ena => \dc1|toMarwe~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dmem1|guts_rtl_0_bypass\(10));

-- Location: LCCOMB_X19_Y11_N30
\mux21|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux21|Mux6~4_combout\ = (\dmem1|guts_rtl_0_bypass\(11) & (\dmem1|guts_rtl_0_bypass\(12) & (\dmem1|guts_rtl_0_bypass\(9) $ (!\dmem1|guts_rtl_0_bypass\(10))))) # (!\dmem1|guts_rtl_0_bypass\(11) & (!\dmem1|guts_rtl_0_bypass\(12) & 
-- (\dmem1|guts_rtl_0_bypass\(9) $ (!\dmem1|guts_rtl_0_bypass\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dmem1|guts_rtl_0_bypass\(11),
	datab => \dmem1|guts_rtl_0_bypass\(9),
	datac => \dmem1|guts_rtl_0_bypass\(12),
	datad => \dmem1|guts_rtl_0_bypass\(10),
	combout => \mux21|Mux6~4_combout\);

-- Location: LCCOMB_X21_Y10_N28
\mux21|Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux21|Mux6~6_combout\ = (\mux21|Mux6~3_combout\ & (\mux21|Mux6~5_combout\ & (\mux21|Mux6~2_combout\ & \mux21|Mux6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux21|Mux6~3_combout\,
	datab => \mux21|Mux6~5_combout\,
	datac => \mux21|Mux6~2_combout\,
	datad => \mux21|Mux6~4_combout\,
	combout => \mux21|Mux6~6_combout\);

-- Location: LCCOMB_X24_Y11_N12
\mux21|Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux21|Mux6~7_combout\ = (((\dmem1|guts_rtl_0_bypass\(0) & \mux21|Mux6~6_combout\)) # (!\dc1|tomux2~1_combout\)) # (!\imem1|WideOr5~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr5~15_combout\,
	datab => \dmem1|guts_rtl_0_bypass\(0),
	datac => \mux21|Mux6~6_combout\,
	datad => \dc1|tomux2~1_combout\,
	combout => \mux21|Mux6~7_combout\);

-- Location: LCCOMB_X24_Y11_N14
\mux21|Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux21|Mux6~8_combout\ = (!\imem1|WideOr0~15_combout\ & (\dc1|tomux2~1_combout\ & (!\imem1|WideOr1~8_combout\ & \mux21|Mux6~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr0~15_combout\,
	datab => \dc1|tomux2~1_combout\,
	datac => \imem1|WideOr1~8_combout\,
	datad => \mux21|Mux6~7_combout\,
	combout => \mux21|Mux6~8_combout\);

-- Location: FF_X21_Y11_N29
\dmem1|guts_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf1|core~185_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dmem1|guts_rtl_0_bypass\(18));

-- Location: LCCOMB_X21_Y11_N10
\mux21|Mux6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux21|Mux6~9_combout\ = (\mux21|Mux6~8_combout\ & (((\mux21|Mux6~1_combout\)))) # (!\mux21|Mux6~8_combout\ & ((\mux21|Mux6~1_combout\ & ((\dmem1|guts_rtl_0|auto_generated|ram_block1a1\))) # (!\mux21|Mux6~1_combout\ & (!\imem1|WideOr7~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr7~19_combout\,
	datab => \dmem1|guts_rtl_0|auto_generated|ram_block1a1\,
	datac => \mux21|Mux6~8_combout\,
	datad => \mux21|Mux6~1_combout\,
	combout => \mux21|Mux6~9_combout\);

-- Location: LCCOMB_X21_Y11_N28
\mux21|Mux6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux21|Mux6~10_combout\ = (\mux21|Mux6~8_combout\ & ((\mux21|Mux6~9_combout\ & ((\dmem1|guts_rtl_0_bypass\(18)))) # (!\mux21|Mux6~9_combout\ & (\rf1|core~185_combout\)))) # (!\mux21|Mux6~8_combout\ & (((\mux21|Mux6~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux21|Mux6~8_combout\,
	datab => \rf1|core~185_combout\,
	datac => \dmem1|guts_rtl_0_bypass\(18),
	datad => \mux21|Mux6~9_combout\,
	combout => \mux21|Mux6~10_combout\);

-- Location: LCCOMB_X24_Y11_N24
\mux21|Mux6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux21|Mux6~11_combout\ = (\mux21|Mux6~0_combout\ & (\mux21|Mux6~10_combout\)) # (!\mux21|Mux6~0_combout\ & ((\cnt1|CntValue[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux21|Mux6~0_combout\,
	datac => \mux21|Mux6~10_combout\,
	datad => \cnt1|CntValue[1]~1_combout\,
	combout => \mux21|Mux6~11_combout\);

-- Location: FF_X24_Y9_N21
\rf1|core~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux6~11_combout\,
	sload => VCC,
	ena => \rf1|core~263_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~89_q\);

-- Location: LCCOMB_X24_Y9_N14
\rf1|core~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~177_combout\ = (\sc1|SC\(1) & (((\rf1|core~81_q\ & \sc1|SC\(0))))) # (!\sc1|SC\(1) & ((\rf1|core~89_q\) # ((\sc1|SC\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~89_q\,
	datab => \sc1|SC\(1),
	datac => \rf1|core~81_q\,
	datad => \sc1|SC\(0),
	combout => \rf1|core~177_combout\);

-- Location: LCCOMB_X23_Y14_N30
\rf1|core~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~178_combout\ = (\rf1|core~177_combout\ & (((\rf1|core~65_q\) # (!\rf1|Add0~0_combout\)))) # (!\rf1|core~177_combout\ & (\rf1|core~73_q\ & ((\rf1|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~177_combout\,
	datab => \rf1|core~73_q\,
	datac => \rf1|core~65_q\,
	datad => \rf1|Add0~0_combout\,
	combout => \rf1|core~178_combout\);

-- Location: LCCOMB_X25_Y11_N0
\rf1|core~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~183_combout\ = (\sc1|SC\(0) & (((\rf1|core~17_q\)) # (!\sc1|SC\(1)))) # (!\sc1|SC\(0) & (!\sc1|SC\(1) & (\rf1|core~25_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(0),
	datab => \sc1|SC\(1),
	datac => \rf1|core~25_q\,
	datad => \rf1|core~17_q\,
	combout => \rf1|core~183_combout\);

-- Location: LCCOMB_X25_Y11_N10
\rf1|core~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~184_combout\ = (\rf1|core~183_combout\ & (((\rf1|core~1_q\) # (!\rf1|Add0~0_combout\)))) # (!\rf1|core~183_combout\ & (\rf1|core~9_q\ & (\rf1|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~9_q\,
	datab => \rf1|core~183_combout\,
	datac => \rf1|Add0~0_combout\,
	datad => \rf1|core~1_q\,
	combout => \rf1|core~184_combout\);

-- Location: LCCOMB_X26_Y11_N22
\rf1|core~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~179_combout\ = (\sc1|SC\(0) & ((\rf1|core~49_q\) # ((!\sc1|SC\(1))))) # (!\sc1|SC\(0) & (((\rf1|core~57_q\ & !\sc1|SC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~49_q\,
	datab => \sc1|SC\(0),
	datac => \rf1|core~57_q\,
	datad => \sc1|SC\(1),
	combout => \rf1|core~179_combout\);

-- Location: LCCOMB_X22_Y11_N14
\rf1|core~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~180_combout\ = (\rf1|core~179_combout\ & ((\rf1|core~33_q\) # ((!\rf1|Add0~0_combout\)))) # (!\rf1|core~179_combout\ & (((\rf1|core~41_q\ & \rf1|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~33_q\,
	datab => \rf1|core~179_combout\,
	datac => \rf1|core~41_q\,
	datad => \rf1|Add0~0_combout\,
	combout => \rf1|core~180_combout\);

-- Location: LCCOMB_X26_Y13_N26
\rf1|core~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~181_combout\ = (\sc1|SC\(0) & (!\sc1|SC\(1) & \rf1|core~97_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(0),
	datab => \sc1|SC\(1),
	datad => \rf1|core~97_q\,
	combout => \rf1|core~181_combout\);

-- Location: LCCOMB_X25_Y13_N0
\rf1|core~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~182_combout\ = (\rf1|Add0~1_combout\ & ((\rf1|Add0~2_combout\) # ((\rf1|core~180_combout\)))) # (!\rf1|Add0~1_combout\ & (!\rf1|Add0~2_combout\ & ((\rf1|core~181_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|Add0~1_combout\,
	datab => \rf1|Add0~2_combout\,
	datac => \rf1|core~180_combout\,
	datad => \rf1|core~181_combout\,
	combout => \rf1|core~182_combout\);

-- Location: LCCOMB_X25_Y13_N22
\rf1|core~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~185_combout\ = (\rf1|Add0~2_combout\ & ((\rf1|core~182_combout\ & ((\rf1|core~184_combout\))) # (!\rf1|core~182_combout\ & (\rf1|core~178_combout\)))) # (!\rf1|Add0~2_combout\ & (((\rf1|core~182_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~178_combout\,
	datab => \rf1|Add0~2_combout\,
	datac => \rf1|core~184_combout\,
	datad => \rf1|core~182_combout\,
	combout => \rf1|core~185_combout\);

-- Location: FF_X25_Y13_N23
\mar1|MarValue[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf1|core~185_combout\,
	ena => \dc1|toMarwe~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mar1|MarValue\(1));

-- Location: FF_X21_Y11_N9
\dmem1|guts_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf1|core~131_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dmem1|guts_rtl_0_bypass\(17));

-- Location: LCCOMB_X21_Y11_N6
\mux21|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux21|Mux7~0_combout\ = (\mux21|Mux6~1_combout\ & (((\mux21|Mux6~8_combout\)))) # (!\mux21|Mux6~1_combout\ & ((\mux21|Mux6~8_combout\ & ((\rf1|core~131_combout\))) # (!\mux21|Mux6~8_combout\ & (!\imem1|WideOr8~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr8~12_combout\,
	datab => \mux21|Mux6~1_combout\,
	datac => \rf1|core~131_combout\,
	datad => \mux21|Mux6~8_combout\,
	combout => \mux21|Mux7~0_combout\);

-- Location: LCCOMB_X21_Y11_N8
\mux21|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux21|Mux7~1_combout\ = (\mux21|Mux6~1_combout\ & ((\mux21|Mux7~0_combout\ & ((\dmem1|guts_rtl_0_bypass\(17)))) # (!\mux21|Mux7~0_combout\ & (\dmem1|guts_rtl_0|auto_generated|ram_block1a0~portbdataout\)))) # (!\mux21|Mux6~1_combout\ & 
-- (((\mux21|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dmem1|guts_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datab => \mux21|Mux6~1_combout\,
	datac => \dmem1|guts_rtl_0_bypass\(17),
	datad => \mux21|Mux7~0_combout\,
	combout => \mux21|Mux7~1_combout\);

-- Location: LCCOMB_X25_Y11_N4
\mux21|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux21|Mux7~2_combout\ = (\mux21|Mux6~0_combout\ & (\mux21|Mux7~1_combout\)) # (!\mux21|Mux6~0_combout\ & ((\cnt1|CntValue[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux21|Mux7~1_combout\,
	datac => \mux21|Mux6~0_combout\,
	datad => \cnt1|CntValue[0]~0_combout\,
	combout => \mux21|Mux7~2_combout\);

-- Location: FF_X25_Y12_N3
\rf1|core~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux7~2_combout\,
	sload => VCC,
	ena => \rf1|core~269_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~96_q\);

-- Location: LCCOMB_X25_Y12_N8
\rf1|core~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~136_combout\ = (\sc1|SC\(1) & (\rf1|core~96_q\ & !\sc1|SC\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(1),
	datab => \rf1|core~96_q\,
	datad => \sc1|SC\(0),
	combout => \rf1|core~136_combout\);

-- Location: FF_X24_Y11_N11
\rf1|core~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux7~2_combout\,
	sload => VCC,
	ena => \rf1|core~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~32_q\);

-- Location: FF_X22_Y11_N21
\rf1|core~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux7~2_combout\,
	sload => VCC,
	ena => \rf1|core~253_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~40_q\);

-- Location: FF_X26_Y11_N15
\rf1|core~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux7~2_combout\,
	sload => VCC,
	ena => \rf1|core~255_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~56_q\);

-- Location: FF_X22_Y11_N7
\rf1|core~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux7~2_combout\,
	sload => VCC,
	ena => \rf1|core~257_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~48_q\);

-- Location: LCCOMB_X22_Y11_N6
\rf1|core~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~134_combout\ = (\sc1|SC\(1) & (((\sc1|SC\(0))))) # (!\sc1|SC\(1) & ((\sc1|SC\(0) & (\rf1|core~56_q\)) # (!\sc1|SC\(0) & ((\rf1|core~48_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~56_q\,
	datab => \sc1|SC\(1),
	datac => \rf1|core~48_q\,
	datad => \sc1|SC\(0),
	combout => \rf1|core~134_combout\);

-- Location: LCCOMB_X22_Y11_N20
\rf1|core~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~135_combout\ = (\sc1|SC\(1) & ((\rf1|core~134_combout\ & ((\rf1|core~40_q\))) # (!\rf1|core~134_combout\ & (\rf1|core~32_q\)))) # (!\sc1|SC\(1) & (((\rf1|core~134_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~32_q\,
	datab => \sc1|SC\(1),
	datac => \rf1|core~40_q\,
	datad => \rf1|core~134_combout\,
	combout => \rf1|core~135_combout\);

-- Location: LCCOMB_X22_Y11_N12
\rf1|core~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~137_combout\ = (\rf1|Add1~1_combout\ & (((\rf1|core~135_combout\) # (\rf1|Add1~0_combout\)))) # (!\rf1|Add1~1_combout\ & (\rf1|core~136_combout\ & ((!\rf1|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~136_combout\,
	datab => \rf1|core~135_combout\,
	datac => \rf1|Add1~1_combout\,
	datad => \rf1|Add1~0_combout\,
	combout => \rf1|core~137_combout\);

-- Location: FF_X25_Y11_N5
\rf1|core~0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mux21|Mux7~2_combout\,
	ena => \rf1|core~277_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~0_q\);

-- Location: FF_X23_Y11_N21
\rf1|core~8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux7~2_combout\,
	sload => VCC,
	ena => \rf1|core~271_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~8_q\);

-- Location: FF_X26_Y11_N5
\rf1|core~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux7~2_combout\,
	sload => VCC,
	ena => \rf1|core~275_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~16_q\);

-- Location: FF_X25_Y11_N23
\rf1|core~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux7~2_combout\,
	sload => VCC,
	ena => \rf1|core~273_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~24_q\);

-- Location: LCCOMB_X26_Y11_N4
\rf1|core~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~138_combout\ = (\sc1|SC\(1) & (\sc1|SC\(0))) # (!\sc1|SC\(1) & ((\sc1|SC\(0) & ((\rf1|core~24_q\))) # (!\sc1|SC\(0) & (\rf1|core~16_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(1),
	datab => \sc1|SC\(0),
	datac => \rf1|core~16_q\,
	datad => \rf1|core~24_q\,
	combout => \rf1|core~138_combout\);

-- Location: LCCOMB_X23_Y11_N20
\rf1|core~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~139_combout\ = (\sc1|SC\(1) & ((\rf1|core~138_combout\ & ((\rf1|core~8_q\))) # (!\rf1|core~138_combout\ & (\rf1|core~0_q\)))) # (!\sc1|SC\(1) & (((\rf1|core~138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(1),
	datab => \rf1|core~0_q\,
	datac => \rf1|core~8_q\,
	datad => \rf1|core~138_combout\,
	combout => \rf1|core~139_combout\);

-- Location: FF_X26_Y13_N27
\rf1|core~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux7~2_combout\,
	sload => VCC,
	ena => \rf1|core~267_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~64_q\);

-- Location: FF_X26_Y13_N13
\rf1|core~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux7~2_combout\,
	sload => VCC,
	ena => \rf1|core~261_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~72_q\);

-- Location: FF_X24_Y9_N7
\rf1|core~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux7~2_combout\,
	sload => VCC,
	ena => \rf1|core~265_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~80_q\);

-- Location: FF_X24_Y9_N29
\rf1|core~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux21|Mux7~2_combout\,
	sload => VCC,
	ena => \rf1|core~263_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~88_q\);

-- Location: LCCOMB_X24_Y9_N28
\rf1|core~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~132_combout\ = (\sc1|SC\(1) & (((\sc1|SC\(0))))) # (!\sc1|SC\(1) & ((\sc1|SC\(0) & ((\rf1|core~88_q\))) # (!\sc1|SC\(0) & (\rf1|core~80_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~80_q\,
	datab => \sc1|SC\(1),
	datac => \rf1|core~88_q\,
	datad => \sc1|SC\(0),
	combout => \rf1|core~132_combout\);

-- Location: LCCOMB_X26_Y13_N4
\rf1|core~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~133_combout\ = (\sc1|SC\(1) & ((\rf1|core~132_combout\ & ((\rf1|core~72_q\))) # (!\rf1|core~132_combout\ & (\rf1|core~64_q\)))) # (!\sc1|SC\(1) & (((\rf1|core~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~64_q\,
	datab => \sc1|SC\(1),
	datac => \rf1|core~72_q\,
	datad => \rf1|core~132_combout\,
	combout => \rf1|core~133_combout\);

-- Location: LCCOMB_X22_Y11_N2
\rf1|core~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~140_combout\ = (\rf1|core~137_combout\ & (((\rf1|core~139_combout\)) # (!\rf1|Add1~0_combout\))) # (!\rf1|core~137_combout\ & (\rf1|Add1~0_combout\ & ((\rf1|core~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~137_combout\,
	datab => \rf1|Add1~0_combout\,
	datac => \rf1|core~139_combout\,
	datad => \rf1|core~133_combout\,
	combout => \rf1|core~140_combout\);

-- Location: LCCOMB_X21_Y14_N24
\mux51|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux51|Mux7~0_combout\ = (\dc1|tomux5[1]~0_combout\ & (\imem1|WideOr8~12_combout\)) # (!\dc1|tomux5[1]~0_combout\ & ((!\rf1|core~140_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \imem1|WideOr8~12_combout\,
	datac => \dc1|tomux5[1]~0_combout\,
	datad => \rf1|core~140_combout\,
	combout => \mux51|Mux7~0_combout\);

-- Location: LCCOMB_X24_Y13_N30
\alu1|rslt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|rslt~6_combout\ = (\mux41|Mux7~1_combout\ & ((\dc1|tomux5[0]~1_combout\ & (\cnt1|CntValue\(0))) # (!\dc1|tomux5[0]~1_combout\ & ((!\mux51|Mux7~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc1|tomux5[0]~1_combout\,
	datab => \cnt1|CntValue\(0),
	datac => \mux41|Mux7~1_combout\,
	datad => \mux51|Mux7~0_combout\,
	combout => \alu1|rslt~6_combout\);

-- Location: LCCOMB_X24_Y14_N28
\alu1|Mux8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux8~8_combout\ = (\dc1|toalu[1]~2_combout\) # (\mux51|Mux7~1_combout\ $ (\mux41|Mux7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc1|toalu[1]~2_combout\,
	datac => \mux51|Mux7~1_combout\,
	datad => \mux41|Mux7~1_combout\,
	combout => \alu1|Mux8~8_combout\);

-- Location: LCCOMB_X24_Y14_N6
\alu1|Mux8~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux8~9_combout\ = (\alu1|Mux8~6_combout\ & (!\alu1|Mux8~8_combout\ & ((!\alu1|Mux8~5_combout\)))) # (!\alu1|Mux8~6_combout\ & (((\alu1|Add0~14_combout\) # (\alu1|Mux8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|Mux8~6_combout\,
	datab => \alu1|Mux8~8_combout\,
	datac => \alu1|Add0~14_combout\,
	datad => \alu1|Mux8~5_combout\,
	combout => \alu1|Mux8~9_combout\);

-- Location: LCCOMB_X23_Y13_N16
\alu1|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux8~2_combout\ = (\alu1|Mux8~0_combout\ & (((\alu1|Mux8~1_combout\)))) # (!\alu1|Mux8~0_combout\ & ((\alu1|Mux8~1_combout\ & ((\alu1|ShiftRight0~2_combout\))) # (!\alu1|Mux8~1_combout\ & (\mux41|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|Mux8~0_combout\,
	datab => \mux41|Mux6~0_combout\,
	datac => \alu1|ShiftRight0~2_combout\,
	datad => \alu1|Mux8~1_combout\,
	combout => \alu1|Mux8~2_combout\);

-- Location: LCCOMB_X23_Y13_N0
\alu1|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux8~3_combout\ = (\alu1|Mux8~0_combout\ & ((\alu1|Mux8~2_combout\ & ((\alu1|ShiftRight0~3_combout\))) # (!\alu1|Mux8~2_combout\ & (\mux41|Mux7~1_combout\)))) # (!\alu1|Mux8~0_combout\ & (((\alu1|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|Mux8~0_combout\,
	datab => \mux41|Mux7~1_combout\,
	datac => \alu1|ShiftRight0~3_combout\,
	datad => \alu1|Mux8~2_combout\,
	combout => \alu1|Mux8~3_combout\);

-- Location: LCCOMB_X24_Y14_N18
\alu1|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux8~4_combout\ = (\mux51|Mux7~1_combout\ & (\alu1|Mux6~2_combout\ & (!\mux51|Mux6~1_combout\ & \mux41|Mux7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux51|Mux7~1_combout\,
	datab => \alu1|Mux6~2_combout\,
	datac => \mux51|Mux6~1_combout\,
	datad => \mux41|Mux7~1_combout\,
	combout => \alu1|Mux8~4_combout\);

-- Location: LCCOMB_X24_Y14_N12
\alu1|Mux8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux8~10_combout\ = (\alu1|Mux8~9_combout\ & (((\alu1|Mux8~4_combout\)) # (!\alu1|Mux8~7_combout\))) # (!\alu1|Mux8~9_combout\ & (\alu1|Mux8~7_combout\ & (\alu1|Mux8~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|Mux8~9_combout\,
	datab => \alu1|Mux8~7_combout\,
	datac => \alu1|Mux8~3_combout\,
	datad => \alu1|Mux8~4_combout\,
	combout => \alu1|Mux8~10_combout\);

-- Location: LCCOMB_X24_Y14_N16
\cnt1|CntValue[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt1|CntValue[0]~0_combout\ = (\alu1|Mux8~11_combout\ & (\alu1|rslt~6_combout\)) # (!\alu1|Mux8~11_combout\ & ((\alu1|Mux8~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|Mux8~11_combout\,
	datab => \alu1|rslt~6_combout\,
	datad => \alu1|Mux8~10_combout\,
	combout => \cnt1|CntValue[0]~0_combout\);

-- Location: FF_X24_Y14_N17
\cnt1|CntValue[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt1|CntValue[0]~0_combout\,
	asdata => \rf1|core~131_combout\,
	sload => \dc1|tomux7~0_combout\,
	ena => \dc1|toCntwe~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt1|CntValue\(0));

-- Location: LCCOMB_X24_Y14_N26
\mux51|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux51|Mux7~1_combout\ = (\dc1|tomux5[0]~1_combout\ & (!\cnt1|CntValue\(0))) # (!\dc1|tomux5[0]~1_combout\ & ((\mux51|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt1|CntValue\(0),
	datac => \mux51|Mux7~0_combout\,
	datad => \dc1|tomux5[0]~1_combout\,
	combout => \mux51|Mux7~1_combout\);

-- Location: LCCOMB_X24_Y14_N10
\alu1|ShiftRight0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|ShiftRight0~9_combout\ = (\mux51|Mux7~1_combout\ & (\rf1|core~194_combout\ & (!\mux51|Mux6~1_combout\ & \mux41|Mux5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux51|Mux7~1_combout\,
	datab => \rf1|core~194_combout\,
	datac => \mux51|Mux6~1_combout\,
	datad => \mux41|Mux5~2_combout\,
	combout => \alu1|ShiftRight0~9_combout\);

-- Location: LCCOMB_X21_Y10_N24
\mux41|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux41|Mux0~0_combout\ = (\rf1|core~194_combout\ & ((\mux41|Mux5~0_combout\) # (!\rf1|core~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~104_combout\,
	datac => \rf1|core~194_combout\,
	datad => \mux41|Mux5~0_combout\,
	combout => \mux41|Mux0~0_combout\);

-- Location: LCCOMB_X25_Y10_N22
\alu1|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux1~4_combout\ = (!\dc1|toalu[1]~2_combout\ & (\mux41|Mux0~0_combout\ $ (\mux51|Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux41|Mux0~0_combout\,
	datac => \mux51|Mux0~2_combout\,
	datad => \dc1|toalu[1]~2_combout\,
	combout => \alu1|Mux1~4_combout\);

-- Location: LCCOMB_X24_Y10_N6
\alu1|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Add0~33_combout\ = \mux51|Mux0~2_combout\ $ (((!\imem1|WideOr0~15_combout\ & (\dc1|tomux2~0_combout\ & \dc1|toalu[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr0~15_combout\,
	datab => \mux51|Mux0~2_combout\,
	datac => \dc1|tomux2~0_combout\,
	datad => \dc1|toalu[0]~4_combout\,
	combout => \alu1|Add0~33_combout\);

-- Location: LCCOMB_X24_Y10_N26
\alu1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Add0~28_combout\ = \alu1|Add0~33_combout\ $ (\alu1|Add0~27\ $ (!\mux41|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|Add0~33_combout\,
	datad => \mux41|Mux0~0_combout\,
	cin => \alu1|Add0~27\,
	combout => \alu1|Add0~28_combout\);

-- Location: LCCOMB_X25_Y10_N4
\alu1|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux1~5_combout\ = (\alu1|Mux8~6_combout\ & (\alu1|Mux1~4_combout\ & ((!\alu1|Mux8~5_combout\)))) # (!\alu1|Mux8~6_combout\ & (((\alu1|Add0~28_combout\) # (\alu1|Mux8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|Mux1~4_combout\,
	datab => \alu1|Mux8~6_combout\,
	datac => \alu1|Add0~28_combout\,
	datad => \alu1|Mux8~5_combout\,
	combout => \alu1|Mux1~5_combout\);

-- Location: LCCOMB_X25_Y10_N12
\alu1|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux1~1_combout\ = (\alu1|Mux8~1_combout\ & (((\alu1|Mux8~0_combout\)))) # (!\alu1|Mux8~1_combout\ & ((\alu1|Mux8~0_combout\ & ((\mux41|Mux0~0_combout\))) # (!\alu1|Mux8~0_combout\ & (\mux41|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux41|Mux1~0_combout\,
	datab => \alu1|Mux8~1_combout\,
	datac => \alu1|Mux8~0_combout\,
	datad => \mux41|Mux0~0_combout\,
	combout => \alu1|Mux1~1_combout\);

-- Location: LCCOMB_X25_Y10_N10
\alu1|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux1~2_combout\ = (\alu1|Mux1~1_combout\ & (((\alu1|ShiftLeft0~9_combout\)) # (!\alu1|Mux8~1_combout\))) # (!\alu1|Mux1~1_combout\ & (\alu1|Mux8~1_combout\ & ((\alu1|ShiftLeft0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|Mux1~1_combout\,
	datab => \alu1|Mux8~1_combout\,
	datac => \alu1|ShiftLeft0~9_combout\,
	datad => \alu1|ShiftLeft0~11_combout\,
	combout => \alu1|Mux1~2_combout\);

-- Location: LCCOMB_X25_Y10_N28
\alu1|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux1~3_combout\ = (!\alu1|ShiftLeft0~12_combout\ & \alu1|Mux1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu1|ShiftLeft0~12_combout\,
	datad => \alu1|Mux1~2_combout\,
	combout => \alu1|Mux1~3_combout\);

-- Location: LCCOMB_X25_Y10_N2
\alu1|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux1~6_combout\ = (\alu1|Mux1~0_combout\ & ((\alu1|Mux1~5_combout\ & ((\alu1|Mux1~3_combout\))) # (!\alu1|Mux1~5_combout\ & (\alu1|ShiftRight0~9_combout\)))) # (!\alu1|Mux1~0_combout\ & (((\alu1|Mux1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|ShiftRight0~9_combout\,
	datab => \alu1|Mux1~0_combout\,
	datac => \alu1|Mux1~5_combout\,
	datad => \alu1|Mux1~3_combout\,
	combout => \alu1|Mux1~6_combout\);

-- Location: LCCOMB_X19_Y11_N18
\dmem1|guts_rtl_0_bypass[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dmem1|guts_rtl_0_bypass[24]~feeder_combout\ = \rf1|core~194_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf1|core~194_combout\,
	combout => \dmem1|guts_rtl_0_bypass[24]~feeder_combout\);

-- Location: FF_X19_Y11_N19
\dmem1|guts_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dmem1|guts_rtl_0_bypass[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dmem1|guts_rtl_0_bypass\(24));

-- Location: LCCOMB_X24_Y11_N28
\mux21|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux21|Mux0~0_combout\ = (\mux21|Mux6~1_combout\ & (!\mux21|Mux6~8_combout\ & ((\dmem1|guts_rtl_0|auto_generated|ram_block1a7\)))) # (!\mux21|Mux6~1_combout\ & ((\mux21|Mux6~8_combout\) # ((\imem1|WideOr1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux21|Mux6~1_combout\,
	datab => \mux21|Mux6~8_combout\,
	datac => \imem1|WideOr1~8_combout\,
	datad => \dmem1|guts_rtl_0|auto_generated|ram_block1a7\,
	combout => \mux21|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y11_N18
\mux21|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux21|Mux0~1_combout\ = (\mux21|Mux6~8_combout\ & ((\mux21|Mux0~0_combout\ & (\rf1|core~194_combout\)) # (!\mux21|Mux0~0_combout\ & ((\dmem1|guts_rtl_0_bypass\(24)))))) # (!\mux21|Mux6~8_combout\ & (((\mux21|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~194_combout\,
	datab => \dmem1|guts_rtl_0_bypass\(24),
	datac => \mux21|Mux6~8_combout\,
	datad => \mux21|Mux0~0_combout\,
	combout => \mux21|Mux0~1_combout\);

-- Location: LCCOMB_X24_Y11_N20
\mux21|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux21|Mux0~2_combout\ = (\mux21|Mux6~0_combout\ & ((\mux21|Mux0~1_combout\))) # (!\mux21|Mux6~0_combout\ & (!\alu1|Mux8~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|Mux8~11_combout\,
	datab => \mux21|Mux0~1_combout\,
	datad => \mux21|Mux6~0_combout\,
	combout => \mux21|Mux0~2_combout\);

-- Location: LCCOMB_X24_Y11_N16
\mux21|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux21|Mux0~3_combout\ = (\mux21|Mux6~0_combout\ & (((\mux21|Mux0~2_combout\)))) # (!\mux21|Mux6~0_combout\ & ((\mux21|Mux0~2_combout\ & (\alu1|Mux1~6_combout\)) # (!\mux21|Mux0~2_combout\ & ((\alu1|rslt~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|Mux1~6_combout\,
	datab => \mux21|Mux6~0_combout\,
	datac => \alu1|rslt~12_combout\,
	datad => \mux21|Mux0~2_combout\,
	combout => \mux21|Mux0~3_combout\);

-- Location: LCCOMB_X25_Y9_N26
\rf1|core~15feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~15feeder_combout\ = \mux21|Mux0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux21|Mux0~3_combout\,
	combout => \rf1|core~15feeder_combout\);

-- Location: FF_X25_Y9_N27
\rf1|core~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf1|core~15feeder_combout\,
	ena => \rf1|core~271_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|core~15_q\);

-- Location: LCCOMB_X25_Y11_N28
\rf1|core~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~192_combout\ = (\sc1|SC\(0) & ((\rf1|core~23_q\) # ((!\sc1|SC\(1))))) # (!\sc1|SC\(0) & (((\rf1|core~31_q\ & !\sc1|SC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~23_q\,
	datab => \sc1|SC\(0),
	datac => \rf1|core~31_q\,
	datad => \sc1|SC\(1),
	combout => \rf1|core~192_combout\);

-- Location: LCCOMB_X25_Y9_N16
\rf1|core~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~193_combout\ = (\rf1|core~192_combout\ & (((\rf1|core~7_q\) # (!\rf1|Add0~0_combout\)))) # (!\rf1|core~192_combout\ & (\rf1|core~15_q\ & ((\rf1|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~15_q\,
	datab => \rf1|core~192_combout\,
	datac => \rf1|core~7_q\,
	datad => \rf1|Add0~0_combout\,
	combout => \rf1|core~193_combout\);

-- Location: LCCOMB_X24_Y15_N6
\rf1|core~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~186_combout\ = (\sc1|SC\(0) & (((\rf1|core~87_q\) # (!\sc1|SC\(1))))) # (!\sc1|SC\(0) & (\rf1|core~95_q\ & ((!\sc1|SC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(0),
	datab => \rf1|core~95_q\,
	datac => \rf1|core~87_q\,
	datad => \sc1|SC\(1),
	combout => \rf1|core~186_combout\);

-- Location: LCCOMB_X23_Y14_N18
\rf1|core~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~187_combout\ = (\rf1|Add0~0_combout\ & ((\rf1|core~186_combout\ & ((\rf1|core~71_q\))) # (!\rf1|core~186_combout\ & (\rf1|core~79_q\)))) # (!\rf1|Add0~0_combout\ & (((\rf1|core~186_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|Add0~0_combout\,
	datab => \rf1|core~79_q\,
	datac => \rf1|core~71_q\,
	datad => \rf1|core~186_combout\,
	combout => \rf1|core~187_combout\);

-- Location: LCCOMB_X25_Y12_N2
\rf1|core~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~190_combout\ = (!\sc1|SC\(1) & (\rf1|core~103_q\ & \sc1|SC\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(1),
	datab => \rf1|core~103_q\,
	datad => \sc1|SC\(0),
	combout => \rf1|core~190_combout\);

-- Location: LCCOMB_X26_Y11_N2
\rf1|core~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~188_combout\ = (\sc1|SC\(0) & ((\rf1|core~55_q\) # ((!\sc1|SC\(1))))) # (!\sc1|SC\(0) & (((\rf1|core~63_q\ & !\sc1|SC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~55_q\,
	datab => \sc1|SC\(0),
	datac => \rf1|core~63_q\,
	datad => \sc1|SC\(1),
	combout => \rf1|core~188_combout\);

-- Location: LCCOMB_X22_Y11_N18
\rf1|core~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~189_combout\ = (\rf1|core~188_combout\ & ((\rf1|core~39_q\) # ((!\rf1|Add0~0_combout\)))) # (!\rf1|core~188_combout\ & (((\rf1|core~47_q\ & \rf1|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~39_q\,
	datab => \rf1|core~188_combout\,
	datac => \rf1|core~47_q\,
	datad => \rf1|Add0~0_combout\,
	combout => \rf1|core~189_combout\);

-- Location: LCCOMB_X25_Y13_N20
\rf1|core~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~191_combout\ = (\rf1|Add0~1_combout\ & ((\rf1|Add0~2_combout\) # ((\rf1|core~189_combout\)))) # (!\rf1|Add0~1_combout\ & (!\rf1|Add0~2_combout\ & (\rf1|core~190_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|Add0~1_combout\,
	datab => \rf1|Add0~2_combout\,
	datac => \rf1|core~190_combout\,
	datad => \rf1|core~189_combout\,
	combout => \rf1|core~191_combout\);

-- Location: LCCOMB_X25_Y13_N26
\rf1|core~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~194_combout\ = (\rf1|Add0~2_combout\ & ((\rf1|core~191_combout\ & (\rf1|core~193_combout\)) # (!\rf1|core~191_combout\ & ((\rf1|core~187_combout\))))) # (!\rf1|Add0~2_combout\ & (((\rf1|core~191_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~193_combout\,
	datab => \rf1|Add0~2_combout\,
	datac => \rf1|core~187_combout\,
	datad => \rf1|core~191_combout\,
	combout => \rf1|core~194_combout\);

-- Location: LCCOMB_X19_Y10_N8
\dc1|toBarwe~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dc1|toBarwe~3_combout\ = (\rf1|core~104_combout\ & (\imem1|WideOr8~12_combout\ & \dc1|toBarwe~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~104_combout\,
	datab => \imem1|WideOr8~12_combout\,
	datad => \dc1|toBarwe~2_combout\,
	combout => \dc1|toBarwe~3_combout\);

-- Location: FF_X19_Y10_N9
\bar1|BarValue[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf1|core~194_combout\,
	sload => VCC,
	ena => \dc1|toBarwe~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bar1|BarValue\(7));

-- Location: LCCOMB_X21_Y10_N14
\alu1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Equal0~4_combout\ = (\mux41|Mux6~0_combout\ & (\mux51|Mux6~1_combout\ & (\mux41|Mux0~0_combout\ $ (!\mux51|Mux0~2_combout\)))) # (!\mux41|Mux6~0_combout\ & (!\mux51|Mux6~1_combout\ & (\mux41|Mux0~0_combout\ $ (!\mux51|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux41|Mux6~0_combout\,
	datab => \mux41|Mux0~0_combout\,
	datac => \mux51|Mux6~1_combout\,
	datad => \mux51|Mux0~2_combout\,
	combout => \alu1|Equal0~4_combout\);

-- Location: LCCOMB_X22_Y11_N0
\alu1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Equal0~2_combout\ = (\mux41|Mux7~1_combout\ & (!\mux51|Mux7~1_combout\ & (\mux51|Mux3~2_combout\ $ (!\mux41|Mux3~0_combout\)))) # (!\mux41|Mux7~1_combout\ & (\mux51|Mux7~1_combout\ & (\mux51|Mux3~2_combout\ $ (!\mux41|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux41|Mux7~1_combout\,
	datab => \mux51|Mux3~2_combout\,
	datac => \mux51|Mux7~1_combout\,
	datad => \mux41|Mux3~0_combout\,
	combout => \alu1|Equal0~2_combout\);

-- Location: LCCOMB_X22_Y10_N22
\alu1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Equal0~3_combout\ = (\alu1|Equal0~2_combout\ & (!\alu1|Equal0~8_combout\ & (\mux41|Mux1~0_combout\ $ (!\mux51|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|Equal0~2_combout\,
	datab => \mux41|Mux1~0_combout\,
	datac => \mux51|Mux1~2_combout\,
	datad => \alu1|Equal0~8_combout\,
	combout => \alu1|Equal0~3_combout\);

-- Location: LCCOMB_X22_Y10_N6
\alu1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Equal0~7_combout\ = (\alu1|Equal0~4_combout\ & (!\alu1|Equal0~6_combout\ & (\alu1|Equal0~3_combout\ & \alu1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|Equal0~4_combout\,
	datab => \alu1|Equal0~6_combout\,
	datac => \alu1|Equal0~3_combout\,
	datad => \alu1|Equal0~5_combout\,
	combout => \alu1|Equal0~7_combout\);

-- Location: LCCOMB_X22_Y10_N4
\alu1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|Mux0~0_combout\ = (\dc1|toalu[2]~3_combout\ & (\dc1|toalu[1]~2_combout\ & (\alu1|Equal0~7_combout\ $ (\dc1|toalu[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|Equal0~7_combout\,
	datab => \dc1|toalu[2]~3_combout\,
	datac => \dc1|toalu[0]~5_combout\,
	datad => \dc1|toalu[1]~2_combout\,
	combout => \alu1|Mux0~0_combout\);

-- Location: FF_X22_Y12_N25
\pc1|PC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc1|PC[7]~22_combout\,
	asdata => \bar1|BarValue\(7),
	sclr => \reset~input_o\,
	sload => \alu1|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc1|PC\(7));

-- Location: LCCOMB_X22_Y12_N2
\imem1|WideOr0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr0~13_combout\ = (!\pc1|PC\(6) & (!\pc1|PC\(4) & (\pc1|PC\(7) & !\pc1|PC\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(6),
	datab => \pc1|PC\(4),
	datac => \pc1|PC\(7),
	datad => \pc1|PC\(5),
	combout => \imem1|WideOr0~13_combout\);

-- Location: LCCOMB_X26_Y12_N10
\dc1|toBarwe~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dc1|toBarwe~4_combout\ = (\dc1|toBarwe~2_combout\ & ((\imem1|WideOr8~10_combout\) # ((\imem1|WideOr0~13_combout\ & \imem1|WideOr8~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr0~13_combout\,
	datab => \imem1|WideOr8~11_combout\,
	datac => \dc1|toBarwe~2_combout\,
	datad => \imem1|WideOr8~10_combout\,
	combout => \dc1|toBarwe~4_combout\);

-- Location: LCCOMB_X21_Y11_N0
\dc1|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dc1|WideOr1~0_combout\ = (\imem1|WideOr8~12_combout\ & ((\imem1|WideOr5~15_combout\) # ((\imem1|WideOr7~19_combout\ & \imem1|WideOr6~14_combout\)))) # (!\imem1|WideOr8~12_combout\ & (\imem1|WideOr5~15_combout\ & (\imem1|WideOr7~19_combout\ $ 
-- (!\imem1|WideOr6~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr7~19_combout\,
	datab => \imem1|WideOr6~14_combout\,
	datac => \imem1|WideOr8~12_combout\,
	datad => \imem1|WideOr5~15_combout\,
	combout => \dc1|WideOr1~0_combout\);

-- Location: LCCOMB_X26_Y12_N0
\dc1|tosc[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dc1|tosc[1]~0_combout\ = (\rf1|core~104_combout\ & ((\dc1|toBarwe~4_combout\) # ((\imem1|WideOr4~11_combout\ & \dc1|WideOr1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dc1|toBarwe~4_combout\,
	datab => \rf1|core~104_combout\,
	datac => \imem1|WideOr4~11_combout\,
	datad => \dc1|WideOr1~0_combout\,
	combout => \dc1|tosc[1]~0_combout\);

-- Location: LCCOMB_X26_Y12_N16
\sc1|SC~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|SC~11_combout\ = \sc1|SC\(2) $ (((!\sc1|SC\(1) & \dc1|tosc[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(1),
	datac => \sc1|SC\(2),
	datad => \dc1|tosc[1]~0_combout\,
	combout => \sc1|SC~11_combout\);

-- Location: LCCOMB_X25_Y9_N8
\sc1|SC~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|SC~6_combout\ = \sc1|SC\(2) $ (((\sc1|SC\(1) & (!\dc1|tosc[1]~0_combout\ & \sc1|SC\(0))) # (!\sc1|SC\(1) & (\dc1|tosc[1]~0_combout\ & !\sc1|SC\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(2),
	datab => \sc1|SC\(1),
	datac => \dc1|tosc[1]~0_combout\,
	datad => \sc1|SC\(0),
	combout => \sc1|SC~6_combout\);

-- Location: LCCOMB_X25_Y9_N12
\sc1|SC~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|SC~7_combout\ = (!\reset~input_o\ & ((\dc1|tosc[0]~1_combout\ & ((\sc1|SC~6_combout\))) # (!\dc1|tosc[0]~1_combout\ & (\sc1|SC~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC~11_combout\,
	datab => \sc1|SC~6_combout\,
	datac => \reset~input_o\,
	datad => \dc1|tosc[0]~1_combout\,
	combout => \sc1|SC~7_combout\);

-- Location: FF_X25_Y9_N13
\sc1|SC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sc1|SC~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|SC\(2));

-- Location: LCCOMB_X26_Y13_N22
\rf1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|Add0~2_combout\ = \sc1|SC\(2) $ (((\sc1|SC\(0)) # (\sc1|SC\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(0),
	datac => \sc1|SC\(2),
	datad => \sc1|SC\(1),
	combout => \rf1|Add0~2_combout\);

-- Location: LCCOMB_X23_Y9_N22
\rf1|core~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~161_combout\ = (\sc1|SC\(0) & (((\rf1|core~53_q\) # (!\sc1|SC\(1))))) # (!\sc1|SC\(0) & (\rf1|core~61_q\ & ((!\sc1|SC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(0),
	datab => \rf1|core~61_q\,
	datac => \rf1|core~53_q\,
	datad => \sc1|SC\(1),
	combout => \rf1|core~161_combout\);

-- Location: LCCOMB_X23_Y9_N12
\rf1|core~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~162_combout\ = (\rf1|core~161_combout\ & ((\rf1|core~37_q\) # ((!\rf1|Add0~0_combout\)))) # (!\rf1|core~161_combout\ & (((\rf1|core~45_q\ & \rf1|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~37_q\,
	datab => \rf1|core~45_q\,
	datac => \rf1|core~161_combout\,
	datad => \rf1|Add0~0_combout\,
	combout => \rf1|core~162_combout\);

-- Location: LCCOMB_X25_Y13_N12
\rf1|core~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~163_combout\ = (!\sc1|SC\(1) & (\sc1|SC\(0) & \rf1|core~101_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc1|SC\(1),
	datac => \sc1|SC\(0),
	datad => \rf1|core~101_q\,
	combout => \rf1|core~163_combout\);

-- Location: LCCOMB_X25_Y13_N18
\rf1|core~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~164_combout\ = (\rf1|Add0~1_combout\ & ((\rf1|Add0~2_combout\) # ((\rf1|core~162_combout\)))) # (!\rf1|Add0~1_combout\ & (!\rf1|Add0~2_combout\ & ((\rf1|core~163_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|Add0~1_combout\,
	datab => \rf1|Add0~2_combout\,
	datac => \rf1|core~162_combout\,
	datad => \rf1|core~163_combout\,
	combout => \rf1|core~164_combout\);

-- Location: LCCOMB_X24_Y9_N18
\rf1|core~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~159_combout\ = (\sc1|SC\(1) & (((\rf1|core~85_q\ & \sc1|SC\(0))))) # (!\sc1|SC\(1) & ((\rf1|core~93_q\) # ((\sc1|SC\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(1),
	datab => \rf1|core~93_q\,
	datac => \rf1|core~85_q\,
	datad => \sc1|SC\(0),
	combout => \rf1|core~159_combout\);

-- Location: LCCOMB_X24_Y13_N26
\rf1|core~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~160_combout\ = (\rf1|Add0~0_combout\ & ((\rf1|core~159_combout\ & (\rf1|core~69_q\)) # (!\rf1|core~159_combout\ & ((\rf1|core~77_q\))))) # (!\rf1|Add0~0_combout\ & (((\rf1|core~159_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|Add0~0_combout\,
	datab => \rf1|core~69_q\,
	datac => \rf1|core~77_q\,
	datad => \rf1|core~159_combout\,
	combout => \rf1|core~160_combout\);

-- Location: LCCOMB_X25_Y11_N14
\rf1|core~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~165_combout\ = (\sc1|SC\(0) & (((\rf1|core~21_q\)) # (!\sc1|SC\(1)))) # (!\sc1|SC\(0) & (!\sc1|SC\(1) & (\rf1|core~29_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(0),
	datab => \sc1|SC\(1),
	datac => \rf1|core~29_q\,
	datad => \rf1|core~21_q\,
	combout => \rf1|core~165_combout\);

-- Location: LCCOMB_X23_Y11_N10
\rf1|core~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~166_combout\ = (\rf1|Add0~0_combout\ & ((\rf1|core~165_combout\ & ((\rf1|core~5_q\))) # (!\rf1|core~165_combout\ & (\rf1|core~13_q\)))) # (!\rf1|Add0~0_combout\ & (((\rf1|core~165_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~13_q\,
	datab => \rf1|core~5_q\,
	datac => \rf1|Add0~0_combout\,
	datad => \rf1|core~165_combout\,
	combout => \rf1|core~166_combout\);

-- Location: LCCOMB_X25_Y13_N8
\rf1|core~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~167_combout\ = (\rf1|Add0~2_combout\ & ((\rf1|core~164_combout\ & ((\rf1|core~166_combout\))) # (!\rf1|core~164_combout\ & (\rf1|core~160_combout\)))) # (!\rf1|Add0~2_combout\ & (\rf1|core~164_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|Add0~2_combout\,
	datab => \rf1|core~164_combout\,
	datac => \rf1|core~160_combout\,
	datad => \rf1|core~166_combout\,
	combout => \rf1|core~167_combout\);

-- Location: LCCOMB_X26_Y10_N20
\bar1|BarValue[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bar1|BarValue[5]~feeder_combout\ = \rf1|core~167_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf1|core~167_combout\,
	combout => \bar1|BarValue[5]~feeder_combout\);

-- Location: FF_X26_Y10_N21
\bar1|BarValue[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bar1|BarValue[5]~feeder_combout\,
	ena => \dc1|toBarwe~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bar1|BarValue\(5));

-- Location: FF_X22_Y12_N21
\pc1|PC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc1|PC[5]~18_combout\,
	asdata => \bar1|BarValue\(5),
	sclr => \reset~input_o\,
	sload => \alu1|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc1|PC\(5));

-- Location: LCCOMB_X19_Y10_N30
\bar1|BarValue[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bar1|BarValue[6]~feeder_combout\ = \rf1|core~149_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf1|core~149_combout\,
	combout => \bar1|BarValue[6]~feeder_combout\);

-- Location: FF_X19_Y10_N31
\bar1|BarValue[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bar1|BarValue[6]~feeder_combout\,
	ena => \dc1|toBarwe~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bar1|BarValue\(6));

-- Location: FF_X22_Y12_N23
\pc1|PC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc1|PC[6]~20_combout\,
	asdata => \bar1|BarValue\(6),
	sclr => \reset~input_o\,
	sload => \alu1|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc1|PC\(6));

-- Location: LCCOMB_X19_Y12_N4
\imem1|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr1~0_combout\ = (!\pc1|PC\(5) & \pc1|PC\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc1|PC\(5),
	datad => \pc1|PC\(4),
	combout => \imem1|WideOr1~0_combout\);

-- Location: LCCOMB_X19_Y12_N18
\imem1|WideOr1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr1~1_combout\ = (!\pc1|PC\(3) & (!\pc1|PC\(0) & (\pc1|PC\(1) & \pc1|PC\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(3),
	datab => \pc1|PC\(0),
	datac => \pc1|PC\(1),
	datad => \pc1|PC\(2),
	combout => \imem1|WideOr1~1_combout\);

-- Location: LCCOMB_X19_Y12_N2
\imem1|WideOr1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr1~2_combout\ = (\imem1|WideOr1~0_combout\ & ((\pc1|PC\(6) & ((\imem1|WideOr1~1_combout\))) # (!\pc1|PC\(6) & (\imem1|WideOr4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr4~0_combout\,
	datab => \pc1|PC\(6),
	datac => \imem1|WideOr1~0_combout\,
	datad => \imem1|WideOr1~1_combout\,
	combout => \imem1|WideOr1~2_combout\);

-- Location: LCCOMB_X19_Y12_N28
\imem1|WideOr1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr1~6_combout\ = (\pc1|PC\(0) & ((\pc1|PC\(1) & ((\pc1|PC\(2)))) # (!\pc1|PC\(1) & ((\pc1|PC\(4)) # (!\pc1|PC\(2)))))) # (!\pc1|PC\(0) & ((\pc1|PC\(1) & (\pc1|PC\(4) & !\pc1|PC\(2))) # (!\pc1|PC\(1) & ((\pc1|PC\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(4),
	datab => \pc1|PC\(0),
	datac => \pc1|PC\(1),
	datad => \pc1|PC\(2),
	combout => \imem1|WideOr1~6_combout\);

-- Location: LCCOMB_X19_Y12_N22
\imem1|WideOr1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr1~7_combout\ = (\pc1|PC\(6) & ((\pc1|PC\(5) & (\pc1|PC\(4) & !\imem1|WideOr1~6_combout\)) # (!\pc1|PC\(5) & (!\pc1|PC\(4) & \imem1|WideOr1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(5),
	datab => \pc1|PC\(6),
	datac => \pc1|PC\(4),
	datad => \imem1|WideOr1~6_combout\,
	combout => \imem1|WideOr1~7_combout\);

-- Location: LCCOMB_X19_Y12_N30
\imem1|WideOr1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr1~4_combout\ = (\pc1|PC\(2) & ((\pc1|PC\(1) & (\pc1|PC\(3))) # (!\pc1|PC\(1) & ((\pc1|PC\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(3),
	datab => \pc1|PC\(0),
	datac => \pc1|PC\(1),
	datad => \pc1|PC\(2),
	combout => \imem1|WideOr1~4_combout\);

-- Location: LCCOMB_X19_Y12_N20
\imem1|WideOr1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr1~3_combout\ = (!\pc1|PC\(4) & (!\pc1|PC\(6) & (\pc1|PC\(5) & \imem1|WideOr4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(4),
	datab => \pc1|PC\(6),
	datac => \pc1|PC\(5),
	datad => \imem1|WideOr4~1_combout\,
	combout => \imem1|WideOr1~3_combout\);

-- Location: LCCOMB_X19_Y12_N6
\imem1|WideOr1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr1~5_combout\ = (\imem1|WideOr1~3_combout\) # ((\pc1|PC\(7) & ((\imem1|WideOr1~4_combout\) # (!\imem1|WideOr7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr1~4_combout\,
	datab => \imem1|WideOr7~2_combout\,
	datac => \pc1|PC\(7),
	datad => \imem1|WideOr1~3_combout\,
	combout => \imem1|WideOr1~5_combout\);

-- Location: LCCOMB_X19_Y12_N8
\imem1|WideOr1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr1~8_combout\ = (\imem1|WideOr1~2_combout\) # ((\imem1|WideOr1~5_combout\) # ((\pc1|PC\(3) & \imem1|WideOr1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(3),
	datab => \imem1|WideOr1~2_combout\,
	datac => \imem1|WideOr1~7_combout\,
	datad => \imem1|WideOr1~5_combout\,
	combout => \imem1|WideOr1~8_combout\);

-- Location: LCCOMB_X24_Y12_N2
\rf1|core~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~249_combout\ = \sc1|SC\(0) $ (((\imem1|WideOr0~15_combout\) # ((!\imem1|WideOr1~8_combout\ & \dc1|WideOr2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr1~8_combout\,
	datab => \dc1|WideOr2~1_combout\,
	datac => \sc1|SC\(0),
	datad => \imem1|WideOr0~15_combout\,
	combout => \rf1|core~249_combout\);

-- Location: LCCOMB_X25_Y9_N18
\sc1|SC~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|SC~5_combout\ = (!\reset~input_o\ & \rf1|core~249_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \rf1|core~249_combout\,
	combout => \sc1|SC~5_combout\);

-- Location: FF_X25_Y9_N19
\sc1|SC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sc1|SC~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|SC\(0));

-- Location: LCCOMB_X25_Y9_N22
\rf1|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|Mux2~1_combout\ = \dc1|tosc[1]~0_combout\ $ (!\sc1|SC\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dc1|tosc[1]~0_combout\,
	datad => \sc1|SC\(1),
	combout => \rf1|Mux2~1_combout\);

-- Location: LCCOMB_X25_Y9_N28
\sc1|SC~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|SC~4_combout\ = (!\reset~input_o\ & (\rf1|Mux2~1_combout\ $ (((!\dc1|tosc[0]~1_combout\) # (!\sc1|SC\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \sc1|SC\(0),
	datac => \rf1|Mux2~1_combout\,
	datad => \dc1|tosc[0]~1_combout\,
	combout => \sc1|SC~4_combout\);

-- Location: FF_X25_Y9_N29
\sc1|SC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sc1|SC~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|SC\(1));

-- Location: LCCOMB_X26_Y12_N18
\sc1|SC~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|SC~12_combout\ = \sc1|SC\(3) $ (((!\sc1|SC\(1) & (!\sc1|SC\(2) & \dc1|tosc[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(1),
	datab => \sc1|SC\(3),
	datac => \sc1|SC\(2),
	datad => \dc1|tosc[1]~0_combout\,
	combout => \sc1|SC~12_combout\);

-- Location: LCCOMB_X24_Y12_N16
\sc1|SC~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|SC~8_combout\ = (\sc1|SC\(2) & (\sc1|SC\(1) & (!\dc1|tosc[1]~0_combout\ & \sc1|SC\(0)))) # (!\sc1|SC\(2) & (!\sc1|SC\(1) & (\dc1|tosc[1]~0_combout\ & !\sc1|SC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(2),
	datab => \sc1|SC\(1),
	datac => \dc1|tosc[1]~0_combout\,
	datad => \sc1|SC\(0),
	combout => \sc1|SC~8_combout\);

-- Location: LCCOMB_X25_Y9_N6
\sc1|SC~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|SC~9_combout\ = (\dc1|tosc[0]~1_combout\ & ((\sc1|SC~8_combout\ $ (\sc1|SC\(3))))) # (!\dc1|tosc[0]~1_combout\ & (\sc1|SC~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC~12_combout\,
	datab => \sc1|SC~8_combout\,
	datac => \sc1|SC\(3),
	datad => \dc1|tosc[0]~1_combout\,
	combout => \sc1|SC~9_combout\);

-- Location: LCCOMB_X25_Y9_N14
\sc1|SC~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|SC~10_combout\ = (!\reset~input_o\ & \sc1|SC~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \sc1|SC~9_combout\,
	combout => \sc1|SC~10_combout\);

-- Location: FF_X25_Y9_N15
\sc1|SC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sc1|SC~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|SC\(3));

-- Location: LCCOMB_X26_Y13_N14
\rf1|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|Add0~1_combout\ = \sc1|SC\(3) $ (((\sc1|SC\(1)) # ((\sc1|SC\(2)) # (\sc1|SC\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|SC\(3),
	datab => \sc1|SC\(1),
	datac => \sc1|SC\(2),
	datad => \sc1|SC\(0),
	combout => \rf1|Add0~1_combout\);

-- Location: LCCOMB_X25_Y11_N22
\rf1|core~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~129_combout\ = (\sc1|SC\(0) & ((\rf1|core~16_q\) # ((!\sc1|SC\(1))))) # (!\sc1|SC\(0) & (((\rf1|core~24_q\ & !\sc1|SC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~16_q\,
	datab => \sc1|SC\(0),
	datac => \rf1|core~24_q\,
	datad => \sc1|SC\(1),
	combout => \rf1|core~129_combout\);

-- Location: LCCOMB_X25_Y11_N6
\rf1|core~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~130_combout\ = (\rf1|core~129_combout\ & ((\rf1|core~0_q\) # ((!\rf1|Add0~0_combout\)))) # (!\rf1|core~129_combout\ & (((\rf1|Add0~0_combout\ & \rf1|core~8_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~129_combout\,
	datab => \rf1|core~0_q\,
	datac => \rf1|Add0~0_combout\,
	datad => \rf1|core~8_q\,
	combout => \rf1|core~130_combout\);

-- Location: LCCOMB_X26_Y13_N8
\rf1|core~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~127_combout\ = (\rf1|core~96_q\ & (!\sc1|SC\(1) & \sc1|SC\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~96_q\,
	datab => \sc1|SC\(1),
	datad => \sc1|SC\(0),
	combout => \rf1|core~127_combout\);

-- Location: LCCOMB_X24_Y9_N6
\rf1|core~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~125_combout\ = (\sc1|SC\(1) & (((\rf1|core~80_q\ & \sc1|SC\(0))))) # (!\sc1|SC\(1) & ((\rf1|core~88_q\) # ((\sc1|SC\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~88_q\,
	datab => \sc1|SC\(1),
	datac => \rf1|core~80_q\,
	datad => \sc1|SC\(0),
	combout => \rf1|core~125_combout\);

-- Location: LCCOMB_X26_Y13_N20
\rf1|core~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~126_combout\ = (\rf1|Add0~0_combout\ & ((\rf1|core~125_combout\ & (\rf1|core~64_q\)) # (!\rf1|core~125_combout\ & ((\rf1|core~72_q\))))) # (!\rf1|Add0~0_combout\ & (((\rf1|core~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~64_q\,
	datab => \rf1|Add0~0_combout\,
	datac => \rf1|core~72_q\,
	datad => \rf1|core~125_combout\,
	combout => \rf1|core~126_combout\);

-- Location: LCCOMB_X26_Y13_N30
\rf1|core~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~128_combout\ = (\rf1|Add0~1_combout\ & (((\rf1|Add0~2_combout\)))) # (!\rf1|Add0~1_combout\ & ((\rf1|Add0~2_combout\ & ((\rf1|core~126_combout\))) # (!\rf1|Add0~2_combout\ & (\rf1|core~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~127_combout\,
	datab => \rf1|Add0~1_combout\,
	datac => \rf1|Add0~2_combout\,
	datad => \rf1|core~126_combout\,
	combout => \rf1|core~128_combout\);

-- Location: LCCOMB_X26_Y11_N14
\rf1|core~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~123_combout\ = (\sc1|SC\(0) & ((\rf1|core~48_q\) # ((!\sc1|SC\(1))))) # (!\sc1|SC\(0) & (((\rf1|core~56_q\ & !\sc1|SC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~48_q\,
	datab => \sc1|SC\(0),
	datac => \rf1|core~56_q\,
	datad => \sc1|SC\(1),
	combout => \rf1|core~123_combout\);

-- Location: LCCOMB_X24_Y11_N10
\rf1|core~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~124_combout\ = (\rf1|core~123_combout\ & (((\rf1|core~32_q\) # (!\rf1|Add0~0_combout\)))) # (!\rf1|core~123_combout\ & (\rf1|core~40_q\ & ((\rf1|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|core~40_q\,
	datab => \rf1|core~123_combout\,
	datac => \rf1|core~32_q\,
	datad => \rf1|Add0~0_combout\,
	combout => \rf1|core~124_combout\);

-- Location: LCCOMB_X24_Y12_N24
\rf1|core~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|core~131_combout\ = (\rf1|Add0~1_combout\ & ((\rf1|core~128_combout\ & (\rf1|core~130_combout\)) # (!\rf1|core~128_combout\ & ((\rf1|core~124_combout\))))) # (!\rf1|Add0~1_combout\ & (((\rf1|core~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|Add0~1_combout\,
	datab => \rf1|core~130_combout\,
	datac => \rf1|core~128_combout\,
	datad => \rf1|core~124_combout\,
	combout => \rf1|core~131_combout\);

-- Location: LCCOMB_X19_Y10_N14
\bar1|BarValue[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bar1|BarValue[0]~feeder_combout\ = \rf1|core~131_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf1|core~131_combout\,
	combout => \bar1|BarValue[0]~feeder_combout\);

-- Location: FF_X19_Y10_N15
\bar1|BarValue[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bar1|BarValue[0]~feeder_combout\,
	ena => \dc1|toBarwe~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bar1|BarValue\(0));

-- Location: FF_X22_Y12_N11
\pc1|PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc1|PC[0]~8_combout\,
	asdata => \bar1|BarValue\(0),
	sclr => \reset~input_o\,
	sload => \alu1|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc1|PC\(0));

-- Location: LCCOMB_X22_Y12_N12
\pc1|PC[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc1|PC[1]~10_combout\ = (\pc1|PC\(1) & (!\pc1|PC[0]~9\)) # (!\pc1|PC\(1) & ((\pc1|PC[0]~9\) # (GND)))
-- \pc1|PC[1]~11\ = CARRY((!\pc1|PC[0]~9\) # (!\pc1|PC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(1),
	datad => VCC,
	cin => \pc1|PC[0]~9\,
	combout => \pc1|PC[1]~10_combout\,
	cout => \pc1|PC[1]~11\);

-- Location: LCCOMB_X19_Y10_N18
\bar1|BarValue[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bar1|BarValue[1]~feeder_combout\ = \rf1|core~185_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf1|core~185_combout\,
	combout => \bar1|BarValue[1]~feeder_combout\);

-- Location: FF_X19_Y10_N19
\bar1|BarValue[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bar1|BarValue[1]~feeder_combout\,
	ena => \dc1|toBarwe~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bar1|BarValue\(1));

-- Location: FF_X22_Y12_N13
\pc1|PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc1|PC[1]~10_combout\,
	asdata => \bar1|BarValue\(1),
	sclr => \reset~input_o\,
	sload => \alu1|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc1|PC\(1));

-- Location: LCCOMB_X22_Y12_N14
\pc1|PC[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc1|PC[2]~12_combout\ = (\pc1|PC\(2) & (\pc1|PC[1]~11\ $ (GND))) # (!\pc1|PC\(2) & (!\pc1|PC[1]~11\ & VCC))
-- \pc1|PC[2]~13\ = CARRY((\pc1|PC\(2) & !\pc1|PC[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc1|PC\(2),
	datad => VCC,
	cin => \pc1|PC[1]~11\,
	combout => \pc1|PC[2]~12_combout\,
	cout => \pc1|PC[2]~13\);

-- Location: LCCOMB_X19_Y10_N28
\bar1|BarValue[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bar1|BarValue[2]~feeder_combout\ = \rf1|core~221_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf1|core~221_combout\,
	combout => \bar1|BarValue[2]~feeder_combout\);

-- Location: FF_X19_Y10_N29
\bar1|BarValue[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bar1|BarValue[2]~feeder_combout\,
	ena => \dc1|toBarwe~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bar1|BarValue\(2));

-- Location: FF_X22_Y12_N15
\pc1|PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc1|PC[2]~12_combout\,
	asdata => \bar1|BarValue\(2),
	sclr => \reset~input_o\,
	sload => \alu1|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc1|PC\(2));

-- Location: LCCOMB_X22_Y12_N16
\pc1|PC[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc1|PC[3]~14_combout\ = (\pc1|PC\(3) & (!\pc1|PC[2]~13\)) # (!\pc1|PC\(3) & ((\pc1|PC[2]~13\) # (GND)))
-- \pc1|PC[3]~15\ = CARRY((!\pc1|PC[2]~13\) # (!\pc1|PC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc1|PC\(3),
	datad => VCC,
	cin => \pc1|PC[2]~13\,
	combout => \pc1|PC[3]~14_combout\,
	cout => \pc1|PC[3]~15\);

-- Location: LCCOMB_X19_Y10_N0
\bar1|BarValue[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bar1|BarValue[3]~feeder_combout\ = \rf1|core~248_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf1|core~248_combout\,
	combout => \bar1|BarValue[3]~feeder_combout\);

-- Location: FF_X19_Y10_N1
\bar1|BarValue[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bar1|BarValue[3]~feeder_combout\,
	ena => \dc1|toBarwe~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bar1|BarValue\(3));

-- Location: FF_X22_Y12_N17
\pc1|PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc1|PC[3]~14_combout\,
	asdata => \bar1|BarValue\(3),
	sclr => \reset~input_o\,
	sload => \alu1|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc1|PC\(3));

-- Location: LCCOMB_X19_Y10_N16
\bar1|BarValue[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bar1|BarValue[4]~feeder_combout\ = \rf1|core~113_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf1|core~113_combout\,
	combout => \bar1|BarValue[4]~feeder_combout\);

-- Location: FF_X19_Y10_N17
\bar1|BarValue[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bar1|BarValue[4]~feeder_combout\,
	ena => \dc1|toBarwe~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bar1|BarValue\(4));

-- Location: FF_X22_Y12_N19
\pc1|PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc1|PC[4]~16_combout\,
	asdata => \bar1|BarValue\(4),
	sclr => \reset~input_o\,
	sload => \alu1|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc1|PC\(4));

-- Location: LCCOMB_X21_Y12_N0
\imem1|WideOr7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr7~4_combout\ = (\pc1|PC\(6)) # ((\pc1|PC\(1) & ((\pc1|PC\(0)) # (!\pc1|PC\(2)))) # (!\pc1|PC\(1) & (\pc1|PC\(2) $ (\pc1|PC\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(1),
	datab => \pc1|PC\(2),
	datac => \pc1|PC\(0),
	datad => \pc1|PC\(6),
	combout => \imem1|WideOr7~4_combout\);

-- Location: LCCOMB_X21_Y12_N26
\imem1|WideOr7~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr7~20_combout\ = (\pc1|PC\(4)) # ((\pc1|PC\(5)) # (\imem1|WideOr7~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc1|PC\(4),
	datac => \pc1|PC\(5),
	datad => \imem1|WideOr7~4_combout\,
	combout => \imem1|WideOr7~20_combout\);

-- Location: LCCOMB_X19_Y12_N10
\imem1|WideOr7~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr7~18_combout\ = (\pc1|PC\(0) & (!\pc1|PC\(2) & \imem1|WideOr7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc1|PC\(0),
	datac => \pc1|PC\(2),
	datad => \imem1|WideOr7~2_combout\,
	combout => \imem1|WideOr7~18_combout\);

-- Location: LCCOMB_X21_Y12_N18
\imem1|WideOr7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr7~5_combout\ = (\pc1|PC\(2) & ((\pc1|PC\(1) & ((\pc1|PC\(4)) # (!\pc1|PC\(6)))) # (!\pc1|PC\(1) & (\pc1|PC\(6))))) # (!\pc1|PC\(2) & (\pc1|PC\(4) $ (((\pc1|PC\(1) & \pc1|PC\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011101101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(1),
	datab => \pc1|PC\(6),
	datac => \pc1|PC\(2),
	datad => \pc1|PC\(4),
	combout => \imem1|WideOr7~5_combout\);

-- Location: LCCOMB_X21_Y12_N22
\imem1|WideOr7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr7~9_combout\ = (\pc1|PC\(1) & (\pc1|PC\(6) $ (((\pc1|PC\(2)) # (!\pc1|PC\(4)))))) # (!\pc1|PC\(1) & ((\pc1|PC\(2) & ((\pc1|PC\(4)))) # (!\pc1|PC\(2) & (\pc1|PC\(6) & !\pc1|PC\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(1),
	datab => \pc1|PC\(6),
	datac => \pc1|PC\(2),
	datad => \pc1|PC\(4),
	combout => \imem1|WideOr7~9_combout\);

-- Location: LCCOMB_X21_Y12_N14
\imem1|WideOr7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr7~7_combout\ = (\pc1|PC\(2) & (((!\pc1|PC\(4))))) # (!\pc1|PC\(2) & (!\pc1|PC\(1) & ((\pc1|PC\(6)) # (\pc1|PC\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(6),
	datab => \pc1|PC\(2),
	datac => \pc1|PC\(1),
	datad => \pc1|PC\(4),
	combout => \imem1|WideOr7~7_combout\);

-- Location: LCCOMB_X21_Y12_N20
\imem1|WideOr7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr7~6_combout\ = (\pc1|PC\(1) & ((\pc1|PC\(4)) # (\pc1|PC\(2) $ (\pc1|PC\(6))))) # (!\pc1|PC\(1) & (\pc1|PC\(4) & ((\pc1|PC\(6)) # (!\pc1|PC\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(1),
	datab => \pc1|PC\(4),
	datac => \pc1|PC\(2),
	datad => \pc1|PC\(6),
	combout => \imem1|WideOr7~6_combout\);

-- Location: LCCOMB_X21_Y12_N24
\imem1|WideOr7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr7~8_combout\ = (\pc1|PC\(5) & (\pc1|PC\(0))) # (!\pc1|PC\(5) & ((\pc1|PC\(0) & ((!\imem1|WideOr7~6_combout\))) # (!\pc1|PC\(0) & (!\imem1|WideOr7~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(5),
	datab => \pc1|PC\(0),
	datac => \imem1|WideOr7~7_combout\,
	datad => \imem1|WideOr7~6_combout\,
	combout => \imem1|WideOr7~8_combout\);

-- Location: LCCOMB_X21_Y12_N4
\imem1|WideOr7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr7~10_combout\ = (\pc1|PC\(5) & ((\imem1|WideOr7~8_combout\ & ((!\imem1|WideOr7~9_combout\))) # (!\imem1|WideOr7~8_combout\ & (\imem1|WideOr7~5_combout\)))) # (!\pc1|PC\(5) & (((\imem1|WideOr7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(5),
	datab => \imem1|WideOr7~5_combout\,
	datac => \imem1|WideOr7~9_combout\,
	datad => \imem1|WideOr7~8_combout\,
	combout => \imem1|WideOr7~10_combout\);

-- Location: LCCOMB_X21_Y12_N30
\imem1|WideOr7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr7~11_combout\ = (\pc1|PC\(2) & (\pc1|PC\(1))) # (!\pc1|PC\(2) & (!\pc1|PC\(1) & \pc1|PC\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc1|PC\(2),
	datac => \pc1|PC\(1),
	datad => \pc1|PC\(6),
	combout => \imem1|WideOr7~11_combout\);

-- Location: LCCOMB_X22_Y12_N30
\imem1|WideOr7~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr7~15_combout\ = (\pc1|PC\(0) & (!\pc1|PC\(6) & (\pc1|PC\(2) $ (!\pc1|PC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(0),
	datab => \pc1|PC\(2),
	datac => \pc1|PC\(6),
	datad => \pc1|PC\(1),
	combout => \imem1|WideOr7~15_combout\);

-- Location: LCCOMB_X21_Y12_N8
\imem1|WideOr7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr7~12_combout\ = (\pc1|PC\(0) & ((\pc1|PC\(6) & ((!\pc1|PC\(2)))) # (!\pc1|PC\(6) & (\pc1|PC\(1))))) # (!\pc1|PC\(0) & ((\pc1|PC\(1) & ((\pc1|PC\(6)))) # (!\pc1|PC\(1) & (\pc1|PC\(2) & !\pc1|PC\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(1),
	datab => \pc1|PC\(2),
	datac => \pc1|PC\(0),
	datad => \pc1|PC\(6),
	combout => \imem1|WideOr7~12_combout\);

-- Location: LCCOMB_X22_Y12_N4
\imem1|WideOr7~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr7~13_combout\ = (\pc1|PC\(6) & ((\pc1|PC\(0)) # ((\pc1|PC\(2)) # (\pc1|PC\(1))))) # (!\pc1|PC\(6) & ((\pc1|PC\(0) & ((\pc1|PC\(2)) # (\pc1|PC\(1)))) # (!\pc1|PC\(0) & (\pc1|PC\(2) & \pc1|PC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(6),
	datab => \pc1|PC\(0),
	datac => \pc1|PC\(2),
	datad => \pc1|PC\(1),
	combout => \imem1|WideOr7~13_combout\);

-- Location: LCCOMB_X21_Y12_N10
\imem1|WideOr7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr7~14_combout\ = (\pc1|PC\(5) & ((\pc1|PC\(4)) # ((\imem1|WideOr7~12_combout\)))) # (!\pc1|PC\(5) & (!\pc1|PC\(4) & ((!\imem1|WideOr7~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(5),
	datab => \pc1|PC\(4),
	datac => \imem1|WideOr7~12_combout\,
	datad => \imem1|WideOr7~13_combout\,
	combout => \imem1|WideOr7~14_combout\);

-- Location: LCCOMB_X21_Y12_N12
\imem1|WideOr7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr7~16_combout\ = (\pc1|PC\(4) & ((\imem1|WideOr7~14_combout\ & ((\imem1|WideOr7~15_combout\))) # (!\imem1|WideOr7~14_combout\ & (\imem1|WideOr7~11_combout\)))) # (!\pc1|PC\(4) & (((\imem1|WideOr7~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr7~11_combout\,
	datab => \pc1|PC\(4),
	datac => \imem1|WideOr7~15_combout\,
	datad => \imem1|WideOr7~14_combout\,
	combout => \imem1|WideOr7~16_combout\);

-- Location: LCCOMB_X21_Y12_N2
\imem1|WideOr7~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr7~17_combout\ = (\pc1|PC\(3) & ((\pc1|PC\(7)) # ((\imem1|WideOr7~10_combout\)))) # (!\pc1|PC\(3) & (!\pc1|PC\(7) & ((\imem1|WideOr7~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|PC\(3),
	datab => \pc1|PC\(7),
	datac => \imem1|WideOr7~10_combout\,
	datad => \imem1|WideOr7~16_combout\,
	combout => \imem1|WideOr7~17_combout\);

-- Location: LCCOMB_X21_Y12_N28
\imem1|WideOr7~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \imem1|WideOr7~19_combout\ = (\pc1|PC\(7) & ((\imem1|WideOr7~17_combout\ & ((\imem1|WideOr7~18_combout\))) # (!\imem1|WideOr7~17_combout\ & (!\imem1|WideOr7~20_combout\)))) # (!\pc1|PC\(7) & (((\imem1|WideOr7~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr7~20_combout\,
	datab => \pc1|PC\(7),
	datac => \imem1|WideOr7~18_combout\,
	datad => \imem1|WideOr7~17_combout\,
	combout => \imem1|WideOr7~19_combout\);

-- Location: LCCOMB_X21_Y11_N24
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\imem1|WideOr7~19_combout\ & (!\imem1|WideOr4~11_combout\ & !\imem1|WideOr8~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr7~19_combout\,
	datab => \imem1|WideOr4~11_combout\,
	datad => \imem1|WideOr8~12_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X21_Y14_N0
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\imem1|WideOr3~11_combout\ & (\imem1|WideOr2~4_combout\ & (\imem1|WideOr1~8_combout\ & !\imem1|WideOr0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem1|WideOr3~11_combout\,
	datab => \imem1|WideOr2~4_combout\,
	datac => \imem1|WideOr1~8_combout\,
	datad => \imem1|WideOr0~15_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X21_Y11_N14
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~1_combout\ & (!\imem1|WideOr6~14_combout\ & (\Equal0~0_combout\ & !\imem1|WideOr5~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \imem1|WideOr6~14_combout\,
	datac => \Equal0~0_combout\,
	datad => \imem1|WideOr5~15_combout\,
	combout => \Equal0~2_combout\);

ww_done <= \done~output_o\;
END structure;


