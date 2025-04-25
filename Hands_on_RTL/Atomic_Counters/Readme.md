# Atomic Counter and Bus Read

This projects is part of the wonderful course, [Hands-in RTL](https://quicksilicon.in/course/rtl-design) created by Rahul Behl. Highly recommended if you are an aspiring RTL Designer or Verification Engineer. The website offers hands on practice, visualization, in depth video explanation and the most efficient solutions in Verilog, VHDL and SystemVerilog. The solution implemented here is my first try on the problem and is not the most efficient, I've implemented a better solution based on the reference from the course but cannot share that due to copyright concerns from the course.

## Problem:

Design a 64-bit event counter module and its 32-bit bus interface for a micro-controller. The counter increments on a trigger input. Implement a mechanism to ensure 64-bit reads, which require two 32-bit bus cycles, are single-copy atomic. Use positive edge-triggered flops with asynchronous resets if needed.

### Atomic Operation:

An atomic operation is an operation that is guaranteed to complete in its entirety without being interrupted by other operations. From the perspective of other processes or threads, an atomic operation either happens completely or doesn't happen at all; there's no in-between state where only part of the operation has occurred. Think of it like a single, indivisible action.

Common examples of operations that need to be atomic in multi-threaded or multi-processor systems include:

- Read-Modify-Write cycles: Reading a value, performing an operation on it, and writing it back (e.g., incrementing a counter). If not atomic, another process could read the old value after the first process reads it but before it writes the new value, leading to a lost update.   
- Swapping values: Exchanging the contents of two memory locations.   
- Test-and-set: Reading a value and setting it to a new value based on the original value.


### Interface Definition

```
trig_i    : Trigger input to increment the counter (High level on clock edge is an indication for incrementing)
req_i     : A read request to the counter
atomic_i  : Marks whether the current request is the first part of the two 32-bit accesses to read
            the 64-bit counter. Use this input to save the current value of the upper 32-bit of
            the counter in-order to ensure single-copy atomic operation
ack_o     : Acknowledge output from the counter
count_o   : 32-bit counter value given as output to the controller

```

**Interface Requirements**

The counter value is read by a 32-bit wide bus but the output should be single-copy atomic. The interface is a simple request and acknowledge interface with the following strict requirements:

Request can be a pulse or can get back to back multiple requests
The acknowledge output must be given one cycle after the request is asserted
The count_o signal must be 0 when the ack_o signal is not asserted
The controller will always send two requests in order to read the full 64-bit counter
The first request will always have the atomic_i input asserted
The second request will not have the atomic_i input asserted

The Counter should have an output response as shown here:

<p>
    <img src = "./figures/Sample_waveform.png" />
    <figcaption>                Sample Waveform                </figcaption>
</p>


## Project RTL Directory

| Sl No | Project | Description |
|-------|---------|-------------|
| 1.    | atm_counter.v | Implementation of the Atomic Counter in Verilog |
| 2. | atm_counter.vhd | Implementation of teh atomic counter in VHDL |
| 3. | testbench.sv | System Verilog testbench for the module |


## Project Organization

This project is organized as follows:

* **build/:** Contains compiled output files.
* **figures/:** Stores generated figures or images.
* **rtl/:** Holds the Register Transfer Level (RTL) Verilog source code files for the CMOS gates.
    * **atm_counter.v:** Implementation of the Atomic Counter in Verilog.
    * **atm_counter.vhd:** Implementation of teh atomic counter in VHDL.
    * **testbench.sv:** SystemVerilog testbench for verifying the functionality of the designs.
    * **timescale.v:** Verilog file defining the timescale used for simulation.

* **waves/:** Stores waveform data files.
* **Makefile:** File used to automate the build and simulation process.
* **Readme.md:** Documentation file.



## Tools Used

1. Icarus Verilog
    Icarus Verilog (often shortened to Icarus) is a popular, open-source, command-line based Verilog simulator. It's a crucial tool in the world of digital hardware design and verification, especially within open-source and educational settings.
    - Compiles your Verilog code to create an internal representation of your design.
    - Simulates the design using an event-driven engine, processing events (signal changes) in time order.
    - Propagates value changes through the circuit's interconnections.
    - Executes procedural blocks and system tasks.
    - Allows external tools like Cocotb to interact with the simulation through interfaces, enabling powerful verification capabilities.

4. GTKWave
    GTKWave is a powerful waveform viewer used extensively in digital design and electronic design automation (EDA). It's primarily used to visualize signal waveforms generated during simulations of digital circuits and systems described in Hardware Description Languages (HDLs) like Verilog and VHDL.

    - Waveform Viewer: GTKWave's primary purpose is to display and analyze signal waveforms. These waveforms represent how signal values (logic levels, analog voltages, etc.) change over time during a simulation.
    - Post-Simulation Analysis Tool: GTKWave is a post-simulation tool. This means it doesn't perform the simulation itself. Instead, it reads waveform data that has been generated by an HDL simulator (like Icarus Verilog, ModelSim, Vivado Simulator, etc.) after a simulation run is complete.
    - Open Source and Free: GTKWave is open-source software, licensed under the GNU Lesser General Public License (LGPL). This makes it freely available to use and distribute, a significant advantage for many users, especially in open-source and educational environments.
    - Cross-Platform: GTKWave is designed to be cross-platform and runs on various operating systems, including Linux, macOS, and Windows. This portability is essential for users working on different development platforms.
    - Graphical User Interface (GUI): GTKWave has a graphical user interface, allowing users to interact with waveforms visually.


## Build Process

```bash
make all     # Performs the entire process (compilation, simulation, and waveform viewing)
make compile # Compiles the design files into a simulation executable
make sim     # Runs the simulation and generates waveform data
make wave    # Opens the waveform viewer to visualize simulation results
make clean   # Removes all generated files and directories
```

<!-- ## Output:

The Output from the simulation is shown here:
<p>
    <img src = "./figures/tb_output.png"/>
    <figcaption>Test Bench output</figcaption>
</p>

The Waveforms from the simulation is shown here:
<p>
    <img src = "./figures/waveforms.png"/>
    <figcaption>Simulation Waveforms</figcaption>
</p> -->

## License

This project is licensed under the GNU General Public License, Version 3 - see the [LICENSE.md](LICENSE.md) file for details.

## Contact

- Author: Ujval Madhu
- Email: ujvalmadhu003@gmail.com

## Acknowledgments

- Rahul Behl, [Hands-in RTL](https://quicksilicon.in/course/rtl-design)