/*
   This file was generated automatically by Alchitry Labs version 1.2.1.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module sixteen_bit_comparator_13 (
    input [1:0] alufn,
    input z,
    input v,
    input n,
    output reg [15:0] cmp
  );
  
  
  
  wire [1-1:0] M_mux__out;
  reg [1-1:0] M_mux__alufn0;
  reg [1-1:0] M_mux__alufn1;
  reg [1-1:0] M_mux__alufn2;
  reg [1-1:0] M_mux__alufn3;
  reg [1-1:0] M_mux__a;
  reg [1-1:0] M_mux__b;
  mux_four_21 mux_ (
    .alufn0(M_mux__alufn0),
    .alufn1(M_mux__alufn1),
    .alufn2(M_mux__alufn2),
    .alufn3(M_mux__alufn3),
    .a(M_mux__a),
    .b(M_mux__b),
    .out(M_mux__out)
  );
  
  wire [1-1:0] M_xor__out;
  reg [1-1:0] M_xor__a;
  reg [1-1:0] M_xor__b;
  xor_gate_20 xor_ (
    .a(M_xor__a),
    .b(M_xor__b),
    .out(M_xor__out)
  );
  
  wire [1-1:0] M_or__out;
  reg [1-1:0] M_or__a;
  reg [1-1:0] M_or__b;
  or_gate_22 or_ (
    .a(M_or__a),
    .b(M_or__b),
    .out(M_or__out)
  );
  
  always @* begin
    M_xor__a = n;
    M_xor__b = v;
    M_or__a = M_xor__out;
    M_or__b = z;
    M_mux__alufn0 = 1'h0;
    M_mux__alufn1 = M_xor__out;
    M_mux__alufn2 = z;
    M_mux__alufn3 = M_or__out;
    M_mux__a = alufn[1+0-:1];
    M_mux__b = alufn[0+0-:1];
    cmp[1+14-:15] = 15'h0000;
    cmp[0+0-:1] = M_mux__out;
  end
endmodule