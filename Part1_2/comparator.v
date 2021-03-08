`timescale 1ns / 1ps
module comparator (X,Y,lt,gt,eq);
input [3:0] X,Y;
output lt,gt,eq;

assign eq = (~(X[0] ^ Y[0])) & (~(X[1] ^ Y[1])) & (~(X[2] ^ Y[2])) & (~(X[3] ^ Y[3]));
assign lt = ((~X[3]) & Y[3]) |
		((~(X[3] ^ Y[3])) & (~X[2]) & Y[2]) |
		((~(X[3] ^ Y[3])) & (~(X[2] ^ Y[2])) & (~X[1]) & Y[1]) |
		((~(X[3] ^ Y[3])) & (~(X[2] ^ Y[2])) & (~(X[1] ^ Y[1])) & (~X[0]) & Y[0]);
assign gt = (X[3] & (~Y[3])) |
		((~(X[3] ^ Y[3])) & X[2] & (~Y[2])) |
		((~(X[3] ^ Y[3])) & (~(X[2] ^ Y[2])) & X[1] & (~Y[1])) |
		((~(X[3] ^ Y[3])) & (~(X[2] ^ Y[2])) & (~(X[1] ^ Y[1])) & X[0] & (~Y[0]));
endmodule