/*
   This file was generated automatically by Alchitry Labs version 1.2.1.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module sixteen_bit_modulo_17 (
    input [15:0] a,
    input [15:0] b,
    output reg [15:0] out
  );
  
  
  
  wire [16-1:0] M_adder_s;
  wire [1-1:0] M_adder_z;
  wire [1-1:0] M_adder_v;
  wire [1-1:0] M_adder_n;
  reg [1-1:0] M_adder_alufn;
  reg [16-1:0] M_adder_x;
  reg [16-1:0] M_adder_y;
  sixteen_bit_adder_11 adder (
    .alufn(M_adder_alufn),
    .x(M_adder_x),
    .y(M_adder_y),
    .s(M_adder_s),
    .z(M_adder_z),
    .v(M_adder_v),
    .n(M_adder_n)
  );
  
  wire [16-1:0] M_divide_out;
  reg [16-1:0] M_divide_a;
  reg [16-1:0] M_divide_b;
  sixteen_bit_divide_18 divide (
    .a(M_divide_a),
    .b(M_divide_b),
    .out(M_divide_out)
  );
  
  wire [16-1:0] M_multiply_out;
  reg [16-1:0] M_multiply_a;
  reg [16-1:0] M_multiply_b;
  sixteen_bit_multiply_16 multiply (
    .a(M_multiply_a),
    .b(M_multiply_b),
    .out(M_multiply_out)
  );
  
  always @* begin
    M_divide_a = a;
    M_divide_b = b;
    M_multiply_a = M_divide_out;
    M_multiply_b = b;
    M_adder_x = a;
    M_adder_y = M_multiply_out;
    M_adder_alufn = 1'h1;
    out = M_adder_s;
  end
endmodule
