# COE 608 Lab 6 – Complete 32-bit CPU

**Course:** COE 608 – Computer Organization and Architecture  
**Tools:** VHDL, Intel Quartus Prime

## Overview

Combines the datapath and control unit from the earlier labs into a working CPU (`cpu1.vhd`), with instruction/data memory (`system_memory.vhd`, `system_memory.mif`), a reset circuit and a simulation testbench (`cpu_test_sim.vhd`, `cpu_test_sim.vwf`).

## Build / run

Open the `.qpf` project (or create one and add the `.vhd`/`.bdf` files) in Intel Quartus Prime, compile, then program the Altera DE2 board or simulate with the `.vwf` waveform file.
