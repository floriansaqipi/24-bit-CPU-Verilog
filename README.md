# 24-Bit Single Cycle CPU Implementation

## Project Overview

This repository contains the collective work of our team in the subject of Computer Architecture. Our project is focused on the implementation of a 24-bit CPU based on a single cycle datapath. The core components of this CPU have been designed and implemented using the Verilog hardware description language. For simulation purposes, we have utilized the Vivado software, which allowed us to test and refine the CPU's performance and functionality.

The CPU is capable of executing instructions that are loaded into its instruction memory. We have taken a modular approach in our design process, coding individual components that constitute the CPU. These include:

- Arithmetic Logic Unit (ALU)
- Shifter
- ALU Control
- Control Unit
- Data Memory
- Instruction Memory
- Full Adder
- Multiplier
- Registers
- Various Multiplexers

Each component was tested individually to ensure its proper function before integrating them to form the complete datapath. The integration of these components, along with the Control Unit, constitutes the entirety of the 24-bit Single Cycle Datapath CPU.

## Technical Aspects

The project was developed through meticulous testing and integration phases. Each component was first tested as a separate entity to guarantee its functionality and performance. Subsequently, these components were combined to assemble the CPU's datapath. The Control Unit was then integrated with the datapath to finalize the construction of the 24-bit Single Cycle CPU. This comprehensive approach ensured the creation of a robust and efficient CPU design.

## Requirements

To run and simulate the project, the following requirements must be met:

- Vivado software must be installed on your machine. This software is essential for importing the project, simulating the CPU, and viewing the results through various graphing techniques provided by Verilog.

### How to Run

1. Ensure that Vivado software is installed and properly set up on your system.
2. Import the Kodi Section and the memory files into Vivado.
3. Compile the project files within Vivado.
4. Run the simulation to execute the CPU and observe the results through Vivado's graphing and analysis tools.

## Documentation

Accompanying this project is a detailed documentation file that describes the process of designing the CPU's architecture, its implementation, and the testing phases. This document serves as a comprehensive guide to understanding the project's development lifecycle and provides insights into the decisions and methodologies employed by our team.

## Contributors

- [Florian Saqipi](https://github.com/floriansaqipi)
- [Gentrit Kryeziu](https://github.com/Gentrit851)
- [Fisnik Hazrolli](https://github.com/fisnikhz)
- [Adriatik Krasniqi]()

## Acknowledgments

Special thanks to our course instructor and teaching assistants for their invaluable support and guidance. Their expertise significantly contributed to our project's success.