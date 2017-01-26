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
    parameter state_loop =      3'h1;
    parameter state_read1 =     3'h2;
    parameter state_read2 =     3'h3;
    parameter state_compare =   3'h4;
    parameter state_write_max = 3'h5;
    parameter state_increment = 3'h6;
    parameter state_end =       3'h7;

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
		next_state = state_loop;
	    end

	    state_loop: begin
		// if i is 16, then we're done
		if (equal16_out == 1'b1) begin
		    next_state = state_end;
		end else begin
		    next_state = state_read1;
		end
	    end

	    state_read1: begin
		// transfer i to memory address
		i_drive = 1'b1;
		address_write = 1'b1;
		next_state = state_read2;
	    end

	    state_read2: begin
		// read memory[i]
		memory_drive = 1'b1;
		element_write = 1'b1;
		next_state = state_compare;
	    end

	    state_compare: begin
		// is memory[i] more than the current max?
		if (greater_out == 1'b1) begin
		    next_state = state_write_max;
		end else begin
		    next_state = state_increment;
		end
	    end

	    state_write_max: begin
		// update max
		element_drive = 1'b1;
		max_write = 1'b1;
		next_state = state_increment;
	    end

	    state_increment: begin
		// increment i
		plus1_drive = 1'b1;
		i_write = 1'b1;
		next_state = state_loop;
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
