# XDC file for RISC-V CPU synthesis in Vivado
# This file contains pin assignments and timing constraints for the RISC-V CPU design

# Clock constraint - 100MHz system clock (matching testbench frequency)
# Period = 10ns for 100MHz (1/20MHz = 50ns)

create_clock -period 10.00 -name sys_clk [get_ports clk]

# Clock pin assignment for common FPGA boards
# Uncomment and modify based on your specific board:

# For Nexys A7/Nexys 4 DDR (100MHz oscillator)
set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports clk]

# For Basys 3 (100MHz oscillator)
# set_property -dict {PACKAGE_PIN W5 IOSTANDARD LVCMOS33} [get_ports clk]

# For Arty A7 (100MHz oscillator)
# set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports clk]

# For ZedBoard (100MHz oscillator)
# set_property -dict {PACKAGE_PIN Y9 IOSTANDARD LVCMOS33} [get_ports clk]

# Reset pin assignment
# Using a button for reset - active high
# For Nexys A7/Nexys 4 DDR (CPU reset button)
set_property -dict {PACKAGE_PIN C12 IOSTANDARD LVCMOS33} [get_ports reset]

# For Basys 3 (center button)
# set_property -dict {PACKAGE_PIN U18 IOSTANDARD LVCMOS33} [get_ports reset]

# For Arty A7 (reset button)
# set_property -dict {PACKAGE_PIN C2 IOSTANDARD LVCMOS33} [get_ports reset]

# For ZedBoard (reset button)
# set_property -dict {PACKAGE_PIN P16 IOSTANDARD LVCMOS25} [get_ports reset]

# Additional constraints for better synthesis results
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

# Timing constraints
# Input delay constraint for reset signal (assuming it comes from external button)
set_input_delay -clock [get_clocks sys_clk] -min 0.000 [get_ports reset]
set_input_delay -clock [get_clocks sys_clk] -max 2.000 [get_ports reset]

# Optional: Add false path for reset to avoid timing analysis on async reset
set_false_path -from [get_ports reset]

# Synthesis and implementation options for better results
set_property SEVERITY {Warning} [get_drc_checks UCIO-1]
set_property SEVERITY {Warning} [get_drc_checks NSTD-1]

# Optional: Memory configuration for block RAM inference
# These help Vivado properly infer block RAMs for your instruction and data memories
set_property RAM_STYLE block [get_cells -hier -filter {REF_NAME==instruction_memory}]
set_property RAM_STYLE block [get_cells -hier -filter {REF_NAME==data_mem}]

# Optional: Add constraints for register file if you want to control its implementation
# set_property RAM_STYLE distributed [get_cells -hier -filter {REF_NAME==regfile}]

# Placement constraints (optional)
# These can help with timing closure for larger designs
# set_property LOC SLICE_X50Y50 [get_cells your_critical_logic_instance]

# Additional timing constraints for internal clocks (if any)
# If your design uses generated clocks, add them here
# create_generated_clock -name internal_clk -source [get_pins pll_inst/CLKIN] -divide_by 2 [get_pins pll_inst/CLKOUT]

# Power optimization (optional)
# set_property POWER_OPT.PAR_HIGH_EFFORT true [current_design]

# Debug constraints (if using ILA or other debug cores)
# set_property C_CLK_INPUT_FREQ_HZ 100000000 [get_debug_cores dbg_hub]
# set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]

# Board-specific constraints
# Uncomment and modify based on your target board:

# For boards with dedicated configuration pins
# set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
# set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]
# set_property CONFIG_MODE SPIx4 [current_design]

# Temperature and voltage monitoring (for advanced boards)
# set_operating_conditions -airflow 250 -heatsink medium

# End of XDC file
