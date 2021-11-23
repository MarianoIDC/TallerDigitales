module SignExt_tb();

logic [23:0] offset;
logic [2:0] op;
logic [31:0] SignImm;

SignExt iSE(offset, op, SignImm);

initial begin
	offset = 24'b101010101101011001101101;
	op = 2'b10;
	#10;
	
	offset = 24'b101010101101011001101101;
	op = 2'b01;
	#10;
	
	offset = 24'b101010101101011001101101;
	op = 2'b00;
	#10;
	
end

endmodule
