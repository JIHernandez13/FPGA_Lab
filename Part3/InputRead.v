`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    
// Design Name: 
// Module Name:    InputRead 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module InputRead(Sw0,Sw1,Sw2,Sw3,Sw4,Sw5,Sw6,Sw7,Sw8,Sw9,Sw10,Sw11,Sw12,Sw13,Sw14,Sw15, Btn0, Btn1, InputX, InputY, Cin, BTN1);
    input Sw0,Sw1,Sw2,Sw3,Sw4,Sw5,Sw6,Sw7,Sw8,Sw9,Sw10,Sw11,Sw12,Sw13,Sw14,Sw15;
 	input Btn0,Btn1;
    output [7:0] InputX;
    output [7:0] InputY;
    output Cin;
    output BTN1;

   assign InputX ={Sw7,Sw6,Sw5,Sw4,Sw3,Sw2,Sw1,Sw0};
   assign InputY = {Sw15,Sw14,Sw13,Sw12,Sw11,Sw10,Sw9,Sw8}; 

assign Cin=Btn0;
assign BTN1=Btn1;

endmodule
