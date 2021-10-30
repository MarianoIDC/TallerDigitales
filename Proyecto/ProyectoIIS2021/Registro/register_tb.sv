module register_tb();

logic rst = 0;
logic clk = 0;
logic we; 
logic [3:0] dir;
logic [31:0] data_in, data_out;
logic [14:0]registerBank[31:0] ;

register reg_test (rst, clk, we, dir, data_in, data_out);

always #10 clk = ~clk;

initial begin

we = 1;
data_in = 32'd400; dir = 4'b1010; #20;

we = 0; #20
dir = 4'b1011; #20;
we = 1; data_in = 32'd500; #20;
we = 0;


end



endmodule
