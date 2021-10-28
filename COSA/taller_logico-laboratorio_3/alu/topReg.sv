module topReg(clk, rst,data, Disp1,Disp2,z);

	input logic clk, rst;
	input logic [9:0] data;
	logic [9:0] y;
	output logic[6:0] Disp1,Disp2; //Display de 7 segmentos
	logic[3:0] w1,w2;
	output logic [3:0] z;
	mainFPGA mainr(~clk, rst, data, 4'b0111, y);
	division #(4) div_module(y[3:0],4'b1010,w1);//Calcular Decenas
	modulo #(4) mod_module(y[3:0],4'b1010,w2);//Calcular unidades
	decoderBCD decodificador1(w1,Disp1);// Decodificador para Decenas
	decoderBCD decodificador2(w2,Disp2);// Decodificador para Unidades
	assign z=y[3:0];



endmodule 