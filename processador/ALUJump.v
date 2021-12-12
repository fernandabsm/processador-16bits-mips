
module ALUJump( //Summation of PC and Jump addr
    inPC,
    ini,
    clock,
    out
);
input[15:0] inPC;
input[15:0] ini;
input  clock;
output reg[15:0] out;

always@(negedge clock)
    out = inPC + ini;
endmodule