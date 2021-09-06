//Complemento A2 dado un número de 4 bits
//A es la entrada de 4 bits
//S es el resultado
module  compA2 #(parameter P=4)(A,  S);
	input logic[P-1:0] A;
	output logic [P-1:0] S;
	
	wire Co;
	
	Suma #(P) sum0 (~A,4'b0001,S,Co);
endmodule
