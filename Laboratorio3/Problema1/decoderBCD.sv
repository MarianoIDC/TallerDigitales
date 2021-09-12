module decoderBCD (in,out);

	input logic [3:0] in;
	output logic [6:0] out;
	
	always_comb begin
		case(in)
			1'b0 : out <= 7'b1000000; // 0
			1'b1 : out <= 7'b1111001; // 1
			default : out <= 7'b1000000; // 0	
		endcase
	end
endmodule 