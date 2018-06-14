// CSE141L Spring 2018 Nguyen Bui - Richard Chum 
// instruction memory ROM

module imem(
  input       [7:0] PC,      // program counter = pointer to imem
  output logic[8:0] inst);	 // machine code values 
  always_comb case(PC)
    0: inst = 'b0_0000_0000;   // push 0
    1: inst = 'b0_0000_0001;   // push 1
    2: inst = 'b0_0000_0010;   // push 2
    3: inst = 'b0_0000_0011;   // push 3
    4: inst = 'b0_0000_0100;   // push 4
    5: inst = 'b0_0000_0101;   // push 5
    6: inst = 'b0_0000_0110;   // push 6
    7: inst = 'b1_0000_0000;   // add
    8: inst = 'b1_0000_0111;   //pmar
    9: inst = 'b1_0000_1000;   //pcnt
    10: inst = 'b1_0000_0011;  //load to stack (LDS)
    11: inst = 'b1_0000_0000;   // add
    12: inst = 'b1_0000_0100;  // store
    13: inst = 'b1_0000_1011;  //cpy
    14: inst = 'b1_0000_0011;  //load to stack (LDS)
    15: inst = 'b1_1001_0100;  //srn 4
    16: inst = 'b1_0000_0011;  //load to stack (LDS)
    17: inst = 'b1_1001_0010;  //srn 2
    18: inst = 'b1_0000_0011;  //load to stack (LDS)
    19: inst = 'b1_1001_0001;  //srn 1
    20: inst = 'b1_1000_0010;  //sln 2
    21: inst = 'b1_0000_0001;  //xor 
    22: inst = 'b1_0000_0010;  //and
    23: inst = 'b1_0001_0010;  //pbar
    24: inst = 'b1_1111_1111;   // halt


    default: inst = 'b1_1111_1111; // covers all cases not included in the above list
  endcase
endmodule
