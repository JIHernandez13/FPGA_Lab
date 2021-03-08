`timescale 1ns / 1ps
module ALU_top (Sw0,Sw1,Sw2,Sw3,Sw4,Sw5,Sw6,Sw7,Btn0,SSD,CompOut);
    input 			Sw0;
    input 			Sw1;
    input 			Sw2;
    input 			Sw3;
    input 			Sw4;
    input 			Sw5;
    input 			Sw6;
    input 			Sw7;
    input			Btn0;
    output [7:0] SSD;
    output [2:0] CompOut;
     
    wire [3:0] OpX,OpY;
    wire Cin;
    wire [3:0] Sum;
    wire Cout;
    wire lt,gt,eq;
    
InputRead In0(Sw0,Sw1,Sw2,Sw3,Sw4,Sw5,Sw6,Sw7,Btn0,OpX,OpY,Cin);
FourBit_Adder_Subtractor	Add1(Sum, Cout, OpX, OpY, Cin);
comparator Comp(OpX,OpY,lt,gt,eq);
DispOut Display(SSD,CompOut,{Cout,Sum},lt,gt,eq);
endmodule