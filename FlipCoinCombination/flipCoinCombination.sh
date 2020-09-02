#! /usr/local/bin/bash

declare -A flipCoinDict

isHeads=0

singletHeads=0
singletTails=0
doubletTails=0
doubletHeads=0
tripletHeads=0
tripletTails=0

for ((i=0; i<2; i+=1))
do
	flipCoin=$((RANDOM % 2))
	
	if [ $flipCoin -eq $isHeads ]
	then
		((singletHeads+=1))
		flipCoinDict[singletHeads]=$heads
	else
		((singletTails+=1))
		flipCoinDict[singletTails]=$singletTails
	fi
done

totalSingletHeads=${flipCoinDict[singletHeads]}
totalSingletTails=${flipCoinDict[singletTails]}

if [[ $totalSingletHeads -gt $totalSingletTails ]]
then
	for ((i=0; i<$totalSingletHeads; i+=1))
	do
		echo -n "H "
	done
elif [[ $totalSingletHeads -lt $totalSingletTails ]]
then
	for ((i=0; i<$totalSingletTails; i+=1))
        do
                echo -n "T "
        done
else
	echo -n " H T "
fi

for ((i=0; i<10; i+=1))
do
        flipCoin=$((RANDOM % 2))

        if [ $flipCoin -eq $isHeads ]
        then
                ((doubletHeads+=1))
                flipCoinDict[doubletHeads]=$doubletHeads
        else
                ((doubletTails+=1))
                flipCoinDict[doubletTails]=$doubletTails
        fi
done

totalDoubletHeads=${flipCoinDict[doubletHeads]}
totalDoubletTails=${flipCoinDict[doubletTails]}

if [[ $totalDoubletHeads -gt $totalDoubletTails ]]
then	
	echo ""
        for ((i=0; i<$totalDoubletHeads; i+=1))
        do	
                echo -n "HH "
        done
elif [[ $totalDoubletHeads -lt $totalDoubletTails ]]
then
	echo ""
        for ((i=0; i<$totalDoubletTails; i+=1))
        do
                echo -n "TT "
        done
else
	echo ""
        echo -n " HT "
fi

for ((i=0; i<10; i+=1))
do
        flipCoin=$((RANDOM % 2))

        if [ $flipCoin -eq $isHeads ]
        then
                ((tripletHeads+=1))
                flipCoinDict[tripletHeads]=$tripletHeads
        else
                ((tripletTails+=1))
                flipCoinDict[tripletTails]=$tripletTails
        fi
done

totalTriplettHeads=${flipCoinDict[tripletHeads]}
totalTripletTails=${flipCoinDict[tripletTails]}

if [[ $totalTripletHeads -gt $totalTripletTails ]]
then
        echo ""
        for ((i=0; i<$totalTripletHeads; i+=1))
        do
                echo -n "HHH "
        done
elif [[ $totalTripletHeads -lt $totalTripletTails ]]
then
        echo ""
        for ((i=0; i<$totalTripletTails; i+=1))
        do
                echo -n "TTT "
        done
else
        echo ""
        echo -n " HTH "
fi
