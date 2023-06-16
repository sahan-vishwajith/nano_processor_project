# nano_processor_project
Nanoprocessor Design
This is a simple 4-bit microprocessor designed to execute a set of instructions. It was created as part of a lab exercise to introduce students to microprocessor design.

Components
The processor includes several components, including:

4-bit add/subtract unit
3-bit adder
Program counter
Register bank with eight 4-bit registers
Instruction decoder
Program ROM
Multiplexers and buses
Instructions
The processor is capable of executing four instructions:

MOVI (move immediate value)
ADD (addition)
NEG (2's complement)
JZR (jump if zero)
Limitations
The processor has some limitations due to its design, including:

Slow clock rate (ticks every 2-3 seconds)
Only able to handle 4-bit integers
Limited instruction set
Usage
This processor can be used as a teaching tool to help students learn about microprocessor design. Users can simulate the output of the top-level design and view the final result through LEDs connected to register R7.

Credits
This processor was designed by [sahan-vishwajith](https://github.com/sahan-vishwajith) and mahesh dilshan as part of [nano processor design]. Please feel free to use this code for educational purposes, but credit should be given where appropriate.
