module MaquinadeCafe();

logic [9:0] bebida; 

selector_bebidas (clk, rst, tipo_bebida, bebida);

disp_agua (clk, enable_agua, bebida[9:8], led_agua, enable_cafe);
disp_cafe (clk, enable_cafe, bebida[7:6], led_agua, enable_leche);
disp_leche (clk, enable_leche, bebida[5:4], led_agua, enable_chocolate);
disp_chocolate (clk, enable_chocolate, bebida[3:2], led_agua, enable_azucar);
disp_azucar (clk, enable_azucar, bebida[1:0], led_agua, enable_vuelto);


endmodule
