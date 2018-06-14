// CSE141L Spring 2018 Nguyen Bui - Richard Chum
// 14-element reg_file -  This is the stack
import definitions::*;
module mar(
  input             clk,
  input  [7:0]      di,					// data to load into reg_file
  input             we,				    // write enable
  output logic[7:0] dOut);                       // 2 data values to be read from reg_file
                    

  reg [7:0] MarValue;                        // our reg_file itself -- 8x4 2-dimensional array
  always_ff @(posedge clk)
    if(we)		// write only on posedge clock and only if we=1
      begin
	 MarValue <= di;
      end
  always_comb dOut = MarValue;		// reads are continuous/combinational instead of 


endmodule