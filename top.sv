// CSE141L Spring 2018 Nguyen Bui - Richard Chum
// top-level design connects all pieces together
import definitions::*;
module top(
  input        clk,
               reset,
  output logic done);

  wire[7:0] PCOUT;
  wire[8:0] IMEMOUT;
  wire[7:0] MUX2_OUT,MUX7_OUT, MUX6_OUT, MUX5_OUT, MUX8_OUT, MUX4_OUT;
  wire[1:0] MUX2_SEL,MUX5_SEL, MUX4_SEL;
  wire[3:0] SC;
  wire[7:0] TOP_ST, SND_ST, marOut , cntOut, dmemOut, barOut;
  wire MUX7_SEL,MUX6_SEL,MUX8_SEL, ZERO_FLAG;

  wire[1:0] SC_OP; 

  //ALU wires
  wire[2:0] ALU_OP;
  wire[7:0] ALU_OUT;


  logic rf_we,mar_we,cnt_we,dmem_we,bar_we;


  assign done = IMEMOUT==9'b111111111; // halt & hit done flag

  pc pc1(
    .clk (clk),
    .reset,
    .PC (PCOUT),
    .PCIN (barOut),
    .z (ZERO_FLAG));

  imem3 imem1(
    .PC (PCOUT),
    .inst (IMEMOUT));

  dc dc1(
    .tosc (SC_OP),
    .instruction (IMEMOUT),
    .toalu (ALU_OP),
    .tomux2 (MUX2_SEL),
    .towe (rf_we),
    .tomux6(MUX6_SEL),
    .tomux7(MUX7_SEL),
    .tomux5(MUX5_SEL),
    .tomux8(MUX8_SEL),
    .toMarwe(mar_we),
    .toCntwe(cnt_we),
    .toDmemwe(dmem_we),
    .toBarwe(bar_we),
    .tomux4(MUX4_SEL));

 rf rf1(
    .clk,
    .op (SC_OP),
    .di (MUX2_OUT),
    .we (rf_we),
    .sc (SC),
    .do_a (TOP_ST),
    .do_b (SND_ST));

 sc sc1(
    .op (SC_OP),
    .clk,
    .reset,
    .SC);


  alu alu1(
    .in_a (MUX4_OUT),
    .in_b (MUX5_OUT),
    .op   (ALU_OP),
    .z (ZERO_FLAG),
    .rslt (ALU_OUT));

  mux2 mux21(
    .A (IMEMOUT[7:0]),
    .B (ALU_OUT),
    .C (dmemOut),
    .D (TOP_ST),
    .SEL (MUX2_SEL),
    .Z (MUX2_OUT));

  mux4 mux41(
    .A (TOP_ST),
    .B (CONST1),
    .C (CONST0),
    .SEL (MUX4_SEL),
    .Z  (MUX4_OUT));

  mux5 mux51(
    .A (SND_ST),
    .B (MUX8_OUT),
    .C (IMEMOUT),
    .D (CONST1),
    .SEL (MUX5_SEL),
    .Z (MUX5_OUT));

  mux6 mux61(
    .A (ALU_OUT),
    .B (TOP_ST),
    .SEL (MUX6_SEL),
    .Z  (MUX6_OUT));

  mux7 mux71(
    .A (ALU_OUT),
    .B (TOP_ST),
    .SEL (MUX7_SEL),
    .Z  (MUX7_OUT));

  mux8 mux81(
    .A (marOut),
    .B (cntOut),
    .SEL (MUX8_SEL),
    .Z  (MUX8_OUT));

  mar mar1(
    .clk,
    .di (MUX6_OUT),
    .we (mar_we),
    .dOut (marOut));

  bar bar1(
    .clk,
    .di (TOP_ST),
    .we (bar_we),
    .dOut (barOut));

  cnt cnt1(
    .clk,
    .di (MUX7_OUT),
    .we (cnt_we),
    .dOut (cntOut));

  dmem dmem1(
    .clk,
    .we (dmem_we),
    .addr (marOut),
    .di (TOP_ST),
    .dout (dmemOut));

endmodule

  