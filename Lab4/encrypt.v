module encrypt(
    input wire [7:0] in,
    output reg [7:0] out);

    always @* begin
        if (in + 8'hD > 8'b01111011) begin
            out = in + 8'hD;
        end else begin
            out = in - 8'hD;
        end
    end

endmodule
