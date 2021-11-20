module Counter #(parameter N = 32)(input logic clk, rst, en, output logic [N - 1:0] Q);

always_ff @(negedge clk or posedge rst)
	if (rst)
		Q = 32'b00;
	else
		if (en)
			Q = Q + 3'd4;
			
endmodule
