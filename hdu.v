`timescale 1ns/1ps

module hdu (
    input [4:0] id_rs1_address, // 
    input [4:0] id_rs2_address,
    input [4:0] ex_rd_address,
    input ex_reg_write,
    input ex_mem_read,
    output reg stall_pc,
    output reg stall_if_id,
    output reg flush_id_ex
);

// Hazard detection for load instructions -> stall if load detected
always @ (*) begin
    stall_pc = 1'b0;
    stall_if_id = 1'b0;  
    flush_id_ex = 1'b0;

    if (ex_reg_write && ex_mem_read && (ex_rd_address != 5'b0)) begin
        if ((ex_rd_address == id_rs1_address) || (ex_rd_address == id_rs2_address)) begin
            stall_pc = 1'b1;
            stall_if_id = 1'b1;
            flush_id_ex = 1'b1;
        end
    end
end

endmodule