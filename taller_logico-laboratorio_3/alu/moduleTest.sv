module moduleTest();
    logic [3:0] a, b, c;

    modulo DUT(a, b, c);

    initial begin
        #10 a = 4'b1101; b = 4'b1010;
        #1 
        $display("a = %b, b = %b, c = %b\n", a, b, c);
        assert (c === 'b0011) else $error ("0011 failed.");
		  
        #10 a = 4'b1000; b = 4'b0011;
        #1 
        $display("a = %b, b = %b, c = %b\n", a, b, c);
        assert (c === 'b0010) else $error ("0010 failed.");
		  
        #10 a = 4'b1001; b = 4'b0010;
        #1 
        $display("a = %b, b = %b, c = %b\n", a, b, c);
        assert (c === 'b0001) else $error ("0001 failed.");
		  
        #10 a = 4'b1111; b = 4'b0110;
        #1 
        $display("a = %b, b = %b, c = %b\n", a, b, c);
        assert (c === 'b0011) else $error ("0011 failed.");
		  
    end
endmodule 