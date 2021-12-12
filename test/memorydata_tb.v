`include "../processador/memorydata.v"
`timescale 1ns/1ns

module memorydata_tb ();

    reg Rm, Wm;         // Escrita ou Leitura
    reg [15:0]address;        // Endereço
    reg [15:0]RegVal;    // dado para escrita
    wire [15:0]Data_out; // Resultado da Leitura da memoria
    
    reg [15:0] mem[15:0];

    memorydata md(.Rm(Rm), .Wm(Wm), .address(address), .RegVal(RegVal),.Data_out(Data_out));

    initial begin
        $dumpfile("memorydata_tb.vcd");
        $dumpvars(0,memorydata_tb);
        
        #5 // Escrita em 00
           // Tempo 05
        address=16'b0000000000000000;
        RegVal =16'b0000000000001111;
        Wm=1;
        Rm=0;
        $monitor("Wm = %b,\t Rm = %d, address = %d,\t RegVal= %d,\t Data_out = %d", Wm, Rm, address, RegVal, Data_out);
        #5 // Escrita em 01
           // Tempo 10
        address=16'b0000000000000001;
        RegVal =16'b0000000000001110;
        Wm=1;
        Rm=0;
        $monitor("Wm = %b,\t Rm = %d, address = %d,\t RegVal= %d,\t Data_out = %d", Wm, Rm, address, RegVal, Data_out);
        #5 // Escrita em 02
           // Tempo 15
        address=16'b0000000000000010;
        RegVal =16'b0000000000001101;
        Wm=1;
        Rm=0;
        $monitor("Wm = %b,\t Rm = %d, address = %d,\t RegVal= %d,\t Data_out = %d", Wm, Rm, address, RegVal, Data_out);
        #5 // Escrita  em 03
           // Tempo 20
        address=16'b0000000000000011;
        RegVal =16'b0000000000001100;
        Wm=1;
        Rm=0;
        $monitor("Wm = %b,\t Rm = %d, address = %d,\t RegVal= %d,\t Data_out = %d", Wm, Rm, address, RegVal, Data_out);
        #5 // Escrita  em 04
           // Tempo 25
        address=16'b0000000000000100;
        RegVal =16'b0000000000001011;
        Wm=1;
        Rm=0;
        $monitor("Wm = %b,\t Rm = %d, address = %d,\t RegVal= %d,\t Data_out = %d", Wm, Rm, address, RegVal, Data_out);
        #5 // Escrita  em 17
           // Tempo 30
        address=16'b0000000000010001;
        RegVal =16'b0000000000001010;
        Wm=1;
        Rm=0;
        $monitor("Wm = %b,\t Rm = %d, address = %d,\t RegVal= %d,\t Data_out = %d", Wm, Rm, address, RegVal, Data_out);
        #5 // Escrita  em 06
           // Tempo 35
        address=16'b0000000000000110;
        RegVal =16'b0000000000001001;
        Wm=1;
        Rm=0;
        $monitor("Wm = %b,\t Rm = %d, address = %d,\t RegVal= %d,\t Data_out = %d", Wm, Rm, address, RegVal, Data_out);        
        #5 // Escrita  em 07
           // Tempo 40
        address=16'b0000000000000111;
        RegVal =16'b0000000000001000;
        Wm=1;
        Rm=0;
        $monitor("Wm = %b,\t Rm = %d, address = %d,\t RegVal= %d,\t Data_out = %d", Wm, Rm, address, RegVal, Data_out);        
        #5 // Escrita  em 08
           // Tempo 45
        address=16'b0000000000001000;
        RegVal =16'b0000000000000111;
        Wm=1;
        Rm=0;
        $monitor("Wm = %b,\t Rm = %d, address = %d,\t RegVal= %d,\t Data_out = %d", Wm, Rm, address, RegVal, Data_out);        
        #5 // Escrita  em 09
           // Tempo 50
        address=16'b0000000000001001;
        RegVal =16'b0000000000000110;
        Wm=1;
        Rm=0;
        $monitor("Wm = %b,\t Rm = %d, address = %d,\t RegVal= %d,\t Data_out = %d", Wm, Rm, address, RegVal, Data_out);        
        #5 // Escrita  em 10
           // Tempo 55
        address=16'b0000000000001010;
        RegVal =16'b0000000000000101;
        Wm=1;
        Rm=0;
        $monitor("Wm = %b,\t Rm = %d, address = %d,\t RegVal= %d,\t Data_out = %d", Wm, Rm, address, RegVal, Data_out);        
        #5 // Escrita  em 11
           // Tempo 60
        address=16'b0000000000001011;
        RegVal =16'b0000000000000100;
        Wm=1;
        Rm=0;
        $monitor("Wm = %b,\t Rm = %d, address = %d,\t RegVal= %d,\t Data_out = %d", Wm, Rm, address, RegVal, Data_out);        
        #5 // Escrita  em 12
           // Tempo 65
        address=16'b0000000000001100;
        RegVal =16'b0000000000000011;
        Wm=1;
        Rm=0;
        $monitor("Wm = %b,\t Rm = %d, address = %d,\t RegVal= %d,\t Data_out = %d", Wm, Rm, address, RegVal, Data_out);        
        #5 // Escrita em 13
           // Tempo 70
        address=16'b0000000000001101;
        RegVal =16'b0000000000000010;
        Wm=1;
        Rm=0;
        $monitor("Wm = %b,\t Rm = %d, address = %d,\t RegVal= %d,\t Data_out = %d", Wm, Rm, address, RegVal, Data_out);        
        #5 // Escrita 14
           // Tempo 75
        address=16'b0000000000001110;
        RegVal =16'b0000000000000001;
        Wm=1;
        Rm=0;
        $monitor("Wm = %b,\t Rm = %d, address = %d,\t RegVal= %d,\t Data_out = %d", Wm, Rm, address, RegVal, Data_out);        
        #5 // Escrita 15
           // Tempo 80
        address=16'b0000000000001111;
        RegVal =16'b0000000000000000;
        Wm=1;
        Rm=0;
        $monitor("Wm = %b,\t Rm = %d, address = %d,\t RegVal= %d,\t Data_out = %d", Wm, Rm, address, RegVal, Data_out);        

        #5 // Leitura em 0
           // Tempo 85
        address=16'b0000000000000000;
        Wm=0;
        Rm=1;
        $monitor("Wm = %b,\t Rm = %d, address = %d,\t RegVal= %d,\t Data_out = %d", Wm, Rm, address, RegVal, Data_out);        
        #5 // Leitura  em 01
           // Tempo 90
        address=16'b0000000000000001;
        Wm=0;
        Rm=1;
        $monitor("Wm = %b,\t Rm = %d, address = %d,\t RegVal= %d,\t Data_out = %d", Wm, Rm, address, RegVal, Data_out);
        #5 // Leitura  em 02
           // Tempo 95
        address=16'b0000000000000010;
        Wm=0;
        Rm=1;
        $monitor("Wm = %b,\t Rm = %d, address = %d,\t RegVal= %d,\t Data_out = %d", Wm, Rm, address, RegVal, Data_out);
        #5 // Leitura  em 03
           // Tempo 100
        address=16'b0000000000000011;
        Wm=0;
        Rm=1;
        $monitor("Wm = %b,\t Rm = %d, address = %d,\t RegVal= %d,\t Data_out = %d", Wm, Rm, address, RegVal, Data_out);
        #5 // Leitura  em 04
           // Tempo 105
        address=16'b0000000000000100;
        Wm=0;
        Rm=1;
        $monitor("Wm = %b,\t Rm = %d, address = %d,\t RegVal= %d,\t Data_out = %d", Wm, Rm, address, RegVal, Data_out);
        #5 // Leitura  em 05
           // Tempo 110
        address=16'b0000000000000101;
        Wm=0;
        Rm=1;
        $monitor("Wm = %b,\t Rm = %d, address = %d,\t RegVal= %d,\t Data_out = %d", Wm, Rm, address, RegVal, Data_out);
        #5 // Leitura  em 06
           // Tempo 115
        address=16'b0000000000000110;
        Wm=0;
        Rm=1;
        $monitor("Wm = %b,\t Rm = %d, address = %d,\t RegVal= %d,\t Data_out = %d", Wm, Rm, address, RegVal, Data_out);
        #5 // Leitura  em 07
           // Tempo 120
        address=16'b0000000000000111;
        Wm=0;
        Rm=1;
        $monitor("Wm = %b,\t Rm = %d, address = %d,\t RegVal= %d,\t Data_out = %d", Wm, Rm, address, RegVal, Data_out);
        #5 // Leitura  em 08
           // Tempo 125
        address=16'b0000000000001000;
        Wm=0;
        Rm=1;
        $monitor("Wm = %b,\t Rm = %d, address = %d,\t RegVal= %d,\t Data_out = %d", Wm, Rm, address, RegVal, Data_out);
        #5 // Leitura  em 09
           // Tempo 130
        address=16'b0000000000001001;
        Wm=0;
        Rm=1;
        $monitor("Wm = %b,\t Rm = %d, address = %d,\t RegVal= %d,\t Data_out = %d", Wm, Rm, address, RegVal, Data_out);
        #5 // Leitura  em 10
           // Tempo 135
        address=16'b0000000000001010;
        Wm=0;
        Rm=1;
        $monitor("Wm = %b,\t Rm = %d, address = %d,\t RegVal= %d,\t Data_out = %d", Wm, Rm, address, RegVal, Data_out);
        #5 // Leitura  em 11
           // Tempo 140
        address=16'b0000000000001011;
        Wm=0;
        Rm=1;
        $monitor("Wm = %b,\t Rm = %d, address = %d,\t RegVal= %d,\t Data_out = %d", Wm, Rm, address, RegVal, Data_out);
        #5 // Leitura  em 12
           // Tempo 145
        address=16'b0000000000001100;
        Wm=0;
        Rm=1;
        $monitor("Wm = %b,\t Rm = %d, address = %d,\t RegVal= %d,\t Data_out = %d", Wm, Rm, address, RegVal, Data_out);
        #5 // Leitura em 13
           // Tempo 150
        address=16'b0000000000001101;
        Wm=0;
        Rm=1;
        $monitor("Wm = %b,\t Rm = %d, address = %d,\t RegVal= %d,\t Data_out = %d", Wm, Rm, address, RegVal, Data_out);
        #5 // Leitura 14
           // Tempo 155
        address=16'b0000000000001110;
        Wm=0;
        Rm=1;
        $monitor("Wm = %b,\t Rm = %d, address = %d,\t RegVal= %d,\t Data_out = %d", Wm, Rm, address, RegVal, Data_out);
        #5 // Leitura 17
           // Tempo 160
        address=16'b0000000010001;      
        Wm=0;
        Rm=1;
        $monitor("Wm = %b,\t Rm = %d, address = %d,\t RegVal= %d,\t Data_out = %d", Wm, Rm, address, RegVal, Data_out);
        #5 // Leitura 15
           // Tempo 165
        address=16'b0000000000001111;      
        Wm=0;
        Rm=1;
        $monitor("Wm = %b,\t Rm = %d, address = %d,\t RegVal= %d,\t Data_out = %d", Wm, Rm, address, RegVal, Data_out);
        #5 // Escrita em 35
           // Tempo 170
        address=16'b0000000000100011;
        RegVal =16'b0000000000100101;;
        Wm=1;
        Rm=0;
        $monitor("Wm = %b,\t Rm = %d, address = %d,\t RegVal= %d,\t Data_out = %d", Wm, Rm, address, RegVal, Data_out);

        #5 // Leitura em 35
           // Tempo 175
        address=16'b0000000000100011;
        Wm=0;
        Rm=1;
        $monitor("Wm = %b,\t Rm = %d, address = %d,\t RegVal= %d,\t Data_out = %d", Wm, Rm, address, RegVal, Data_out);
        #5 // Leitura em 37
           // Tempo 180
        address=16'b0000000000100101;
        Wm=0;
        Rm=1;
        $monitor("Wm = %b,\t Rm = %d, address = %d,\t RegVal= %d,\t Data_out = %d", Wm, Rm, address, RegVal, Data_out);
        #5 // Leitura em 00
           // Tempo 185
        address=16'b0000000000000000;
        Wm=0;
        Rm=0;
        $monitor("Wm = %b,\t Rm = %d, address = %d,\t RegVal= %d,\t Data_out = %d", Wm, Rm, address, RegVal, Data_out);

//*************************************
//      Linhas de formato de testes   *
//      Leitura                        
//      address=16'b;
//      Wm=0;
//      Rm=1;
//
//      Escrita
//      address=16'b;
//      RegVal =16'b;
//      Wm=1;
//      Rm=0;
//      $monitor("Wm = %b, Rm = %d, address = %d, RegVal= %d
//                Data_out = %d", Wm, Rm, address, RegVal, Data_out);
//*************************************

        #10 // passou 
        $monitor("End Simulation");
        $finish;
    end

endmodule
