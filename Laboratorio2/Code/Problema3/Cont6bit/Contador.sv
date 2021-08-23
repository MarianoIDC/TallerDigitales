module Contador #(parameter N=6) 
					  (input logic clk, rst,
						output logic [13:0] outBCD);
										
	logic [N-1:0] out;	
	
	ContadorNBits#(N) cont1 (clk, rst, out[N-1:0]);
	
	Deco7Seg deco1 (out[3:0], outBCD[6:0]);
	
	Deco7Seg deco2 (out[5:4], outBCD[13:7]);

endmodule
	