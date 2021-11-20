module Sumador #(parameter N = 32)(input logic [N-1:0] A, 
											  input logic B,
											  output logic Sum);
					 
		assign Sum = A + B;
		
endmodule 