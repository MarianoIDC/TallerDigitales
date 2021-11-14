.global _start

_start:
MOV R1, #0x0000
MOV R2, #0x0014
MOV R5, #0 //Contador de apariciones

_guardarLorem: 
// L
MOV R3, #76
STR R3, [R1], #4
// o
MOV R3, #111
STR R3, [R1], #4
// r
MOV R3, #114
STR R3, [R1], #4
// e
MOV R3, #101
STR R3, [R1], #4
// m
MOV R3, #109
STR R3, [R1], #4

MOV R1, #0x0000

_guardarTexto:
// Prueba
// Lorem ipsum lorem Lorem
MOV R4, #76
STR R4, [R2], #4
MOV R4, #108
STR R4, [R2], #4
MOV R4, #111
STR R4, [R2], #4
MOV R4, #114
STR R4, [R2], #4
MOV R4, #101
STR R4, [R2], #4
MOV R4, #109
STR R4, [R2], #4
//
MOV R4, #32
STR R4, [R2], #4
MOV R4, #105
STR R4, [R2], #4
MOV R4, #112
STR R4, [R2], #4
MOV R4, #115
STR R4, [R2], #4
MOV R4, #117
STR R4, [R2], #4
MOV R4, #109
STR R4, [R2], #4
//
MOV R4, #32
MOV R4, #108
STR R4, [R2], #4
MOV R4, #108
STR R4, [R2], #4
MOV R4, #111
STR R4, [R2], #4
MOV R4, #114
STR R4, [R2], #4
MOV R4, #101
STR R4, [R2], #4
MOV R4, #109
STR R4, [R2], #4
//
MOV R4, #32
MOV R4, #76
STR R4, [R2], #4
MOV R4, #108
STR R4, [R2], #4
MOV R4, #111
STR R4, [R2], #4
MOV R4, #114
STR R4, [R2], #4
MOV R4, #101
STR R4, [R2], #4
MOV R4, #109
STR R4, [R2], #4
//
MOV R4, #1
STR R4, [R2], #4
MOV R2, #0x0014

_resetLorem:
MOV R1, #0x0000

_cargaPalabra:
LDR R3, [R1], #4
LDR R4, [R2], #4

_comparaPalabra:
CMP R4, #1
BEQ _exit
CMP R3, R4
BNE _resetLorem
CMP R3, #114
BNE _cargaPalabra
ADD R5, R5, #1
B _resetLorem

_exit:
	.END