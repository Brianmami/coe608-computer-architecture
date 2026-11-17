# COE 608 Lab 5 – CPU Control Unit

**Course:** COE 608 – Computer Organization and Architecture  
**Tools:** VHDL, Intel Quartus Prime

## Overview

A multi-cycle FSM control unit (`control_new.vhd`) that decodes each instruction (load/store, ALU operations, `JUMP`, `BEQ`, …) and drives the datapath's control signals in each state.

## Build / run

Open the `.qpf` project (or create one and add the `.vhd`/`.bdf` files) in Intel Quartus Prime, compile, then program the Altera DE2 board or simulate with the `.vwf` waveform file.
