module subTest();
    logic [3:0] A, B; 
	 logic [3:0] S;
	 logic Sign;

    sub4bits DUT(A, B, S,Sign);

    initial begin
        #10 A = 4'b1101; B = 4'b0001;
        #1 
        $display("A = %b, B = %b, S = %b\n", A, B, S);
        assert (S === 'b1100) else $error ("1100 failed.");
		  
        #10 A = 4'b1000; B = 4'b0010;
        #1 
        $display("A = %b, B = %b, S = %b\n",A, B, S);
        assert (S === 'b0110) else $error ("0110 failed.");
		  
        #10 A = 4'b1001; B = 4'b0011;
        #1 
        $display("A = %b, B = %b, S = %b\n", A,B,S);
        assert (S === 'b0110) else $error ("0110 failed.");
		  
        #10 A = 4'b0011; B = 4'b1111;
        #1 
        $display("A = %b, B = %b, S = %b\n", A,B,S);
        assert (S === 'b1100) else $error ("1100 failed.");
		  
		  
		  
		  
		  #10 A = 4'b0011; B = 4'b0010;
        #1 
        $display("A = %b, B = %b, S = %b\n", A, B, S);
        assert (S === 'b1010) else $error ("1010 failed.");
		  
		  #10 A = 4'b0111; B = 4'b0011;
        #1 
        $display("A = %b, B = %b, S = %b\n", A, B, S);
        assert (S === 'b1010) else $error ("1010 failed.");
		  
		  
		  #10 A = 4'b0111; B = 4'b0110;
        #1 
        $display("A = %b, B = %b, S = %b\n", A, B, S);
        assert (S === 'b1010) else $error ("1010 failed.");
		  
		  #10 A = 4'b1000; B = 4'b0011;
        #1 
        $display("A = %b, B = %b, S = %b\n", A, B, S);
        assert (S === 'b1010) else $error ("1010 failed.");
		  
    end
endmodule 