`include "interface.sv"
`include "test.sv"

module tbench_top;

  bit clk;

  always #5 clk = ~clk;

  intf i_intf(clk);

  test t1(i_intf);

  d_ff d1 (
    .d(i_intf.d),
    .clk(i_intf.clk),
    .q(i_intf.q)
  );

  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
  end

endmodule
