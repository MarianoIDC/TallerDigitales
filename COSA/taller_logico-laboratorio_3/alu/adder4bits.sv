// SUMADOR DE 4 BITS
//A: Sumando1 de 4 bits
//B: Sumando2 de 4 bits
//S: Resultado de la suma
//Donde el bit más significativo es el bit de acarreo es decir S[4] 
module  adder4bits (input logic[3:0] A,input logic[3:0] B, output logic[3:0] S, output logic Co);
	wire [4:1] C;
	adder1bit Bit0(A[0],B[0],1'b0,C[1],S[0]);
	adder1bit Bit1(A[1],B[1],C[1],C[2],S[1]);
	adder1bit Bit2(A[2],B[2],C[2],C[3],S[2]);	
	adder1bit Bit3(A[3],B[3],C[3],Co,S[3]);
endmodule	