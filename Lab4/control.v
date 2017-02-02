module control(
    input wire clock,
    input wire reset,
    input wire equal16or0_out,

    output reg element_write,
    output reg element_drive,
    output reg i_write,
    output reg i_drive,
    output reg plus1_drive,
    output reg memory_write,
    output reg memory_drive,
    output reg address_write,
	 output reg [7:0] LED_RED);

    parameter state_reset =     3'h0;
    parameter state_read1 =     3'h1;
    parameter state_read2 =     3'h2;
	 parameter state_check = 	  3'h3;
	 parameter state_encrypt =   3'h4;
    parameter state_increment = 3'h5;
    parameter state_end =       3'h6;

    reg [2:0] state;
    reg [2:0] next_state;

    always @* begin
        element_write = 1'b0;
        element_drive = 1'b0;
        i_write = 1'b0;
        i_drive = 1'b0;
        plus1_drive = 1'b0;
        memory_write = 1'b0;
        memory_drive = 1'b0;
        address_write = 1'b0;
		  next_state=state_reset;

	case (state)

	    state_reset: begin
		 LED_RED = 7'h9;
		 next_state = state_read1;
	    end

	    state_read1: begin
		 LED_RED = 7'h2;
		// transfer i to memory address
		i_drive = 1'b1;
		address_write = 1'b1;
		next_state = state_read2;
	    end

	    state_read2: begin
		 LED_RED = 7'h3;
		// read memory[i]
        memory_drive = 1'b1;
		  element_write = 1'b1;
		next_state = state_check;
	    end
		 
		 state_check: begin
		 if (equal16or0_out == 1'b1) begin
		    next_state = state_end;
		 end else begin
		    next_state = state_encrypt;
		 end
		 end

        state_encrypt: begin
		  LED_RED = 7'h4;
        // encrypt memory[i]
        element_drive = 1'b1;
        memory_write = 1'b1;
        next_state = state_increment;
        end

	    state_increment: begin
		 LED_RED = 7'h5;
		 // increment i
		 plus1_drive = 1'b1;
		 i_write = 1'b1;
		 next_state = state_read1;
	    end

	    state_end: begin
		 LED_RED = 7'h6;
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
