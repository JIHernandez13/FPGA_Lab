`timescale 1ns / 1ps
module comparator (X,Y,lt,gt,eq);
input [7:0] X,Y;
output reg lt,gt,eq;
always @ (*)
begin
if (X<Y)
begin
lt=1'b1;
gt=1'b0;
eq=1'b0;
end
else if (X>Y)
begin
lt=1'b0;
gt=1'b1;
eq=1'b0;
end
else
begin
lt=1'b0;
gt=1'b0;
eq=1'b1;
end
end
endmodule