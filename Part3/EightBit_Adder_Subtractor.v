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
module EightBit_Adder_Subtractor( RCOSum, RCOCarryOut, RCOAddX, RCOAddY, RCOCarryIn);

    output [7:0]  RCOSum;
    output 		  RCOCarryOut;
    input [7:0]   RCOAddX;
    input [7:0]   RCOAddY;
	input		 RCOCarryIn;


// create wires for intermediate carries

wire C1,C2,C3,C4,C5,C6,C7;
wire [7:0] Y_temp;
assign Y_temp[7] = RCOAddY[7] ^ RCOCarryIn;
assign Y_temp[6] = RCOAddY[6] ^ RCOCarryIn;
assign Y_temp[5] = RCOAddY[5] ^ RCOCarryIn;
assign Y_temp[4] = RCOAddY[4] ^ RCOCarryIn;
assign Y_temp[3] = RCOAddY[3] ^ RCOCarryIn;
assign Y_temp[2] = RCOAddY[2] ^ RCOCarryIn;
assign Y_temp[1] = RCOAddY[1] ^ RCOCarryIn;
assign Y_temp[0] = RCOAddY[0] ^ RCOCarryIn;
// instantiate the set of full adders 
FullAdder	RCO_FA0(RCOSum[0],C1,RCOAddX[0],Y_temp[0],RCOCarryIn);
FullAdder	RCO_FA1(RCOSum[1],C2,RCOAddX[1],Y_temp[1],C1);
FullAdder	RCO_FA2(RCOSum[2],C3,RCOAddX[2],Y_temp[2],C2);
FullAdder	RCO_FA3(RCOSum[3],C4,RCOAddX[3],Y_temp[3],C3);
FullAdder	RCO_FA4(RCOSum[4],C5,RCOAddX[4],Y_temp[4],C4);
FullAdder	RCO_FA5(RCOSum[5],C6,RCOAddX[5],Y_temp[5],C5);
FullAdder	RCO_FA6(RCOSum[6],C7,RCOAddX[6],Y_temp[6],C6);
FullAdder	RCO_FA7(RCOSum[7],RCOCarryOut,RCOAddX[7],Y_temp[7],C7);
				

endmodule



