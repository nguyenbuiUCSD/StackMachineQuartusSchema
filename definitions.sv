	//This file defines the parameters used in every where
// CSE141L Spring 2018 Nguyen Bui - Richard Chum
package definitions;

    //selectors mux2
    const logic [1:0] SEL_IMEM = 2'b00;
    const logic [1:0] SEL_ALUOUT = 2'b01;
    const logic [1:0] SEL_DMEM = 2'b10;
    const logic [1:0] SEL_TOP_ST = 2'b11;

    //selectors mux4
    const logic [1:0] SEL4_TOP_ST = 2'b00;
    const logic [1:0] SEL4_1 = 2'b01;
    const logic [1:0] SEL4_0 = 2'b10;

    //selectors mux5
    const logic [1:0] SEL_SND_ST = 2'b00;
    const logic [1:0] SEL_MUX8OUT = 2'b01;
    const logic [1:0] SEL_IMEMOUT = 2'b10;
    const logic [1:0] SEL_1 = 2'b11;


    const logic [7:0] CONST1 = 8'b00000001;
    const logic [7:0] CONST0 = 8'b00000000;

    //selectors mux7
    const logic SEL7_ALUOUT = 1'b0;
    const logic SEL7_TOP_ST = 1'b1;

    //selectors mux8
    const logic SEL_MAR = 1'b0;
    const logic SEL_CNT = 1'b1;


    // R-type definitions
    const logic [6:0] R_ADD  = 7'b0000000;
    const logic [6:0] R_XOR = 7'b0000001;
    const logic [6:0] R_AND = 7'b0000010;
    const logic [6:0] R_LDS = 7'b0000011;
    const logic [6:0] R_ST = 7'b0000100;
    const logic [6:0] R_BE = 7'b0000101;
    const logic [6:0] R_BNE = 7'b0000110;
    const logic [6:0] R_PMAR = 7'b0000111;
    const logic [6:0] R_PCNT = 7'b0001000;
    const logic [6:0] R_SUB  = 7'b0001001;
    const logic [6:0] R_CPY = 7'b0001011;
    const logic [6:0] R_LDCNT = 7'b0001100;

    const logic [6:0] R_PBAR = 7'b0010010;
    const logic [6:0] R_ADDC = 7'b0010011;



    // I-type definitions
    const logic [2:0] I_SRN = 3'b001;
    const logic [2:0] I_SLN = 3'b000;

    // Instruction types
    const logic P_TYPE  = 1'b0;      // load reg_file from data_mem
    const logic [1:0] R_TYPE  = 2'b10;      // load reg_file from data_mem
    const logic [1:0] I_TYPE  = 2'b11;	    //for I types

    // Stack pointer operations
    const logic [1:0] DES_2  = 2'b00;      //
    const logic [1:0] DES_1  = 2'b01;      //
    const logic [1:0] ADV_0  = 2'b10;      //
    const logic [1:0] ADV_1  = 2'b11;      //

    // Instruction map to ALU
    const logic [2:0]aluADD  = 3'b000;	  // add A+B w/ carry
    const logic [2:0]aluSUB  = 3'b001;	  // sub A-B w/ carry
    const logic [2:0]aluSL   = 3'b010;	  // shift left 
    const logic [2:0]aluSR   = 3'b011;	  // shift right
    const logic [2:0]aluXOR   = 3'b100;	  // xor 
    const logic [2:0]aluAND   = 3'b101;	  // and
    const logic [2:0]aluBE   = 3'b110;	  // branch, top stack = cnt
    const logic [2:0]aluBNE   = 3'b111;	  // branch, cnt != 0

endpackage // definitions
