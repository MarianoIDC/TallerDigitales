module CU_ALUDecoder (input logic [5:0] Funct,
							 input logic ALUOp,
							 output logic [1:0] ALUControl,
							 output logic [1:0] FlagW);							 
							 
		always @*
		case(ALUOp)
			1'b0:
				begin 
					ALUControl = 2'b00;
					FlagW = 2'b00;
				end
			1'b1:
				case(Funct [4:1])
					4'b0100:
						case(Funct [0])
							1'b0:
								begin 
									ALUControl = 2'b00;
									FlagW = 2'b00;
								end
							1'b1:
								begin 
									ALUControl = 2'b00;
									FlagW = 2'b11;
								end
							default
								begin 
									ALUControl = 2'b00;
									FlagW = 2'b00;
								end
						endcase
					4'b0010:
						case(Funct [0])
							1'b0:
								begin 
									ALUControl = 2'b01;
									FlagW = 2'b00;
								end
							1'b1:
								begin 
									ALUControl = 2'b01;
									FlagW = 2'b11;
								end
							default:	
								begin 
									ALUControl = 2'b00;
									FlagW = 2'b00;
								end
						endcase
					4'b0000:
						case(Funct [0])
							1'b0:
								begin 
									ALUControl = 2'b10;
									FlagW = 2'b00;
								end
							1'b1:
								begin 
									ALUControl = 2'b10;
									FlagW = 2'b10;
								end
							default:
								begin 
									ALUControl = 2'b00;
									FlagW = 2'b00;
								end
						endcase
					4'b1100:
						case(Funct [0])
							1'b0:
								begin 
									ALUControl = 2'b11;
									FlagW = 2'b00;
								end
							1'b1:
								begin 
									ALUControl = 2'b11;
									FlagW = 2'b10;
								end
							default:
								begin 
									ALUControl = 2'b00;
									FlagW = 2'b00;
								end
						endcase
					default: 
					begin 
						ALUControl = 2'b00;
						FlagW = 2'b00;
					end
				endcase
			default:
			begin 
				ALUControl = 2'b00;
				FlagW = 2'b00;
			end
		endcase 	
endmodule 