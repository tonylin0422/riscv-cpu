`timescale 1ns/1ps  // remove apostrophe
module top_tb;

reg clk;
reg reset;

top uut(
    .clk(clk),
    .reset(reset)
);

always #25 clk = ~clk;  

initial begin
    // VCD dump for waveform analysis
    $dumpfile("cpu_simulation.vcd");
    $dumpvars(0, top_tb);
    
    clk = 0;
    reset = 1;
    #10 reset = 0;

    uut.dcache.mem[4] = 32'h00000000;  // Initialize memory at word address 4 (byte address 16)
    // Initialize base address for memory operations
    uut.imem.memory[0] = 32'h01000213; // ADDI x4, x0, 16 (x4 = 16 for memory base)
    uut.imem.memory[1] = 32'h00100093; // ADDI x1, x0, 1 (x1 = 1)
    uut.imem.memory[2] = 32'h00200113; // ADDI x2, x0, 2 (x2 = 2)

    // Arithmetic operations
    uut.imem.memory[3] = 32'h002081B3; // ADD x3, x1, x2 (x3 = 1 + 2 = 3)
    uut.imem.memory[4] = 32'h402101B3; // SUB x3, x2, x2 (x3 = 2 - 2 = 0)

    // Memory operations (using x4 as base = 16)
    uut.imem.memory[5] = 32'h00122023; // SW x1, 0(x4) (Store x1=1 at address 16)
    uut.imem.memory[6] = 32'h00022283; // LW x5, 0(x4) (Load from address 16 into x5)

    // Upper immediate instructions
    uut.imem.memory[7] = 32'h000012B7; // LUI x5, 0x1 (x5 = 0x1000)
    uut.imem.memory[8] = 32'h00000297; // AUIPC x5, 0x0 (x5 = PC + 0)

    // Branch instructions (test true condition)
    uut.imem.memory[9] = 32'h00318463; // BEQ x3, x3, 8 (Branch if x3==x3, skip 2 instructions)
    uut.imem.memory[10] = 32'h00100313; // ADDI x6, x0, 1 (Should be skipped)
    uut.imem.memory[11] = 32'h00200393; // ADDI x7, x0, 2 (Should be skipped)

    // Jump instructions (test without infinite loop)
    uut.imem.memory[12] = 32'h008000EF; // JAL x1, 8 (Jump forward, save return address)
    uut.imem.memory[13] = 32'h00300413; // ADDI x8, x0, 3 (Should be skipped)
    uut.imem.memory[14] = 32'h00400493; // ADDI x9, x0, 4 (Should be skipped)

    // Final instructions (landing point for JAL)
    uut.imem.memory[15] = 32'h00500513; // ADDI x10, x0, 5 (x10 = 5)
    //uut.imem.memory[16] = 32'h00000067; // JALR x0, x0, 0 (Jump to address 0 - controlled loop)

    
    #1000 $finish;  // Increased simulation time
end

// Enhanced monitoring with more debug signals
initial begin
    $monitor("Time:%0t | PC:%h | Instr:%h | x1:%h | x2:%h | x3:%h | x4:%h | x5:%h | x10:%h | reg_write:%b | pc_next:%h", 
             $time, uut.pc, uut.instruction, 
             uut.register_file.registers[1], uut.register_file.registers[2], 
             uut.register_file.registers[3], uut.register_file.registers[4], uut.register_file.registers[5],
             uut.register_file.registers[10],
             uut.reg_write, uut.pc_next);
end

// Additional debug monitoring for control signals
initial begin
    $display("=== CPU Debug Monitor Started ===");
    #15; // Wait for reset to complete
    forever begin
        @(posedge clk);
        $display("Clock %0d: PC=%h, Instr=%h, Opcode=%b", $time/10, uut.pc, uut.instruction, uut.opcode);
        $display("  Control: reg_write=%b, jump=%b, mem_read=%b, mem_write=%b", 
                 uut.reg_write, uut.jump, uut.mem_read, uut.mem_write);
        $display("  ALU: op=%b, ctrl=%b, in1=%h, in2=%h, result=%h, zero=%b", 
                 uut.alu_operation, uut.ALUControl, uut.alu_input1, uut.alu_input2, uut.alu_result, uut.zero);
        $display("  Branch: condition_match=%b, funct3=%b, opcode=%b", 
                 uut.branch_condition_match, uut.instruction[14:12], uut.opcode);
        $display("  Debug: is_branch=%b (opcode==1100011)", (uut.opcode == 7'b1100011));
        $display("  RegFile: rs1=%d(%h), rs2=%d(%h), rd=%d, write_data=%h", 
                 uut.rs1_address, uut.rs1_read, uut.rs2_address, uut.rs2_read, 
                 uut.rd_address, uut.write_data_to_reg);
        $display("  PC Control: pc_next=%h, target_addr=%h, pc_increment=%h", 
                 uut.pc_next, uut.target_address, uut.pc_increment);
        $display("---");
        
        // Stop if PC doesn't change for debugging
        if ($time > 100 && uut.pc == uut.pc) begin
            repeat(5) @(posedge clk);
            if (uut.pc == uut.pc) begin
                $display("WARNING: PC appears stuck at %h", uut.pc);
            end
        end
    end
end



endmodule

