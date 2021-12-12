
module mac( //Mux of main ALU output accumulator data source
    inReg,
    ini,
    choice,
    out
);
    input[15:0] inReg;
    input[15:0] ini;
    input choice;
    output reg[15:0] out;

always@(*)
    if (choice == 1) begin
        out <= inReg;
    end else begin
        out <= ini;
    end
    
endmodule