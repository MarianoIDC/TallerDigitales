module CU_ConditionCheck (input logic [3:0] Cond,
								  input logic [1:0] FlagsA,
								  input logic [1:0] FlagsB,
								  output logic CondEx);
								  
		always_comb
		case(Cond)
			4'b0000:
				CondEx = FlagsA[1];
				
			4'b0001:
				CondEx = ~(FlagsA [1]);
				
			4'b0010:	
				CondEx = FlagsB [1];
				
			4'b0100:
				CondEx = (FlagsA [0]);
				
			4'b1110:
				CondEx = 1'b0;
			default:
				CondEx = 1'b0;		
		endcase
endmodule 