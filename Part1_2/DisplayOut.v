`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    
// Design Name: 
// Module Name:    DisplayOut 
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
module DispOut(SSD,CompOut,DataIn,lt,gt,eq);

	output reg[7:0]	SSD;
	output [2:0] CompOut; 
	input lt,gt,eq;
	input  [4:0] 	DataIn;


// create the output as negative logic to assert the LEDS 
// Later this can become more elaborate to use 7-segments, LCDs, etc...
assign CompOut = {lt,gt,eq};

always @ (*)
begin
SSD[7] = DataIn[4];//dp
case (DataIn[3:0])
//
4'b0000 : SSD = 7'b1000000;//0
4'b0001 : SSD = 7'b1111001;//1
4'b0010 : SSD = 7'b0100100;//2
4'b0011 : SSD = 7'b0110000;//3
4'b0100 : SSD = 7'b0011001;//4
4'b0101 : SSD = 7'b0010010;//5
4'b0110 : SSD = 7'b0000010;//6
4'b0111 : SSD = 7'b1111000;//7
4'b1000 : SSD = 7'b0000000;//8
4'b1001 : SSD = 7'b0010000;//9
4'b1010 : SSD = 7'b0001000;//A
4'b1011 : SSD = 7'b0000011;//b
4'b1100 : SSD = 7'b0100111;//c
4'b1101 : SSD = 7'b0100001;//d
4'b1110 : SSD = 7'b0000110;//E
4'b1111 : SSD = 7'b0001110;//F
default : SSD = 7'bx;
endcase
end

endmodule
