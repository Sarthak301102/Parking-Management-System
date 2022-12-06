`timescale 1ns / 1ps
module car_parking(cars, num, avail);
input [7:0]cars;
output reg [3:0]num;
output reg [3:0]avail;

always@(cars)
begin
num=cars[7]+cars[6]+cars[5]+cars[4]+cars[3]+cars[2]+cars[1]+cars[0];
avail= 8-num;
end
endmodule


