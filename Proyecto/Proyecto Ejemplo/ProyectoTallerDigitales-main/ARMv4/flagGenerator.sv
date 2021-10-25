module flagGenerator #(parameter M = 4)(input logic [M-1:0] A, B, muxResultado, input logic [3:0] ALUControl, input logic Cout, MultV, output logic Z, N, V, C);

    logic resultZ, resultC, resultV, resultN;
    logic signControl;

    always_comb begin
        signControl = ~& muxResultado[1];
        resultZ = &(~muxResultado);
        resultN = muxResultado[M-1];
        resultC = signControl & Cout;
        resultV = (ALUControl[0] ^ A[M-1] ^ B[M-1]) & (A[M-1] ^ muxResultado[M-1]) & signControl;
    end

    assign Z = resultZ;
    assign N = resultN;
    assign C = resultC;
    assign V = resultV;

endmodule 