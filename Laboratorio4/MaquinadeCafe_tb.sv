`timescale 1s/1ms

module MaquinadeCafe_tb();

logic clk = 0;
logic rst;

logic led_agua, led_cafe, led_leche, led_chocolate, led_azucar;

logic enable_fin;
logic enable = 1;

logic [2:0] sel;

MaquinadeCafe mc_tb (clk, rst, enable, sel, led_agua, led_cafe, led_leche, led_chocolate, led_azucar, enable_fin);

always #0.5 clk=~clk;

initial begin

sel = 3'b100;

end

endmodule
