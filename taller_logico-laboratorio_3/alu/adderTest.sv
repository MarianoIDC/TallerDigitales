module adderTest();
    logic [3:0] A, B; 
	 logic [4:0] S;

    adder4bits DUT(A, B, S);

    initial begin
		  #10 A = 4'b0000; B = 4'b0001;
        #1 
        $display("A = %b, B = %b, S = %b\n", A, B, S);
        assert (S === 'b00001) else $error ("0001 failed.");
        #10 A = 4'b1101; B = 4'b0001;
        #1 
        $display("A = %b, B = %b, S = %b\n", A, B, S);
        assert (S === 'b1110) else $error ("1110 failed.");
		  
        #10 A = 4'b1000; B = 4'b0010;
        #1 
        $display("A = %b, B = %b, S = %b\n",A, B, S);
        assert (S === 'b1010) else $error ("1010 failed.");
		  
        #10 A = 4'b1001; B = 4'b0011;
        #1 
        $display("A = %b, B = %b, S = %b\n", A,B,S);
        assert (S === 'b1100) else $error ("1100 failed.");
		  
        #10 A = 4'b1111; B = 4'b0011;
        #1 
        $display("A = %b, B = %b, S = %b\n", A, B, S);
        assert (S === 'b0010) else $error ("0010 failed.");
		  
    end
endmodule 