module aluTest();
	logic[3:0] A, B;//Entradas
	logic [3:0] Q;//Resultado
	logic[3:0] S; ///Selector de operadores
	logic Z,N,V,C;
   alu DUT(A, B,S, Q,N,Z,V,C);
	initial begin
       

		  #10 A = 4'b0100; B = 4'b0011; S=4'b0000;
        #1 
		  $display("---------------SUMADOR---------------");
        $display("A = %b, B = %b, S = %b, Q = %b\n", A, B, S,Q);
        assert (Q === 'b0111) else $error ("0111 failed.");
		  
		  #10 A = 4'b0010; B = 4'b0000; S=4'b0000;
        #1 
		  $display("---------------SUMADOR---------------");
        $display("A = %b, B = %b, S = %b, Q = %b\n", A, B, S,Q);
        assert (Q === 'b0111) else $error ("0111 failed.");
		  
		  #10 A = 4'b1000; B = 4'b0010;
        #1 
        $display("A = %b, B = %b, S = %b, Q = %b\n", A, B, S,Q);
        assert (Q === 'b1010) else $error ("1010 failed.");
		  
        #10 A = 4'b1001; B = 4'b0011;
        #1 
        $display("A = %b, B = %b, S = %b, Q = %b\n", A, B, S,Q);
        assert (Q === 'b1100) else $error ("1100 failed.");
		  
        #10 A = 4'b1111; B = 4'b0011;
        #1 
        $display("A = %b, B = %b, S = %b, Q = %b\n", A, B, S,Q);
        assert (Q === 'b0010) else $error ("Q0010 failed.");//vERIFICAR FLAG ACARREO
		  
		  
		  #10 S=4'b0001; A = 4'b0100; B = 4'b0011;
        #1 
		  $display("---------------RESTADOR---------------");
        $display("A = %b, B = %b, S = %b, Q = %b\n", A, B, S,Q);
        assert (Q === 'b0001) else $error ("0001 failed.");
		  
		  #10 A = 4'b1000; B = 4'b0010;
        #1 
        $display("A = %b, B = %b, S = %b, Q = %b\n", A, B, S,Q);
        assert (Q === 'b0110) else $error ("0110 failed.");
		  
        #10 A = 4'b1001; B = 4'b0011;
        #1 
        $display("A = %b, B = %b, S = %b, Q = %b\n", A, B, S,Q);
        assert (Q === 'b0110) else $error ("0110 failed.");
		  
        #10 A = 4'b0011; B = 4'b1111;
        #1 
        $display("A = %b, B = %b, S = %b, Q = %b\n", A, B, S,Q);
        assert (Q === 'b1100) else $error ("1100 failed."); //VERIFICAR FLAG NEGATIVO
		  
		  
		  
		  
		  #10 S=4'b0010; A = 4'b1101; B = 4'b1010;
        #1 
		  $display("---------------MULTIPLICACION---------------");
        $display("A = %b, B = %b, Q = %b\n, V = %b\n", A, B, Q, V);
        assert (Q === 'b0010) else $error ("0010 failed.");
		  
        #10 A = 4'b1000; B = 4'b0010;
        #1 
        $display("A = %b, B = %b, Q = %b\n, Z= %b\n ,  V= %b\n", A, B, Q, Z, V);
        assert (Q === 'b0000) else $error ("0000 failed.");
		  
        #10 A = 4'b1001; B = 4'b0011;
        #1 
        $display("A = %b, B = %b, Q = %b\n, V = %b\n", A, B, Q, V);
        assert (Q === 'b1011) else $error ("1011 failed.");
		  
        #10 A = 4'b0011; B = 4'b0001;
        #1 
        $display("A = %b, B = %b, Q = %b\n, V = %b\n", A, B, Q, V);
        assert (Q === 'b0011) else $error ("0011 failed.");
		  
		  
		  
		  
		  #10 S=4'b0011; A = 4'b1101; B = 4'b1010;
        #1 
		  $display("---------------DIVISION---------------");
        $display("A = %b, B = %b, Q = %b\n", A, B, Q);
        assert (Q === 'b0001) else $error ("0001 failed.");
		  
        #10 A = 4'b1000; B = 4'b0010;
        #1 
        $display("A = %b, B = %b, Q = %b\n", A, B, Q);
        assert (Q === 'b0100) else $error ("0100 failed.");
		  
        #10 A = 4'b1001; B = 4'b0011;
        #1 
        $display("A = %b, B = %b, Q = %b\n", A, B, Q);
        assert (Q === 'b0011) else $error ("0011 failed.");
		  
        #10 A = 4'b1111; B = 4'b0011;
        #1 
        $display("A = %b, B = %b, Q = %b\n", A, B, Q);
        assert (Q === 'b0101) else $error ("0101 failed.");
		  
		  
		  
		  
		  #10 S=4'b0100; A = 4'b1101; B = 4'b1010;
        #1 
		  $display("---------------MODULO---------------");
        $display("A = %b, B = %b, Q = %b\n", A, B, Q);
        assert (Q === 'b0011) else $error ("0011 failed.");
		  
        #10 A = 4'b1000; B = 4'b0011;
        #1 
        $display("A = %b, B = %b, Q = %b\n", A, B, Q);
        assert (Q === 'b0010) else $error ("0010 failed.");
		  
        #10 A = 4'b1001; B = 4'b0010;
        #1 
        $display("A = %b, B = %b, Q = %b\n", A, B, Q);
        assert (Q === 'b0001) else $error ("0001 failed.");
		  
        #10 A = 4'b1111; B = 4'b0110;
        #1 
        $display("A = %b, B = %b, Q = %b\n", A, B, Q);
        assert (Q === 'b0011) else $error ("0011 failed.");
		  
		  
		  
		  #10 S=4'b0101; A = 4'b0100; B = 4'b0110;
        #1 
		  $display("---------------AND GATE---------------");
        $display("A = %b, B = %b, Q = %b\n", A, B, Q);
        assert (Q === 'b0100) else $error ("0100 failed.");
		  
        #10 A = 4'b1111; B = 4'b0110;
        #1 
        $display("A = %b, B = %b, Q = %b\n", A, B, Q);
        assert (Q === 'b0110) else $error ("0110 failed.");
		  
        #10 A = 4'b0000; B = 4'b1111;
        #1 
        $display("A = %b, B = %b, Q = %b\n", A, B, Q);
        assert (Q === 'b0000) else $error ("0000 failed.");
		  
        #10 A = 4'b1010; B = 4'b1111;
        #1 
        $display("A = %b, B = %b, Q = %b\n", A, B, Q);
        assert (Q === 'b1010) else $error ("1010 failed.");
		  
		  
		  
		  
		  #10 S=4'b0110;A = 4'b1101; B = 4'b1010;
        #1 
		  $display("---------------OR GATE---------------");
        $display("A = %b, B = %b, S = %b, Q = %b\n", A, B, S,Q);
        assert (Q === 'b1111) else $error ("1111 failed.");
        #10 A = 4'b1010; B = 4'b1111;
        #1 
        $display("A = %b, B = %b, S = %b, Q = %b\n", A, B, S,Q);
        assert (Q === 'b1111) else $error ("1111 failed.");
        #10 A = 4'b0101; B = 4'b1101;
        #1 
        $display("A = %b, B = %b, S = %b, Q = %b\n", A, B, S,Q);
        assert (Q === 'b1101) else $error ("1101 failed.");
        #10 A = 4'b1000; B = 4'b1001;
        #1
        $display("A = %b, B = %b, S = %b, Q = %b\n", A, B, S,Q);
        assert (Q === 'b1001) else $error ("1001 failed.");
		  
		  
		  
		  
		  #10 S=4'b0111; A = 4'b0000; B = 4'b1111;
        #1 
		  $display("---------------XOR GATE---------------");
        $display("A = %b, B = %b, Q = %b\n", A, B, Q);
        assert (Q === 'b1111) else $error ("1111 failed.");
        #10 A = 4'b1101; B = 4'b1010;
        #1 
        $display("A = %b, B = %b, Q = %b\n", A, B, Q);
        assert (Q === 'b0111) else $error ("0111 failed.");
        #10 A = 4'b1010; B = 4'b1111;
        #1 
        $display("A = %b, B = %b, Q = %b\n", A, B, Q);
        assert (Q === 'b0101) else $error ("0101 failed.");
        #10 A = 4'b0101; B = 4'b1111;
        #1 
        $display("A = %b, B = %b, Q = %b\n", A, B, Q);
        assert (Q === 'b1010) else $error ("1010 failed.");
		  
		  
		  
		  
		  #10 S=4'b1000; A = 4'b1000; B = 4'b0001;
        #1 
		  $display("---------------SHIFT LEFT---------------");
        $display("A = %b, B = %b, Q = %b\n", A, B, Q);
        assert (Q === 'b0000) else $error ("0000 failed.");
		  
        #10 A = 4'b0110; B = 4'b0001;
        #1 
        $display("A = %b, B = %b, Q = %b\n", A, B, Q);
        assert (Q === 'b1100) else $error ("1100 failed.");
		  
        #10 A = 4'b1010; B = 4'b0010;
        #1 
        $display("A = %b, B = %b, Q = %b\n", A, B, Q);
        assert (Q === 'b1000) else $error ("0101 failed.");
		  
        #10 A = 4'b0101; B = 4'b0010;
        #1 
        $display("A = %b, B = %b, Q = %b\n", A, B, Q);
        assert (Q === 'b0100) else $error ("1010 failed.");
		 
		  
		  
		  
		  
		  #10 S=4'b1001; A = 4'b0010; B = 4'b0001;
        #1 
		  $display("---------------SHIFT RIGHT---------------");
		  $display("A = %b, B = %b, Q = %b\n", A, B, Q);
        assert (Q === 'b0001) else $error ("0001 failed.");
		  
        #10 A = 4'b1101; B = 4'b0010;
        #1 
        $display("A = %b, B = %b, Q = %b\n", A, B, Q);
        assert (Q === 'b0011) else $error ("0011 failed.");
		  
        #10 A = 4'b1010; B = 4'b0001;
        #1 
        $display("A = %b, B = %b, Q = %b\n", A, B, Q);
        assert (Q === 'b0101) else $error ("0101 failed.");
		  
        #10 A = 4'b0101; B = 4'b0010;
        #1 
        $display("A = %b, B = %b, Q = %b\n", A, B, Q);
        assert (Q === 'b0001) else $error ("0001 failed.");



	end
endmodule 