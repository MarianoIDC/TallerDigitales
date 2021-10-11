module selector_bebida(input clk, rst, tipo_bebida,
							  output logic [6:0] bebida,
							  output logic siguiente);
							  
	always_ff @(posedge clk) begin
		if (rst) begin 
			bebida = 7'b0000000;
			siguiente = 1'b0;
		end
		else if (tipo_bebida == 1'd1) begin
			bebida = 7'b1110000;
			siguiente = 1'b1;
		end
		else if (tipo_bebida == 1'd2) begin
			bebida = 7'b1101010;
			siguiente = 1'b1;
		end
		else if (tipo_bebida == 1'd3) begin
			bebida = 7'b1100100;
			siguiente = 1'b1;
		end
		else if (tipo_bebida == 1'd4) begin
			bebida = 7'b1000011;	
			siguiente = 1'b1;
		end
	end

endmodule 