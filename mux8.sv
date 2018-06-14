import definitions::*;              //imports
module mux8(
    input [7:0] A,B,
    input SEL,
    output logic [7:0] Z
    );

  always_comb begin
    case(SEL)
      SEL_MAR: Z = A;
      SEL_CNT: Z = B;
    endcase
  end

endmodule
