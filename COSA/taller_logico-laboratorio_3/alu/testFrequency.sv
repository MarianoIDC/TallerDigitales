module testFrequency #(parameter N=4) (in, clock, reset, out,select,);

	input logic[N-1:0] in; 
	input logic clock, reset;		
	output  logic [N-1:0] out; 

	// outR1 es la salida del primer registro
	// outALU es la salida del ALU
	logic [N-1:0]  outR1, outALU; 
	
	
	// vector de seleccion del ALU
	input logic [3:0] select; // Vector de seleccion de la Alu
	
	// valores para las 4 banderas del ALU
	logic Ne, Z, C, V; 
	
	
	// definicion del primer registro
	register #(N) reg1 (in , clock, reset, outR1);
	
	// definicion del ALU para medir el sumador
	alu #(N) alu_module(outR1,outR1,select, outALU, Ne,Z,V,C);
	// definicion del segundo registro
	register #(N) reg2 (outALU, ~clock, reset, out); 
	

endmodule 

