/*
   This file was generated automatically by Alchitry Labs version 1.2.1.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module mux_two_26 (
    input a0,
    input a1,
    input b,
    output reg out
  );
  
  
  
  always @* begin
    if (b == 1'h0) begin
      out = a0;
    end else begin
      out = a1;
    end
  end
endmodule