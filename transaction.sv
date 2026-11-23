class transaction;

// Stimulus are declared with rand keyword

  rand bit d;

  bit q;

//Function for Displaying values of d and q
  function void display(string name);
    $display("-------------------------");
    $display(" %s ",name);
    $display("-------------------------");
    $display("d = %0d", d);
    $display("q = %0d", q);
    $display("-------------------------");
  endfunction

endclass
