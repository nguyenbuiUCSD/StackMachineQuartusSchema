// CSE141L Spring 2018 Nguyen Bui - Richard Chum
// test bench for push instruction
module push_tb;

logic clk, reset;					 	  // to design
wire  done;							 	  // from design

top t1(.*);	                              // shorthand for .clk(clk),.reset(reset),done

always begin					          // clock generator -- arbitrarily set to 10ns period 
  clk = 1'b0;
  #5ns clk = 1'b1;
  #5ns;
end

initial begin
  t1.dmem1.guts[0] = 8'h4d;
  t1.dmem1.guts[1] = 8'h72;
  t1.dmem1.guts[2] = 8'h4d;
  t1.dmem1.guts[3] = 8'h4d;
  t1.dmem1.guts[4] = 8'h4d;
  t1.dmem1.guts[5] = 8'h4d;
  t1.dmem1.guts[60] = 8'h4d;
  t1.dmem1.guts[61] = 8'h4d;
  t1.dmem1.guts[62] = 8'h4d;
  t1.dmem1.guts[63] = 8'h4d;


  
  reset = 'b1;
  #10ns    reset = 'b0;					  // release reset -- start operation
  #200000ns $display("no done received");  // safety stop if no done flag generated
           $stop;						  //   regard as error condition
end

initial begin
  #20ns wait(done); 						      // watch for done flag from DUT
  #10ns $stop;
end
endmodule
