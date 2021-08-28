module orTest();
    logic [3:0] A,B,S;

    orN DUT(A,B,S);

    initial begin
        #10 A = 4'b0000; B = 4'b0000;
        #1 
        $display("A = %b, B = %b, S = %b\n", A, B, S);
        assert (S === 'b0000) else $error ("0000 failed.");
        #10 A = 4'b1111; B = 4'b0000;
        #1 
        $display("A = %b, B = %b, S = %b\n", A, B, S);
        assert (S === 'b1111) else $error ("1111 failed.");
        #10 A = 4'b0000; B = 4'b1111;
        #1 
        $display("A = %b, B = %b, S = %b\n", A, B, S);
        assert (S === 'b1111) else $error ("1111 failed.");
        #10 A = 4'b1101; B = 4'b1010;
        #1 
        $display("A = %b, B = %b, S = %b\n", A, B, S);
        assert (S === 'b1111) else $error ("1111 failed.");//HERE
        #10 A = 4'b1010; B = 4'b1111;
        #1 
        $display("A = %b, B = %b, S = %b\n", A, B, S);
        assert (S === 'b1111) else $error ("1111 failed.");
        #10 A = 4'b0101; B = 4'b1101;
        #1 
        $display("A = %b, B = %b, S = %b\n", A, B, S);
        assert (S === 'b1101) else $error ("1101 failed.");
        #10 A = 4'b1000; B = 4'b1001;
        #1
        $display("A = %b, B = %b, S = %b\n", A, B, S);
        assert (S === 'b1001) else $error ("1001 failed.");
    end
endmodule 