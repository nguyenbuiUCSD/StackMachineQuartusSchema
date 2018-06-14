// CSE141L Spring 2018 Nguyen Bui - Richard Chum
// ALU
import definitions::*;              // declares ALU opcodes 
module alu (			         
  input       [2:0] op,			    // opcode
  input       [7:0] in_a,		    // operands in
                    in_b,
  output logic[7:0] rslt,           // result out
  output logic z          );		    


  always_comb begin			    // defaults
    rslt  = 8'b0;
    z = 1'b0;
    case(op)						// selective override one or more defaults
      aluADD: rslt = in_a+in_b;	  // add A+B w/ carry
      aluSUB: rslt = in_a-in_b;	  // sub A-B w/ carry
      aluSL:  rslt = in_a<<in_b;	  // shift left 
      aluSR:  rslt = in_a>>in_b;	  // shift right
      aluXOR: rslt = in_a^in_b;	  	//xor
      aluAND: rslt = in_a&in_b; 	//and
      aluBE:
              begin
	        if(in_a == in_b)
	          begin
                    z = 1'b1;
                  end
	      end
      aluBNE:
              begin
	        if(in_a != in_b)
	          begin
                    z = 1'b1;
                  end
	      end

      default:
 	      rslt = -1;
    endcase
  end


endmodule