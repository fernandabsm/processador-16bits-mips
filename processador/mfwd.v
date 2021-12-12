
module mfwd( //Mux of FWD
    base,
    acout,
    mem,
    choice,
    out
);
    input[15:0] base; //PC plus
    input[15:0] acout; //Jump
    input[15:0] mem;

    input [1:0] choice;
    output reg[15:0] out;

    always@(*)
        if (choice == 2'b00) begin
            out = base;
        end else if (choice == 2'b01) begin
            out = acout;
        end else begin
            out = mem;
        end
    
endmodule