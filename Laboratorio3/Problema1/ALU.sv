/*

    Operaciones:
        Aritmeticas:
            ...Suma
            ...Resta
        Logicas:
            ...AND
            ...OR
            ...XOR
            ...Shift_Left
            ...Shift_Rigth

*/

module ALU #(parameter P = 4)(A, B, OP, Result, N, Z, C, V);

//Variables de Entrada
input logic [P-1:0] A, B;
input logic [2:0] OP;
output logic [P-1:0] Result;

output logic Z, N, C, V;
logic C_out, Sign;

wire [P-1:0] OP_1, OP_2, OP_3, OP_4, OP_5, OP_6, OP_7;

//operaciones aritmeticas
Suma suma (A, B, OP_1, C_out);			//OP1
//Resta resta(A, B, OP_2, Sign); 			//OP2

//operaciones logicas
AND_Gate #(P) and_gate (A, B, OP_3);	//OP3
OR_Gate #(P) or_gate (A, B, OP_4);		//OP4
XOR_Gate #(P) xor_gate (A, B, OP_5);	//OP5
sl #(P) sl_mod (A, B, OP_6);				//OP6
sr #(P) sr_mod (A, B, OP_7);				//OP7

//Mux Selector
//Mux mux_sel (OP_1, OP_2, OP_3, OP_4, OP_5, OP_6, OP_7, OP, Result);




    
endmodule