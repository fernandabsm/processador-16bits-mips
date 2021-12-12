module memorydata (
    clock, Rm, Wm, address, RegVal,Data_out
);
    input clock, Rm, Wm;         // Escrita ou Leitura
    input [15:0]address;        // Endereço
    input [15:0]RegVal;    // dado para escrita
    output reg [15:0] Data_out; // Resultado da Leitura da memoria
    
    reg [15:0] mem[512:0];    // Memoria de 16 bits e x posições

    always @(negedge clock) begin
        if (Wm==1) begin
            mem[address] = RegVal;
        end
    end
    
    always @(*)begin
        if (Rm==1) begin
            Data_out = mem[address];
        end 
    end
endmodule
