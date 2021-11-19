module main(input clk, rst, input [32:0] data, output [32:0] y);

	logic [31:0] resultR1, resultAdder;

	ALU_Registro reg1(data, clk, rst, resultR1);
	
	ALU #(32) aluT(resultR1[31:16], resultR1[15:0], 3'b001, resultAdder, N, Z, C, V);

	ALU_Registro	reg2(resultAdder, ~clk, rst, y);

endmodule 