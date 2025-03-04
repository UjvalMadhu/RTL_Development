+define+NETLIST+SDFSCAN
+notimingchecks
+nowarnTFNPC
+nowarnIWFA
+nowarnSVTL

-xmerror CUVMPW
-nowarn DLNCML
-nowarn CUVWSP
-sysv_ext .sv
-sysv_ext .sv
-sysv_ext .svh
-sysv_ext .svp
-ALLOWREDEFINITION
-dumpstack
-access rwc
-uvmlinedebug
-uvmhome ${UVM_HOME}
//+UVM_VERBOSITY=UVM_LOW
//+UVM_VERBOSITY=UVM_MEDIUM
+UVM_VERBOSITY=UVM_HIGH
//+UVM_VERBOSITY=UVM_FULL
//+UVM_VERBOSITY=UVM_DEBUG
-define UVM_REG_DATA_WIDTH=64
${UVM_HOME}/src/dpi/uvm_dpi.cc
+UVM_TR_RECORD
+UVM_LOG_RECORD

-incdir src
-libverbose
-librescan

-top test

+UVM_TESTNAME=rcc_test

src/timescale.v


//
// --------------
//
// Insert your UVM and any SystemVerilog Testbench files below
// Remove src/results_conv_test.sv if necessary
//
// NOTE: Adjust UVM_TESTNAME based on your test name
//



src/RCC_Assertions.sv
src/RCC_TB_Top.sv
src/results_conv.v
src/RCC_Model.cpp
src/RCC_Time.cpp


//
// Insert your UVM and any SystemVerilog Testbench files above
// Remove src/results_conv_test.sv if necessary
//
// DO NOT INCLUDE ANY RTL CODE FOR GATE LEVEL SIMULATION!!!
//
// --------------
//
// Uncomment for TSMC 180nm
-v /classes/ee620/maieee/lib/tsmc-0.18/verilog/tsmc18.v
//
// Uncomment for TSMC 65nm
// -v /classes/ee620/maieee/lib/synopsys/TSMC_tcbc65/TSMCHOME/digital/Front_End/verilog/tcbn65lp_200a/tcbn65lp.v
//
// Uncomment for SAED 90nm
// -y /classes/ee620/maieee/lib/synopsys/SAED_EDK90nm/Digital_Standard_Cell_Library/verilog/
//
// Uncomment for SAED 32nm
// -v /classes/ee620/maieee/lib/synopsys/SAED_EDK32-28nm/SAED32_EDK/lib/stdcell_rvt/verilog/saed32nm.v
//
+libext+.vs
+librescan
//
// Uncomment for TSMC 180nm
netlist/results_conv_tsmc18_scan/results_conv.vs
-y netlist/results_conv_tsmc18_scan/
//
// Uncomment for TSMC 65nm
// -y netlist/results_conv_tsmc065_scan/
//
// Uncomment for SAED 90nm
// -y netlist/results_conv_saed90nm_scan/
//
// Uncomment for SAED 32nm
// -y netlist/results_conv_saed32nm_scan/
