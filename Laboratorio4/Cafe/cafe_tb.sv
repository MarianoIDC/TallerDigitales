`timescale 1s/1ps
module cafe_tb();

logic clk, rst, preparar;
logic [2:0] tipo_bebida;
logic led_cafe, led_agua, led_leche, led_chocolate, led_azucar;

principal prueba (clk, rst, preparar, tipo_bebida, led_cafe, led_agua, led_leche, led_chocolate, led_azucar);

always begin
	clk = 0;
	#0.5;
	clk = 1;
	#0.5;
end

initial begin
	rst = 0;
	#1
	tipo_bebida = 3'b001;
	preparar = 1;
	#1
	preparar = 0;
end

endmodule 