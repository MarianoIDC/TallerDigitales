transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Github/TallerDigitales/Proyecto/ProyectoProcesador {C:/Github/TallerDigitales/Proyecto/ProyectoProcesador/InstructionMemory.v}
vlog -vlog01compat -work work +incdir+C:/Github/TallerDigitales/Proyecto/ProyectoProcesador {C:/Github/TallerDigitales/Proyecto/ProyectoProcesador/DataMemory.v}
vlog -sv -work work +incdir+C:/Github/TallerDigitales/Proyecto/ProyectoProcesador {C:/Github/TallerDigitales/Proyecto/ProyectoProcesador/SignExt.sv}
vlog -sv -work work +incdir+C:/Github/TallerDigitales/Proyecto/ProyectoProcesador {C:/Github/TallerDigitales/Proyecto/ProyectoProcesador/ALU_XOR.sv}
vlog -sv -work work +incdir+C:/Github/TallerDigitales/Proyecto/ProyectoProcesador {C:/Github/TallerDigitales/Proyecto/ProyectoProcesador/ALU_Suma.sv}
vlog -sv -work work +incdir+C:/Github/TallerDigitales/Proyecto/ProyectoProcesador {C:/Github/TallerDigitales/Proyecto/ProyectoProcesador/ALU_sr.sv}
vlog -sv -work work +incdir+C:/Github/TallerDigitales/Proyecto/ProyectoProcesador {C:/Github/TallerDigitales/Proyecto/ProyectoProcesador/ALU_sl.sv}
vlog -sv -work work +incdir+C:/Github/TallerDigitales/Proyecto/ProyectoProcesador {C:/Github/TallerDigitales/Proyecto/ProyectoProcesador/ALU_Resta.sv}
vlog -sv -work work +incdir+C:/Github/TallerDigitales/Proyecto/ProyectoProcesador {C:/Github/TallerDigitales/Proyecto/ProyectoProcesador/ALU_OR.sv}
vlog -sv -work work +incdir+C:/Github/TallerDigitales/Proyecto/ProyectoProcesador {C:/Github/TallerDigitales/Proyecto/ProyectoProcesador/ALU_muxN.sv}
vlog -sv -work work +incdir+C:/Github/TallerDigitales/Proyecto/ProyectoProcesador {C:/Github/TallerDigitales/Proyecto/ProyectoProcesador/ALU_flagMux.sv}
vlog -sv -work work +incdir+C:/Github/TallerDigitales/Proyecto/ProyectoProcesador {C:/Github/TallerDigitales/Proyecto/ProyectoProcesador/ALU_compA2.sv}
vlog -sv -work work +incdir+C:/Github/TallerDigitales/Proyecto/ProyectoProcesador {C:/Github/TallerDigitales/Proyecto/ProyectoProcesador/ALU_AND.sv}
vlog -sv -work work +incdir+C:/Github/TallerDigitales/Proyecto/ProyectoProcesador {C:/Github/TallerDigitales/Proyecto/ProyectoProcesador/ALU_adder1bit.sv}
vlog -sv -work work +incdir+C:/Github/TallerDigitales/Proyecto/ProyectoProcesador {C:/Github/TallerDigitales/Proyecto/ProyectoProcesador/ALU.sv}
vlog -sv -work work +incdir+C:/Github/TallerDigitales/Proyecto/ProyectoProcesador {C:/Github/TallerDigitales/Proyecto/ProyectoProcesador/Mux2to1.sv}
vlog -sv -work work +incdir+C:/Github/TallerDigitales/Proyecto/ProyectoProcesador {C:/Github/TallerDigitales/Proyecto/ProyectoProcesador/Procesador.sv}
vlog -sv -work work +incdir+C:/Github/TallerDigitales/Proyecto/ProyectoProcesador {C:/Github/TallerDigitales/Proyecto/ProyectoProcesador/PC.sv}
vlog -sv -work work +incdir+C:/Github/TallerDigitales/Proyecto/ProyectoProcesador {C:/Github/TallerDigitales/Proyecto/ProyectoProcesador/InstructionDeco.sv}
vlog -sv -work work +incdir+C:/Github/TallerDigitales/Proyecto/ProyectoProcesador {C:/Github/TallerDigitales/Proyecto/ProyectoProcesador/RegisterFile.sv}
vlog -sv -work work +incdir+C:/Github/TallerDigitales/Proyecto/ProyectoProcesador {C:/Github/TallerDigitales/Proyecto/ProyectoProcesador/ControlUnit.sv}
vlog -sv -work work +incdir+C:/Github/TallerDigitales/Proyecto/ProyectoProcesador {C:/Github/TallerDigitales/Proyecto/ProyectoProcesador/CU_MainDecoder.sv}
vlog -sv -work work +incdir+C:/Github/TallerDigitales/Proyecto/ProyectoProcesador {C:/Github/TallerDigitales/Proyecto/ProyectoProcesador/CU_ALUDecoder.sv}
vlog -sv -work work +incdir+C:/Github/TallerDigitales/Proyecto/ProyectoProcesador {C:/Github/TallerDigitales/Proyecto/ProyectoProcesador/CU_PCLogic.sv}
vlog -sv -work work +incdir+C:/Github/TallerDigitales/Proyecto/ProyectoProcesador {C:/Github/TallerDigitales/Proyecto/ProyectoProcesador/CU_ConditionCheck.sv}
vlog -sv -work work +incdir+C:/Github/TallerDigitales/Proyecto/ProyectoProcesador {C:/Github/TallerDigitales/Proyecto/ProyectoProcesador/CU_AND.sv}

vlog -sv -work work +incdir+C:/Github/TallerDigitales/Proyecto/ProyectoProcesador {C:/Github/TallerDigitales/Proyecto/ProyectoProcesador/Procesador_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  test Procesador

add wave *
view structure
view signals
run -all
