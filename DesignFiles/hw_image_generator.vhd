--------------------------------------------------------------------------------
--
--   FileName:         hw_image_generator.vhd
--   Dependencies:     none
--   Design Software:  Quartus II 64-bit Version 12.1 Build 177 SJ Full Version
--
--   HDL CODE IS PROVIDED "AS IS."  DIGI-KEY EXPRESSLY DISCLAIMS ANY
--   WARRANTY OF ANY KIND, WHETHER EXPRESS OR IMPLIED, INCLUDING BUT NOT
--   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
--   PARTICULAR PURPOSE, OR NON-INFRINGEMENT. IN NO EVENT SHALL DIGI-KEY
--   BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR CONSEQUENTIAL
--   DAMAGES, LOST PROFITS OR LOST DATA, HARM TO YOUR EQUIPMENT, COST OF
--   PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS
--   BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
--   ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER SIMILAR COSTS.
--
--   Version History
--   Version 1.0 05/10/2013 Scott Larson
--     Initial Public Release
--    
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.ALL;


ENTITY hw_image_generator IS
  --GENERIC(
    --pixels_y :  INTEGER := 478;   --row that first color will persist until
    --pixels_x :  INTEGER := 600);  --column that first color will persist until
  PORT(
    disp_ena :  IN   STD_LOGIC;  --display enable ('1' = display time, '0' = blanking time)
    row      :  IN   INTEGER;    --row pixel coordinate
    column   :  IN   INTEGER;    --column pixel coordinate
    red      :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');  --red magnitude output to DAC
    green    :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');  --green magnitude output to DAC
    blue     :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0')); --blue magnitude output to DAC
END hw_image_generator;

ARCHITECTURE behavior OF hw_image_generator IS
    --SIGNAL old_red      :  STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');  --old red magnitude
    --SIGNAL old_green    :  STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');  --old green magnitude
    --SIGNAL old_blue     :  STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0'); --old blue magnitude

BEGIN
  PROCESS(disp_ena, row, column)
  BEGIN
    IF(disp_ena = '1') THEN        --display time

	 
	 
	 --red<=conv_std_logic_vector(row, 8);
	 --blue<=conv_std_logic_vector(column, 8);
	 --green<=conv_std_logic_vector(row+column, 8);
	 
	 --Test der Farbpalette:
	 --600/16 = 37
	 
	--CGA	EGA	VGA(???)		R		G		B			Web			Example
	--0x0	0x0	0,0,0			0,		0,		0			#000000		black
	--0x1	0x1	0,0,42		0,		0,		170		#0000aa		blue
	--0x2	0x2	00,42,00		0,		170,	0			#00aa00		green
	--0x3	0x3	00,42,42		0,		170,	170		#00aaaa		cyan
	--0x4	0x4	42,00,00		170,	0,		0			#aa0000		red
	--0x5	0x5	42,00,42		170,	0,		170		#aa00aa		magenta
	--0x6	0x14	42,21,00		170,	85,	0			#aa5500		brown
	--0x7	0x7	42,42,42		170,	170,	170		#aaaaaa		gray
	--0x8	0x38	21,21,21		85,	85,	85			#555555		dark gray
	--0x9	0x39	21,21,63		85,	85,	255		#5555ff		bright blue
	--0xA	0x3A	21,63,21		85,	255,	85			#55ff55		bright green
	--0xB	0x3B	21,63,63		85,	255,	255		#55ffff		bright cyan
	--0xC	0x3C	63,21,21		255,	85,	85			#ff5555		bright red
	--0xD	0X3D	63,21,63		255,	85,	255		#ff55ff		bright magenta
	--0xE	0x3E	63,63,21		255,	255,	85			#ffff55		yellow
	--0xF	0x3F	63,63,63		255,	255,	255		#ffffff		white
	 
		 IF ( row <  37) THEN
				red<=		std_logic_vector(to_unsigned(0,	8));
				green<=	std_logic_vector(to_unsigned(0,	8));
				blue<=	std_logic_vector(to_unsigned(0,	8));
		 ELSIF(row < 74)THEN
		 		red<=		std_logic_vector(to_unsigned(0,	8));
				green<=	std_logic_vector(to_unsigned(0,	8));
				blue<=	std_logic_vector(to_unsigned(170,8));
		 ELSIF(row < 111)THEN
		 		red<=		std_logic_vector(to_unsigned(0,	8));
				green<=	std_logic_vector(to_unsigned(170,8));
				blue<=	std_logic_vector(to_unsigned(0,	8));
		 ELSIF(row < 148)THEN
		 		red<=		std_logic_vector(to_unsigned(0,	8));
				green<=	std_logic_vector(to_unsigned(170,8));
				blue<=	std_logic_vector(to_unsigned(170,8));
		 ELSIF(row < 185)THEN
		 		red<=		std_logic_vector(to_unsigned(170,8));
				green<=	std_logic_vector(to_unsigned(0,	8));
				blue<=	std_logic_vector(to_unsigned(0,	8));
		 ELSIF(row < 222)THEN
		 		red<=		std_logic_vector(to_unsigned(170,8));
				green<=	std_logic_vector(to_unsigned(0,	8));
				blue<=	std_logic_vector(to_unsigned(170,8));
		 ELSIF(row < 259)THEN
		 		red<=		std_logic_vector(to_unsigned(170,8));
				green<=	std_logic_vector(to_unsigned(85,	8));
				blue<=	std_logic_vector(to_unsigned(0,	8));
		 ELSIF(row < 296)THEN
		 		red<=		std_logic_vector(to_unsigned(170,8));
				green<=	std_logic_vector(to_unsigned(170,8));
				blue<=	std_logic_vector(to_unsigned(170,8));
		 ELSIF(row < 333)THEN
		 		red<=		std_logic_vector(to_unsigned(85,	8));
				green<=	std_logic_vector(to_unsigned(85,	8));
				blue<=	std_logic_vector(to_unsigned(85, 8));
		 ELSIF(row < 370)THEN
		 		red<=		std_logic_vector(to_unsigned(85,	8));
				green<=	std_logic_vector(to_unsigned(85,	8));
				blue<=	std_logic_vector(to_unsigned(255,8));
		 ELSIF(row < 407)THEN
		 		red<=		std_logic_vector(to_unsigned(85,	8));
				green<=	std_logic_vector(to_unsigned(255,8));
				blue<=	std_logic_vector(to_unsigned(85, 8));
		 ELSIF(row < 444)THEN
		 		red<=		std_logic_vector(to_unsigned(85,	8));
				green<=	std_logic_vector(to_unsigned(255,8));
				blue<=	std_logic_vector(to_unsigned(255,8));
		 ELSIF(row < 481)THEN
		 		red<=		std_logic_vector(to_unsigned(255,8));
				green<=	std_logic_vector(to_unsigned(85,	8));
				blue<=	std_logic_vector(to_unsigned(85, 8));
		 ELSIF(row < 518)THEN
		 		red<=		std_logic_vector(to_unsigned(255,8));
				green<=	std_logic_vector(to_unsigned(85,	8));
				blue<=	std_logic_vector(to_unsigned(255,8));
		 ELSIF(row < 555)THEN
		 		red<=		std_logic_vector(to_unsigned(255,8));
				green<=	std_logic_vector(to_unsigned(255,8));
				blue<=	std_logic_vector(to_unsigned(85 ,8));
		 ELSE
		 		red<=		std_logic_vector(to_unsigned(255,8));
				green<=	std_logic_vector(to_unsigned(255,8));
				blue<=	std_logic_vector(to_unsigned(255,8));

		 END IF;
		 
	 

    END IF;
  
  END PROCESS;
END behavior;
