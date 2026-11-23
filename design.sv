// Code your design here

module d_ff(q,d,clk);
  input d,clk;
  output reg q;
  always @(posedge clk)
    q <= d;
endmodule
