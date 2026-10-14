#!/bin/bash

var1=1
var2=2
echo $((var1 + var2))

S_TIME=$(date +%s)
echo "Script execution started at: S_TIME"
sleep 10

E_TIME=$(date +%s)
echo "Script execution completed at: E_TIME"

TOTAL_TIME=$(($E_TIME-$S_TIME))
echo "Total time taken for script execution: TOTAL_TIME"