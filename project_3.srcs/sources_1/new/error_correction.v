`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.09.2025 15:53:14
// Design Name: 
// Module Name: error_correction
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


module error_correction #(parameter N=15)(
    input  [N-1:0] received_word,
    input  [N-1:0] error_positions,
    output [N-1:0] corrected_word
);
    assign corrected_word = received_word ^ error_positions;
endmodule
