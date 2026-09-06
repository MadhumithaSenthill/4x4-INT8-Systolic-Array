# 4×4 INT8 Systolic Array Accelerator

A 4×4 systolic-array-inspired hardware accelerator designed using Verilog RTL for matrix multiplication and multiply-accumulate (MAC) operations.

## Project Overview

This project implements a 4×4 array of Processing Elements (PEs), where each PE performs multiply-accumulate operations on 8-bit input data.

The design includes:

- 4×4 Processing Element (PE) array
- INT8/8-bit arithmetic
- Multiply-Accumulate (MAC) operation
- Control logic for starting and completing computation
- Verilog RTL implementation
- Self-checking testbench development
- Waveform-based simulation

##  Architecture

The design consists of three main blocks:

1. **Processing Element (PE)**
   - Performs multiplication of two input values.
   - Accumulates the multiplication result.

2. **Controller**
   - Generates the enable signal.
   - Controls the computation period.
   - Generates the `done` signal.

3. **4×4 Array**
   - Contains 16 Processing Elements.
   - Produces 16 output values.

### Block Structure

                 ┌─────────────────────┐
                 │     Controller      │
                 │                     │
                 │ Start → Enable      │
                 │        → Done       │
                 └──────────┬──────────┘
                            │
                            ▼
        ┌──────────────────────────────────┐
        │          4 × 4 PE Array          │
        │                                  │
        │  PE11  PE12  PE13  PE14         │
        │  PE21  PE22  PE23  PE24         │
        │  PE31  PE32  PE33  PE34         │
        │  PE41  PE42  PE43  PE44         │
        │                                  │
        └──────────────────────────────────┘
                            │
                            ▼
                     Matrix Outputs


## Project Structure
```text
4x4-int8-systolic-array/
│
├── rtl/
│   ├── controller.v
│   ├── pe.v
│   ├── systolic_2x2.v
│   ├── systolic_4x4.v
│   └── top_module.v
│
└── tb/
    └── top_module_tb.v
```

## Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- OpenLane
- OpenROAD
- Sky130 PDK
- VS Code
- GitHub

## Simulation

The testbench applies matrix input values and generates a VCD waveform file for signal analysis.

Example simulation flow:
```text
iverilog -o systolic_sim rtl/*.v tb/top_module_tb.v
vvp systolic_sim
gtkwave wave.vcd
```

## Current Design

The current implementation contains:

- 16 Processing Elements
- 8-bit input operands
- 16-bit accumulated output
- Controller-based enable and completion signals
- Verilog testbench
- VCD waveform generation

## Future Improvements

- Implement true systolic data movement between neighboring PEs
- Add signed INT8 arithmetic
- Improve accumulator width
- Add SystemVerilog assertions
- Add functional coverage
- Develop a constrained-random verification environment
- Generate and document detailed area, timing, and power reports
- Visual/screenshot of GDSII layout in README

## Author
**Madhumitha Senthil**

Electronics and Communication Engineering

Aspiring VLSI / RTL Design Engineer

