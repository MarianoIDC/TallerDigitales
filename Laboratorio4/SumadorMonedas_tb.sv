module SumadorMonedas_tb ();

logic clk = 1'b0;
logic [1:0] moneda; 
logic [2:0] sel;
logic rst, enable;
logic [11:0]monto, vuelto;

SumadorMonedas suma_moneda (.clk(clk), .rst(rst), .moneda(moneda), .sel(sel), .monto(monto), .vuelto(vuelto), .enable(enable));

always #5 clk = ~clk;

initial begin
	rst=1'b1;#10;rst=1'b0;
	sel = 2'b000;
	moneda = 2'b01;#10;
	moneda = 2'b01;#10;
	moneda = 2'b01;;
	moneda = 2'b10;#10#10;
	sel = 2'b001;#30;
	sel = 2'b000;
	moneda = 2'b01;#10;
	moneda = 2'b10;#10;
	moneda = 2'b01;#10;
	moneda = 2'b01;#10;
	moneda = 2'b10;#10;
	

end

endmodule 