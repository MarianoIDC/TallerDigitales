module SumadorMonedar_Vuelto (input logic clk, rst, enable, [2:0] sel, [11:0] suma, output logic [11:0] vuelto);

logic [11:0] vuelto_aux;
 
												
always_ff@(posedge clk or posedge rst)
	if (rst) 
		vuelto <= 12'd0;
	else if (sel = 2'b001) 
			vuelto_aux <= suma - 12'd300;
	else if (sel = 2'b010) 
			vuelto_aux <= suma - 12'd400;
	else if (sel = 2'b011) 
			vuelto_aux <= suma - 12'd500;
	else if (sel = 2'b100) 
			vuelto_aux <= suma - 12'd700;
assign vuelto = vuelto_aux;	



endmodule 