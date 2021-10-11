`timescale 1s/1ps
module cafe_tb();

logic clk, rst;
logic tipo_bebida;
logic led_cafe, led_agua, led_leche, led_chocolate, led_azucar;

principal prueba (clk, rst, tipo_bebida, led_cafe, led_agua, led_leche, led_chocolate, led_azucar);

always begin
      clk = 0;
      #0.5;
      clk = 1;
      #0.5;
end

initial begin
	rst = 0;
	#1
	tipo_bebida = 1'd1;
	#1
	tipo_bebida = 1'd0;
	#100
	$stop;
end

endmodule 