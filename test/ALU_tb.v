 `timescale 1ns/1ns
 `include "../processador/ALU.v"

 module ALU_tb();
     reg[15:0] entrada1;
     reg[15:0] entrada2;
     reg[2:0] sinal_ula;
     wire[15:0] saida_ula;
     wire zero;

     ALU alu( //main ALU
         .entrada1(entrada1),
         .entrada2(entrada2),
         .sinal_ula(sinal_ula),
         .saida_ula(saida_ula),
         .zero(zero)
     );

     initial begin
       
        $dumpfile("ulaTest.vcd");
        $dumpvars(0, entrada1, entrada2, sinal_ula, saida_ula);

         $display("Testes com resultados em decimal");
         $monitor("In1 = %d, In2 = %d, OpCode = %d, Out = %d, zero = %b", entrada1, entrada2, sinal_ula, saida_ula, zero);

         // AND
         entrada1 = 16'b0000000000000110;
         entrada2 = 16'b0000000000000011;
         sinal_ula = 3'b000;
         #20;
         
         // OR
        
         entrada1 = 16'b0000000000000100;
         entrada2 = 16'b0000000000001011;
         sinal_ula = 3'b001;
         #20;

         //ADD
         entrada1 = 16'b0000000000000110;
         entrada2 = 16'b0000000000011111;
         sinal_ula = 3'b010;
         #20;

         //SUB
         entrada1 = 16'b0000000000000100;
         entrada2 = 16'b0000000000000100;
         sinal_ula = 3'b011;
         #20;

         //SUB
         entrada1 = 16'b0000000000010111;
         entrada2 = 16'b0000000000000100;
         sinal_ula = 3'b011;
         #20;
         
         $display("----------------------------------------------");

         $display("Testes SLT com Out em binario");

         $monitor("In1 = %d, In2 = %d, OpCode = %d, Out = %b, zero = %b", entrada1, entrada2, sinal_ula, saida_ula, zero);

         //SLT
         entrada1 = 16'b0000000000000100;
         entrada2 = 16'b0000000000000111;
         sinal_ula = 3'b100;
         #20;

         //SLT
         entrada1 = 16'b0000000000000101;
         entrada2 = 16'b0000000000000100;
         sinal_ula = 3'b100;
         #20;
        
     end

 endmodule