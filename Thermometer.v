`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.05.2026 22:08:38
// Design Name: 
// Module Name: Thermometer
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Thermometer(
    input [6:0] i,
    output [2:0] B
    );
    wire s1,s2,s3,s4,s5;
    FA_data d1 (i[6], i[5], i[4], s1, s2);
    FA_data d2 (i[3], i[2], i[1], s3, s4);
    FA_data d3 (i[0], s1, s3, B[0], s5);
    FA_data d4 (s2, s5, s4, B[1], B[2]);
endmodule  
