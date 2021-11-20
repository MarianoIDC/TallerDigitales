module Display7SegX3 (input logic [7:0] entrada, input logic clk, rst,
						output logic [6:0] unidades, decenas, centenas, output logic ready);

logic [11:0] salidaBCD;
BinaryToBCD particionador(clk, rst, entrada, salidaBCD, ready);				
Display7Seg displayUnidades(salidaBCD[3:0], 1'b1, unidades);
Display7Seg displayDecenas(salidaBCD[7:4], 1'b1, decenas);
Display7Seg displayCentenas(salidaBCD[11:8], 1'b1, centenas);
endmodule
