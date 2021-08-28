module andTest();
    logic [3:0] A,B,S;

    andN DUT(A,B,S);

    initial begin
        #10 A = 4'b0000; B = 4'b0000;
        #1 
        $display("A = %b, B = %b, S = %b\n", A, B, S);
        assert (S === 'b0000) else $error ("0000 failed.");
		  
        #10 A = 4'b1111; B = 4'b0110;
        #1 
        $display("A = %b, B = %b, S = %b\n", A, B, S);
        assert (S === 'b0110) else $error ("0110 failed.");
		  
        #10 A = 4'b0000; B = 4'b1111;
        #1 
        $display("A = %b, B = %b, S = %b\n", A, B, S);
        assert (S === 'b0000) else $error ("0000 failed.");
		  
        
        #10 A = 4'b1010; B = 4'b1111;
        #1 
        $display("A = %b, B = %b, S = %b\n", A, B, S);
        assert (S === 'b1010) else $error ("1010 failed.");
    
    end
endmodule 