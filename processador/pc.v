module pc (
    input clock, input stall,
    input wire[15:0] novoEnd,
    output reg[15:0] endAtual
);

initial begin
    endAtual = 16'b00000000;
end

always@(negedge clock)
    if (stall == 1) begin
        endAtual = novoEnd;    
    end
endmodule

