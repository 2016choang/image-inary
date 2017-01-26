module plus13(
    input wire [7:0] in,
    output reg [7:0] out);

    always @* begin
	wire temp[7:0];
	temp = in + 8'hD;
	 if (temp > 8'b01111011) begin
            out = in - 8'hD;
	end
        else begin
	    out = temp;
	end
    end

endmodule
