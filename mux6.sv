
module mux6(
    input [7:0] A,B,
    input SEL,
    output logic [7:0] Z
    );

  always_comb begin
    case(SEL)
      1'b0: Z = A;
      1'b1: Z = B;

    endcase
  end

endmodule