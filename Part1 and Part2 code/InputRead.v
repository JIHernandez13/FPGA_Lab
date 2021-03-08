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
module InputRead(Sw0, Sw1, Sw2, Sw3,Sw4,Sw5,Sw6,Sw7, Btn0, InputX, InputY, Cin);
    input Sw0;
    input Sw1;
    input Sw2;
    input Sw3;
    input Sw4;
    input Sw5;
    input Sw6;
    input Sw7;
 	input Btn0;
    output [3:0] InputX;
    output [3:0] InputY;
	output       Cin;

    assign InputX[0] = Sw0;
    assign InputX[1] = Sw1;
    assign InputX[2] = Sw2;
    assign InputX[3] = Sw3;


    assign InputY[0] = Sw4;
    assign InputY[1] = Sw5;
    assign InputY[2] = Sw6;
    assign InputY[3] = Sw7;

		 
//not(Cin,Btn0);

assign Cin=Btn0;


endmodule
