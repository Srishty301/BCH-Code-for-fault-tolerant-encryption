`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.09.2025 16:00:10
// Design Name: 
// Module Name: gf16_inv
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


// GF(16) Addition


// GF(16) Multiplication


// GF(16) Inverse
module gf16_inv (
    input  [3:0] a,
    output [3:0] y
);
    function automatic [3:0] antilog(input integer e);
        case (e % 15)
            0: antilog = 4'd1;
            1: antilog = 4'd2;
            2: antilog = 4'd4;
            3: antilog = 4'd8;
            4: antilog = 4'd3;
            5: antilog = 4'd6;
            6: antilog = 4'd12;
            7: antilog = 4'd11;
            8: antilog = 4'd5;
            9: antilog = 4'd10;
            10: antilog = 4'd7;
            11: antilog = 4'd14;
            12: antilog = 4'd15;
            13: antilog = 4'd13;
            14: antilog = 4'd9;
            default: antilog = 4'd0;
        endcase
    endfunction

    function automatic [3:0] flog(input [3:0] v);
        case (v)
            4'd1: flog = 4'd0;
            4'd2: flog = 4'd1;
            4'd4: flog = 4'd2;
            4'd8: flog = 4'd3;
            4'd3: flog = 4'd4;
            4'd6: flog = 4'd5;
            4'd12: flog = 4'd6;
            4'd11: flog = 4'd7;
            4'd5: flog = 4'd8;
            4'd10: flog = 4'd9;
            4'd7: flog = 4'd10;
            4'd14: flog = 4'd11;
            4'd15: flog = 4'd12;
            4'd13: flog = 4'd13;
            4'd9: flog = 4'd14;
            default: flog = 4'd15;
        endcase
    endfunction

    function automatic [3:0] gf_inv(input [3:0] a);
        reg [3:0] la;
        reg [4:0] idx;
        if (a == 0) gf_inv = 4'd0;
        else begin
            la = flog(a);
            idx = (15 - la) % 15;
            gf_inv = antilog(idx);
        end
    endfunction

    assign y = gf_inv(a);
endmodule
