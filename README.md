# nano_processor_project
The nanoprocessor 
is a simple 4-bit microprocessor designed to execute a set of instructions. It consists of several components, including a 4-bit add/subtract unit, a 3-bit adder, a program counter, a register bank, an instruction decoder, a program ROM, and various multiplexers and buses. The processor supports four instructions: MOVI (move immediate value), ADD (addition), NEG (2's complement), and JZR (jump if zero).

The register bank contains eight 4-bit registers, with R0 hard-coded to all zeros. The program ROM stores the assembly program, which is converted to machine code and hard-coded into ROM. The top-level design is tested using simulation, and the output of register R7 is connected to LEDs to display the final result.

The processor is designed to be slow-clock driven, with a clock rate that ticks every 2-3 seconds, and it can only handle 4-bit integers due to its limited width. Additionally, during the lab, students are encouraged to share the workload and work on different components simultaneously.

Overall, this nanoprocessor provides a basic introduction to microprocessor design and teaches students how to build and integrate different modules to create a functional processor capable of executing simple instructions.
