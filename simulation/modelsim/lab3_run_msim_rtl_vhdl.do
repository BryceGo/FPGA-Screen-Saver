transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/bgolamco/Desktop/lab3/VGA_Core_Files {C:/Users/bgolamco/Desktop/lab3/VGA_Core_Files/vga_pll.v}
vlog -vlog01compat -work work +incdir+C:/Users/bgolamco/Desktop/lab3/VGA_Core_Files {C:/Users/bgolamco/Desktop/lab3/VGA_Core_Files/vga_controller.v}
vlog -vlog01compat -work work +incdir+C:/Users/bgolamco/Desktop/lab3/VGA_Core_Files {C:/Users/bgolamco/Desktop/lab3/VGA_Core_Files/vga_address_translator.v}
vlog -vlog01compat -work work +incdir+C:/Users/bgolamco/Desktop/lab3/VGA_Core_Files {C:/Users/bgolamco/Desktop/lab3/VGA_Core_Files/vga_adapter.v}
vcom -93 -work work {C:/Users/bgolamco/Desktop/lab3/lab3.vhd}
vcom -93 -work work {C:/Users/bgolamco/Desktop/lab3/bline.vhd}

