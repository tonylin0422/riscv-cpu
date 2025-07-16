module instruction_memory(
    input [31:0] pc_address,
    input clk,
    input reset,
    output [31:0] instruction,
    );
    reg [31:0] memory [1023:0] // example memory size of 1 kB
    always @ (posedge clk, posedge reset)
        begin
            if (reset)
                instructon <= 32'h00000000;
            else
                instruction <= memory[pc_address];
        end
endmodule
