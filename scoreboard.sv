class scoreboard;

  mailbox mon2scb;

  function new(mailbox mon2scb);
    this.mon2scb = mon2scb;
  endfunction

  task main;
    transaction trans;
    repeat(10)
      begin
        mon2scb.get(trans);

        if(trans.q == trans.d)
          $display("Result is as Expected");
        else
          $error("Wrong Result");

        trans.display("Scoreboard");
      end
  endtask

endclass
