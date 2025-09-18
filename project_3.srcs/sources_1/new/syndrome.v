module syndrome #(parameter N=15)(
    input  [N-1:0] received_word,
    output reg [3:0] S1, S2, S3, S4
);

    integer k;
    reg [3:0] alpha_pow;
    reg [3:0] temp_S1, temp_S2, temp_S3, temp_S4;

    always @(*) begin
        S1 = 4'd0; S2 = 4'd0; S3 = 4'd0; S4 = 4'd0;

        for (k = 0; k < N; k = k + 1) begin
            if (received_word[k]) begin
                // ?^(1*k) ? add to S1
                alpha_pow = antilog(k % 15);       // you can have a small antilog module or function here
                temp_S1 = S1 ^ alpha_pow;
                S1 = temp_S1;

                // ?^(2*k) ? add to S2
                alpha_pow = antilog((2*k) % 15);
                temp_S2 = S2 ^ alpha_pow;
                S2 = temp_S2;

                // ?^(3*k) ? add to S3
                alpha_pow = antilog((3*k) % 15);
                temp_S3 = S3 ^ alpha_pow;
                S3 = temp_S3;

                // ?^(4*k) ? add to S4
                alpha_pow = antilog((4*k) % 15);
                temp_S4 = S4 ^ alpha_pow;
                S4 = temp_S4;
            end
        end
    end

    // Simple combinational antilog function (can be a module if you want)
    function [3:0] antilog(input integer e);
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

endmodule
