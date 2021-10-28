module adderP(input [3:0] in, output [3:0] out);

	assign out = in[3:2]  + in[1:0];
	
endmodule 