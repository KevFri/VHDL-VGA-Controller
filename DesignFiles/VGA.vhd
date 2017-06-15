LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY VGA IS
  PORT(
			pixel_clk :  IN   STD_LOGIC;  --pixel clock at frequency of VGA mode being used
			reset_n   :  IN   STD_LOGIC;  --active low asycnchronous reset
			red       :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');  --red magnitude output to DAC
			green     :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');  --green magnitude output to DAC
			blue      :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0'); --blue magnitude output to DAC
			h_sync    :  OUT  STD_LOGIC;  --horiztonal sync pulse
			v_sync    :  OUT  STD_LOGIC;  --vertical sync pulse
			vga_clk :  OUT   STD_LOGIC  --pixel clock at frequency of VGA mode being used		
		);
END VGA;

ARCHITECTURE behavior OF VGA IS
			SIGNAL	disp_ena  :  STD_LOGIC;  --display enable ('1' = display time, '0' = blanking time)
			SIGNAL	column    :  INTEGER;    --horizontal pixel coordinate
			SIGNAL	row       :  INTEGER;    --vertical pixel coordinate

BEGIN

VGA_Controller: work.vga_controller port map (pixel_clk, reset_n,h_sync,v_sync,disp_ena,column,row,open,open);

ImageGenerator: work.hw_image_generator port map (disp_ena,row,column,red,green,blue);

vga_clk<=pixel_clk;


END behavior;