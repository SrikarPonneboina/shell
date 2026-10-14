#!/bin/bash
#passing variables using parameters/arguments 
#var1=$1
#var2=$2
#echo "your input1: $var1 ; your input 2 : $var2"

#Reading inputs from the user
START_TIME=$(date +%s)
echo "Calculating time for you to enter details..."
sleep 2
echo "Please enter your name: "
read -s name

echo "please enter your age:"
read -s age

echo "Hi $name, your age is $age"
END_TIME=$(date +%s)
TOTAL_TIME=$((END_TIME-START_TIME))
echo "Total time taken for you to enter details : $TOTAL_TIME seconds" 

