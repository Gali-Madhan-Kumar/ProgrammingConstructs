#! /usr/local/bin/bash

declare -A flipCoinDict

isHeads=0

tails=0
heads=0

flipCoinDict[heads]=0
flipCoinDict[tails]=0

i=0

while [ $i -lt 2 ]
do
	flipCoin=$((RANDOM % 2))

	if [ $flipCoin -eq $isHeads ]
	then
		((heads += $((heads + 1))))
		flipCoinDict[heads]=$heads
	else 
		((tails += $((tails + 1))))
		flipCoinDict[tails]=$tails
	fi
((i++))
done

totalHeads=${flipCoinDict[heads]}
totalTails=${flipCoinDict[tails]}

for ((j=0; j<$totalHeads; j+=1))
do
	echo -n "H " 
done

for ((k=0; k<$totalTails; k+=1))
do
	echo -n "T "
done
