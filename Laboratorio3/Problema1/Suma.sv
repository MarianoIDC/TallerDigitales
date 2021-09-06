module Suma #(parameter P = 4)(A, B, RES, C_out);

input logic [P-1:-0] A, B;
output logic [P-1:0] RES;
output logic C_out;

wire [P-1:0] C_aux;

adder1bit Bit0 (A[0], B[0], 1'b0, C_aux[1], RES[0]);
adder1bit Bit1 (A[1], B[1], C_aux[1], C_aux[2], RES[1]);
adder1bit Bit2 (A[2], B[2], C_aux[2], C_aux[3], RES[2]);
adder1bit Bit3 (A[3], B[3], C_aux[3], C_out, RES[3]);

endmodule 