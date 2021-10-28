module multiplyTest();
    logic [3:0] a, b; 
	 logic [3:0]c;
	 logic co;

    multiplicacion DUT(a, b, c, co);

    initial begin
        #10 a = 4'b1101; b = 4'b1010;
        #1 
        $display("a = %b, b = %b, c = %b\n, co = %b\n", a, b, c, co);
        //assert (c === 'b0010, co ===') else $error ("0010 failed.");
		  
        #10 a = 4'b1000; b = 4'b0010;
        #1 
        $display("a = %b, b = %b, c = %b\n,  co= %b\n", a, b, c, co);
        //assert (c === 'b0000) else $error ("0000 failed.");
		  
        #10 a = 4'b1001; b = 4'b0011;
        #1 
        $display("a = %b, b = %b, c = %b\n, co = %b\n", a, b, c, co);
        //assert (c === 'b1011) else $error ("1011 failed.");
		  
        #10 a = 4'b1111; b = 4'b0011;
        #1 
        $display("a = %b, b = %b, c = %b\n, co = %b\n", a, b, c, co);
        //assert (c === 'b1101) else $error ("1101 failed.");
		  
		  #10 a = 4'b0011; b = 4'b001;
        #1 
        $display("a = %b, b = %b, c = %b\n, co = %b\n", a, b, c, co);
		  
    end
endmodule 