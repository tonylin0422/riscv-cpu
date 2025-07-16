module regfile(
    input clk,
    input reset,
    input [4:0] rs1_address,
    input [4:0] rs2_address,
    input [4:0] rd_address,
    input [31:0] write_data,
    input write_enable,
    output [31:0] rs1_read,
    output [31:0] rs2_read
    );
    reg [31:0] registers [31:0];

    // Combinational read
    assign rs1_read = (rs1_address == 5'b0) ? 32'b0 : registers[rs1_address];
    assign rs2_read = (rs2_address == 5'b0) ? 32'b0 : registers[rs2_address];

    // Synchronous write
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            // Optionally clear all registers except x0
            integer i;
            for (i = 1; i < 32; i = i + 1) begin
                registers[i] <= 32'b0;
            end
        end else if (write_enable && rd_address != 5'b0) begin
            registers[rd_address] <= write_data;
        end
    end
endmodule