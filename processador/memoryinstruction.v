module memoryinstruction(
    clock,
    pccounter,
    saidaInstrucao
);

    input clock;
    input [15:0] pccounter;
    output reg [15:0] saidaInstrucao;

    reg [15:0] armazenarinstrucoes [512:0];

    initial begin
        armazenarinstrucoes[0] <= 16'b0000000000000000;
        armazenarinstrucoes[1] <= 16'b0000000000100111;  // MFI 7
        armazenarinstrucoes[2] <= 16'b0000000000000010;  // SUM $s0
        armazenarinstrucoes[3] <= 16'b000000001001000;  // MB $s1
        armazenarinstrucoes[4] <= 16'b0000000000101110;  // MFI 14
        armazenarinstrucoes[5] <= 16'b0000000000010010;  // SUM $t0
        armazenarinstrucoes[6] <= 16'b0000000011010000;  // MB $t0
        armazenarinstrucoes[7] <= 16'b0000000000101000;  // MFI 8
        armazenarinstrucoes[8] <= 16'b0000000000001001;  // OR $s1
        armazenarinstrucoes[9] <= 16'b0000000011011000;  // MB $t1
        armazenarinstrucoes[10] <= 16'b0000000000100000; // MFI 0
        armazenarinstrucoes[11] <= 16'b0000000000000010; // SUM $s0
        armazenarinstrucoes[12] <= 16'b0000000001010000; // MW $t0
        armazenarinstrucoes[13] <= 16'b0000000001100000; // MR $s0
        armazenarinstrucoes[14] <= 16'b0000000000100010; // MFI 2
        armazenarinstrucoes[15] <= 16'b0000000000011001; // OR $t1
        armazenarinstrucoes[16] <= 16'b0000000000011000; // MB $s1
        armazenarinstrucoes[17] <= 16'b0000000000100110; // MFI 6
        armazenarinstrucoes[18] <= 16'b0000000000011000; // AND $s1
        armazenarinstrucoes[19] <= 16'b0000000011010000; // MB $t0
        armazenarinstrucoes[20] <= 16'b0000000000000000; //
        armazenarinstrucoes[21] <= 16'b0000000000000000; //
        armazenarinstrucoes[22] <= 16'b0000000000000000; //
        armazenarinstrucoes[23] <= 16'b0000000000000000; //

    end

    always @(posedge clock)begin
        saidaInstrucao = armazenarinstrucoes[pccounter];
    end
 
endmodule 