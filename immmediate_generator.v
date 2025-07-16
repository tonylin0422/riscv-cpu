module immediate_generator(
    input [31:0] instruction,
    input [2:0] immediate_control,
    output reg [31:0] sign_extended_immediate
);

// Codes for immediate generation
localparam [2:0]
NONE  = 3'b000, // No immediate generated
IMM_I = 3'b001, // I type
IMM_S = 3'b010, // S type
IMM_B = 3'b011, // B type
IMM_U = 3'b100, // U type
IMM_J = 3'b101; // J type

always @(*) begin
    case (immediate_control)
        IMM_I: // I-type
            sign_extended_immediate = {{20{instruction[31]}}, instruction[31:20]};
        IMM_S: // S-type
            sign_extended_immediate = {{20{instruction[31]}}, instruction[31:25], instruction[11:7]};
        IMM_B: // B-type
            sign_extended_immediate = {{19{instruction[31]}}, instruction[31], instruction[7], instruction[30:25], instruction[11:8], 1'b0};
        IMM_U: // U-type
            sign_extended_immediate = {instruction[31:12], 12'b0};
        IMM_J: // J-type
            sign_extended_immediate = {{11{instruction[31]}}, instruction[31], instruction[19:12], instruction[20], instruction[30:21], 1'b0};
        default:
            sign_extended_immediate = 32'h00000000;
    endcase
end

endmodule

