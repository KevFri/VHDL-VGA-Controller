transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {C:/Users/Kevin/Dropbox/Studium/ET6/Schaltkreisentwurf/VGA_Controller/DesignFiles/vga_controller.vhd}

