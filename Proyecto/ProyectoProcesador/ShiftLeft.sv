module ShiftLeft #(parameter N = 32)(input logic [N-1:0] A, 
									           output logic [N-1:0] Out);

assign Out = A << 4'd4;

endmodule 