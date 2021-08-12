module deco7s (input [4:0] line, output [6:0] seg);

	logic A, B, C, D, E;
	
	assign A = line [4];
	assign B = line [3];
	assign C = line [2];
	assign D = line [1];
	assign E = line [0];	

	//a = B'C'D'E + AB'C'E + AB'DE' + A'B'CD'E' + A'BC'DE + A'BCD'E
	assign seg[6] = (((~B)&(~C)&(~D)&(E))|((A)&(~B)&(~C)&(E))|((A)&(~B)&(D)&(~E))|((~A)&(~B)&(C)&(~D)&(~E))|((~A)&(B)&(!C)&(D)&(E))|((!A)&(B)&(C)&(~D)&(E)));
	
	//b = AC' + AE + BDE + BCE' + B'CD'E + A'CDE'
	assign seg[5] = (((A)&(~C))|((A)&(E))|((B)&(D)&(E))|((B)&(C)&(~E))|((~B)&(C)&(~D)&(E))|((~A)&(C)&(D)&(~E)));
	
	//c = AB + BCE' + BCD + ADE + ACD'E' + A'B'C'DE'
	assign seg[4] = (((A)&(B))|((B)&(C)&(~E))|(B&C&D)|(A&D&E)|(A&C&(~D)&(~E))|((~A)&(~B)&(~C)&D&(~E)));
	
	//d= A'C'D'E + B'C'D'E + B'CD'E' + A'CDE + A'BC'DE' + AB'C'DE'
	assign seg[3] = (((~A)&(~C)&(~D)&E) | ((~B)&(~C)&(~D)&E) | ((~B)&C&(~D)&(~E)) | ((~A)&C&D&E) | ((~A)&B&(~C)&D&(~E)) | (A&(~B)&(~C)&D&(~E)));
	
	//e=A'B'E + A'C'D'E + A'B'CD' + B'CD'E + AB'C'DE'
	assign seg[2] = (((~A)&(~B)&E) | ((~A)&(~C)&(~D)&E) | ((~A)&(~B)&C&(~D)) | ((~B)&C&(~D)&E) | (A&(~B)&(~C)&D&(~E)));
	
	//f = A'B'C'E + B'C'DE' + A'B'DE + A'BCD'E
	assign seg[1] = (((~A)&(~B)&(~C)&E) | ((~B)&(~C)&D&(~E)) | ((~A)&(~B)&D&E) | ((~A)&B&C&(~D)&E));
	
	//g = A'B'C'D' + B'C'D'E' + AB'C'D + AB'DE' + A'B'CDE + A'BCD'E' + AB'CD'E
	assign seg[0] = (((~A)&(~B)&(~C)&(~D))|((~B)&(~C)&(~D)&(~E))|(A&(~B)&(~C)&D)|(A&(~B)&D&(~E))|((~A)&(~B)&C&D&E) | ((~A)&B&C&(~D)&(~E)) | (A&(~B)&C&(~D)&E));
	

	
endmodule
