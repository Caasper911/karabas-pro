#!/bin/sh

ghdl -a --ieee=synopsys dram2sram.vhd
ghdl -a --ieee=synopsys dram2sram_tb.vhd
ghdl -r --ieee=synopsys dram2sram_tb --stop-time=1ms --wave=dram2sram_tb.ghw

