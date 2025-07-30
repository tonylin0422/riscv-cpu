module top(
    input clk,
    input reset
);

wire [31:0] pc_next;
wire [31:0] pc;
// Instantiate program counter register
program_counter pc_inst(
    .pc(pc),
    .clk(clk),
    .reset(reset),
    .pc_next(pc_next)
);

wire [31:0] instruction;
// Instruction memory
instruction_memory imem(
    .pc_address(pc),
    .clk(clk),
    .reset(reset),
    .instruction(instruction)
);

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

assign opcode = instruction[6:0];

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

wire [4:0] rs1_address;
wire [4:0] rs2_address;
wire [4:0] rd_address;
wire [31:0] write_data_to_reg;
wire [31:0] rs1_read;
wire [31:0] rs2_read;

// RS1 and RS2 and RD based on RISC-V instruction format
assign rs1_address = instruction[19:15];
assign rs2_address = instruction[24:20];
assign rd_address  = instruction[11:7];

// Register file
regfile register_file(
    .clk(clk),
    .reset(reset),
    .rs1_address(rs1_address),
    .rs2_address(rs2_address),
    .rd_address(rd_address),
    .write_data(write_data_to_reg),
    .write_enable(reg_write),
    .rs1_read(rs1_read),
    .rs2_read(rs2_read)
);

// Immediate generation
wire [31:0] sign_extended_immediate;
immediate_generator immediate(
    .instruction(instruction),
    .immediate_control(immediate_control),
    .sign_extended_immediate(sign_extended_immediate)
);

wire [31:0] alu_input1;
wire [31:0] alu_input2;

alu_src1_mux alu_src1_mux_inst(
    .rs1_data(rs1_read),
    .pc(pc),
    .alu_src1(alu_src1),
    .alu_input1(alu_input1)
);

alu_src2_mux alu_src2_mux_inst(
    .rs2_data(rs2_read),
    .offset(sign_extended_immediate),
    .alu_src2(alu_src2),
    .alu_input2(alu_input2)
);

wire [3:0] ALUControl;
alu_control alu_ctrl(
    .alu_operation(alu_operation),
    .funct7(instruction[31:25]),
    .funct3(instruction[14:12]),
    .is_rtype(is_rtype),
    .ALUControl(ALUControl)
);

wire [31:0] alu_result;
wire zero;
wire lt;
wire ltu;
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

wire branch_condition_match;
// Branch unit
branch_unit branch_unit_inst(
    .funct3(instruction[14:12]),
    .zero(zero),
    .lt(lt),
    .ltu(ltu),
    .opcode(opcode),
    .branch_condition_match(branch_condition_match)
);

wire [31:0] dcache_read;
// D-cache
data_mem dmem(
    .clk(clk),
    .reset(reset),
    .address(alu_result),
    .write_data(rs2_read),
    .funct3(instruction[14:12]),
    .read_enable(mem_read),
    .write_enable(mem_write),
    .read_data(dcache_read)
);

// Write data selection logic
wire [31:0] alu_or_mem_result;
wire [31:0] pc_plus_4;
assign pc_plus_4 = pc + 4;
assign alu_or_mem_result = mem_to_reg ? dcache_read : alu_result;

// Final write data selection: PC+4 for JAL/JALR, immediate for LUI, or ALU/memory result
assign write_data_to_reg = jump ? pc_plus_4 : 
                          (opcode == 7'b0110111) ? sign_extended_immediate : // LUI
                          alu_or_mem_result;

wire [31:0] target_address;
target_address_mux target_addr_mux(
    .pc(pc),
    .rs1_data(rs1_read),
    .immediate_value(sign_extended_immediate),
    .jump(jump),
    .branch_condition_match(branch_condition_match),
    .is_jalr(is_jalr),
    .target_address(target_address)
);

wire [31:0] pc_increment;
assign pc_increment = pc + 4;
pc_mux pc_control(
    .pc_increment(pc_increment),
    .target_addr(target_address),
    .jump(jump),
    .branch_condition_match(branch_condition_match),
    .opcode(opcode),                           // Add opcode connection
    .pc_next(pc_next)
);

endmodule