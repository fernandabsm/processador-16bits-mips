`timescale 1ns/1ns
`include "../processador/mrs.v"


module mrs_tb;
    reg [15:0]inAc; 
    reg [15:0]inMem; 
    reg choice;
    wire [15:0]out;

    mrs mux( 
        inAc,
        inMem,
        choice,
        out
    );

    initial begin
        $monitor("inAc = %d, inMem = %d, choice = %b, out = %d", inAc, inMem, choice, out);
        //$dumpfile ("testbench/ACControl.vcd");    
	    //$dumpvars(0, ACControl_tb);

        inAc = 16'b0000000001011010;
        inMem = 16'b0000000010111100;
        choice = 1;

        #20
        inAc = 16'b0000000001011111;
        inMem = 16'b0000000010111100;
        choice = 0;

        #20
        $monitor("test completed");
    end

endmodule