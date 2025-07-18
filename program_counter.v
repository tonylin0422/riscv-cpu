module program_counter(
    input [31:0] pc_next,
    input clk,
    input reset,
    output reg [31:0] pc
    );

    always @ (posedge clk, posedge reset)
        begin
            if (reset)
                pc <= 32'h00000000;
            else
                pc <= pc_next;
        end
    
endmodule

module target_address_mux (
    input [31:0] pc,
    input [31:0] rs1_data,
    input [31:0] immediate_value,
    input jump,
    input branch_condition_match,
    input is_jalr,
    output reg [31:0] target_address
);
    always @(*) begin
        if (is_jalr) begin
            target_address = rs1_data + immediate_value;
        end
        else if (jump || branch_condition_match) begin
            target_address = pc + immediate_value;
        end else begin
            target_address = 32'b0; // Default case, should not happen
        end
    end
endmodule

module pc_mux (
    input  wire [31:0] pc_increment,
    input  wire [31:0] target_addr,            // PC+imm or rs1+imm
    input  wire        jump,
    input  wire        branch_condition_match,
    output reg  [31:0] pc_next
);

always @(*) begin
  if      (jump)
    pc_next = target_addr;      // JAL/JALR
  else if (branch_condition_match)
    pc_next = target_addr;      // BEQ/BNE/…
  else
    pc_next = pc_increment;     // PC+4
end

endmodule
