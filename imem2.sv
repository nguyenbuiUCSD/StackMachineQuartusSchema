
// CSE141L Spring 2018 Nguyen Bui - Richard Chum 
// instruction memory ROM

module imem2(
  input       [7:0] PC,      // program counter = pointer to imem
  output logic[8:0] inst);	 // machine code values 
  always_comb case(PC)
    0: inst = 'b0_0000_1010;   // push 10
    1: inst = 'b1_0000_1000;   //pcnt
    2: inst = 'b0_0000_0101;   //push 5
    3: inst = 'b1_0001_0010;  //pbar
    4: inst = 'b0_0000_0001;   // push 1
    5: inst = 'b0_0000_0001;   // push 1
    6: inst = 'b1_0000_0000;   // add
    7: inst = 'b1_0000_1011;  //cpy
    8: inst = 'b1_0000_0110;   // bne
    9: inst = 'b1_0001_0011;   //addc
    10: inst = 'b1_0000_1100;  //ldcnt
    11: inst = 'b1_1111_1111;   // halt


    default: inst = 'b1_1111_1111; // covers all cases not included in the above list
  endcase
endmodule
