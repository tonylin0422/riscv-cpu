module if_id_reg(
    input clk,
    input reset,
    input stall,
    input flush,
    input [31:0] instruction_in,
    input [31:0] pc_in,
    output reg [31:0] instruction_out,
    output reg [31:0] pc_out
);

always @ (posedge clk or posedge reset)
    begin
        if (reset || flush)
            begin
                instruction_out <= 32'h00000000;
                pc_out <= 32'h00000000;
            end
        else if (!stall)
            begin
                instruction_out <= instruction_in;
                pc_out <= pc_in;
            end
        // If stall=1, hold current values
    end

endmodule

module id_ex_reg(
    input clk, 
    input reset,
    input stall,
    input flush,
    
    // Data inputs
    input [31:0] pc_in,
    input [31:0] rs1_in,
    input [31:0] rs2_in,
    input [31:0] immediate_in,
    
    // Control inputs
    input [1:0] alu_operation_in,
    input alu_src1_in,
    input alu_src2_in,
    input mem_to_reg_in,
    input jump_in,
    input reg_write_in,
    input mem_read_in,
    input mem_write_in,
    input is_rtype_in,
    input is_jalr_in,
    
    // Instruction fields
    input [4:0] rs1_addr_in,
    input [4:0] rs2_addr_in,
    input [4:0] rd_addr_in,     
    input [2:0] funct3_in,     
    input [6:0] funct7_in,
    input [6:0] opcode_in,

    // Data outputs
    output reg [31:0] pc_out,
    output reg [31:0] rs1_out,
    output reg [31:0] rs2_out,
    output reg [31:0] immediate_out,
    
    // Control outputs
    output reg [1:0] alu_operation_out,
    output reg alu_src1_out,
    output reg alu_src2_out,
    output reg mem_to_reg_out,
    output reg jump_out,
    output reg reg_write_out,
    output reg mem_read_out,
    output reg mem_write_out,
    output reg is_rtype_out,
    output reg is_jalr_out,
    
    // Instruction field outputs
    output reg [4:0] rs1_addr_out,
    output reg [4:0] rs2_addr_out,
    output reg [4:0] rd_addr_out,
    output reg [2:0] funct3_out,
    output reg [6:0] funct7_out,
    output reg [6:0] opcode_out
);

always @ (posedge clk or posedge reset)
begin
    if (reset || flush)
    begin
        // Data
        pc_out <= 32'h00000000;
        rs1_out <= 32'h00000000;
        rs2_out <= 32'h00000000;
        immediate_out <= 32'h00000000;
        
        // Control - reset to create NOP
        alu_operation_out <= 2'b00;
        alu_src1_out <= 1'b0;
        alu_src2_out <= 1'b0;
        mem_to_reg_out <= 1'b0;
        jump_out <= 1'b0;
        reg_write_out <= 1'b0;  // Disable writeback = NOP
        mem_read_out <= 1'b0;
        mem_write_out <= 1'b0;
        is_rtype_out <= 1'b0;
        is_jalr_out <= 1'b0;
        
        // Instruction fields
        rs1_addr_out <= 5'b00000;
        rs2_addr_out <= 5'b00000;
        rd_addr_out <= 5'b00000;
        funct3_out <= 3'b000;
        funct7_out <= 7'b0000000;
        opcode_out <= 7'b0000000;
    end
    else if (!stall)
    begin
        // Data
        pc_out <= pc_in;
        rs1_out <= rs1_in;
        rs2_out <= rs2_in;
        immediate_out <= immediate_in;
        
        // Control
        alu_operation_out <= alu_operation_in;
        alu_src1_out <= alu_src1_in;
        alu_src2_out <= alu_src2_in;
        mem_to_reg_out <= mem_to_reg_in;
        jump_out <= jump_in;
        reg_write_out <= reg_write_in;
        mem_read_out <= mem_read_in;
        mem_write_out <= mem_write_in;
        is_rtype_out <= is_rtype_in;
        is_jalr_out <= is_jalr_in;
        
        // Instruction fields
        rs1_addr_out <= rs1_addr_in;
        rs2_addr_out <= rs2_addr_in;
        rd_addr_out <= rd_addr_in;
        funct3_out <= funct3_in;
        funct7_out <= funct7_in;
        opcode_out <= opcode_in;
    end
    // If stall=1, hold current values
end

endmodule

module ex_mem_reg(
    input clk, 
    input reset,
    input flush,
    
    // Data inputs from EX stage
    input [31:0] alu_result_in,
    input [31:0] rs2_data_in,       // For store operations
    input [31:0] pc_in,
    input [31:0] immediate_in,
    
    // Control inputs from EX stage
    input mem_to_reg_in,
    input jump_in,
    input reg_write_in,
    input mem_read_in,
    input mem_write_in,
    
    // Instruction fields from EX stage
    input [4:0] rd_addr_in,
    input [2:0] funct3_in,
    input [6:0] opcode_in,
    
    // Data outputs to MEM stage
    output reg [31:0] alu_result_out,
    output reg [31:0] rs2_data_out,
    output reg [31:0] pc_out,
    output reg [31:0] immediate_out,
    
    // Control outputs to MEM stage
    output reg mem_to_reg_out,
    output reg jump_out,
    output reg reg_write_out,
    output reg mem_read_out,
    output reg mem_write_out,
    
    // Instruction field outputs to MEM stage
    output reg [4:0] rd_addr_out,
    output reg [2:0] funct3_out,
    output reg [6:0] opcode_out
);

always @ (posedge clk or posedge reset)
begin
    if (reset || flush)
    begin
        // Data
        alu_result_out <= 32'h00000000;
        rs2_data_out <= 32'h00000000;
        pc_out <= 32'h00000000;
        immediate_out <= 32'h00000000;
        
        // Control - reset to create NOP
        mem_to_reg_out <= 1'b0;
        jump_out <= 1'b0;
        reg_write_out <= 1'b0;  // Disable writeback = NOP
        mem_read_out <= 1'b0;
        mem_write_out <= 1'b0;
        
        // Instruction fields
        rd_addr_out <= 5'b00000;
        funct3_out <= 3'b000;
        opcode_out <= 7'b0000000;
    end
    else
    begin
        // Data
        alu_result_out <= alu_result_in;
        rs2_data_out <= rs2_data_in;
        pc_out <= pc_in;
        immediate_out <= immediate_in;
        
        // Control
        mem_to_reg_out <= mem_to_reg_in;
        jump_out <= jump_in;
        reg_write_out <= reg_write_in;
        mem_read_out <= mem_read_in;
        mem_write_out <= mem_write_in;
        
        // Instruction fields
        rd_addr_out <= rd_addr_in;
        funct3_out <= funct3_in;
        opcode_out <= opcode_in;
    end
end

endmodule

module mem_wb_reg(
    input clk,
    input reset,
    
    // Data inputs from MEM stage
    input [31:0] alu_result_in,
    input [31:0] mem_data_in,
    input [31:0] pc_in,
    input [31:0] immediate_in,
    
    // Control inputs from MEM stage
    input mem_to_reg_in,
    input jump_in,
    input reg_write_in,
    
    // Instruction fields from MEM stage
    input [4:0] rd_addr_in,
    input [6:0] opcode_in,
    
    // Data outputs to WB stage
    output reg [31:0] alu_result_out,
    output reg [31:0] mem_data_out,
    output reg [31:0] pc_out,
    output reg [31:0] immediate_out,
    
    // Control outputs to WB stage
    output reg mem_to_reg_out,
    output reg jump_out,
    output reg reg_write_out,
    
    // Instruction field outputs to WB stage
    output reg [4:0] rd_addr_out,
    output reg [6:0] opcode_out
);

always @ (posedge clk or posedge reset)
begin
    if (reset)
    begin
        // Data
        alu_result_out <= 32'h00000000;
        mem_data_out <= 32'h00000000;
        pc_out <= 32'h00000000;
        immediate_out <= 32'h00000000;
        
        // Control - reset to create NOP
        mem_to_reg_out <= 1'b0;
        jump_out <= 1'b0;
        reg_write_out <= 1'b0;  // Disable writeback = NOP
        
        // Instruction fields
        rd_addr_out <= 5'b00000;
        opcode_out <= 7'b0000000;
    end
    else
    begin
        // Data
        alu_result_out <= alu_result_in;
        mem_data_out <= mem_data_in;
        pc_out <= pc_in;
        immediate_out <= immediate_in;
        
        // Control
        mem_to_reg_out <= mem_to_reg_in;
        jump_out <= jump_in;
        reg_write_out <= reg_write_in;
        
        // Instruction fields
        rd_addr_out <= rd_addr_in;
        opcode_out <= opcode_in;
    end
end

endmodule