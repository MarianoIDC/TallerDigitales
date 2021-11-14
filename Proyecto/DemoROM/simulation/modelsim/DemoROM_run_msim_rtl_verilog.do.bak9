transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Desktop/Taller/Demos/DemoROM {C:/Users/Usuario/Desktop/Taller/Demos/DemoROM/rom.v}
vlog -sv -work work +incdir+C:/Users/Usuario/Desktop/Taller/Demos/DemoROM {C:/Users/Usuario/Desktop/Taller/Demos/DemoROM/rom_tb.sv}
vlog -sv -work work +incdir+C:/Users/Usuario/Desktop/Taller/Demos/DemoROM {C:/Users/Usuario/Desktop/Taller/Demos/DemoROM/Comparador.sv}

