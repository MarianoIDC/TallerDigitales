module ShiftLeft #(parameter N = 32)(input logic [N-1:0] A, 
									           output logic [N-1:0] Out);

		always_comb
				assign Out = A << 3'd4;

endmodule 