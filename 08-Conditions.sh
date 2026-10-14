#!/bin/bash

##These are conditions##

echo "Please enter your marks"
read marks

if ((marks<36)); then
    echo "FAIL"
else 
    echo "PASS"
fi
echo "end"