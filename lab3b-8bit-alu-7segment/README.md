# COE 608 Lab 3b – 8-bit ALU on the DE2 Board

**Course:** COE 608 – Computer Organization and Architecture  
**Tools:** VHDL, Intel Quartus Prime, DE2 board

## Overview

An 8-bit ALU (`ALU_8bit.vhd`, built from 4-bit and 8-bit adders) wired to the DE2 board's switches. The result is shown on the 7-segment displays (`sevenSeg_8bit.vhd`), and `lab3_b.vhd` is the top level.

## Build / run

Open the `.qpf` project (or create one and add the `.vhd`/`.bdf` files) in Intel Quartus Prime, compile, then program the Altera DE2 board or simulate with the `.vwf` waveform file.
