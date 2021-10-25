module display_selector(input logic select,
								output logic enable);
								
assign enable = (select == 1);

endmodule 