module Deco7Seg (input logic [3:0] entradas, 
					  output logic [6:0] salidas);
	
	always_comb case (entradas)
		4'd0: salidas = 7'b100_0000; 
		4'd1: salidas = 7'b111_1001;
		4'd2: salidas = 7'b010_0100;
		4'd3: salidas = 7'b011_0000;
		4'd4: salidas = 7'b001_1001;
		4'd5: salidas = 7'b001_0010;
		4'd6: salidas = 7'b000_0010;
		4'd7: salidas = 7'b111_1000;
		4'd8: salidas = 7'b000_0000;
		4'd9: salidas = 7'b001_0000;
		4'd10: salidas = 7'b000_1000; //A
		4'd11: salidas = 7'b000_0011; //b
		4'd12: salidas = 7'b010_0111; //c
		4'd13: salidas = 7'b010_0001; //d
		4'd14: salidas = 7'b000_0110; //E
		4'd15: salidas = 7'b000_1110; //f
		default salidas = 7'b100_0000;
	endcase
	
endmodule 