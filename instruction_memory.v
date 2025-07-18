module instruction_memory(
    input [31:0] pc_address,
    input clk,
    input reset,
    output reg [31:0] instruction
    );
    reg [31:0] memory [1023:0]; // example memory size of 1 kB
    
    // Combinational read for single-cycle CPU
    always @(*) begin
        instruction = memory[pc_address[11:2]]; // Word-aligned access
    end
    
    // Optional: Initialize memory on reset
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            // Memory initialization can be done here if needed
        end
    end
endmodule
