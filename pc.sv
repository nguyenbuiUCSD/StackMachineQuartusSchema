// CSE141L Spring 2018 Nguyen Bui - Richard Chum
// program counter control block
import definitions::*;
module pc (
  input              clk,	     // clk -- PC advances and memory/reg_file writes are clocked 
  input              reset,z,		 // overrides all else, forces PC to 0 (start of program)
  input logic  [7:0] PCIN,
  output logic [7:0] PC);		 // program count

  always_ff @(posedge clk) 
    if(reset)					 // resetting to start=0
      PC <= 'b0;
    else if (z)						 // normal/default operation
      PC <= PCIN;
    else
      PC <= PC+1;
endmodule