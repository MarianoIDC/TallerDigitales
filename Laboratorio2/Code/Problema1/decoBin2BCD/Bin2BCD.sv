module Bin2BCD(bin, bcd1, bcd0, seg1, seg0);

input logic [3:0] bin;
output logic [3:0] bcd1, bcd0;
output logic [6:0] seg1, seg0;

//variables
logic A, B, C, D;
assign A = bin[3];
assign B = bin[2];
assign C = bin[1];
assign D = bin[0];

logic [6:0] seg_aux1, seg_aux0;

//BCD DE LAS DECENAS
assign bcd1[3] = 0;
assign bcd1[2] = 0;
assign bcd1[1] = 0;
assign bcd1[0] = (A&C)|(A&B);

//BCD DE LAS UNIDADES

assign bcd0[3] = A&~B&~C;
assign bcd0[2] = (~A&B)|(B&C);
assign bcd0[1] = (~A&C)|(A&B&~C);
assign bcd0[0] = D;

BCD2Seg b7s1 (bcd1, seg_aux1);
BCD2Seg b7s0 (bcd0, seg_aux0);

assign seg1 = seg_aux1;
assign seg0 = seg_aux0;


endmodule 