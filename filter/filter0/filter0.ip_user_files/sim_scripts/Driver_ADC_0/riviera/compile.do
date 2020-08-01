vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/blk_mem_gen_v8_4_2

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap blk_mem_gen_v8_4_2 riviera/blk_mem_gen_v8_4_2

vlog -work xil_defaultlib  -sv2k12 \
"D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_4_2  -v2k5 \
"../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../filter0.srcs/sources_1/ip/Driver_ADC_0/src/Wave_Ram/sim/Wave_Ram.v" \
"../../../../filter0.srcs/sources_1/ip/Driver_ADC_0/sim/Clk_Division.v" \
"../../../../filter0.srcs/sources_1/ip/Driver_ADC_0/sim/Freq_Cal.v" \
"../../../../filter0.srcs/sources_1/ip/Driver_ADC_0/sim/Driver_ADC.v" \
"../../../../filter0.srcs/sources_1/ip/Driver_ADC_0/sim/Driver_ADC_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

