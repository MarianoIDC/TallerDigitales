module testregister();

	logic clk, rst;

	logic [9:0] data, y;

	mainHz DUT(clk, rst, data, y);

	always
		begin
			clk = 0; #5; clk = 1; #5;
		end
		
	initial begin
		rst = 1; #5; rst = 0;
		data = 10'b1111111111;
	end

endmodule 