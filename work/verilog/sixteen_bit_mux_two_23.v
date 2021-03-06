/*
   This file was generated automatically by Alchitry Labs version 1.2.1.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module sixteen_bit_mux_two_23 (
    input [15:0] a1,
    input [15:0] a0,
    input b,
    output reg [15:0] out
  );
  
  
  
  wire [(5'h10+0)-1:0] M_mux__out;
  reg [(5'h10+0)-1:0] M_mux__a0;
  reg [(5'h10+0)-1:0] M_mux__a1;
  reg [(5'h10+0)-1:0] M_mux__b;
  
  genvar GEN_mux_0;
  generate
  for (GEN_mux_0=0;GEN_mux_0<5'h10;GEN_mux_0=GEN_mux_0+1) begin: mux__gen_0
    mux_two_26 mux_ (
      .a0(M_mux__a0[GEN_mux_0*(1)+(1)-1-:(1)]),
      .a1(M_mux__a1[GEN_mux_0*(1)+(1)-1-:(1)]),
      .b(M_mux__b[GEN_mux_0*(1)+(1)-1-:(1)]),
      .out(M_mux__out[GEN_mux_0*(1)+(1)-1-:(1)])
    );
  end
  endgenerate
  
  always @* begin
    M_mux__a0 = a0;
    M_mux__a1 = a1;
    M_mux__b = {5'h10{b}};
    out = M_mux__out;
  end
endmodule
