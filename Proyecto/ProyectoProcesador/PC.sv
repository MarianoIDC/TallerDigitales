module PC #(parameter N)(start, clk, rst, dirIntruction);
input logic start, clk, rst;										
output logic [N - 1:0] dirIntruction;									
										

logic [N - 1:0] counter = 8'b00;
always_ff @(posedge clk)
	if(start) begin
		if (rst)
			counter = 8'b00;
		else
			counter = counter + 1'b1;
	end

assign dirIntruction = counter;
			
endmodule
