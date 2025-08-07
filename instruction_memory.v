`timescale 1ns/1ps
module instruction_memory(
    input [31:0] pc_address,
    input clk,
    input reset,
    output reg [31:0] instruction
    );
    reg [31:0] memory [1023:0];
    integer i;
    
    initial begin
        for (i = 0; i < 1024; i = i + 1) begin
            memory[i] = 32'h00000000;
        end
    end
    
    always @(*) begin
        instruction = memory[pc_address[11:2]];
    end
    
endmodule
