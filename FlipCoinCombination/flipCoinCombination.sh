#! /usr/local/bin/bash

isHeads=0
isTails=1

flipCoin=$((RANDOM % 2))

if [ $flipCoin -eq $isHeads ]
then
	echo "Heads"
else 
	echo "Tails"
fi
