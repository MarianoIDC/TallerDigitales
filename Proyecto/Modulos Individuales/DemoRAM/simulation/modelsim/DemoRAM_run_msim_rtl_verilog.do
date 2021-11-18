transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Desktop/Taller/Demos/DemoRAM {C:/Users/Usuario/Desktop/Taller/Demos/DemoRAM/ram.v}
vlog -sv -work work +incdir+C:/Users/Usuario/Desktop/Taller/Demos/DemoRAM {C:/Users/Usuario/Desktop/Taller/Demos/DemoRAM/Counter.sv}
vlog -sv -work work +incdir+C:/Users/Usuario/Desktop/Taller/Demos/DemoRAM {C:/Users/Usuario/Desktop/Taller/Demos/DemoRAM/ram_tb.sv}

