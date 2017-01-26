module control(
    input wire clock,
    input wire reset,
    input wire greater_out,
    input wire equal16_out,

    output reg element_write,
    output reg element_drive,
    output reg max_write,
    output reg i_write,
    output reg i_drive,
    output reg plus1_drive,
    output reg memory_write,
    output reg memory_drive,
    output reg address_write);

    parameter state_reset =     3'h0;
    parameter state_read =   3'h1;
    parameter state_encrypt =      3'h2;
    parameter state_write =     3'h3;
    parameter state_end =       3'h4;

    reg [2:0] state;
    reg [2:0] next_state;

    always @* begin
        element_write = 1'b0;
        element_drive = 1'b0;
        max_write = 1'b0;
        i_write = 1'b0;
        i_drive = 1'b0;
        plus1_drive = 1'b0;
        memory_write = 1'b0;
        memory_drive = 1'b0;
        address_write = 1'b0;
        next_state = state_reset;

	case (state)

	    state_reset: begin
		next_state = state_read;
	    end

	    state_read: begin
		 next_state = state_encrypt;
	    end

	    state_encrypt: begin
		next_state = state_write;
	    end

	    state_write: begin
		next_state = state_end;
	    end

	    state_end: begin
	 	next_state = state_end;
	    end

	endcase
    end

    always @(posedge clock) begin
        if (reset == 1'b1) begin
            state <= state_reset;
        end else begin
            state <= next_state;
        end
    end

endmodule
