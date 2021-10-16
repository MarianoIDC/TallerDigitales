module hhclock (clk_fpga, clk);

output logic clk = 0;
input logic clk_fpga; 
integer count = 1;

always @(posedge clk_fpga)
begin
    if(count == 125000000) begin 
        count = 1;
        clk = ~clk;
    end else begin
        count = count + 1;
    end 
end

endmodule
