`timescale 1ns/1ps

interface cpu_if();
    logic clk;
    logic reset;

    // reset for one clock cycle
    task pulse_reset;
        reset = 1;
        @(posedge_clk);
        reset = 0;
    endtask

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


    top uut(
        .clk(cpu_if_inst.clk),
        .reset(cpu_if_inst.reset)
    );

endmodule

