#!/bin/bash
##These are the datatypes in Shell##
var1=10
var2=20
var3=30

echo "The final value is : $((var1+var2+var3))"

declare -i COUNT=5
COUNT=COUNT+2

echo "This is the addition : $COUNT"

FRUITS=("Apple"  "Banana"  "Grapes")
#echo ${FRUITS[@]}
echo "This is are the fruits : ${FRUITS[@]}"
echo "This is the first fruit : ${FRUITS[1]}"

echo "Please enter your name : "
read name

echo "Your name is : ${name} Ponneboina"

echo "Now your are going to create your gmail account :"
echo "what is your First Name : "
read name
echo "what is your Second Name : "
read sname

echo "${name}${sname}@gmail.com"

echo "Congralations .... your gmail account is created! "
echo "Total time taken for your script : $seconds"