

// CSE141L Spring 2018 Nguyen Bui - Richard Chum 
// instruction memory ROM

module imem3(
  input       [7:0] PC,      // program counter = pointer to imem
  output logic[8:0] inst);	 // machine code values 
  always_comb case(PC)
    0: inst = 'b0_0000_0000;   // push 0
    1: inst = 'b1_0000_1000;   //pcnt
    2: inst = 'b0_0000_0100;   //push 4
    3: inst = 'b1_0001_0010;  //pbar
//loop for spaces start

    4: inst = 'b0_0010_0000;   //push 32(space)

    5: inst = 'b0_0010_1011; //push 43 starting state
    6: inst = 'b1_0000_0111;   //pmar
    7: inst = 'b1_0000_0011;  //load to stack (LDS)

    8: inst = 'b1_0000_0001;  //xor			 	//first encrypted message

    9: inst = 'b0_0100_0000;   //push 64
    10: inst = 'b1_0000_1100;  //ldcnt
    11: inst = 'b1_0000_0000;   // add
    12: inst = 'b1_0000_0111;   //pmar
    13: inst = 'b1_0000_0100;  // store				//stack is cleared, first encryted message is stored


    14: inst = 'b0_0010_1011; //push 43 starting state		//calculating next lfsr
    15: inst = 'b1_0000_0111;   //pmar
    16: inst = 'b1_0000_0011;  //load to stack (LDS)



    17: inst = 'b0_0010_1010; //push 42 load pattern
    18: inst = 'b1_0000_0111;   //pmar
    19: inst = 'b1_0000_0011;  //load to stack (LDS)
    20: inst = 'b1_0000_0010;  //and				//get r2

    21: inst = 'b1_0000_1011;  //cpy				
    22: inst = 'b1_1001_0100;  //srn 4
    23: inst = 'b1_0000_0001;  //xor

    24: inst = 'b1_0000_1011;  //cpy
    25: inst = 'b1_1001_0010;  //srn 2
    26: inst = 'b1_0000_0001;  //xor


    27: inst = 'b1_0000_1011;  //cpy
    28: inst = 'b1_1001_0001;  //srn 1
    29: inst = 'b1_0000_0001;  //xor				


    30: inst = 'b0_0000_0001;   // push 1
    31: inst = 'b1_0000_0010;  //and				//only r2 on top of stack 

    32: inst = 'b0_0010_1011; //push 43 starting state		//get r0 back
    33: inst = 'b1_0000_0111;   //pmar
    34: inst = 'b1_0000_0011;  //load to stack (LDS)
    35: inst = 'b1_1000_0001;  //sln 1

    36: inst = 'b1_0000_0000;   // add

    37: inst = 'b0_0010_1011; //push 43 next state
    38: inst = 'b1_0000_0111;   //pmar
    39: inst = 'b1_0000_0100;  // store
   
    40: inst = 'b1_0001_0011;   //addc
		
    41: inst = 'b0_0010_1001;   //push 41			
    42: inst = 'b1_0000_0111;   //pmar
    43: inst = 'b1_0000_0011;  //load to stack (LDS)
    44: inst = 'b1_0000_0110;   // bne


    45: inst = 'b0_0000_0000;   // push 0
    46: inst = 'b1_0000_1000;   //pcnt
    47: inst = 'b0_0010_1111;   //push 47
    48: inst = 'b1_0001_0010;  //pbar








//loop for message starts
    49: inst = 'b1_0000_1100;  //ldcnt				//get first letter
    50: inst = 'b1_0000_0111;   //pmar
    51: inst = 'b1_0000_0011;  //load to stack (LDS)

    52: inst = 'b0_0010_1011; //push 43 starting state
    53: inst = 'b1_0000_0111;   //pmar
    54: inst = 'b1_0000_0011;  //load to stack (LDS)

    55: inst = 'b1_0000_0001;  //xor			 	//first encrypted message

    56: inst = 'b0_0100_0000;   //push 64
    57: inst = 'b1_0000_1100;  //ldcnt
    58: inst = 'b1_0000_0000;   // add

    59: inst = 'b0_0010_1001;   //push 41			
    60: inst = 'b1_0000_0111;   //pmar
    61: inst = 'b1_0000_0011;  //load to stack (LDS)
    62: inst = 'b1_0000_0000;   // add
    63: inst = 'b1_0000_0111;   //pmar
    64: inst = 'b1_0000_0100;  // store				//stack is cleared, first encryted message is stored


    65: inst = 'b0_0010_1011; //push 43 starting state		//calculating next lfsr
    66: inst = 'b1_0000_0111;   //pmar
    67: inst = 'b1_0000_0011;  //load to stack (LDS)



    68: inst = 'b0_0010_1010; //push 42 load pattern
    69: inst = 'b1_0000_0111;   //pmar
    70: inst = 'b1_0000_0011;  //load to stack (LDS)
    71: inst = 'b1_0000_0010;  //and				//get r2

    72: inst = 'b1_0000_1011;  //cpy				
    73: inst = 'b1_1001_0100;  //srn 4
    74: inst = 'b1_0000_0001;  //xor

    75: inst = 'b1_0000_1011;  //cpy
    76: inst = 'b1_1001_0010;  //srn 2
    77: inst = 'b1_0000_0001;  //xor


    78: inst = 'b1_0000_1011;  //cpy
    79: inst = 'b1_1001_0001;  //srn 1
    80: inst = 'b1_0000_0001;  //xor				


    81: inst = 'b0_0000_0001;   // push 1
    82: inst = 'b1_0000_0010;  //and				//only r2 on top of stack 

    83: inst = 'b0_0010_1011; //push 43 starting state		//get r0 back
    84: inst = 'b1_0000_0111;   //pmar
    85: inst = 'b1_0000_0011;  //load to stack (LDS)
    86: inst = 'b1_1000_0001;  //sln 1
    87: inst = 'b1_0000_0000;   // add

    88: inst = 'b0_0010_1011; //push 43 next state
    89: inst = 'b1_0000_0111;   //pmar
    90: inst = 'b1_0000_0100;  // store
   
    91: inst = 'b1_0001_0011;   //addc
		
    92: inst = 'b0_0010_1001;   //push 41			//loop 41 times 
    93: inst = 'b1_0000_0110;   // bne





    94: inst = 'b0_0010_1001;   //push 41			
    95: inst = 'b1_0000_0111;   //pmar
    96: inst = 'b1_0000_0011;  //load to stack (LDS)
    97: inst = 'b1_0000_1100;  //ldcnt
    98: inst = 'b1_0000_0000;   // add
    99: inst = 'b1_0000_1000;   //pcnt

    100: inst = 'b0_0110_0110;   //push 102
    101: inst = 'b1_0001_0010;  //pbar
//loop for spaces (at end) start

    102: inst = 'b0_0010_0000;   //push 32(space)

    103: inst = 'b0_0010_1011; //push 43 starting state
    104: inst = 'b1_0000_0111;   //pmar
    105: inst = 'b1_0000_0011;  //load to stack (LDS)

    106: inst = 'b1_0000_0001;  //xor			 	//first encrypted message

    107: inst = 'b0_0100_0000;   //push 64
    108: inst = 'b1_0000_1100;  //ldcnt
    109: inst = 'b1_0000_0000;   // add
    110: inst = 'b1_0000_0111;   //pmar
    111: inst = 'b1_0000_0100;  // store				//stack is cleared, first encryted message is stored


    112: inst = 'b0_0010_1011; //push 43 starting state		//calculating next lfsr
    113: inst = 'b1_0000_0111;   //pmar
    114: inst = 'b1_0000_0011;  //load to stack (LDS)



    115: inst = 'b0_0010_1010; //push 42 load pattern
    116: inst = 'b1_0000_0111;   //pmar
    117: inst = 'b1_0000_0011;  //load to stack (LDS)
    118: inst = 'b1_0000_0010;  //and				//get r2

    119: inst = 'b1_0000_1011;  //cpy				
    120: inst = 'b1_1001_0100;  //srn 4
    121: inst = 'b1_0000_0001;  //xor

    122: inst = 'b1_0000_1011;  //cpy
    123: inst = 'b1_1001_0010;  //srn 2
    124: inst = 'b1_0000_0001;  //xor


    125: inst = 'b1_0000_1011;  //cpy
    126: inst = 'b1_1001_0001;  //srn 1
    127: inst = 'b1_0000_0001;  //xor				


    128: inst = 'b0_0000_0001;   // push 1
    129: inst = 'b1_0000_0010;  //and				//only r2 on top of stack 

    130: inst = 'b0_0010_1011; //push 43 starting state		//get r0 back
    131: inst = 'b1_0000_0111;   //pmar
    132: inst = 'b1_0000_0011;  //load to stack (LDS)
    133: inst = 'b1_1000_0001;  //sln 1

    134: inst = 'b1_0000_0000;   // add

    135: inst = 'b0_0010_1011; //push 43 next state
    136: inst = 'b1_0000_0111;   //pmar
    137: inst = 'b1_0000_0100;  // store
   
    138: inst = 'b1_0001_0011;   //addc
    139: inst = 'b0_0100_0000;   //push 64	


    140: inst = 'b1_0000_0110;   // bne
    141: inst = 'b1_1111_1111;   //halt





/*
    4: inst = 'b1_0000_1100;  //ldcnt
    5: inst = 'b1_0000_0111;   //pmar
    6: inst = 'b1_0000_0011;  //load to stack (LDS)











    7: inst = 'b0_0100_0000;   //push 64
    8: inst = 'b1_0000_1100;  //ldcnt
    9: inst = 'b1_0000_0000;   // add
    10: inst = 'b1_0000_0111;   //pmar
    11: inst = 'b1_0000_0100;  // store
    12: inst = 'b1_0001_0011;   //addc
    13: inst = 'b0_0100_0000;   //push 64
    14: inst = 'b1_0000_0110;   // bne
    15: inst = 'b1_1111_1111;   //halt
*/


    default: inst = 'b1_1111_1111; // covers all cases not included in the above list
  endcase
endmodule