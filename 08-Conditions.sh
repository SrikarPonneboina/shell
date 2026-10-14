#!/bin/bash

##These are conditions##

echo "Please enter your marks"
read marks

if ((marks<36)); then
    echo "FAIL"
else 
    echo "PASS"
exit 1
echo "end"