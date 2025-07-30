`timescale 1ns/1ps

interface cpu_if();
    logic clk;
    logic reset;

    // reset for one clock cycle
    task pulse_reset;
        reset = 1;
        @(posedge_clk);
        reset = 0;
        clear_instruction();
    endtask

    clocking cb @(posedge clk);
        output reset;
    endclocking

    modport testbench(output clk, reset);
    modport dut(input clk, reset);
endinterface

module cpu_tb
    cpu_if cpu_if_inst();

    // drive clk
    initial begin
        cpu_if_inst.clk = 0;
        forever #25 cpu_if_inst.clk = ~cpu_if_inst.clk;
    end

    // pulse reset @ beginning
    initial begin
        cpu_if_inst.reset = 0;
        cpu_if_inst.pulse_reset();
    end

    initial begin
        uut.dmem.memory[4] = 32'h00000000;  // Initialize memory at word address 4 (byte address 16)
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

        
        #1000 $finish;  // Increased simulation times
    end

    top uut(
        .clk(cpu_if_inst.clk),
        .reset(cpu_if_inst.reset)
    );

endmodule

