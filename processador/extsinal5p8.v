module extsinal5p8(
    entrada,
    saida
);

input[4:0] entrada;
output reg[15:0] saida;

always@(*)
    begin
        saida[15:7] = 3'b000;
        saida[6:0] = entrada;
    end

endmodule
