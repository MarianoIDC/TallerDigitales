module MaquinadeCafe_tb();

logic clk_fpga = 0;
logic rst = 1;
logic [1:0] moneda;
logic [2:0] sel;

logic led_agua = 1'b0, 
		led_cafe = 1'b0, 
		led_leche = 1'b0, 
		led_chocolate = 1'b0, 
		led_azucar = 1'b0;

logic enable_fin = 1'b0;

logic [11:0] ingresado = 12'b0;
logic [11:0] devuelto = 12'b0;

logic clk;



MaquinadeCafe mc_tb (.clk_fpga(clk_fpga), 
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
							.devuelto(devuelto), 
							.clk(clk));

always #20 clk_fpga=~clk_fpga;

initial begin
	#125000000;
	rst = 1'b0; #125000000;
	sel = 3'b000;
	moneda = 2'b01;#125000000;
	moneda = 2'b01;#125000000;
	moneda = 2'b01;#125000000;
	moneda = 2'b10;#125000000;
	sel = 3'b001;#125000000;
//	sel = 2'b000;
//	moneda = 2'b01;#10;
//	moneda = 2'b10;#10;
//	moneda = 2'b01;#10;
//	moneda = 2'b01;#10;
//	moneda = 2'b10;#10;
end

endmodule
