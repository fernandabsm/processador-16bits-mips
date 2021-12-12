
module mpc( //Mux of PC source
    pcp,
    pcj,
    choice,
    out
);
    input[15:0] pcp; //PC plus
    input[15:0] pcj; //Jump
    input choice;
    output reg[15:0] out;

    always@(*)
        if (choice == 1) begin
            out = pcj;
        end else begin
            out = pcp;
        end
    
endmodule