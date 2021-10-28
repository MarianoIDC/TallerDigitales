module RegisterP(input logic [9:0] a, input logic clk, input logic rst, output logic [9:0] value);

	always_ff @(posedge clk, posedge rst)
		if(rst)
			value<= 10'b0;
		else
			value <= a;
			
endmodule 