module Cont_tb;
	
	reg buttonclk;
	reg rst;
	wire  [5:0] out;
	
	//Prueba para 2 bits
	//ContadorNBits #(.N(2)) cont2Bits (.buttonclk(buttonclk), .rst(rst), .out(out));
	
	//Prueba para 4 bits
	//ContadorNBits #(.N(4)) cont4Bits (.buttonclk(buttonclk), .rst(rst), .out(out));
												 
	//Prueba para 6 bits
	ContadorNBits #(.N(6)) cont6Bits (.buttonclk(buttonclk), .rst(rst), .out(out));											 
	
	always #5 buttonclk = ~buttonclk;
	
	initial begin
		
		buttonclk = 0;
		rst = 1;
		
		#5 rst = 0;
		#20 rst = 1;
		#5 rst = 0;
		#700 rst = 1;
		#5 rst = 0;
		#40 rst = 1;

		#5 $finish;
	end
endmodule 