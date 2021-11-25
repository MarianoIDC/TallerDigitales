module ALU_tb();
	parameter n = 32;
	logic[n-1:0] A, B;//Entradas
	logic [n-1:0] Result;//Resultado
	logic[2:0] OP; ///Selector de operadores
	logic Z,N,V,C;
   ALU #(32)DUT(A, B, OP, Result, N, Z, V, C);
	
	initial 
	begin
		  //Suma
		  #10 OP=3'b000; A = 32'b11111111111111110000000000000000; B = 32'b00000000000000001111111111111111;
        #1 
		  $display("---------------SUMA---------------");
        $display("A = %b, B = %b, S = %b, Result = %b\n", A, B, OP, Result);	  
				  
		  //Resta
		  #10 OP=3'b001; A = 32'b11111111111111111111111111111111; B = 32'b00000000000000001111111111111111;
        #1 
		  $display("---------------RESTA---------------");
        $display("A = %b, B = %b, S = %b, Result = %b\n", A, B, OP, Result);
  
		  //AND
		  #10 OP=3'b010; A = 32'b11111111111111110000000000000000; B = 32'b11111111111111110000000000000000;
        #1 
		  $display("---------------AND---------------");
        $display("A = %b, B = %b, S = %b, Result = %b\n", A, B, OP, Result);
		  		  
		  //OR
		  #10 OP=3'b011; A = 32'b11111111111111110000000000000000; B = 32'b00000000000000001111111111111111;
        #1 
		  $display("---------------OR---------------");
        $display("A = %b, B = %b, S = %b, Result = %b\n", A, B, OP, Result);	  

	end

endmodule 