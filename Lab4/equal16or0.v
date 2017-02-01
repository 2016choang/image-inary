module equal16or0(
    input wire [7:0] in1,
    input wire [7:0] in2, 
    output reg out);

    always @* begin
        if (in == 8'd16 || in2 == 8'b00000000) begin
            out = 1'b1;
        end else begin
            out = 1'b0;
        end
    end

endmodule
