module Counter #(parameter N = 8)(input logic clk, rst, en, 
										output logic [N - 1:0] Q);

logic [N - 1:0] D = 8'b00;
always_ff @(negedge clk or posedge rst)
	if (rst)
		D = 8'b00;
	else
		if (en)
			D = D + 1'b1;

assign Q = D;			
endmodule
