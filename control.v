module control_unit (
    input [6:0] opcode,
    output reg [2:0] immediate_control,
    output reg [1:0] alu_operation,
    output reg alu_src1,
    output reg alu_src2,
    output reg mem_to_reg,
    output reg jump,
    output reg reg_write,
    output reg mem_read,
    output reg mem_write,
    output reg is_rtype,
    output reg is_jalr
);

// Common opcode definitions
localparam [6:0]
OPERATE_REGISTER    = 7'b0110011,
OPERATE_IMMEDIATE   = 7'b0010011,
LOAD                = 7'b0000011,
STORE               = 7'b0100011,
BRANCH              = 7'b1100011,
JAL                 = 7'b1101111,
JALR                = 7'b1100111,
LUI                 = 7'b0110111,
AUIPC               = 7'b0010111;

// Codes for immediate generation
localparam [2:0]
NONE  = 3'b000, // No immediate generated
IMM_I = 3'b001, // I type
IMM_S = 3'b010, // S type
IMM_B = 3'b011, // B type
IMM_U = 3'b100, // U type
IMM_J = 3'b101; // J type

// High level ALU operation categorization
localparam [1:0]
NO_ALU             = 2'b00,         // ALU not used
BRANCH_COMPARE     = 2'b01,         // Comparison by subtraction for branch 
ADD_OFFSET         = 2'b10,         // Computing address with offset addition for load/store/JALR/AUIPC
ARITHMETIC         = 2'b11;         // General operations for R/I type

always @(*)
    begin
        // default
        immediate_control = NONE;    // default invalid
        alu_operation = NO_ALU;      // default invalid
        alu_src1 = 0;                // set to 0 for rs1 data, 1 for PC
        alu_src2 = 0;                 // set to 0 for rs2, 1 for immediate 
        mem_to_reg = 0;              // set to 0 for ALU to register file, 1 for D-cache to register file
        jump = 0;                    // set to 0 for other operations, 1 for PC+4 to register file for jump instructions
        reg_write = 0;               // enable register write data
        mem_read = 0;                // D-cache read
        mem_write = 0;               // D-cache write
        is_rtype = 0;                // default 0
        is_jalr = 0;                 // default 0, set to 1 for JALR instruction
        case (opcode)
            OPERATE_REGISTER:   // all R-type operations
                begin                   
                    alu_operation = ARITHMETIC;
                    reg_write = 1;
                    is_rtype = 1;
                end
            OPERATE_IMMEDIATE:  // general I-type operations
                begin                  
                    alu_operation = ARITHMETIC;
                    immediate_control = IMM_I; 
                    alu_src2 = 1;
                    reg_write = 1;
                end
            LOAD:
                begin
                    alu_operation = ADD_OFFSET;
                    immediate_control = IMM_I;
                    alu_src2 = 1;
                    mem_to_reg = 1;
                    reg_write = 1;
                    mem_read = 1;
                end
            STORE:
                begin
                    alu_operation = ADD_OFFSET;
                    immediate_control = IMM_S;
                    alu_src2 = 1;
                    mem_write = 1;
                end
            BRANCH:
                begin
                    alu_operation = BRANCH_COMPARE;
                    immediate_control = IMM_B;
                    //pc_src = 1;
                end
            JAL:
                begin
                    alu_operation = NO_ALU;
                    immediate_control = IMM_J;
                        jump = 1;
                    reg_write = 1;  // Enable register write for return address
                end
            JALR:
                begin
                    alu_operation = ADD_OFFSET;
                    immediate_control = IMM_I;
                    alu_src2 = 1;
                    jump = 1;
                    reg_write = 1;
                    is_jalr = 1;
                end
            LUI:
                begin
                    alu_operation = NO_ALU;
                    immediate_control = IMM_U;
                    reg_write = 1;
                end
            AUIPC:
                begin
                    alu_operation = ADD_OFFSET;
                    immediate_control = IMM_U;
                    alu_src1 = 1; // AUIPC uses PC as first ALU input
                    alu_src2 = 1; // Use immediate
                    reg_write = 1;
                end
            default: begin
            end
        endcase
    end
endmodule

                
            

