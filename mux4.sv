import definitions::*;              //imports
module mux4(
    input [7:0] A,B,C,
    input [1:0] SEL,
    output logic [7:0] Z
    );

	always_comb begin
		Z = A;
		case(SEL)
      SEL4_TOP_ST: Z = A;
      SEL4_1: Z = B;
      SEL4_0: Z = C;
    endcase
  end

endmodule
