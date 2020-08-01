set_property SRC_FILE_INFO {cfile:d:/vivado_project/SEA-master/Examples/FPGA/4.Module-Interface/DAC-Interface/DAC_Demo/DAC_Demo.srcs/sources_1/ip/clk_5_10/clk_5_10.xdc rfile:../../../DAC_Demo.srcs/sources_1/ip/clk_5_10/clk_5_10.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
