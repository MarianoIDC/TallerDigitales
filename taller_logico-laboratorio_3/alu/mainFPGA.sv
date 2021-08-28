module mainFPGA(input logic clk, input logic rst, input logic [9:0] data, input logic [3:0] select,output logic[9:0] y);

	logic [9:0] resultR1, resultAdder;

	RegisterP reg1(data, clk, rst, resultR1);
	
	alu #(10) aluT(resultR1[9:5], resultR1[4:0], select, resultAdder, Ne, Z, V, C);

	RegisterP reg2(resultAdder, ~clk, rst, y);

endmodule 