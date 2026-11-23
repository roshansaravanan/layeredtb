class driver;

  virtual intf vif;   // vif is a handle of virtual interface

  mailbox gen2driv;

  function new(virtual intf vif,mailbox gen2driv);
    this.vif = vif;
    this.gen2driv = gen2driv;
  endfunction

  task main;

    repeat(10)
      begin
        transaction trans;

        gen2driv.get(trans);

        // drive d away from the active clock edge
        @(negedge vif.clk);
        vif.d <= trans.d;

        trans.display("Driver");

      end
  endtask

endclass
