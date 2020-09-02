#! /usr/local/bin/bash

declare -A arithmeticDict

read -p "Enter the value of a " a
read -p "Enter the value of b " b
read -p "Enter the value of c " c

computeOne=$((a + b * c))
computeTwo=$((a * b + c))
computeThree=$((c + a / b))
computeFour=$((a % b + c))

arithmeticDict[operation_1]=$computeOne
arithmeticDict[operation_2]=$computeTwo
arithmeticDict[operation_3]=$computeThree
arithmeticDict[operation_4]=$computeFour
