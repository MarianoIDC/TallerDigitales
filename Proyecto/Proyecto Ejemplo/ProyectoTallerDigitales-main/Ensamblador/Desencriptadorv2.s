			MOV		R0, #0X000 ; Para guardar en memoria los cracteres: Hello World
			MOV		R1, #0X500 ; Para guardar en memoria los datos descifrados
			MOV		R8, #0X600
			
			MOV		R11, #1 ; Para asignar 1 a la xor, 2 a la not y 3 a sum2
			MOV		R2,  #125 ;#72 ;   H
			STR		R2, [R0], #4
			MOV		R2, #80 ;#101 ;   e
			STR		R2, [R0], #4
			MOV		R2, #89 ;#108 ;   l
			STR		R2, [R0], #4
			MOV		R2, #89 ;#108 ;   l
			STR		R2, [R0], #4
			MOV		R2, #90 ;#111 ;   o
			STR		R2, [R0], #4
			MOV		R2, #21 ;#32  ;   "espacio en blanco"
			STR		R2, [R0], #4
			MOV		R2, #98 ;#87  ;   W
			STR		R2, [R0], #4
			MOV		R2, #90 ;#111  ;  o
			STR		R2, [R0], #4
			MOV		R2, #71 ;#114  ;  r
			STR		R2, [R0], #4
			MOV		R2, #89 ;#108  ;  l
			STR		R2, [R0], #4
			MOV		R2, #81 ;#100  ;  d
			STR		R2, [R0], #4
			MOV		R2, #0x0a  ;  EOL
			STR		R2, [R0], #4
			MOV		R0, #0x400
			MOV		R7, R1
			B		LEER
			;CMP		R11, #1
			;BEQ		XORDES
			;CMP		R11, #2
			;BEQ		NOTDES
			;CMP		R11, #3
			;BEQ		SUM2DES
			;		Se estan usando R0, R1 y R2
			
LEER
			
			;PARA	EFECTOS DEL PROYECTO SE DEBE INICIALIZAR UN REGISTRO EN EN INICION DE LA MEMORIA
			;MOV		R0, 0x000
			LDR		R12, [R0], #4
			;STR		R12, [R8], #4
			CMP		R12, #0XA
			BNE		LEER
			MOV		R12, #0X600
			MOV		R2, R12
			CMP		R11, #1
			BEQ		XORDES
			CMP		R11, #2
			BEQ		NOTDES
			CMP		R11, #3
			BEQ		SUM2DES
			;		Se estan usando R0, R1 y R2
			
			
			
XORDES
			LDR		R3, [R12], #4
			CMP		R3, #0xA    ; EOL
			BNE		XORDES_AUX
			B		finalizar
			;		Se estan usando R0 y R3
			
XORDES_AUX
			MOV		R9, #53 ; Dato con el que se le aplica xor
			LDR		R4, [R1], #4 ; Carga de caracter encriptado
			LDR		R5, [R2], #4
			EOR		R6, R9, R5
			STR		R6, [R1], #4
			B		XORDES
			;		Se estan usando R9,
			
			
NOTDES
			LDR		R3, [R12], #4
			CMP		R3, #0xA    ; EOL
			BNE		NOTDES_AUX
			B		finalizar
			;		Se estan usando R0 y R3
			
NOTDES_AUX
			MOV		R9, #255
			LDR		R4, [R1], #4 ; Carga de caracter encriptado
			LDR		R5, [R2], #4
			SUB		R6, R9, R5
			STR		R6, [R1], #4
			B		NOTDES
			;		Se estan usando R9,
			
			
SUM2DES
			LDR		R3, [R12], #4
			CMP		R3, #0xA    ; EOL
			BNE		SUM2DES_AUX
			B		finalizar
			;		Se estan usando R0 y R3
			
SUM2DES_AUX
			LDR		R4, [R1], #4 ; Carga de caracter encriptado
			LDR		R5, [R2], #4
			ADD		R6, R5, #2
			STR		R6, [R1], #4
			B		SUM2DES
			;		Se estan usando R9,
			
			
finalizar
			END
