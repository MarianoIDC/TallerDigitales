module register(clk, rst, we_RF, rm, rn, rd, WD3, RD1, RD2, registerBank);

input logic rst;
input logic clk;
input logic we_RF;
input logic [3:0] rm, rn, rd;
input logic [31:0] WD3;
output logic [31:0] RD1, RD2;

output logic [14:0]registerBank[31:0];

always@(posedge clk) begin
		RD1 = registerBank [rm];
		RD2 = registerBank [rn];
end

always@(negedge clk) begin
	if(we_RF)
		registerBank [rd] = WD3;

end
	

endmodule
