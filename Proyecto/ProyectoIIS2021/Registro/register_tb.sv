module register_tb();

logic rst = 0;
logic clk = 0;
logic we_RF; 
logic [3:0] dir;
logic [31:0] data_in, data_out;
logic [14:0]registerBank[31:0] ;

register reg_test (clk, rst, we_RF, rm, rn, rd, WD3, RD1, RD2, registerBank);

always #10 clk = ~clk;

initial begin

we_RF = 1;
WD3 = 32'd400; rd = 4'b1010; #20;

we_RF = 0; #20;
rm = 4'b1011; rn = 4'b0001; #20;
we_RF = 1; WD3 = 32'd500; #20;
we_RF = 0;


end



endmodule
