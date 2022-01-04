module Mux2to1 #(parameter N = 32)(input logic sel, input logic [N - 1:0] A, B, output logic [N - 1:0] C);
assign C = sel ? A : B;
endmodule
