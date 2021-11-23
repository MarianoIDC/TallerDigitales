module CU_PCLogic (input logic Branch,
						 input logic RegW,
						 input logic [3:0] Rd,
						 output logic PCS);
						 
		always_comb 
		PCS = ((Rd == 15) & RegW) | Branch;
		
endmodule 