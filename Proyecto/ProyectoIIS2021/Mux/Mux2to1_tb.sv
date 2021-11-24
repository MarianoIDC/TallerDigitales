module Mux2to1_tb ();


parameter N = 32;
logic [N-1:0] A, B, C;
logic sel; 

MUX #(N) iMux (.A(A), .B(B), .C(C), .sel(sel));

initial begin
    A = 32'b1;
    B = 32'b0;
    sel = 1;#10;
    sel = 0;#10;
    sel = 1;#10;
    sel = 0;#10;
end
  
endmodule
