module selector_bebida(input logic clk, rst, 
							  input logic tipo_bebida,
							  output logic [6:0] bebida);
							  
	always_ff @(posedge clk) begin
		if (rst) begin 
			bebida = 7'b0000000;
		end
		else if (tipo_bebida == 2'b00) begin
			bebida = 7'b1110000;
		end
		else if (tipo_bebida == 2'b01) begin
			bebida = 7'b1101010;
		end
		else if (tipo_bebida == 2'b10) begin
			bebida = 7'b1100100;
		end
		else if (tipo_bebida == 2'b11) begin
			bebida = 7'b1000011;	
		end
	end

endmodule 