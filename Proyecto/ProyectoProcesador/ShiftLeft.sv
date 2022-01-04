module ShiftLeft #(parameter N = 32)(input logic [N-1:0] A, 
									           output logic [N-1:0] Out);

<<<<<<< HEAD
assign Out = A << 4'd4;
=======
		always_comb
				Out = A << 3'd4;
>>>>>>> ecdc19c421063da83755e99f1dfca4f2f7d79aa7

endmodule 