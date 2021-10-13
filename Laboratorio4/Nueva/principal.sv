module principal(input logic clk, rst,
					  input [1:0] tipo_bebida,
					  output led_cafe, led_agua, led_leche, led_chocolate, led_azucar);

logic segs_counter;
logic tiempo_agua, tiempo_cafe, tiempo_leche, tiempo_chocolate, tiempo_azucar;
					  
contador cont (clk, rst, segs_counter);
dispensador disp (tipo_bebida, tiempo_agua, tiempo_cafe, tiempo_leche, tiempo_chocolate, tiempo_azucar);	

endmodule 