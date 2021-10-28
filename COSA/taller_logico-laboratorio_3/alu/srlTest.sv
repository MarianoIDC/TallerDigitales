module srlTest();
    parameter N = 4;
    logic [N-1:0] a, b, c;

    srl DUT(a, b, c);

    initial begin
        #10 a = 1; b = 1;
        #1 
        $display("a = %b, b = %b, c = %b\n", a, b, c);
        assert (c === 'b0000) else $error ("0000 failed.");
        #10 a = 2; b = 1;
        #1 
        $display("a = %b, b = %b, c = %b\n", a, b, c);
        assert (c === 'b0001) else $error ("0001 failed.");
        #10 a = 3; b = 2;
        #1 
        $display("a = %b, b = %b, c = %b\n", a, b, c);
        assert (c === 'b0000) else $error ("0000 failed.");
        #10 a = 2; b = 2;
        #1 
        $display("a = %b, b = %b, c = %b\n", a, b, c);
        assert (c === 'b0000) else $error ("0000 failed.");
        #10 a = 1; b = 2;
        #1 
        $display("a = %b, b = %b, c = %b\n", a, b, c);
        assert (c === 'b0000) else $error ("0000 failed.");
        #10 a = 2; b = 0;
        #1 
        $display("a = %b, b = %b, c = %b\n", a, b, c);
        assert (c === 'b0010) else $error ("0010 failed.");
        #10 a = 2; b = 0;
        #1 
        $display("a = %b, b = %b, c = %b\n", a, b, c);
        assert (c === 'b0010) else $error ("0010 failed.");
    end
endmodule 