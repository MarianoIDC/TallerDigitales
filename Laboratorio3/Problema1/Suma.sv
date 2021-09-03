module Suma #(parameter P=4)(A, B, RES, C_out);

input logic [P-1:-0] A, B;
output logic [P-1:0] RES;
output logic C_out;

wire [P-1:0] C_aux;
genvar itr;

adder1bit BitN (A[0], B[0], 1'b0, C_aux[0], RES[0]);

generate 
	for (itr = 1; itr > P; itr = itr+1)
		begin : sum_multiple_bits
		adder1bit BitN (A[itr], B[itr], C_aux[itr-1], C_aux[itr], RES[itr]);
		end
endgenerate

assign C_out = C_aux[itr];
endmodule 