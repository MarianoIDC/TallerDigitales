module ALU_tb();
	parameter n = 4;
	logic[n-1:0] A, B;//Entradas
	logic [n-1:0] Result;//Resultado
	logic[2:0] OP; ///Selector de operadores
	logic Z,N,V,C;
   ALU #(4)DUT(A, B, OP, Result ,N ,Z ,V ,C, seg0, seg1, seg2, seg3);
	
	initial 
	begin
	
			//las variables que voy a probar
		  #10 A = 4'b0100; B = 4'b0011; OP=3'b000;
        #1
			//imprime en pantalla
		  $display("---------------SUMADOR---------------");
        $display("A = %b, B = %b, S = %b, Result = %b\n", A, B, OP,Result);
		  //assert--->> Result lo que espero que de el resultado
		  //$error--->> El mensaje si falla
        assert (Result === 'b0111) else $error ("0111 failed.");
		  
		  #10 A = 4'b0000; B = 4'b0000;
        #1 
        $display("A = %b, B = %b, S = %b, Result = %b\n", A, B, OP,Result);
        assert (Result === 'b0000) else $error ("0000 failed.");
		  
		  #10 A = 4'b1000; B = 4'b0010;
        #1 
        $display("A = %b, B = %b, S = %b, Result = %b\n", A, B, OP,Result);
        assert (Result === 'b1010) else $error ("1010 failed.");
		  
        #10 A = 4'b1001; B = 4'b0011;
        #1 
        $display("A = %b, B = %b, S = %b, Result = %b\n", A, B, OP,Result);
        assert (Result === 'b1100) else $error ("1100 failed.");
		  
        #10 A = 4'b1111; B = 4'b0011;
        #1 
        $display("A = %b, B = %b, S = %b, Result = %b\n", A, B, OP,Result);
        assert (Result === 'b0010) else $error ("Result0010 failed.");//vERIFICAR FLAG ACARREO
		  
		  
		  #10 OP=3'b001; A = 4'b0100; B = 4'b0011;
        #1 
		  $display("---------------RESTADOR---------------");
        $display("A = %b, B = %b, S = %b, Result = %b\n", A, B, OP,Result);
        assert (Result === 'b0001) else $error ("001 failed.");
		  
		  #10 A = 4'b1000; B = 4'b0010;
        #1 
        $display("A = %b, B = %b, S = %b, Result = %b\n", A, B, OP,Result);
        assert (Result === 'b0110) else $error ("0110 failed.");
		  
        #10 A = 4'b1001; B = 4'b0011;
        #1 
        $display("A = %b, B = %b, S = %b, Result = %b\n", A, B, OP,Result);
        assert (Result === 'b0110) else $error ("0110 failed.");
		  
        #10 A = 4'b0011; B = 4'b1111;
        #1 
        $display("A = %b, B = %b, S = %b, Result = %b\n", A, B, OP,Result);
        assert (Result === 'b1100) else $error ("1100 failed."); //VERIFICAR FLAG NEGATIVO
		  
		  
		
        #1 
		  $display("---------------AND GATE---------------");
		  
        #10;OP=3'b010; A = 4'b1111; B = 4'b0110;
        #1 
        $display("A = %b, B = %b, Result = %b\n", A, B, Result);
        assert (Result === 'b0110) else $error ("0110 failed.");
		  
        #10 A = 4'b0000; B = 4'b1111;
        #1 
        $display("A = %b, B = %b, Result = %b\n", A, B, Result);
        assert (Result === 'b0000) else $error ("0000 failed.");
		  
        #10 A = 4'b1010; B = 4'b1111;
        #1 
        $display("A = %b, B = %b, Result = %b\n", A, B, Result);
        assert (Result === 'b1010) else $error ("1010 failed.");
		  
		  
		  
		  
		  #10 OP=3'b011;A = 4'b1101; B = 4'b1010;
        #1 
		  $display("---------------OR GATE---------------");
        $display("A = %b, B = %b, S = %b, Result = %b\n", A, B, OP,Result);
        assert (Result === 'b1111) else $error ("1111 failed.");
        #10 A = 4'b1010; B = 4'b1111;
        #1 
        $display("A = %b, B = %b, S = %b, Result = %b\n", A, B, OP,Result);
        assert (Result === 'b1111) else $error ("1111 failed.");
        #10 A = 4'b0101; B = 4'b1101;
        #1 
        $display("A = %b, B = %b, S = %b, Result = %b\n", A, B, OP,Result);
        assert (Result === 'b1101) else $error ("1101 failed.");
        #10 A = 4'b1000; B = 4'b1001;
        #1
        $display("A = %b, B = %b, S = %b, Result = %b\n", A, B, OP,Result);
        assert (Result === 'b1001) else $error ("1001 failed.");
		  
		  
		  
		  
		  #10 OP=3'b100; A = 4'b0000; B = 4'b1111;
        #1 
		  $display("---------------XOR GATE---------------");
        $display("A = %b, B = %b, Result = %b\n", A, B, Result);
        assert (Result === 'b1111) else $error ("1111 failed.");
        #10 A = 4'b1101; B = 4'b1010;
        #1 
        $display("A = %b, B = %b, Result = %b\n", A, B, Result);
        assert (Result === 'b0111) else $error ("0111 failed.");
        #10 A = 4'b1010; B = 4'b1111;
        #1 
        $display("A = %b, B = %b, Result = %b\n", A, B, Result);
        assert (Result === 'b0101) else $error ("0101 failed.");
        #10 A = 4'b0101; B = 4'b1111;
        #1 
        $display("A = %b, B = %b, Result = %b\n", A, B, Result);
        assert (Result === 'b1010) else $error ("1010 failed.");
		  
		  
		  
		  
		  #10 OP=3'b101; A = 4'b1000; B = 4'b0001;
        #1 
		  $display("---------------SHIFT LEFT---------------");
        $display("A = %b, B = %b, Result = %b\n", A, B, Result);
        assert (Result === 'b0000) else $error ("0000 failed.");
		  
        #10 A = 4'b0110; B = 4'b0001;
        #1 
        $display("A = %b, B = %b, Result = %b\n", A, B, Result);
        assert (Result === 'b1100) else $error ("1100 failed.");
		  
        #10 A = 4'b1010; B = 4'b0010;
        #1 
        $display("A = %b, B = %b, Result = %b\n", A, B, Result);
        assert (Result === 'b1000) else $error ("0101 failed.");
		  
        #10 A = 4'b0101; B = 4'b0010;
        #1 
        $display("A = %b, B = %b, Result = %b\n", A, B, Result);
        assert (Result === 'b0100) else $error ("1010 failed.");
		 
		  
		  
		  
		  
		  #10 OP=3'b110; A = 4'b0010; B = 4'b0001;
        #1 
		  $display("---------------SHIFT RIGHT---------------");
		  $display("A = %b, B = %b, Result = %b\n", A, B, Result);
        assert (Result === 'b0001) else $error ("0001 failed.");
		  
        #10 A = 4'b1101; B = 4'b0010;
        #1 
        $display("A = %b, B = %b, Result = %b\n", A, B, Result);
        assert (Result === 'b0011) else $error ("0011 failed.");
		  
        #10 A = 4'b1010; B = 4'b0001;
        #1 
        $display("A = %b, B = %b, Result = %b\n", A, B, Result);
        assert (Result === 'b0101) else $error ("0101 failed.");
		  
        #10 A = 4'b0101; B = 4'b0010;
        #1 
        $display("A = %b, B = %b, Result = %b\n", A, B, Result);
        assert (Result === 'b0001) else $error ("0001 failed.");
	
	
	end


endmodule
