module ALU #(parameter P = 32)(A, B, OP, Result, ALUFlags);

//Variables de Entrada
input logic [P-1:0] A, B;
input logic [2:0] OP;
output logic [P-1:0] Result;

//logic Z = 0, N = 0, C = 0, V = 0;
				//led0	led1	led2		led3
output logic [3:0] ALUFlags;
				
logic C_out, Sign;

wire [P-1:0] OP_1, OP_2, OP_3, OP_4, OP_5, OP_6, OP_7;

//operaciones aritmeticas
ALU_Suma suma (A, B, OP_1, C_out);			//OP1
ALU_Resta resta(A, B, OP_2, Sign); 			//OP2

//operaciones logicas
ALU_AND #(P) and_gate (A, B, OP_3);	//OP3
ALU_OR #(P) or_gate (A, B, OP_4);	//OP4
ALU_XOR #(P) xor_gate (A, B, OP_5);	//OP5
ALU_sl #(P) sl_mod (A, B, OP_6);		//OP6
ALU_sr #(P) sr_mod (A, B, OP_7);		//OP7

//Mux Selector
ALU_muxN mux_sel (OP_1, OP_2, OP_3, OP_4, OP_5, OP_6, OP_7, OP, Result);

ALU_flagMux #(P) flag_generator_mod (Result, OP, C_out,Sign, ALUFlags[3], ALUFlags[2], ALUFlags[1], ALUFlags[0]);
    
endmodule 