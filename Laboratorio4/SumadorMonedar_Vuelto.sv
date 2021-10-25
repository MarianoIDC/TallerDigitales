module SumadorMonedar_Vuelto (input logic rst, enable, input logic [2:0] sel, input logic [11:0] suma, output logic [11:0] vuelto, output logic fallo);

logic [11:0] vuelto_aux;
 
												
always@(posedge enable or posedge rst)
	if (rst)
	begin
		vuelto_aux <= 12'd0;
		fallo = 1'b0;
	end
		
	//Selecciona la bebida 1
	else if (sel == 3'b001)
	begin
		if (suma>=12'd300)
		begin 
			vuelto_aux <= suma - 12'd300;
			
		end	
		else
		begin
			fallo = 1'b1;
			vuelto_aux <= suma;
		end
			
	end
	//Selecciona la bebida 2
	else if (sel == 3'b010)
	begin
		if (suma>=12'd400)
			begin 
			vuelto_aux <= suma - 12'd400;
			fallo = 1'b0;
		end	
		else
			begin
			fallo = 1'b1;
			vuelto_aux <= suma;
		end
	end
	//Selecciona la bebida 3
	else if (sel == 3'b011)
	begin
		if (suma>=12'd500)
			begin 
			vuelto_aux <= suma - 12'd500;
			fallo = 1'b0;
		end	
		else
			begin
			fallo = 1'b1;
			vuelto_aux <= suma;
		end
	end
	//Selecciona la bebida 4
	else if (sel == 3'b100)
	begin
		if (suma>=12'd700)
			begin 
			vuelto_aux <= suma - 12'd700;
			fallo = 1'b0;
		end	
		else
			begin
			fallo = 1'b1;
			vuelto_aux <= suma;
		end
	end
	
assign vuelto = vuelto_aux;	



endmodule 