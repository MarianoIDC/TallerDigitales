module CU_AND (input logic PCS,
					input logic RegW,
					input logic MemW,
					input logic [1:0] FlagW,
					input logic CondEx,
					output logic PCSrc,
					output logic RegWrite,
					output logic MemWrite);
		
		always_comb 
		begin
			PCSrc = PCS && CondEx;
			RegWrite = RegW && CondEx;
			MemWrite = MemW && CondEx;
		end				
	
endmodule 