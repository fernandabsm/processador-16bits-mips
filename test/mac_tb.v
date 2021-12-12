`timescale 1ns/1ns
`include "../processador/mac.v"


module mac_tb;
    reg [15:0]inReg; 
    reg [15:0]ini; 
    reg choice;
    wire[15:0] out;

    mac mux( 
        inReg,
        ini,
        choice,
        out
    );

    initial begin
        $monitor("inReg = %d, ini = %d, choice = %b, out = %d", inReg, ini, choice, out);
        //$dumpfile ("testbench/ACControl.vcd");    
	    //$dumpvars(0, ACControl_tb);

        inReg = 16'b0000000000000010;
        ini = 16'b0000000000011100;
        choice = 1;

        #20
        inReg = 16'b0000000000011110;
        ini = 16'b0000000000000111;
        choice = 0;


        #20
        $monitor("test completed");
    end

endmodule