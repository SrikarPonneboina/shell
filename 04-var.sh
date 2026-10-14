#!/bin/bash
#passing variables using parameters/arguments 
var1=$1
var2=$2
echo "your input1: $var1 ; your input 2 : $var2"

echo "Please enter your name: "
read -s name

echo "please enter your age:"
read -s age

echo "Hi $name, your age is $age"


