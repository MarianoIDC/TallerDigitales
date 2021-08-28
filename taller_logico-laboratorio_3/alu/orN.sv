//COMPUERTA OR
// Compuerta parametrizable de N Bits
//A y B son las entradas lógicas
//S es la salida de la operación A OR B
module orN #(parameter N = 4)(A, B, S);

	input logic [N-1:0] A, B;
	output logic [N-1:0] S;

	always_comb begin
		S = A | B;
	end

endmodule