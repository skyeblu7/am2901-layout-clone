<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
  * [Built With](#built-with)
* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Build](#installation)
* [Design](#design)
  * [Schematic](#schematic)
  * [Layout](#layout)
  * [Control Unit](#control-unit)
  * [Area](#area)
* [Acknowledgements](#acknowledgements)



<!-- ABOUT THE PROJECT -->
## About The Project

![layout datapth](am2901-layout.png)

This is a schematic and layout clone of AMD's AM2901 processor. 


### Built With

Cadence Virtuoso was used to design the schematic and layout. Cadence Innovus was used to generate the placement and routing of the controller unit. Verilog was used to write the controller module.

* [Verilog](https://ieeexplore.ieee.org/document/1620780)
* [Cadence Virtuoso](https://www.cadence.com/en_US/home/tools/custom-ic-analog-rf-design/layout-design/virtuoso-layout-suite.html)
* [Cadence Innovus](https://www.cadence.com/en_US/home/training/all-courses/86141.html)

<!-- GETTING STARTED -->
## Getting Started

### Prerequisites

You need:

1. Cadence Virtuoso
2. Cadence Innovus

### Installation

Contact Cadence

### Build

If you have Cadence Virtuoso and Innovus and the cloned or downloaded zip of this repository, you can then initialize your environment by running the initialization script:

```
source init_NCSU.sh
```

Then you can launch Cadence virtuoso by running:

```
ic618 &
```

note that the '&' is used so you can still run commands on the terminal.

# Design

The design is based on the following block diagram which was taken from AMD's AM2900 family data book:

![block-diagram](block-diagram.png)

The ALU logic is based on the following tables, also taken from AMD's AM2900 family data book:

![alu-tables](alu-tables.png)

## Schematic

### MUX's

2-to-1 MUX (inverted):

![2-to-1-mux-schematic](2-to-1-mux-schematic.png)

3-to-1 MUX:

![3-to-1-mux-schematic](3-to-1-mux-schematic.png)

4-to-1 MUX:

![4-to-1-mux-schematic](4-to-1-mux-schematic.png)

### latch

![latch-schematic](latch-schematic.png)

### ALU

![ALU-schematic](alu-schematic.png)

To implement the ALU, I looked at what functions needed to be included and noted the functions that could be made using inverted inputs or outputs. For example, I need to be able to calculate R+S but also R-S; but R-S is the same as R + ~S + 1, so I made a system that allowed me to invert the input S and R values (for S-R). This system is the xor gates that R and S are passed through together with inv_r (invert r) and inv_s which are control logic signals that determine when R and S should be inverted. I also noticed that R xnor S is the same as R xor ~S, so I only needed one xor block and inverted S for the xnor operation. S was chosen because it created simpler control logic equations.
The table below shows all the functions, when the inv_s and inv_r should be set and the logic equations I derived from the table to control when to invert R and S in terms of the control signals I_3, I_4, and I_5. The control signals are set in the control module and sent to the datapath via pins.

![alu-imp-tables](alu-implementation-tables.png)

![alu-logic-schematic](alu-logic-schematic.png)

Add module:

![alu-add-schematic](alu-add-schematic.png)

The logic block computes AND, OR, XOR, NOR and NAND. Part of these are useful as the output of a function (OR, AND, XOR), but some are also used to compute an addition using a Carry Chain. The stages of the carry chain are as described below:

  1. Carry-out is always connected to Vdd, gnd, or carry-in (static pass-transistor logic)
  2. Carry-out connects to Vdd if a=b=1 (generate = a AND b → partly calculated in logic)
  3. Carry-out connects to gnd if a=b=0 (kill = a NOR b → partly calculated in logic)
  4. Otherwise, carry-out connects to carry-in through a transmission gate (propagate = a XOR b → partly calculated in logic)

To calculate a subtraction, we invert the negative input (using the inv_r or inv_s control signals) and add 1 to cin.

### bitslice

![bitslice-schematic](bitslice-schematic.png)

### datapath

![schematic datapath](datapath-schematic.png)

## Layout

### MUX's

2-to-1 MUX (inverted):

![2-to-1-mux-layout](2-to-1-mux-layout.png)

3-to-1 MUX:

![3-to-1-mux-layout](3-to-1-mux-layout.png)

4-to-1 MUX:

![4-to-1-mux-layout](4-to-1-mux-layout.png)

### regbit

![regbit-layout](regbit-layout.png)

### add

![alu-add-layout](alu-add-layout.png)

### ALU

![alu-layout](alu-layout.png)

### datapath

![datapath-layout](datapath-layout.png)

## Control Unit



## Area

The area of our design ended up being 127.336 x 192.54 = 24,517.27 units

<!-- ACKNOWLEDGEMENTS -->
# Acknowledgements
* [Readme Template](https://github.com/othneildrew/Best-README-Template)




