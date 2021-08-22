module Clock_tb ();

logic [3:0] salida;
logic rst, clk;
parameter N = 4;

Clock #(N) clock (rst, clk, salida);

always begin
    clk = 0; #1;
    clk = 1; #1; 
end

initial begin
    rst = 0;
end
    
endmodule