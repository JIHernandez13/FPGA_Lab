`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    
// Design Name: 
// Module Name:    FourBitAdder 
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
module FourBit_Adder_Subtractor( RCOSum, RCOCarryOut, RCOAddX, RCOAddY, RCOCarryIn);

    output [3:0]  RCOSum;
    output 		  RCOCarryOut;
    input [3:0]   RCOAddX;
    input [3:0]   RCOAddY;
	input		 RCOCarryIn;


// create wires for intermediate carries

wire C1,C2,C3;
wire [3:0] Y_temp;

assign Y_temp[3] = RCOAddY[3] ^ RCOCarryIn;
assign Y_temp[2] = RCOAddY[2] ^ RCOCarryIn;
assign Y_temp[1] = RCOAddY[1] ^ RCOCarryIn;
assign Y_temp[0] = RCOAddY[0] ^ RCOCarryIn;
// instantiate the set of full adders 
FullAdder	RCO_FA0(RCOSum[0],C1,RCOAddX[0],Y_temp[0],RCOCarryIn);
FullAdder	RCO_FA1(RCOSum[1],C2,RCOAddX[1],Y_temp[1],C1);
FullAdder	RCO_FA2(RCOSum[2],C3,RCOAddX[2],Y_temp[2],C2);
FullAdder	RCO_FA3(RCOSum[3],RCOCarryOut,RCOAddX[3],Y_temp[3],C3);
				

endmodule


