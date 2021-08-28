transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+D:/Users/Mariano/Documentos/GitHub/taller_logico-laboratorio_3/alu {D:/Users/Mariano/Documentos/GitHub/taller_logico-laboratorio_3/alu/xorGate.sv}
vlog -sv -work work +incdir+D:/Users/Mariano/Documentos/GitHub/taller_logico-laboratorio_3/alu {D:/Users/Mariano/Documentos/GitHub/taller_logico-laboratorio_3/alu/srl.sv}
vlog -sv -work work +incdir+D:/Users/Mariano/Documentos/GitHub/taller_logico-laboratorio_3/alu {D:/Users/Mariano/Documentos/GitHub/taller_logico-laboratorio_3/alu/sll.sv}
vlog -sv -work work +incdir+D:/Users/Mariano/Documentos/GitHub/taller_logico-laboratorio_3/alu {D:/Users/Mariano/Documentos/GitHub/taller_logico-laboratorio_3/alu/multiplicacion.sv}
vlog -sv -work work +incdir+D:/Users/Mariano/Documentos/GitHub/taller_logico-laboratorio_3/alu {D:/Users/Mariano/Documentos/GitHub/taller_logico-laboratorio_3/alu/modulo.sv}
vlog -sv -work work +incdir+D:/Users/Mariano/Documentos/GitHub/taller_logico-laboratorio_3/alu {D:/Users/Mariano/Documentos/GitHub/taller_logico-laboratorio_3/alu/andN.sv}
vlog -sv -work work +incdir+D:/Users/Mariano/Documentos/GitHub/taller_logico-laboratorio_3/alu {D:/Users/Mariano/Documentos/GitHub/taller_logico-laboratorio_3/alu/division.sv}
vlog -sv -work work +incdir+D:/Users/Mariano/Documentos/GitHub/taller_logico-laboratorio_3/alu {D:/Users/Mariano/Documentos/GitHub/taller_logico-laboratorio_3/alu/adder1bit.sv}
vlog -sv -work work +incdir+D:/Users/Mariano/Documentos/GitHub/taller_logico-laboratorio_3/alu {D:/Users/Mariano/Documentos/GitHub/taller_logico-laboratorio_3/alu/adder4bits.sv}
vlog -sv -work work +incdir+D:/Users/Mariano/Documentos/GitHub/taller_logico-laboratorio_3/alu {D:/Users/Mariano/Documentos/GitHub/taller_logico-laboratorio_3/alu/muxN.sv}
vlog -sv -work work +incdir+D:/Users/Mariano/Documentos/GitHub/taller_logico-laboratorio_3/alu {D:/Users/Mariano/Documentos/GitHub/taller_logico-laboratorio_3/alu/orN.sv}
vlog -sv -work work +incdir+D:/Users/Mariano/Documentos/GitHub/taller_logico-laboratorio_3/alu {D:/Users/Mariano/Documentos/GitHub/taller_logico-laboratorio_3/alu/sub4bits.sv}
vlog -sv -work work +incdir+D:/Users/Mariano/Documentos/GitHub/taller_logico-laboratorio_3/alu {D:/Users/Mariano/Documentos/GitHub/taller_logico-laboratorio_3/alu/alu.sv}
vlog -sv -work work +incdir+D:/Users/Mariano/Documentos/GitHub/taller_logico-laboratorio_3/alu {D:/Users/Mariano/Documentos/GitHub/taller_logico-laboratorio_3/alu/compA2.sv}
vlog -sv -work work +incdir+D:/Users/Mariano/Documentos/GitHub/taller_logico-laboratorio_3/alu {D:/Users/Mariano/Documentos/GitHub/taller_logico-laboratorio_3/alu/flagGenerator.sv}

vlog -sv -work work +incdir+D:/Users/Mariano/Documentos/GitHub/taller_logico-laboratorio_3/alu {D:/Users/Mariano/Documentos/GitHub/taller_logico-laboratorio_3/alu/aluTest.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  test

add wave *
view structure
view signals
run -all
