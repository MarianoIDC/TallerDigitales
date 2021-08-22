module BCD2Seg(bcd, seg);

input logic [3:0] bcd;
output logic [6:0] seg;

//variables
logic A, B, C, D;
assign A = bcd[3];
assign B = bcd[2];
assign C = bcd[1];
assign D = bcd[0];

//asignacion a los 7 segmentos
assign seg[6] = (~A&~B&~C&D) | (~A&B&~C&~D);
assign seg[5] = (A&C) | (A&B) | (B&~C&D) | (B&C&~D);
assign seg[4] = (A&C) | (A&B) | (~B&C&~D);
assign seg[3] = (~B&~C&D) | (~A&B&~C&~D) | (~A&B&C&D);
assign seg[2] = (~A&D) | (~B&~C&D) | (~A&B&~C);
assign seg[1] = (~A&~B&D) | (~A&~B&C) | (~A&C&D);
assign seg[0] = (~A&~B&~C) | (~A&B&C&D);

endmodule 