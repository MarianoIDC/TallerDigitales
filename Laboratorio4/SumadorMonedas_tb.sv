module SumadorMonedas_tb ();

logic clk = 1'b0;
logic [1:0] moneda, sel;
logic rst, enable;
logic [11:0]monto;

SumadorMonedas suma_moneda (.clk(clk), .rst(rst), .moneda(moneda), .sel(sel), .monto(monto), .enable(enable));

always #5 clk = ~clk;

initial begin
	rst=1'b1;#10;rst=1'b0;
	sel = 2'b00;
	moneda = 2'b01;#10;
	moneda = 2'b01;#10;
	moneda = 2'b01;#10;
	moneda = 2'b10;#10;
	sel = 2'b01;
	rst=1'b1;#10;rst=1'b0;
	sel = 2'b00;
	moneda = 2'b01;#10;
	moneda = 2'b10;#10;
	moneda = 2'b01;#10;
	moneda = 2'b01;#10;
	moneda = 2'b10;#10;
	

end

endmodule 