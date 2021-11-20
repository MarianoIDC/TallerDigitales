module Display7Seg(input logic [3:0] entrada, input logic en, output logic [6:0] salida);
always @(entrada)
	if (en) begin
		case (entrada)
			4'b0000: salida = 7'b1000000;
			4'b0001:	salida = 7'b1111001;
			4'b0010:	salida = 7'b0100100;
			4'b0011:	salida = 7'b0110000;
			4'b0100:	salida = 7'b0011001;
			4'b0101:	salida = 7'b0010010;
			4'b0110:	salida = 7'b0000010;
			4'b0111:	salida = 7'b1111000;
			4'b1000:	salida = 7'b0000000;
			4'b1001:	salida = 7'b0011000;
			4'b1010: salida = 7'b0001000; //A
			4'b1011:	salida = 7'b0000011; //B
			4'b1100:	salida = 7'b0100111; //C
			4'b1101:	salida = 7'b0100001; //D
			4'b1110:	salida = 7'b0000110; //E
			4'b1111:	salida = 7'b0001110; //F
			default: salida = 7'b1000000;
		endcase
	end
	else begin
		salida = 7'b1000000;
	end
	
endmodule
