#!/bin/bash

var1=1
var2=2
echo $((var1 + var2))

START_TIME=$(date +%s)
echo "Script start at : $START_TIME"

sleep 10

END_TIME=$(date +%s)
echo "script execution completed at : $END_TIME"

TOTAL_TIME=$((END_TIME - START_TIME))
echo "Total time taken for the script execution is : $TOTAL_TIME seconds"
