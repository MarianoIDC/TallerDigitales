module PC (start, clk, rst, dirIntruction);
input logic start, clk, rst;										
output logic [8:0] dirIntruction;									
										

logic [8:0] counter = 8'b0;
always_ff @(posedge clk)
	if(start) begin
		if (rst)
			counter = 8'b00;
		else
			counter = counter + 1'b1;
	end

assign dirIntruction = counter;
			
endmodule
