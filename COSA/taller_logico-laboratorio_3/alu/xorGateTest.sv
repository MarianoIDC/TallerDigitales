module xorGateTest();
    logic [3:0] a, b, c;

    xorGate DUT(a, b, c);

    initial begin
        #10 a = 4'b0000; b = 4'b0000;
        #1 
        $display("a = %b, b = %b, c = %b\n", a, b, c);
        assert (c === 'b0000) else $error ("0000 failed.");
        #10 a = 4'b1111; b = 4'b0000;
        #1 
        $display("a = %b, b = %b, c = %b\n", a, b, c);
        assert (c === 'b1111) else $error ("1111 failed.");
        #10 a = 4'b0000; b = 4'b1111;
        #1 
        $display("a = %b, b = %b, c = %b\n", a, b, c);
        assert (c === 'b1111) else $error ("1111 failed.");
        #10 a = 4'b1101; b = 4'b1010;
        #1 
        $display("a = %b, b = %b, c = %b\n", a, b, c);
        assert (c === 'b0111) else $error ("0111 failed.");
        #10 a = 4'b1010; b = 4'b1111;
        #1 
        $display("a = %b, b = %b, c = %b\n", a, b, c);
        assert (c === 'b0101) else $error ("0101 failed.");
        #10 a = 4'b0101; b = 4'b1111;
        #1 
        $display("a = %b, b = %b, c = %b\n", a, b, c);
        assert (c === 'b1010) else $error ("1010 failed.");
        #10 a = 4'b1111; b = 4'b1111;
        #1
        $display("a = %b, b = %b, c = %b\n", a, b, c);
        assert (c === 'b0000) else $error ("0000 failed.");
    end
endmodule 