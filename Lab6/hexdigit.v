module hexdigit (
    input wire [3:0] in,
    output reg [6:0] out);

    always @* begin
        out = 7'b1111111;

	case (in)
	    4'h0: begin
	        out = 7'b1111110;
	    end
	    
       4'h1: begin
		    out = 7'b0110000;
	    end

	    4'h2: begin
		    out = 7'b1101101;
	    end
	    
      4'h3: begin
		    out = 7'b1111001;
  	   end

	   4'h4: begin
		    out = 7'b0110011;
      end

      4'h5: begin
		    out = 7'b1011011;
      end

 	   4'h6: begin
		    out = 7'b1011111;
      end

 	   4'h7: begin
		    out = 7'b1110000;
      end

 	   4'h8: begin
		    out = 7'b1111111;
      end

      4'h9: begin
		    out = 7'b1111011;
      end

 	   4'hA: begin
		    out = 7'b1110111;
      end

      4'hB: begin
	       out = 7'b1111111;
      end

      4'hC: begin
		    out = 7'b100110;
      end

      4'hD: begin
	    	 out = 7'b1111110;
      end

      4'hE: begin
		    out = 7'b1001111;
      end

      4'hF: begin
		    out = 7'b1110001;
      end
    endcase

end
endmodule
