module equal16(
    input wire [7:0] in,
    output reg out);

    always @* begin
        if (in == 8'd16) begin
            out = 1'b1;
        end else begin
            out = 1'b0;
        end
    end

endmodule
