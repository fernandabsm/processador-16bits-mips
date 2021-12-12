`timescale 1ns/1ns
`include "../processador/pc.v"

module pc_tb;

reg[15:0] novoEnd;
wire[15:0] endAtual;
reg[0:0] clock;
reg[0:0] stall;

pc uut(clock, stall, novoEnd, endAtual);

initial begin
        //$dumpfile ("testbench/pc_tb.vcd");    
		//$dumpvars(0, pc_tb);
        #20;

        novoEnd = 15'b000000000000010;
        #20;

        novoEnd = 15'b000000000000011;
        #20;

        novoEnd = 15'b000000000000100;
        #20;

        $display("Test Completed");
    end

endmodule
