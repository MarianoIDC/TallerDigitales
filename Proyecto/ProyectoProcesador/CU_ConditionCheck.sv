module CU_ConditionCheck (input logic [3:0] Cond,
								  input logic [3:0] ALUFlags,
								  output logic CondEx);
						
		always_comb
		case(Cond)
			4'b0000:
				CondEx = ALUFlags [3];
				
			4'b0001:
				CondEx = ~(ALUFlags [3]);
				
			4'b0010:	
				CondEx = ALUFlags [1];
				
			4'b0100:
				CondEx = (ALUFlags [0]);
				
			4'b1110:
				CondEx = 1'b0;
				
			default:
				CondEx = 1'b0;		
		endcase
endmodule 