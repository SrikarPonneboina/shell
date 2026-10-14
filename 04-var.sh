#!/bin/bash
#passing variables using parameters/arguments 
#var1=$1
#var2=$2
#echo "your input1: $var1 ; your input 2 : $var2"

#Reading inputs from the user
START_TIME=$(date +%s)
echo "User Started Entering Details"
echo "Please enter your name: "
read -s name

echo "please enter your age:"
read -s age

echo "Hi $name, your age is $age"
END_TIME=$(date +%s)
echo "User Entered his details"
TOTAL_TIME=$((END_TIME-START_TIME))
echo "Total time taken for the user to enter his details : $TOTAL_TIME seconds" 

