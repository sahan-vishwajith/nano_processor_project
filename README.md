# nano_processor_project
Nanoprocessor Design
This is a simple 4-bit microprocessor designed to execute a set of instructions. It was created as part of a lab exercise to introduce students to microprocessor design.

Components
The processor includes several components, including:

4-bit add/subtract unit<br>
3-bit adder<br>
Program counter<br>
Register bank with eight 4-bit registers<br>
Instruction decoder<br>
Program ROM<br>
Multiplexers and buses<br>
Instructions<br>
The processor is capable of executing four instructions:<br>

MOVI (move immediate value)<br>
ADD (addition)<br>
NEG (2's complement)<br>
JZR (jump if zero)<br>
Limitations<br>
The processor has some limitations due to its design, including:<br>

Slow clock rate (ticks every 2-3 seconds)<br>
Only able to handle 4-bit integers<br>
Limited instruction set<br>
Usage<br>
This processor can be used as a teaching tool to help students learn about microprocessor design. Users can simulate the output of the top-level design and view the final result through LEDs connected to register R7.

Credits
This processor was designed by [sahan-vishwajith](https://github.com/sahan-vishwajith) and mahesh dilshan as part of [nano processor design]. Please feel free to use this code for educational purposes, but credit should be given where appropriate.
