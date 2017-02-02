module encrypt(
    input wire [7:0] in,
    output reg [7:0] out);

    always @* begin
        if (in + 8'd13 > 8'd122) begin
            out = in - 8'hD;
        end else begin
            out = in + 8'hD;
        end
    end

endmodule
