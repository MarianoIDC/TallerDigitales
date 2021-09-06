transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+D:/Users/Mariano/Documentos/GitHub/TallerDigitales/Laboratorio3/Problema1 {D:/Users/Mariano/Documentos/GitHub/TallerDigitales/Laboratorio3/Problema1/sr.sv}
vlog -sv -work work +incdir+D:/Users/Mariano/Documentos/GitHub/TallerDigitales/Laboratorio3/Problema1 {D:/Users/Mariano/Documentos/GitHub/TallerDigitales/Laboratorio3/Problema1/XOR_Gate.sv}
vlog -sv -work work +incdir+D:/Users/Mariano/Documentos/GitHub/TallerDigitales/Laboratorio3/Problema1 {D:/Users/Mariano/Documentos/GitHub/TallerDigitales/Laboratorio3/Problema1/sl.sv}
vlog -sv -work work +incdir+D:/Users/Mariano/Documentos/GitHub/TallerDigitales/Laboratorio3/Problema1 {D:/Users/Mariano/Documentos/GitHub/TallerDigitales/Laboratorio3/Problema1/OR_Gate.sv}
vlog -sv -work work +incdir+D:/Users/Mariano/Documentos/GitHub/TallerDigitales/Laboratorio3/Problema1 {D:/Users/Mariano/Documentos/GitHub/TallerDigitales/Laboratorio3/Problema1/AND_Gate.sv}
vlog -sv -work work +incdir+D:/Users/Mariano/Documentos/GitHub/TallerDigitales/Laboratorio3/Problema1 {D:/Users/Mariano/Documentos/GitHub/TallerDigitales/Laboratorio3/Problema1/Suma.sv}
vlog -sv -work work +incdir+D:/Users/Mariano/Documentos/GitHub/TallerDigitales/Laboratorio3/Problema1 {D:/Users/Mariano/Documentos/GitHub/TallerDigitales/Laboratorio3/Problema1/Resta.sv}
vlog -sv -work work +incdir+D:/Users/Mariano/Documentos/GitHub/TallerDigitales/Laboratorio3/Problema1 {D:/Users/Mariano/Documentos/GitHub/TallerDigitales/Laboratorio3/Problema1/ALU.sv}
vlog -sv -work work +incdir+D:/Users/Mariano/Documentos/GitHub/TallerDigitales/Laboratorio3/Problema1 {D:/Users/Mariano/Documentos/GitHub/TallerDigitales/Laboratorio3/Problema1/adder1bit.sv}
vlog -sv -work work +incdir+D:/Users/Mariano/Documentos/GitHub/TallerDigitales/Laboratorio3/Problema1 {D:/Users/Mariano/Documentos/GitHub/TallerDigitales/Laboratorio3/Problema1/compA2.sv}
vlog -sv -work work +incdir+D:/Users/Mariano/Documentos/GitHub/TallerDigitales/Laboratorio3/Problema1 {D:/Users/Mariano/Documentos/GitHub/TallerDigitales/Laboratorio3/Problema1/muxN.sv}
vlog -sv -work work +incdir+D:/Users/Mariano/Documentos/GitHub/TallerDigitales/Laboratorio3/Problema1 {D:/Users/Mariano/Documentos/GitHub/TallerDigitales/Laboratorio3/Problema1/flagMux.sv}

vlog -sv -work work +incdir+D:/Users/Mariano/Documentos/GitHub/TallerDigitales/Laboratorio3/Problema1 {D:/Users/Mariano/Documentos/GitHub/TallerDigitales/Laboratorio3/Problema1/ALU_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  ALU_test

add wave *
view structure
view signals
run -all
