module disp_cafe(input logic rst, clk, enable_cafe,
					  input logic [1:0] bebida,
					  output logic led_cafe, enable_leche);
	
logic [2:0] counter_aux = 3'b000; 
	always@(posedge clk or posedge rst) begin
		if (rst)
		begin
			counter_aux = 3'b000;
			enable_leche = 1'b0;
			led_cafe = 1'b0;
		end
		else if (enable_cafe)
		begin
			if (counter_aux<bebida)
			begin
				led_cafe = 1'b1;
				counter_aux = counter_aux + 1'b1;
			end
			else
			begin
				enable_leche = 1'b1;
				led_cafe = 1'b0; 
			end	
		end		
	end	
endmodule 