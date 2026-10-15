#!/bin/bash

##These are conditions##

echo "Please enter your marks"
read marks

if ((marks<36)); then
    echo "Your are : FAIL"
elif ((marks<55)); then
    echo "Your are : PASS"
elif ((marks<75)); then
    echo "Your are first class"
elif ((marks>=75)); then
    echo "Your are Distinction"
fi
exit 1
echo "END"
