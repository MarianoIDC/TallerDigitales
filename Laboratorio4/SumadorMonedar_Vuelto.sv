`timescale 1s/1ms
module SumadorMonedar_Vuelto (input logic rst, enable, input logic [2:0] sel, input logic [11:0] suma, output logic [11:0] vuelto, output logic fallo);

logic [11:0] vuelto_aux;
 
												
always@(posedge enable or posedge rst)
	if (rst) 
		vuelto_aux <= 12'd0;
	//Selecciona la bebida 1
	else if (sel == 2'b001)
	begin
		if (suma>=12'd300)
			vuelto_aux <= suma - 12'd300;
		else
			fallo = 1'b1;
	end
	//Selecciona la bebida 2
	else if (sel == 2'b010)
	begin
		if (suma>=12'd400)
			vuelto_aux <= suma - 12'd400;
		else
			fallo = 1'b1;
	end
	//Selecciona la bebida 3
	else if (sel == 2'b001)
	begin
		if (suma>=12'd500)
			vuelto_aux <= suma - 12'd500;
		else
			fallo = 1'b1;
	end
	//Selecciona la bebida 4
	else if (sel == 2'b001)
	begin
		if (suma>=12'd500)
			vuelto_aux <= suma - 12'd500;
		else
			fallo = 1'b1;
	end
	
assign vuelto = vuelto_aux;	



endmodule 