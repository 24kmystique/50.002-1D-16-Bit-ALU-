/*
   This file was generated automatically by Alchitry Labs version 1.2.1.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module alu_6 (
    input [5:0] alufn,
    input [15:0] x,
    input [15:0] y,
    output reg [15:0] out
  );
  
  
  
  wire [16-1:0] M_absolute_out;
  reg [16-1:0] M_absolute_y;
  sixteen_bit_absolute_10 absolute (
    .y(M_absolute_y),
    .out(M_absolute_out)
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
  
  wire [16-1:0] M_boole_out;
  reg [4-1:0] M_boole_alufn;
  reg [16-1:0] M_boole_a;
  reg [16-1:0] M_boole_b;
  sixteen_bit_boole_12 boole (
    .alufn(M_boole_alufn),
    .a(M_boole_a),
    .b(M_boole_b),
    .out(M_boole_out)
  );
  
  wire [16-1:0] M_comparator_cmp;
  reg [2-1:0] M_comparator_alufn;
  reg [1-1:0] M_comparator_z;
  reg [1-1:0] M_comparator_v;
  reg [1-1:0] M_comparator_n;
  sixteen_bit_comparator_13 comparator (
    .alufn(M_comparator_alufn),
    .z(M_comparator_z),
    .v(M_comparator_v),
    .n(M_comparator_n),
    .cmp(M_comparator_cmp)
  );
  
  wire [16-1:0] M_incr_s;
  reg [16-1:0] M_incr_x;
  sixteen_bit_increment_14 incr (
    .x(M_incr_x),
    .s(M_incr_s)
  );
  
  wire [16-1:0] M_shifter_out;
  reg [6-1:0] M_shifter_alufn;
  reg [16-1:0] M_shifter_a;
  reg [16-1:0] M_shifter_b;
  sixteen_bit_shifter_15 shifter (
    .alufn(M_shifter_alufn),
    .a(M_shifter_a),
    .b(M_shifter_b),
    .out(M_shifter_out)
  );
  
  wire [16-1:0] M_multiply_out;
  reg [16-1:0] M_multiply_a;
  reg [16-1:0] M_multiply_b;
  sixteen_bit_multiply_16 multiply (
    .a(M_multiply_a),
    .b(M_multiply_b),
    .out(M_multiply_out)
  );
  
  wire [16-1:0] M_modulo_out;
  reg [16-1:0] M_modulo_a;
  reg [16-1:0] M_modulo_b;
  sixteen_bit_modulo_17 modulo (
    .a(M_modulo_a),
    .b(M_modulo_b),
    .out(M_modulo_out)
  );
  
  wire [16-1:0] M_divide_out;
  reg [16-1:0] M_divide_a;
  reg [16-1:0] M_divide_b;
  sixteen_bit_divide_18 divide (
    .a(M_divide_a),
    .b(M_divide_b),
    .out(M_divide_out)
  );
  
  always @* begin
    M_adder_x = x;
    M_adder_y = y;
    M_adder_alufn = alufn[0+0-:1];
    M_absolute_y = x;
    M_incr_x = x;
    M_multiply_a = x;
    M_multiply_b = y;
    M_boole_a = x;
    M_boole_b = y;
    M_boole_alufn = alufn[0+3-:4];
    M_shifter_a = x;
    M_shifter_b = y;
    M_shifter_alufn = alufn;
    M_comparator_v = M_adder_v;
    M_comparator_z = M_adder_z;
    M_comparator_n = M_adder_n;
    M_comparator_alufn = alufn[1+1-:2];
    M_modulo_a = x;
    M_modulo_b = y;
    M_divide_a = x;
    M_divide_b = y;
    
    case (alufn)
      6'h00: begin
        out = M_adder_s;
      end
      6'h01: begin
        out = M_adder_s;
      end
      6'h02: begin
        out = M_absolute_out;
      end
      6'h04: begin
        out = M_incr_s;
      end
      6'h06: begin
        out = M_multiply_out;
      end
      6'h18: begin
        out = M_boole_out;
      end
      6'h1e: begin
        out = M_boole_out;
      end
      6'h16: begin
        out = M_boole_out;
      end
      6'h1a: begin
        out = M_boole_out;
      end
      6'h1c: begin
        out = M_boole_out;
      end
      6'h17: begin
        out = M_boole_out;
      end
      6'h19: begin
        out = M_boole_out;
      end
      6'h20: begin
        out = M_shifter_out;
      end
      6'h21: begin
        out = M_shifter_out;
      end
      6'h23: begin
        out = M_shifter_out;
      end
      6'h33: begin
        out = M_comparator_cmp;
      end
      6'h35: begin
        out = M_comparator_cmp;
      end
      6'h37: begin
        out = M_comparator_cmp;
      end
      6'h28: begin
        out = M_divide_out;
      end
      6'h2c: begin
        out = M_modulo_out;
      end
      default: begin
        out = 16'h0000;
      end
    endcase
  end
endmodule
