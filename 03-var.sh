#!/bin/bash

var1=1
var2=2
echo $((var1 + var2))

START_TIME=$(date +%s)
echo "Script execution started at: $START_TIME"
sleep 10

END_TIME=$(date +%s)
echo "Script execution completed at: $END_TIME"

TOTAL_TIME=$(($END_TIME-$STAR_TIME))
echo "Total time taken for script execution: $TOTAL_TIME"