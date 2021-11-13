module ALU_Registro(input logic [32:0] a, input logic clk, input logic rst, output logic [32:0] value);

	always_ff @(posedge clk, posedge rst)
		if(rst)
			value<= 32'b0;
		else
			value <= a;
			
endmodule 