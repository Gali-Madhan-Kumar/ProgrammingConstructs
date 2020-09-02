#! /bin/bash

heads=0
flipCoin=$((RANDOM % 2))
if [ $flipCoin -eq heads ]
then
	echo "Heads"
else
	echo "Tails"
fi
