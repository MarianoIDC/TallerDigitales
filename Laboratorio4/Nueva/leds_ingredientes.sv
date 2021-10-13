module leds_ingredientes (input logic clk, enable, tiempo,
								  output logic led);
 
	always_ff @(posedge clk)
		if (enable) 
			led = 1'b1;
		else
			led = 1'b0;
	 
endmodule 