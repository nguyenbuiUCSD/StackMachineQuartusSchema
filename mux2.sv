import definitions::*;              //imports
module mux2(
    input [7:0] A,B,C,D,
    input [1:0] SEL,
    output logic [7:0] Z
    );

  always_comb begin
    case(SEL)
      SEL_IMEM: Z = A;
      SEL_ALUOUT: Z = B;
      SEL_DMEM: Z = C;	
      SEL_TOP_ST: Z = D;
    endcase
  end

endmodule
