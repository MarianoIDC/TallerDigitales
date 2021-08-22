/*

    Operaciones:
        Aritmeticas:
            ...Suma
            ...Resta
            ...Division
            ...Multiplicacion
            ...Modulo
        Logicas:
            ...AND
            ...OR
            ...XOR
            ...Shift_Left
            ...Shift_Rigth

*/


module ALU (parameter P = 4;)(A, B, OP, RES, N, Z, C, V);

//Mux Selector
Mux mux_sel ();


//operaciones aritmeticas
Suma suma ();
Resta resta();
Division div ();
Multi multi ();
Modulo modulo ();

//operaciones logicas
AND_Gate and_gate ();
OR_Gate or_gate ();
XOR_Gate xor_gate ();
ShifL sl ();
ShiftR sr ();




    
endmodule