module selector_bebida(input clk, rst, 
							  input logic [2:0] tipo_bebida,
							  output logic [6:0] bebida,
							  output logic siguiente);
							  
	always_ff @(posedge clk) begin
		if (rst) begin 
			bebida = 7'b0000000;
			siguiente = 1'b0;
		end
		else if (tipo_bebida == 3'b001) begin
			bebida = 7'b1110000;
			siguiente = 1'b1;
		end
		else if (tipo_bebida == 3'b010) begin
			bebida = 7'b1101010;
			siguiente = 1'b1;
		end
		else if (tipo_bebida == 3'b011) begin
			bebida = 7'b1100100;
			siguiente = 1'b1;
		end
		else if (tipo_bebida == 3'b100) begin
			bebida = 7'b1000011;	
			siguiente = 1'b1;
		end
	end

endmodule 