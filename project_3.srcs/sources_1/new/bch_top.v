`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.09.2025 16:08:11
// Design Name: 
// Module Name: bch_top
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


module bch_top(
    input  [6:0] data_in,          // 7-bit input data
    input  [14:0] received_word,   // 15-bit received codeword (or just codeword for testing)
    output [14:0] corrected_word   // 15-bit corrected codeword
);
    wire [14:0] codeword;
    wire [3:0] S1, S2, S3, S4;
    wire [14:0] error_positions;

    bch_encoder u_enc (
        .data_in(data_in),
        .codeword(codeword)
    );

    syndrome u_syn (
        .received_word(received_word),
        .S1(S1), .S2(S2), .S3(S3), .S4(S4)
    );

    error_locator u_loc (
        .S1(S1), .S2(S2), .S3(S3), .S4(S4),
        .error_positions(error_positions)
    );

    error_correction u_corr (
        .received_word(received_word),
        .error_positions(error_positions),
        .corrected_word(corrected_word)
    );

endmodule
