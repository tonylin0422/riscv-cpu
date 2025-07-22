module data_mem (
    input clk,
    input reset,
    input [31:0] address,
    input [31:0] write_data,
    input [2:0] funct3, // from instruction[14:12], selects load/store type
    input read_enable,
    input write_enable,
    output reg [31:0] read_data
    );

    reg [31:0] mem [0:1023];  // 1KB memory (word addressed)
    
    // Declare variables outside always blocks
    integer i;
    reg [31:0] word;
    
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            for (i = 0; i < 1024; i = i + 1) begin
                mem[i] <= 32'b0;
            end
        end else if (write_enable) begin
            // funct3: 0=SB, 1=SH, 2=SW
            word = mem[address[11:2]];
            case (funct3)
                3'b000: begin // SB (Store Byte)
                    case (address[1:0])
                        2'b00: word[7:0]   = write_data[7:0];
                        2'b01: word[15:8]  = write_data[7:0];
                        2'b10: word[23:16] = write_data[7:0];
                        2'b11: word[31:24] = write_data[7:0];
                    endcase
                    mem[address[11:2]] <= word;
                end
                3'b001: begin // SH (Store Halfword)
                    if (address[1] == 1'b0)
                        word[15:0] = write_data[15:0];
                    else
                        word[31:16] = write_data[15:0];
                    mem[address[11:2]] <= word;
                end
                3'b010: begin // SW (Store Word)
                    mem[address[11:2]] <= write_data;
                end
                default: ; // ignore other funct3
            endcase
        end
    end

    always @(*) begin
        if (read_enable) begin
            // funct3: 0=LB, 1=LH, 2=LW, 4=LBU, 5=LHU
            case (funct3)
                3'b000: begin // LB (Load Byte, signed)
                    case (address[1:0])
                        2'b00: read_data = {{24{mem[address[11:2]][7]}},  mem[address[11:2]][7:0]};
                        2'b01: read_data = {{24{mem[address[11:2]][15]}}, mem[address[11:2]][15:8]};
                        2'b10: read_data = {{24{mem[address[11:2]][23]}}, mem[address[11:2]][23:16]};
                        2'b11: read_data = {{24{mem[address[11:2]][31]}}, mem[address[11:2]][31:24]};
                    endcase
                end
                3'b001: begin // LH (Load Halfword, signed)
                    if (address[1] == 1'b0)
                        read_data = {{16{mem[address[11:2]][15]}}, mem[address[11:2]][15:0]};
                    else
                        read_data = {{16{mem[address[11:2]][31]}}, mem[address[11:2]][31:16]};
                end
                3'b010: begin // LW (Load Word)
                    read_data = mem[address[11:2]];
                end
                3'b100: begin // LBU (Load Byte, unsigned)
                    case (address[1:0])
                        2'b00: read_data = {24'b0, mem[address[11:2]][7:0]};
                        2'b01: read_data = {24'b0, mem[address[11:2]][15:8]};
                        2'b10: read_data = {24'b0, mem[address[11:2]][23:16]};
                        2'b11: read_data = {24'b0, mem[address[11:2]][31:24]};
                    endcase
                end
                3'b101: begin // LHU (Load Halfword, unsigned)
                    if (address[1] == 1'b0)
                        read_data = {16'b0, mem[address[11:2]][15:0]};
                    else
                        read_data = {16'b0, mem[address[11:2]][31:16]};
                end
                default: read_data = 32'b0;
            endcase
        end else begin
            read_data = 32'bz;
        end
    end

endmodule