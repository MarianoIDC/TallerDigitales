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
Suma suma ();       //S1
Resta resta();      //S2
Division div ();    //S3
Multi multi ();     //S4
Modulo modulo ();   //S5

//operaciones logicas
AND_Gate and_gate ();
OR_Gate or_gate ();
XOR_Gate xor_gate ();
ShifL sl ();
ShiftR sr ();




    
endmodule