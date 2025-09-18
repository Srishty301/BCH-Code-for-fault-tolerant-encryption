module error_locator #(parameter N=15)(
    input  [3:0] S1, S2, S3, S4,
    output reg [N-1:0] error_positions  // one-hot error mask
);

    integer i, j;
    reg [3:0] tS1, tS2, tS3, tS4;
    reg [3:0] a1, a2;
    reg stop_outer, stop_inner;

    // Wires to connect to gf16_add module
    reg [3:0] add_in1, add_in2;
    wire [3:0] add_out;

    gf16_add u_add (
        .a(add_in1),
        .b(add_in2),
        .y(add_out)
    );

    // Simple combinational antilog function
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

    always @(*) begin
        error_positions = {N{1'b0}};
        stop_outer = 0;

        // ---------- Single-error search ----------
        for (i = 0; i < N; i = i + 1) begin
            if (!stop_outer) begin
                tS1 = antilog((1*i) % 15);
                tS2 = antilog((2*i) % 15);
                tS3 = antilog((3*i) % 15);
                tS4 = antilog((4*i) % 15);

                if ((tS1 == S1) && (tS2 == S2) && (tS3 == S3) && (tS4 == S4)) begin
                    error_positions[i] = 1'b1;
                    stop_outer = 1;
                end
            end
        end

        // ---------- Double-error search ----------
        if (error_positions == {N{1'b0}}) begin
            stop_outer = 0;
            for (i = 0; i < N; i = i + 1) begin
                if (!stop_outer) begin
                    stop_inner = 0;
                    for (j = i+1; j < N; j = j + 1) begin
                        if (!stop_inner) begin
                            // S1 = ?^i + ?^j
                            add_in1 = antilog((1*i) % 15);
                            add_in2 = antilog((1*j) % 15);
                            tS1 = add_out;

                            // S2 = ?^(2i) + ?^(2j)
                            add_in1 = antilog((2*i) % 15);
                            add_in2 = antilog((2*j) % 15);
                            tS2 = add_out;

                            // S3 = ?^(3i) + ?^(3j)
                            add_in1 = antilog((3*i) % 15);
                            add_in2 = antilog((3*j) % 15);
                            tS3 = add_out;

                            // S4 = ?^(4i) + ?^(4j)
                            add_in1 = antilog((4*i) % 15);
                            add_in2 = antilog((4*j) % 15);
                            tS4 = add_out;

                            if ((tS1 == S1) && (tS2 == S2) && (tS3 == S3) && (tS4 == S4)) begin
                                error_positions[i] = 1'b1;
                                error_positions[j] = 1'b1;
                                stop_inner = 1;
                                stop_outer = 1;
                            end
                        end
                    end
                end
            end
        end
    end

endmodule
