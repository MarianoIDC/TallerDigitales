
module muxTest();
    logic [4:0] I0,I1,I2,I3,I4,I5,I6,I7,I8,I9;
   logic [3:0] S;
   logic [4:0] Q;

    muxN DUT(I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,S,Q);

    initial begin
        #1 I0=5'b10000;I1=5'b10001;I2=5'b00100;I3=5'b00010;I4=5'b00001;I5=5'b01010;I6=5'b01111;I7=5'b01010;I8=5'b00011;I9=5'b01000;
        #10 S= 4'b0000;
		  #1
        $display("S = %b, Q = %b\n", S,Q);
        assert (Q === 'b10000) else $error ("10000 failed.");
        #10 S= 4'b0001;
        #1 
        $display("S = %b, Q = %b\n", S,Q);
        assert (Q === 'b10001) else $error ("10001 failed.");
      #10 S= 4'b0011;//HERE
        #1 
        $display("S = %b, Q = %b\n", S,Q);
        assert (Q === 'b00010) else $error ("00010 failed.");
      #10 S= 4'b1001;
        #1 
        $display("S = %b, Q = %b\n", S,Q);
        assert (Q === 'b01000) else $error ("01000 failed.");
       
    end
endmodule