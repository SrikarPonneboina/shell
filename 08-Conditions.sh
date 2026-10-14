#!/bin/bash

##These are conditions##

echo "Please enter your marks"
read marks

if ((marks<36)); then
    echo "Your are : FAIL"
else 
    echo "Your are : PASS"
fi
