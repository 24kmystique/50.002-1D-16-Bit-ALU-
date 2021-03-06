/*
   This file was generated automatically by Alchitry Labs version 1.2.1.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module sixteen_bit_boole_12 (
    input [3:0] alufn,
    input [15:0] a,
    input [15:0] b,
    output reg [15:0] out
  );
  
  
  
  wire [(5'h10+0)-1:0] M_fourmux_out;
  reg [(5'h10+0)-1:0] M_fourmux_alufn0;
  reg [(5'h10+0)-1:0] M_fourmux_alufn1;
  reg [(5'h10+0)-1:0] M_fourmux_alufn2;
  reg [(5'h10+0)-1:0] M_fourmux_alufn3;
  reg [(5'h10+0)-1:0] M_fourmux_a;
  reg [(5'h10+0)-1:0] M_fourmux_b;
  
  genvar GEN_fourmux0;
  generate
  for (GEN_fourmux0=0;GEN_fourmux0<5'h10;GEN_fourmux0=GEN_fourmux0+1) begin: fourmux_gen_0
    mux_four_21 fourmux (
      .alufn0(M_fourmux_alufn0[GEN_fourmux0*(1)+(1)-1-:(1)]),
      .alufn1(M_fourmux_alufn1[GEN_fourmux0*(1)+(1)-1-:(1)]),
      .alufn2(M_fourmux_alufn2[GEN_fourmux0*(1)+(1)-1-:(1)]),
      .alufn3(M_fourmux_alufn3[GEN_fourmux0*(1)+(1)-1-:(1)]),
      .a(M_fourmux_a[GEN_fourmux0*(1)+(1)-1-:(1)]),
      .b(M_fourmux_b[GEN_fourmux0*(1)+(1)-1-:(1)]),
      .out(M_fourmux_out[GEN_fourmux0*(1)+(1)-1-:(1)])
    );
  end
  endgenerate
  
  always @* begin
    M_fourmux_alufn0 = {5'h10{alufn[0+0-:1]}};
    M_fourmux_alufn1 = {5'h10{alufn[1+0-:1]}};
    M_fourmux_alufn2 = {5'h10{alufn[2+0-:1]}};
    M_fourmux_alufn3 = {5'h10{alufn[3+0-:1]}};
    M_fourmux_a = a;
    M_fourmux_b = b;
    out = M_fourmux_out;
  end
endmodule
