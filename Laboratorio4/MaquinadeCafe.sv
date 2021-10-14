`timescale 1s/1ms

module MaquinadeCafe(input logic clk, rst, enable,
							input logic [2:0] sel, 
							
							output logic led_agua, led_cafe, led_leche, led_chocolate, led_azucar, enable_fin);

logic [9:0] bebida; 

logic enable_agua,enable_cafe, enable_leche, enable_chocolate, enable_azucar;

FlipFlop ff_ena (clk, enable, 1, enable_agua);

selector_bebida sb (clk, rst, sel, bebida);

disp_agua 		da  (clk, enable_agua, bebida[9:8], led_agua, enable_cafe);
disp_cafe 		dc  (clk, enable_cafe, bebida[7:6], led_cafe, enable_leche);
disp_leche 		dl  (clk, enable_leche, bebida[5:4], led_leche, enable_chocolate);
disp_chocolate dch (clk, enable_chocolate, bebida[3:2], led_chocolate, enable_azucar);
disp_azucar 	daz (clk, enable_azucar, bebida[1:0], led_azucar, enable_fin);


endmodule
