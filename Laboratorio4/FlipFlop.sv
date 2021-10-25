module FlipFlop(
                    input logic clk,
                    input logic D,
                    input logic we,
                    output logic Q 
                    );
                    
always @(posedge clk) 
begin
    if (we)
        Q <= D; 
end 
endmodule
