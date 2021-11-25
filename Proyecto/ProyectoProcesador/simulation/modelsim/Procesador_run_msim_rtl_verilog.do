transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/GitHub/TallerDigitales/Proyecto/ProyectoProcesador {C:/Users/Usuario/Documents/GitHub/TallerDigitales/Proyecto/ProyectoProcesador/InstructionMemory.v}
vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/GitHub/TallerDigitales/Proyecto/ProyectoProcesador {C:/Users/Usuario/Documents/GitHub/TallerDigitales/Proyecto/ProyectoProcesador/DataMemory.v}
vlog -sv -work work +incdir+C:/Users/Usuario/Documents/GitHub/TallerDigitales/Proyecto/ProyectoProcesador {C:/Users/Usuario/Documents/GitHub/TallerDigitales/Proyecto/ProyectoProcesador/Mux2to1.sv}
vlog -sv -work work +incdir+C:/Users/Usuario/Documents/GitHub/TallerDigitales/Proyecto/ProyectoProcesador {C:/Users/Usuario/Documents/GitHub/TallerDigitales/Proyecto/ProyectoProcesador/Procesador.sv}
vlog -sv -work work +incdir+C:/Users/Usuario/Documents/GitHub/TallerDigitales/Proyecto/ProyectoProcesador {C:/Users/Usuario/Documents/GitHub/TallerDigitales/Proyecto/ProyectoProcesador/PC.sv}
vlog -sv -work work +incdir+C:/Users/Usuario/Documents/GitHub/TallerDigitales/Proyecto/ProyectoProcesador {C:/Users/Usuario/Documents/GitHub/TallerDigitales/Proyecto/ProyectoProcesador/InstructionDeco.sv}
vlog -sv -work work +incdir+C:/Users/Usuario/Documents/GitHub/TallerDigitales/Proyecto/ProyectoProcesador {C:/Users/Usuario/Documents/GitHub/TallerDigitales/Proyecto/ProyectoProcesador/RegisterFile.sv}

vlog -sv -work work +incdir+C:/Users/Usuario/Documents/GitHub/TallerDigitales/Proyecto/ProyectoProcesador {C:/Users/Usuario/Documents/GitHub/TallerDigitales/Proyecto/ProyectoProcesador/Procesador_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  test Procesador

add wave *
view structure
view signals
run -all
