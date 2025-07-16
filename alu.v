module alu (
    input wire [31:0] integer1,
    input wire [31:0] integer2,
    input wire [3:0] ALUControl,
    output reg [31:0] result,
    output wire zero
    );

    assign zero = (result == 32'b0);

    always @(*) begin
        case (ALUControl)
            4'b0000: result = integer1 + integer2;                 // ADD
            4'b0001: result = integer1 - integer2;                 // SUB
            4'b0010: result = integer1 & integer2;                 // AND
            4'b0011: result = integer1 | integer2;                 // OR
            4'b0100: result = integer1 ^ integer2;                 // XOR
            4'b0101: result = ($signed(integer1) < $signed(integer2)) ? 32'b1 : 32'b0; // SLT
            4'b0110: result = (integer1 < integer2) ? 32'b1 : 32'b0;                   // SLTU
            4'b0111: result = integer1 << integer2[4:0];           // SLL
            4'b1000: result = integer1 >> integer2[4:0];           // SRL
            4'b1001: result = $signed(integer1) >>> integer2[4:0]; // SRA
            default: result = 32'b0;
        endcase
    end

endmodule

module alu_src_mux (
    input [31:0] rs2_data,
    input [31:0] offset,
    input alu_src,
    output [31:0] alu_input2
    );

    assign alu_input2 = (alu_src ? offset : rs2_data);

endmodule


module alu_control (
    input [1:0] alu_operation,
    input [6:0] funct7, // equal to immediate[11:5] for I-type
    input [2:0] funct3,
    input is_rtype,
    output reg [3:0] ALUControl
    );

    localparam [1:0]
    NO_ALU             = 2'b00,         // ALU not used
    BRANCH_COMPARE     = 2'b01,         // Comparison by subtraction for branch 
    ADD_OFFSET         = 2'b10,         // Computing address with offset addition for load/store/JALR/AUIPC
    ARITHMETIC         = 2'b11;         // General operations for R/I type
    
    always @ (*)
        begin
            case (alu_operation)
                NO_ALU: 
                    ALUControl = 4'b1111; // produces 0 on ALU
                BRANCH_COMPARE:
                    ALUControl = 4'b0001; // branch always subtracts for comparison
                ADD_OFFSET:
                    ALUControl = 4'b0000; // adds offset
                ARITHMETIC:
                    case (funct3)
                        3'h0: 
                            ALUControl = is_rtype
                            ? (funct7[5] ? 4'b0001 : 4'b0000)  // SUB vs ADD
                            : 4'b0000;                         // ADDI
                        3'h1: 
                            ALUControl = 4'b0111;                                       // shift left logical
                        3'h2: 
                            ALUControl = 4'b0101;                                       // shift less than
                        3'h3:
                            ALUControl = 4'b0110;                                       // shift less than unsigned
                        3'h4:
                            ALUControl = 4'b0100;                                       // XOR
                        3'h5:
                            ALUControl = (funct7[5] ? 4'b1001 : 4'b1000);               // SRA vs SRL
                        3'h6:
                            ALUControl = 4'b0011;                                       // OR
                        3'h7:
                            ALUControl = 4'b0010;                                       // AND
                        default: 
                            ALUControl = 4'b1111;
                    endcase
                default:
                    ALUControl = 4'b1111;
            endcase
        end
endmodule

module branch_unit (
    input  wire [2:0] funct3,                    // from instruction[14:12]
    input  wire        zero,                     // ALU result == 0
    input  wire        lt,                       // signed(integer1 < integer2)
    input  wire        ltu,                      // unsigned(integer1 < integer2)
    output reg         branch_condition_match    // 1 if comparison matches desired condition
);

always @(*) begin
    case (funct3)
        3'b000: branch_condition_match = zero;        // BEQ
        3'b001: branch_condition_match = ~zero;       // BNE
        3'b100: branch_condition_match = lt;          // BLT (signed)
        3'b101: branch_condition_match = ~lt;         // BGE (signed)
        3'b110: branch_condition_match = ltu;         // BLTU (unsigned)
        3'b111: branch_condition_match = ~ltu;        // BGEU (unsigned)
        default: branch_condition_match = 1'b0;
    endcase
end

endmodule
