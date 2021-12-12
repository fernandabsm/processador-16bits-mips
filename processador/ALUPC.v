
module ALUPC( //Summation of PC and 1
    clock,
    inPC,
    out
);
    input clock;
    input[15:0] inPC;
    output reg[15:0] out;

always@(posedge clock)
    out = inPC + 1;
endmodule