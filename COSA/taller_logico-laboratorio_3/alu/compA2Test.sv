module compA2Test();
    logic [3:0] A; 
	 logic [3:0] S;

    compA2 DUT(A, S);

    initial begin
        #10 A = 4'b1101;
        #1 
        $display("A = %b, S = %b\n", A,S);
		  
		  $display("A = %b\n", ~A);
        assert (S === 'b0011) else $error ("0011 failed.");
		  
		  #10 A = 4'b1111;
        #1 
        $display("A = %b, S = %b\n", A,S);
		  
		  $display("A = %b\n", ~A);
        assert (S === 'b0001) else $error ("0001 failed.");
		  #10 A = 4'b1101;
        #1 
        $display("A = %b, S = %b\n", A,S);
		  
		  $display("A = %b\n", ~A);
        assert (S === 'b0011) else $error ("0011 failed.");
		  #10 A = 4'b1001;
        #1 
		 
        $display("A = %b, S = %b\n", A,S);
		  
		  $display("A = %b\n", ~A);
        assert (S === 'b0111) else $error ("0111 failed.");
	end
endmodule