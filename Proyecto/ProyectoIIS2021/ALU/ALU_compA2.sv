//Complemento A2 dado un número de 4 bits
//A es la entrada de 4 bits
//S es el resultado
module  ALU_compA2 #(parameter P=32)(A,  S);
	input logic[P-1:0] A;
	output logic [P-1:0] S;
	
	wire Co;
	
	ALU_Suma #(P) sum0 (~A, 32'b0000000000000000000000000000001, S, Co);
endmodule 