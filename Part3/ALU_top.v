`timescale 1ns / 1ps
module ALU_top (Sw0,Sw1,Sw2,Sw3,Sw4,Sw5,Sw6,Sw7,Sw8,Sw9,Sw10,Sw11,Sw12,Sw13,Sw14,Sw15,Btn0,Btn1,SSD,CompOut);
    input Sw0,Sw1,Sw2,Sw3,Sw4,Sw5,Sw6,Sw7,Sw8,Sw9,Sw10,Sw11,Sw12,Sw13,Sw14,Sw15;
    input	Btn0,Btn1;
    output [7:0] SSD;
    output [2:0] CompOut;
    wire [7:0] OpX,OpY;
    wire Cin;
    wire [7:0] Sum;
    wire Cout;
    wire lt,gt,eq;
    wire BTN1;
    
InputRead In0(Sw0,Sw1,Sw2,Sw3,Sw4,Sw5,Sw6,Sw7,Sw8,Sw9,Sw10,Sw11,Sw12,Sw13,Sw14,Sw15, Btn0, Btn1, OpX, OpY, Cin, BTN1);
EightBit_Adder_Subtractor	Add1(Sum, Cout, OpX, OpY, Cin);
comparator Comp(OpX,OpY,lt,gt,eq);
DispOut Display(SSD,CompOut,{Cout,Sum},BTN1,lt,gt,eq);
endmodule