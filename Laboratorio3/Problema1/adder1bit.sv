module adder1bit (A,B,Ci,Co,S);
	input logic A,B,Ci;
	output logic Co,S;
	wire w1,w2,w3;
	xor G1(w1,A,B);
	xor G2(S,w1,Ci);
	and G3(w2,w1,Ci);
	and G4(w3,A,B);
	or G5(Co,w2,w3);
endmodule 