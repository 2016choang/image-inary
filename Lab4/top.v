module top(
    input wire OSC_50,
    input wire [3:0] KEY,               // ~KEY[0] toggles reset
                                        // ~KEY[1] is manual clock
    output wire [6:0] HEX0,             // HEX1-HEX0 shows bus value
    output wire [6:0] HEX1,
    output wire [8:0] LED_GREEN);       // LED_GREEN[8] shows reset

    wire reset;
    wire clock;                         // clock signal for circuit

    wire [7:0] bus;

    wire [7:0] element_out;
    wire element_write, element_drive;

    wire [7:0] i_out;
    wire i_write, i_drive;

    wire [7:0] plus1_out;
    wire plus1_drive;

    wire address_write;
    wire memory_write;
    wire [7:0] memory_out;
    wire memory_drive;
    
    wire [7:0] encrypt_out;

    reset_toggle u1 (OSC_50, ~KEY[0], reset, LED_GREEN[8]); // maintains the reset signal
    clocks u2 (OSC_50, ~KEY[1], clock);

    register u3 (clock, reset, element_write, bus, element_out);
    register u4 (clock, reset, i_write, bus, i_out);

    encrypt u6 (element_out, encrypt_out);
    equal16or0 u7 (i_out, element_out, equal16or0_out);
    plus1 u8 (i_out, plus1_out);

    ram u9 (bus, ~address_write, clock, bus, memory_write, memory_out);

    tristate u10 (encrypt_out, bus, element_drive);
    tristate u11 (plus1_out, bus, plus1_drive);
    tristate u12 (i_out, bus, i_drive);
    tristate u13 (memory_out, bus, memory_drive);

    hexdigit u14 (bus[3:0], HEX0);      // display bus on HEX0, HEX1 for debugging
    hexdigit u15 (bus[7:4], HEX1);

    control u18 (clock, reset, equal16or0_out, element_write,
             element_drive, i_write, i_drive, plus1_drive,
             memory_write, memory_drive, address_write);

endmodule
