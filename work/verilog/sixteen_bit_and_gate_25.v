/*
   This file was generated automatically by Alchitry Labs version 1.2.1.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module sixteen_bit_and_gate_25 (
    input [15:0] a,
    input [15:0] b,
    output reg [15:0] out
  );
  
  
  
  wire [(5'h10+0)-1:0] M_and__out;
  reg [(5'h10+0)-1:0] M_and__a;
  reg [(5'h10+0)-1:0] M_and__b;
  
  genvar GEN_and_0;
  generate
  for (GEN_and_0=0;GEN_and_0<5'h10;GEN_and_0=GEN_and_0+1) begin: and__gen_0
    and_gate_24 and_ (
      .a(M_and__a[GEN_and_0*(1)+(1)-1-:(1)]),
      .b(M_and__b[GEN_and_0*(1)+(1)-1-:(1)]),
      .out(M_and__out[GEN_and_0*(1)+(1)-1-:(1)])
    );
  end
  endgenerate
  
  always @* begin
    M_and__a = a;
    M_and__b = b;
    out = M_and__out;
  end
endmodule