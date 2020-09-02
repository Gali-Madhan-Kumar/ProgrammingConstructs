#! /usr/local/bin/bash

declare -A arithmeticDict

read -p "Enter the value of a " a
read -p "Enter the value of b " b
read -p "Enter the value of c " c

compute1=$((a + b * c))
compute2=$((a * b + c))
compute3=$((c + a / b))
compute4=$((a % b + c))

arithmeticDict[operation_1]=$compute1
arithmeticDict[operation_2]=$compute2
arithmeticDict[operation_3]=$compute3
arithmeticDict[operation_4]=$compute4

counter=0

for key in "${!arithmeticDict[@]}"
do
	arithmeticArray[counter++]=${arithmeticDict[$key]}
done
