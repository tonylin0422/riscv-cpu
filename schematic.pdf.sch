# File saved with Nlview 7.7.1 2023-07-26 3bc4126617 VDI=43 GEI=38 GUI=JA:21.0 threadsafe
# 
# non-default properties - (restore without -noprops)
property -colorscheme classic
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 12
property maxzoom 5
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #0095ff
property objecthighlight4 #8000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlaycolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 4
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 12
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 1
property timelimit 1
#
module new top work:top:NOFILE -nosplit
load symbol RTL_MUX155 work MUX pinBus I0 input.left [31:0] pinBus I1 input.left [31:0] pinBus O output.right [31:0] pinBus S input.bot [6:0] fillcolor 1
load symbol RTL_OR work OR pin I0 input pin I1 input pin O output fillcolor 1
load symbol alu_control work:alu_control:NOFILE HIERBOX pin is_rtype input.left pinBus ALUControl output.right [3:0] pinBus alu_operation input.left [1:0] pinBus funct3 input.left [2:0] pinBus funct7 input.left [6:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_MUX0 work MUX pin S input.bot pinBus I0 input.left [31:0] pinBus I1 input.left [31:0] pinBus O output.right [31:0] fillcolor 1
load symbol alu_src1_mux work:alu_src1_mux:NOFILE HIERBOX pin alu_src1 input.left pinBus alu_input1 output.right [31:0] pinBus pc input.left [31:0] pinBus rs1_data input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol alu_src2_mux work:alu_src2_mux:NOFILE HIERBOX pin alu_src2 input.left pinBus alu_input2 output.right [31:0] pinBus offset input.left [31:0] pinBus rs2_data input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol alu work:alu:NOFILE HIERBOX pin zero output.right pinBus ALUControl input.left [3:0] pinBus integer1 input.left [31:0] pinBus integer2 input.left [31:0] pinBus result output.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol branch_unit work:branch_unit:NOFILE HIERBOX pin branch_condition_match output.right pin lt input.left pin ltu input.left pin zero input.left pinBus funct3 input.left [2:0] pinBus opcode input.left [6:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol control_unit work:control_unit:NOFILE HIERBOX pin alu_src1 output.right pin alu_src2 output.right pin is_jalr output.right pin is_rtype output.right pin jump output.right pin mem_read output.right pin mem_to_reg output.right pin mem_write output.right pin reg_write output.right pinBus alu_operation output.right [1:0] pinBus immediate_control output.right [2:0] pinBus opcode input.left [6:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol data_mem work:data_mem:NOFILE HIERBOX pin clk input.left pin read_enable input.left pin reset input.left pin write_enable input.left pinBus address input.left [31:0] pinBus funct3 input.left [2:0] pinBus read_data output.right [31:0] pinBus write_data input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol ex_mem_reg work:ex_mem_reg:NOFILE HIERBOX pin clk input.left pin flush input.left pin jump_in input.left pin jump_out output.right pin mem_read_in input.left pin mem_read_out output.right pin mem_to_reg_in input.left pin mem_to_reg_out output.right pin mem_write_in input.left pin mem_write_out output.right pin reg_write_in input.left pin reg_write_out output.right pin reset input.left pinBus alu_result_in input.left [31:0] pinBus alu_result_out output.right [31:0] pinBus funct3_in input.left [2:0] pinBus funct3_out output.right [2:0] pinBus immediate_in input.left [31:0] pinBus immediate_out output.right [31:0] pinBus opcode_in input.left [6:0] pinBus opcode_out output.right [6:0] pinBus pc_in input.left [31:0] pinBus pc_out output.right [31:0] pinBus rd_addr_in input.left [4:0] pinBus rd_addr_out output.right [4:0] pinBus rs2_data_in input.left [31:0] pinBus rs2_data_out output.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_MUX144 work MUX pinBus I0 input.left [31:0] pinBus I1 input.left [31:0] pinBus I2 input.left [31:0] pinBus I3 input.left [31:0] pinBus O output.right [31:0] pinBus S input.bot [1:0] fillcolor 1
load symbol fu work:fu:NOFILE HIERBOX pin mem_reg_write input.left pin wb_reg_write input.left pinBus ex_rs1_address input.left [4:0] pinBus ex_rs2_address input.left [4:0] pinBus forward1 output.right [1:0] pinBus forward2 output.right [1:0] pinBus mem_rd_address input.left [4:0] pinBus wb_rd_address input.left [4:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol hdu work:hdu:NOFILE HIERBOX pin ex_mem_read input.left pin ex_reg_write input.left pin flush_id_ex output.right pin stall_if_id output.right pin stall_pc output.right pinBus ex_rd_address input.left [4:0] pinBus id_rs1_address input.left [4:0] pinBus id_rs2_address input.left [4:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol id_ex_reg work:id_ex_reg:NOFILE HIERBOX pin alu_src1_in input.left pin alu_src1_out output.right pin alu_src2_in input.left pin alu_src2_out output.right pin clk input.left pin flush input.left pin is_jalr_in input.left pin is_jalr_out output.right pin is_rtype_in input.left pin is_rtype_out output.right pin jump_in input.left pin jump_out output.right pin mem_read_in input.left pin mem_read_out output.right pin mem_to_reg_in input.left pin mem_to_reg_out output.right pin mem_write_in input.left pin mem_write_out output.right pin reg_write_in input.left pin reg_write_out output.right pin reset input.left pin stall input.left pinBus alu_operation_in input.left [1:0] pinBus alu_operation_out output.right [1:0] pinBus funct3_in input.left [2:0] pinBus funct3_out output.right [2:0] pinBus funct7_in input.left [6:0] pinBus funct7_out output.right [6:0] pinBus immediate_in input.left [31:0] pinBus immediate_out output.right [31:0] pinBus opcode_in input.left [6:0] pinBus opcode_out output.right [6:0] pinBus pc_in input.left [31:0] pinBus pc_out output.right [31:0] pinBus rd_addr_in input.left [4:0] pinBus rd_addr_out output.right [4:0] pinBus rs1_addr_in input.left [4:0] pinBus rs1_addr_out output.right [4:0] pinBus rs1_in input.left [31:0] pinBus rs1_out output.right [31:0] pinBus rs2_addr_in input.left [4:0] pinBus rs2_addr_out output.right [4:0] pinBus rs2_in input.left [31:0] pinBus rs2_out output.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol if_id_reg work:if_id_reg:NOFILE HIERBOX pin clk input.left pin flush input.left pin reset input.left pin stall input.left pinBus instruction_in input.left [31:0] pinBus instruction_out output.right [31:0] pinBus pc_in input.left [31:0] pinBus pc_out output.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol instruction_memory work:instruction_memory:NOFILE HIERBOX pin clk input.left pin reset input.left pinBus instruction output.right [31:0] pinBus pc_address input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol immediate_generator work:immediate_generator:NOFILE HIERBOX pinBus immediate_control input.left [2:0] pinBus instruction input.left [31:0] pinBus sign_extended_immediate output.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_LT work RTL(<) pin O output.right pinBus I0 input.left [31:0] pinBus I1 input.left [31:0] fillcolor 1
load symbol mem_wb_reg work:mem_wb_reg:NOFILE HIERBOX pin clk input.left pin jump_in input.left pin jump_out output.right pin mem_to_reg_in input.left pin mem_to_reg_out output.right pin reg_write_in input.left pin reg_write_out output.right pin reset input.left pinBus alu_result_in input.left [31:0] pinBus alu_result_out output.right [31:0] pinBus immediate_in input.left [31:0] pinBus immediate_out output.right [31:0] pinBus mem_data_in input.left [31:0] pinBus mem_data_out output.right [31:0] pinBus opcode_in input.left [6:0] pinBus opcode_out output.right [6:0] pinBus pc_in input.left [31:0] pinBus pc_out output.right [31:0] pinBus rd_addr_in input.left [4:0] pinBus rd_addr_out output.right [4:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol pc_mux work:pc_mux:NOFILE HIERBOX pin branch_condition_match input.left pin jump input.left pinBus opcode input.left [6:0] pinBus pc_increment input.left [31:0] pinBus pc_next output.right [31:0] pinBus target_addr input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol pc_increment_unit work:pc_increment_unit:NOFILE HIERBOX pin reset input.left pinBus current_pc input.left [31:0] pinBus pc_plus_4 output.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol program_counter work:program_counter:NOFILE HIERBOX pin clk input.left pin reset input.left pin stall_pc input.left pinBus pc output.right [31:0] pinBus pc_next input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_ADD work RTL(+) pinBus I0 input.left [31:0] pinBus I1 input.left [31:0] pinBus O output.right [31:0] fillcolor 1
load symbol regfile work:regfile:NOFILE HIERBOX pin clk input.left pin reset input.left pin write_enable input.left pinBus rd_address input.left [4:0] pinBus rs1_address input.left [4:0] pinBus rs1_read output.right [31:0] pinBus rs2_address input.left [4:0] pinBus rs2_read output.right [31:0] pinBus write_data input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol target_address_mux work:target_address_mux:NOFILE HIERBOX pin branch_condition_match input.left pin is_jalr input.left pin jump input.left pinBus immediate_value input.left [31:0] pinBus pc input.left [31:0] pinBus rs1_data input.left [31:0] pinBus target_address output.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load port clk input -pg 1 -lvl 0 -x 0 -y 1290
load port reset input -pg 1 -lvl 0 -x 0 -y 1470
load inst RTL_MUX RTL_MUX155 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=7'b0110111 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[31:0] -pinBusAttr S @name S[6:0] -pg 1 -lvl 19 -x 8540 -y 710
load inst RTL_OR RTL_OR work -attr @cell(#000000) RTL_OR -pg 1 -lvl 13 -x 5160 -y 900
load inst alu_ctrl alu_control work:alu_control:NOFILE -autohide -attr @cell(#000000) alu_control -pinBusAttr ALUControl @name ALUControl[3:0] -pinBusAttr alu_operation @name alu_operation[1:0] -pinBusAttr funct3 @name funct3[2:0] -pinBusAttr funct7 @name funct7[6:0] -pg 1 -lvl 4 -x 1420 -y 1140
load inst alu_or_mem_result_i RTL_MUX0 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[31:0] -pg 1 -lvl 18 -x 8240 -y 660
load inst alu_src1_mux_inst alu_src1_mux work:alu_src1_mux:NOFILE -autohide -attr @cell(#000000) alu_src1_mux -pinBusAttr alu_input1 @name alu_input1[31:0] -pinBusAttr pc @name pc[31:0] -pinBusAttr rs1_data @name rs1_data[31:0] -pg 1 -lvl 4 -x 1420 -y 1360
load inst alu_src2_mux_inst alu_src2_mux work:alu_src2_mux:NOFILE -autohide -attr @cell(#000000) alu_src2_mux -pinBusAttr alu_input2 @name alu_input2[31:0] -pinBusAttr offset @name offset[31:0] -pinBusAttr rs2_data @name rs2_data[31:0] -pg 1 -lvl 4 -x 1420 -y 1520
load inst alu_unit alu work:alu:NOFILE -autohide -attr @cell(#000000) alu -pinBusAttr ALUControl @name ALUControl[3:0] -pinBusAttr integer1 @name integer1[31:0] -pinBusAttr integer2 @name integer2[31:0] -pinBusAttr result @name result[31:0] -pg 1 -lvl 5 -x 1740 -y 1360
load inst branch_unit_inst branch_unit work:branch_unit:NOFILE -autohide -attr @cell(#000000) branch_unit -pinBusAttr funct3 @name funct3[2:0] -pinBusAttr opcode @name opcode[6:0] -pg 1 -lvl 6 -x 2060 -y 1520
load inst cu control_unit work:control_unit:NOFILE -autohide -attr @cell(#000000) control_unit -pinBusAttr alu_operation @name alu_operation[1:0] -pinBusAttr immediate_control @name immediate_control[2:0] -pinBusAttr opcode @name opcode[6:0] -pg 1 -lvl 12 -x 4620 -y 120
load inst dmem data_mem work:data_mem:NOFILE -autohide -attr @cell(#000000) data_mem -pinBusAttr address @name address[31:0] -pinBusAttr funct3 @name funct3[2:0] -pinBusAttr read_data @name read_data[31:0] -pinBusAttr write_data @name write_data[31:0] -pg 1 -lvl 16 -x 7360 -y 580
load inst ex_mem_register ex_mem_reg work:ex_mem_reg:NOFILE -autohide -attr @cell(#000000) ex_mem_reg -pinBusAttr alu_result_in @name alu_result_in[31:0] -pinBusAttr alu_result_out @name alu_result_out[31:0] -pinBusAttr funct3_in @name funct3_in[2:0] -pinBusAttr funct3_out @name funct3_out[2:0] -pinBusAttr immediate_in @name immediate_in[31:0] -pinBusAttr immediate_out @name immediate_out[31:0] -pinBusAttr opcode_in @name opcode_in[6:0] -pinBusAttr opcode_out @name opcode_out[6:0] -pinBusAttr pc_in @name pc_in[31:0] -pinBusAttr pc_out @name pc_out[31:0] -pinBusAttr rd_addr_in @name rd_addr_in[4:0] -pinBusAttr rd_addr_out @name rd_addr_out[4:0] -pinBusAttr rs2_data_in @name rs2_data_in[31:0] -pinBusAttr rs2_data_out @name rs2_data_out[31:0] -pg 1 -lvl 15 -x 6810 -y 360
load inst flush_branch_i RTL_OR work -attr @cell(#000000) RTL_OR -pg 1 -lvl 10 -x 3810 -y 1440
load inst forwarded_rs1_data_i RTL_MUX144 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=2'b00 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=2'b01 -pinBusAttr I2 @name I2[31:0] -pinBusAttr I2 @attr S=2'b10 -pinBusAttr I3 @name I3[31:0] -pinBusAttr I3 @attr S=default -pinBusAttr O @name O[31:0] -pinBusAttr S @name S[1:0] -pg 1 -lvl 3 -x 980 -y 370
load inst forwarded_rs2_data_i RTL_MUX144 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=2'b00 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=2'b01 -pinBusAttr I2 @name I2[31:0] -pinBusAttr I2 @attr S=2'b10 -pinBusAttr I3 @name I3[31:0] -pinBusAttr I3 @attr S=default -pinBusAttr O @name O[31:0] -pinBusAttr S @name S[1:0] -pg 1 -lvl 3 -x 980 -y 650
load inst forwarding_unit fu work:fu:NOFILE -autohide -attr @cell(#000000) fu -pinBusAttr ex_rs1_address @name ex_rs1_address[4:0] -pinBusAttr ex_rs2_address @name ex_rs2_address[4:0] -pinBusAttr forward1 @name forward1[1:0] -pinBusAttr forward2 @name forward2[1:0] -pinBusAttr mem_rd_address @name mem_rd_address[4:0] -pinBusAttr wb_rd_address @name wb_rd_address[4:0] -pg 1 -lvl 2 -x 560 -y 360
load inst hazard_detection_unit hdu work:hdu:NOFILE -autohide -attr @cell(#000000) hdu -pinBusAttr ex_rd_address @name ex_rd_address[4:0] -pinBusAttr id_rs1_address @name id_rs1_address[4:0] -pinBusAttr id_rs2_address @name id_rs2_address[4:0] -pg 1 -lvl 8 -x 3000 -y 860
load inst id_ex_register id_ex_reg work:id_ex_reg:NOFILE -autohide -attr @cell(#000000) id_ex_reg -pinBusAttr alu_operation_in @name alu_operation_in[1:0] -pinBusAttr alu_operation_out @name alu_operation_out[1:0] -pinBusAttr funct3_in @name funct3_in[2:0] -pinBusAttr funct3_out @name funct3_out[2:0] -pinBusAttr funct7_in @name funct7_in[6:0] -pinBusAttr funct7_out @name funct7_out[6:0] -pinBusAttr immediate_in @name immediate_in[31:0] -pinBusAttr immediate_out @name immediate_out[31:0] -pinBusAttr opcode_in @name opcode_in[6:0] -pinBusAttr opcode_out @name opcode_out[6:0] -pinBusAttr pc_in @name pc_in[31:0] -pinBusAttr pc_out @name pc_out[31:0] -pinBusAttr rd_addr_in @name rd_addr_in[4:0] -pinBusAttr rd_addr_out @name rd_addr_out[4:0] -pinBusAttr rs1_addr_in @name rs1_addr_in[4:0] -pinBusAttr rs1_addr_out @name rs1_addr_out[4:0] -pinBusAttr rs1_in @name rs1_in[31:0] -pinBusAttr rs1_out @name rs1_out[31:0] -pinBusAttr rs2_addr_in @name rs2_addr_in[4:0] -pinBusAttr rs2_addr_out @name rs2_addr_out[4:0] -pinBusAttr rs2_in @name rs2_in[31:0] -pinBusAttr rs2_out @name rs2_out[31:0] -pg 1 -lvl 14 -x 5960 -y 80
load inst if_id_register if_id_reg work:if_id_reg:NOFILE -autohide -attr @cell(#000000) if_id_reg -pinBusAttr instruction_in @name instruction_in[31:0] -pinBusAttr instruction_out @name instruction_out[31:0] -pinBusAttr pc_in @name pc_in[31:0] -pinBusAttr pc_out @name pc_out[31:0] -pg 1 -lvl 11 -x 4250 -y 1180
load inst imem instruction_memory work:instruction_memory:NOFILE -autohide -attr @cell(#000000) instruction_memory -pinBusAttr instruction @name instruction[31:0] -pinBusAttr pc_address @name pc_address[31:0] -pg 1 -lvl 10 -x 3810 -y 1180
load inst immediate immediate_generator work:immediate_generator:NOFILE -autohide -attr @cell(#000000) immediate_generator -pinBusAttr immediate_control @name immediate_control[2:0] -pinBusAttr instruction @name instruction[31:0] -pinBusAttr sign_extended_immediate @name sign_extended_immediate[31:0] -pg 1 -lvl 13 -x 5160 -y 180
load inst lt_i RTL_LT work -attr @cell(#000000) RTL_LT -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[31:0] -pg 1 -lvl 5 -x 1740 -y 1550
load inst ltu_i RTL_LT work -attr @cell(#000000) RTL_LT -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[31:0] -pg 1 -lvl 5 -x 1740 -y 1660
load inst mem_wb_register mem_wb_reg work:mem_wb_reg:NOFILE -autohide -attr @cell(#000000) mem_wb_reg -pinBusAttr alu_result_in @name alu_result_in[31:0] -pinBusAttr alu_result_out @name alu_result_out[31:0] -pinBusAttr immediate_in @name immediate_in[31:0] -pinBusAttr immediate_out @name immediate_out[31:0] -pinBusAttr mem_data_in @name mem_data_in[31:0] -pinBusAttr mem_data_out @name mem_data_out[31:0] -pinBusAttr opcode_in @name opcode_in[6:0] -pinBusAttr opcode_out @name opcode_out[6:0] -pinBusAttr pc_in @name pc_in[31:0] -pinBusAttr pc_out @name pc_out[31:0] -pinBusAttr rd_addr_in @name rd_addr_in[4:0] -pinBusAttr rd_addr_out @name rd_addr_out[4:0] -pg 1 -lvl 17 -x 7780 -y 640
load inst mem_wb_write_data_i RTL_MUX0 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[31:0] -pg 1 -lvl 2 -x 560 -y 210
load inst pc_control pc_mux work:pc_mux:NOFILE -autohide -attr @cell(#000000) pc_mux -pinBusAttr opcode @name opcode[6:0] -pinBusAttr pc_increment @name pc_increment[31:0] -pinBusAttr pc_next @name pc_next[31:0] -pinBusAttr target_addr @name target_addr[31:0] -pg 1 -lvl 8 -x 3000 -y 1500
load inst pc_inc_unit pc_increment_unit work:pc_increment_unit:NOFILE -autohide -attr @cell(#000000) pc_increment_unit -pinBusAttr current_pc @name current_pc[31:0] -pinBusAttr pc_plus_4 @name pc_plus_4[31:0] -pg 1 -lvl 7 -x 2540 -y 1440
load inst pc_inst program_counter work:program_counter:NOFILE -autohide -attr @cell(#000000) program_counter -pinBusAttr pc @name pc[31:0] -pinBusAttr pc_next @name pc_next[31:0] -pg 1 -lvl 9 -x 3520 -y 1180
load inst pc_plus_4_i RTL_ADD work -attr @cell(#000000) RTL_ADD -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr V=X\"00000004\" -pinBusAttr O @name O[31:0] -pg 1 -lvl 1 -x 200 -y 200
load inst register_file regfile work:regfile:NOFILE -autohide -attr @cell(#000000) regfile -pinBusAttr rd_address @name rd_address[4:0] -pinBusAttr rs1_address @name rs1_address[4:0] -pinBusAttr rs1_read @name rs1_read[31:0] -pinBusAttr rs2_address @name rs2_address[4:0] -pinBusAttr rs2_read @name rs2_read[31:0] -pinBusAttr write_data @name write_data[31:0] -pg 1 -lvl 13 -x 5160 -y 600
load inst target_addr_mux target_address_mux work:target_address_mux:NOFILE -autohide -attr @cell(#000000) target_address_mux -pinBusAttr immediate_value @name immediate_value[31:0] -pinBusAttr pc @name pc[31:0] -pinBusAttr rs1_data @name rs1_data[31:0] -pinBusAttr target_address @name target_address[31:0] -pg 1 -lvl 7 -x 2540 -y 1560
load net <const0> -ground -pin ex_mem_register flush -pin id_ex_register stall -pin pc_plus_4_i I1[31] -pin pc_plus_4_i I1[30] -pin pc_plus_4_i I1[29] -pin pc_plus_4_i I1[28] -pin pc_plus_4_i I1[27] -pin pc_plus_4_i I1[26] -pin pc_plus_4_i I1[25] -pin pc_plus_4_i I1[24] -pin pc_plus_4_i I1[23] -pin pc_plus_4_i I1[22] -pin pc_plus_4_i I1[21] -pin pc_plus_4_i I1[20] -pin pc_plus_4_i I1[19] -pin pc_plus_4_i I1[18] -pin pc_plus_4_i I1[17] -pin pc_plus_4_i I1[16] -pin pc_plus_4_i I1[15] -pin pc_plus_4_i I1[14] -pin pc_plus_4_i I1[13] -pin pc_plus_4_i I1[12] -pin pc_plus_4_i I1[11] -pin pc_plus_4_i I1[10] -pin pc_plus_4_i I1[9] -pin pc_plus_4_i I1[8] -pin pc_plus_4_i I1[7] -pin pc_plus_4_i I1[6] -pin pc_plus_4_i I1[5] -pin pc_plus_4_i I1[4] -pin pc_plus_4_i I1[3] -pin pc_plus_4_i I1[1] -pin pc_plus_4_i I1[0]
load net <const1> -power -attr @rip 2 -pin pc_plus_4_i I1[2]
load net ALUControl[0] -attr @rip ALUControl[0] -pin alu_ctrl ALUControl[0] -pin alu_unit ALUControl[0]
load net ALUControl[1] -attr @rip ALUControl[1] -pin alu_ctrl ALUControl[1] -pin alu_unit ALUControl[1]
load net ALUControl[2] -attr @rip ALUControl[2] -pin alu_ctrl ALUControl[2] -pin alu_unit ALUControl[2]
load net ALUControl[3] -attr @rip ALUControl[3] -pin alu_ctrl ALUControl[3] -pin alu_unit ALUControl[3]
load net RTL_MUX_n_0 -attr @rip O[31] -pin RTL_MUX O[31] -pin mem_wb_write_data_i I1[31]
load net RTL_MUX_n_1 -attr @rip O[30] -pin RTL_MUX O[30] -pin mem_wb_write_data_i I1[30]
load net RTL_MUX_n_10 -attr @rip O[21] -pin RTL_MUX O[21] -pin mem_wb_write_data_i I1[21]
load net RTL_MUX_n_11 -attr @rip O[20] -pin RTL_MUX O[20] -pin mem_wb_write_data_i I1[20]
load net RTL_MUX_n_12 -attr @rip O[19] -pin RTL_MUX O[19] -pin mem_wb_write_data_i I1[19]
load net RTL_MUX_n_13 -attr @rip O[18] -pin RTL_MUX O[18] -pin mem_wb_write_data_i I1[18]
load net RTL_MUX_n_14 -attr @rip O[17] -pin RTL_MUX O[17] -pin mem_wb_write_data_i I1[17]
load net RTL_MUX_n_15 -attr @rip O[16] -pin RTL_MUX O[16] -pin mem_wb_write_data_i I1[16]
load net RTL_MUX_n_16 -attr @rip O[15] -pin RTL_MUX O[15] -pin mem_wb_write_data_i I1[15]
load net RTL_MUX_n_17 -attr @rip O[14] -pin RTL_MUX O[14] -pin mem_wb_write_data_i I1[14]
load net RTL_MUX_n_18 -attr @rip O[13] -pin RTL_MUX O[13] -pin mem_wb_write_data_i I1[13]
load net RTL_MUX_n_19 -attr @rip O[12] -pin RTL_MUX O[12] -pin mem_wb_write_data_i I1[12]
load net RTL_MUX_n_2 -attr @rip O[29] -pin RTL_MUX O[29] -pin mem_wb_write_data_i I1[29]
load net RTL_MUX_n_20 -attr @rip O[11] -pin RTL_MUX O[11] -pin mem_wb_write_data_i I1[11]
load net RTL_MUX_n_21 -attr @rip O[10] -pin RTL_MUX O[10] -pin mem_wb_write_data_i I1[10]
load net RTL_MUX_n_22 -attr @rip O[9] -pin RTL_MUX O[9] -pin mem_wb_write_data_i I1[9]
load net RTL_MUX_n_23 -attr @rip O[8] -pin RTL_MUX O[8] -pin mem_wb_write_data_i I1[8]
load net RTL_MUX_n_24 -attr @rip O[7] -pin RTL_MUX O[7] -pin mem_wb_write_data_i I1[7]
load net RTL_MUX_n_25 -attr @rip O[6] -pin RTL_MUX O[6] -pin mem_wb_write_data_i I1[6]
load net RTL_MUX_n_26 -attr @rip O[5] -pin RTL_MUX O[5] -pin mem_wb_write_data_i I1[5]
load net RTL_MUX_n_27 -attr @rip O[4] -pin RTL_MUX O[4] -pin mem_wb_write_data_i I1[4]
load net RTL_MUX_n_28 -attr @rip O[3] -pin RTL_MUX O[3] -pin mem_wb_write_data_i I1[3]
load net RTL_MUX_n_29 -attr @rip O[2] -pin RTL_MUX O[2] -pin mem_wb_write_data_i I1[2]
load net RTL_MUX_n_3 -attr @rip O[28] -pin RTL_MUX O[28] -pin mem_wb_write_data_i I1[28]
load net RTL_MUX_n_30 -attr @rip O[1] -pin RTL_MUX O[1] -pin mem_wb_write_data_i I1[1]
load net RTL_MUX_n_31 -attr @rip O[0] -pin RTL_MUX O[0] -pin mem_wb_write_data_i I1[0]
load net RTL_MUX_n_4 -attr @rip O[27] -pin RTL_MUX O[27] -pin mem_wb_write_data_i I1[27]
load net RTL_MUX_n_5 -attr @rip O[26] -pin RTL_MUX O[26] -pin mem_wb_write_data_i I1[26]
load net RTL_MUX_n_6 -attr @rip O[25] -pin RTL_MUX O[25] -pin mem_wb_write_data_i I1[25]
load net RTL_MUX_n_7 -attr @rip O[24] -pin RTL_MUX O[24] -pin mem_wb_write_data_i I1[24]
load net RTL_MUX_n_8 -attr @rip O[23] -pin RTL_MUX O[23] -pin mem_wb_write_data_i I1[23]
load net RTL_MUX_n_9 -attr @rip O[22] -pin RTL_MUX O[22] -pin mem_wb_write_data_i I1[22]
load net alu_input1[0] -attr @rip alu_input1[0] -pin alu_src1_mux_inst alu_input1[0] -pin alu_unit integer1[0] -pin lt_i I0[0] -pin ltu_i I0[0]
load net alu_input1[10] -attr @rip alu_input1[10] -pin alu_src1_mux_inst alu_input1[10] -pin alu_unit integer1[10] -pin lt_i I0[10] -pin ltu_i I0[10]
load net alu_input1[11] -attr @rip alu_input1[11] -pin alu_src1_mux_inst alu_input1[11] -pin alu_unit integer1[11] -pin lt_i I0[11] -pin ltu_i I0[11]
load net alu_input1[12] -attr @rip alu_input1[12] -pin alu_src1_mux_inst alu_input1[12] -pin alu_unit integer1[12] -pin lt_i I0[12] -pin ltu_i I0[12]
load net alu_input1[13] -attr @rip alu_input1[13] -pin alu_src1_mux_inst alu_input1[13] -pin alu_unit integer1[13] -pin lt_i I0[13] -pin ltu_i I0[13]
load net alu_input1[14] -attr @rip alu_input1[14] -pin alu_src1_mux_inst alu_input1[14] -pin alu_unit integer1[14] -pin lt_i I0[14] -pin ltu_i I0[14]
load net alu_input1[15] -attr @rip alu_input1[15] -pin alu_src1_mux_inst alu_input1[15] -pin alu_unit integer1[15] -pin lt_i I0[15] -pin ltu_i I0[15]
load net alu_input1[16] -attr @rip alu_input1[16] -pin alu_src1_mux_inst alu_input1[16] -pin alu_unit integer1[16] -pin lt_i I0[16] -pin ltu_i I0[16]
load net alu_input1[17] -attr @rip alu_input1[17] -pin alu_src1_mux_inst alu_input1[17] -pin alu_unit integer1[17] -pin lt_i I0[17] -pin ltu_i I0[17]
load net alu_input1[18] -attr @rip alu_input1[18] -pin alu_src1_mux_inst alu_input1[18] -pin alu_unit integer1[18] -pin lt_i I0[18] -pin ltu_i I0[18]
load net alu_input1[19] -attr @rip alu_input1[19] -pin alu_src1_mux_inst alu_input1[19] -pin alu_unit integer1[19] -pin lt_i I0[19] -pin ltu_i I0[19]
load net alu_input1[1] -attr @rip alu_input1[1] -pin alu_src1_mux_inst alu_input1[1] -pin alu_unit integer1[1] -pin lt_i I0[1] -pin ltu_i I0[1]
load net alu_input1[20] -attr @rip alu_input1[20] -pin alu_src1_mux_inst alu_input1[20] -pin alu_unit integer1[20] -pin lt_i I0[20] -pin ltu_i I0[20]
load net alu_input1[21] -attr @rip alu_input1[21] -pin alu_src1_mux_inst alu_input1[21] -pin alu_unit integer1[21] -pin lt_i I0[21] -pin ltu_i I0[21]
load net alu_input1[22] -attr @rip alu_input1[22] -pin alu_src1_mux_inst alu_input1[22] -pin alu_unit integer1[22] -pin lt_i I0[22] -pin ltu_i I0[22]
load net alu_input1[23] -attr @rip alu_input1[23] -pin alu_src1_mux_inst alu_input1[23] -pin alu_unit integer1[23] -pin lt_i I0[23] -pin ltu_i I0[23]
load net alu_input1[24] -attr @rip alu_input1[24] -pin alu_src1_mux_inst alu_input1[24] -pin alu_unit integer1[24] -pin lt_i I0[24] -pin ltu_i I0[24]
load net alu_input1[25] -attr @rip alu_input1[25] -pin alu_src1_mux_inst alu_input1[25] -pin alu_unit integer1[25] -pin lt_i I0[25] -pin ltu_i I0[25]
load net alu_input1[26] -attr @rip alu_input1[26] -pin alu_src1_mux_inst alu_input1[26] -pin alu_unit integer1[26] -pin lt_i I0[26] -pin ltu_i I0[26]
load net alu_input1[27] -attr @rip alu_input1[27] -pin alu_src1_mux_inst alu_input1[27] -pin alu_unit integer1[27] -pin lt_i I0[27] -pin ltu_i I0[27]
load net alu_input1[28] -attr @rip alu_input1[28] -pin alu_src1_mux_inst alu_input1[28] -pin alu_unit integer1[28] -pin lt_i I0[28] -pin ltu_i I0[28]
load net alu_input1[29] -attr @rip alu_input1[29] -pin alu_src1_mux_inst alu_input1[29] -pin alu_unit integer1[29] -pin lt_i I0[29] -pin ltu_i I0[29]
load net alu_input1[2] -attr @rip alu_input1[2] -pin alu_src1_mux_inst alu_input1[2] -pin alu_unit integer1[2] -pin lt_i I0[2] -pin ltu_i I0[2]
load net alu_input1[30] -attr @rip alu_input1[30] -pin alu_src1_mux_inst alu_input1[30] -pin alu_unit integer1[30] -pin lt_i I0[30] -pin ltu_i I0[30]
load net alu_input1[31] -attr @rip alu_input1[31] -pin alu_src1_mux_inst alu_input1[31] -pin alu_unit integer1[31] -pin lt_i I0[31] -pin ltu_i I0[31]
load net alu_input1[3] -attr @rip alu_input1[3] -pin alu_src1_mux_inst alu_input1[3] -pin alu_unit integer1[3] -pin lt_i I0[3] -pin ltu_i I0[3]
load net alu_input1[4] -attr @rip alu_input1[4] -pin alu_src1_mux_inst alu_input1[4] -pin alu_unit integer1[4] -pin lt_i I0[4] -pin ltu_i I0[4]
load net alu_input1[5] -attr @rip alu_input1[5] -pin alu_src1_mux_inst alu_input1[5] -pin alu_unit integer1[5] -pin lt_i I0[5] -pin ltu_i I0[5]
load net alu_input1[6] -attr @rip alu_input1[6] -pin alu_src1_mux_inst alu_input1[6] -pin alu_unit integer1[6] -pin lt_i I0[6] -pin ltu_i I0[6]
load net alu_input1[7] -attr @rip alu_input1[7] -pin alu_src1_mux_inst alu_input1[7] -pin alu_unit integer1[7] -pin lt_i I0[7] -pin ltu_i I0[7]
load net alu_input1[8] -attr @rip alu_input1[8] -pin alu_src1_mux_inst alu_input1[8] -pin alu_unit integer1[8] -pin lt_i I0[8] -pin ltu_i I0[8]
load net alu_input1[9] -attr @rip alu_input1[9] -pin alu_src1_mux_inst alu_input1[9] -pin alu_unit integer1[9] -pin lt_i I0[9] -pin ltu_i I0[9]
load net alu_input2[0] -attr @rip alu_input2[0] -pin alu_src2_mux_inst alu_input2[0] -pin alu_unit integer2[0] -pin lt_i I1[0] -pin ltu_i I1[0]
load net alu_input2[10] -attr @rip alu_input2[10] -pin alu_src2_mux_inst alu_input2[10] -pin alu_unit integer2[10] -pin lt_i I1[10] -pin ltu_i I1[10]
load net alu_input2[11] -attr @rip alu_input2[11] -pin alu_src2_mux_inst alu_input2[11] -pin alu_unit integer2[11] -pin lt_i I1[11] -pin ltu_i I1[11]
load net alu_input2[12] -attr @rip alu_input2[12] -pin alu_src2_mux_inst alu_input2[12] -pin alu_unit integer2[12] -pin lt_i I1[12] -pin ltu_i I1[12]
load net alu_input2[13] -attr @rip alu_input2[13] -pin alu_src2_mux_inst alu_input2[13] -pin alu_unit integer2[13] -pin lt_i I1[13] -pin ltu_i I1[13]
load net alu_input2[14] -attr @rip alu_input2[14] -pin alu_src2_mux_inst alu_input2[14] -pin alu_unit integer2[14] -pin lt_i I1[14] -pin ltu_i I1[14]
load net alu_input2[15] -attr @rip alu_input2[15] -pin alu_src2_mux_inst alu_input2[15] -pin alu_unit integer2[15] -pin lt_i I1[15] -pin ltu_i I1[15]
load net alu_input2[16] -attr @rip alu_input2[16] -pin alu_src2_mux_inst alu_input2[16] -pin alu_unit integer2[16] -pin lt_i I1[16] -pin ltu_i I1[16]
load net alu_input2[17] -attr @rip alu_input2[17] -pin alu_src2_mux_inst alu_input2[17] -pin alu_unit integer2[17] -pin lt_i I1[17] -pin ltu_i I1[17]
load net alu_input2[18] -attr @rip alu_input2[18] -pin alu_src2_mux_inst alu_input2[18] -pin alu_unit integer2[18] -pin lt_i I1[18] -pin ltu_i I1[18]
load net alu_input2[19] -attr @rip alu_input2[19] -pin alu_src2_mux_inst alu_input2[19] -pin alu_unit integer2[19] -pin lt_i I1[19] -pin ltu_i I1[19]
load net alu_input2[1] -attr @rip alu_input2[1] -pin alu_src2_mux_inst alu_input2[1] -pin alu_unit integer2[1] -pin lt_i I1[1] -pin ltu_i I1[1]
load net alu_input2[20] -attr @rip alu_input2[20] -pin alu_src2_mux_inst alu_input2[20] -pin alu_unit integer2[20] -pin lt_i I1[20] -pin ltu_i I1[20]
load net alu_input2[21] -attr @rip alu_input2[21] -pin alu_src2_mux_inst alu_input2[21] -pin alu_unit integer2[21] -pin lt_i I1[21] -pin ltu_i I1[21]
load net alu_input2[22] -attr @rip alu_input2[22] -pin alu_src2_mux_inst alu_input2[22] -pin alu_unit integer2[22] -pin lt_i I1[22] -pin ltu_i I1[22]
load net alu_input2[23] -attr @rip alu_input2[23] -pin alu_src2_mux_inst alu_input2[23] -pin alu_unit integer2[23] -pin lt_i I1[23] -pin ltu_i I1[23]
load net alu_input2[24] -attr @rip alu_input2[24] -pin alu_src2_mux_inst alu_input2[24] -pin alu_unit integer2[24] -pin lt_i I1[24] -pin ltu_i I1[24]
load net alu_input2[25] -attr @rip alu_input2[25] -pin alu_src2_mux_inst alu_input2[25] -pin alu_unit integer2[25] -pin lt_i I1[25] -pin ltu_i I1[25]
load net alu_input2[26] -attr @rip alu_input2[26] -pin alu_src2_mux_inst alu_input2[26] -pin alu_unit integer2[26] -pin lt_i I1[26] -pin ltu_i I1[26]
load net alu_input2[27] -attr @rip alu_input2[27] -pin alu_src2_mux_inst alu_input2[27] -pin alu_unit integer2[27] -pin lt_i I1[27] -pin ltu_i I1[27]
load net alu_input2[28] -attr @rip alu_input2[28] -pin alu_src2_mux_inst alu_input2[28] -pin alu_unit integer2[28] -pin lt_i I1[28] -pin ltu_i I1[28]
load net alu_input2[29] -attr @rip alu_input2[29] -pin alu_src2_mux_inst alu_input2[29] -pin alu_unit integer2[29] -pin lt_i I1[29] -pin ltu_i I1[29]
load net alu_input2[2] -attr @rip alu_input2[2] -pin alu_src2_mux_inst alu_input2[2] -pin alu_unit integer2[2] -pin lt_i I1[2] -pin ltu_i I1[2]
load net alu_input2[30] -attr @rip alu_input2[30] -pin alu_src2_mux_inst alu_input2[30] -pin alu_unit integer2[30] -pin lt_i I1[30] -pin ltu_i I1[30]
load net alu_input2[31] -attr @rip alu_input2[31] -pin alu_src2_mux_inst alu_input2[31] -pin alu_unit integer2[31] -pin lt_i I1[31] -pin ltu_i I1[31]
load net alu_input2[3] -attr @rip alu_input2[3] -pin alu_src2_mux_inst alu_input2[3] -pin alu_unit integer2[3] -pin lt_i I1[3] -pin ltu_i I1[3]
load net alu_input2[4] -attr @rip alu_input2[4] -pin alu_src2_mux_inst alu_input2[4] -pin alu_unit integer2[4] -pin lt_i I1[4] -pin ltu_i I1[4]
load net alu_input2[5] -attr @rip alu_input2[5] -pin alu_src2_mux_inst alu_input2[5] -pin alu_unit integer2[5] -pin lt_i I1[5] -pin ltu_i I1[5]
load net alu_input2[6] -attr @rip alu_input2[6] -pin alu_src2_mux_inst alu_input2[6] -pin alu_unit integer2[6] -pin lt_i I1[6] -pin ltu_i I1[6]
load net alu_input2[7] -attr @rip alu_input2[7] -pin alu_src2_mux_inst alu_input2[7] -pin alu_unit integer2[7] -pin lt_i I1[7] -pin ltu_i I1[7]
load net alu_input2[8] -attr @rip alu_input2[8] -pin alu_src2_mux_inst alu_input2[8] -pin alu_unit integer2[8] -pin lt_i I1[8] -pin ltu_i I1[8]
load net alu_input2[9] -attr @rip alu_input2[9] -pin alu_src2_mux_inst alu_input2[9] -pin alu_unit integer2[9] -pin lt_i I1[9] -pin ltu_i I1[9]
load net alu_operation[0] -attr @rip alu_operation[0] -pin cu alu_operation[0] -pin id_ex_register alu_operation_in[0]
load net alu_operation[1] -attr @rip alu_operation[1] -pin cu alu_operation[1] -pin id_ex_register alu_operation_in[1]
load net alu_or_mem_result[0] -attr @rip O[0] -pin RTL_MUX I1[0] -pin alu_or_mem_result_i O[0]
load net alu_or_mem_result[10] -attr @rip O[10] -pin RTL_MUX I1[10] -pin alu_or_mem_result_i O[10]
load net alu_or_mem_result[11] -attr @rip O[11] -pin RTL_MUX I1[11] -pin alu_or_mem_result_i O[11]
load net alu_or_mem_result[12] -attr @rip O[12] -pin RTL_MUX I1[12] -pin alu_or_mem_result_i O[12]
load net alu_or_mem_result[13] -attr @rip O[13] -pin RTL_MUX I1[13] -pin alu_or_mem_result_i O[13]
load net alu_or_mem_result[14] -attr @rip O[14] -pin RTL_MUX I1[14] -pin alu_or_mem_result_i O[14]
load net alu_or_mem_result[15] -attr @rip O[15] -pin RTL_MUX I1[15] -pin alu_or_mem_result_i O[15]
load net alu_or_mem_result[16] -attr @rip O[16] -pin RTL_MUX I1[16] -pin alu_or_mem_result_i O[16]
load net alu_or_mem_result[17] -attr @rip O[17] -pin RTL_MUX I1[17] -pin alu_or_mem_result_i O[17]
load net alu_or_mem_result[18] -attr @rip O[18] -pin RTL_MUX I1[18] -pin alu_or_mem_result_i O[18]
load net alu_or_mem_result[19] -attr @rip O[19] -pin RTL_MUX I1[19] -pin alu_or_mem_result_i O[19]
load net alu_or_mem_result[1] -attr @rip O[1] -pin RTL_MUX I1[1] -pin alu_or_mem_result_i O[1]
load net alu_or_mem_result[20] -attr @rip O[20] -pin RTL_MUX I1[20] -pin alu_or_mem_result_i O[20]
load net alu_or_mem_result[21] -attr @rip O[21] -pin RTL_MUX I1[21] -pin alu_or_mem_result_i O[21]
load net alu_or_mem_result[22] -attr @rip O[22] -pin RTL_MUX I1[22] -pin alu_or_mem_result_i O[22]
load net alu_or_mem_result[23] -attr @rip O[23] -pin RTL_MUX I1[23] -pin alu_or_mem_result_i O[23]
load net alu_or_mem_result[24] -attr @rip O[24] -pin RTL_MUX I1[24] -pin alu_or_mem_result_i O[24]
load net alu_or_mem_result[25] -attr @rip O[25] -pin RTL_MUX I1[25] -pin alu_or_mem_result_i O[25]
load net alu_or_mem_result[26] -attr @rip O[26] -pin RTL_MUX I1[26] -pin alu_or_mem_result_i O[26]
load net alu_or_mem_result[27] -attr @rip O[27] -pin RTL_MUX I1[27] -pin alu_or_mem_result_i O[27]
load net alu_or_mem_result[28] -attr @rip O[28] -pin RTL_MUX I1[28] -pin alu_or_mem_result_i O[28]
load net alu_or_mem_result[29] -attr @rip O[29] -pin RTL_MUX I1[29] -pin alu_or_mem_result_i O[29]
load net alu_or_mem_result[2] -attr @rip O[2] -pin RTL_MUX I1[2] -pin alu_or_mem_result_i O[2]
load net alu_or_mem_result[30] -attr @rip O[30] -pin RTL_MUX I1[30] -pin alu_or_mem_result_i O[30]
load net alu_or_mem_result[31] -attr @rip O[31] -pin RTL_MUX I1[31] -pin alu_or_mem_result_i O[31]
load net alu_or_mem_result[3] -attr @rip O[3] -pin RTL_MUX I1[3] -pin alu_or_mem_result_i O[3]
load net alu_or_mem_result[4] -attr @rip O[4] -pin RTL_MUX I1[4] -pin alu_or_mem_result_i O[4]
load net alu_or_mem_result[5] -attr @rip O[5] -pin RTL_MUX I1[5] -pin alu_or_mem_result_i O[5]
load net alu_or_mem_result[6] -attr @rip O[6] -pin RTL_MUX I1[6] -pin alu_or_mem_result_i O[6]
load net alu_or_mem_result[7] -attr @rip O[7] -pin RTL_MUX I1[7] -pin alu_or_mem_result_i O[7]
load net alu_or_mem_result[8] -attr @rip O[8] -pin RTL_MUX I1[8] -pin alu_or_mem_result_i O[8]
load net alu_or_mem_result[9] -attr @rip O[9] -pin RTL_MUX I1[9] -pin alu_or_mem_result_i O[9]
load net alu_result[0] -attr @rip result[0] -pin alu_unit result[0] -pin ex_mem_register alu_result_in[0]
load net alu_result[10] -attr @rip result[10] -pin alu_unit result[10] -pin ex_mem_register alu_result_in[10]
load net alu_result[11] -attr @rip result[11] -pin alu_unit result[11] -pin ex_mem_register alu_result_in[11]
load net alu_result[12] -attr @rip result[12] -pin alu_unit result[12] -pin ex_mem_register alu_result_in[12]
load net alu_result[13] -attr @rip result[13] -pin alu_unit result[13] -pin ex_mem_register alu_result_in[13]
load net alu_result[14] -attr @rip result[14] -pin alu_unit result[14] -pin ex_mem_register alu_result_in[14]
load net alu_result[15] -attr @rip result[15] -pin alu_unit result[15] -pin ex_mem_register alu_result_in[15]
load net alu_result[16] -attr @rip result[16] -pin alu_unit result[16] -pin ex_mem_register alu_result_in[16]
load net alu_result[17] -attr @rip result[17] -pin alu_unit result[17] -pin ex_mem_register alu_result_in[17]
load net alu_result[18] -attr @rip result[18] -pin alu_unit result[18] -pin ex_mem_register alu_result_in[18]
load net alu_result[19] -attr @rip result[19] -pin alu_unit result[19] -pin ex_mem_register alu_result_in[19]
load net alu_result[1] -attr @rip result[1] -pin alu_unit result[1] -pin ex_mem_register alu_result_in[1]
load net alu_result[20] -attr @rip result[20] -pin alu_unit result[20] -pin ex_mem_register alu_result_in[20]
load net alu_result[21] -attr @rip result[21] -pin alu_unit result[21] -pin ex_mem_register alu_result_in[21]
load net alu_result[22] -attr @rip result[22] -pin alu_unit result[22] -pin ex_mem_register alu_result_in[22]
load net alu_result[23] -attr @rip result[23] -pin alu_unit result[23] -pin ex_mem_register alu_result_in[23]
load net alu_result[24] -attr @rip result[24] -pin alu_unit result[24] -pin ex_mem_register alu_result_in[24]
load net alu_result[25] -attr @rip result[25] -pin alu_unit result[25] -pin ex_mem_register alu_result_in[25]
load net alu_result[26] -attr @rip result[26] -pin alu_unit result[26] -pin ex_mem_register alu_result_in[26]
load net alu_result[27] -attr @rip result[27] -pin alu_unit result[27] -pin ex_mem_register alu_result_in[27]
load net alu_result[28] -attr @rip result[28] -pin alu_unit result[28] -pin ex_mem_register alu_result_in[28]
load net alu_result[29] -attr @rip result[29] -pin alu_unit result[29] -pin ex_mem_register alu_result_in[29]
load net alu_result[2] -attr @rip result[2] -pin alu_unit result[2] -pin ex_mem_register alu_result_in[2]
load net alu_result[30] -attr @rip result[30] -pin alu_unit result[30] -pin ex_mem_register alu_result_in[30]
load net alu_result[31] -attr @rip result[31] -pin alu_unit result[31] -pin ex_mem_register alu_result_in[31]
load net alu_result[3] -attr @rip result[3] -pin alu_unit result[3] -pin ex_mem_register alu_result_in[3]
load net alu_result[4] -attr @rip result[4] -pin alu_unit result[4] -pin ex_mem_register alu_result_in[4]
load net alu_result[5] -attr @rip result[5] -pin alu_unit result[5] -pin ex_mem_register alu_result_in[5]
load net alu_result[6] -attr @rip result[6] -pin alu_unit result[6] -pin ex_mem_register alu_result_in[6]
load net alu_result[7] -attr @rip result[7] -pin alu_unit result[7] -pin ex_mem_register alu_result_in[7]
load net alu_result[8] -attr @rip result[8] -pin alu_unit result[8] -pin ex_mem_register alu_result_in[8]
load net alu_result[9] -attr @rip result[9] -pin alu_unit result[9] -pin ex_mem_register alu_result_in[9]
load net alu_src1 -pin cu alu_src1 -pin id_ex_register alu_src1_in
netloc alu_src1 1 12 2 4860J 90 5790
load net alu_src2 -pin cu alu_src2 -pin id_ex_register alu_src2_in
netloc alu_src2 1 12 2 4880J 110 5770
load net branch_condition_match -pin branch_unit_inst branch_condition_match -pin flush_branch_i I1 -pin pc_control branch_condition_match -pin target_addr_mux branch_condition_match
netloc branch_condition_match 1 6 4 2290 1510 2830 1450 NJ 1450 NJ
load net clk -port clk -pin dmem clk -pin ex_mem_register clk -pin id_ex_register clk -pin if_id_register clk -pin imem clk -pin mem_wb_register clk -pin pc_inst clk -pin register_file clk
netloc clk 1 0 17 NJ 1290 NJ 1290 NJ 1290 NJ 1290 NJ 1290 NJ 1290 NJ 1290 NJ 1290 3350 1130 3660 1130 4050 750 NJ 750 4920 410 5510 610 6470 710 7100 530 7600
load net dcache_read[0] -attr @rip read_data[0] -pin dmem read_data[0] -pin mem_wb_register mem_data_in[0]
load net dcache_read[10] -attr @rip read_data[10] -pin dmem read_data[10] -pin mem_wb_register mem_data_in[10]
load net dcache_read[11] -attr @rip read_data[11] -pin dmem read_data[11] -pin mem_wb_register mem_data_in[11]
load net dcache_read[12] -attr @rip read_data[12] -pin dmem read_data[12] -pin mem_wb_register mem_data_in[12]
load net dcache_read[13] -attr @rip read_data[13] -pin dmem read_data[13] -pin mem_wb_register mem_data_in[13]
load net dcache_read[14] -attr @rip read_data[14] -pin dmem read_data[14] -pin mem_wb_register mem_data_in[14]
load net dcache_read[15] -attr @rip read_data[15] -pin dmem read_data[15] -pin mem_wb_register mem_data_in[15]
load net dcache_read[16] -attr @rip read_data[16] -pin dmem read_data[16] -pin mem_wb_register mem_data_in[16]
load net dcache_read[17] -attr @rip read_data[17] -pin dmem read_data[17] -pin mem_wb_register mem_data_in[17]
load net dcache_read[18] -attr @rip read_data[18] -pin dmem read_data[18] -pin mem_wb_register mem_data_in[18]
load net dcache_read[19] -attr @rip read_data[19] -pin dmem read_data[19] -pin mem_wb_register mem_data_in[19]
load net dcache_read[1] -attr @rip read_data[1] -pin dmem read_data[1] -pin mem_wb_register mem_data_in[1]
load net dcache_read[20] -attr @rip read_data[20] -pin dmem read_data[20] -pin mem_wb_register mem_data_in[20]
load net dcache_read[21] -attr @rip read_data[21] -pin dmem read_data[21] -pin mem_wb_register mem_data_in[21]
load net dcache_read[22] -attr @rip read_data[22] -pin dmem read_data[22] -pin mem_wb_register mem_data_in[22]
load net dcache_read[23] -attr @rip read_data[23] -pin dmem read_data[23] -pin mem_wb_register mem_data_in[23]
load net dcache_read[24] -attr @rip read_data[24] -pin dmem read_data[24] -pin mem_wb_register mem_data_in[24]
load net dcache_read[25] -attr @rip read_data[25] -pin dmem read_data[25] -pin mem_wb_register mem_data_in[25]
load net dcache_read[26] -attr @rip read_data[26] -pin dmem read_data[26] -pin mem_wb_register mem_data_in[26]
load net dcache_read[27] -attr @rip read_data[27] -pin dmem read_data[27] -pin mem_wb_register mem_data_in[27]
load net dcache_read[28] -attr @rip read_data[28] -pin dmem read_data[28] -pin mem_wb_register mem_data_in[28]
load net dcache_read[29] -attr @rip read_data[29] -pin dmem read_data[29] -pin mem_wb_register mem_data_in[29]
load net dcache_read[2] -attr @rip read_data[2] -pin dmem read_data[2] -pin mem_wb_register mem_data_in[2]
load net dcache_read[30] -attr @rip read_data[30] -pin dmem read_data[30] -pin mem_wb_register mem_data_in[30]
load net dcache_read[31] -attr @rip read_data[31] -pin dmem read_data[31] -pin mem_wb_register mem_data_in[31]
load net dcache_read[3] -attr @rip read_data[3] -pin dmem read_data[3] -pin mem_wb_register mem_data_in[3]
load net dcache_read[4] -attr @rip read_data[4] -pin dmem read_data[4] -pin mem_wb_register mem_data_in[4]
load net dcache_read[5] -attr @rip read_data[5] -pin dmem read_data[5] -pin mem_wb_register mem_data_in[5]
load net dcache_read[6] -attr @rip read_data[6] -pin dmem read_data[6] -pin mem_wb_register mem_data_in[6]
load net dcache_read[7] -attr @rip read_data[7] -pin dmem read_data[7] -pin mem_wb_register mem_data_in[7]
load net dcache_read[8] -attr @rip read_data[8] -pin dmem read_data[8] -pin mem_wb_register mem_data_in[8]
load net dcache_read[9] -attr @rip read_data[9] -pin dmem read_data[9] -pin mem_wb_register mem_data_in[9]
load net ex_mem_alu_result[0] -attr @rip alu_result_out[0] -pin dmem address[0] -pin ex_mem_register alu_result_out[0] -pin forwarded_rs1_data_i I1[0] -pin forwarded_rs2_data_i I1[0] -pin mem_wb_register alu_result_in[0]
load net ex_mem_alu_result[10] -attr @rip alu_result_out[10] -pin dmem address[10] -pin ex_mem_register alu_result_out[10] -pin forwarded_rs1_data_i I1[10] -pin forwarded_rs2_data_i I1[10] -pin mem_wb_register alu_result_in[10]
load net ex_mem_alu_result[11] -attr @rip alu_result_out[11] -pin dmem address[11] -pin ex_mem_register alu_result_out[11] -pin forwarded_rs1_data_i I1[11] -pin forwarded_rs2_data_i I1[11] -pin mem_wb_register alu_result_in[11]
load net ex_mem_alu_result[12] -attr @rip alu_result_out[12] -pin dmem address[12] -pin ex_mem_register alu_result_out[12] -pin forwarded_rs1_data_i I1[12] -pin forwarded_rs2_data_i I1[12] -pin mem_wb_register alu_result_in[12]
load net ex_mem_alu_result[13] -attr @rip alu_result_out[13] -pin dmem address[13] -pin ex_mem_register alu_result_out[13] -pin forwarded_rs1_data_i I1[13] -pin forwarded_rs2_data_i I1[13] -pin mem_wb_register alu_result_in[13]
load net ex_mem_alu_result[14] -attr @rip alu_result_out[14] -pin dmem address[14] -pin ex_mem_register alu_result_out[14] -pin forwarded_rs1_data_i I1[14] -pin forwarded_rs2_data_i I1[14] -pin mem_wb_register alu_result_in[14]
load net ex_mem_alu_result[15] -attr @rip alu_result_out[15] -pin dmem address[15] -pin ex_mem_register alu_result_out[15] -pin forwarded_rs1_data_i I1[15] -pin forwarded_rs2_data_i I1[15] -pin mem_wb_register alu_result_in[15]
load net ex_mem_alu_result[16] -attr @rip alu_result_out[16] -pin dmem address[16] -pin ex_mem_register alu_result_out[16] -pin forwarded_rs1_data_i I1[16] -pin forwarded_rs2_data_i I1[16] -pin mem_wb_register alu_result_in[16]
load net ex_mem_alu_result[17] -attr @rip alu_result_out[17] -pin dmem address[17] -pin ex_mem_register alu_result_out[17] -pin forwarded_rs1_data_i I1[17] -pin forwarded_rs2_data_i I1[17] -pin mem_wb_register alu_result_in[17]
load net ex_mem_alu_result[18] -attr @rip alu_result_out[18] -pin dmem address[18] -pin ex_mem_register alu_result_out[18] -pin forwarded_rs1_data_i I1[18] -pin forwarded_rs2_data_i I1[18] -pin mem_wb_register alu_result_in[18]
load net ex_mem_alu_result[19] -attr @rip alu_result_out[19] -pin dmem address[19] -pin ex_mem_register alu_result_out[19] -pin forwarded_rs1_data_i I1[19] -pin forwarded_rs2_data_i I1[19] -pin mem_wb_register alu_result_in[19]
load net ex_mem_alu_result[1] -attr @rip alu_result_out[1] -pin dmem address[1] -pin ex_mem_register alu_result_out[1] -pin forwarded_rs1_data_i I1[1] -pin forwarded_rs2_data_i I1[1] -pin mem_wb_register alu_result_in[1]
load net ex_mem_alu_result[20] -attr @rip alu_result_out[20] -pin dmem address[20] -pin ex_mem_register alu_result_out[20] -pin forwarded_rs1_data_i I1[20] -pin forwarded_rs2_data_i I1[20] -pin mem_wb_register alu_result_in[20]
load net ex_mem_alu_result[21] -attr @rip alu_result_out[21] -pin dmem address[21] -pin ex_mem_register alu_result_out[21] -pin forwarded_rs1_data_i I1[21] -pin forwarded_rs2_data_i I1[21] -pin mem_wb_register alu_result_in[21]
load net ex_mem_alu_result[22] -attr @rip alu_result_out[22] -pin dmem address[22] -pin ex_mem_register alu_result_out[22] -pin forwarded_rs1_data_i I1[22] -pin forwarded_rs2_data_i I1[22] -pin mem_wb_register alu_result_in[22]
load net ex_mem_alu_result[23] -attr @rip alu_result_out[23] -pin dmem address[23] -pin ex_mem_register alu_result_out[23] -pin forwarded_rs1_data_i I1[23] -pin forwarded_rs2_data_i I1[23] -pin mem_wb_register alu_result_in[23]
load net ex_mem_alu_result[24] -attr @rip alu_result_out[24] -pin dmem address[24] -pin ex_mem_register alu_result_out[24] -pin forwarded_rs1_data_i I1[24] -pin forwarded_rs2_data_i I1[24] -pin mem_wb_register alu_result_in[24]
load net ex_mem_alu_result[25] -attr @rip alu_result_out[25] -pin dmem address[25] -pin ex_mem_register alu_result_out[25] -pin forwarded_rs1_data_i I1[25] -pin forwarded_rs2_data_i I1[25] -pin mem_wb_register alu_result_in[25]
load net ex_mem_alu_result[26] -attr @rip alu_result_out[26] -pin dmem address[26] -pin ex_mem_register alu_result_out[26] -pin forwarded_rs1_data_i I1[26] -pin forwarded_rs2_data_i I1[26] -pin mem_wb_register alu_result_in[26]
load net ex_mem_alu_result[27] -attr @rip alu_result_out[27] -pin dmem address[27] -pin ex_mem_register alu_result_out[27] -pin forwarded_rs1_data_i I1[27] -pin forwarded_rs2_data_i I1[27] -pin mem_wb_register alu_result_in[27]
load net ex_mem_alu_result[28] -attr @rip alu_result_out[28] -pin dmem address[28] -pin ex_mem_register alu_result_out[28] -pin forwarded_rs1_data_i I1[28] -pin forwarded_rs2_data_i I1[28] -pin mem_wb_register alu_result_in[28]
load net ex_mem_alu_result[29] -attr @rip alu_result_out[29] -pin dmem address[29] -pin ex_mem_register alu_result_out[29] -pin forwarded_rs1_data_i I1[29] -pin forwarded_rs2_data_i I1[29] -pin mem_wb_register alu_result_in[29]
load net ex_mem_alu_result[2] -attr @rip alu_result_out[2] -pin dmem address[2] -pin ex_mem_register alu_result_out[2] -pin forwarded_rs1_data_i I1[2] -pin forwarded_rs2_data_i I1[2] -pin mem_wb_register alu_result_in[2]
load net ex_mem_alu_result[30] -attr @rip alu_result_out[30] -pin dmem address[30] -pin ex_mem_register alu_result_out[30] -pin forwarded_rs1_data_i I1[30] -pin forwarded_rs2_data_i I1[30] -pin mem_wb_register alu_result_in[30]
load net ex_mem_alu_result[31] -attr @rip alu_result_out[31] -pin dmem address[31] -pin ex_mem_register alu_result_out[31] -pin forwarded_rs1_data_i I1[31] -pin forwarded_rs2_data_i I1[31] -pin mem_wb_register alu_result_in[31]
load net ex_mem_alu_result[3] -attr @rip alu_result_out[3] -pin dmem address[3] -pin ex_mem_register alu_result_out[3] -pin forwarded_rs1_data_i I1[3] -pin forwarded_rs2_data_i I1[3] -pin mem_wb_register alu_result_in[3]
load net ex_mem_alu_result[4] -attr @rip alu_result_out[4] -pin dmem address[4] -pin ex_mem_register alu_result_out[4] -pin forwarded_rs1_data_i I1[4] -pin forwarded_rs2_data_i I1[4] -pin mem_wb_register alu_result_in[4]
load net ex_mem_alu_result[5] -attr @rip alu_result_out[5] -pin dmem address[5] -pin ex_mem_register alu_result_out[5] -pin forwarded_rs1_data_i I1[5] -pin forwarded_rs2_data_i I1[5] -pin mem_wb_register alu_result_in[5]
load net ex_mem_alu_result[6] -attr @rip alu_result_out[6] -pin dmem address[6] -pin ex_mem_register alu_result_out[6] -pin forwarded_rs1_data_i I1[6] -pin forwarded_rs2_data_i I1[6] -pin mem_wb_register alu_result_in[6]
load net ex_mem_alu_result[7] -attr @rip alu_result_out[7] -pin dmem address[7] -pin ex_mem_register alu_result_out[7] -pin forwarded_rs1_data_i I1[7] -pin forwarded_rs2_data_i I1[7] -pin mem_wb_register alu_result_in[7]
load net ex_mem_alu_result[8] -attr @rip alu_result_out[8] -pin dmem address[8] -pin ex_mem_register alu_result_out[8] -pin forwarded_rs1_data_i I1[8] -pin forwarded_rs2_data_i I1[8] -pin mem_wb_register alu_result_in[8]
load net ex_mem_alu_result[9] -attr @rip alu_result_out[9] -pin dmem address[9] -pin ex_mem_register alu_result_out[9] -pin forwarded_rs1_data_i I1[9] -pin forwarded_rs2_data_i I1[9] -pin mem_wb_register alu_result_in[9]
load net ex_mem_funct3[0] -attr @rip funct3_out[0] -pin dmem funct3[0] -pin ex_mem_register funct3_out[0]
load net ex_mem_funct3[1] -attr @rip funct3_out[1] -pin dmem funct3[1] -pin ex_mem_register funct3_out[1]
load net ex_mem_funct3[2] -attr @rip funct3_out[2] -pin dmem funct3[2] -pin ex_mem_register funct3_out[2]
load net ex_mem_immediate[0] -attr @rip immediate_out[0] -pin ex_mem_register immediate_out[0] -pin mem_wb_register immediate_in[0]
load net ex_mem_immediate[10] -attr @rip immediate_out[10] -pin ex_mem_register immediate_out[10] -pin mem_wb_register immediate_in[10]
load net ex_mem_immediate[11] -attr @rip immediate_out[11] -pin ex_mem_register immediate_out[11] -pin mem_wb_register immediate_in[11]
load net ex_mem_immediate[12] -attr @rip immediate_out[12] -pin ex_mem_register immediate_out[12] -pin mem_wb_register immediate_in[12]
load net ex_mem_immediate[13] -attr @rip immediate_out[13] -pin ex_mem_register immediate_out[13] -pin mem_wb_register immediate_in[13]
load net ex_mem_immediate[14] -attr @rip immediate_out[14] -pin ex_mem_register immediate_out[14] -pin mem_wb_register immediate_in[14]
load net ex_mem_immediate[15] -attr @rip immediate_out[15] -pin ex_mem_register immediate_out[15] -pin mem_wb_register immediate_in[15]
load net ex_mem_immediate[16] -attr @rip immediate_out[16] -pin ex_mem_register immediate_out[16] -pin mem_wb_register immediate_in[16]
load net ex_mem_immediate[17] -attr @rip immediate_out[17] -pin ex_mem_register immediate_out[17] -pin mem_wb_register immediate_in[17]
load net ex_mem_immediate[18] -attr @rip immediate_out[18] -pin ex_mem_register immediate_out[18] -pin mem_wb_register immediate_in[18]
load net ex_mem_immediate[19] -attr @rip immediate_out[19] -pin ex_mem_register immediate_out[19] -pin mem_wb_register immediate_in[19]
load net ex_mem_immediate[1] -attr @rip immediate_out[1] -pin ex_mem_register immediate_out[1] -pin mem_wb_register immediate_in[1]
load net ex_mem_immediate[20] -attr @rip immediate_out[20] -pin ex_mem_register immediate_out[20] -pin mem_wb_register immediate_in[20]
load net ex_mem_immediate[21] -attr @rip immediate_out[21] -pin ex_mem_register immediate_out[21] -pin mem_wb_register immediate_in[21]
load net ex_mem_immediate[22] -attr @rip immediate_out[22] -pin ex_mem_register immediate_out[22] -pin mem_wb_register immediate_in[22]
load net ex_mem_immediate[23] -attr @rip immediate_out[23] -pin ex_mem_register immediate_out[23] -pin mem_wb_register immediate_in[23]
load net ex_mem_immediate[24] -attr @rip immediate_out[24] -pin ex_mem_register immediate_out[24] -pin mem_wb_register immediate_in[24]
load net ex_mem_immediate[25] -attr @rip immediate_out[25] -pin ex_mem_register immediate_out[25] -pin mem_wb_register immediate_in[25]
load net ex_mem_immediate[26] -attr @rip immediate_out[26] -pin ex_mem_register immediate_out[26] -pin mem_wb_register immediate_in[26]
load net ex_mem_immediate[27] -attr @rip immediate_out[27] -pin ex_mem_register immediate_out[27] -pin mem_wb_register immediate_in[27]
load net ex_mem_immediate[28] -attr @rip immediate_out[28] -pin ex_mem_register immediate_out[28] -pin mem_wb_register immediate_in[28]
load net ex_mem_immediate[29] -attr @rip immediate_out[29] -pin ex_mem_register immediate_out[29] -pin mem_wb_register immediate_in[29]
load net ex_mem_immediate[2] -attr @rip immediate_out[2] -pin ex_mem_register immediate_out[2] -pin mem_wb_register immediate_in[2]
load net ex_mem_immediate[30] -attr @rip immediate_out[30] -pin ex_mem_register immediate_out[30] -pin mem_wb_register immediate_in[30]
load net ex_mem_immediate[31] -attr @rip immediate_out[31] -pin ex_mem_register immediate_out[31] -pin mem_wb_register immediate_in[31]
load net ex_mem_immediate[3] -attr @rip immediate_out[3] -pin ex_mem_register immediate_out[3] -pin mem_wb_register immediate_in[3]
load net ex_mem_immediate[4] -attr @rip immediate_out[4] -pin ex_mem_register immediate_out[4] -pin mem_wb_register immediate_in[4]
load net ex_mem_immediate[5] -attr @rip immediate_out[5] -pin ex_mem_register immediate_out[5] -pin mem_wb_register immediate_in[5]
load net ex_mem_immediate[6] -attr @rip immediate_out[6] -pin ex_mem_register immediate_out[6] -pin mem_wb_register immediate_in[6]
load net ex_mem_immediate[7] -attr @rip immediate_out[7] -pin ex_mem_register immediate_out[7] -pin mem_wb_register immediate_in[7]
load net ex_mem_immediate[8] -attr @rip immediate_out[8] -pin ex_mem_register immediate_out[8] -pin mem_wb_register immediate_in[8]
load net ex_mem_immediate[9] -attr @rip immediate_out[9] -pin ex_mem_register immediate_out[9] -pin mem_wb_register immediate_in[9]
load net ex_mem_jump -pin ex_mem_register jump_out -pin mem_wb_register jump_in
netloc ex_mem_jump 1 15 2 NJ 450 7620
load net ex_mem_mem_read -pin dmem read_enable -pin ex_mem_register mem_read_out
netloc ex_mem_mem_read 1 15 1 7040 470n
load net ex_mem_mem_to_reg -pin ex_mem_register mem_to_reg_out -pin mem_wb_register mem_to_reg_in
netloc ex_mem_mem_to_reg 1 15 2 7060J 470 7580
load net ex_mem_mem_write -pin dmem write_enable -pin ex_mem_register mem_write_out
netloc ex_mem_mem_write 1 15 1 7120 510n
load net ex_mem_opcode[0] -attr @rip opcode_out[0] -pin ex_mem_register opcode_out[0] -pin mem_wb_register opcode_in[0]
load net ex_mem_opcode[1] -attr @rip opcode_out[1] -pin ex_mem_register opcode_out[1] -pin mem_wb_register opcode_in[1]
load net ex_mem_opcode[2] -attr @rip opcode_out[2] -pin ex_mem_register opcode_out[2] -pin mem_wb_register opcode_in[2]
load net ex_mem_opcode[3] -attr @rip opcode_out[3] -pin ex_mem_register opcode_out[3] -pin mem_wb_register opcode_in[3]
load net ex_mem_opcode[4] -attr @rip opcode_out[4] -pin ex_mem_register opcode_out[4] -pin mem_wb_register opcode_in[4]
load net ex_mem_opcode[5] -attr @rip opcode_out[5] -pin ex_mem_register opcode_out[5] -pin mem_wb_register opcode_in[5]
load net ex_mem_opcode[6] -attr @rip opcode_out[6] -pin ex_mem_register opcode_out[6] -pin mem_wb_register opcode_in[6]
load net ex_mem_pc[0] -attr @rip pc_out[0] -pin ex_mem_register pc_out[0] -pin mem_wb_register pc_in[0]
load net ex_mem_pc[10] -attr @rip pc_out[10] -pin ex_mem_register pc_out[10] -pin mem_wb_register pc_in[10]
load net ex_mem_pc[11] -attr @rip pc_out[11] -pin ex_mem_register pc_out[11] -pin mem_wb_register pc_in[11]
load net ex_mem_pc[12] -attr @rip pc_out[12] -pin ex_mem_register pc_out[12] -pin mem_wb_register pc_in[12]
load net ex_mem_pc[13] -attr @rip pc_out[13] -pin ex_mem_register pc_out[13] -pin mem_wb_register pc_in[13]
load net ex_mem_pc[14] -attr @rip pc_out[14] -pin ex_mem_register pc_out[14] -pin mem_wb_register pc_in[14]
load net ex_mem_pc[15] -attr @rip pc_out[15] -pin ex_mem_register pc_out[15] -pin mem_wb_register pc_in[15]
load net ex_mem_pc[16] -attr @rip pc_out[16] -pin ex_mem_register pc_out[16] -pin mem_wb_register pc_in[16]
load net ex_mem_pc[17] -attr @rip pc_out[17] -pin ex_mem_register pc_out[17] -pin mem_wb_register pc_in[17]
load net ex_mem_pc[18] -attr @rip pc_out[18] -pin ex_mem_register pc_out[18] -pin mem_wb_register pc_in[18]
load net ex_mem_pc[19] -attr @rip pc_out[19] -pin ex_mem_register pc_out[19] -pin mem_wb_register pc_in[19]
load net ex_mem_pc[1] -attr @rip pc_out[1] -pin ex_mem_register pc_out[1] -pin mem_wb_register pc_in[1]
load net ex_mem_pc[20] -attr @rip pc_out[20] -pin ex_mem_register pc_out[20] -pin mem_wb_register pc_in[20]
load net ex_mem_pc[21] -attr @rip pc_out[21] -pin ex_mem_register pc_out[21] -pin mem_wb_register pc_in[21]
load net ex_mem_pc[22] -attr @rip pc_out[22] -pin ex_mem_register pc_out[22] -pin mem_wb_register pc_in[22]
load net ex_mem_pc[23] -attr @rip pc_out[23] -pin ex_mem_register pc_out[23] -pin mem_wb_register pc_in[23]
load net ex_mem_pc[24] -attr @rip pc_out[24] -pin ex_mem_register pc_out[24] -pin mem_wb_register pc_in[24]
load net ex_mem_pc[25] -attr @rip pc_out[25] -pin ex_mem_register pc_out[25] -pin mem_wb_register pc_in[25]
load net ex_mem_pc[26] -attr @rip pc_out[26] -pin ex_mem_register pc_out[26] -pin mem_wb_register pc_in[26]
load net ex_mem_pc[27] -attr @rip pc_out[27] -pin ex_mem_register pc_out[27] -pin mem_wb_register pc_in[27]
load net ex_mem_pc[28] -attr @rip pc_out[28] -pin ex_mem_register pc_out[28] -pin mem_wb_register pc_in[28]
load net ex_mem_pc[29] -attr @rip pc_out[29] -pin ex_mem_register pc_out[29] -pin mem_wb_register pc_in[29]
load net ex_mem_pc[2] -attr @rip pc_out[2] -pin ex_mem_register pc_out[2] -pin mem_wb_register pc_in[2]
load net ex_mem_pc[30] -attr @rip pc_out[30] -pin ex_mem_register pc_out[30] -pin mem_wb_register pc_in[30]
load net ex_mem_pc[31] -attr @rip pc_out[31] -pin ex_mem_register pc_out[31] -pin mem_wb_register pc_in[31]
load net ex_mem_pc[3] -attr @rip pc_out[3] -pin ex_mem_register pc_out[3] -pin mem_wb_register pc_in[3]
load net ex_mem_pc[4] -attr @rip pc_out[4] -pin ex_mem_register pc_out[4] -pin mem_wb_register pc_in[4]
load net ex_mem_pc[5] -attr @rip pc_out[5] -pin ex_mem_register pc_out[5] -pin mem_wb_register pc_in[5]
load net ex_mem_pc[6] -attr @rip pc_out[6] -pin ex_mem_register pc_out[6] -pin mem_wb_register pc_in[6]
load net ex_mem_pc[7] -attr @rip pc_out[7] -pin ex_mem_register pc_out[7] -pin mem_wb_register pc_in[7]
load net ex_mem_pc[8] -attr @rip pc_out[8] -pin ex_mem_register pc_out[8] -pin mem_wb_register pc_in[8]
load net ex_mem_pc[9] -attr @rip pc_out[9] -pin ex_mem_register pc_out[9] -pin mem_wb_register pc_in[9]
load net ex_mem_rd_addr[0] -attr @rip rd_addr_out[0] -pin ex_mem_register rd_addr_out[0] -pin forwarding_unit mem_rd_address[0] -pin mem_wb_register rd_addr_in[0]
load net ex_mem_rd_addr[1] -attr @rip rd_addr_out[1] -pin ex_mem_register rd_addr_out[1] -pin forwarding_unit mem_rd_address[1] -pin mem_wb_register rd_addr_in[1]
load net ex_mem_rd_addr[2] -attr @rip rd_addr_out[2] -pin ex_mem_register rd_addr_out[2] -pin forwarding_unit mem_rd_address[2] -pin mem_wb_register rd_addr_in[2]
load net ex_mem_rd_addr[3] -attr @rip rd_addr_out[3] -pin ex_mem_register rd_addr_out[3] -pin forwarding_unit mem_rd_address[3] -pin mem_wb_register rd_addr_in[3]
load net ex_mem_rd_addr[4] -attr @rip rd_addr_out[4] -pin ex_mem_register rd_addr_out[4] -pin forwarding_unit mem_rd_address[4] -pin mem_wb_register rd_addr_in[4]
load net ex_mem_reg_write -pin ex_mem_register reg_write_out -pin forwarding_unit mem_reg_write -pin mem_wb_register reg_write_in
netloc ex_mem_reg_write 1 1 16 370 790 NJ 790 1190J 770 NJ 770 NJ 770 NJ 770 NJ 770 NJ 770 NJ 770 4010J 790 NJ 790 NJ 790 NJ 790 NJ 790 7160 830 NJ
load net ex_mem_rs2_data[0] -attr @rip rs2_data_out[0] -pin dmem write_data[0] -pin ex_mem_register rs2_data_out[0]
load net ex_mem_rs2_data[10] -attr @rip rs2_data_out[10] -pin dmem write_data[10] -pin ex_mem_register rs2_data_out[10]
load net ex_mem_rs2_data[11] -attr @rip rs2_data_out[11] -pin dmem write_data[11] -pin ex_mem_register rs2_data_out[11]
load net ex_mem_rs2_data[12] -attr @rip rs2_data_out[12] -pin dmem write_data[12] -pin ex_mem_register rs2_data_out[12]
load net ex_mem_rs2_data[13] -attr @rip rs2_data_out[13] -pin dmem write_data[13] -pin ex_mem_register rs2_data_out[13]
load net ex_mem_rs2_data[14] -attr @rip rs2_data_out[14] -pin dmem write_data[14] -pin ex_mem_register rs2_data_out[14]
load net ex_mem_rs2_data[15] -attr @rip rs2_data_out[15] -pin dmem write_data[15] -pin ex_mem_register rs2_data_out[15]
load net ex_mem_rs2_data[16] -attr @rip rs2_data_out[16] -pin dmem write_data[16] -pin ex_mem_register rs2_data_out[16]
load net ex_mem_rs2_data[17] -attr @rip rs2_data_out[17] -pin dmem write_data[17] -pin ex_mem_register rs2_data_out[17]
load net ex_mem_rs2_data[18] -attr @rip rs2_data_out[18] -pin dmem write_data[18] -pin ex_mem_register rs2_data_out[18]
load net ex_mem_rs2_data[19] -attr @rip rs2_data_out[19] -pin dmem write_data[19] -pin ex_mem_register rs2_data_out[19]
load net ex_mem_rs2_data[1] -attr @rip rs2_data_out[1] -pin dmem write_data[1] -pin ex_mem_register rs2_data_out[1]
load net ex_mem_rs2_data[20] -attr @rip rs2_data_out[20] -pin dmem write_data[20] -pin ex_mem_register rs2_data_out[20]
load net ex_mem_rs2_data[21] -attr @rip rs2_data_out[21] -pin dmem write_data[21] -pin ex_mem_register rs2_data_out[21]
load net ex_mem_rs2_data[22] -attr @rip rs2_data_out[22] -pin dmem write_data[22] -pin ex_mem_register rs2_data_out[22]
load net ex_mem_rs2_data[23] -attr @rip rs2_data_out[23] -pin dmem write_data[23] -pin ex_mem_register rs2_data_out[23]
load net ex_mem_rs2_data[24] -attr @rip rs2_data_out[24] -pin dmem write_data[24] -pin ex_mem_register rs2_data_out[24]
load net ex_mem_rs2_data[25] -attr @rip rs2_data_out[25] -pin dmem write_data[25] -pin ex_mem_register rs2_data_out[25]
load net ex_mem_rs2_data[26] -attr @rip rs2_data_out[26] -pin dmem write_data[26] -pin ex_mem_register rs2_data_out[26]
load net ex_mem_rs2_data[27] -attr @rip rs2_data_out[27] -pin dmem write_data[27] -pin ex_mem_register rs2_data_out[27]
load net ex_mem_rs2_data[28] -attr @rip rs2_data_out[28] -pin dmem write_data[28] -pin ex_mem_register rs2_data_out[28]
load net ex_mem_rs2_data[29] -attr @rip rs2_data_out[29] -pin dmem write_data[29] -pin ex_mem_register rs2_data_out[29]
load net ex_mem_rs2_data[2] -attr @rip rs2_data_out[2] -pin dmem write_data[2] -pin ex_mem_register rs2_data_out[2]
load net ex_mem_rs2_data[30] -attr @rip rs2_data_out[30] -pin dmem write_data[30] -pin ex_mem_register rs2_data_out[30]
load net ex_mem_rs2_data[31] -attr @rip rs2_data_out[31] -pin dmem write_data[31] -pin ex_mem_register rs2_data_out[31]
load net ex_mem_rs2_data[3] -attr @rip rs2_data_out[3] -pin dmem write_data[3] -pin ex_mem_register rs2_data_out[3]
load net ex_mem_rs2_data[4] -attr @rip rs2_data_out[4] -pin dmem write_data[4] -pin ex_mem_register rs2_data_out[4]
load net ex_mem_rs2_data[5] -attr @rip rs2_data_out[5] -pin dmem write_data[5] -pin ex_mem_register rs2_data_out[5]
load net ex_mem_rs2_data[6] -attr @rip rs2_data_out[6] -pin dmem write_data[6] -pin ex_mem_register rs2_data_out[6]
load net ex_mem_rs2_data[7] -attr @rip rs2_data_out[7] -pin dmem write_data[7] -pin ex_mem_register rs2_data_out[7]
load net ex_mem_rs2_data[8] -attr @rip rs2_data_out[8] -pin dmem write_data[8] -pin ex_mem_register rs2_data_out[8]
load net ex_mem_rs2_data[9] -attr @rip rs2_data_out[9] -pin dmem write_data[9] -pin ex_mem_register rs2_data_out[9]
load net flush_branch -pin RTL_OR I1 -pin flush_branch_i O -pin if_id_register flush
netloc flush_branch 1 10 3 4070 1130 NJ 1130 5000
load net flush_id_ex -pin RTL_OR I0 -pin hazard_detection_unit flush_id_ex
netloc flush_id_ex 1 8 5 N 890 NJ 890 NJ 890 NJ 890 NJ
load net forward_rs1[0] -attr @rip forward1[0] -pin forwarded_rs1_data_i S[0] -pin forwarding_unit forward1[0]
load net forward_rs1[1] -attr @rip forward1[1] -pin forwarded_rs1_data_i S[1] -pin forwarding_unit forward1[1]
load net forward_rs2[0] -attr @rip forward2[0] -pin forwarded_rs2_data_i S[0] -pin forwarding_unit forward2[0]
load net forward_rs2[1] -attr @rip forward2[1] -pin forwarded_rs2_data_i S[1] -pin forwarding_unit forward2[1]
load net forwarded_rs1_data[0] -attr @rip O[0] -pin alu_src1_mux_inst rs1_data[0] -pin forwarded_rs1_data_i O[0] -pin target_addr_mux rs1_data[0]
load net forwarded_rs1_data[10] -attr @rip O[10] -pin alu_src1_mux_inst rs1_data[10] -pin forwarded_rs1_data_i O[10] -pin target_addr_mux rs1_data[10]
load net forwarded_rs1_data[11] -attr @rip O[11] -pin alu_src1_mux_inst rs1_data[11] -pin forwarded_rs1_data_i O[11] -pin target_addr_mux rs1_data[11]
load net forwarded_rs1_data[12] -attr @rip O[12] -pin alu_src1_mux_inst rs1_data[12] -pin forwarded_rs1_data_i O[12] -pin target_addr_mux rs1_data[12]
load net forwarded_rs1_data[13] -attr @rip O[13] -pin alu_src1_mux_inst rs1_data[13] -pin forwarded_rs1_data_i O[13] -pin target_addr_mux rs1_data[13]
load net forwarded_rs1_data[14] -attr @rip O[14] -pin alu_src1_mux_inst rs1_data[14] -pin forwarded_rs1_data_i O[14] -pin target_addr_mux rs1_data[14]
load net forwarded_rs1_data[15] -attr @rip O[15] -pin alu_src1_mux_inst rs1_data[15] -pin forwarded_rs1_data_i O[15] -pin target_addr_mux rs1_data[15]
load net forwarded_rs1_data[16] -attr @rip O[16] -pin alu_src1_mux_inst rs1_data[16] -pin forwarded_rs1_data_i O[16] -pin target_addr_mux rs1_data[16]
load net forwarded_rs1_data[17] -attr @rip O[17] -pin alu_src1_mux_inst rs1_data[17] -pin forwarded_rs1_data_i O[17] -pin target_addr_mux rs1_data[17]
load net forwarded_rs1_data[18] -attr @rip O[18] -pin alu_src1_mux_inst rs1_data[18] -pin forwarded_rs1_data_i O[18] -pin target_addr_mux rs1_data[18]
load net forwarded_rs1_data[19] -attr @rip O[19] -pin alu_src1_mux_inst rs1_data[19] -pin forwarded_rs1_data_i O[19] -pin target_addr_mux rs1_data[19]
load net forwarded_rs1_data[1] -attr @rip O[1] -pin alu_src1_mux_inst rs1_data[1] -pin forwarded_rs1_data_i O[1] -pin target_addr_mux rs1_data[1]
load net forwarded_rs1_data[20] -attr @rip O[20] -pin alu_src1_mux_inst rs1_data[20] -pin forwarded_rs1_data_i O[20] -pin target_addr_mux rs1_data[20]
load net forwarded_rs1_data[21] -attr @rip O[21] -pin alu_src1_mux_inst rs1_data[21] -pin forwarded_rs1_data_i O[21] -pin target_addr_mux rs1_data[21]
load net forwarded_rs1_data[22] -attr @rip O[22] -pin alu_src1_mux_inst rs1_data[22] -pin forwarded_rs1_data_i O[22] -pin target_addr_mux rs1_data[22]
load net forwarded_rs1_data[23] -attr @rip O[23] -pin alu_src1_mux_inst rs1_data[23] -pin forwarded_rs1_data_i O[23] -pin target_addr_mux rs1_data[23]
load net forwarded_rs1_data[24] -attr @rip O[24] -pin alu_src1_mux_inst rs1_data[24] -pin forwarded_rs1_data_i O[24] -pin target_addr_mux rs1_data[24]
load net forwarded_rs1_data[25] -attr @rip O[25] -pin alu_src1_mux_inst rs1_data[25] -pin forwarded_rs1_data_i O[25] -pin target_addr_mux rs1_data[25]
load net forwarded_rs1_data[26] -attr @rip O[26] -pin alu_src1_mux_inst rs1_data[26] -pin forwarded_rs1_data_i O[26] -pin target_addr_mux rs1_data[26]
load net forwarded_rs1_data[27] -attr @rip O[27] -pin alu_src1_mux_inst rs1_data[27] -pin forwarded_rs1_data_i O[27] -pin target_addr_mux rs1_data[27]
load net forwarded_rs1_data[28] -attr @rip O[28] -pin alu_src1_mux_inst rs1_data[28] -pin forwarded_rs1_data_i O[28] -pin target_addr_mux rs1_data[28]
load net forwarded_rs1_data[29] -attr @rip O[29] -pin alu_src1_mux_inst rs1_data[29] -pin forwarded_rs1_data_i O[29] -pin target_addr_mux rs1_data[29]
load net forwarded_rs1_data[2] -attr @rip O[2] -pin alu_src1_mux_inst rs1_data[2] -pin forwarded_rs1_data_i O[2] -pin target_addr_mux rs1_data[2]
load net forwarded_rs1_data[30] -attr @rip O[30] -pin alu_src1_mux_inst rs1_data[30] -pin forwarded_rs1_data_i O[30] -pin target_addr_mux rs1_data[30]
load net forwarded_rs1_data[31] -attr @rip O[31] -pin alu_src1_mux_inst rs1_data[31] -pin forwarded_rs1_data_i O[31] -pin target_addr_mux rs1_data[31]
load net forwarded_rs1_data[3] -attr @rip O[3] -pin alu_src1_mux_inst rs1_data[3] -pin forwarded_rs1_data_i O[3] -pin target_addr_mux rs1_data[3]
load net forwarded_rs1_data[4] -attr @rip O[4] -pin alu_src1_mux_inst rs1_data[4] -pin forwarded_rs1_data_i O[4] -pin target_addr_mux rs1_data[4]
load net forwarded_rs1_data[5] -attr @rip O[5] -pin alu_src1_mux_inst rs1_data[5] -pin forwarded_rs1_data_i O[5] -pin target_addr_mux rs1_data[5]
load net forwarded_rs1_data[6] -attr @rip O[6] -pin alu_src1_mux_inst rs1_data[6] -pin forwarded_rs1_data_i O[6] -pin target_addr_mux rs1_data[6]
load net forwarded_rs1_data[7] -attr @rip O[7] -pin alu_src1_mux_inst rs1_data[7] -pin forwarded_rs1_data_i O[7] -pin target_addr_mux rs1_data[7]
load net forwarded_rs1_data[8] -attr @rip O[8] -pin alu_src1_mux_inst rs1_data[8] -pin forwarded_rs1_data_i O[8] -pin target_addr_mux rs1_data[8]
load net forwarded_rs1_data[9] -attr @rip O[9] -pin alu_src1_mux_inst rs1_data[9] -pin forwarded_rs1_data_i O[9] -pin target_addr_mux rs1_data[9]
load net forwarded_rs2_data[0] -attr @rip O[0] -pin alu_src2_mux_inst rs2_data[0] -pin ex_mem_register rs2_data_in[0] -pin forwarded_rs2_data_i O[0]
load net forwarded_rs2_data[10] -attr @rip O[10] -pin alu_src2_mux_inst rs2_data[10] -pin ex_mem_register rs2_data_in[10] -pin forwarded_rs2_data_i O[10]
load net forwarded_rs2_data[11] -attr @rip O[11] -pin alu_src2_mux_inst rs2_data[11] -pin ex_mem_register rs2_data_in[11] -pin forwarded_rs2_data_i O[11]
load net forwarded_rs2_data[12] -attr @rip O[12] -pin alu_src2_mux_inst rs2_data[12] -pin ex_mem_register rs2_data_in[12] -pin forwarded_rs2_data_i O[12]
load net forwarded_rs2_data[13] -attr @rip O[13] -pin alu_src2_mux_inst rs2_data[13] -pin ex_mem_register rs2_data_in[13] -pin forwarded_rs2_data_i O[13]
load net forwarded_rs2_data[14] -attr @rip O[14] -pin alu_src2_mux_inst rs2_data[14] -pin ex_mem_register rs2_data_in[14] -pin forwarded_rs2_data_i O[14]
load net forwarded_rs2_data[15] -attr @rip O[15] -pin alu_src2_mux_inst rs2_data[15] -pin ex_mem_register rs2_data_in[15] -pin forwarded_rs2_data_i O[15]
load net forwarded_rs2_data[16] -attr @rip O[16] -pin alu_src2_mux_inst rs2_data[16] -pin ex_mem_register rs2_data_in[16] -pin forwarded_rs2_data_i O[16]
load net forwarded_rs2_data[17] -attr @rip O[17] -pin alu_src2_mux_inst rs2_data[17] -pin ex_mem_register rs2_data_in[17] -pin forwarded_rs2_data_i O[17]
load net forwarded_rs2_data[18] -attr @rip O[18] -pin alu_src2_mux_inst rs2_data[18] -pin ex_mem_register rs2_data_in[18] -pin forwarded_rs2_data_i O[18]
load net forwarded_rs2_data[19] -attr @rip O[19] -pin alu_src2_mux_inst rs2_data[19] -pin ex_mem_register rs2_data_in[19] -pin forwarded_rs2_data_i O[19]
load net forwarded_rs2_data[1] -attr @rip O[1] -pin alu_src2_mux_inst rs2_data[1] -pin ex_mem_register rs2_data_in[1] -pin forwarded_rs2_data_i O[1]
load net forwarded_rs2_data[20] -attr @rip O[20] -pin alu_src2_mux_inst rs2_data[20] -pin ex_mem_register rs2_data_in[20] -pin forwarded_rs2_data_i O[20]
load net forwarded_rs2_data[21] -attr @rip O[21] -pin alu_src2_mux_inst rs2_data[21] -pin ex_mem_register rs2_data_in[21] -pin forwarded_rs2_data_i O[21]
load net forwarded_rs2_data[22] -attr @rip O[22] -pin alu_src2_mux_inst rs2_data[22] -pin ex_mem_register rs2_data_in[22] -pin forwarded_rs2_data_i O[22]
load net forwarded_rs2_data[23] -attr @rip O[23] -pin alu_src2_mux_inst rs2_data[23] -pin ex_mem_register rs2_data_in[23] -pin forwarded_rs2_data_i O[23]
load net forwarded_rs2_data[24] -attr @rip O[24] -pin alu_src2_mux_inst rs2_data[24] -pin ex_mem_register rs2_data_in[24] -pin forwarded_rs2_data_i O[24]
load net forwarded_rs2_data[25] -attr @rip O[25] -pin alu_src2_mux_inst rs2_data[25] -pin ex_mem_register rs2_data_in[25] -pin forwarded_rs2_data_i O[25]
load net forwarded_rs2_data[26] -attr @rip O[26] -pin alu_src2_mux_inst rs2_data[26] -pin ex_mem_register rs2_data_in[26] -pin forwarded_rs2_data_i O[26]
load net forwarded_rs2_data[27] -attr @rip O[27] -pin alu_src2_mux_inst rs2_data[27] -pin ex_mem_register rs2_data_in[27] -pin forwarded_rs2_data_i O[27]
load net forwarded_rs2_data[28] -attr @rip O[28] -pin alu_src2_mux_inst rs2_data[28] -pin ex_mem_register rs2_data_in[28] -pin forwarded_rs2_data_i O[28]
load net forwarded_rs2_data[29] -attr @rip O[29] -pin alu_src2_mux_inst rs2_data[29] -pin ex_mem_register rs2_data_in[29] -pin forwarded_rs2_data_i O[29]
load net forwarded_rs2_data[2] -attr @rip O[2] -pin alu_src2_mux_inst rs2_data[2] -pin ex_mem_register rs2_data_in[2] -pin forwarded_rs2_data_i O[2]
load net forwarded_rs2_data[30] -attr @rip O[30] -pin alu_src2_mux_inst rs2_data[30] -pin ex_mem_register rs2_data_in[30] -pin forwarded_rs2_data_i O[30]
load net forwarded_rs2_data[31] -attr @rip O[31] -pin alu_src2_mux_inst rs2_data[31] -pin ex_mem_register rs2_data_in[31] -pin forwarded_rs2_data_i O[31]
load net forwarded_rs2_data[3] -attr @rip O[3] -pin alu_src2_mux_inst rs2_data[3] -pin ex_mem_register rs2_data_in[3] -pin forwarded_rs2_data_i O[3]
load net forwarded_rs2_data[4] -attr @rip O[4] -pin alu_src2_mux_inst rs2_data[4] -pin ex_mem_register rs2_data_in[4] -pin forwarded_rs2_data_i O[4]
load net forwarded_rs2_data[5] -attr @rip O[5] -pin alu_src2_mux_inst rs2_data[5] -pin ex_mem_register rs2_data_in[5] -pin forwarded_rs2_data_i O[5]
load net forwarded_rs2_data[6] -attr @rip O[6] -pin alu_src2_mux_inst rs2_data[6] -pin ex_mem_register rs2_data_in[6] -pin forwarded_rs2_data_i O[6]
load net forwarded_rs2_data[7] -attr @rip O[7] -pin alu_src2_mux_inst rs2_data[7] -pin ex_mem_register rs2_data_in[7] -pin forwarded_rs2_data_i O[7]
load net forwarded_rs2_data[8] -attr @rip O[8] -pin alu_src2_mux_inst rs2_data[8] -pin ex_mem_register rs2_data_in[8] -pin forwarded_rs2_data_i O[8]
load net forwarded_rs2_data[9] -attr @rip O[9] -pin alu_src2_mux_inst rs2_data[9] -pin ex_mem_register rs2_data_in[9] -pin forwarded_rs2_data_i O[9]
load net id_ex_alu_operation[0] -attr @rip alu_operation_out[0] -pin alu_ctrl alu_operation[0] -pin id_ex_register alu_operation_out[0]
load net id_ex_alu_operation[1] -attr @rip alu_operation_out[1] -pin alu_ctrl alu_operation[1] -pin id_ex_register alu_operation_out[1]
load net id_ex_alu_src1 -pin alu_src1_mux_inst alu_src1 -pin id_ex_register alu_src1_out
netloc id_ex_alu_src1 1 3 12 1290 1310 NJ 1310 NJ 1310 2290J 1330 NJ 1330 NJ 1330 NJ 1330 4030J 1350 NJ 1350 NJ 1350 NJ 1350 6350
load net id_ex_alu_src2 -pin alu_src2_mux_inst alu_src2 -pin id_ex_register alu_src2_out
netloc id_ex_alu_src2 1 3 12 1270 1750 NJ 1750 NJ 1750 2290J 1790 NJ 1790 NJ 1790 NJ 1790 NJ 1790 NJ 1790 NJ 1790 NJ 1790 6270
load net id_ex_funct3[0] -attr @rip funct3_out[0] -pin alu_ctrl funct3[0] -pin branch_unit_inst funct3[0] -pin ex_mem_register funct3_in[0] -pin id_ex_register funct3_out[0]
load net id_ex_funct3[1] -attr @rip funct3_out[1] -pin alu_ctrl funct3[1] -pin branch_unit_inst funct3[1] -pin ex_mem_register funct3_in[1] -pin id_ex_register funct3_out[1]
load net id_ex_funct3[2] -attr @rip funct3_out[2] -pin alu_ctrl funct3[2] -pin branch_unit_inst funct3[2] -pin ex_mem_register funct3_in[2] -pin id_ex_register funct3_out[2]
load net id_ex_funct7[0] -attr @rip funct7_out[0] -pin alu_ctrl funct7[0] -pin id_ex_register funct7_out[0]
load net id_ex_funct7[1] -attr @rip funct7_out[1] -pin alu_ctrl funct7[1] -pin id_ex_register funct7_out[1]
load net id_ex_funct7[2] -attr @rip funct7_out[2] -pin alu_ctrl funct7[2] -pin id_ex_register funct7_out[2]
load net id_ex_funct7[3] -attr @rip funct7_out[3] -pin alu_ctrl funct7[3] -pin id_ex_register funct7_out[3]
load net id_ex_funct7[4] -attr @rip funct7_out[4] -pin alu_ctrl funct7[4] -pin id_ex_register funct7_out[4]
load net id_ex_funct7[5] -attr @rip funct7_out[5] -pin alu_ctrl funct7[5] -pin id_ex_register funct7_out[5]
load net id_ex_funct7[6] -attr @rip funct7_out[6] -pin alu_ctrl funct7[6] -pin id_ex_register funct7_out[6]
load net id_ex_immediate[0] -attr @rip immediate_out[0] -pin alu_src2_mux_inst offset[0] -pin ex_mem_register immediate_in[0] -pin id_ex_register immediate_out[0] -pin target_addr_mux immediate_value[0]
load net id_ex_immediate[10] -attr @rip immediate_out[10] -pin alu_src2_mux_inst offset[10] -pin ex_mem_register immediate_in[10] -pin id_ex_register immediate_out[10] -pin target_addr_mux immediate_value[10]
load net id_ex_immediate[11] -attr @rip immediate_out[11] -pin alu_src2_mux_inst offset[11] -pin ex_mem_register immediate_in[11] -pin id_ex_register immediate_out[11] -pin target_addr_mux immediate_value[11]
load net id_ex_immediate[12] -attr @rip immediate_out[12] -pin alu_src2_mux_inst offset[12] -pin ex_mem_register immediate_in[12] -pin id_ex_register immediate_out[12] -pin target_addr_mux immediate_value[12]
load net id_ex_immediate[13] -attr @rip immediate_out[13] -pin alu_src2_mux_inst offset[13] -pin ex_mem_register immediate_in[13] -pin id_ex_register immediate_out[13] -pin target_addr_mux immediate_value[13]
load net id_ex_immediate[14] -attr @rip immediate_out[14] -pin alu_src2_mux_inst offset[14] -pin ex_mem_register immediate_in[14] -pin id_ex_register immediate_out[14] -pin target_addr_mux immediate_value[14]
load net id_ex_immediate[15] -attr @rip immediate_out[15] -pin alu_src2_mux_inst offset[15] -pin ex_mem_register immediate_in[15] -pin id_ex_register immediate_out[15] -pin target_addr_mux immediate_value[15]
load net id_ex_immediate[16] -attr @rip immediate_out[16] -pin alu_src2_mux_inst offset[16] -pin ex_mem_register immediate_in[16] -pin id_ex_register immediate_out[16] -pin target_addr_mux immediate_value[16]
load net id_ex_immediate[17] -attr @rip immediate_out[17] -pin alu_src2_mux_inst offset[17] -pin ex_mem_register immediate_in[17] -pin id_ex_register immediate_out[17] -pin target_addr_mux immediate_value[17]
load net id_ex_immediate[18] -attr @rip immediate_out[18] -pin alu_src2_mux_inst offset[18] -pin ex_mem_register immediate_in[18] -pin id_ex_register immediate_out[18] -pin target_addr_mux immediate_value[18]
load net id_ex_immediate[19] -attr @rip immediate_out[19] -pin alu_src2_mux_inst offset[19] -pin ex_mem_register immediate_in[19] -pin id_ex_register immediate_out[19] -pin target_addr_mux immediate_value[19]
load net id_ex_immediate[1] -attr @rip immediate_out[1] -pin alu_src2_mux_inst offset[1] -pin ex_mem_register immediate_in[1] -pin id_ex_register immediate_out[1] -pin target_addr_mux immediate_value[1]
load net id_ex_immediate[20] -attr @rip immediate_out[20] -pin alu_src2_mux_inst offset[20] -pin ex_mem_register immediate_in[20] -pin id_ex_register immediate_out[20] -pin target_addr_mux immediate_value[20]
load net id_ex_immediate[21] -attr @rip immediate_out[21] -pin alu_src2_mux_inst offset[21] -pin ex_mem_register immediate_in[21] -pin id_ex_register immediate_out[21] -pin target_addr_mux immediate_value[21]
load net id_ex_immediate[22] -attr @rip immediate_out[22] -pin alu_src2_mux_inst offset[22] -pin ex_mem_register immediate_in[22] -pin id_ex_register immediate_out[22] -pin target_addr_mux immediate_value[22]
load net id_ex_immediate[23] -attr @rip immediate_out[23] -pin alu_src2_mux_inst offset[23] -pin ex_mem_register immediate_in[23] -pin id_ex_register immediate_out[23] -pin target_addr_mux immediate_value[23]
load net id_ex_immediate[24] -attr @rip immediate_out[24] -pin alu_src2_mux_inst offset[24] -pin ex_mem_register immediate_in[24] -pin id_ex_register immediate_out[24] -pin target_addr_mux immediate_value[24]
load net id_ex_immediate[25] -attr @rip immediate_out[25] -pin alu_src2_mux_inst offset[25] -pin ex_mem_register immediate_in[25] -pin id_ex_register immediate_out[25] -pin target_addr_mux immediate_value[25]
load net id_ex_immediate[26] -attr @rip immediate_out[26] -pin alu_src2_mux_inst offset[26] -pin ex_mem_register immediate_in[26] -pin id_ex_register immediate_out[26] -pin target_addr_mux immediate_value[26]
load net id_ex_immediate[27] -attr @rip immediate_out[27] -pin alu_src2_mux_inst offset[27] -pin ex_mem_register immediate_in[27] -pin id_ex_register immediate_out[27] -pin target_addr_mux immediate_value[27]
load net id_ex_immediate[28] -attr @rip immediate_out[28] -pin alu_src2_mux_inst offset[28] -pin ex_mem_register immediate_in[28] -pin id_ex_register immediate_out[28] -pin target_addr_mux immediate_value[28]
load net id_ex_immediate[29] -attr @rip immediate_out[29] -pin alu_src2_mux_inst offset[29] -pin ex_mem_register immediate_in[29] -pin id_ex_register immediate_out[29] -pin target_addr_mux immediate_value[29]
load net id_ex_immediate[2] -attr @rip immediate_out[2] -pin alu_src2_mux_inst offset[2] -pin ex_mem_register immediate_in[2] -pin id_ex_register immediate_out[2] -pin target_addr_mux immediate_value[2]
load net id_ex_immediate[30] -attr @rip immediate_out[30] -pin alu_src2_mux_inst offset[30] -pin ex_mem_register immediate_in[30] -pin id_ex_register immediate_out[30] -pin target_addr_mux immediate_value[30]
load net id_ex_immediate[31] -attr @rip immediate_out[31] -pin alu_src2_mux_inst offset[31] -pin ex_mem_register immediate_in[31] -pin id_ex_register immediate_out[31] -pin target_addr_mux immediate_value[31]
load net id_ex_immediate[3] -attr @rip immediate_out[3] -pin alu_src2_mux_inst offset[3] -pin ex_mem_register immediate_in[3] -pin id_ex_register immediate_out[3] -pin target_addr_mux immediate_value[3]
load net id_ex_immediate[4] -attr @rip immediate_out[4] -pin alu_src2_mux_inst offset[4] -pin ex_mem_register immediate_in[4] -pin id_ex_register immediate_out[4] -pin target_addr_mux immediate_value[4]
load net id_ex_immediate[5] -attr @rip immediate_out[5] -pin alu_src2_mux_inst offset[5] -pin ex_mem_register immediate_in[5] -pin id_ex_register immediate_out[5] -pin target_addr_mux immediate_value[5]
load net id_ex_immediate[6] -attr @rip immediate_out[6] -pin alu_src2_mux_inst offset[6] -pin ex_mem_register immediate_in[6] -pin id_ex_register immediate_out[6] -pin target_addr_mux immediate_value[6]
load net id_ex_immediate[7] -attr @rip immediate_out[7] -pin alu_src2_mux_inst offset[7] -pin ex_mem_register immediate_in[7] -pin id_ex_register immediate_out[7] -pin target_addr_mux immediate_value[7]
load net id_ex_immediate[8] -attr @rip immediate_out[8] -pin alu_src2_mux_inst offset[8] -pin ex_mem_register immediate_in[8] -pin id_ex_register immediate_out[8] -pin target_addr_mux immediate_value[8]
load net id_ex_immediate[9] -attr @rip immediate_out[9] -pin alu_src2_mux_inst offset[9] -pin ex_mem_register immediate_in[9] -pin id_ex_register immediate_out[9] -pin target_addr_mux immediate_value[9]
load net id_ex_is_jalr -pin id_ex_register is_jalr_out -pin target_addr_mux is_jalr
netloc id_ex_is_jalr 1 6 9 2350 1770 2830J 1730 NJ 1730 NJ 1730 NJ 1730 NJ 1730 NJ 1730 NJ 1730 6210
load net id_ex_is_rtype -pin alu_ctrl is_rtype -pin id_ex_register is_rtype_out
netloc id_ex_is_rtype 1 3 12 1250 810 NJ 810 NJ 810 NJ 810 NJ 810 3410J 950 NJ 950 NJ 950 NJ 950 NJ 950 NJ 950 6310
load net id_ex_jump -pin ex_mem_register jump_in -pin flush_branch_i I0 -pin id_ex_register jump_out -pin pc_control jump -pin target_addr_mux jump
netloc id_ex_jump 1 6 9 2370 1710 2770 1710 NJ 1710 3680 1490 NJ 1490 NJ 1490 NJ 1490 NJ 1490 6570
load net id_ex_mem_read -pin ex_mem_register mem_read_in -pin hazard_detection_unit ex_mem_read -pin id_ex_register mem_read_out
netloc id_ex_mem_read 1 7 8 2750 990 3170J 970 NJ 970 NJ 970 NJ 970 NJ 970 NJ 970 6390
load net id_ex_mem_to_reg -pin ex_mem_register mem_to_reg_in -pin id_ex_register mem_to_reg_out
netloc id_ex_mem_to_reg 1 14 1 6650 330n
load net id_ex_mem_write -pin ex_mem_register mem_write_in -pin id_ex_register mem_write_out
netloc id_ex_mem_write 1 14 1 6590 350n
load net id_ex_opcode[0] -attr @rip opcode_out[0] -pin branch_unit_inst opcode[0] -pin ex_mem_register opcode_in[0] -pin id_ex_register opcode_out[0] -pin pc_control opcode[0]
load net id_ex_opcode[1] -attr @rip opcode_out[1] -pin branch_unit_inst opcode[1] -pin ex_mem_register opcode_in[1] -pin id_ex_register opcode_out[1] -pin pc_control opcode[1]
load net id_ex_opcode[2] -attr @rip opcode_out[2] -pin branch_unit_inst opcode[2] -pin ex_mem_register opcode_in[2] -pin id_ex_register opcode_out[2] -pin pc_control opcode[2]
load net id_ex_opcode[3] -attr @rip opcode_out[3] -pin branch_unit_inst opcode[3] -pin ex_mem_register opcode_in[3] -pin id_ex_register opcode_out[3] -pin pc_control opcode[3]
load net id_ex_opcode[4] -attr @rip opcode_out[4] -pin branch_unit_inst opcode[4] -pin ex_mem_register opcode_in[4] -pin id_ex_register opcode_out[4] -pin pc_control opcode[4]
load net id_ex_opcode[5] -attr @rip opcode_out[5] -pin branch_unit_inst opcode[5] -pin ex_mem_register opcode_in[5] -pin id_ex_register opcode_out[5] -pin pc_control opcode[5]
load net id_ex_opcode[6] -attr @rip opcode_out[6] -pin branch_unit_inst opcode[6] -pin ex_mem_register opcode_in[6] -pin id_ex_register opcode_out[6] -pin pc_control opcode[6]
load net id_ex_pc[0] -attr @rip pc_out[0] -pin alu_src1_mux_inst pc[0] -pin ex_mem_register pc_in[0] -pin id_ex_register pc_out[0] -pin target_addr_mux pc[0]
load net id_ex_pc[10] -attr @rip pc_out[10] -pin alu_src1_mux_inst pc[10] -pin ex_mem_register pc_in[10] -pin id_ex_register pc_out[10] -pin target_addr_mux pc[10]
load net id_ex_pc[11] -attr @rip pc_out[11] -pin alu_src1_mux_inst pc[11] -pin ex_mem_register pc_in[11] -pin id_ex_register pc_out[11] -pin target_addr_mux pc[11]
load net id_ex_pc[12] -attr @rip pc_out[12] -pin alu_src1_mux_inst pc[12] -pin ex_mem_register pc_in[12] -pin id_ex_register pc_out[12] -pin target_addr_mux pc[12]
load net id_ex_pc[13] -attr @rip pc_out[13] -pin alu_src1_mux_inst pc[13] -pin ex_mem_register pc_in[13] -pin id_ex_register pc_out[13] -pin target_addr_mux pc[13]
load net id_ex_pc[14] -attr @rip pc_out[14] -pin alu_src1_mux_inst pc[14] -pin ex_mem_register pc_in[14] -pin id_ex_register pc_out[14] -pin target_addr_mux pc[14]
load net id_ex_pc[15] -attr @rip pc_out[15] -pin alu_src1_mux_inst pc[15] -pin ex_mem_register pc_in[15] -pin id_ex_register pc_out[15] -pin target_addr_mux pc[15]
load net id_ex_pc[16] -attr @rip pc_out[16] -pin alu_src1_mux_inst pc[16] -pin ex_mem_register pc_in[16] -pin id_ex_register pc_out[16] -pin target_addr_mux pc[16]
load net id_ex_pc[17] -attr @rip pc_out[17] -pin alu_src1_mux_inst pc[17] -pin ex_mem_register pc_in[17] -pin id_ex_register pc_out[17] -pin target_addr_mux pc[17]
load net id_ex_pc[18] -attr @rip pc_out[18] -pin alu_src1_mux_inst pc[18] -pin ex_mem_register pc_in[18] -pin id_ex_register pc_out[18] -pin target_addr_mux pc[18]
load net id_ex_pc[19] -attr @rip pc_out[19] -pin alu_src1_mux_inst pc[19] -pin ex_mem_register pc_in[19] -pin id_ex_register pc_out[19] -pin target_addr_mux pc[19]
load net id_ex_pc[1] -attr @rip pc_out[1] -pin alu_src1_mux_inst pc[1] -pin ex_mem_register pc_in[1] -pin id_ex_register pc_out[1] -pin target_addr_mux pc[1]
load net id_ex_pc[20] -attr @rip pc_out[20] -pin alu_src1_mux_inst pc[20] -pin ex_mem_register pc_in[20] -pin id_ex_register pc_out[20] -pin target_addr_mux pc[20]
load net id_ex_pc[21] -attr @rip pc_out[21] -pin alu_src1_mux_inst pc[21] -pin ex_mem_register pc_in[21] -pin id_ex_register pc_out[21] -pin target_addr_mux pc[21]
load net id_ex_pc[22] -attr @rip pc_out[22] -pin alu_src1_mux_inst pc[22] -pin ex_mem_register pc_in[22] -pin id_ex_register pc_out[22] -pin target_addr_mux pc[22]
load net id_ex_pc[23] -attr @rip pc_out[23] -pin alu_src1_mux_inst pc[23] -pin ex_mem_register pc_in[23] -pin id_ex_register pc_out[23] -pin target_addr_mux pc[23]
load net id_ex_pc[24] -attr @rip pc_out[24] -pin alu_src1_mux_inst pc[24] -pin ex_mem_register pc_in[24] -pin id_ex_register pc_out[24] -pin target_addr_mux pc[24]
load net id_ex_pc[25] -attr @rip pc_out[25] -pin alu_src1_mux_inst pc[25] -pin ex_mem_register pc_in[25] -pin id_ex_register pc_out[25] -pin target_addr_mux pc[25]
load net id_ex_pc[26] -attr @rip pc_out[26] -pin alu_src1_mux_inst pc[26] -pin ex_mem_register pc_in[26] -pin id_ex_register pc_out[26] -pin target_addr_mux pc[26]
load net id_ex_pc[27] -attr @rip pc_out[27] -pin alu_src1_mux_inst pc[27] -pin ex_mem_register pc_in[27] -pin id_ex_register pc_out[27] -pin target_addr_mux pc[27]
load net id_ex_pc[28] -attr @rip pc_out[28] -pin alu_src1_mux_inst pc[28] -pin ex_mem_register pc_in[28] -pin id_ex_register pc_out[28] -pin target_addr_mux pc[28]
load net id_ex_pc[29] -attr @rip pc_out[29] -pin alu_src1_mux_inst pc[29] -pin ex_mem_register pc_in[29] -pin id_ex_register pc_out[29] -pin target_addr_mux pc[29]
load net id_ex_pc[2] -attr @rip pc_out[2] -pin alu_src1_mux_inst pc[2] -pin ex_mem_register pc_in[2] -pin id_ex_register pc_out[2] -pin target_addr_mux pc[2]
load net id_ex_pc[30] -attr @rip pc_out[30] -pin alu_src1_mux_inst pc[30] -pin ex_mem_register pc_in[30] -pin id_ex_register pc_out[30] -pin target_addr_mux pc[30]
load net id_ex_pc[31] -attr @rip pc_out[31] -pin alu_src1_mux_inst pc[31] -pin ex_mem_register pc_in[31] -pin id_ex_register pc_out[31] -pin target_addr_mux pc[31]
load net id_ex_pc[3] -attr @rip pc_out[3] -pin alu_src1_mux_inst pc[3] -pin ex_mem_register pc_in[3] -pin id_ex_register pc_out[3] -pin target_addr_mux pc[3]
load net id_ex_pc[4] -attr @rip pc_out[4] -pin alu_src1_mux_inst pc[4] -pin ex_mem_register pc_in[4] -pin id_ex_register pc_out[4] -pin target_addr_mux pc[4]
load net id_ex_pc[5] -attr @rip pc_out[5] -pin alu_src1_mux_inst pc[5] -pin ex_mem_register pc_in[5] -pin id_ex_register pc_out[5] -pin target_addr_mux pc[5]
load net id_ex_pc[6] -attr @rip pc_out[6] -pin alu_src1_mux_inst pc[6] -pin ex_mem_register pc_in[6] -pin id_ex_register pc_out[6] -pin target_addr_mux pc[6]
load net id_ex_pc[7] -attr @rip pc_out[7] -pin alu_src1_mux_inst pc[7] -pin ex_mem_register pc_in[7] -pin id_ex_register pc_out[7] -pin target_addr_mux pc[7]
load net id_ex_pc[8] -attr @rip pc_out[8] -pin alu_src1_mux_inst pc[8] -pin ex_mem_register pc_in[8] -pin id_ex_register pc_out[8] -pin target_addr_mux pc[8]
load net id_ex_pc[9] -attr @rip pc_out[9] -pin alu_src1_mux_inst pc[9] -pin ex_mem_register pc_in[9] -pin id_ex_register pc_out[9] -pin target_addr_mux pc[9]
load net id_ex_rd_addr[0] -attr @rip rd_addr_out[0] -pin ex_mem_register rd_addr_in[0] -pin hazard_detection_unit ex_rd_address[0] -pin id_ex_register rd_addr_out[0]
load net id_ex_rd_addr[1] -attr @rip rd_addr_out[1] -pin ex_mem_register rd_addr_in[1] -pin hazard_detection_unit ex_rd_address[1] -pin id_ex_register rd_addr_out[1]
load net id_ex_rd_addr[2] -attr @rip rd_addr_out[2] -pin ex_mem_register rd_addr_in[2] -pin hazard_detection_unit ex_rd_address[2] -pin id_ex_register rd_addr_out[2]
load net id_ex_rd_addr[3] -attr @rip rd_addr_out[3] -pin ex_mem_register rd_addr_in[3] -pin hazard_detection_unit ex_rd_address[3] -pin id_ex_register rd_addr_out[3]
load net id_ex_rd_addr[4] -attr @rip rd_addr_out[4] -pin ex_mem_register rd_addr_in[4] -pin hazard_detection_unit ex_rd_address[4] -pin id_ex_register rd_addr_out[4]
load net id_ex_reg_write -pin ex_mem_register reg_write_in -pin hazard_detection_unit ex_reg_write -pin id_ex_register reg_write_out
netloc id_ex_reg_write 1 7 8 2810 1030 3210J 1010 NJ 1010 NJ 1010 NJ 1010 NJ 1010 NJ 1010 6490
load net id_ex_rs1_addr[0] -attr @rip rs1_addr_out[0] -pin forwarding_unit ex_rs1_address[0] -pin id_ex_register rs1_addr_out[0]
load net id_ex_rs1_addr[1] -attr @rip rs1_addr_out[1] -pin forwarding_unit ex_rs1_address[1] -pin id_ex_register rs1_addr_out[1]
load net id_ex_rs1_addr[2] -attr @rip rs1_addr_out[2] -pin forwarding_unit ex_rs1_address[2] -pin id_ex_register rs1_addr_out[2]
load net id_ex_rs1_addr[3] -attr @rip rs1_addr_out[3] -pin forwarding_unit ex_rs1_address[3] -pin id_ex_register rs1_addr_out[3]
load net id_ex_rs1_addr[4] -attr @rip rs1_addr_out[4] -pin forwarding_unit ex_rs1_address[4] -pin id_ex_register rs1_addr_out[4]
load net id_ex_rs1_data[0] -attr @rip rs1_out[0] -pin forwarded_rs1_data_i I0[0] -pin forwarded_rs1_data_i I3[0] -pin id_ex_register rs1_out[0]
load net id_ex_rs1_data[10] -attr @rip rs1_out[10] -pin forwarded_rs1_data_i I0[10] -pin forwarded_rs1_data_i I3[10] -pin id_ex_register rs1_out[10]
load net id_ex_rs1_data[11] -attr @rip rs1_out[11] -pin forwarded_rs1_data_i I0[11] -pin forwarded_rs1_data_i I3[11] -pin id_ex_register rs1_out[11]
load net id_ex_rs1_data[12] -attr @rip rs1_out[12] -pin forwarded_rs1_data_i I0[12] -pin forwarded_rs1_data_i I3[12] -pin id_ex_register rs1_out[12]
load net id_ex_rs1_data[13] -attr @rip rs1_out[13] -pin forwarded_rs1_data_i I0[13] -pin forwarded_rs1_data_i I3[13] -pin id_ex_register rs1_out[13]
load net id_ex_rs1_data[14] -attr @rip rs1_out[14] -pin forwarded_rs1_data_i I0[14] -pin forwarded_rs1_data_i I3[14] -pin id_ex_register rs1_out[14]
load net id_ex_rs1_data[15] -attr @rip rs1_out[15] -pin forwarded_rs1_data_i I0[15] -pin forwarded_rs1_data_i I3[15] -pin id_ex_register rs1_out[15]
load net id_ex_rs1_data[16] -attr @rip rs1_out[16] -pin forwarded_rs1_data_i I0[16] -pin forwarded_rs1_data_i I3[16] -pin id_ex_register rs1_out[16]
load net id_ex_rs1_data[17] -attr @rip rs1_out[17] -pin forwarded_rs1_data_i I0[17] -pin forwarded_rs1_data_i I3[17] -pin id_ex_register rs1_out[17]
load net id_ex_rs1_data[18] -attr @rip rs1_out[18] -pin forwarded_rs1_data_i I0[18] -pin forwarded_rs1_data_i I3[18] -pin id_ex_register rs1_out[18]
load net id_ex_rs1_data[19] -attr @rip rs1_out[19] -pin forwarded_rs1_data_i I0[19] -pin forwarded_rs1_data_i I3[19] -pin id_ex_register rs1_out[19]
load net id_ex_rs1_data[1] -attr @rip rs1_out[1] -pin forwarded_rs1_data_i I0[1] -pin forwarded_rs1_data_i I3[1] -pin id_ex_register rs1_out[1]
load net id_ex_rs1_data[20] -attr @rip rs1_out[20] -pin forwarded_rs1_data_i I0[20] -pin forwarded_rs1_data_i I3[20] -pin id_ex_register rs1_out[20]
load net id_ex_rs1_data[21] -attr @rip rs1_out[21] -pin forwarded_rs1_data_i I0[21] -pin forwarded_rs1_data_i I3[21] -pin id_ex_register rs1_out[21]
load net id_ex_rs1_data[22] -attr @rip rs1_out[22] -pin forwarded_rs1_data_i I0[22] -pin forwarded_rs1_data_i I3[22] -pin id_ex_register rs1_out[22]
load net id_ex_rs1_data[23] -attr @rip rs1_out[23] -pin forwarded_rs1_data_i I0[23] -pin forwarded_rs1_data_i I3[23] -pin id_ex_register rs1_out[23]
load net id_ex_rs1_data[24] -attr @rip rs1_out[24] -pin forwarded_rs1_data_i I0[24] -pin forwarded_rs1_data_i I3[24] -pin id_ex_register rs1_out[24]
load net id_ex_rs1_data[25] -attr @rip rs1_out[25] -pin forwarded_rs1_data_i I0[25] -pin forwarded_rs1_data_i I3[25] -pin id_ex_register rs1_out[25]
load net id_ex_rs1_data[26] -attr @rip rs1_out[26] -pin forwarded_rs1_data_i I0[26] -pin forwarded_rs1_data_i I3[26] -pin id_ex_register rs1_out[26]
load net id_ex_rs1_data[27] -attr @rip rs1_out[27] -pin forwarded_rs1_data_i I0[27] -pin forwarded_rs1_data_i I3[27] -pin id_ex_register rs1_out[27]
load net id_ex_rs1_data[28] -attr @rip rs1_out[28] -pin forwarded_rs1_data_i I0[28] -pin forwarded_rs1_data_i I3[28] -pin id_ex_register rs1_out[28]
load net id_ex_rs1_data[29] -attr @rip rs1_out[29] -pin forwarded_rs1_data_i I0[29] -pin forwarded_rs1_data_i I3[29] -pin id_ex_register rs1_out[29]
load net id_ex_rs1_data[2] -attr @rip rs1_out[2] -pin forwarded_rs1_data_i I0[2] -pin forwarded_rs1_data_i I3[2] -pin id_ex_register rs1_out[2]
load net id_ex_rs1_data[30] -attr @rip rs1_out[30] -pin forwarded_rs1_data_i I0[30] -pin forwarded_rs1_data_i I3[30] -pin id_ex_register rs1_out[30]
load net id_ex_rs1_data[31] -attr @rip rs1_out[31] -pin forwarded_rs1_data_i I0[31] -pin forwarded_rs1_data_i I3[31] -pin id_ex_register rs1_out[31]
load net id_ex_rs1_data[3] -attr @rip rs1_out[3] -pin forwarded_rs1_data_i I0[3] -pin forwarded_rs1_data_i I3[3] -pin id_ex_register rs1_out[3]
load net id_ex_rs1_data[4] -attr @rip rs1_out[4] -pin forwarded_rs1_data_i I0[4] -pin forwarded_rs1_data_i I3[4] -pin id_ex_register rs1_out[4]
load net id_ex_rs1_data[5] -attr @rip rs1_out[5] -pin forwarded_rs1_data_i I0[5] -pin forwarded_rs1_data_i I3[5] -pin id_ex_register rs1_out[5]
load net id_ex_rs1_data[6] -attr @rip rs1_out[6] -pin forwarded_rs1_data_i I0[6] -pin forwarded_rs1_data_i I3[6] -pin id_ex_register rs1_out[6]
load net id_ex_rs1_data[7] -attr @rip rs1_out[7] -pin forwarded_rs1_data_i I0[7] -pin forwarded_rs1_data_i I3[7] -pin id_ex_register rs1_out[7]
load net id_ex_rs1_data[8] -attr @rip rs1_out[8] -pin forwarded_rs1_data_i I0[8] -pin forwarded_rs1_data_i I3[8] -pin id_ex_register rs1_out[8]
load net id_ex_rs1_data[9] -attr @rip rs1_out[9] -pin forwarded_rs1_data_i I0[9] -pin forwarded_rs1_data_i I3[9] -pin id_ex_register rs1_out[9]
load net id_ex_rs2_addr[0] -attr @rip rs2_addr_out[0] -pin forwarding_unit ex_rs2_address[0] -pin id_ex_register rs2_addr_out[0]
load net id_ex_rs2_addr[1] -attr @rip rs2_addr_out[1] -pin forwarding_unit ex_rs2_address[1] -pin id_ex_register rs2_addr_out[1]
load net id_ex_rs2_addr[2] -attr @rip rs2_addr_out[2] -pin forwarding_unit ex_rs2_address[2] -pin id_ex_register rs2_addr_out[2]
load net id_ex_rs2_addr[3] -attr @rip rs2_addr_out[3] -pin forwarding_unit ex_rs2_address[3] -pin id_ex_register rs2_addr_out[3]
load net id_ex_rs2_addr[4] -attr @rip rs2_addr_out[4] -pin forwarding_unit ex_rs2_address[4] -pin id_ex_register rs2_addr_out[4]
load net id_ex_rs2_data[0] -attr @rip rs2_out[0] -pin forwarded_rs2_data_i I0[0] -pin forwarded_rs2_data_i I3[0] -pin id_ex_register rs2_out[0]
load net id_ex_rs2_data[10] -attr @rip rs2_out[10] -pin forwarded_rs2_data_i I0[10] -pin forwarded_rs2_data_i I3[10] -pin id_ex_register rs2_out[10]
load net id_ex_rs2_data[11] -attr @rip rs2_out[11] -pin forwarded_rs2_data_i I0[11] -pin forwarded_rs2_data_i I3[11] -pin id_ex_register rs2_out[11]
load net id_ex_rs2_data[12] -attr @rip rs2_out[12] -pin forwarded_rs2_data_i I0[12] -pin forwarded_rs2_data_i I3[12] -pin id_ex_register rs2_out[12]
load net id_ex_rs2_data[13] -attr @rip rs2_out[13] -pin forwarded_rs2_data_i I0[13] -pin forwarded_rs2_data_i I3[13] -pin id_ex_register rs2_out[13]
load net id_ex_rs2_data[14] -attr @rip rs2_out[14] -pin forwarded_rs2_data_i I0[14] -pin forwarded_rs2_data_i I3[14] -pin id_ex_register rs2_out[14]
load net id_ex_rs2_data[15] -attr @rip rs2_out[15] -pin forwarded_rs2_data_i I0[15] -pin forwarded_rs2_data_i I3[15] -pin id_ex_register rs2_out[15]
load net id_ex_rs2_data[16] -attr @rip rs2_out[16] -pin forwarded_rs2_data_i I0[16] -pin forwarded_rs2_data_i I3[16] -pin id_ex_register rs2_out[16]
load net id_ex_rs2_data[17] -attr @rip rs2_out[17] -pin forwarded_rs2_data_i I0[17] -pin forwarded_rs2_data_i I3[17] -pin id_ex_register rs2_out[17]
load net id_ex_rs2_data[18] -attr @rip rs2_out[18] -pin forwarded_rs2_data_i I0[18] -pin forwarded_rs2_data_i I3[18] -pin id_ex_register rs2_out[18]
load net id_ex_rs2_data[19] -attr @rip rs2_out[19] -pin forwarded_rs2_data_i I0[19] -pin forwarded_rs2_data_i I3[19] -pin id_ex_register rs2_out[19]
load net id_ex_rs2_data[1] -attr @rip rs2_out[1] -pin forwarded_rs2_data_i I0[1] -pin forwarded_rs2_data_i I3[1] -pin id_ex_register rs2_out[1]
load net id_ex_rs2_data[20] -attr @rip rs2_out[20] -pin forwarded_rs2_data_i I0[20] -pin forwarded_rs2_data_i I3[20] -pin id_ex_register rs2_out[20]
load net id_ex_rs2_data[21] -attr @rip rs2_out[21] -pin forwarded_rs2_data_i I0[21] -pin forwarded_rs2_data_i I3[21] -pin id_ex_register rs2_out[21]
load net id_ex_rs2_data[22] -attr @rip rs2_out[22] -pin forwarded_rs2_data_i I0[22] -pin forwarded_rs2_data_i I3[22] -pin id_ex_register rs2_out[22]
load net id_ex_rs2_data[23] -attr @rip rs2_out[23] -pin forwarded_rs2_data_i I0[23] -pin forwarded_rs2_data_i I3[23] -pin id_ex_register rs2_out[23]
load net id_ex_rs2_data[24] -attr @rip rs2_out[24] -pin forwarded_rs2_data_i I0[24] -pin forwarded_rs2_data_i I3[24] -pin id_ex_register rs2_out[24]
load net id_ex_rs2_data[25] -attr @rip rs2_out[25] -pin forwarded_rs2_data_i I0[25] -pin forwarded_rs2_data_i I3[25] -pin id_ex_register rs2_out[25]
load net id_ex_rs2_data[26] -attr @rip rs2_out[26] -pin forwarded_rs2_data_i I0[26] -pin forwarded_rs2_data_i I3[26] -pin id_ex_register rs2_out[26]
load net id_ex_rs2_data[27] -attr @rip rs2_out[27] -pin forwarded_rs2_data_i I0[27] -pin forwarded_rs2_data_i I3[27] -pin id_ex_register rs2_out[27]
load net id_ex_rs2_data[28] -attr @rip rs2_out[28] -pin forwarded_rs2_data_i I0[28] -pin forwarded_rs2_data_i I3[28] -pin id_ex_register rs2_out[28]
load net id_ex_rs2_data[29] -attr @rip rs2_out[29] -pin forwarded_rs2_data_i I0[29] -pin forwarded_rs2_data_i I3[29] -pin id_ex_register rs2_out[29]
load net id_ex_rs2_data[2] -attr @rip rs2_out[2] -pin forwarded_rs2_data_i I0[2] -pin forwarded_rs2_data_i I3[2] -pin id_ex_register rs2_out[2]
load net id_ex_rs2_data[30] -attr @rip rs2_out[30] -pin forwarded_rs2_data_i I0[30] -pin forwarded_rs2_data_i I3[30] -pin id_ex_register rs2_out[30]
load net id_ex_rs2_data[31] -attr @rip rs2_out[31] -pin forwarded_rs2_data_i I0[31] -pin forwarded_rs2_data_i I3[31] -pin id_ex_register rs2_out[31]
load net id_ex_rs2_data[3] -attr @rip rs2_out[3] -pin forwarded_rs2_data_i I0[3] -pin forwarded_rs2_data_i I3[3] -pin id_ex_register rs2_out[3]
load net id_ex_rs2_data[4] -attr @rip rs2_out[4] -pin forwarded_rs2_data_i I0[4] -pin forwarded_rs2_data_i I3[4] -pin id_ex_register rs2_out[4]
load net id_ex_rs2_data[5] -attr @rip rs2_out[5] -pin forwarded_rs2_data_i I0[5] -pin forwarded_rs2_data_i I3[5] -pin id_ex_register rs2_out[5]
load net id_ex_rs2_data[6] -attr @rip rs2_out[6] -pin forwarded_rs2_data_i I0[6] -pin forwarded_rs2_data_i I3[6] -pin id_ex_register rs2_out[6]
load net id_ex_rs2_data[7] -attr @rip rs2_out[7] -pin forwarded_rs2_data_i I0[7] -pin forwarded_rs2_data_i I3[7] -pin id_ex_register rs2_out[7]
load net id_ex_rs2_data[8] -attr @rip rs2_out[8] -pin forwarded_rs2_data_i I0[8] -pin forwarded_rs2_data_i I3[8] -pin id_ex_register rs2_out[8]
load net id_ex_rs2_data[9] -attr @rip rs2_out[9] -pin forwarded_rs2_data_i I0[9] -pin forwarded_rs2_data_i I3[9] -pin id_ex_register rs2_out[9]
load net if_id_instruction[0] -attr @rip instruction_out[0] -pin cu opcode[0] -pin id_ex_register opcode_in[0] -pin if_id_register instruction_out[0] -pin immediate instruction[0]
load net if_id_instruction[10] -attr @rip instruction_out[10] -pin id_ex_register rd_addr_in[3] -pin if_id_register instruction_out[10] -pin immediate instruction[10]
load net if_id_instruction[11] -attr @rip instruction_out[11] -pin id_ex_register rd_addr_in[4] -pin if_id_register instruction_out[11] -pin immediate instruction[11]
load net if_id_instruction[12] -attr @rip instruction_out[12] -pin id_ex_register funct3_in[0] -pin if_id_register instruction_out[12] -pin immediate instruction[12]
load net if_id_instruction[13] -attr @rip instruction_out[13] -pin id_ex_register funct3_in[1] -pin if_id_register instruction_out[13] -pin immediate instruction[13]
load net if_id_instruction[14] -attr @rip instruction_out[14] -pin id_ex_register funct3_in[2] -pin if_id_register instruction_out[14] -pin immediate instruction[14]
load net if_id_instruction[15] -attr @rip instruction_out[15] -pin hazard_detection_unit id_rs1_address[0] -pin id_ex_register rs1_addr_in[0] -pin if_id_register instruction_out[15] -pin immediate instruction[15] -pin register_file rs1_address[0]
load net if_id_instruction[16] -attr @rip instruction_out[16] -pin hazard_detection_unit id_rs1_address[1] -pin id_ex_register rs1_addr_in[1] -pin if_id_register instruction_out[16] -pin immediate instruction[16] -pin register_file rs1_address[1]
load net if_id_instruction[17] -attr @rip instruction_out[17] -pin hazard_detection_unit id_rs1_address[2] -pin id_ex_register rs1_addr_in[2] -pin if_id_register instruction_out[17] -pin immediate instruction[17] -pin register_file rs1_address[2]
load net if_id_instruction[18] -attr @rip instruction_out[18] -pin hazard_detection_unit id_rs1_address[3] -pin id_ex_register rs1_addr_in[3] -pin if_id_register instruction_out[18] -pin immediate instruction[18] -pin register_file rs1_address[3]
load net if_id_instruction[19] -attr @rip instruction_out[19] -pin hazard_detection_unit id_rs1_address[4] -pin id_ex_register rs1_addr_in[4] -pin if_id_register instruction_out[19] -pin immediate instruction[19] -pin register_file rs1_address[4]
load net if_id_instruction[1] -attr @rip instruction_out[1] -pin cu opcode[1] -pin id_ex_register opcode_in[1] -pin if_id_register instruction_out[1] -pin immediate instruction[1]
load net if_id_instruction[20] -attr @rip instruction_out[20] -pin hazard_detection_unit id_rs2_address[0] -pin id_ex_register rs2_addr_in[0] -pin if_id_register instruction_out[20] -pin immediate instruction[20] -pin register_file rs2_address[0]
load net if_id_instruction[21] -attr @rip instruction_out[21] -pin hazard_detection_unit id_rs2_address[1] -pin id_ex_register rs2_addr_in[1] -pin if_id_register instruction_out[21] -pin immediate instruction[21] -pin register_file rs2_address[1]
load net if_id_instruction[22] -attr @rip instruction_out[22] -pin hazard_detection_unit id_rs2_address[2] -pin id_ex_register rs2_addr_in[2] -pin if_id_register instruction_out[22] -pin immediate instruction[22] -pin register_file rs2_address[2]
load net if_id_instruction[23] -attr @rip instruction_out[23] -pin hazard_detection_unit id_rs2_address[3] -pin id_ex_register rs2_addr_in[3] -pin if_id_register instruction_out[23] -pin immediate instruction[23] -pin register_file rs2_address[3]
load net if_id_instruction[24] -attr @rip instruction_out[24] -pin hazard_detection_unit id_rs2_address[4] -pin id_ex_register rs2_addr_in[4] -pin if_id_register instruction_out[24] -pin immediate instruction[24] -pin register_file rs2_address[4]
load net if_id_instruction[25] -attr @rip instruction_out[25] -pin id_ex_register funct7_in[0] -pin if_id_register instruction_out[25] -pin immediate instruction[25]
load net if_id_instruction[26] -attr @rip instruction_out[26] -pin id_ex_register funct7_in[1] -pin if_id_register instruction_out[26] -pin immediate instruction[26]
load net if_id_instruction[27] -attr @rip instruction_out[27] -pin id_ex_register funct7_in[2] -pin if_id_register instruction_out[27] -pin immediate instruction[27]
load net if_id_instruction[28] -attr @rip instruction_out[28] -pin id_ex_register funct7_in[3] -pin if_id_register instruction_out[28] -pin immediate instruction[28]
load net if_id_instruction[29] -attr @rip instruction_out[29] -pin id_ex_register funct7_in[4] -pin if_id_register instruction_out[29] -pin immediate instruction[29]
load net if_id_instruction[2] -attr @rip instruction_out[2] -pin cu opcode[2] -pin id_ex_register opcode_in[2] -pin if_id_register instruction_out[2] -pin immediate instruction[2]
load net if_id_instruction[30] -attr @rip instruction_out[30] -pin id_ex_register funct7_in[5] -pin if_id_register instruction_out[30] -pin immediate instruction[30]
load net if_id_instruction[31] -attr @rip instruction_out[31] -pin id_ex_register funct7_in[6] -pin if_id_register instruction_out[31] -pin immediate instruction[31]
load net if_id_instruction[3] -attr @rip instruction_out[3] -pin cu opcode[3] -pin id_ex_register opcode_in[3] -pin if_id_register instruction_out[3] -pin immediate instruction[3]
load net if_id_instruction[4] -attr @rip instruction_out[4] -pin cu opcode[4] -pin id_ex_register opcode_in[4] -pin if_id_register instruction_out[4] -pin immediate instruction[4]
load net if_id_instruction[5] -attr @rip instruction_out[5] -pin cu opcode[5] -pin id_ex_register opcode_in[5] -pin if_id_register instruction_out[5] -pin immediate instruction[5]
load net if_id_instruction[6] -attr @rip instruction_out[6] -pin cu opcode[6] -pin id_ex_register opcode_in[6] -pin if_id_register instruction_out[6] -pin immediate instruction[6]
load net if_id_instruction[7] -attr @rip instruction_out[7] -pin id_ex_register rd_addr_in[0] -pin if_id_register instruction_out[7] -pin immediate instruction[7]
load net if_id_instruction[8] -attr @rip instruction_out[8] -pin id_ex_register rd_addr_in[1] -pin if_id_register instruction_out[8] -pin immediate instruction[8]
load net if_id_instruction[9] -attr @rip instruction_out[9] -pin id_ex_register rd_addr_in[2] -pin if_id_register instruction_out[9] -pin immediate instruction[9]
load net if_id_pc[0] -attr @rip pc_out[0] -pin id_ex_register pc_in[0] -pin if_id_register pc_out[0]
load net if_id_pc[10] -attr @rip pc_out[10] -pin id_ex_register pc_in[10] -pin if_id_register pc_out[10]
load net if_id_pc[11] -attr @rip pc_out[11] -pin id_ex_register pc_in[11] -pin if_id_register pc_out[11]
load net if_id_pc[12] -attr @rip pc_out[12] -pin id_ex_register pc_in[12] -pin if_id_register pc_out[12]
load net if_id_pc[13] -attr @rip pc_out[13] -pin id_ex_register pc_in[13] -pin if_id_register pc_out[13]
load net if_id_pc[14] -attr @rip pc_out[14] -pin id_ex_register pc_in[14] -pin if_id_register pc_out[14]
load net if_id_pc[15] -attr @rip pc_out[15] -pin id_ex_register pc_in[15] -pin if_id_register pc_out[15]
load net if_id_pc[16] -attr @rip pc_out[16] -pin id_ex_register pc_in[16] -pin if_id_register pc_out[16]
load net if_id_pc[17] -attr @rip pc_out[17] -pin id_ex_register pc_in[17] -pin if_id_register pc_out[17]
load net if_id_pc[18] -attr @rip pc_out[18] -pin id_ex_register pc_in[18] -pin if_id_register pc_out[18]
load net if_id_pc[19] -attr @rip pc_out[19] -pin id_ex_register pc_in[19] -pin if_id_register pc_out[19]
load net if_id_pc[1] -attr @rip pc_out[1] -pin id_ex_register pc_in[1] -pin if_id_register pc_out[1]
load net if_id_pc[20] -attr @rip pc_out[20] -pin id_ex_register pc_in[20] -pin if_id_register pc_out[20]
load net if_id_pc[21] -attr @rip pc_out[21] -pin id_ex_register pc_in[21] -pin if_id_register pc_out[21]
load net if_id_pc[22] -attr @rip pc_out[22] -pin id_ex_register pc_in[22] -pin if_id_register pc_out[22]
load net if_id_pc[23] -attr @rip pc_out[23] -pin id_ex_register pc_in[23] -pin if_id_register pc_out[23]
load net if_id_pc[24] -attr @rip pc_out[24] -pin id_ex_register pc_in[24] -pin if_id_register pc_out[24]
load net if_id_pc[25] -attr @rip pc_out[25] -pin id_ex_register pc_in[25] -pin if_id_register pc_out[25]
load net if_id_pc[26] -attr @rip pc_out[26] -pin id_ex_register pc_in[26] -pin if_id_register pc_out[26]
load net if_id_pc[27] -attr @rip pc_out[27] -pin id_ex_register pc_in[27] -pin if_id_register pc_out[27]
load net if_id_pc[28] -attr @rip pc_out[28] -pin id_ex_register pc_in[28] -pin if_id_register pc_out[28]
load net if_id_pc[29] -attr @rip pc_out[29] -pin id_ex_register pc_in[29] -pin if_id_register pc_out[29]
load net if_id_pc[2] -attr @rip pc_out[2] -pin id_ex_register pc_in[2] -pin if_id_register pc_out[2]
load net if_id_pc[30] -attr @rip pc_out[30] -pin id_ex_register pc_in[30] -pin if_id_register pc_out[30]
load net if_id_pc[31] -attr @rip pc_out[31] -pin id_ex_register pc_in[31] -pin if_id_register pc_out[31]
load net if_id_pc[3] -attr @rip pc_out[3] -pin id_ex_register pc_in[3] -pin if_id_register pc_out[3]
load net if_id_pc[4] -attr @rip pc_out[4] -pin id_ex_register pc_in[4] -pin if_id_register pc_out[4]
load net if_id_pc[5] -attr @rip pc_out[5] -pin id_ex_register pc_in[5] -pin if_id_register pc_out[5]
load net if_id_pc[6] -attr @rip pc_out[6] -pin id_ex_register pc_in[6] -pin if_id_register pc_out[6]
load net if_id_pc[7] -attr @rip pc_out[7] -pin id_ex_register pc_in[7] -pin if_id_register pc_out[7]
load net if_id_pc[8] -attr @rip pc_out[8] -pin id_ex_register pc_in[8] -pin if_id_register pc_out[8]
load net if_id_pc[9] -attr @rip pc_out[9] -pin id_ex_register pc_in[9] -pin if_id_register pc_out[9]
load net immediate_control[0] -attr @rip immediate_control[0] -pin cu immediate_control[0] -pin immediate immediate_control[0]
load net immediate_control[1] -attr @rip immediate_control[1] -pin cu immediate_control[1] -pin immediate immediate_control[1]
load net immediate_control[2] -attr @rip immediate_control[2] -pin cu immediate_control[2] -pin immediate immediate_control[2]
load net instruction[0] -attr @rip instruction[0] -pin if_id_register instruction_in[0] -pin imem instruction[0]
load net instruction[10] -attr @rip instruction[10] -pin if_id_register instruction_in[10] -pin imem instruction[10]
load net instruction[11] -attr @rip instruction[11] -pin if_id_register instruction_in[11] -pin imem instruction[11]
load net instruction[12] -attr @rip instruction[12] -pin if_id_register instruction_in[12] -pin imem instruction[12]
load net instruction[13] -attr @rip instruction[13] -pin if_id_register instruction_in[13] -pin imem instruction[13]
load net instruction[14] -attr @rip instruction[14] -pin if_id_register instruction_in[14] -pin imem instruction[14]
load net instruction[15] -attr @rip instruction[15] -pin if_id_register instruction_in[15] -pin imem instruction[15]
load net instruction[16] -attr @rip instruction[16] -pin if_id_register instruction_in[16] -pin imem instruction[16]
load net instruction[17] -attr @rip instruction[17] -pin if_id_register instruction_in[17] -pin imem instruction[17]
load net instruction[18] -attr @rip instruction[18] -pin if_id_register instruction_in[18] -pin imem instruction[18]
load net instruction[19] -attr @rip instruction[19] -pin if_id_register instruction_in[19] -pin imem instruction[19]
load net instruction[1] -attr @rip instruction[1] -pin if_id_register instruction_in[1] -pin imem instruction[1]
load net instruction[20] -attr @rip instruction[20] -pin if_id_register instruction_in[20] -pin imem instruction[20]
load net instruction[21] -attr @rip instruction[21] -pin if_id_register instruction_in[21] -pin imem instruction[21]
load net instruction[22] -attr @rip instruction[22] -pin if_id_register instruction_in[22] -pin imem instruction[22]
load net instruction[23] -attr @rip instruction[23] -pin if_id_register instruction_in[23] -pin imem instruction[23]
load net instruction[24] -attr @rip instruction[24] -pin if_id_register instruction_in[24] -pin imem instruction[24]
load net instruction[25] -attr @rip instruction[25] -pin if_id_register instruction_in[25] -pin imem instruction[25]
load net instruction[26] -attr @rip instruction[26] -pin if_id_register instruction_in[26] -pin imem instruction[26]
load net instruction[27] -attr @rip instruction[27] -pin if_id_register instruction_in[27] -pin imem instruction[27]
load net instruction[28] -attr @rip instruction[28] -pin if_id_register instruction_in[28] -pin imem instruction[28]
load net instruction[29] -attr @rip instruction[29] -pin if_id_register instruction_in[29] -pin imem instruction[29]
load net instruction[2] -attr @rip instruction[2] -pin if_id_register instruction_in[2] -pin imem instruction[2]
load net instruction[30] -attr @rip instruction[30] -pin if_id_register instruction_in[30] -pin imem instruction[30]
load net instruction[31] -attr @rip instruction[31] -pin if_id_register instruction_in[31] -pin imem instruction[31]
load net instruction[3] -attr @rip instruction[3] -pin if_id_register instruction_in[3] -pin imem instruction[3]
load net instruction[4] -attr @rip instruction[4] -pin if_id_register instruction_in[4] -pin imem instruction[4]
load net instruction[5] -attr @rip instruction[5] -pin if_id_register instruction_in[5] -pin imem instruction[5]
load net instruction[6] -attr @rip instruction[6] -pin if_id_register instruction_in[6] -pin imem instruction[6]
load net instruction[7] -attr @rip instruction[7] -pin if_id_register instruction_in[7] -pin imem instruction[7]
load net instruction[8] -attr @rip instruction[8] -pin if_id_register instruction_in[8] -pin imem instruction[8]
load net instruction[9] -attr @rip instruction[9] -pin if_id_register instruction_in[9] -pin imem instruction[9]
load net is_jalr -pin cu is_jalr -pin id_ex_register is_jalr_in
netloc is_jalr 1 12 2 4920J 130 5750
load net is_rtype -pin cu is_rtype -pin id_ex_register is_rtype_in
netloc is_rtype 1 12 2 5000J 250 5730
load net jump -pin cu jump -pin id_ex_register jump_in
netloc jump 1 12 2 4980J 270 5710
load net lt -pin branch_unit_inst lt -pin lt_i O
netloc lt 1 5 1 N 1550
load net ltu -pin branch_unit_inst ltu -pin ltu_i O
netloc ltu 1 5 1 1900 1570n
load net mem_read -pin cu mem_read -pin id_ex_register mem_read_in
netloc mem_read 1 12 2 4960J 290 5690
load net mem_to_reg -pin cu mem_to_reg -pin id_ex_register mem_to_reg_in
netloc mem_to_reg 1 12 2 4880J 310 5650
load net mem_wb_alu_result[0] -attr @rip alu_result_out[0] -pin alu_or_mem_result_i I1[0] -pin mem_wb_register alu_result_out[0]
load net mem_wb_alu_result[10] -attr @rip alu_result_out[10] -pin alu_or_mem_result_i I1[10] -pin mem_wb_register alu_result_out[10]
load net mem_wb_alu_result[11] -attr @rip alu_result_out[11] -pin alu_or_mem_result_i I1[11] -pin mem_wb_register alu_result_out[11]
load net mem_wb_alu_result[12] -attr @rip alu_result_out[12] -pin alu_or_mem_result_i I1[12] -pin mem_wb_register alu_result_out[12]
load net mem_wb_alu_result[13] -attr @rip alu_result_out[13] -pin alu_or_mem_result_i I1[13] -pin mem_wb_register alu_result_out[13]
load net mem_wb_alu_result[14] -attr @rip alu_result_out[14] -pin alu_or_mem_result_i I1[14] -pin mem_wb_register alu_result_out[14]
load net mem_wb_alu_result[15] -attr @rip alu_result_out[15] -pin alu_or_mem_result_i I1[15] -pin mem_wb_register alu_result_out[15]
load net mem_wb_alu_result[16] -attr @rip alu_result_out[16] -pin alu_or_mem_result_i I1[16] -pin mem_wb_register alu_result_out[16]
load net mem_wb_alu_result[17] -attr @rip alu_result_out[17] -pin alu_or_mem_result_i I1[17] -pin mem_wb_register alu_result_out[17]
load net mem_wb_alu_result[18] -attr @rip alu_result_out[18] -pin alu_or_mem_result_i I1[18] -pin mem_wb_register alu_result_out[18]
load net mem_wb_alu_result[19] -attr @rip alu_result_out[19] -pin alu_or_mem_result_i I1[19] -pin mem_wb_register alu_result_out[19]
load net mem_wb_alu_result[1] -attr @rip alu_result_out[1] -pin alu_or_mem_result_i I1[1] -pin mem_wb_register alu_result_out[1]
load net mem_wb_alu_result[20] -attr @rip alu_result_out[20] -pin alu_or_mem_result_i I1[20] -pin mem_wb_register alu_result_out[20]
load net mem_wb_alu_result[21] -attr @rip alu_result_out[21] -pin alu_or_mem_result_i I1[21] -pin mem_wb_register alu_result_out[21]
load net mem_wb_alu_result[22] -attr @rip alu_result_out[22] -pin alu_or_mem_result_i I1[22] -pin mem_wb_register alu_result_out[22]
load net mem_wb_alu_result[23] -attr @rip alu_result_out[23] -pin alu_or_mem_result_i I1[23] -pin mem_wb_register alu_result_out[23]
load net mem_wb_alu_result[24] -attr @rip alu_result_out[24] -pin alu_or_mem_result_i I1[24] -pin mem_wb_register alu_result_out[24]
load net mem_wb_alu_result[25] -attr @rip alu_result_out[25] -pin alu_or_mem_result_i I1[25] -pin mem_wb_register alu_result_out[25]
load net mem_wb_alu_result[26] -attr @rip alu_result_out[26] -pin alu_or_mem_result_i I1[26] -pin mem_wb_register alu_result_out[26]
load net mem_wb_alu_result[27] -attr @rip alu_result_out[27] -pin alu_or_mem_result_i I1[27] -pin mem_wb_register alu_result_out[27]
load net mem_wb_alu_result[28] -attr @rip alu_result_out[28] -pin alu_or_mem_result_i I1[28] -pin mem_wb_register alu_result_out[28]
load net mem_wb_alu_result[29] -attr @rip alu_result_out[29] -pin alu_or_mem_result_i I1[29] -pin mem_wb_register alu_result_out[29]
load net mem_wb_alu_result[2] -attr @rip alu_result_out[2] -pin alu_or_mem_result_i I1[2] -pin mem_wb_register alu_result_out[2]
load net mem_wb_alu_result[30] -attr @rip alu_result_out[30] -pin alu_or_mem_result_i I1[30] -pin mem_wb_register alu_result_out[30]
load net mem_wb_alu_result[31] -attr @rip alu_result_out[31] -pin alu_or_mem_result_i I1[31] -pin mem_wb_register alu_result_out[31]
load net mem_wb_alu_result[3] -attr @rip alu_result_out[3] -pin alu_or_mem_result_i I1[3] -pin mem_wb_register alu_result_out[3]
load net mem_wb_alu_result[4] -attr @rip alu_result_out[4] -pin alu_or_mem_result_i I1[4] -pin mem_wb_register alu_result_out[4]
load net mem_wb_alu_result[5] -attr @rip alu_result_out[5] -pin alu_or_mem_result_i I1[5] -pin mem_wb_register alu_result_out[5]
load net mem_wb_alu_result[6] -attr @rip alu_result_out[6] -pin alu_or_mem_result_i I1[6] -pin mem_wb_register alu_result_out[6]
load net mem_wb_alu_result[7] -attr @rip alu_result_out[7] -pin alu_or_mem_result_i I1[7] -pin mem_wb_register alu_result_out[7]
load net mem_wb_alu_result[8] -attr @rip alu_result_out[8] -pin alu_or_mem_result_i I1[8] -pin mem_wb_register alu_result_out[8]
load net mem_wb_alu_result[9] -attr @rip alu_result_out[9] -pin alu_or_mem_result_i I1[9] -pin mem_wb_register alu_result_out[9]
load net mem_wb_immediate[0] -attr @rip immediate_out[0] -pin RTL_MUX I0[0] -pin mem_wb_register immediate_out[0]
load net mem_wb_immediate[10] -attr @rip immediate_out[10] -pin RTL_MUX I0[10] -pin mem_wb_register immediate_out[10]
load net mem_wb_immediate[11] -attr @rip immediate_out[11] -pin RTL_MUX I0[11] -pin mem_wb_register immediate_out[11]
load net mem_wb_immediate[12] -attr @rip immediate_out[12] -pin RTL_MUX I0[12] -pin mem_wb_register immediate_out[12]
load net mem_wb_immediate[13] -attr @rip immediate_out[13] -pin RTL_MUX I0[13] -pin mem_wb_register immediate_out[13]
load net mem_wb_immediate[14] -attr @rip immediate_out[14] -pin RTL_MUX I0[14] -pin mem_wb_register immediate_out[14]
load net mem_wb_immediate[15] -attr @rip immediate_out[15] -pin RTL_MUX I0[15] -pin mem_wb_register immediate_out[15]
load net mem_wb_immediate[16] -attr @rip immediate_out[16] -pin RTL_MUX I0[16] -pin mem_wb_register immediate_out[16]
load net mem_wb_immediate[17] -attr @rip immediate_out[17] -pin RTL_MUX I0[17] -pin mem_wb_register immediate_out[17]
load net mem_wb_immediate[18] -attr @rip immediate_out[18] -pin RTL_MUX I0[18] -pin mem_wb_register immediate_out[18]
load net mem_wb_immediate[19] -attr @rip immediate_out[19] -pin RTL_MUX I0[19] -pin mem_wb_register immediate_out[19]
load net mem_wb_immediate[1] -attr @rip immediate_out[1] -pin RTL_MUX I0[1] -pin mem_wb_register immediate_out[1]
load net mem_wb_immediate[20] -attr @rip immediate_out[20] -pin RTL_MUX I0[20] -pin mem_wb_register immediate_out[20]
load net mem_wb_immediate[21] -attr @rip immediate_out[21] -pin RTL_MUX I0[21] -pin mem_wb_register immediate_out[21]
load net mem_wb_immediate[22] -attr @rip immediate_out[22] -pin RTL_MUX I0[22] -pin mem_wb_register immediate_out[22]
load net mem_wb_immediate[23] -attr @rip immediate_out[23] -pin RTL_MUX I0[23] -pin mem_wb_register immediate_out[23]
load net mem_wb_immediate[24] -attr @rip immediate_out[24] -pin RTL_MUX I0[24] -pin mem_wb_register immediate_out[24]
load net mem_wb_immediate[25] -attr @rip immediate_out[25] -pin RTL_MUX I0[25] -pin mem_wb_register immediate_out[25]
load net mem_wb_immediate[26] -attr @rip immediate_out[26] -pin RTL_MUX I0[26] -pin mem_wb_register immediate_out[26]
load net mem_wb_immediate[27] -attr @rip immediate_out[27] -pin RTL_MUX I0[27] -pin mem_wb_register immediate_out[27]
load net mem_wb_immediate[28] -attr @rip immediate_out[28] -pin RTL_MUX I0[28] -pin mem_wb_register immediate_out[28]
load net mem_wb_immediate[29] -attr @rip immediate_out[29] -pin RTL_MUX I0[29] -pin mem_wb_register immediate_out[29]
load net mem_wb_immediate[2] -attr @rip immediate_out[2] -pin RTL_MUX I0[2] -pin mem_wb_register immediate_out[2]
load net mem_wb_immediate[30] -attr @rip immediate_out[30] -pin RTL_MUX I0[30] -pin mem_wb_register immediate_out[30]
load net mem_wb_immediate[31] -attr @rip immediate_out[31] -pin RTL_MUX I0[31] -pin mem_wb_register immediate_out[31]
load net mem_wb_immediate[3] -attr @rip immediate_out[3] -pin RTL_MUX I0[3] -pin mem_wb_register immediate_out[3]
load net mem_wb_immediate[4] -attr @rip immediate_out[4] -pin RTL_MUX I0[4] -pin mem_wb_register immediate_out[4]
load net mem_wb_immediate[5] -attr @rip immediate_out[5] -pin RTL_MUX I0[5] -pin mem_wb_register immediate_out[5]
load net mem_wb_immediate[6] -attr @rip immediate_out[6] -pin RTL_MUX I0[6] -pin mem_wb_register immediate_out[6]
load net mem_wb_immediate[7] -attr @rip immediate_out[7] -pin RTL_MUX I0[7] -pin mem_wb_register immediate_out[7]
load net mem_wb_immediate[8] -attr @rip immediate_out[8] -pin RTL_MUX I0[8] -pin mem_wb_register immediate_out[8]
load net mem_wb_immediate[9] -attr @rip immediate_out[9] -pin RTL_MUX I0[9] -pin mem_wb_register immediate_out[9]
load net mem_wb_jump -pin mem_wb_register jump_out -pin mem_wb_write_data_i S
netloc mem_wb_jump 1 2 16 NJ 270 NJ 270 NJ 270 NJ 270 NJ 270 NJ 270 NJ 270 NJ 270 NJ 270 4480J 390 NJ 390 5470J 30 NJ 30 NJ 30 NJ 30 8010
load net mem_wb_mem_data[0] -attr @rip mem_data_out[0] -pin alu_or_mem_result_i I0[0] -pin mem_wb_register mem_data_out[0]
load net mem_wb_mem_data[10] -attr @rip mem_data_out[10] -pin alu_or_mem_result_i I0[10] -pin mem_wb_register mem_data_out[10]
load net mem_wb_mem_data[11] -attr @rip mem_data_out[11] -pin alu_or_mem_result_i I0[11] -pin mem_wb_register mem_data_out[11]
load net mem_wb_mem_data[12] -attr @rip mem_data_out[12] -pin alu_or_mem_result_i I0[12] -pin mem_wb_register mem_data_out[12]
load net mem_wb_mem_data[13] -attr @rip mem_data_out[13] -pin alu_or_mem_result_i I0[13] -pin mem_wb_register mem_data_out[13]
load net mem_wb_mem_data[14] -attr @rip mem_data_out[14] -pin alu_or_mem_result_i I0[14] -pin mem_wb_register mem_data_out[14]
load net mem_wb_mem_data[15] -attr @rip mem_data_out[15] -pin alu_or_mem_result_i I0[15] -pin mem_wb_register mem_data_out[15]
load net mem_wb_mem_data[16] -attr @rip mem_data_out[16] -pin alu_or_mem_result_i I0[16] -pin mem_wb_register mem_data_out[16]
load net mem_wb_mem_data[17] -attr @rip mem_data_out[17] -pin alu_or_mem_result_i I0[17] -pin mem_wb_register mem_data_out[17]
load net mem_wb_mem_data[18] -attr @rip mem_data_out[18] -pin alu_or_mem_result_i I0[18] -pin mem_wb_register mem_data_out[18]
load net mem_wb_mem_data[19] -attr @rip mem_data_out[19] -pin alu_or_mem_result_i I0[19] -pin mem_wb_register mem_data_out[19]
load net mem_wb_mem_data[1] -attr @rip mem_data_out[1] -pin alu_or_mem_result_i I0[1] -pin mem_wb_register mem_data_out[1]
load net mem_wb_mem_data[20] -attr @rip mem_data_out[20] -pin alu_or_mem_result_i I0[20] -pin mem_wb_register mem_data_out[20]
load net mem_wb_mem_data[21] -attr @rip mem_data_out[21] -pin alu_or_mem_result_i I0[21] -pin mem_wb_register mem_data_out[21]
load net mem_wb_mem_data[22] -attr @rip mem_data_out[22] -pin alu_or_mem_result_i I0[22] -pin mem_wb_register mem_data_out[22]
load net mem_wb_mem_data[23] -attr @rip mem_data_out[23] -pin alu_or_mem_result_i I0[23] -pin mem_wb_register mem_data_out[23]
load net mem_wb_mem_data[24] -attr @rip mem_data_out[24] -pin alu_or_mem_result_i I0[24] -pin mem_wb_register mem_data_out[24]
load net mem_wb_mem_data[25] -attr @rip mem_data_out[25] -pin alu_or_mem_result_i I0[25] -pin mem_wb_register mem_data_out[25]
load net mem_wb_mem_data[26] -attr @rip mem_data_out[26] -pin alu_or_mem_result_i I0[26] -pin mem_wb_register mem_data_out[26]
load net mem_wb_mem_data[27] -attr @rip mem_data_out[27] -pin alu_or_mem_result_i I0[27] -pin mem_wb_register mem_data_out[27]
load net mem_wb_mem_data[28] -attr @rip mem_data_out[28] -pin alu_or_mem_result_i I0[28] -pin mem_wb_register mem_data_out[28]
load net mem_wb_mem_data[29] -attr @rip mem_data_out[29] -pin alu_or_mem_result_i I0[29] -pin mem_wb_register mem_data_out[29]
load net mem_wb_mem_data[2] -attr @rip mem_data_out[2] -pin alu_or_mem_result_i I0[2] -pin mem_wb_register mem_data_out[2]
load net mem_wb_mem_data[30] -attr @rip mem_data_out[30] -pin alu_or_mem_result_i I0[30] -pin mem_wb_register mem_data_out[30]
load net mem_wb_mem_data[31] -attr @rip mem_data_out[31] -pin alu_or_mem_result_i I0[31] -pin mem_wb_register mem_data_out[31]
load net mem_wb_mem_data[3] -attr @rip mem_data_out[3] -pin alu_or_mem_result_i I0[3] -pin mem_wb_register mem_data_out[3]
load net mem_wb_mem_data[4] -attr @rip mem_data_out[4] -pin alu_or_mem_result_i I0[4] -pin mem_wb_register mem_data_out[4]
load net mem_wb_mem_data[5] -attr @rip mem_data_out[5] -pin alu_or_mem_result_i I0[5] -pin mem_wb_register mem_data_out[5]
load net mem_wb_mem_data[6] -attr @rip mem_data_out[6] -pin alu_or_mem_result_i I0[6] -pin mem_wb_register mem_data_out[6]
load net mem_wb_mem_data[7] -attr @rip mem_data_out[7] -pin alu_or_mem_result_i I0[7] -pin mem_wb_register mem_data_out[7]
load net mem_wb_mem_data[8] -attr @rip mem_data_out[8] -pin alu_or_mem_result_i I0[8] -pin mem_wb_register mem_data_out[8]
load net mem_wb_mem_data[9] -attr @rip mem_data_out[9] -pin alu_or_mem_result_i I0[9] -pin mem_wb_register mem_data_out[9]
load net mem_wb_mem_to_reg -pin alu_or_mem_result_i S -pin mem_wb_register mem_to_reg_out
netloc mem_wb_mem_to_reg 1 17 1 8090 720n
load net mem_wb_opcode[0] -attr @rip opcode_out[0] -pin RTL_MUX S[0] -pin mem_wb_register opcode_out[0]
load net mem_wb_opcode[1] -attr @rip opcode_out[1] -pin RTL_MUX S[1] -pin mem_wb_register opcode_out[1]
load net mem_wb_opcode[2] -attr @rip opcode_out[2] -pin RTL_MUX S[2] -pin mem_wb_register opcode_out[2]
load net mem_wb_opcode[3] -attr @rip opcode_out[3] -pin RTL_MUX S[3] -pin mem_wb_register opcode_out[3]
load net mem_wb_opcode[4] -attr @rip opcode_out[4] -pin RTL_MUX S[4] -pin mem_wb_register opcode_out[4]
load net mem_wb_opcode[5] -attr @rip opcode_out[5] -pin RTL_MUX S[5] -pin mem_wb_register opcode_out[5]
load net mem_wb_opcode[6] -attr @rip opcode_out[6] -pin RTL_MUX S[6] -pin mem_wb_register opcode_out[6]
load net mem_wb_pc[0] -attr @rip pc_out[0] -pin mem_wb_register pc_out[0] -pin pc_plus_4_i I0[0]
load net mem_wb_pc[10] -attr @rip pc_out[10] -pin mem_wb_register pc_out[10] -pin pc_plus_4_i I0[10]
load net mem_wb_pc[11] -attr @rip pc_out[11] -pin mem_wb_register pc_out[11] -pin pc_plus_4_i I0[11]
load net mem_wb_pc[12] -attr @rip pc_out[12] -pin mem_wb_register pc_out[12] -pin pc_plus_4_i I0[12]
load net mem_wb_pc[13] -attr @rip pc_out[13] -pin mem_wb_register pc_out[13] -pin pc_plus_4_i I0[13]
load net mem_wb_pc[14] -attr @rip pc_out[14] -pin mem_wb_register pc_out[14] -pin pc_plus_4_i I0[14]
load net mem_wb_pc[15] -attr @rip pc_out[15] -pin mem_wb_register pc_out[15] -pin pc_plus_4_i I0[15]
load net mem_wb_pc[16] -attr @rip pc_out[16] -pin mem_wb_register pc_out[16] -pin pc_plus_4_i I0[16]
load net mem_wb_pc[17] -attr @rip pc_out[17] -pin mem_wb_register pc_out[17] -pin pc_plus_4_i I0[17]
load net mem_wb_pc[18] -attr @rip pc_out[18] -pin mem_wb_register pc_out[18] -pin pc_plus_4_i I0[18]
load net mem_wb_pc[19] -attr @rip pc_out[19] -pin mem_wb_register pc_out[19] -pin pc_plus_4_i I0[19]
load net mem_wb_pc[1] -attr @rip pc_out[1] -pin mem_wb_register pc_out[1] -pin pc_plus_4_i I0[1]
load net mem_wb_pc[20] -attr @rip pc_out[20] -pin mem_wb_register pc_out[20] -pin pc_plus_4_i I0[20]
load net mem_wb_pc[21] -attr @rip pc_out[21] -pin mem_wb_register pc_out[21] -pin pc_plus_4_i I0[21]
load net mem_wb_pc[22] -attr @rip pc_out[22] -pin mem_wb_register pc_out[22] -pin pc_plus_4_i I0[22]
load net mem_wb_pc[23] -attr @rip pc_out[23] -pin mem_wb_register pc_out[23] -pin pc_plus_4_i I0[23]
load net mem_wb_pc[24] -attr @rip pc_out[24] -pin mem_wb_register pc_out[24] -pin pc_plus_4_i I0[24]
load net mem_wb_pc[25] -attr @rip pc_out[25] -pin mem_wb_register pc_out[25] -pin pc_plus_4_i I0[25]
load net mem_wb_pc[26] -attr @rip pc_out[26] -pin mem_wb_register pc_out[26] -pin pc_plus_4_i I0[26]
load net mem_wb_pc[27] -attr @rip pc_out[27] -pin mem_wb_register pc_out[27] -pin pc_plus_4_i I0[27]
load net mem_wb_pc[28] -attr @rip pc_out[28] -pin mem_wb_register pc_out[28] -pin pc_plus_4_i I0[28]
load net mem_wb_pc[29] -attr @rip pc_out[29] -pin mem_wb_register pc_out[29] -pin pc_plus_4_i I0[29]
load net mem_wb_pc[2] -attr @rip pc_out[2] -pin mem_wb_register pc_out[2] -pin pc_plus_4_i I0[2]
load net mem_wb_pc[30] -attr @rip pc_out[30] -pin mem_wb_register pc_out[30] -pin pc_plus_4_i I0[30]
load net mem_wb_pc[31] -attr @rip pc_out[31] -pin mem_wb_register pc_out[31] -pin pc_plus_4_i I0[31]
load net mem_wb_pc[3] -attr @rip pc_out[3] -pin mem_wb_register pc_out[3] -pin pc_plus_4_i I0[3]
load net mem_wb_pc[4] -attr @rip pc_out[4] -pin mem_wb_register pc_out[4] -pin pc_plus_4_i I0[4]
load net mem_wb_pc[5] -attr @rip pc_out[5] -pin mem_wb_register pc_out[5] -pin pc_plus_4_i I0[5]
load net mem_wb_pc[6] -attr @rip pc_out[6] -pin mem_wb_register pc_out[6] -pin pc_plus_4_i I0[6]
load net mem_wb_pc[7] -attr @rip pc_out[7] -pin mem_wb_register pc_out[7] -pin pc_plus_4_i I0[7]
load net mem_wb_pc[8] -attr @rip pc_out[8] -pin mem_wb_register pc_out[8] -pin pc_plus_4_i I0[8]
load net mem_wb_pc[9] -attr @rip pc_out[9] -pin mem_wb_register pc_out[9] -pin pc_plus_4_i I0[9]
load net mem_wb_rd_addr[0] -attr @rip rd_addr_out[0] -pin forwarding_unit wb_rd_address[0] -pin mem_wb_register rd_addr_out[0] -pin register_file rd_address[0]
load net mem_wb_rd_addr[1] -attr @rip rd_addr_out[1] -pin forwarding_unit wb_rd_address[1] -pin mem_wb_register rd_addr_out[1] -pin register_file rd_address[1]
load net mem_wb_rd_addr[2] -attr @rip rd_addr_out[2] -pin forwarding_unit wb_rd_address[2] -pin mem_wb_register rd_addr_out[2] -pin register_file rd_address[2]
load net mem_wb_rd_addr[3] -attr @rip rd_addr_out[3] -pin forwarding_unit wb_rd_address[3] -pin mem_wb_register rd_addr_out[3] -pin register_file rd_address[3]
load net mem_wb_rd_addr[4] -attr @rip rd_addr_out[4] -pin forwarding_unit wb_rd_address[4] -pin mem_wb_register rd_addr_out[4] -pin register_file rd_address[4]
load net mem_wb_reg_write -pin forwarding_unit wb_reg_write -pin mem_wb_register reg_write_out -pin register_file write_enable
netloc mem_wb_reg_write 1 1 17 410 550 NJ 550 NJ 550 NJ 550 NJ 550 NJ 550 NJ 550 NJ 550 NJ 550 NJ 550 NJ 550 4860 850 NJ 850 6290J 830 7140J 510 NJ 510 7990
load net mem_wb_write_data[0] -attr @rip O[0] -pin forwarded_rs1_data_i I2[0] -pin forwarded_rs2_data_i I2[0] -pin mem_wb_write_data_i O[0] -pin register_file write_data[0]
load net mem_wb_write_data[10] -attr @rip O[10] -pin forwarded_rs1_data_i I2[10] -pin forwarded_rs2_data_i I2[10] -pin mem_wb_write_data_i O[10] -pin register_file write_data[10]
load net mem_wb_write_data[11] -attr @rip O[11] -pin forwarded_rs1_data_i I2[11] -pin forwarded_rs2_data_i I2[11] -pin mem_wb_write_data_i O[11] -pin register_file write_data[11]
load net mem_wb_write_data[12] -attr @rip O[12] -pin forwarded_rs1_data_i I2[12] -pin forwarded_rs2_data_i I2[12] -pin mem_wb_write_data_i O[12] -pin register_file write_data[12]
load net mem_wb_write_data[13] -attr @rip O[13] -pin forwarded_rs1_data_i I2[13] -pin forwarded_rs2_data_i I2[13] -pin mem_wb_write_data_i O[13] -pin register_file write_data[13]
load net mem_wb_write_data[14] -attr @rip O[14] -pin forwarded_rs1_data_i I2[14] -pin forwarded_rs2_data_i I2[14] -pin mem_wb_write_data_i O[14] -pin register_file write_data[14]
load net mem_wb_write_data[15] -attr @rip O[15] -pin forwarded_rs1_data_i I2[15] -pin forwarded_rs2_data_i I2[15] -pin mem_wb_write_data_i O[15] -pin register_file write_data[15]
load net mem_wb_write_data[16] -attr @rip O[16] -pin forwarded_rs1_data_i I2[16] -pin forwarded_rs2_data_i I2[16] -pin mem_wb_write_data_i O[16] -pin register_file write_data[16]
load net mem_wb_write_data[17] -attr @rip O[17] -pin forwarded_rs1_data_i I2[17] -pin forwarded_rs2_data_i I2[17] -pin mem_wb_write_data_i O[17] -pin register_file write_data[17]
load net mem_wb_write_data[18] -attr @rip O[18] -pin forwarded_rs1_data_i I2[18] -pin forwarded_rs2_data_i I2[18] -pin mem_wb_write_data_i O[18] -pin register_file write_data[18]
load net mem_wb_write_data[19] -attr @rip O[19] -pin forwarded_rs1_data_i I2[19] -pin forwarded_rs2_data_i I2[19] -pin mem_wb_write_data_i O[19] -pin register_file write_data[19]
load net mem_wb_write_data[1] -attr @rip O[1] -pin forwarded_rs1_data_i I2[1] -pin forwarded_rs2_data_i I2[1] -pin mem_wb_write_data_i O[1] -pin register_file write_data[1]
load net mem_wb_write_data[20] -attr @rip O[20] -pin forwarded_rs1_data_i I2[20] -pin forwarded_rs2_data_i I2[20] -pin mem_wb_write_data_i O[20] -pin register_file write_data[20]
load net mem_wb_write_data[21] -attr @rip O[21] -pin forwarded_rs1_data_i I2[21] -pin forwarded_rs2_data_i I2[21] -pin mem_wb_write_data_i O[21] -pin register_file write_data[21]
load net mem_wb_write_data[22] -attr @rip O[22] -pin forwarded_rs1_data_i I2[22] -pin forwarded_rs2_data_i I2[22] -pin mem_wb_write_data_i O[22] -pin register_file write_data[22]
load net mem_wb_write_data[23] -attr @rip O[23] -pin forwarded_rs1_data_i I2[23] -pin forwarded_rs2_data_i I2[23] -pin mem_wb_write_data_i O[23] -pin register_file write_data[23]
load net mem_wb_write_data[24] -attr @rip O[24] -pin forwarded_rs1_data_i I2[24] -pin forwarded_rs2_data_i I2[24] -pin mem_wb_write_data_i O[24] -pin register_file write_data[24]
load net mem_wb_write_data[25] -attr @rip O[25] -pin forwarded_rs1_data_i I2[25] -pin forwarded_rs2_data_i I2[25] -pin mem_wb_write_data_i O[25] -pin register_file write_data[25]
load net mem_wb_write_data[26] -attr @rip O[26] -pin forwarded_rs1_data_i I2[26] -pin forwarded_rs2_data_i I2[26] -pin mem_wb_write_data_i O[26] -pin register_file write_data[26]
load net mem_wb_write_data[27] -attr @rip O[27] -pin forwarded_rs1_data_i I2[27] -pin forwarded_rs2_data_i I2[27] -pin mem_wb_write_data_i O[27] -pin register_file write_data[27]
load net mem_wb_write_data[28] -attr @rip O[28] -pin forwarded_rs1_data_i I2[28] -pin forwarded_rs2_data_i I2[28] -pin mem_wb_write_data_i O[28] -pin register_file write_data[28]
load net mem_wb_write_data[29] -attr @rip O[29] -pin forwarded_rs1_data_i I2[29] -pin forwarded_rs2_data_i I2[29] -pin mem_wb_write_data_i O[29] -pin register_file write_data[29]
load net mem_wb_write_data[2] -attr @rip O[2] -pin forwarded_rs1_data_i I2[2] -pin forwarded_rs2_data_i I2[2] -pin mem_wb_write_data_i O[2] -pin register_file write_data[2]
load net mem_wb_write_data[30] -attr @rip O[30] -pin forwarded_rs1_data_i I2[30] -pin forwarded_rs2_data_i I2[30] -pin mem_wb_write_data_i O[30] -pin register_file write_data[30]
load net mem_wb_write_data[31] -attr @rip O[31] -pin forwarded_rs1_data_i I2[31] -pin forwarded_rs2_data_i I2[31] -pin mem_wb_write_data_i O[31] -pin register_file write_data[31]
load net mem_wb_write_data[3] -attr @rip O[3] -pin forwarded_rs1_data_i I2[3] -pin forwarded_rs2_data_i I2[3] -pin mem_wb_write_data_i O[3] -pin register_file write_data[3]
load net mem_wb_write_data[4] -attr @rip O[4] -pin forwarded_rs1_data_i I2[4] -pin forwarded_rs2_data_i I2[4] -pin mem_wb_write_data_i O[4] -pin register_file write_data[4]
load net mem_wb_write_data[5] -attr @rip O[5] -pin forwarded_rs1_data_i I2[5] -pin forwarded_rs2_data_i I2[5] -pin mem_wb_write_data_i O[5] -pin register_file write_data[5]
load net mem_wb_write_data[6] -attr @rip O[6] -pin forwarded_rs1_data_i I2[6] -pin forwarded_rs2_data_i I2[6] -pin mem_wb_write_data_i O[6] -pin register_file write_data[6]
load net mem_wb_write_data[7] -attr @rip O[7] -pin forwarded_rs1_data_i I2[7] -pin forwarded_rs2_data_i I2[7] -pin mem_wb_write_data_i O[7] -pin register_file write_data[7]
load net mem_wb_write_data[8] -attr @rip O[8] -pin forwarded_rs1_data_i I2[8] -pin forwarded_rs2_data_i I2[8] -pin mem_wb_write_data_i O[8] -pin register_file write_data[8]
load net mem_wb_write_data[9] -attr @rip O[9] -pin forwarded_rs1_data_i I2[9] -pin forwarded_rs2_data_i I2[9] -pin mem_wb_write_data_i O[9] -pin register_file write_data[9]
load net mem_write -pin cu mem_write -pin id_ex_register mem_write_in
netloc mem_write 1 12 2 4860J 330 5630
load net p_0_out -pin RTL_OR O -pin id_ex_register flush
netloc p_0_out 1 13 1 5670 170n
load net pc[0] -attr @rip pc[0] -pin if_id_register pc_in[0] -pin imem pc_address[0] -pin pc_inc_unit current_pc[0] -pin pc_inst pc[0]
load net pc[10] -attr @rip pc[10] -pin if_id_register pc_in[10] -pin imem pc_address[10] -pin pc_inc_unit current_pc[10] -pin pc_inst pc[10]
load net pc[11] -attr @rip pc[11] -pin if_id_register pc_in[11] -pin imem pc_address[11] -pin pc_inc_unit current_pc[11] -pin pc_inst pc[11]
load net pc[12] -attr @rip pc[12] -pin if_id_register pc_in[12] -pin imem pc_address[12] -pin pc_inc_unit current_pc[12] -pin pc_inst pc[12]
load net pc[13] -attr @rip pc[13] -pin if_id_register pc_in[13] -pin imem pc_address[13] -pin pc_inc_unit current_pc[13] -pin pc_inst pc[13]
load net pc[14] -attr @rip pc[14] -pin if_id_register pc_in[14] -pin imem pc_address[14] -pin pc_inc_unit current_pc[14] -pin pc_inst pc[14]
load net pc[15] -attr @rip pc[15] -pin if_id_register pc_in[15] -pin imem pc_address[15] -pin pc_inc_unit current_pc[15] -pin pc_inst pc[15]
load net pc[16] -attr @rip pc[16] -pin if_id_register pc_in[16] -pin imem pc_address[16] -pin pc_inc_unit current_pc[16] -pin pc_inst pc[16]
load net pc[17] -attr @rip pc[17] -pin if_id_register pc_in[17] -pin imem pc_address[17] -pin pc_inc_unit current_pc[17] -pin pc_inst pc[17]
load net pc[18] -attr @rip pc[18] -pin if_id_register pc_in[18] -pin imem pc_address[18] -pin pc_inc_unit current_pc[18] -pin pc_inst pc[18]
load net pc[19] -attr @rip pc[19] -pin if_id_register pc_in[19] -pin imem pc_address[19] -pin pc_inc_unit current_pc[19] -pin pc_inst pc[19]
load net pc[1] -attr @rip pc[1] -pin if_id_register pc_in[1] -pin imem pc_address[1] -pin pc_inc_unit current_pc[1] -pin pc_inst pc[1]
load net pc[20] -attr @rip pc[20] -pin if_id_register pc_in[20] -pin imem pc_address[20] -pin pc_inc_unit current_pc[20] -pin pc_inst pc[20]
load net pc[21] -attr @rip pc[21] -pin if_id_register pc_in[21] -pin imem pc_address[21] -pin pc_inc_unit current_pc[21] -pin pc_inst pc[21]
load net pc[22] -attr @rip pc[22] -pin if_id_register pc_in[22] -pin imem pc_address[22] -pin pc_inc_unit current_pc[22] -pin pc_inst pc[22]
load net pc[23] -attr @rip pc[23] -pin if_id_register pc_in[23] -pin imem pc_address[23] -pin pc_inc_unit current_pc[23] -pin pc_inst pc[23]
load net pc[24] -attr @rip pc[24] -pin if_id_register pc_in[24] -pin imem pc_address[24] -pin pc_inc_unit current_pc[24] -pin pc_inst pc[24]
load net pc[25] -attr @rip pc[25] -pin if_id_register pc_in[25] -pin imem pc_address[25] -pin pc_inc_unit current_pc[25] -pin pc_inst pc[25]
load net pc[26] -attr @rip pc[26] -pin if_id_register pc_in[26] -pin imem pc_address[26] -pin pc_inc_unit current_pc[26] -pin pc_inst pc[26]
load net pc[27] -attr @rip pc[27] -pin if_id_register pc_in[27] -pin imem pc_address[27] -pin pc_inc_unit current_pc[27] -pin pc_inst pc[27]
load net pc[28] -attr @rip pc[28] -pin if_id_register pc_in[28] -pin imem pc_address[28] -pin pc_inc_unit current_pc[28] -pin pc_inst pc[28]
load net pc[29] -attr @rip pc[29] -pin if_id_register pc_in[29] -pin imem pc_address[29] -pin pc_inc_unit current_pc[29] -pin pc_inst pc[29]
load net pc[2] -attr @rip pc[2] -pin if_id_register pc_in[2] -pin imem pc_address[2] -pin pc_inc_unit current_pc[2] -pin pc_inst pc[2]
load net pc[30] -attr @rip pc[30] -pin if_id_register pc_in[30] -pin imem pc_address[30] -pin pc_inc_unit current_pc[30] -pin pc_inst pc[30]
load net pc[31] -attr @rip pc[31] -pin if_id_register pc_in[31] -pin imem pc_address[31] -pin pc_inc_unit current_pc[31] -pin pc_inst pc[31]
load net pc[3] -attr @rip pc[3] -pin if_id_register pc_in[3] -pin imem pc_address[3] -pin pc_inc_unit current_pc[3] -pin pc_inst pc[3]
load net pc[4] -attr @rip pc[4] -pin if_id_register pc_in[4] -pin imem pc_address[4] -pin pc_inc_unit current_pc[4] -pin pc_inst pc[4]
load net pc[5] -attr @rip pc[5] -pin if_id_register pc_in[5] -pin imem pc_address[5] -pin pc_inc_unit current_pc[5] -pin pc_inst pc[5]
load net pc[6] -attr @rip pc[6] -pin if_id_register pc_in[6] -pin imem pc_address[6] -pin pc_inc_unit current_pc[6] -pin pc_inst pc[6]
load net pc[7] -attr @rip pc[7] -pin if_id_register pc_in[7] -pin imem pc_address[7] -pin pc_inc_unit current_pc[7] -pin pc_inst pc[7]
load net pc[8] -attr @rip pc[8] -pin if_id_register pc_in[8] -pin imem pc_address[8] -pin pc_inc_unit current_pc[8] -pin pc_inst pc[8]
load net pc[9] -attr @rip pc[9] -pin if_id_register pc_in[9] -pin imem pc_address[9] -pin pc_inc_unit current_pc[9] -pin pc_inst pc[9]
load net pc_increment[0] -attr @rip pc_plus_4[0] -pin pc_control pc_increment[0] -pin pc_inc_unit pc_plus_4[0]
load net pc_increment[10] -attr @rip pc_plus_4[10] -pin pc_control pc_increment[10] -pin pc_inc_unit pc_plus_4[10]
load net pc_increment[11] -attr @rip pc_plus_4[11] -pin pc_control pc_increment[11] -pin pc_inc_unit pc_plus_4[11]
load net pc_increment[12] -attr @rip pc_plus_4[12] -pin pc_control pc_increment[12] -pin pc_inc_unit pc_plus_4[12]
load net pc_increment[13] -attr @rip pc_plus_4[13] -pin pc_control pc_increment[13] -pin pc_inc_unit pc_plus_4[13]
load net pc_increment[14] -attr @rip pc_plus_4[14] -pin pc_control pc_increment[14] -pin pc_inc_unit pc_plus_4[14]
load net pc_increment[15] -attr @rip pc_plus_4[15] -pin pc_control pc_increment[15] -pin pc_inc_unit pc_plus_4[15]
load net pc_increment[16] -attr @rip pc_plus_4[16] -pin pc_control pc_increment[16] -pin pc_inc_unit pc_plus_4[16]
load net pc_increment[17] -attr @rip pc_plus_4[17] -pin pc_control pc_increment[17] -pin pc_inc_unit pc_plus_4[17]
load net pc_increment[18] -attr @rip pc_plus_4[18] -pin pc_control pc_increment[18] -pin pc_inc_unit pc_plus_4[18]
load net pc_increment[19] -attr @rip pc_plus_4[19] -pin pc_control pc_increment[19] -pin pc_inc_unit pc_plus_4[19]
load net pc_increment[1] -attr @rip pc_plus_4[1] -pin pc_control pc_increment[1] -pin pc_inc_unit pc_plus_4[1]
load net pc_increment[20] -attr @rip pc_plus_4[20] -pin pc_control pc_increment[20] -pin pc_inc_unit pc_plus_4[20]
load net pc_increment[21] -attr @rip pc_plus_4[21] -pin pc_control pc_increment[21] -pin pc_inc_unit pc_plus_4[21]
load net pc_increment[22] -attr @rip pc_plus_4[22] -pin pc_control pc_increment[22] -pin pc_inc_unit pc_plus_4[22]
load net pc_increment[23] -attr @rip pc_plus_4[23] -pin pc_control pc_increment[23] -pin pc_inc_unit pc_plus_4[23]
load net pc_increment[24] -attr @rip pc_plus_4[24] -pin pc_control pc_increment[24] -pin pc_inc_unit pc_plus_4[24]
load net pc_increment[25] -attr @rip pc_plus_4[25] -pin pc_control pc_increment[25] -pin pc_inc_unit pc_plus_4[25]
load net pc_increment[26] -attr @rip pc_plus_4[26] -pin pc_control pc_increment[26] -pin pc_inc_unit pc_plus_4[26]
load net pc_increment[27] -attr @rip pc_plus_4[27] -pin pc_control pc_increment[27] -pin pc_inc_unit pc_plus_4[27]
load net pc_increment[28] -attr @rip pc_plus_4[28] -pin pc_control pc_increment[28] -pin pc_inc_unit pc_plus_4[28]
load net pc_increment[29] -attr @rip pc_plus_4[29] -pin pc_control pc_increment[29] -pin pc_inc_unit pc_plus_4[29]
load net pc_increment[2] -attr @rip pc_plus_4[2] -pin pc_control pc_increment[2] -pin pc_inc_unit pc_plus_4[2]
load net pc_increment[30] -attr @rip pc_plus_4[30] -pin pc_control pc_increment[30] -pin pc_inc_unit pc_plus_4[30]
load net pc_increment[31] -attr @rip pc_plus_4[31] -pin pc_control pc_increment[31] -pin pc_inc_unit pc_plus_4[31]
load net pc_increment[3] -attr @rip pc_plus_4[3] -pin pc_control pc_increment[3] -pin pc_inc_unit pc_plus_4[3]
load net pc_increment[4] -attr @rip pc_plus_4[4] -pin pc_control pc_increment[4] -pin pc_inc_unit pc_plus_4[4]
load net pc_increment[5] -attr @rip pc_plus_4[5] -pin pc_control pc_increment[5] -pin pc_inc_unit pc_plus_4[5]
load net pc_increment[6] -attr @rip pc_plus_4[6] -pin pc_control pc_increment[6] -pin pc_inc_unit pc_plus_4[6]
load net pc_increment[7] -attr @rip pc_plus_4[7] -pin pc_control pc_increment[7] -pin pc_inc_unit pc_plus_4[7]
load net pc_increment[8] -attr @rip pc_plus_4[8] -pin pc_control pc_increment[8] -pin pc_inc_unit pc_plus_4[8]
load net pc_increment[9] -attr @rip pc_plus_4[9] -pin pc_control pc_increment[9] -pin pc_inc_unit pc_plus_4[9]
load net pc_next[0] -attr @rip pc_next[0] -pin pc_control pc_next[0] -pin pc_inst pc_next[0]
load net pc_next[10] -attr @rip pc_next[10] -pin pc_control pc_next[10] -pin pc_inst pc_next[10]
load net pc_next[11] -attr @rip pc_next[11] -pin pc_control pc_next[11] -pin pc_inst pc_next[11]
load net pc_next[12] -attr @rip pc_next[12] -pin pc_control pc_next[12] -pin pc_inst pc_next[12]
load net pc_next[13] -attr @rip pc_next[13] -pin pc_control pc_next[13] -pin pc_inst pc_next[13]
load net pc_next[14] -attr @rip pc_next[14] -pin pc_control pc_next[14] -pin pc_inst pc_next[14]
load net pc_next[15] -attr @rip pc_next[15] -pin pc_control pc_next[15] -pin pc_inst pc_next[15]
load net pc_next[16] -attr @rip pc_next[16] -pin pc_control pc_next[16] -pin pc_inst pc_next[16]
load net pc_next[17] -attr @rip pc_next[17] -pin pc_control pc_next[17] -pin pc_inst pc_next[17]
load net pc_next[18] -attr @rip pc_next[18] -pin pc_control pc_next[18] -pin pc_inst pc_next[18]
load net pc_next[19] -attr @rip pc_next[19] -pin pc_control pc_next[19] -pin pc_inst pc_next[19]
load net pc_next[1] -attr @rip pc_next[1] -pin pc_control pc_next[1] -pin pc_inst pc_next[1]
load net pc_next[20] -attr @rip pc_next[20] -pin pc_control pc_next[20] -pin pc_inst pc_next[20]
load net pc_next[21] -attr @rip pc_next[21] -pin pc_control pc_next[21] -pin pc_inst pc_next[21]
load net pc_next[22] -attr @rip pc_next[22] -pin pc_control pc_next[22] -pin pc_inst pc_next[22]
load net pc_next[23] -attr @rip pc_next[23] -pin pc_control pc_next[23] -pin pc_inst pc_next[23]
load net pc_next[24] -attr @rip pc_next[24] -pin pc_control pc_next[24] -pin pc_inst pc_next[24]
load net pc_next[25] -attr @rip pc_next[25] -pin pc_control pc_next[25] -pin pc_inst pc_next[25]
load net pc_next[26] -attr @rip pc_next[26] -pin pc_control pc_next[26] -pin pc_inst pc_next[26]
load net pc_next[27] -attr @rip pc_next[27] -pin pc_control pc_next[27] -pin pc_inst pc_next[27]
load net pc_next[28] -attr @rip pc_next[28] -pin pc_control pc_next[28] -pin pc_inst pc_next[28]
load net pc_next[29] -attr @rip pc_next[29] -pin pc_control pc_next[29] -pin pc_inst pc_next[29]
load net pc_next[2] -attr @rip pc_next[2] -pin pc_control pc_next[2] -pin pc_inst pc_next[2]
load net pc_next[30] -attr @rip pc_next[30] -pin pc_control pc_next[30] -pin pc_inst pc_next[30]
load net pc_next[31] -attr @rip pc_next[31] -pin pc_control pc_next[31] -pin pc_inst pc_next[31]
load net pc_next[3] -attr @rip pc_next[3] -pin pc_control pc_next[3] -pin pc_inst pc_next[3]
load net pc_next[4] -attr @rip pc_next[4] -pin pc_control pc_next[4] -pin pc_inst pc_next[4]
load net pc_next[5] -attr @rip pc_next[5] -pin pc_control pc_next[5] -pin pc_inst pc_next[5]
load net pc_next[6] -attr @rip pc_next[6] -pin pc_control pc_next[6] -pin pc_inst pc_next[6]
load net pc_next[7] -attr @rip pc_next[7] -pin pc_control pc_next[7] -pin pc_inst pc_next[7]
load net pc_next[8] -attr @rip pc_next[8] -pin pc_control pc_next[8] -pin pc_inst pc_next[8]
load net pc_next[9] -attr @rip pc_next[9] -pin pc_control pc_next[9] -pin pc_inst pc_next[9]
load net pc_plus_4[0] -attr @rip O[0] -pin mem_wb_write_data_i I0[0] -pin pc_plus_4_i O[0]
load net pc_plus_4[10] -attr @rip O[10] -pin mem_wb_write_data_i I0[10] -pin pc_plus_4_i O[10]
load net pc_plus_4[11] -attr @rip O[11] -pin mem_wb_write_data_i I0[11] -pin pc_plus_4_i O[11]
load net pc_plus_4[12] -attr @rip O[12] -pin mem_wb_write_data_i I0[12] -pin pc_plus_4_i O[12]
load net pc_plus_4[13] -attr @rip O[13] -pin mem_wb_write_data_i I0[13] -pin pc_plus_4_i O[13]
load net pc_plus_4[14] -attr @rip O[14] -pin mem_wb_write_data_i I0[14] -pin pc_plus_4_i O[14]
load net pc_plus_4[15] -attr @rip O[15] -pin mem_wb_write_data_i I0[15] -pin pc_plus_4_i O[15]
load net pc_plus_4[16] -attr @rip O[16] -pin mem_wb_write_data_i I0[16] -pin pc_plus_4_i O[16]
load net pc_plus_4[17] -attr @rip O[17] -pin mem_wb_write_data_i I0[17] -pin pc_plus_4_i O[17]
load net pc_plus_4[18] -attr @rip O[18] -pin mem_wb_write_data_i I0[18] -pin pc_plus_4_i O[18]
load net pc_plus_4[19] -attr @rip O[19] -pin mem_wb_write_data_i I0[19] -pin pc_plus_4_i O[19]
load net pc_plus_4[1] -attr @rip O[1] -pin mem_wb_write_data_i I0[1] -pin pc_plus_4_i O[1]
load net pc_plus_4[20] -attr @rip O[20] -pin mem_wb_write_data_i I0[20] -pin pc_plus_4_i O[20]
load net pc_plus_4[21] -attr @rip O[21] -pin mem_wb_write_data_i I0[21] -pin pc_plus_4_i O[21]
load net pc_plus_4[22] -attr @rip O[22] -pin mem_wb_write_data_i I0[22] -pin pc_plus_4_i O[22]
load net pc_plus_4[23] -attr @rip O[23] -pin mem_wb_write_data_i I0[23] -pin pc_plus_4_i O[23]
load net pc_plus_4[24] -attr @rip O[24] -pin mem_wb_write_data_i I0[24] -pin pc_plus_4_i O[24]
load net pc_plus_4[25] -attr @rip O[25] -pin mem_wb_write_data_i I0[25] -pin pc_plus_4_i O[25]
load net pc_plus_4[26] -attr @rip O[26] -pin mem_wb_write_data_i I0[26] -pin pc_plus_4_i O[26]
load net pc_plus_4[27] -attr @rip O[27] -pin mem_wb_write_data_i I0[27] -pin pc_plus_4_i O[27]
load net pc_plus_4[28] -attr @rip O[28] -pin mem_wb_write_data_i I0[28] -pin pc_plus_4_i O[28]
load net pc_plus_4[29] -attr @rip O[29] -pin mem_wb_write_data_i I0[29] -pin pc_plus_4_i O[29]
load net pc_plus_4[2] -attr @rip O[2] -pin mem_wb_write_data_i I0[2] -pin pc_plus_4_i O[2]
load net pc_plus_4[30] -attr @rip O[30] -pin mem_wb_write_data_i I0[30] -pin pc_plus_4_i O[30]
load net pc_plus_4[31] -attr @rip O[31] -pin mem_wb_write_data_i I0[31] -pin pc_plus_4_i O[31]
load net pc_plus_4[3] -attr @rip O[3] -pin mem_wb_write_data_i I0[3] -pin pc_plus_4_i O[3]
load net pc_plus_4[4] -attr @rip O[4] -pin mem_wb_write_data_i I0[4] -pin pc_plus_4_i O[4]
load net pc_plus_4[5] -attr @rip O[5] -pin mem_wb_write_data_i I0[5] -pin pc_plus_4_i O[5]
load net pc_plus_4[6] -attr @rip O[6] -pin mem_wb_write_data_i I0[6] -pin pc_plus_4_i O[6]
load net pc_plus_4[7] -attr @rip O[7] -pin mem_wb_write_data_i I0[7] -pin pc_plus_4_i O[7]
load net pc_plus_4[8] -attr @rip O[8] -pin mem_wb_write_data_i I0[8] -pin pc_plus_4_i O[8]
load net pc_plus_4[9] -attr @rip O[9] -pin mem_wb_write_data_i I0[9] -pin pc_plus_4_i O[9]
load net reg_write -pin cu reg_write -pin id_ex_register reg_write_in
netloc reg_write 1 12 2 4840J 350 5610
load net reset -pin dmem reset -pin ex_mem_register reset -pin id_ex_register reset -pin if_id_register reset -pin imem reset -pin mem_wb_register reset -pin pc_inc_unit reset -pin pc_inst reset -pin register_file reset -port reset
netloc reset 1 0 17 NJ 1470 NJ 1470 NJ 1470 NJ 1470 NJ 1470 NJ 1470 2310 1310 NJ 1310 3370 1290 3680 1290 4090 1330 NJ 1330 4980 830 5730 710 6450 850 7240 850 NJ
load net rs1_read[0] -attr @rip rs1_read[0] -pin id_ex_register rs1_in[0] -pin register_file rs1_read[0]
load net rs1_read[10] -attr @rip rs1_read[10] -pin id_ex_register rs1_in[10] -pin register_file rs1_read[10]
load net rs1_read[11] -attr @rip rs1_read[11] -pin id_ex_register rs1_in[11] -pin register_file rs1_read[11]
load net rs1_read[12] -attr @rip rs1_read[12] -pin id_ex_register rs1_in[12] -pin register_file rs1_read[12]
load net rs1_read[13] -attr @rip rs1_read[13] -pin id_ex_register rs1_in[13] -pin register_file rs1_read[13]
load net rs1_read[14] -attr @rip rs1_read[14] -pin id_ex_register rs1_in[14] -pin register_file rs1_read[14]
load net rs1_read[15] -attr @rip rs1_read[15] -pin id_ex_register rs1_in[15] -pin register_file rs1_read[15]
load net rs1_read[16] -attr @rip rs1_read[16] -pin id_ex_register rs1_in[16] -pin register_file rs1_read[16]
load net rs1_read[17] -attr @rip rs1_read[17] -pin id_ex_register rs1_in[17] -pin register_file rs1_read[17]
load net rs1_read[18] -attr @rip rs1_read[18] -pin id_ex_register rs1_in[18] -pin register_file rs1_read[18]
load net rs1_read[19] -attr @rip rs1_read[19] -pin id_ex_register rs1_in[19] -pin register_file rs1_read[19]
load net rs1_read[1] -attr @rip rs1_read[1] -pin id_ex_register rs1_in[1] -pin register_file rs1_read[1]
load net rs1_read[20] -attr @rip rs1_read[20] -pin id_ex_register rs1_in[20] -pin register_file rs1_read[20]
load net rs1_read[21] -attr @rip rs1_read[21] -pin id_ex_register rs1_in[21] -pin register_file rs1_read[21]
load net rs1_read[22] -attr @rip rs1_read[22] -pin id_ex_register rs1_in[22] -pin register_file rs1_read[22]
load net rs1_read[23] -attr @rip rs1_read[23] -pin id_ex_register rs1_in[23] -pin register_file rs1_read[23]
load net rs1_read[24] -attr @rip rs1_read[24] -pin id_ex_register rs1_in[24] -pin register_file rs1_read[24]
load net rs1_read[25] -attr @rip rs1_read[25] -pin id_ex_register rs1_in[25] -pin register_file rs1_read[25]
load net rs1_read[26] -attr @rip rs1_read[26] -pin id_ex_register rs1_in[26] -pin register_file rs1_read[26]
load net rs1_read[27] -attr @rip rs1_read[27] -pin id_ex_register rs1_in[27] -pin register_file rs1_read[27]
load net rs1_read[28] -attr @rip rs1_read[28] -pin id_ex_register rs1_in[28] -pin register_file rs1_read[28]
load net rs1_read[29] -attr @rip rs1_read[29] -pin id_ex_register rs1_in[29] -pin register_file rs1_read[29]
load net rs1_read[2] -attr @rip rs1_read[2] -pin id_ex_register rs1_in[2] -pin register_file rs1_read[2]
load net rs1_read[30] -attr @rip rs1_read[30] -pin id_ex_register rs1_in[30] -pin register_file rs1_read[30]
load net rs1_read[31] -attr @rip rs1_read[31] -pin id_ex_register rs1_in[31] -pin register_file rs1_read[31]
load net rs1_read[3] -attr @rip rs1_read[3] -pin id_ex_register rs1_in[3] -pin register_file rs1_read[3]
load net rs1_read[4] -attr @rip rs1_read[4] -pin id_ex_register rs1_in[4] -pin register_file rs1_read[4]
load net rs1_read[5] -attr @rip rs1_read[5] -pin id_ex_register rs1_in[5] -pin register_file rs1_read[5]
load net rs1_read[6] -attr @rip rs1_read[6] -pin id_ex_register rs1_in[6] -pin register_file rs1_read[6]
load net rs1_read[7] -attr @rip rs1_read[7] -pin id_ex_register rs1_in[7] -pin register_file rs1_read[7]
load net rs1_read[8] -attr @rip rs1_read[8] -pin id_ex_register rs1_in[8] -pin register_file rs1_read[8]
load net rs1_read[9] -attr @rip rs1_read[9] -pin id_ex_register rs1_in[9] -pin register_file rs1_read[9]
load net rs2_read[0] -attr @rip rs2_read[0] -pin id_ex_register rs2_in[0] -pin register_file rs2_read[0]
load net rs2_read[10] -attr @rip rs2_read[10] -pin id_ex_register rs2_in[10] -pin register_file rs2_read[10]
load net rs2_read[11] -attr @rip rs2_read[11] -pin id_ex_register rs2_in[11] -pin register_file rs2_read[11]
load net rs2_read[12] -attr @rip rs2_read[12] -pin id_ex_register rs2_in[12] -pin register_file rs2_read[12]
load net rs2_read[13] -attr @rip rs2_read[13] -pin id_ex_register rs2_in[13] -pin register_file rs2_read[13]
load net rs2_read[14] -attr @rip rs2_read[14] -pin id_ex_register rs2_in[14] -pin register_file rs2_read[14]
load net rs2_read[15] -attr @rip rs2_read[15] -pin id_ex_register rs2_in[15] -pin register_file rs2_read[15]
load net rs2_read[16] -attr @rip rs2_read[16] -pin id_ex_register rs2_in[16] -pin register_file rs2_read[16]
load net rs2_read[17] -attr @rip rs2_read[17] -pin id_ex_register rs2_in[17] -pin register_file rs2_read[17]
load net rs2_read[18] -attr @rip rs2_read[18] -pin id_ex_register rs2_in[18] -pin register_file rs2_read[18]
load net rs2_read[19] -attr @rip rs2_read[19] -pin id_ex_register rs2_in[19] -pin register_file rs2_read[19]
load net rs2_read[1] -attr @rip rs2_read[1] -pin id_ex_register rs2_in[1] -pin register_file rs2_read[1]
load net rs2_read[20] -attr @rip rs2_read[20] -pin id_ex_register rs2_in[20] -pin register_file rs2_read[20]
load net rs2_read[21] -attr @rip rs2_read[21] -pin id_ex_register rs2_in[21] -pin register_file rs2_read[21]
load net rs2_read[22] -attr @rip rs2_read[22] -pin id_ex_register rs2_in[22] -pin register_file rs2_read[22]
load net rs2_read[23] -attr @rip rs2_read[23] -pin id_ex_register rs2_in[23] -pin register_file rs2_read[23]
load net rs2_read[24] -attr @rip rs2_read[24] -pin id_ex_register rs2_in[24] -pin register_file rs2_read[24]
load net rs2_read[25] -attr @rip rs2_read[25] -pin id_ex_register rs2_in[25] -pin register_file rs2_read[25]
load net rs2_read[26] -attr @rip rs2_read[26] -pin id_ex_register rs2_in[26] -pin register_file rs2_read[26]
load net rs2_read[27] -attr @rip rs2_read[27] -pin id_ex_register rs2_in[27] -pin register_file rs2_read[27]
load net rs2_read[28] -attr @rip rs2_read[28] -pin id_ex_register rs2_in[28] -pin register_file rs2_read[28]
load net rs2_read[29] -attr @rip rs2_read[29] -pin id_ex_register rs2_in[29] -pin register_file rs2_read[29]
load net rs2_read[2] -attr @rip rs2_read[2] -pin id_ex_register rs2_in[2] -pin register_file rs2_read[2]
load net rs2_read[30] -attr @rip rs2_read[30] -pin id_ex_register rs2_in[30] -pin register_file rs2_read[30]
load net rs2_read[31] -attr @rip rs2_read[31] -pin id_ex_register rs2_in[31] -pin register_file rs2_read[31]
load net rs2_read[3] -attr @rip rs2_read[3] -pin id_ex_register rs2_in[3] -pin register_file rs2_read[3]
load net rs2_read[4] -attr @rip rs2_read[4] -pin id_ex_register rs2_in[4] -pin register_file rs2_read[4]
load net rs2_read[5] -attr @rip rs2_read[5] -pin id_ex_register rs2_in[5] -pin register_file rs2_read[5]
load net rs2_read[6] -attr @rip rs2_read[6] -pin id_ex_register rs2_in[6] -pin register_file rs2_read[6]
load net rs2_read[7] -attr @rip rs2_read[7] -pin id_ex_register rs2_in[7] -pin register_file rs2_read[7]
load net rs2_read[8] -attr @rip rs2_read[8] -pin id_ex_register rs2_in[8] -pin register_file rs2_read[8]
load net rs2_read[9] -attr @rip rs2_read[9] -pin id_ex_register rs2_in[9] -pin register_file rs2_read[9]
load net sign_extended_immediate[0] -attr @rip sign_extended_immediate[0] -pin id_ex_register immediate_in[0] -pin immediate sign_extended_immediate[0]
load net sign_extended_immediate[10] -attr @rip sign_extended_immediate[10] -pin id_ex_register immediate_in[10] -pin immediate sign_extended_immediate[10]
load net sign_extended_immediate[11] -attr @rip sign_extended_immediate[11] -pin id_ex_register immediate_in[11] -pin immediate sign_extended_immediate[11]
load net sign_extended_immediate[12] -attr @rip sign_extended_immediate[12] -pin id_ex_register immediate_in[12] -pin immediate sign_extended_immediate[12]
load net sign_extended_immediate[13] -attr @rip sign_extended_immediate[13] -pin id_ex_register immediate_in[13] -pin immediate sign_extended_immediate[13]
load net sign_extended_immediate[14] -attr @rip sign_extended_immediate[14] -pin id_ex_register immediate_in[14] -pin immediate sign_extended_immediate[14]
load net sign_extended_immediate[15] -attr @rip sign_extended_immediate[15] -pin id_ex_register immediate_in[15] -pin immediate sign_extended_immediate[15]
load net sign_extended_immediate[16] -attr @rip sign_extended_immediate[16] -pin id_ex_register immediate_in[16] -pin immediate sign_extended_immediate[16]
load net sign_extended_immediate[17] -attr @rip sign_extended_immediate[17] -pin id_ex_register immediate_in[17] -pin immediate sign_extended_immediate[17]
load net sign_extended_immediate[18] -attr @rip sign_extended_immediate[18] -pin id_ex_register immediate_in[18] -pin immediate sign_extended_immediate[18]
load net sign_extended_immediate[19] -attr @rip sign_extended_immediate[19] -pin id_ex_register immediate_in[19] -pin immediate sign_extended_immediate[19]
load net sign_extended_immediate[1] -attr @rip sign_extended_immediate[1] -pin id_ex_register immediate_in[1] -pin immediate sign_extended_immediate[1]
load net sign_extended_immediate[20] -attr @rip sign_extended_immediate[20] -pin id_ex_register immediate_in[20] -pin immediate sign_extended_immediate[20]
load net sign_extended_immediate[21] -attr @rip sign_extended_immediate[21] -pin id_ex_register immediate_in[21] -pin immediate sign_extended_immediate[21]
load net sign_extended_immediate[22] -attr @rip sign_extended_immediate[22] -pin id_ex_register immediate_in[22] -pin immediate sign_extended_immediate[22]
load net sign_extended_immediate[23] -attr @rip sign_extended_immediate[23] -pin id_ex_register immediate_in[23] -pin immediate sign_extended_immediate[23]
load net sign_extended_immediate[24] -attr @rip sign_extended_immediate[24] -pin id_ex_register immediate_in[24] -pin immediate sign_extended_immediate[24]
load net sign_extended_immediate[25] -attr @rip sign_extended_immediate[25] -pin id_ex_register immediate_in[25] -pin immediate sign_extended_immediate[25]
load net sign_extended_immediate[26] -attr @rip sign_extended_immediate[26] -pin id_ex_register immediate_in[26] -pin immediate sign_extended_immediate[26]
load net sign_extended_immediate[27] -attr @rip sign_extended_immediate[27] -pin id_ex_register immediate_in[27] -pin immediate sign_extended_immediate[27]
load net sign_extended_immediate[28] -attr @rip sign_extended_immediate[28] -pin id_ex_register immediate_in[28] -pin immediate sign_extended_immediate[28]
load net sign_extended_immediate[29] -attr @rip sign_extended_immediate[29] -pin id_ex_register immediate_in[29] -pin immediate sign_extended_immediate[29]
load net sign_extended_immediate[2] -attr @rip sign_extended_immediate[2] -pin id_ex_register immediate_in[2] -pin immediate sign_extended_immediate[2]
load net sign_extended_immediate[30] -attr @rip sign_extended_immediate[30] -pin id_ex_register immediate_in[30] -pin immediate sign_extended_immediate[30]
load net sign_extended_immediate[31] -attr @rip sign_extended_immediate[31] -pin id_ex_register immediate_in[31] -pin immediate sign_extended_immediate[31]
load net sign_extended_immediate[3] -attr @rip sign_extended_immediate[3] -pin id_ex_register immediate_in[3] -pin immediate sign_extended_immediate[3]
load net sign_extended_immediate[4] -attr @rip sign_extended_immediate[4] -pin id_ex_register immediate_in[4] -pin immediate sign_extended_immediate[4]
load net sign_extended_immediate[5] -attr @rip sign_extended_immediate[5] -pin id_ex_register immediate_in[5] -pin immediate sign_extended_immediate[5]
load net sign_extended_immediate[6] -attr @rip sign_extended_immediate[6] -pin id_ex_register immediate_in[6] -pin immediate sign_extended_immediate[6]
load net sign_extended_immediate[7] -attr @rip sign_extended_immediate[7] -pin id_ex_register immediate_in[7] -pin immediate sign_extended_immediate[7]
load net sign_extended_immediate[8] -attr @rip sign_extended_immediate[8] -pin id_ex_register immediate_in[8] -pin immediate sign_extended_immediate[8]
load net sign_extended_immediate[9] -attr @rip sign_extended_immediate[9] -pin id_ex_register immediate_in[9] -pin immediate sign_extended_immediate[9]
load net stall_if_id -pin hazard_detection_unit stall_if_id -pin if_id_register stall
netloc stall_if_id 1 8 3 3390 1310 NJ 1310 4110J
load net stall_pc -pin hazard_detection_unit stall_pc -pin pc_inst stall_pc
netloc stall_pc 1 8 1 3270 930n
load net target_address[0] -attr @rip target_address[0] -pin pc_control target_addr[0] -pin target_addr_mux target_address[0]
load net target_address[10] -attr @rip target_address[10] -pin pc_control target_addr[10] -pin target_addr_mux target_address[10]
load net target_address[11] -attr @rip target_address[11] -pin pc_control target_addr[11] -pin target_addr_mux target_address[11]
load net target_address[12] -attr @rip target_address[12] -pin pc_control target_addr[12] -pin target_addr_mux target_address[12]
load net target_address[13] -attr @rip target_address[13] -pin pc_control target_addr[13] -pin target_addr_mux target_address[13]
load net target_address[14] -attr @rip target_address[14] -pin pc_control target_addr[14] -pin target_addr_mux target_address[14]
load net target_address[15] -attr @rip target_address[15] -pin pc_control target_addr[15] -pin target_addr_mux target_address[15]
load net target_address[16] -attr @rip target_address[16] -pin pc_control target_addr[16] -pin target_addr_mux target_address[16]
load net target_address[17] -attr @rip target_address[17] -pin pc_control target_addr[17] -pin target_addr_mux target_address[17]
load net target_address[18] -attr @rip target_address[18] -pin pc_control target_addr[18] -pin target_addr_mux target_address[18]
load net target_address[19] -attr @rip target_address[19] -pin pc_control target_addr[19] -pin target_addr_mux target_address[19]
load net target_address[1] -attr @rip target_address[1] -pin pc_control target_addr[1] -pin target_addr_mux target_address[1]
load net target_address[20] -attr @rip target_address[20] -pin pc_control target_addr[20] -pin target_addr_mux target_address[20]
load net target_address[21] -attr @rip target_address[21] -pin pc_control target_addr[21] -pin target_addr_mux target_address[21]
load net target_address[22] -attr @rip target_address[22] -pin pc_control target_addr[22] -pin target_addr_mux target_address[22]
load net target_address[23] -attr @rip target_address[23] -pin pc_control target_addr[23] -pin target_addr_mux target_address[23]
load net target_address[24] -attr @rip target_address[24] -pin pc_control target_addr[24] -pin target_addr_mux target_address[24]
load net target_address[25] -attr @rip target_address[25] -pin pc_control target_addr[25] -pin target_addr_mux target_address[25]
load net target_address[26] -attr @rip target_address[26] -pin pc_control target_addr[26] -pin target_addr_mux target_address[26]
load net target_address[27] -attr @rip target_address[27] -pin pc_control target_addr[27] -pin target_addr_mux target_address[27]
load net target_address[28] -attr @rip target_address[28] -pin pc_control target_addr[28] -pin target_addr_mux target_address[28]
load net target_address[29] -attr @rip target_address[29] -pin pc_control target_addr[29] -pin target_addr_mux target_address[29]
load net target_address[2] -attr @rip target_address[2] -pin pc_control target_addr[2] -pin target_addr_mux target_address[2]
load net target_address[30] -attr @rip target_address[30] -pin pc_control target_addr[30] -pin target_addr_mux target_address[30]
load net target_address[31] -attr @rip target_address[31] -pin pc_control target_addr[31] -pin target_addr_mux target_address[31]
load net target_address[3] -attr @rip target_address[3] -pin pc_control target_addr[3] -pin target_addr_mux target_address[3]
load net target_address[4] -attr @rip target_address[4] -pin pc_control target_addr[4] -pin target_addr_mux target_address[4]
load net target_address[5] -attr @rip target_address[5] -pin pc_control target_addr[5] -pin target_addr_mux target_address[5]
load net target_address[6] -attr @rip target_address[6] -pin pc_control target_addr[6] -pin target_addr_mux target_address[6]
load net target_address[7] -attr @rip target_address[7] -pin pc_control target_addr[7] -pin target_addr_mux target_address[7]
load net target_address[8] -attr @rip target_address[8] -pin pc_control target_addr[8] -pin target_addr_mux target_address[8]
load net target_address[9] -attr @rip target_address[9] -pin pc_control target_addr[9] -pin target_addr_mux target_address[9]
load net zero -pin alu_unit zero -pin branch_unit_inst zero
netloc zero 1 5 1 1940 1390n
load netBundle @RTL_MUX_n_ 32 RTL_MUX_n_0 RTL_MUX_n_1 RTL_MUX_n_2 RTL_MUX_n_3 RTL_MUX_n_4 RTL_MUX_n_5 RTL_MUX_n_6 RTL_MUX_n_7 RTL_MUX_n_8 RTL_MUX_n_9 RTL_MUX_n_10 RTL_MUX_n_11 RTL_MUX_n_12 RTL_MUX_n_13 RTL_MUX_n_14 RTL_MUX_n_15 RTL_MUX_n_16 RTL_MUX_n_17 RTL_MUX_n_18 RTL_MUX_n_19 RTL_MUX_n_20 RTL_MUX_n_21 RTL_MUX_n_22 RTL_MUX_n_23 RTL_MUX_n_24 RTL_MUX_n_25 RTL_MUX_n_26 RTL_MUX_n_27 RTL_MUX_n_28 RTL_MUX_n_29 RTL_MUX_n_30 RTL_MUX_n_31 -autobundled
netbloc @RTL_MUX_n_ 1 1 19 410 150 NJ 150 NJ 150 NJ 150 NJ 150 NJ 150 NJ 150 NJ 150 NJ 150 NJ 150 4520J 370 NJ 370 5450J 10 NJ 10 NJ 10 NJ 10 NJ 10 NJ 10 8670
load netBundle @ALUControl 4 ALUControl[3] ALUControl[2] ALUControl[1] ALUControl[0] -autobundled
netbloc @ALUControl 1 4 1 1620 1170n
load netBundle @alu_or_mem_result 32 alu_or_mem_result[31] alu_or_mem_result[30] alu_or_mem_result[29] alu_or_mem_result[28] alu_or_mem_result[27] alu_or_mem_result[26] alu_or_mem_result[25] alu_or_mem_result[24] alu_or_mem_result[23] alu_or_mem_result[22] alu_or_mem_result[21] alu_or_mem_result[20] alu_or_mem_result[19] alu_or_mem_result[18] alu_or_mem_result[17] alu_or_mem_result[16] alu_or_mem_result[15] alu_or_mem_result[14] alu_or_mem_result[13] alu_or_mem_result[12] alu_or_mem_result[11] alu_or_mem_result[10] alu_or_mem_result[9] alu_or_mem_result[8] alu_or_mem_result[7] alu_or_mem_result[6] alu_or_mem_result[5] alu_or_mem_result[4] alu_or_mem_result[3] alu_or_mem_result[2] alu_or_mem_result[1] alu_or_mem_result[0] -autobundled
netbloc @alu_or_mem_result 1 18 1 8370 660n
load netBundle @alu_input1 32 alu_input1[31] alu_input1[30] alu_input1[29] alu_input1[28] alu_input1[27] alu_input1[26] alu_input1[25] alu_input1[24] alu_input1[23] alu_input1[22] alu_input1[21] alu_input1[20] alu_input1[19] alu_input1[18] alu_input1[17] alu_input1[16] alu_input1[15] alu_input1[14] alu_input1[13] alu_input1[12] alu_input1[11] alu_input1[10] alu_input1[9] alu_input1[8] alu_input1[7] alu_input1[6] alu_input1[5] alu_input1[4] alu_input1[3] alu_input1[2] alu_input1[1] alu_input1[0] -autobundled
netbloc @alu_input1 1 4 1 1620 1390n
load netBundle @alu_input2 32 alu_input2[31] alu_input2[30] alu_input2[29] alu_input2[28] alu_input2[27] alu_input2[26] alu_input2[25] alu_input2[24] alu_input2[23] alu_input2[22] alu_input2[21] alu_input2[20] alu_input2[19] alu_input2[18] alu_input2[17] alu_input2[16] alu_input2[15] alu_input2[14] alu_input2[13] alu_input2[12] alu_input2[11] alu_input2[10] alu_input2[9] alu_input2[8] alu_input2[7] alu_input2[6] alu_input2[5] alu_input2[4] alu_input2[3] alu_input2[2] alu_input2[1] alu_input2[0] -autobundled
netbloc @alu_input2 1 4 1 1600 1410n
load netBundle @alu_result 32 alu_result[31] alu_result[30] alu_result[29] alu_result[28] alu_result[27] alu_result[26] alu_result[25] alu_result[24] alu_result[23] alu_result[22] alu_result[21] alu_result[20] alu_result[19] alu_result[18] alu_result[17] alu_result[16] alu_result[15] alu_result[14] alu_result[13] alu_result[12] alu_result[11] alu_result[10] alu_result[9] alu_result[8] alu_result[7] alu_result[6] alu_result[5] alu_result[4] alu_result[3] alu_result[2] alu_result[1] alu_result[0] -autobundled
netbloc @alu_result 1 5 10 NJ 1370 2290J 1350 NJ 1350 NJ 1350 NJ 1350 3990J 1370 NJ 1370 NJ 1370 NJ 1370 6630
load netBundle @alu_operation 2 alu_operation[1] alu_operation[0] -autobundled
netbloc @alu_operation 1 12 2 4840J 70 5810
load netBundle @immediate_control 3 immediate_control[2] immediate_control[1] immediate_control[0] -autobundled
netbloc @immediate_control 1 12 1 N 190
load netBundle @dcache_read 32 dcache_read[31] dcache_read[30] dcache_read[29] dcache_read[28] dcache_read[27] dcache_read[26] dcache_read[25] dcache_read[24] dcache_read[23] dcache_read[22] dcache_read[21] dcache_read[20] dcache_read[19] dcache_read[18] dcache_read[17] dcache_read[16] dcache_read[15] dcache_read[14] dcache_read[13] dcache_read[12] dcache_read[11] dcache_read[10] dcache_read[9] dcache_read[8] dcache_read[7] dcache_read[6] dcache_read[5] dcache_read[4] dcache_read[3] dcache_read[2] dcache_read[1] dcache_read[0] -autobundled
netbloc @dcache_read 1 16 1 7540 650n
load netBundle @ex_mem_alu_result 32 ex_mem_alu_result[31] ex_mem_alu_result[30] ex_mem_alu_result[29] ex_mem_alu_result[28] ex_mem_alu_result[27] ex_mem_alu_result[26] ex_mem_alu_result[25] ex_mem_alu_result[24] ex_mem_alu_result[23] ex_mem_alu_result[22] ex_mem_alu_result[21] ex_mem_alu_result[20] ex_mem_alu_result[19] ex_mem_alu_result[18] ex_mem_alu_result[17] ex_mem_alu_result[16] ex_mem_alu_result[15] ex_mem_alu_result[14] ex_mem_alu_result[13] ex_mem_alu_result[12] ex_mem_alu_result[11] ex_mem_alu_result[10] ex_mem_alu_result[9] ex_mem_alu_result[8] ex_mem_alu_result[7] ex_mem_alu_result[6] ex_mem_alu_result[5] ex_mem_alu_result[4] ex_mem_alu_result[3] ex_mem_alu_result[2] ex_mem_alu_result[1] ex_mem_alu_result[0] -autobundled
netbloc @ex_mem_alu_result 1 2 15 850 570 NJ 570 NJ 570 NJ 570 NJ 570 NJ 570 NJ 570 NJ 570 NJ 570 NJ 570 4900J 530 5450J 730 NJ 730 7220 750 7560J
load netBundle @ex_mem_funct3 3 ex_mem_funct3[2] ex_mem_funct3[1] ex_mem_funct3[0] -autobundled
netbloc @ex_mem_funct3 1 15 1 7240 410n
load netBundle @ex_mem_immediate 32 ex_mem_immediate[31] ex_mem_immediate[30] ex_mem_immediate[29] ex_mem_immediate[28] ex_mem_immediate[27] ex_mem_immediate[26] ex_mem_immediate[25] ex_mem_immediate[24] ex_mem_immediate[23] ex_mem_immediate[22] ex_mem_immediate[21] ex_mem_immediate[20] ex_mem_immediate[19] ex_mem_immediate[18] ex_mem_immediate[17] ex_mem_immediate[16] ex_mem_immediate[15] ex_mem_immediate[14] ex_mem_immediate[13] ex_mem_immediate[12] ex_mem_immediate[11] ex_mem_immediate[10] ex_mem_immediate[9] ex_mem_immediate[8] ex_mem_immediate[7] ex_mem_immediate[6] ex_mem_immediate[5] ex_mem_immediate[4] ex_mem_immediate[3] ex_mem_immediate[2] ex_mem_immediate[1] ex_mem_immediate[0] -autobundled
netbloc @ex_mem_immediate 1 15 2 NJ 430 7640
load netBundle @ex_mem_opcode 7 ex_mem_opcode[6] ex_mem_opcode[5] ex_mem_opcode[4] ex_mem_opcode[3] ex_mem_opcode[2] ex_mem_opcode[1] ex_mem_opcode[0] -autobundled
netbloc @ex_mem_opcode 1 15 2 7080 770 NJ
load netBundle @ex_mem_pc 32 ex_mem_pc[31] ex_mem_pc[30] ex_mem_pc[29] ex_mem_pc[28] ex_mem_pc[27] ex_mem_pc[26] ex_mem_pc[25] ex_mem_pc[24] ex_mem_pc[23] ex_mem_pc[22] ex_mem_pc[21] ex_mem_pc[20] ex_mem_pc[19] ex_mem_pc[18] ex_mem_pc[17] ex_mem_pc[16] ex_mem_pc[15] ex_mem_pc[14] ex_mem_pc[13] ex_mem_pc[12] ex_mem_pc[11] ex_mem_pc[10] ex_mem_pc[9] ex_mem_pc[8] ex_mem_pc[7] ex_mem_pc[6] ex_mem_pc[5] ex_mem_pc[4] ex_mem_pc[3] ex_mem_pc[2] ex_mem_pc[1] ex_mem_pc[0] -autobundled
netbloc @ex_mem_pc 1 15 2 7180 790 NJ
load netBundle @ex_mem_rd_addr 5 ex_mem_rd_addr[4] ex_mem_rd_addr[3] ex_mem_rd_addr[2] ex_mem_rd_addr[1] ex_mem_rd_addr[0] -autobundled
netbloc @ex_mem_rd_addr 1 1 16 350 810 NJ 810 1210J 790 NJ 790 NJ 790 NJ 790 NJ 790 NJ 790 NJ 790 3990J 810 NJ 810 NJ 810 NJ 810 NJ 810 7020 810 NJ
load netBundle @ex_mem_rs2_data 32 ex_mem_rs2_data[31] ex_mem_rs2_data[30] ex_mem_rs2_data[29] ex_mem_rs2_data[28] ex_mem_rs2_data[27] ex_mem_rs2_data[26] ex_mem_rs2_data[25] ex_mem_rs2_data[24] ex_mem_rs2_data[23] ex_mem_rs2_data[22] ex_mem_rs2_data[21] ex_mem_rs2_data[20] ex_mem_rs2_data[19] ex_mem_rs2_data[18] ex_mem_rs2_data[17] ex_mem_rs2_data[16] ex_mem_rs2_data[15] ex_mem_rs2_data[14] ex_mem_rs2_data[13] ex_mem_rs2_data[12] ex_mem_rs2_data[11] ex_mem_rs2_data[10] ex_mem_rs2_data[9] ex_mem_rs2_data[8] ex_mem_rs2_data[7] ex_mem_rs2_data[6] ex_mem_rs2_data[5] ex_mem_rs2_data[4] ex_mem_rs2_data[3] ex_mem_rs2_data[2] ex_mem_rs2_data[1] ex_mem_rs2_data[0] -autobundled
netbloc @ex_mem_rs2_data 1 15 1 7060 610n
load netBundle @forwarded_rs1_data 32 forwarded_rs1_data[31] forwarded_rs1_data[30] forwarded_rs1_data[29] forwarded_rs1_data[28] forwarded_rs1_data[27] forwarded_rs1_data[26] forwarded_rs1_data[25] forwarded_rs1_data[24] forwarded_rs1_data[23] forwarded_rs1_data[22] forwarded_rs1_data[21] forwarded_rs1_data[20] forwarded_rs1_data[19] forwarded_rs1_data[18] forwarded_rs1_data[17] forwarded_rs1_data[16] forwarded_rs1_data[15] forwarded_rs1_data[14] forwarded_rs1_data[13] forwarded_rs1_data[12] forwarded_rs1_data[11] forwarded_rs1_data[10] forwarded_rs1_data[9] forwarded_rs1_data[8] forwarded_rs1_data[7] forwarded_rs1_data[6] forwarded_rs1_data[5] forwarded_rs1_data[4] forwarded_rs1_data[3] forwarded_rs1_data[2] forwarded_rs1_data[1] forwarded_rs1_data[0] -autobundled
netbloc @forwarded_rs1_data 1 3 4 1170 1610 NJ 1610 1920J 1650 2290
load netBundle @forwarded_rs2_data 32 forwarded_rs2_data[31] forwarded_rs2_data[30] forwarded_rs2_data[29] forwarded_rs2_data[28] forwarded_rs2_data[27] forwarded_rs2_data[26] forwarded_rs2_data[25] forwarded_rs2_data[24] forwarded_rs2_data[23] forwarded_rs2_data[22] forwarded_rs2_data[21] forwarded_rs2_data[20] forwarded_rs2_data[19] forwarded_rs2_data[18] forwarded_rs2_data[17] forwarded_rs2_data[16] forwarded_rs2_data[15] forwarded_rs2_data[14] forwarded_rs2_data[13] forwarded_rs2_data[12] forwarded_rs2_data[11] forwarded_rs2_data[10] forwarded_rs2_data[9] forwarded_rs2_data[8] forwarded_rs2_data[7] forwarded_rs2_data[6] forwarded_rs2_data[5] forwarded_rs2_data[4] forwarded_rs2_data[3] forwarded_rs2_data[2] forwarded_rs2_data[1] forwarded_rs2_data[0] -autobundled
netbloc @forwarded_rs2_data 1 3 12 1150 1270 NJ 1270 1940J 1110 NJ 1110 NJ 1110 3310J 1090 NJ 1090 NJ 1090 NJ 1090 NJ 1090 NJ 1090 6650
load netBundle @forward_rs1 2 forward_rs1[1] forward_rs1[0] -autobundled
netbloc @forward_rs1 1 2 1 770 410n
load netBundle @forward_rs2 2 forward_rs2[1] forward_rs2[0] -autobundled
netbloc @forward_rs2 1 2 1 730 430n
load netBundle @id_ex_alu_operation 2 id_ex_alu_operation[1] id_ex_alu_operation[0] -autobundled
netbloc @id_ex_alu_operation 1 3 12 1270 1070 NJ 1070 NJ 1070 NJ 1070 NJ 1070 3250J 1050 NJ 1050 NJ 1050 NJ 1050 NJ 1050 NJ 1050 6370
load netBundle @id_ex_funct3 3 id_ex_funct3[2] id_ex_funct3[1] id_ex_funct3[0] -autobundled
netbloc @id_ex_funct3 1 3 12 1230 1250 NJ 1250 1960 1130 NJ 1130 NJ 1130 3330J 1110 NJ 1110 NJ 1110 NJ 1110 NJ 1110 NJ 1110 6550
load netBundle @id_ex_funct7 7 id_ex_funct7[6] id_ex_funct7[5] id_ex_funct7[4] id_ex_funct7[3] id_ex_funct7[2] id_ex_funct7[1] id_ex_funct7[0] -autobundled
netbloc @id_ex_funct7 1 3 12 1290 1090 NJ 1090 NJ 1090 NJ 1090 NJ 1090 3290J 1070 NJ 1070 NJ 1070 NJ 1070 NJ 1070 NJ 1070 6330
load netBundle @id_ex_immediate 32 id_ex_immediate[31] id_ex_immediate[30] id_ex_immediate[29] id_ex_immediate[28] id_ex_immediate[27] id_ex_immediate[26] id_ex_immediate[25] id_ex_immediate[24] id_ex_immediate[23] id_ex_immediate[22] id_ex_immediate[21] id_ex_immediate[20] id_ex_immediate[19] id_ex_immediate[18] id_ex_immediate[17] id_ex_immediate[16] id_ex_immediate[15] id_ex_immediate[14] id_ex_immediate[13] id_ex_immediate[12] id_ex_immediate[11] id_ex_immediate[10] id_ex_immediate[9] id_ex_immediate[8] id_ex_immediate[7] id_ex_immediate[6] id_ex_immediate[5] id_ex_immediate[4] id_ex_immediate[3] id_ex_immediate[2] id_ex_immediate[1] id_ex_immediate[0] -autobundled
netbloc @id_ex_immediate 1 3 12 1290 1770 NJ 1770 NJ 1770 2310 1750 2790J 1690 NJ 1690 NJ 1690 NJ 1690 NJ 1690 NJ 1690 NJ 1690 6610
load netBundle @id_ex_opcode 7 id_ex_opcode[6] id_ex_opcode[5] id_ex_opcode[4] id_ex_opcode[3] id_ex_opcode[2] id_ex_opcode[1] id_ex_opcode[0] -autobundled
netbloc @id_ex_opcode 1 5 10 1960 1730 NJ 1730 2810 1750 NJ 1750 NJ 1750 NJ 1750 NJ 1750 NJ 1750 NJ 1750 6530
load netBundle @id_ex_pc 32 id_ex_pc[31] id_ex_pc[30] id_ex_pc[29] id_ex_pc[28] id_ex_pc[27] id_ex_pc[26] id_ex_pc[25] id_ex_pc[24] id_ex_pc[23] id_ex_pc[22] id_ex_pc[21] id_ex_pc[20] id_ex_pc[19] id_ex_pc[18] id_ex_pc[17] id_ex_pc[16] id_ex_pc[15] id_ex_pc[14] id_ex_pc[13] id_ex_pc[12] id_ex_pc[11] id_ex_pc[10] id_ex_pc[9] id_ex_pc[8] id_ex_pc[7] id_ex_pc[6] id_ex_pc[5] id_ex_pc[4] id_ex_pc[3] id_ex_pc[2] id_ex_pc[1] id_ex_pc[0] -autobundled
netbloc @id_ex_pc 1 3 12 1230 1450 NJ 1450 NJ 1450 2330 1370 NJ 1370 NJ 1370 3680J 1390 NJ 1390 NJ 1390 NJ 1390 NJ 1390 6410
load netBundle @id_ex_rd_addr 5 id_ex_rd_addr[4] id_ex_rd_addr[3] id_ex_rd_addr[2] id_ex_rd_addr[1] id_ex_rd_addr[0] -autobundled
netbloc @id_ex_rd_addr 1 7 8 2770 1010 3190J 990 NJ 990 NJ 990 NJ 990 NJ 990 NJ 990 6510
load netBundle @id_ex_rs1_addr 5 id_ex_rs1_addr[4] id_ex_rs1_addr[3] id_ex_rs1_addr[2] id_ex_rs1_addr[1] id_ex_rs1_addr[0] -autobundled
netbloc @id_ex_rs1_addr 1 1 14 410 310 790J 490 NJ 490 NJ 490 NJ 490 NJ 490 NJ 490 NJ 490 NJ 490 NJ 490 NJ 490 NJ 490 5530J 670 6290
load netBundle @id_ex_rs1_data 32 id_ex_rs1_data[31] id_ex_rs1_data[30] id_ex_rs1_data[29] id_ex_rs1_data[28] id_ex_rs1_data[27] id_ex_rs1_data[26] id_ex_rs1_data[25] id_ex_rs1_data[24] id_ex_rs1_data[23] id_ex_rs1_data[22] id_ex_rs1_data[21] id_ex_rs1_data[20] id_ex_rs1_data[19] id_ex_rs1_data[18] id_ex_rs1_data[17] id_ex_rs1_data[16] id_ex_rs1_data[15] id_ex_rs1_data[14] id_ex_rs1_data[13] id_ex_rs1_data[12] id_ex_rs1_data[11] id_ex_rs1_data[10] id_ex_rs1_data[9] id_ex_rs1_data[8] id_ex_rs1_data[7] id_ex_rs1_data[6] id_ex_rs1_data[5] id_ex_rs1_data[4] id_ex_rs1_data[3] id_ex_rs1_data[2] id_ex_rs1_data[1] id_ex_rs1_data[0] -autobundled
netbloc @id_ex_rs1_data 1 2 13 830 470 NJ 470 NJ 470 NJ 470 NJ 470 NJ 470 NJ 470 NJ 470 NJ 470 NJ 470 NJ 470 5570J 650 6250
load netBundle @id_ex_rs2_addr 5 id_ex_rs2_addr[4] id_ex_rs2_addr[3] id_ex_rs2_addr[2] id_ex_rs2_addr[1] id_ex_rs2_addr[0] -autobundled
netbloc @id_ex_rs2_addr 1 1 14 330 510 NJ 510 NJ 510 NJ 510 NJ 510 NJ 510 NJ 510 NJ 510 NJ 510 NJ 510 NJ 510 NJ 510 5470J 690 6190
load netBundle @id_ex_rs2_data 32 id_ex_rs2_data[31] id_ex_rs2_data[30] id_ex_rs2_data[29] id_ex_rs2_data[28] id_ex_rs2_data[27] id_ex_rs2_data[26] id_ex_rs2_data[25] id_ex_rs2_data[24] id_ex_rs2_data[23] id_ex_rs2_data[22] id_ex_rs2_data[21] id_ex_rs2_data[20] id_ex_rs2_data[19] id_ex_rs2_data[18] id_ex_rs2_data[17] id_ex_rs2_data[16] id_ex_rs2_data[15] id_ex_rs2_data[14] id_ex_rs2_data[13] id_ex_rs2_data[12] id_ex_rs2_data[11] id_ex_rs2_data[10] id_ex_rs2_data[9] id_ex_rs2_data[8] id_ex_rs2_data[7] id_ex_rs2_data[6] id_ex_rs2_data[5] id_ex_rs2_data[4] id_ex_rs2_data[3] id_ex_rs2_data[2] id_ex_rs2_data[1] id_ex_rs2_data[0] -autobundled
netbloc @id_ex_rs2_data 1 2 13 810 770 1130J 750 NJ 750 NJ 750 NJ 750 NJ 750 NJ 750 NJ 750 4030J 770 NJ 770 NJ 770 NJ 770 6230
load netBundle @if_id_instruction 32 if_id_instruction[31] if_id_instruction[30] if_id_instruction[29] if_id_instruction[28] if_id_instruction[27] if_id_instruction[26] if_id_instruction[25] if_id_instruction[24] if_id_instruction[23] if_id_instruction[22] if_id_instruction[21] if_id_instruction[20] if_id_instruction[19] if_id_instruction[18] if_id_instruction[17] if_id_instruction[16] if_id_instruction[15] if_id_instruction[14] if_id_instruction[13] if_id_instruction[12] if_id_instruction[11] if_id_instruction[10] if_id_instruction[9] if_id_instruction[8] if_id_instruction[7] if_id_instruction[6] if_id_instruction[5] if_id_instruction[4] if_id_instruction[3] if_id_instruction[2] if_id_instruction[1] if_id_instruction[0] -autobundled
netbloc @if_id_instruction 1 7 7 2830 1050 3230J 1030 NJ 1030 NJ 1030 4500 1150 4940 430 5590
load netBundle @if_id_pc 32 if_id_pc[31] if_id_pc[30] if_id_pc[29] if_id_pc[28] if_id_pc[27] if_id_pc[26] if_id_pc[25] if_id_pc[24] if_id_pc[23] if_id_pc[22] if_id_pc[21] if_id_pc[20] if_id_pc[19] if_id_pc[18] if_id_pc[17] if_id_pc[16] if_id_pc[15] if_id_pc[14] if_id_pc[13] if_id_pc[12] if_id_pc[11] if_id_pc[10] if_id_pc[9] if_id_pc[8] if_id_pc[7] if_id_pc[6] if_id_pc[5] if_id_pc[4] if_id_pc[3] if_id_pc[2] if_id_pc[1] if_id_pc[0] -autobundled
netbloc @if_id_pc 1 11 3 NJ 1250 NJ 1250 5770
load netBundle @instruction 32 instruction[31] instruction[30] instruction[29] instruction[28] instruction[27] instruction[26] instruction[25] instruction[24] instruction[23] instruction[22] instruction[21] instruction[20] instruction[19] instruction[18] instruction[17] instruction[16] instruction[15] instruction[14] instruction[13] instruction[12] instruction[11] instruction[10] instruction[9] instruction[8] instruction[7] instruction[6] instruction[5] instruction[4] instruction[3] instruction[2] instruction[1] instruction[0] -autobundled
netbloc @instruction 1 10 1 3990 1210n
load netBundle @sign_extended_immediate 32 sign_extended_immediate[31] sign_extended_immediate[30] sign_extended_immediate[29] sign_extended_immediate[28] sign_extended_immediate[27] sign_extended_immediate[26] sign_extended_immediate[25] sign_extended_immediate[24] sign_extended_immediate[23] sign_extended_immediate[22] sign_extended_immediate[21] sign_extended_immediate[20] sign_extended_immediate[19] sign_extended_immediate[18] sign_extended_immediate[17] sign_extended_immediate[16] sign_extended_immediate[15] sign_extended_immediate[14] sign_extended_immediate[13] sign_extended_immediate[12] sign_extended_immediate[11] sign_extended_immediate[10] sign_extended_immediate[9] sign_extended_immediate[8] sign_extended_immediate[7] sign_extended_immediate[6] sign_extended_immediate[5] sign_extended_immediate[4] sign_extended_immediate[3] sign_extended_immediate[2] sign_extended_immediate[1] sign_extended_immediate[0] -autobundled
netbloc @sign_extended_immediate 1 13 1 5530 190n
load netBundle @mem_wb_alu_result 32 mem_wb_alu_result[31] mem_wb_alu_result[30] mem_wb_alu_result[29] mem_wb_alu_result[28] mem_wb_alu_result[27] mem_wb_alu_result[26] mem_wb_alu_result[25] mem_wb_alu_result[24] mem_wb_alu_result[23] mem_wb_alu_result[22] mem_wb_alu_result[21] mem_wb_alu_result[20] mem_wb_alu_result[19] mem_wb_alu_result[18] mem_wb_alu_result[17] mem_wb_alu_result[16] mem_wb_alu_result[15] mem_wb_alu_result[14] mem_wb_alu_result[13] mem_wb_alu_result[12] mem_wb_alu_result[11] mem_wb_alu_result[10] mem_wb_alu_result[9] mem_wb_alu_result[8] mem_wb_alu_result[7] mem_wb_alu_result[6] mem_wb_alu_result[5] mem_wb_alu_result[4] mem_wb_alu_result[3] mem_wb_alu_result[2] mem_wb_alu_result[1] mem_wb_alu_result[0] -autobundled
netbloc @mem_wb_alu_result 1 17 1 N 670
load netBundle @mem_wb_immediate 32 mem_wb_immediate[31] mem_wb_immediate[30] mem_wb_immediate[29] mem_wb_immediate[28] mem_wb_immediate[27] mem_wb_immediate[26] mem_wb_immediate[25] mem_wb_immediate[24] mem_wb_immediate[23] mem_wb_immediate[22] mem_wb_immediate[21] mem_wb_immediate[20] mem_wb_immediate[19] mem_wb_immediate[18] mem_wb_immediate[17] mem_wb_immediate[16] mem_wb_immediate[15] mem_wb_immediate[14] mem_wb_immediate[13] mem_wb_immediate[12] mem_wb_immediate[11] mem_wb_immediate[10] mem_wb_immediate[9] mem_wb_immediate[8] mem_wb_immediate[7] mem_wb_immediate[6] mem_wb_immediate[5] mem_wb_immediate[4] mem_wb_immediate[3] mem_wb_immediate[2] mem_wb_immediate[1] mem_wb_immediate[0] -autobundled
netbloc @mem_wb_immediate 1 17 2 8110J 740 8390
load netBundle @mem_wb_mem_data 32 mem_wb_mem_data[31] mem_wb_mem_data[30] mem_wb_mem_data[29] mem_wb_mem_data[28] mem_wb_mem_data[27] mem_wb_mem_data[26] mem_wb_mem_data[25] mem_wb_mem_data[24] mem_wb_mem_data[23] mem_wb_mem_data[22] mem_wb_mem_data[21] mem_wb_mem_data[20] mem_wb_mem_data[19] mem_wb_mem_data[18] mem_wb_mem_data[17] mem_wb_mem_data[16] mem_wb_mem_data[15] mem_wb_mem_data[14] mem_wb_mem_data[13] mem_wb_mem_data[12] mem_wb_mem_data[11] mem_wb_mem_data[10] mem_wb_mem_data[9] mem_wb_mem_data[8] mem_wb_mem_data[7] mem_wb_mem_data[6] mem_wb_mem_data[5] mem_wb_mem_data[4] mem_wb_mem_data[3] mem_wb_mem_data[2] mem_wb_mem_data[1] mem_wb_mem_data[0] -autobundled
netbloc @mem_wb_mem_data 1 17 1 8070 650n
load netBundle @mem_wb_opcode 7 mem_wb_opcode[6] mem_wb_opcode[5] mem_wb_opcode[4] mem_wb_opcode[3] mem_wb_opcode[2] mem_wb_opcode[1] mem_wb_opcode[0] -autobundled
netbloc @mem_wb_opcode 1 17 2 NJ 770 N
load netBundle @mem_wb_pc 32 mem_wb_pc[31] mem_wb_pc[30] mem_wb_pc[29] mem_wb_pc[28] mem_wb_pc[27] mem_wb_pc[26] mem_wb_pc[25] mem_wb_pc[24] mem_wb_pc[23] mem_wb_pc[22] mem_wb_pc[21] mem_wb_pc[20] mem_wb_pc[19] mem_wb_pc[18] mem_wb_pc[17] mem_wb_pc[16] mem_wb_pc[15] mem_wb_pc[14] mem_wb_pc[13] mem_wb_pc[12] mem_wb_pc[11] mem_wb_pc[10] mem_wb_pc[9] mem_wb_pc[8] mem_wb_pc[7] mem_wb_pc[6] mem_wb_pc[5] mem_wb_pc[4] mem_wb_pc[3] mem_wb_pc[2] mem_wb_pc[1] mem_wb_pc[0] -autobundled
netbloc @mem_wb_pc 1 0 18 20 290 NJ 290 NJ 290 NJ 290 NJ 290 NJ 290 NJ 290 NJ 290 NJ 290 NJ 290 NJ 290 4460J 410 4840J 450 5610J 630 6430J 310 NJ 310 NJ 310 8050
load netBundle @mem_wb_rd_addr 5 mem_wb_rd_addr[4] mem_wb_rd_addr[3] mem_wb_rd_addr[2] mem_wb_rd_addr[1] mem_wb_rd_addr[0] -autobundled
netbloc @mem_wb_rd_addr 1 1 17 390 530 NJ 530 NJ 530 NJ 530 NJ 530 NJ 530 NJ 530 NJ 530 NJ 530 NJ 530 NJ 530 4880 550 5430J 750 NJ 750 7200J 490 NJ 490 8030
load netBundle @mem_wb_write_data 32 mem_wb_write_data[31] mem_wb_write_data[30] mem_wb_write_data[29] mem_wb_write_data[28] mem_wb_write_data[27] mem_wb_write_data[26] mem_wb_write_data[25] mem_wb_write_data[24] mem_wb_write_data[23] mem_wb_write_data[22] mem_wb_write_data[21] mem_wb_write_data[20] mem_wb_write_data[19] mem_wb_write_data[18] mem_wb_write_data[17] mem_wb_write_data[16] mem_wb_write_data[15] mem_wb_write_data[14] mem_wb_write_data[13] mem_wb_write_data[12] mem_wb_write_data[11] mem_wb_write_data[10] mem_wb_write_data[9] mem_wb_write_data[8] mem_wb_write_data[7] mem_wb_write_data[6] mem_wb_write_data[5] mem_wb_write_data[4] mem_wb_write_data[3] mem_wb_write_data[2] mem_wb_write_data[1] mem_wb_write_data[0] -autobundled
netbloc @mem_wb_write_data 1 2 11 750 750 1110J 730 NJ 730 NJ 730 NJ 730 NJ 730 NJ 730 NJ 730 NJ 730 NJ 730 4840
load netBundle @pc_next 32 pc_next[31] pc_next[30] pc_next[29] pc_next[28] pc_next[27] pc_next[26] pc_next[25] pc_next[24] pc_next[23] pc_next[22] pc_next[21] pc_next[20] pc_next[19] pc_next[18] pc_next[17] pc_next[16] pc_next[15] pc_next[14] pc_next[13] pc_next[12] pc_next[11] pc_next[10] pc_next[9] pc_next[8] pc_next[7] pc_next[6] pc_next[5] pc_next[4] pc_next[3] pc_next[2] pc_next[1] pc_next[0] -autobundled
netbloc @pc_next 1 8 1 3410 1210n
load netBundle @pc_increment 32 pc_increment[31] pc_increment[30] pc_increment[29] pc_increment[28] pc_increment[27] pc_increment[26] pc_increment[25] pc_increment[24] pc_increment[23] pc_increment[22] pc_increment[21] pc_increment[20] pc_increment[19] pc_increment[18] pc_increment[17] pc_increment[16] pc_increment[15] pc_increment[14] pc_increment[13] pc_increment[12] pc_increment[11] pc_increment[10] pc_increment[9] pc_increment[8] pc_increment[7] pc_increment[6] pc_increment[5] pc_increment[4] pc_increment[3] pc_increment[2] pc_increment[1] pc_increment[0] -autobundled
netbloc @pc_increment 1 7 1 2750 1450n
load netBundle @pc 32 pc[31] pc[30] pc[29] pc[28] pc[27] pc[26] pc[25] pc[24] pc[23] pc[22] pc[21] pc[20] pc[19] pc[18] pc[17] pc[16] pc[15] pc[14] pc[13] pc[12] pc[11] pc[10] pc[9] pc[8] pc[7] pc[6] pc[5] pc[4] pc[3] pc[2] pc[1] pc[0] -autobundled
netbloc @pc 1 6 5 2370 1390 NJ 1390 NJ 1390 3660 1270 3990J
load netBundle @pc_plus_4 32 pc_plus_4[31] pc_plus_4[30] pc_plus_4[29] pc_plus_4[28] pc_plus_4[27] pc_plus_4[26] pc_plus_4[25] pc_plus_4[24] pc_plus_4[23] pc_plus_4[22] pc_plus_4[21] pc_plus_4[20] pc_plus_4[19] pc_plus_4[18] pc_plus_4[17] pc_plus_4[16] pc_plus_4[15] pc_plus_4[14] pc_plus_4[13] pc_plus_4[12] pc_plus_4[11] pc_plus_4[10] pc_plus_4[9] pc_plus_4[8] pc_plus_4[7] pc_plus_4[6] pc_plus_4[5] pc_plus_4[4] pc_plus_4[3] pc_plus_4[2] pc_plus_4[1] pc_plus_4[0] -autobundled
netbloc @pc_plus_4 1 1 1 NJ 200
load netBundle @rs1_read 32 rs1_read[31] rs1_read[30] rs1_read[29] rs1_read[28] rs1_read[27] rs1_read[26] rs1_read[25] rs1_read[24] rs1_read[23] rs1_read[22] rs1_read[21] rs1_read[20] rs1_read[19] rs1_read[18] rs1_read[17] rs1_read[16] rs1_read[15] rs1_read[14] rs1_read[13] rs1_read[12] rs1_read[11] rs1_read[10] rs1_read[9] rs1_read[8] rs1_read[7] rs1_read[6] rs1_read[5] rs1_read[4] rs1_read[3] rs1_read[2] rs1_read[1] rs1_read[0] -autobundled
netbloc @rs1_read 1 13 1 5550 490n
load netBundle @rs2_read 32 rs2_read[31] rs2_read[30] rs2_read[29] rs2_read[28] rs2_read[27] rs2_read[26] rs2_read[25] rs2_read[24] rs2_read[23] rs2_read[22] rs2_read[21] rs2_read[20] rs2_read[19] rs2_read[18] rs2_read[17] rs2_read[16] rs2_read[15] rs2_read[14] rs2_read[13] rs2_read[12] rs2_read[11] rs2_read[10] rs2_read[9] rs2_read[8] rs2_read[7] rs2_read[6] rs2_read[5] rs2_read[4] rs2_read[3] rs2_read[2] rs2_read[1] rs2_read[0] -autobundled
netbloc @rs2_read 1 13 1 5490 530n
load netBundle @target_address 32 target_address[31] target_address[30] target_address[29] target_address[28] target_address[27] target_address[26] target_address[25] target_address[24] target_address[23] target_address[22] target_address[21] target_address[20] target_address[19] target_address[18] target_address[17] target_address[16] target_address[15] target_address[14] target_address[13] target_address[12] target_address[11] target_address[10] target_address[9] target_address[8] target_address[7] target_address[6] target_address[5] target_address[4] target_address[3] target_address[2] target_address[1] target_address[0] -autobundled
netbloc @target_address 1 7 1 2750 1590n
levelinfo -pg 1 0 200 560 980 1420 1740 2060 2540 3000 3520 3810 4250 4620 5160 5960 6810 7360 7780 8240 8540 8690
pagesize -pg 1 -db -bbox -sgen -80 0 8690 1800
show
fullfit
#
# initialize ictrl to current module top work:top:NOFILE
ictrl init topinfo |
