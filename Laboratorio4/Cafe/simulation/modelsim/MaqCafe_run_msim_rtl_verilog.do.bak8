transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/louis/Desktop/Cafe {C:/Users/louis/Desktop/Cafe/selector_bebida.sv}
vlog -sv -work work +incdir+C:/Users/louis/Desktop/Cafe {C:/Users/louis/Desktop/Cafe/principal.sv}
vlog -sv -work work +incdir+C:/Users/louis/Desktop/Cafe {C:/Users/louis/Desktop/Cafe/disp_cafe.sv}
vlog -sv -work work +incdir+C:/Users/louis/Desktop/Cafe {C:/Users/louis/Desktop/Cafe/disp_agua.sv}
vlog -sv -work work +incdir+C:/Users/louis/Desktop/Cafe {C:/Users/louis/Desktop/Cafe/disp_leche.sv}
vlog -sv -work work +incdir+C:/Users/louis/Desktop/Cafe {C:/Users/louis/Desktop/Cafe/disp_chocolate.sv}
vlog -sv -work work +incdir+C:/Users/louis/Desktop/Cafe {C:/Users/louis/Desktop/Cafe/disp_azucar.sv}

vlog -sv -work work +incdir+C:/Users/louis/Desktop/Cafe {C:/Users/louis/Desktop/Cafe/cafe_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  prueba

add wave *
view structure
view signals
run -all
