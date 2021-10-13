`timescale 1s/1ps

module cafe_tb();

logic clk, rst;
logic [1:0] tipo_bebida;
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
	#5
	rst = 1;
	#1
	rst = 0;
	//tipo_bebida = 2'b00;

end

endmodule 