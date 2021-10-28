module testRegistros();//(in, clock, reset, out, S);
//Registro 5 bits
	logic[4:0] in; 
	logic clock, reset;		
	logic [9:0] out;
	logic [3:0] S;
	testFrequency DUT(in, clock, reset, out,S);
	always
		begin
			clock=0;#1;clock=1;#1;
		end
	initial begin
		reset=1'b1; #1;reset=1'b0;
		S=4'b0000;#1;
		#10 in = 4'b0010; 
		$display("in = %b, out = %b\n", in,out);
		
		#10 in = 4'b0001; 
	end
	
endmodule 