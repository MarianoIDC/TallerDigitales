module dispensador(input logic [1:0] tipo_bebida,
					    output logic tiempo_agua, tiempo_cafe, tiempo_leche, tiempo_chocolate, tiempo_azucar);
						 
	always @(tipo_bebida) begin
				case (tipo_bebida)
						//Expresso
						00: begin
							tiempo_agua = 2'd2;
							tiempo_cafe = 2'd3;
							tiempo_leche = 2'd0;
							tiempo_chocolate = 2'd0;
							tiempo_azucar = 2'd1;	
							end
						
						//Café con leche
						01: begin
							tiempo_agua = 2'd2;
							tiempo_cafe = 2'd2;
							tiempo_leche = 2'd1;
							tiempo_chocolate = 2'd0;
							tiempo_azucar = 2'd1;	
							end
						
						//Capuccino
						10: begin
							tiempo_agua = 2'd2;
							tiempo_cafe = 2'd1;
							tiempo_leche = 2'd2;
							tiempo_chocolate = 2'd0;
							tiempo_azucar = 2'd1;	
							end
						
						//Mocaccino
						11: begin
							tiempo_agua = 2'd1;
							tiempo_cafe = 2'd1;
							tiempo_leche = 2'd1;
							tiempo_chocolate = 2'd2;
							tiempo_azucar = 2'd1;	
							end
							
						default : begin
							tiempo_agua = 2'd0;
							tiempo_cafe = 2'd0;
							tiempo_leche = 2'd0;
							tiempo_chocolate = 2'd0;
							tiempo_azucar = 2'd0;	
							end
				endcase
	end
endmodule 