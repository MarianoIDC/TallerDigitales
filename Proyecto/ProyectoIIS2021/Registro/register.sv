module register(rst, clk, we, dir, data_in, data_out, registerBank);

input logic rst;
input logic clk;
input logic we;
input logic [3:0] dir;
input logic [31:0]data_in;
output logic [31:0]data_out;

output logic [14:0]registerBank[31:0];

always@(posedge clk) begin
	if(we)
		registerBank [dir] = data_in;
end

always@(negedge clk) begin
	if(!we)
		data_out = registerBank [dir];
end
	

endmodule
