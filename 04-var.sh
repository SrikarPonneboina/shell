#!/bin/bash

#Know wheather your PASS or FAIL
echo "Please enter your marks"
read marks

if [$marks -lt 33]; then
    echo "FAIL"
elif [$marks -lt 50]; then
    echo "PASS"
elif [$marks -lt 60]; then
    echo "SECOND CLASS"
elif [$marks -lt 75]; then
    echo "FIRST CLASS"
else
    echo "DISTINCTION"
fi 
echo "END"