module principal(input clk, rst, 
					  input [2:0] tipo_bebida,
					  output led_cafe, led_agua, led_leche, led_chocolate, led_azucar);

logic [6:0] result;
logic servir_cafe, servir_agua, servir_leche, servir_chocolate, servir_azucar;

selector_bebida sb(clk, rst, tipo_bebida, result, servir_cafe);
disp_cafe d_cafe(clk, servir_cafe, result, led_cafe, servir_agua);
//disp_agua d_agua(clk, servir_agua, result, led_agua, servir_leche);
//disp_leche d_leche(clk, servir_leche, result, led_leche, servir_chocolate);
//disp_chocolate d_chocolate(clk, servir_chocolate, result, led_chocolate, servir_azucar);
//disp_azucar d_azucar(clk, servir_azucar, led_azucar);

endmodule 