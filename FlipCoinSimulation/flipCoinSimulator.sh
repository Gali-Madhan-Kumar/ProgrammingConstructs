#! /bin/bash

heads=0
tails=0

counter=0

while [ counter < 5 ]
do

	flipCoin=$((RANDOM % 2))

	if [ $flipCoin -eq heads ]
	then
		((heads = $((heads + 1))))
	else
		((tails = $((tails + 1))))
	fi
done
