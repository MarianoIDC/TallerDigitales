module CU_MainDecoder (input logic [1:0] Op,
							  input logic [5:0] Funct,
							  output logic Branch,
							  output logic MemToReg,
							  output logic MemW,
							  output logic ALUSrc,
							  output logic [1:0] ImmSrc,
							  output logic RegW,
							  output logic [1:0] RegSrc,
							  output logic ALUOp);
							  
		always @*
		case(Op)
			2'b00:
				case(Funct [5])
					1'b0:
						begin
							Branch = 1'b0;
							MemToReg = 1'b0;
							MemW = 1'b0;
							ALUSrc = 1'b0;
							ImmSrc = 2'bxx;
							RegW = 1'b1;
							RegSrc = 2'b00;
							ALUOp = 1'b1;
						end
					1'b1:
						begin
							Branch = 1'b0;
							MemToReg = 1'b0;
							MemW = 	;
							ALUSrc = 1'b1;
							ImmSrc = 2'b00;
							RegW = 1'b1;
							RegSrc = 2'bx0;
							ALUOp = 1'b1;
						end
				endcase
			2'b01:
				case(Funct [0])
					1'b0:
						begin
							Branch = 1'b0;
							MemToReg = 1'bx;
							MemW = 1'b1;
							ALUSrc = 1'b1;
							ImmSrc = 2'b01;
							RegW = 1'b0;
							RegSrc = 2'b10;
							ALUOp = 1'b0;
						end
					1'b1:
						begin
							Branch = 1'b0;
							MemToReg = 1'b1;
							MemW = 1'b0;
							ALUSrc = 1'b1;
							ImmSrc = 2'b01;
							RegW = 1'b1;
							RegSrc = 2'bx0;
							ALUOp = 1'b0;
						end
				endcase
			2'b10:
				begin
					Branch = 1'b1;
					MemToReg = 1'b0;
					MemW = 1'b0;
					ALUSrc = 1'b1;
					ImmSrc = 2'b10;
					RegW = 1'b0;
					RegSrc = 2'bx1;
					ALUOp = 1'b0;
				end
			default:
				begin 
					Branch = 1'b0;
					MemToReg = 1'b0;
					MemW = 1'b0;
					ALUSrc = 1'b0;
					ImmSrc = 2'b00;
					RegW = 1'b0;
					RegSrc = 2'b00;
					ALUOp = 1'b0;
				end
		endcase 	
endmodule 