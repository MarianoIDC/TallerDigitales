`timescale 1s/1ms
module test_dispensador();

logic clk = 0, enable_agua;
logic [9:0] bebida;
logic [2:0] counter;
logic led_agua, enable_cafe;


disp_agua test (clk, enable_agua, bebida[9:8], led_agua, enable_cafe, counter);

always #0.5 clk = ~clk;
initial begin

enable_agua = 1;
bebida = 10'b1000011000;


end

endmodule

