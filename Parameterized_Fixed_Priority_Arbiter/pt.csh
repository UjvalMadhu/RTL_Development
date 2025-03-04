#!/bin/csh -f

source /classes/ee620/etc/synopsys_env.csh

set scr = time_scan 
pt_shell < pt/${scr}.tcl |& tee pt_shell_${scr}.log
