# 4-bit Carry Skip Adder (CSA) – RTL Design and Verification

## Overview

This project implements a 4-bit Carry Skip Adder (CSA) using Verilog HDL and verifies its functionality using a SystemVerilog testbench. The Carry Skip Adder improves addition speed by reducing carry propagation delay compared to the conventional Ripple Carry Adder (RCA).

The design demonstrates digital design concepts, RTL implementation, and functional verification methodology used in VLSI design and verification.

---

## Objectives

- Design a 4-bit Carry Skip Adder using Verilog HDL
- Improve carry propagation speed compared to Ripple Carry Adder
- Verify functionality using SystemVerilog testbench
- Perform functional simulation and waveform analysis
- Gain hands-on experience in RTL design and verification

---

## Design Description

The Carry Skip Adder improves performance by allowing the carry signal to bypass intermediate full adders when propagate conditions are satisfied.

### Key Components

- Full Adder blocks
- Propagate logic
- Carry skip logic
- Sum and carry output logic

### Inputs

- A [3:0] – First operand
- B [3:0] – Second operand
- Cin – Carry input

### Outputs

- Sum [3:0] – Result
- Cout – Carry output

---

## Verification Methodology

The design was verified using a SystemVerilog testbench with the following features:

- Multiple input test cases
- Functional verification of sum and carry outputs
- Simulation using Icarus Verilog
- Waveform analysis using GTKWave
- Debugging and validation of correct functionality

---

## Simulation Tools Used

- Icarus Verilog
- GTKWave
- Linux (Linux Mint)

---

## Results

The Carry Skip Adder successfully performs addition and reduces carry propagation delay compared to Ripple Carry Adder.

Functional correctness was verified using simulation and waveform analysis.

---

## Repository Structure
