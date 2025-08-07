module top(
    input clk,
    input reset
);

/* ========== IF STAGE ========== */
wire [31:0] pc;
wire [31:0] pc_next;
wire [31:0] instruction;

// Program counter - FIXED: Add stall capability
program_counter pc_inst(
    .pc(pc),
    .clk(clk),
    .reset(reset),
    .stall_pc(stall_pc),
    .pc_next(pc_next)
);

// Instruction memory
instruction_memory imem(
    .pc_address(pc),
    .clk(clk),
    .reset(reset),
    .instruction(instruction)
);

/* ========== IF/ID REGISTER ========== */
wire stall_if_id;
wire flush_branch;
wire [31:0] if_id_pc;
wire [31:0] if_id_instruction;

if_id_reg if_id_register(
    .clk(clk),
    .reset(reset),
    .stall(stall_if_id),
    .flush(flush_branch),
    .instruction_in(instruction),
    .pc_in(pc),
    .instruction_out(if_id_instruction),
    .pc_out(if_id_pc)
);

/* ========== ID STAGE ========== */
// Control signals
wire [6:0] opcode;
wire [2:0] immediate_control;
wire [1:0] alu_operation;
wire alu_src1;
wire alu_src2;
wire mem_to_reg;
wire jump;
wire reg_write;
wire mem_read;
wire mem_write;
wire is_rtype;
wire is_jalr;

assign opcode = if_id_instruction[6:0];

// Control Unit
control_unit cu(
    .opcode(opcode),
    .immediate_control(immediate_control),
    .alu_operation(alu_operation),
    .alu_src1(alu_src1),
    .alu_src2(alu_src2),
    .mem_to_reg(mem_to_reg),
    .jump(jump),
    .reg_write(reg_write),
    .mem_read(mem_read),
    .mem_write(mem_write),
    .is_rtype(is_rtype),
    .is_jalr(is_jalr)
);

// Regfile signals
wire [4:0] rs1_address;
wire [4:0] rs2_address;
wire [4:0] rd_address;
wire [31:0] write_data_to_reg;
wire [31:0] rs1_read;
wire [31:0] rs2_read;

// RS1 and RS2 and RD based on RISC-V instruction format
assign rs1_address = if_id_instruction[19:15];
assign rs2_address = if_id_instruction[24:20];
assign rd_address  = if_id_instruction[11:7];

// Register file - FIXED: Connect to WB stage signals
wire [31:0] mem_wb_write_data;
wire [4:0] mem_wb_rd_addr;
wire mem_wb_reg_write;

regfile register_file(
    .clk(clk),
    .reset(reset),
    .rs1_address(rs1_address),
    .rs2_address(rs2_address),
    .rd_address(mem_wb_rd_addr),        // Write address from WB stage
    .write_data(mem_wb_write_data),     // Write data from WB stage
    .write_enable(mem_wb_reg_write),    // Write enable from WB stage
    .rs1_read(rs1_read),
    .rs2_read(rs2_read)
);

// Immediate generation
wire [31:0] sign_extended_immediate;
immediate_generator immediate(
    .instruction(if_id_instruction),
    .immediate_control(immediate_control),
    .sign_extended_immediate(sign_extended_immediate)
);

/* ========== HAZARD DETECTION ========== */
wire stall_pc, flush_id_ex;

hdu hazard_detection_unit(
    .id_rs1_address(rs1_address),
    .id_rs2_address(rs2_address),
    .ex_rd_address(id_ex_rd_addr),
    .ex_reg_write(id_ex_reg_write),
    .ex_mem_read(id_ex_mem_read),
    .stall_pc(stall_pc),
    .stall_if_id(stall_if_id),
    .flush_id_ex(flush_id_ex)
);

/* ========== ID/EX PIPELINE REGISTER ========= */
wire [31:0] id_ex_pc, id_ex_rs1_data, id_ex_rs2_data, id_ex_immediate;
wire [4:0] id_ex_rs1_addr, id_ex_rs2_addr, id_ex_rd_addr;
wire [2:0] id_ex_funct3;
wire [6:0] id_ex_funct7, id_ex_opcode;
wire [1:0] id_ex_alu_operation;
wire id_ex_alu_src1, id_ex_alu_src2, id_ex_mem_to_reg, id_ex_jump;
wire id_ex_reg_write, id_ex_mem_read, id_ex_mem_write, id_ex_is_rtype, id_ex_is_jalr;


id_ex_reg id_ex_register(
    .clk(clk),
    .reset(reset),
    .stall(1'b0),                    // ID/EX doesn't stall
    .flush(flush_id_ex || flush_branch),  // Flush on hazard detection OR branch taken
    
    // Data inputs
    .pc_in(if_id_pc),
    .rs1_in(rs1_read),
    .rs2_in(rs2_read),
    .immediate_in(sign_extended_immediate),
    
    // Control inputs
    .alu_operation_in(alu_operation),
    .alu_src1_in(alu_src1),
    .alu_src2_in(alu_src2),
    .mem_to_reg_in(mem_to_reg),
    .jump_in(jump),
    .reg_write_in(reg_write),
    .mem_read_in(mem_read),
    .mem_write_in(mem_write),
    .is_rtype_in(is_rtype),
    .is_jalr_in(is_jalr),
    
    // Instruction fields
    .rs1_addr_in(rs1_address),
    .rs2_addr_in(rs2_address),
    .rd_addr_in(rd_address),
    .funct3_in(if_id_instruction[14:12]),
    .funct7_in(if_id_instruction[31:25]),
    .opcode_in(opcode),
    
    // Outputs
    .pc_out(id_ex_pc),
    .rs1_out(id_ex_rs1_data),
    .rs2_out(id_ex_rs2_data),
    .immediate_out(id_ex_immediate),
    .alu_operation_out(id_ex_alu_operation),
    .alu_src1_out(id_ex_alu_src1),
    .alu_src2_out(id_ex_alu_src2),
    .mem_to_reg_out(id_ex_mem_to_reg),
    .jump_out(id_ex_jump),
    .reg_write_out(id_ex_reg_write),
    .mem_read_out(id_ex_mem_read),
    .mem_write_out(id_ex_mem_write),
    .is_rtype_out(id_ex_is_rtype),
    .is_jalr_out(id_ex_is_jalr),
    .rs1_addr_out(id_ex_rs1_addr),
    .rs2_addr_out(id_ex_rs2_addr),
    .rd_addr_out(id_ex_rd_addr),
    .funct3_out(id_ex_funct3),
    .funct7_out(id_ex_funct7),
    .opcode_out(id_ex_opcode)
);

/* ========== EX STAGE ========== */
wire [31:0] alu_input1;
wire [31:0] alu_input2;
wire [31:0] alu_result;
wire [3:0] ALUControl;
wire zero;
wire lt;
wire ltu;
wire branch_condition_match;

// Forwarding unit
wire [1:0] forward_rs1, forward_rs2;
reg [31:0] forwarded_rs1_data, forwarded_rs2_data;

fu forwarding_unit(
    .ex_rs1_address(id_ex_rs1_addr),
    .ex_rs2_address(id_ex_rs2_addr),
    .mem_rd_address(ex_mem_rd_addr),
    .wb_rd_address(mem_wb_rd_addr),
    .mem_reg_write(ex_mem_reg_write),
    .wb_reg_write(mem_wb_reg_write),
    .forward1(forward_rs1),
    .forward2(forward_rs2)
);

// Forwarding multiplexers
always @(*) begin
    case (forward_rs1)
        2'b00: forwarded_rs1_data = id_ex_rs1_data;      // No forwarding
        2'b01: forwarded_rs1_data = ex_mem_alu_result;   // Forward from MEM
        2'b10: forwarded_rs1_data = mem_wb_write_data;   // Forward from WB
        default: forwarded_rs1_data = id_ex_rs1_data;
    endcase
end

always @(*) begin
    case (forward_rs2)
        2'b00: forwarded_rs2_data = id_ex_rs2_data;      // No forwarding
        2'b01: forwarded_rs2_data = ex_mem_alu_result;   // Forward from MEM
        2'b10: forwarded_rs2_data = mem_wb_write_data;   // Forward from WB
        default: forwarded_rs2_data = id_ex_rs2_data;
    endcase
end

// ALU input multiplexers
alu_src1_mux alu_src1_mux_inst(
    .rs1_data(forwarded_rs1_data),    // Use forwarded data
    .pc(id_ex_pc),
    .alu_src1(id_ex_alu_src1),        // Use pipeline register values
    .alu_input1(alu_input1)
);

alu_src2_mux alu_src2_mux_inst(
    .rs2_data(forwarded_rs2_data),    // Use forwarded data
    .offset(id_ex_immediate),         // Use pipeline register values
    .alu_src2(id_ex_alu_src2),        // Use pipeline register values
    .alu_input2(alu_input2)
);

// ALU control
alu_control alu_ctrl(
    .alu_operation(id_ex_alu_operation),
    .funct7(id_ex_funct7),
    .funct3(id_ex_funct3),
    .is_rtype(id_ex_is_rtype),
    .ALUControl(ALUControl)
);

// ALU unit
alu alu_unit(
    .integer1(alu_input1),
    .integer2(alu_input2),
    .ALUControl(ALUControl),
    .result(alu_result),
    .zero(zero)
);

// Generate comparison signals for branch unit
assign lt = ($signed(alu_input1) < $signed(alu_input2));
assign ltu = (alu_input1 < alu_input2);

// Branch unit
branch_unit branch_unit_inst(
    .funct3(id_ex_funct3),
    .zero(zero),
    .lt(lt),
    .ltu(ltu),
    .opcode(id_ex_opcode),
    .branch_condition_match(branch_condition_match)
);

/* ========== EX/MEM PIPELINE REGISTER ========== */
wire [31:0] ex_mem_alu_result, ex_mem_rs2_data, ex_mem_pc, ex_mem_immediate;
wire [4:0] ex_mem_rd_addr;
wire [2:0] ex_mem_funct3;
wire [6:0] ex_mem_opcode;
wire ex_mem_mem_to_reg, ex_mem_jump, ex_mem_reg_write, ex_mem_mem_read, ex_mem_mem_write;

ex_mem_reg ex_mem_register(
    .clk(clk),
    .reset(reset),
    .flush(1'b0),                     // EX/MEM doesn't get flushed for load-use
    
    // Data inputs from EX stage
    .alu_result_in(alu_result),
    .rs2_data_in(forwarded_rs2_data), // Forward RS2 for store operations
    .pc_in(id_ex_pc),
    .immediate_in(id_ex_immediate),
    
    // Control inputs from EX stage
    .mem_to_reg_in(id_ex_mem_to_reg),
    .jump_in(id_ex_jump),
    .reg_write_in(id_ex_reg_write),
    .mem_read_in(id_ex_mem_read),
    .mem_write_in(id_ex_mem_write),
    
    // Instruction fields from EX stage
    .rd_addr_in(id_ex_rd_addr),
    .funct3_in(id_ex_funct3),
    .opcode_in(id_ex_opcode),
    
    // Outputs to MEM stage
    .alu_result_out(ex_mem_alu_result),
    .rs2_data_out(ex_mem_rs2_data),
    .pc_out(ex_mem_pc),
    .immediate_out(ex_mem_immediate),
    .mem_to_reg_out(ex_mem_mem_to_reg),
    .jump_out(ex_mem_jump),
    .reg_write_out(ex_mem_reg_write),
    .mem_read_out(ex_mem_mem_read),
    .mem_write_out(ex_mem_mem_write),
    .rd_addr_out(ex_mem_rd_addr),
    .funct3_out(ex_mem_funct3),
    .opcode_out(ex_mem_opcode)
);

/* ========== MEM STAGE ========== */
wire [31:0] dcache_read;

// Data memory
data_mem dmem(
    .clk(clk),
    .reset(reset),
    .address(ex_mem_alu_result),
    .write_data(ex_mem_rs2_data),
    .funct3(ex_mem_funct3),
    .read_enable(ex_mem_mem_read),
    .write_enable(ex_mem_mem_write),
    .read_data(dcache_read)
);

/* ========== MEM/WB PIPELINE REGISTER ========== */
wire [31:0] mem_wb_alu_result, mem_wb_mem_data, mem_wb_pc, mem_wb_immediate;
wire [6:0] mem_wb_opcode;
wire mem_wb_mem_to_reg, mem_wb_jump;

mem_wb_reg mem_wb_register(
    .clk(clk),
    .reset(reset),
    
    // Data inputs from MEM stage
    .alu_result_in(ex_mem_alu_result),
    .mem_data_in(dcache_read),
    .pc_in(ex_mem_pc),
    .immediate_in(ex_mem_immediate),
    
    // Control inputs from MEM stage
    .mem_to_reg_in(ex_mem_mem_to_reg),
    .jump_in(ex_mem_jump),
    .reg_write_in(ex_mem_reg_write),
    
    // Instruction fields from MEM stage
    .rd_addr_in(ex_mem_rd_addr),
    .opcode_in(ex_mem_opcode),
    
    // Outputs to WB stage
    .alu_result_out(mem_wb_alu_result),
    .mem_data_out(mem_wb_mem_data),
    .pc_out(mem_wb_pc),
    .immediate_out(mem_wb_immediate),
    .mem_to_reg_out(mem_wb_mem_to_reg),
    .jump_out(mem_wb_jump),
    .reg_write_out(mem_wb_reg_write),
    .rd_addr_out(mem_wb_rd_addr),
    .opcode_out(mem_wb_opcode)
);

/* ========== WB STAGE ========== */
// Write data selection logic
wire [31:0] alu_or_mem_result;
wire [31:0] pc_plus_4;

assign pc_plus_4 = mem_wb_pc + 4;
assign alu_or_mem_result = mem_wb_mem_to_reg ? mem_wb_mem_data : mem_wb_alu_result;

// Final write data selection: PC+4 for JAL/JALR, immediate for LUI, or ALU/memory result
assign mem_wb_write_data = mem_wb_jump ? pc_plus_4 : 
                          (mem_wb_opcode == 7'b0110111) ? mem_wb_immediate : // LUI
                          alu_or_mem_result;

/* ========== BRANCH/JUMP LOGIC ========== */
wire [31:0] target_address;

target_address_mux target_addr_mux(
    .pc(id_ex_pc),                    // Use EX stage PC
    .rs1_data(forwarded_rs1_data),    // Use forwarded data
    .immediate_value(id_ex_immediate),
    .jump(id_ex_jump),
    .branch_condition_match(branch_condition_match),
    .is_jalr(id_ex_is_jalr),
    .target_address(target_address)
);

wire [31:0] pc_increment;
// FIXED: Use new PC increment unit that handles reset properly
pc_increment_unit pc_inc_unit(
    .current_pc(pc),
    .reset(reset),
    .pc_plus_4(pc_increment)
);

pc_mux pc_control(
    .pc_increment(pc_increment),
    .target_addr(target_address),
    .jump(id_ex_jump),                // Use EX stage signals
    .branch_condition_match(branch_condition_match),
    .opcode(id_ex_opcode),
    .pc_next(pc_next)
);

// Branch flush logic - when branch/jump is taken, flush wrong path instructions
assign flush_branch = (id_ex_jump || branch_condition_match);

endmodule