`timescale 1ns / 1ps
module car_parking_7_seg(cars, seg,an);
input [7:0]cars;
output reg [6:0]seg;
output [7:0]an;
reg [3:0]num;

always@(cars)
num=cars[7]+cars[6]+cars[5]+cars[4]+cars[3]+cars[2]+cars[1]+cars[0];

assign an=8'b11111110;
always@(num)
begin
case(num)
4'b0000:seg=7'b1000000;
4'b0001:seg=7'b1111001;
4'b0010:seg=7'b0100100;
4'b0011:seg=7'b0110000;
4'b0100:seg=7'b0011001;
4'b0101:seg=7'b0010010;
4'b0110:seg=7'b0000010;
4'b0111:seg=7'b0000111;
4'b1000:seg=7'b0000000;
endcase
end
endmodule
