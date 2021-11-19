module ALU_Suma #(parameter P = 32)(A, B, RES, C_out);

input logic [P-1:-0] A, B;
output logic [P-1:0] RES;
output logic C_out;

wire [P:0] C_aux;

genvar i;

ALU_adder1bit Bit0 (A[0], B[0], 1'b0, C_aux[1], RES[0]);

generate
	for (i = 1; i < P; i=i+1)begin : suma_N
		ALU_adder1bit BitN (A[i], B[i], C_aux[i], C_aux[i+1], RES[i]);
	end
endgenerate

assign C_out = C_aux[P];

endmodule 