module tb();
  reg dclk;
  reg dreset;
  
  RISC_V_Processor r1(dclk, dreset);
  
  initial 
    begin
    	dclk = 1'b0;
  end
  
  always 
    begin
    #5
    dclk = ~dclk;
  	end
  initial 
    begin
      dreset = 1'b1;
      #10
      dreset = 1'b0;
      #4000
      dreset = 1'b1;
  	end
  
  initial begin
    $dumpfile("tests.vcd");
    $dumpvars();
    #100000 $finish;
  end
endmodule