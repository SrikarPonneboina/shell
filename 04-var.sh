#!/bin/bash
#passing variables using parameters/arguments 
echo "Please enter your name: "
read -s name

echo "please enter your age:"
read -s age

echo "Hi $name, your age is $age"


#Know wheather your PASS or FAIL
echo "Please enter your marks"
read marks

if [$marks -lt 33]; then
    echo "FAIL"
elif [$marks -lt 50]; then
    echo "PASS"
elif [$marks -lt 75]; then
    echo "FIRST CLASS"
elif [$marks -lt 75]; then
    echo "DISTINCTION"
else
    echo "DISTINCTION"
fi 
echo "END"