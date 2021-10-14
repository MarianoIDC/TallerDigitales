`timescale 1s/1ms

module MaquinadeCafe_tb();

logic clk = 0;
logic rst = 1;
logic [1:0] moneda;
logic [2:0] sel;

logic led_agua, led_cafe, led_leche, led_chocolate, led_azucar;

logic enable_fin;

logic [11:0] ingresado;
logic [11:0] devuelto;



MaquinadeCafe mc_tb (.clk(clk), 
							.rst(rst), 
							.moneda(moneda), 
							.sel(sel),
							.led_agua(led_agua), 
							.led_cafe(led_cafe), 
							.led_leche(led_leche), 
							.led_chocolate(led_chocolate), 
							.led_azucar(led_azucar), 
							.enable_fin(enable_fin), 
							.ingresado(ingresado), 
							.devuelto(devuelto));

always #0.5 clk=~clk;

initial begin
	rst = 1'b0; #1;
	sel = 3'b000;
	moneda = 2'b01;#1;
	moneda = 2'b01;#1;
	moneda = 2'b01;#1;
	moneda = 2'b10;#1;
	sel = 3'b001;#3;
//	sel = 2'b000;
//	moneda = 2'b01;#10;
//	moneda = 2'b10;#10;
//	moneda = 2'b01;#10;
//	moneda = 2'b01;#10;
//	moneda = 2'b10;#10;
end

endmodule
