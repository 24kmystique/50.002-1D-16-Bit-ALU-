/*
   This file was generated automatically by Alchitry Labs version 1.2.1.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module sixteen_bit_multiply_16 (
    input [15:0] a,
    input [15:0] b,
    output reg [15:0] out
  );
  
  
  
  wire [(5'h10+0)*16-1:0] M_and2__out;
  reg [(5'h10+0)*16-1:0] M_and2__a;
  reg [(5'h10+0)*16-1:0] M_and2__b;
  
  genvar GEN_and2_0;
  generate
  for (GEN_and2_0=0;GEN_and2_0<5'h10;GEN_and2_0=GEN_and2_0+1) begin: and2__gen_0
    sixteen_bit_and_gate_25 and2_ (
      .a(M_and2__a[GEN_and2_0*(5'h10)+(5'h10)-1-:(5'h10)]),
      .b(M_and2__b[GEN_and2_0*(5'h10)+(5'h10)-1-:(5'h10)]),
      .out(M_and2__out[GEN_and2_0*(5'h10)+(5'h10)-1-:(5'h10)])
    );
  end
  endgenerate
  
  wire [(5'h10+0)*16-1:0] M_adder__s;
  wire [(5'h10+0)-1:0] M_adder__z;
  wire [(5'h10+0)-1:0] M_adder__v;
  wire [(5'h10+0)-1:0] M_adder__n;
  reg [(5'h10+0)-1:0] M_adder__alufn;
  reg [(5'h10+0)*16-1:0] M_adder__x;
  reg [(5'h10+0)*16-1:0] M_adder__y;
  
  genvar GEN_adder_0;
  generate
  for (GEN_adder_0=0;GEN_adder_0<5'h10;GEN_adder_0=GEN_adder_0+1) begin: adder__gen_0
    sixteen_bit_adder_11 adder_ (
      .alufn(M_adder__alufn[GEN_adder_0*(1)+(1)-1-:(1)]),
      .x(M_adder__x[GEN_adder_0*(5'h10)+(5'h10)-1-:(5'h10)]),
      .y(M_adder__y[GEN_adder_0*(5'h10)+(5'h10)-1-:(5'h10)]),
      .s(M_adder__s[GEN_adder_0*(5'h10)+(5'h10)-1-:(5'h10)]),
      .z(M_adder__z[GEN_adder_0*(1)+(1)-1-:(1)]),
      .v(M_adder__v[GEN_adder_0*(1)+(1)-1-:(1)]),
      .n(M_adder__n[GEN_adder_0*(1)+(1)-1-:(1)])
    );
  end
  endgenerate
  
  always @* begin
    M_and2__a[0+15-:16] = a;
    M_and2__a[16+15-:16] = a;
    M_and2__a[32+15-:16] = a;
    M_and2__a[48+15-:16] = a;
    M_and2__a[64+15-:16] = a;
    M_and2__a[80+15-:16] = a;
    M_and2__a[96+15-:16] = a;
    M_and2__a[112+15-:16] = a;
    M_and2__a[128+15-:16] = a;
    M_and2__a[144+15-:16] = a;
    M_and2__a[160+15-:16] = a;
    M_and2__a[176+15-:16] = a;
    M_and2__a[192+15-:16] = a;
    M_and2__a[208+15-:16] = a;
    M_and2__a[224+15-:16] = a;
    M_and2__a[240+15-:16] = a;
    M_adder__alufn[0+0-:1] = 1'h0;
    M_adder__alufn[1+0-:1] = 1'h0;
    M_adder__alufn[2+0-:1] = 1'h0;
    M_adder__alufn[3+0-:1] = 1'h0;
    M_adder__alufn[4+0-:1] = 1'h0;
    M_adder__alufn[5+0-:1] = 1'h0;
    M_adder__alufn[6+0-:1] = 1'h0;
    M_adder__alufn[7+0-:1] = 1'h0;
    M_adder__alufn[8+0-:1] = 1'h0;
    M_adder__alufn[9+0-:1] = 1'h0;
    M_adder__alufn[10+0-:1] = 1'h0;
    M_adder__alufn[11+0-:1] = 1'h0;
    M_adder__alufn[12+0-:1] = 1'h0;
    M_adder__alufn[13+0-:1] = 1'h0;
    M_adder__alufn[14+0-:1] = 1'h0;
    M_adder__alufn[15+0-:1] = 1'h0;
    M_and2__b[0+15-:16] = {5'h10{b[0+0-:1]}};
    M_adder__x[0+15-:16] = 16'h0000;
    M_adder__y[0+15-:16] = M_and2__out[0+15-:16];
    M_and2__b[16+15-:16] = {5'h10{b[1+0-:1]}};
    M_adder__x[16+15-:16] = M_adder__s[0+15-:16];
    M_adder__y[16+1+14-:15] = M_and2__out[16+0+14-:15];
    M_adder__y[16+0+0-:1] = 1'h0;
    M_and2__b[32+15-:16] = {5'h10{b[2+0-:1]}};
    M_adder__x[32+15-:16] = M_adder__s[16+15-:16];
    M_adder__y[32+2+13-:14] = M_and2__out[32+0+13-:14];
    M_adder__y[32+0+1-:2] = 2'h0;
    M_and2__b[48+15-:16] = {5'h10{b[3+0-:1]}};
    M_adder__x[48+15-:16] = M_adder__s[32+15-:16];
    M_adder__y[48+3+12-:13] = M_and2__out[48+0+12-:13];
    M_adder__y[48+0+2-:3] = 3'h0;
    M_and2__b[64+15-:16] = {5'h10{b[4+0-:1]}};
    M_adder__x[64+15-:16] = M_adder__s[48+15-:16];
    M_adder__y[64+4+11-:12] = M_and2__out[64+0+11-:12];
    M_adder__y[64+0+3-:4] = 4'h0;
    M_and2__b[80+15-:16] = {5'h10{b[5+0-:1]}};
    M_adder__x[80+15-:16] = M_adder__s[64+15-:16];
    M_adder__y[80+5+10-:11] = M_and2__out[80+0+10-:11];
    M_adder__y[80+0+4-:5] = 5'h00;
    M_and2__b[96+15-:16] = {5'h10{b[6+0-:1]}};
    M_adder__x[96+15-:16] = M_adder__s[80+15-:16];
    M_adder__y[96+6+9-:10] = M_and2__out[96+0+9-:10];
    M_adder__y[96+0+5-:6] = 6'h00;
    M_and2__b[112+15-:16] = {5'h10{b[7+0-:1]}};
    M_adder__x[112+15-:16] = M_adder__s[96+15-:16];
    M_adder__y[112+7+8-:9] = M_and2__out[112+0+8-:9];
    M_adder__y[112+0+6-:7] = 7'h00;
    M_and2__b[128+15-:16] = {5'h10{b[8+0-:1]}};
    M_adder__x[128+15-:16] = M_adder__s[112+15-:16];
    M_adder__y[128+8+7-:8] = M_and2__out[128+0+7-:8];
    M_adder__y[128+0+7-:8] = 8'h00;
    M_and2__b[144+15-:16] = {5'h10{b[9+0-:1]}};
    M_adder__x[144+15-:16] = M_adder__s[128+15-:16];
    M_adder__y[144+9+6-:7] = M_and2__out[144+0+6-:7];
    M_adder__y[144+0+8-:9] = 9'h000;
    M_and2__b[160+15-:16] = {5'h10{b[10+0-:1]}};
    M_adder__x[160+15-:16] = M_adder__s[144+15-:16];
    M_adder__y[160+10+5-:6] = M_and2__out[160+0+5-:6];
    M_adder__y[160+0+9-:10] = 10'h000;
    M_and2__b[176+15-:16] = {5'h10{b[11+0-:1]}};
    M_adder__x[176+15-:16] = M_adder__s[160+15-:16];
    M_adder__y[176+11+4-:5] = M_and2__out[176+0+4-:5];
    M_adder__y[176+0+10-:11] = 11'h000;
    M_and2__b[192+15-:16] = {5'h10{b[12+0-:1]}};
    M_adder__x[192+15-:16] = M_adder__s[176+15-:16];
    M_adder__y[192+12+3-:4] = M_and2__out[192+0+3-:4];
    M_adder__y[192+0+11-:12] = 12'h000;
    M_and2__b[208+15-:16] = {5'h10{b[13+0-:1]}};
    M_adder__x[208+15-:16] = M_adder__s[192+15-:16];
    M_adder__y[208+13+2-:3] = M_and2__out[208+0+2-:3];
    M_adder__y[208+0+12-:13] = 13'h0000;
    M_and2__b[224+15-:16] = {5'h10{b[14+0-:1]}};
    M_adder__x[224+15-:16] = M_adder__s[208+15-:16];
    M_adder__y[224+14+1-:2] = M_and2__out[224+0+1-:2];
    M_adder__y[224+0+13-:14] = 14'h0000;
    M_and2__b[240+15-:16] = {5'h10{b[15+0-:1]}};
    M_adder__x[240+15-:16] = M_adder__s[224+15-:16];
    M_adder__y[240+15+0-:1] = M_and2__out[240+0+0-:1];
    M_adder__y[240+0+14-:15] = 15'h0000;
    out = M_adder__s[240+15-:16];
  end
endmodule
