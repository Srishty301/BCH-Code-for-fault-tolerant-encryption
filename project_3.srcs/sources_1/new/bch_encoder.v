module bch_encoder #(parameter N=15, K=7)(
    input  [K-1:0] data_in,
    output [N-1:0] codeword
);
    localparam [8:0] GENERATOR = 9'b111010001;
    reg [N-1:0] temp;
    integer i;

    always @(*) begin
        temp = {data_in, {(N-K){1'b0}}};
        for (i = N-1; i >= 8; i = i - 1) begin
            if (temp[i])
                temp[i -: 9] = temp[i -: 9] ^ GENERATOR;
        end
    end

    assign codeword = {data_in, temp[(N-K)-1:0]};
endmodule
