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
    SIGNAL old_red      :  STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');  --old red magnitude
    SIGNAL old_green    :  STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');  --old green magnitude
    SIGNAL old_blue     :  STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0'); --old blue magnitude

BEGIN
  PROCESS(disp_ena, row, column)
  BEGIN
    IF(disp_ena = '1') THEN        --display time
		old_red<=red;
		old_green<=green;
		old_blue<=blue;
		
		red <= old_red+1;
		
      IF (old_red = "11111111") THEN
        green <= old_green+1;
      END IF;
		
		IF (old_green = "11111111") THEN
        blue <= old_blue+1;
      END IF;

    END IF;
  
  END PROCESS;
END behavior;
