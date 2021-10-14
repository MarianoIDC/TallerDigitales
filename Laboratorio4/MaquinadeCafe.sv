module MaquinadeCafe(input logic clk_fpga, rst,
							input logic [1:0] moneda,
							input logic [2:0] sel, 
							output logic led_agua, led_cafe, led_leche, led_chocolate, led_azucar, enable_fin, 
							output logic [11:0] ingresado, 
							output logic [11:0] devuelto, 
							output logic clk);

logic [9:0] bebida;
logic [11:0] monto; 
logic [11:0] vuelto;

hhclock clk_div (clk_fpga, clk);  

logic enable, enable_agua,enable_cafe, enable_leche, enable_chocolate, enable_azucar;


SumadorMonedas mc_sum (	.clk(clk), 
								.rst(rst), 
								.moneda(moneda), 
								.sel(sel), 
								.monto(monto), 
								.vuelto(vuelto), 
								.enable(enable));

assign ingresado = monto;
assign devuelto = vuelto;

FlipFlop ff_ena (clk, enable, 1, enable_agua);

selector_bebida sb (clk, rst, sel, bebida);

disp_agua 		da  (clk, enable_agua, bebida[9:8], led_agua, enable_cafe);
disp_cafe 		dc  (clk, enable_cafe, bebida[7:6], led_cafe, enable_leche);
disp_leche 		dl  (clk, enable_leche, bebida[5:4], led_leche, enable_chocolate);
disp_chocolate dch (clk, enable_chocolate, bebida[3:2], led_chocolate, enable_azucar);
disp_azucar 	daz (clk, enable_azucar, bebida[1:0], led_azucar, enable_fin);


endmodule
