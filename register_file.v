module register_file(
    input clk,
    input reset,
    input [4:0] rs1,
    input [4:0] rs2,
    input [4:0] rd,
    input [31:0] write_data,
    input register_write_enable,
    output reg [31:0] read_data1,
    output reg [31:0] read_data2
    );

    reg [31:0] registers [31:0];
    always @ (posedge clk, posedge reset)
        begin
            if (reset)
                begin
                    read_data1 <= 32'h00000000;
                    read_data2 <= 32'h00000000;
                end
            else
                begin
                    read_data1 <= registers[rs1];
                    read_data2 <= registers[rs2];
                    if (register_write_enable)
                        registers[rd] <= write_data;
                end
        end
endmodule