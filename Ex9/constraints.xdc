##############################################
# Part         - xcvu9p
# Package      - fsgd2104
# Speed grade  - -2L
# Xilinx Reference Board is VCU1525
###############################################################################

# General configuration - Do not modify
set_property CFGBVS GND                                [current_design]
set_property CONFIG_VOLTAGE 1.8                        [current_design]
set_property BITSTREAM.GENERAL.COMPRESS true           [current_design]
set_property BITSTREAM.CONFIG.EXTMASTERCCLK_EN {DIV-1} [current_design]
set_property BITSTREAM.CONFIG.SPI_32BIT_ADDR YES       [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4           [current_design]
set_property BITSTREAM.CONFIG.SPI_FALL_EDGE YES        [current_design]

#############################################################################################################

set_property PACKAGE_PIN AR22 [clk_p]
set_property IOSTANDARD LVCMOS15 [clk_p]

set_property PACKAGE_PIN AR22 [clk_n]
set_property IOSTANDARD LVCMOS15 [clk_n]

set_property PACKAGE_PIN AR22 [rst_n]
set_property IOSTANDARD LVCMOS15 [rst_n]

set_property PACKAGE_PIN AR22 [button]
set_property IOSTANDARD LVCMOS15 [button]

set_property PACKAGE_PIN AR22 [led_0]
set_property IOSTANDARD LVCMOS15 [led_0]

set_property PACKAGE_PIN AR22 [led_1]
set_property IOSTANDARD LVCMOS15 [led_1]

set_property PACKAGE_PIN AR22 [led_2]
set_property IOSTANDARD LVCMOS15 [led_2]




