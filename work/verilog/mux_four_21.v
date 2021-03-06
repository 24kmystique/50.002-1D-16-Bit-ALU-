/*
   This file was generated automatically by Alchitry Labs version 1.2.1.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module mux_four_21 (
    input alufn0,
    input alufn1,
    input alufn2,
    input alufn3,
    input a,
    input b,
    output reg out
  );
  
  
  
  always @* begin
    if (a == 1'h0 & b == 1'h0) begin
      out = alufn0;
    end else begin
      if (a == 1'h1 & b == 1'h0) begin
        out = alufn1;
      end else begin
        if (a == 1'h0 & b == 1'h1) begin
          out = alufn2;
        end else begin
          if (a == 1'h1 & b == 1'h1) begin
            out = alufn3;
          end else begin
            out = 1'h0;
          end
        end
      end
    end
  end
endmodule
