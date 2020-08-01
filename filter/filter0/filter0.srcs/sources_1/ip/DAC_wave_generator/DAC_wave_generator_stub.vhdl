-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sat Aug  1 08:35:42 2020
-- Host        : LAPTOP-J4K0GMMC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top DAC_wave_generator -prefix
--               DAC_wave_generator_ Driver_DAC_0_stub.vhdl
-- Design      : Driver_DAC_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7s15ftgb196-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DAC_wave_generator is
  Port ( 
    clk_100MHz : in STD_LOGIC;
    clk_DAC : in STD_LOGIC;
    DAC_En : in STD_LOGIC;
    Wave_Mode : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Phase : in STD_LOGIC_VECTOR ( 8 downto 0 );
    DAC_Din : out STD_LOGIC;
    DAC_Sync : out STD_LOGIC
  );

end DAC_wave_generator;

architecture stub of DAC_wave_generator is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_100MHz,clk_DAC,DAC_En,Wave_Mode[1:0],Phase[8:0],DAC_Din,DAC_Sync";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "Driver_DAC,Vivado 2018.3";
begin
end;
