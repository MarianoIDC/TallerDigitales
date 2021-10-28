//Complemento A2 dado un número de 4 bits
//A es la entrada de 4 bits
//S es el resultado
module  compA2 (A,  S);
	input logic[3:0] A;
	//logic [3:0] B=4'b0001;
	wire Co;
	output logic [3:0] S;
	adder4bits Bit0(~A,4'b0001,S,Co);
endmodule
