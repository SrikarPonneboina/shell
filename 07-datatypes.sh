#!/bin/bash
##These are the datatypes in Shell##
var1=10
var2=20
var3=30

echo "The final value is : $((var1+var2+var3))"

declare -i COUNT=5
COUNT=COUNT+2

echo "This is the addition : $COUNT"

FRUITS=("Apple" , "Banana" , "Grapes")
#echo ${FRUITS[@]}
echo "This is are the fruits : ${FRUITS[@]}"
echo "This is the first fruit : ${FRUITS[1]}"
