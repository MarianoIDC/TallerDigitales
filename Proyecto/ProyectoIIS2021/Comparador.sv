module Comparador #(parameter N = 8)(input logic clk, rst, input logic [N - 1:0] letra, 
												output logic [N - 1:0] C, q);
												
logic [7:0] address = 8'b00;
												
always_ff @(negedge clk or posedge rst)
	if (rst)
		C = 8'b00;
	else begin
		if (letra)
			if (q == letra)
				C = C + 1'b1;
			else
				C = C;
		address = address + 1'b1;
	end
	rom mem(address, clk, q);

endmodule
