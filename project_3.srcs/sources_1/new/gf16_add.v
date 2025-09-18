`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.09.2025 15:57:43
// Design Name: 
// Module Name: gf16_add
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


module gf16_add (
    input  [3:0] a,
    input  [3:0] b,
    output [3:0] y
);
    assign y = a ^ b;  // XOR
endmodule