#!/bin/bash
#passing variables using parameters/arguments 
echo "Please enter your name: "
read -s name

echo "please enter your age:"
read -s age

echo "Hi $name, your age is $age"


#Know wheather your PASS or FAIL
echo "please enter your marks : "
read marks

if -i count (marks>50):
echo "PASS"
else 
echo "FAIL"