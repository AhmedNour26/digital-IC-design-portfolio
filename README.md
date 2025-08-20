# Digital IC Design Diploma – Portfolio

This repo aggregates ~50 Verilog modules across 11 assignments, plus two capstone projects:
- **Project 1:** Spartan-6 DSP48A1 slice design & flow (QuestaSim + Vivado)
- **Project 2:** SPI Slave with Single-Port RAM (FSM encodings + implementation flow)

> Certificate and detailed evidence (waveforms, lint, timing, utilization, device views) are captured in `docs/` and each project's README.

---

## Skills & Tools
- Solid Knowledge of Digital/RTL Design Basics
- Solid Knowledge of Hardware Description Languages: Verilog
- Solid Knowledge of Verilog synthesis constructs
- Basic simulation usage using QuestaSim
- Knowledge in Static Timing Analysis (STA) and Clock Domain Crossing (CDC) techniques
- Knowledge in Formal Verification using Questa Lint, Questa CDC & Questa RDC
- Basic Knowledge in low power design techniques
- Knowledge of FPGA design flow and architecture
- Knowledge of Vivado design flow using IP catalog and debug cores
- Introduction to FPGA-based Prototyping & Partitioning Challenges

## Modules by Assignment

Here is a comprehensive list of the Verilog modules I implemented across the diploma assignments.  
(Some names are descriptive/inferred from the assignment briefs, since the exact `module xyz` names were left to students.)

### Assignment 1
- `comparator_4bit_range` — 4-bit comparator that outputs HIGH if input is >0010 and <1000
- `logic_f_circuit` — combinational logic to generate F=1 under specific conditions
- `zero_comparator_3bit` — 3-bit comparator using one gate to detect input == 000
- `alu_1bit` — 1-bit ALU using multiplexers/conditional ops
- `logic_circuit_7in_2out` — 7-input/2-output combinational logic circuit
- `behavioral_circuit_5in_2out` — behavioral circuit with multiple inputs and select
- `adder_4bit` — 4-bit adder using `+` operator
- `decoder_2to4` — 2-to-4 decoder (conditional operator)
- `parity_gen_even` — 8-bit even parity generator
- `alu_7seg_display` — 4-bit ALU connected to 7-seg display

### Assignment 2
- `encoder_gray_onehot` — Gray or one-hot encoder (parameterizable)
- `demux_1to4` — 1-to-4 demux
- `alu_nbit` — parameterized N-bit ALU
- `alu_sequential` — sequential ALU (clk, rst)
- `data_latch_clear` — latch with active-low clear
- `latch_aset_aclr` — parameterized latch with async set/clear
- `tff_async_reset` — T flip-flop with async reset
- `dff_async_reset` — D flip-flop with async reset
- `ff_param` — parameterized FF (D or T)

### Assignment 3
- `bcd_counter_mod10` — MOD-10 BCD counter
- `ripple_counter_4bit` — ripple counter (structural, DFF-based)
- `shift_reg_param_adv` — parameterized shift register with load/set/clear
- `sle_seq_logic` — sequential logic element (acts as FF or latch)
- `sync_counter_4bit_set` — 4-bit synchronous counter with async set
- `counter_div_2_4` — synchronous counter with div2/div4 outputs
- `gray_counter_2bit` — 2-bit Gray counter

### Assignment 4
- `lfsr_4bit` — 4-bit linear feedback shift register
- `adder_param` — parameterized N-bit adder
- `shift_reg_param` — parameterized shift register (direction/amount)
- `alsu_unit` — Arithmetic Logic Shift Unit (ALSU)

### Assignment 5
- `car_control_fsm` — Moore FSM for car control
- `gray_counter_fsm_2bit` — FSM-based Gray counter
- `sequence_detector_mealy` — Mealy FSM for sequence detection
- `ram_single_port` — single-port synchronous RAM
- `fifo_buffer` — FIFO buffer

