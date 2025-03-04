#!/bin/csh -f
#
# Generate SystemVerilog coverage report

# The simulator will need to generate a coverage
# database for report generation, add the following
# command to your testcase:
#  $set_coverage_db_name("results_conv");

imc -exec etc/imc_report.tcl
