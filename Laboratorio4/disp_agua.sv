module disp_agua(input logic clk, enable_agua,
					  input logic [1:0] bebida,
					  output logic led_agua, enable_cafe);
	
logic [2:0] counter_aux = 3'b000; 
	always@(posedge clk) begin
		if (enable_agua)
		begin
			if (counter_aux<bebida)
			begin
				enable_cafe = 1'b0;
				led_agua = 1'b1;
				counter_aux = counter_aux + 1'b1;
			end
			else
			begin
				enable_cafe = 1'b1;
				led_agua = 1'b0; 
			end	
		end		
	end	
endmodule 