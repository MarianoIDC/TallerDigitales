module ContadorNBits #(parameter N=6)
			   		    (input logic buttonclk, rst, 
							  output logic [N-1:0] out);
	
	
	always @(posedge buttonclk, posedge rst) 
		if (rst) 
			out = 0;
		else 
			out = out + 1; 
		
endmodule
