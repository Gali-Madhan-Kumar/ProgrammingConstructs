#! /bin/bash
read -p "Enter the value of a " a
read -p "Enter the value of b " b
read -p "Enter the value of c " c
compute=$((a + b * c))
computeOne=$((a * b + c))
computeTwo=$((c + a / b))
echo "$compute"
echo "$computeOne"
echo "$computeTwo"
