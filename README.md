# HU-CA-Project

## Team Members

- Muhammad Jazzel Mehmood (mm06886)
- Sijjil Khan (sk06900)

# Description

To build a 5-stage pipelined processor capable of executing any one array sorting algorithm other than the bubble
sort.
Basically, you will be converting your single cycle processor to a pipelined one. Normally the instructions you have
already implemented should enable you to execute a sorting algorithm program with small additions i.e., you might
need to implement the bgt or blt instruction, or something similar, so that you know when you’d need to sdap two
values. This would require small modifications to the circuit.

## Routes

- `./Assets` contains screenshots of results obtained from the modules for the report.
- `./Source` contains subdirectories:
  - `Sorting Algorithm` contains the insertion sort algorithm converted to Assembly language for RISC-V architectrue and machine language code for the instruction memory of the processor.
  - `Single Cycle Processor` contains the modules for single cycle implementation of the RISC-V processor.
  - `Pipelined Processor` contains the modules for pipelined 5-stages implementation of the RISC-V processor.
  - `Pipelined Processor with Stalling and Forwarding` contains the modules for pipelined 5-stages with forwarding and stall logic implementation of the RISC-V processor.
- `Report` contains the report for the project.
