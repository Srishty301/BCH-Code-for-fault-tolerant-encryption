`timescale 1ns/1ps

module bch_tb;

    localparam N = 15;
    localparam K = 7;

    reg  [K-1:0] data_in;
    wire [N-1:0] codeword;
    reg  [N-1:0] received_word;
    wire [N-1:0] corrected_word;

    wire [3:0] S1, S2, S3, S4;
    wire [N-1:0] error_positions;

    reg success;

    // DUTs
    bch_encoder u_enc (.data_in(data_in), .codeword(codeword));
    syndrome    u_syn (.received_word(received_word), .S1(S1), .S2(S2), .S3(S3), .S4(S4));
    error_locator u_loc (.S1(S1), .S2(S2), .S3(S3), .S4(S4), .error_positions(error_positions));
    error_correction u_corr (.received_word(received_word), .error_positions(error_positions), .corrected_word(corrected_word));

    integer file, r, iter, num_errors, pos1, pos2;

    initial begin
        $display("Iter |   Data   | Encoded Codeword | Received Codeword |  S1 S2 S3 S4 | Error Positions  | Corrected Word   | Success");
        $display("----------------------------------------------------------------------------------------------------------------------------");

        // open file
      file = $fopen("bch.txt", "r");
        if (file == 0) begin
            $display("ERROR: Could not open input_codes.txt");
            $finish;
        end

        iter = 0;
        while (!$feof(file)) begin
            r = $fscanf(file, "%b\n", data_in);
            #5;

            // start from clean codeword
            received_word = codeword;

            // choose random error pattern
            num_errors = $urandom_range(0,2); // 0, 1, or 2 errors
            if (num_errors == 1) begin
                pos1 = $urandom_range(0, N-1);
                received_word[pos1] = ~received_word[pos1];
            end else if (num_errors == 2) begin
                pos1 = $urandom_range(0, N-1);
                pos2 = $urandom_range(0, N-1);
                while (pos2 == pos1) pos2 = $urandom_range(0, N-1); // ensure different
                received_word[pos1] = ~received_word[pos1];
                received_word[pos2] = ~received_word[pos2];
            end

            #10;
            success = (corrected_word == codeword);

            $display(" %0d   | %b | %b | %b | %h %h %h %h | %b | %b | %0d",
                     iter, data_in, codeword, received_word, S1, S2, S3, S4,
                     error_positions, corrected_word, success);

            iter = iter + 1;
        end

        $fclose(file);
        $finish;
    end

endmodule
