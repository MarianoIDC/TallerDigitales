module Bin2BCD_tb();

logic [3:0] BIN, BCD1, BCD0;
logic [6:0] SEG1, SEG0;

Bin2BCD b2b (BIN, BCD1, BCD0,SEG1, SEG0);


initial begin
	//0
	BIN = 4'b0000; #10;
	//1
	BIN = 4'b0001; #10;
	//2
	BIN = 4'b0010; #10;
	//3
	BIN = 4'b0011; #10;
	//4
	BIN = 4'b0100; #10;
	//5
	BIN = 4'b0101; #10;
	//6
	BIN = 4'b0110; #10;
	//7
	BIN = 4'b0111; #10;
	//8
	BIN = 4'b1000; #10;
	//9
	BIN = 4'b1001; #10;
	//10
	BIN = 4'b1010; #10;
	//11
	BIN = 4'b1011; #10;
	//12
	BIN = 4'b1100; #10;
	//13
	BIN = 4'b1101; #10;
	//14
	BIN = 4'b1110; #10;
	//15
	BIN = 4'b1111; #10;

end


endmodule 