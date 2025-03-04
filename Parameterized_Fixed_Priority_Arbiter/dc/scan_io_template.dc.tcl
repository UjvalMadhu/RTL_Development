#/*********************************************************/
#/*                                                       */
#/* Set up default constraints for scan                   */
#/* insertion.  This includes setting all scan input,     */
#/* scan_output, and scan enable port constraints.  This  */
#/* script will only work if the scan ports are named     */
#/* using the standard naming conventions.                */
#/*                                                       */
#/*********************************************************/

#/* Set scan defaults                                     */
set_scan_style multiplexed_flip_flop
set_test_methodology full_scan
set_scan_configuration -dedicated_scan_ports true -route true -route_signals all

set scan_inputs [find port scan_in*]

if {  $scan_inputs == [list] } {
   echo [concat {ERROR: NO SCAN INPUTS DEFINED TEST INSERTION NOT PERFORMED}]
  exit 0
}

set input_length 0

foreach_in_collection scan_input $scan_inputs {
  set t_scan_in [find port $scan_input]
  echo [concat {FOUND } $t_scan_in { IN CURRENT DESIGN}]
  set_scan_signal test_scan_in -port $t_scan_in
  set input_length [expr $input_length + 1]
}

set scan_outputs [find port scan_out*]

set output_length 0

foreach_in_collection scan_output $scan_outputs {
  set t_scan_out [find port $scan_output]
  echo [concat {FOUND } $t_scan_out { IN CURRENT DESIGN}]
  set_scan_signal test_scan_out -port $t_scan_out
  set output_length [expr $output_length + 1]
}

set length 0

if {  $input_length == $output_length } {
   set length $input_length
} else {
   echo [concat {ERROR: NUMBER OF SCAN INPUTS (} $input_length {) DOES NOT MATCH THE NUMBER OF SCAN OUTPUTS (} $output_length ")"]
  echo [concat {       SCAN INSERTION NOT PEFORMED.}]
  exit 0
}


set t_scan_en [find port "scan_en"]
if { [get_object_name $t_scan_en] == "scan_en" } {
   set_scan_signal test_scan_enable -port scan_en
} else {
   echo [concat {ERROR : NO SCAN_ENABLE SIGNAL FOUND IN CURRENT DESIGN}]
  exit 0
}


set_scan_configuration -chain_count $length
echo [concat {INFO: NUMBER OF CHAINS IS } $length]
