
//Entradas lógicas A y B de N bits
//Entrada de selección de operación S de 4 Bits
//Salida Resultado de operaciones Q
// Saida de FLAGS N Z V
module alu #(parameter N = 4)(A, B,S, Q, Ne,Z,V,C);
	input logic[N-1:0] A, B;
	input logic[3:0] S;
	output logic[N-1:0] Q;
	output logic Z,V,C,Ne;
	wire [N-1:0] I0,I1,I2,I3,I4,I5,I6,I7,I8,I9;//, R;
	logic Co,Sign, MultV;
	//reg Q;
	//Operadores
	adder4bits sumador(A,B,I0,Co);
	sub4bits restador(A,B,I1,Sign);
	multiplicacion #(N) mult(A,B,I2,MultV);
	division #(N) div(A,B,I3);
	modulo #(N) residuo(A,B,I4);
	andN #(N) andGate(A,B,I5);
	orN #(N) orGate(A,B,I6);
	xorGate #(N) xorG(A,B,I7);
	sll #(N) sll_module(A,B,I8);
	srl #(N) srl_module(A,B,I9);
	muxN #(N) muxGate(I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,S,Q);
	//FLAGS
	flagGenerator #(N) flag_generator_mod (Q, S, Co,Sign,MultV, Z,Ne,V,C);

	
endmodule