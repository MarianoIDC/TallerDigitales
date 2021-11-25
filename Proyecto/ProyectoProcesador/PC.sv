module PC (start, clk, rst, dirIntruction);
input logic start, clk, rst;										
output logic [10:0] dirIntruction;									
										

logic [10:0] counter = 11'b0;
always_ff @(posedge clk)
	if(start) begin
		if (rst)
			counter = 11'b00;
		else
			counter = counter + 1'b1;
	end

assign dirIntruction = counter;
			
endmodule
