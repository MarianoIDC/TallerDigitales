			
			MOV		R0, #0X400 ; Para guardar en memoria los caracteres: Hello, World!
			MOV		R1, #0x500 ; Para guardar en memoria los datos descifrados
			MOV		R11, #2 ; Para asignar 1 a la xor, 2 a la not y 3 a sum2
			
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
			MOV		R2, #25 ;#44  ;   ,
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
			MOV		R2, R0
			MOV		R7, R1
			CMP		R11, #1
			BEQ		XORDES
			CMP		R11, #2
			BEQ		NOTDES
			CMP		R11, #3
			BEQ		SUM2DES
			
			;		Se estan usando R0, R1 y R2
			
			
XORDES
			LDR		R3, [R0], #4
			CMP		R3, #0xA    ; EOL
			BNE		XORDES_AUX
			END
			
			;		Se estan usando R0 y R3
			
XORDES_AUX
			MOV		R9, #53
			LDR		R4, [R1], #4 ; Carga de caracter encriptado
			LDR		R5, [R2], #4 
			EOR		R6, R9, R5
			STR		R6, [R7], #4
			B		XORDES
			
			;		Se estan usando R9,
			
			
NOTDES
			LDR		R3, [R0], #4
			CMP		R3, #0xA    ; EOL
			BNE		NOTDES_AUX
			END
			
			;		Se estan usando R0 y R3
			
NOTDES_AUX
			MOV		R9, #255
			LDR		R4, [R1], #4 ; Carga de caracter encriptado
			LDR		R5, [R2], #4 
			SUB		R6, R9, R5
			STR		R6, [R7], #4
			B		NOTDES
			;		Se estan usando R9,
			
			
SUM2DES
			LDR		R3, [R0], #4
			CMP		R3, #0xA    ; EOL
			BNE		SUM2DES_AUX
			END

			;		Se estan usando R0 y R3
			
SUM2DES_AUX
			LDR		R4, [R1], #4 ; Carga de caracter encriptado
			LDR		R5, [R2], #4 
			ADD		R6, R5, #2
			STR		R6, [R7], #4
			B		SUM2DES
			;		Se estan usando R9,
			
			
