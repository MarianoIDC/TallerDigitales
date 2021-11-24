module RegisterFile(clk, rst, we_RF, A1, A2, rd, WD3, RD1, RD2, registerBank);

input logic rst;
input logic clk;
input logic we_RF;
input logic [3:0] A1, A2, rd;
input logic [31:0] WD3;
output logic [31:0] RD1, RD2;

output logic [14:0]registerBank[31:0];

always@(posedge clk) begin
	if(!we_RF) begin
		RD1 = registerBank [A1];
		RD2 = registerBank [A2];
	end
end

always@(negedge clk) begin
	if(we_RF)
		registerBank [rd] = WD3;
end
		
endmodule
