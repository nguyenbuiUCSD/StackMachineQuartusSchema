import definitions::*;              //imports
module mux5(
    input [7:0] A,B,C,D,
    input [1:0] SEL,
    output logic [7:0] Z
    );

  always_comb begin
    case(SEL)
      SEL_SND_ST: Z = A;
      SEL_MUX8OUT: Z = B;
      SEL_IMEMOUT: Z = {4'b0,C[3:0]};	
      SEL_1: Z = D;	
    endcase
  end

endmodule
