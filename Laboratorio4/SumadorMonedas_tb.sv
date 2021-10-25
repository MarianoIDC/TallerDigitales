module SumadorMonedas_tb ();

logic clk = 1'b0;
logic [1:0] moneda; 
logic [2:0] sel;
logic rst, enable;
logic [11:0]monto, vuelto;

SumadorMonedas suma_moneda (.clk(clk), .rst(rst), .moneda(moneda), .sel(sel), .monto(monto), .vuelto(vuelto), .enable(enable));

always #0.5 clk = ~clk;

initial begin
	rst=1'b1;#1;rst=1'b0;
	sel = 2'b000;
	moneda = 2'b01;#1;
	moneda = 2'b01;#1;
	moneda = 2'b01;;
	moneda = 2'b10;#1;
	sel = 2'b001;#3;
	sel = 2'b000;
	moneda = 2'b01;#1;
	moneda = 2'b10;#1;
	moneda = 2'b01;#1;
	moneda = 2'b01;#1;
	moneda = 2'b10;#1;
	

end

endmodule 