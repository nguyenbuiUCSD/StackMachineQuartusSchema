import definitions::*;              //imports
module mux7(
    input [7:0] A,B,
    input SEL,
    output logic [7:0] Z
    );

  always_comb begin
    case(SEL)
      SEL7_ALUOUT: Z = A;
      SEL7_TOP_ST: Z = B;

    endcase
  end

endmodule