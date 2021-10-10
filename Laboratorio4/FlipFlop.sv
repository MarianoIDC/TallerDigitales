module FlipFlop(
                    input clk,
                    input D,
                    input we,
                    output reg Q 
                    );
                    
always @(posedge clk) 
begin
    if (we)
        Q <= D; 
end 
endmodule
