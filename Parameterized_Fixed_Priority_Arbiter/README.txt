
Module Database:
 * Results Character Conversion (RCC)
 *  processes a computed frequency spectrum to
 *  determine if a valid DTMF digit can be found

Top level directories:

src......source files
include..header files
etc......tool arguments files
report...synthesis report files
netlist..post synthesis netlists
sdf......post synthesis timing data
dc.......synthesis tool scripts
pt.......timing analysis tool scripts
pr.......power analysis tool scripts
cons.....design constraints


The following scripts are used to simulate, synthesize the
design:

./sim.csh.......RTL/Netlist Simulation Script
./syn.csh.......Logic Synthesize Script
./pt.csh........Timing Analysis Script
./pr.csh........Power Analysis Analysis Script
./imc.csh.......Coverage Analysis GUI Script (Enabled for SystemVerilog)
./cov_rpt.csh...Coverage Analysis Report Script (Enabled for SystemVerilog)
                  Called automatically after simulation if the -c (coverage switch)
                  is passed to sim.csh

Obviously the gate level design will require substantially more time
to simulate than the RTL design.

