set_property PACKAGE_PIN W3 [get_ports Clock]
set_property IOSTANDARD LVCMOS33 [get_ports Clock]

create_clock -add -name sys_clk_pin -period 10 -waveform {0 5} [get_ports Clock]

set_property PACKAGE_PIN D9 [get_ports BTN0]
set_property IOSTANDARD LVCMOS33 [get_ports BTN0]

set_property PACKAGE_PIN C9 [get_ports BTN1]
set_property IOSTANDARD LVCMOS33 [get_ports BTN1]

set_property PACKAGE_PIN H5 [get_ports LED0]
set_property IOSTANDARD LVCMOS33 [get_ports LED0]

set_property PACKAGE_PIN J5 [get_ports LED1]
set_property IOSTANDARD LVCMOS33 [get_ports LED1]

set_property PACKAGE_PIN T9 [get_ports LED2]
set_property IOSTANDARD LVCMOS33 [get_ports LED2]

set_property PACKAGE_PIN T10 [get_ports LED3]
set_property IOSTANDARD LVCMOS33 [get_ports LED3]

set_property CFGBVS VCCO  [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
