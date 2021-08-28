module divisionTest();
    logic [3:0] a, b, c;

    division DUT(a, b, c);

    initial begin
        #10 a = 4'b1101; b = 4'b1010;
        #1 
        $display("a = %b, b = %b, c = %b\n", a, b, c);
        assert (c === 'b0001) else $error ("0000 failed.");
		  
        #10 a = 4'b1000; b = 4'b0010;
        #1 
        $display("a = %b, b = %b, c = %b\n", a, b, c);
        assert (c === 'b0100) else $error ("0100 failed.");
		  
        #10 a = 4'b1001; b = 4'b0011;
        #1 
        $display("a = %b, b = %b, c = %b\n", a, b, c);
        assert (c === 'b0011) else $error ("0011 failed.");
		  
        #10 a = 4'b1111; b = 4'b0011;
        #1 
        $display("a = %b, b = %b, c = %b\n", a, b, c);
        assert (c === 'b0101) else $error ("0101 failed.");
		  
    end
endmodule 