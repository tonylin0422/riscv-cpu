module instruction_memory(
    input [31:0] pc_address,
    input clk,
    input reset,
    output reg [31:0] instruction
    );
    reg [31:0] memory [1023:0] = '{default: 32'h00000000};
    
    always @(*) begin
        instruction = memory[pc_address[11:2]];
    end
    
endmodule
