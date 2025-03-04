# Parameterized Fixed Priority Arbiter

This repository contains the SystemVerilog RTL code and a self checking testbench for a parameterized Fixed Priority Arbiter

Input:
req_i[num_ports-1:0]: Parameterized request signal
Output:
gnt_o[num_ports-1:0] : Parameterized One hot Encoded Grant Signal


**Author :** Ujval Madhu
**Reference :** Rahul Behl, 21 days of RTL, quicksilicon.in
**Change Log :** fpriority_arb.sv, fpriority_arb_tb.sv , V 1.0, 28 Dec 2024

## Description
Fixed Priority Arbiters are useful tools extensively used in various digital systems like shared buses, memory controllers, Network On Chips etc, they are advantageous due to their simple and fast implementation.

This is a straight forward implementation of a fixed priority arbiter, it has the following features:
1. Explicit Priority Encoding: the lowest bit of the request signal: req_i[0] has the highest priority, followed by req_i[1] and so on.
2. Static Priority: The priority of each requester remains constant and does not change over time. This is the defining characteristic of a fixed priority arbiter.
3. One Hot Encoded Output: The output gnt_o is a one-hot signal, meaning that only one bit of gnt_o will be high at any given time. This is a standard way to represent a grant signal in arbitration logic.

One of the main issues with a fixed priority arbiter is that there is a potential for starvation, where a low-priority requester might never get access to the resource if higher-priority requesters continuously make requests.

## Testbench Design
The testbench for this design is self checking constrained randomized with assertions.