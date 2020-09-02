#! /bin/bash

heads=0
tails=1
totalHeads=0
totalTails=0
tie=0

while [ $totalHeads -lt 22 ] && [ $totalTails -lt 22 ]
do

	flipCoin=$((RANDOM % 2))

	if [ $flipCoin -eq $heads ]
	then
		((totalHeads = $((totalHeads + 1))))
	elif [ $flipCoin -eq $tails ]
	then
		((totalTails = $((totalTails + 1))))
	else
		((tie = $((tie + 1))))
	fi
done

echo "Total Heads = " $totalHeads
echo "Total Tails = " $totalTails

if [ $tie -eq 1 ]
then
	while [ $((totalHeads - totalTails)) -lt 2 ] && [ $((totalTails - totalHeads)) -lt 2 ]
	do
		 flipCoin=$((RANDOM % 2))

        if [ $flipCoin -eq $heads ]
        then
                ((totalHeads = $((totalHeads + 1))))
        else 
                ((totalTails = $((totalTails + 1))))
        fi

	done
			 
elif [ $totalHeads -gt $totalTails ]
then
	echo "Head wins $((totalHeads - totalTails)) times more than tails"
else
	echo "Tail wins $((totalTails - totalHeads)) times more than heads"
fi  
