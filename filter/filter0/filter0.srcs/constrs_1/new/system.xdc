## Clock signal 100 MHz
set_property -dict { PACKAGE_PIN H4  IOSTANDARD LVCMOS33 } [get_ports { clk_100MHz }]; #IO_L13P_T2_MRCC_35 Sch=sysclk
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports { clk_100MHz }];

#######ADC
set_property PACKAGE_PIN J4 [get_ports ADC_En]
set_property IOSTANDARD LVCMOS33 [get_ports ADC_En]
set_property PACKAGE_PIN C5 [get_ports clk_ADC]
set_property IOSTANDARD LVCMOS33 [get_ports clk_ADC]

set_property PACKAGE_PIN J3 [get_ports ADC_Data[0]]
set_property PACKAGE_PIN J2 [get_ports ADC_Data[1]]
set_property PACKAGE_PIN D12 [get_ports ADC_Data[2]]
set_property PACKAGE_PIN E12 [get_ports ADC_Data[3]]
set_property PACKAGE_PIN F12 [get_ports ADC_Data[4]]
set_property PACKAGE_PIN C11 [get_ports ADC_Data[5]]
set_property PACKAGE_PIN H11 [get_ports ADC_Data[6]]
set_property PACKAGE_PIN H12 [get_ports ADC_Data[7]]
set_property IOSTANDARD LVCMOS33 [get_ports ADC_Data[0]]
set_property IOSTANDARD LVCMOS33 [get_ports ADC_Data[1]]
set_property IOSTANDARD LVCMOS33 [get_ports ADC_Data[2]]
set_property IOSTANDARD LVCMOS33 [get_ports ADC_Data[3]]
set_property IOSTANDARD LVCMOS33 [get_ports ADC_Data[4]]
set_property IOSTANDARD LVCMOS33 [get_ports ADC_Data[5]]
set_property IOSTANDARD LVCMOS33 [get_ports ADC_Data[6]]
set_property IOSTANDARD LVCMOS33 [get_ports ADC_Data[7]]

#DAC
set_property PACKAGE_PIN L1 [get_ports DAC_Din]
set_property PACKAGE_PIN M1 [get_ports clk_DAC]
set_property PACKAGE_PIN N1 [get_ports DAC_Sync]
set_property IOSTANDARD LVCMOS33 [get_ports DAC_Din]
set_property IOSTANDARD LVCMOS33 [get_ports clk_DAC]
set_property IOSTANDARD LVCMOS33 [get_ports DAC_Sync]