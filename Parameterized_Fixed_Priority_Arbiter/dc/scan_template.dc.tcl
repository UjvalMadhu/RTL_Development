
#/*********************************************************/
#/*                                                       */
#/* Perform scan test insertion                           */                   
#/*                                                       */
#/*********************************************************/
#   

#/* Insert full scan                                      */ 
echo [concat "############################################"]
echo [concat { INFO: CHECKING DFT RULES}]
echo [concat "############################################"]
preview_scan
echo [concat "############################################"]
echo [concat { INFO: INSERTING TEST LOGIC}]
echo [concat "############################################"]
insert_scan
echo [concat "############################################"]
echo [concat { INFO: CHECKING TEST LOGIC}]
echo [concat "############################################"]
check_test
# 
