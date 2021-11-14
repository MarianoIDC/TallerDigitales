module Comparador #(parameter N = 8)(input logic clk, rst, input logic [N - 1:0] en, 
												output logic [N - 1:0] Q, q);
												
logic [7:0] address = 8'b00;
												
always_ff @(negedge clk or posedge rst)
	if (rst)
		Q = 8'b00;
	else begin
		if (en)
			if (q == en)
				Q = Q + 1'b1;
			else
				Q = Q;
		address = address + 1'b1;
	end
	rom mem(address, clk, q);

endmodule
