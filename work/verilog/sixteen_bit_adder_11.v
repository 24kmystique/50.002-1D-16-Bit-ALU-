/*
   This file was generated automatically by Alchitry Labs version 1.2.1.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module sixteen_bit_adder_11 (
    input alufn,
    input [15:0] x,
    input [15:0] y,
    output reg [15:0] s,
    output reg z,
    output reg v,
    output reg n
  );
  
  
  
  wire [(5'h10+0)-1:0] M_fulladder_s;
  wire [(5'h10+0)-1:0] M_fulladder_cout;
  reg [(5'h10+0)-1:0] M_fulladder_x;
  reg [(5'h10+0)-1:0] M_fulladder_y;
  reg [(5'h10+0)-1:0] M_fulladder_cin;
  
  genvar GEN_fulladder0;
  generate
  for (GEN_fulladder0=0;GEN_fulladder0<5'h10;GEN_fulladder0=GEN_fulladder0+1) begin: fulladder_gen_0
    full_adder_19 fulladder (
      .x(M_fulladder_x[GEN_fulladder0*(1)+(1)-1-:(1)]),
      .y(M_fulladder_y[GEN_fulladder0*(1)+(1)-1-:(1)]),
      .cin(M_fulladder_cin[GEN_fulladder0*(1)+(1)-1-:(1)]),
      .s(M_fulladder_s[GEN_fulladder0*(1)+(1)-1-:(1)]),
      .cout(M_fulladder_cout[GEN_fulladder0*(1)+(1)-1-:(1)])
    );
  end
  endgenerate
  
  wire [(5'h10+0)-1:0] M_xor__out;
  reg [(5'h10+0)-1:0] M_xor__a;
  reg [(5'h10+0)-1:0] M_xor__b;
  
  genvar GEN_xor_0;
  generate
  for (GEN_xor_0=0;GEN_xor_0<5'h10;GEN_xor_0=GEN_xor_0+1) begin: xor__gen_0
    xor_gate_20 xor_ (
      .a(M_xor__a[GEN_xor_0*(1)+(1)-1-:(1)]),
      .b(M_xor__b[GEN_xor_0*(1)+(1)-1-:(1)]),
      .out(M_xor__out[GEN_xor_0*(1)+(1)-1-:(1)])
    );
  end
  endgenerate
  
  always @* begin
    M_xor__a = y;
    M_xor__b = {5'h10{alufn}};
    M_fulladder_x = x;
    M_fulladder_y = M_xor__out;
    M_fulladder_cin[0+0-:1] = alufn;
    M_fulladder_cin[1+14-:15] = M_fulladder_cout[0+14-:15];
    s = M_fulladder_s;
    z = (M_fulladder_s == 16'h0000);
    v = (((x[15+0-:1]) & (M_xor__out[15+0-:1]) & (~M_fulladder_s[15+0-:1])) | ((~x[15+0-:1]) & (~M_xor__out[15+0-:1]) & (M_fulladder_s[15+0-:1])));
    n = (M_fulladder_s[15+0-:1] == 1'h1);
  end
endmodule
