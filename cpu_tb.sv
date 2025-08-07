`timescale 1ns/1ps

module test_cpu_tb;

    // Simple clock and reset signals instead of interface
    reg clk;
    reg reset;
    
    // DUT instantiation
    top uut(
        .clk(clk),
        .reset(reset)
    );
    
    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // 100MHz clock
    end
    
    // Test signals for monitoring
    logic [31:0] expected_pc;
    logic [31:0] expected_reg_value;
    integer test_case = 0;
    integer cycle_count = 0;
    
    // Monitor pipeline progression with detailed timing
    always @(posedge clk) begin
        if (!reset) begin
            cycle_count <= cycle_count + 1;
            $display("Cycle %0d: PC=0x%h, IF_ID_PC=0x%h, ID_EX_PC=0x%h, EX_MEM_PC=0x%h, MEM_WB_PC=0x%h", 
                     cycle_count, uut.pc, uut.if_id_pc, uut.id_ex_pc, uut.ex_mem_pc, uut.mem_wb_pc);
            $display("CYCLE_%0d_DETAIL: reset=%b, clk_edge=%b", cycle_count, reset, clk);
            
            // Show what should happen vs what's happening
            if (cycle_count == 1) begin
                $display("CYCLE_1_EXPECTED: PC should be 0x0, fetching first instruction 0x00500093");
            end
            if (cycle_count == 2) begin
                $display("CYCLE_2_EXPECTED: PC should be 0x4, fetching second instruction 0x00A00113");
            end
        end
    end
    
    // Debug: Monitor register writeback signals
    always @(posedge clk) begin
        if (!reset && uut.mem_wb_reg_write) begin
            $display("WRITEBACK: reg[%0d] = 0x%h (opcode=0x%h, mem_to_reg=%b, jump=%b)", 
                     uut.mem_wb_rd_addr, uut.mem_wb_write_data, uut.mem_wb_opcode, 
                     uut.mem_wb_mem_to_reg, uut.mem_wb_jump);
        end
    end
    
    // Debug: Monitor control signals in ID stage
    always @(posedge clk) begin
        if (!reset && uut.if_id_instruction != 32'h00000000) begin
            $display("ID_STAGE: instr=0x%h, opcode=0x%h, rd=%d, rs1=%d, rs2=%d, reg_write=%b", 
                     uut.if_id_instruction, uut.opcode, uut.rd_address, uut.rs1_address, 
                     uut.rs2_address, uut.reg_write);
        end
    end
    
    // Debug: Monitor ALU operations
    always @(posedge clk) begin
        if (!reset && uut.id_ex_opcode != 7'b0000000) begin
            $display("ALU_STAGE: opcode=0x%h, alu_op=%b, alu_ctrl=0x%h, input1=0x%h, input2=0x%h, result=0x%h", 
                     uut.id_ex_opcode, uut.id_ex_alu_operation, uut.ALUControl, 
                     uut.alu_input1, uut.alu_input2, uut.alu_result);
        end
    end
    
    // Debug: Monitor forwarding
    always @(posedge clk) begin
        if (!reset && (uut.forward_rs1 != 2'b00 || uut.forward_rs2 != 2'b00)) begin
            $display("FORWARDING: RS1_fwd=%b, RS2_fwd=%b, fwd_rs1_data=0x%h, fwd_rs2_data=0x%h", 
                     uut.forward_rs1, uut.forward_rs2, uut.forwarded_rs1_data, uut.forwarded_rs2_data);
        end
    end
    
    // Debug: Monitor pipeline register propagation
    always @(posedge clk) begin
        if (!reset) begin
            $display("PIPELINE_REGS: ID_EX(rd=%d,rw=%b) EX_MEM(rd=%d,rw=%b) MEM_WB(rd=%d,rw=%b)", 
                     uut.id_ex_rd_addr, uut.id_ex_reg_write, 
                     uut.ex_mem_rd_addr, uut.ex_mem_reg_write, 
                     uut.mem_wb_rd_addr, uut.mem_wb_reg_write);
        end
    end
    
    // Debug: Monitor instruction fetch stage with detailed PC tracking
    always @(posedge clk) begin
        if (!reset) begin
            $display("IF_STAGE: PC=0x%h, pc_next=0x%h, pc_plus_4=0x%h, instruction=0x%h", 
                     uut.pc, uut.pc_next, uut.pc_plus_4, uut.instruction);
        end
    end
    
    // Debug: Monitor PC updates and reset behavior
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            $display("PC_RESET: PC being reset");
        end else begin
            $display("PC_UPDATE: PC changed from prev to 0x%h, stall_pc=%b", uut.pc, uut.stall_pc);
        end
    end
    
    // Debug: Monitor PC calculation details
    always @(posedge clk) begin
        if (!reset) begin
            $display("PC_DEBUG: pc=0x%h, pc_next=0x%h, pc_increment=0x%h, target_addr=0x%h", 
                     uut.pc, uut.pc_next, uut.pc_increment, uut.target_address);
            $display("PC_CONTROL: jump=%b, branch_match=%b, stall=%b, opcode=0x%h", 
                     uut.id_ex_jump, uut.branch_condition_match, uut.stall_pc, uut.id_ex_opcode);
        end
    end
    
    // Debug: Monitor instruction memory access in detail
    always @(posedge clk) begin
        if (!reset) begin
            $display("IMEM_ACCESS: address=0x%h, mem[0]=0x%h, mem[1]=0x%h, mem[2]=0x%h, mem[3]=0x%h", 
                     uut.pc >> 2, uut.imem.memory[0], uut.imem.memory[1], 
                     uut.imem.memory[2], uut.imem.memory[3]);
            $display("IMEM_FETCH: PC=0x%h -> mem_addr=0x%h -> instruction=0x%h", 
                     uut.pc, uut.pc >> 2, uut.instruction);
        end
    end
    
    // Debug: Monitor immediate generation
    always @(posedge clk) begin
        if (!reset && uut.if_id_instruction != 32'h00000000) begin
            $display("IMMEDIATE: imm_ctrl=%b, immediate=0x%h", uut.immediate_control, uut.sign_extended_immediate);
        end
    end
    
    // Debug: Monitor register file reads with more detail
    always @(posedge clk) begin
        if (!reset && uut.if_id_instruction != 32'h00000000) begin
            $display("REGFILE_READ: rs1[%d]=0x%h, rs2[%d]=0x%h", 
                     uut.rs1_address, uut.rs1_read, uut.rs2_address, uut.rs2_read);
            $display("REGFILE_DECODE: opcode=0x%h, rs1=%d, rs2=%d, rd=%d, imm=0x%h", 
                     uut.opcode, uut.rs1_address, uut.rs2_address, uut.rd_address, uut.sign_extended_immediate);
        end
    end
    
    // Debug: Track register file writes in detail
    always @(posedge clk) begin
        if (!reset) begin
            $display("REGFILE_STATE: x0=%d, x1=%d, x2=%d, x3=%d, x4=%d, write_en=%b, write_addr=%d, write_data=0x%h", 
                     uut.register_file.registers[0], uut.register_file.registers[1], 
                     uut.register_file.registers[2], uut.register_file.registers[3], 
                     uut.register_file.registers[4], uut.mem_wb_reg_write, 
                     uut.mem_wb_rd_addr, uut.mem_wb_write_data);
        end
    end
    
    // Debug: Monitor EX stage data flow
    always @(posedge clk) begin
        if (!reset && uut.id_ex_opcode != 7'b0000000) begin
            $display("EX_DATA: rs1_data=0x%h, rs2_data=0x%h, immediate=0x%h, alu_src1=%b, alu_src2=%b", 
                     uut.id_ex_rs1_data, uut.id_ex_rs2_data, uut.id_ex_immediate, 
                     uut.id_ex_alu_src1, uut.id_ex_alu_src2);
        end
    end
    
    // Debug: Monitor MEM stage
    always @(posedge clk) begin
        if (!reset && uut.ex_mem_opcode != 7'b0000000) begin
            $display("MEM_STAGE: alu_result=0x%h, mem_read=%b, mem_write=%b, mem_data=0x%h", 
                     uut.ex_mem_alu_result, uut.ex_mem_mem_read, uut.ex_mem_mem_write, uut.dcache_read);
        end
    end
    
    // Debug: Monitor WB stage data selection
    always @(posedge clk) begin
        if (!reset && uut.mem_wb_opcode != 7'b0000000) begin
            $display("WB_DATA: alu_result=0x%h, mem_data=0x%h, pc+4=0x%h, final_write_data=0x%h", 
                     uut.mem_wb_alu_result, uut.mem_wb_mem_data, uut.pc_plus_4, uut.mem_wb_write_data);
        end
    end
    
    // Debug: Monitor hazard detection
    always @(posedge clk) begin
        if (!reset && (uut.stall_pc || uut.flush_id_ex || uut.flush_branch)) begin
            $display("HAZARDS: stall_pc=%b, flush_id_ex=%b, flush_branch=%b", 
                     uut.stall_pc, uut.flush_id_ex, uut.flush_branch);
        end
    end
    
    // Debug: Monitor branch detection
    always @(posedge clk) begin
        if (!reset && uut.ex_mem_opcode == 7'b1100011) begin
            $display("BRANCH: condition_match=%b, zero=%b, lt=%b, ltu=%b, funct3=0x%h", 
                     uut.branch_condition_match, uut.zero, uut.lt, uut.ltu, uut.ex_mem_funct3);
        end
    end
    
    // Main test sequence
    initial begin
        $display("Starting RISC-V CPU Pipeline Tests");
        
        // Initialize
        reset = 1;
        cycle_count = 0;
        
        // Hold reset for a few cycles
        repeat(3) @(posedge clk);
        
        // FIXED: Release reset and ensure PC starts at 0
        reset = 0;
        $display("RESET_RELEASED: Reset released, PC should start at 0x00000000");
        // Print initial state before first clock edge
        $display("INITIAL_STATE: PC=0x%h, instruction=0x%h", uut.pc, uut.instruction);
        
        // Wait one cycle for reset to take effect, then start monitoring
        @(posedge clk);
        $display("FIRST_CYCLE_AFTER_RESET: PC=0x%h, instruction=0x%h, expected_first_instr=0x%h", 
                 uut.pc, uut.instruction, 32'h00500093);
        
        // Test 1: Regular pipeline with no hazards
        test_case = 1;
        $display("\n=== TEST 1: Regular Pipeline (No Hazards) ===");
        $display("Purpose: Verify basic pipeline flow with independent instructions");
        $display("Expected: Instructions flow through pipeline without stalls or flushes");
        
        // Load test program into instruction memory
        // Simple sequence: ADDI x1, x0, 5; ADDI x2, x0, 10; ADD x3, x1, x2; ADDI x4, x0, 1
        load_test_program_1();
        reset = 1;
        cycle_count = 0;
        @(posedge clk);
        reset = 0;
        // Run for enough cycles to see all instructions complete
        repeat(10) @(posedge clk) begin
            $display("CYCLE_%0d_REGS: x1=%d, x2=%d, x3=%d, x4=%d", 
                     cycle_count, uut.register_file.registers[1], uut.register_file.registers[2], 
                     uut.register_file.registers[3], uut.register_file.registers[4]);
            
            // Special debug for first few cycles
            if (cycle_count <= 5) begin
                $display("EARLY_CYCLE_%0d: PC=0x%h, fetched_instr=0x%h, should_be_first=%b", 
                         cycle_count, uut.pc, uut.instruction, (uut.instruction == 32'h00500093));
            end
        end
        
        // Verify results
        verify_test_1();
        
        // Test 2: Pipeline stall (Load-Use hazard)
        test_case = 2;
        $display("\n=== TEST 2: Pipeline Stall (Load-Use Hazard) ===");
        $display("Purpose: Verify pipeline stalls when load result is immediately used");
        $display("Expected: Pipeline stalls for 1 cycle, then continues");
        
        // Reset and load new program
        reset = 1;
        cycle_count = 0;
        repeat(2) @(posedge clk);
        reset = 0;
        
        load_test_program_2();
        
        // Monitor stall signals
        repeat(12) begin
            @(posedge clk);
            if (uut.stall_pc) begin
                $display("STALL detected at cycle %0d - PC stalled, hazard resolved", cycle_count);
            end
        end
        
        verify_test_2();
        
        // Test 3: Forwarding test
        test_case = 3;
        $display("\n=== TEST 3: Forwarding Test ===");
        $display("Purpose: Verify forwarding resolves data hazards without stalling");
        $display("Expected: Forward from EX/MEM and MEM/WB stages to resolve hazards");
        
        reset = 1;
        cycle_count = 0;
        repeat(2) @(posedge clk);
        reset = 0;
        
        load_test_program_3();
        
        // Monitor forwarding signals
        repeat(10) begin
            @(posedge clk);
            if (uut.forward_rs1 != 2'b00 || uut.forward_rs2 != 2'b00) begin
                $display("FORWARDING at cycle %0d: RS1_fwd=%b, RS2_fwd=%b", 
                         cycle_count, uut.forward_rs1, uut.forward_rs2);
            end
        end
        
        verify_test_3();
        
        // Test 4: Control hazards (Branch)
        test_case = 4;
        $display("\n=== TEST 4: Control Hazards (Branch) ===");
        $display("Purpose: Verify pipeline flush on branch taken");
        $display("Expected: Pipeline flushes IF/ID and ID/EX when branch is taken");
        
        reset = 1;
        cycle_count = 0;
        repeat(2) @(posedge clk);
        reset = 0;
        
        load_test_program_4();
        
        // Monitor branch and flush signals
        repeat(15) begin
            @(posedge clk);
            if (uut.flush_branch) begin
                $display("BRANCH FLUSH at cycle %0d - Wrong path instructions flushed", cycle_count);
            end
            if (uut.branch_condition_match) begin
                $display("BRANCH TAKEN at cycle %0d - PC redirected", cycle_count);
            end
        end
        
        verify_test_4();
        
        $display("\n=== All Tests Complete ===");
        $finish;
    end
    
    // Task to load Test 1 program (no hazards)
    task load_test_program_1();
        begin
            $display("Loading: ADDI x1,x0,5; ADDI x2,x0,10; ADD x3,x1,x2; ADDI x4,x0,1");
            
            // Clear all memory first
            for (int i = 0; i < 64; i++) begin
                uut.imem.memory[i] = 32'h00000000;
            end
            
            // ADDI x1, x0, 5    (0x00500093)
            uut.imem.memory[0] = 32'h00500093;
            // ADDI x2, x0, 10   (0x00A00113) 
            uut.imem.memory[1] = 32'h00A00113;
            // ADD x3, x1, x2    (0x002081B3)
            uut.imem.memory[2] = 32'h002081B3;
            // ADDI x4, x0, 1    (0x00100213)
            uut.imem.memory[3] = 32'h00100213;
            
            // Verify memory load
            $display("MEMORY_VERIFY: mem[0]=0x%h, mem[1]=0x%h, mem[2]=0x%h, mem[3]=0x%h", 
                     uut.imem.memory[0], uut.imem.memory[1], uut.imem.memory[2], uut.imem.memory[3]);
        end
    endtask
    
    // Task to load Test 2 program (load-use hazard)
    task load_test_program_2();
        begin
            $display("Loading: LW x1,0(x0); ADD x2,x1,x1; ADDI x3,x0,1");
            // First, put data in memory location 0
            uut.dmem.memory[0] = 32'h12345678;
            
            // LW x1, 0(x0)      (0x00002083)
            uut.imem.memory[0] = 32'h00002083;
            // ADD x2, x1, x1    (0x00108133) - FIXED: was 0x001080B3, now writes to x2 not x1
            uut.imem.memory[1] = 32'h00108133;
            // ADDI x3, x0, 1    (0x00100193)
            uut.imem.memory[2] = 32'h00100193;
        end
    endtask
    
    // Task to load Test 3 program (forwarding)
    task load_test_program_3();
        begin
            $display("Loading: ADDI x1,x0,5; ADD x2,x1,x0; ADD x3,x2,x1");
            // ADDI x1, x0, 5    (0x00500093)
            uut.imem.memory[0] = 32'h00500093;
            // ADD x2, x1, x0    (0x00008133) - Forward from EX/MEM
            uut.imem.memory[1] = 32'h00008133;
            // ADD x3, x2, x1    (0x001101B3) - Forward from MEM/WB and EX/MEM
            uut.imem.memory[2] = 32'h001101B3;
        end
    endtask
    
    // Task to load Test 4 program (control hazard)
    task load_test_program_4();
        begin
            $display("Loading: ADDI x1,x0,0; BEQ x1,x0,skip; ADDI x2,x0,99; skip: ADDI x3,x0,1");
            // ADDI x1, x0, 0    (0x00000093) - Load 0 so branch will be taken
            uut.imem.memory[0] = 32'h00000093;
            // BEQ x1, x0, 8     (0x00008463) - Branch to PC+8 (skip ADDI x2)
            uut.imem.memory[1] = 32'h00008463;
            // ADDI x2, x0, 99   (0x06300113) - This should be flushed
            uut.imem.memory[2] = 32'h06300113;
            // ADDI x3, x0, 1    (0x00100193) - Branch target
            uut.imem.memory[3] = 32'h00100193;
        end
    endtask
    
    // Verification tasks
    task verify_test_1();
        begin
            $display("Verifying Test 1 Results:");
            $display("x1 should be 5: actual = %0d", uut.register_file.registers[1]);
            $display("x2 should be 10: actual = %0d", uut.register_file.registers[2]);
            $display("x3 should be 15: actual = %0d", uut.register_file.registers[3]);
            $display("x4 should be 1: actual = %0d", uut.register_file.registers[4]);
            
            if (uut.register_file.registers[1] == 5 && 
                uut.register_file.registers[2] == 10 &&
                uut.register_file.registers[3] == 15 &&
                uut.register_file.registers[4] == 1) begin
                $display("TEST 1 PASSED: All register values correct");
            end else begin
                $display("TEST 1 FAILED: Register values incorrect");
            end
        end
    endtask
    
    task verify_test_2();
        begin
            $display("Verifying Test 2 Results:");
            $display("x1 should be 0x12345678: actual = 0x%h", uut.register_file.registers[1]);
            $display("x2 should be 0x2468acf0: actual = 0x%h", uut.register_file.registers[2]);
            $display("x3 should be 1: actual = %0d", uut.register_file.registers[3]);
            
            if (uut.register_file.registers[1] == 32'h12345678 &&
                uut.register_file.registers[2] == 32'h2468acf0 &&
                uut.register_file.registers[3] == 1) begin
                $display("TEST 2 PASSED: Load-use hazard handled correctly");
            end else begin
                $display("TEST 2 FAILED: Load-use hazard not handled correctly");
            end
        end
    endtask
    
    task verify_test_3();
        begin
            $display("Verifying Test 3 Results:");
            $display("x1 should be 5: actual = %0d", uut.register_file.registers[1]);
            $display("x2 should be 5: actual = %0d", uut.register_file.registers[2]);
            $display("x3 should be 10: actual = %0d", uut.register_file.registers[3]);
            
            if (uut.register_file.registers[1] == 5 &&
                uut.register_file.registers[2] == 5 &&
                uut.register_file.registers[3] == 10) begin
                $display("TEST 3 PASSED: Forwarding working correctly");
            end else begin
                $display("TEST 3 FAILED: Forwarding not working correctly");
            end
        end
    endtask
    
    task verify_test_4();
        begin
            $display("Verifying Test 4 Results:");
            $display("x1 should be 0: actual = %0d", uut.register_file.registers[1]);
            $display("x2 should be 0 (not executed): actual = %0d", uut.register_file.registers[2]);
            $display("x3 should be 1: actual = %0d", uut.register_file.registers[3]);
            
            if (uut.register_file.registers[1] == 0 &&
                uut.register_file.registers[2] == 0 &&
                uut.register_file.registers[3] == 1) begin
                $display("TEST 4 PASSED: Branch hazard handled correctly");
            end else begin
                $display("TEST 4 FAILED: Branch hazard not handled correctly");
            end
        end
    endtask

endmodule