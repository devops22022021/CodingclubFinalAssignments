read -p "Enter the Number of flips: " num

heads=tails=headHead=headTail=tailHead=tailTail=HHH=HHT=HTH=HTT=THH=THT=TTH=TTT=0
unset heads
unset tails

i=0
for (( i=0 ; i<$num ; i++))
    do
    flip1=$((RANDOM%2))

    #singlet loop
    if [ $flip1 -eq 1 ]
        then
        heads=$((heads+1))
    else
        tails=$((tails+1))
    fi

    #doublet loop
    flip2=$((RANDOM%2))
    if [ $flip1 -eq 1  -a $flip2 -eq 1 ]
        then
        headHead=$((headHead+1))
    elif [ $flip1 -eq 1  -a $flip2 -eq 0 ]
        then
        headTail=$((headTail+1))
    elif [ $flip1 -eq 0  -a $flip2 -eq 1 ]
        then
        tailHead=$((tailHead+1))
    elif [ $flip1 -eq 0  -a $flip2 -eq 0 ]
        then
        tailTail=$((tailTail+1))
    fi

    #triplet loop
    flip3=$((RANDOM%2))
    if [ $flip1 -eq 1 -a $flip2 -eq 1 -a $flip3 -eq 1 ]
        then
            HHH=$((HHH+1))
    elif [ $flip1 -eq 1 -a $flip2 -eq 1 -a $flip3 -eq 0 ]
        then
            HHT=$((HHT+1))
    elif [ $flip1 -eq 1 -a $flip2 -eq 0 -a $flip3 -eq 0 ]
        then
            HTT=$((HTT+1))
    elif [ $flip1 -eq 1 -a $flip2 -eq 0 -a $flip3 -eq 1 ]
        then
            HTH=$((HTH+1))
    elif [ $flip1 -eq 0 -a $flip2 -eq 1 -a $flip3 -eq 1 ]
        then
            THH=$((THH+1))
    elif [ $flip1 -eq 0 -a $flip2 -eq 0 -a $flip3 -eq 1 ]
        then
            TTH=$((TTH+1))
    elif [ $flip1 -eq 0 -a $flip2 -eq 1 -a $flip3 -eq 0 ]
        then
            THT=$((THT+1))
    elif [ $flip1 -eq 0 -a $flip2 -eq 0 -a $flip3 -eq 0 ]
        then
            TTT=$((TTT+1))
    fi

done

#signlet %
echo ""
echo "singlet %"
echo "Number of Head in $num flips: $heads"
echo "Number of tail in $num flips: $tails"
echo "Percentage of singlet"
headPer=$((((100*heads))/num))
tailPer=$((((100*tails))/num))

echo "Head %: $headPer "
echo "Tail %: $tailPer "

#doublet %
echo ""
echo "doublet %"

echo "Number of HH in $num flips: $headHead "
echo "Number of HT in $num flips: $headTail "
echo "Number of TH in $num flips: $tailHead "
echo "Number of TT in $num flips: $tailTail "

HHPer=$((((100*headHead))/num))
HTPer=$((((100*headTail))/num))
THPer=$((((100*tailHead))/num))
TTPer=$((((100*tailTail))/num))

echo "HH %: $HHPer"
echo "HH %: $HTPer"
echo "HH %: $THPer"
echo "HH %: $TTPer"

#triplet %
echo ""
echo "Triplet %"

echo "Number of HHH  in $num flips: $HHH "
echo "Number of HHT  in $num flips: $HHT "
echo "Number of HTT  in $num flips: $HTT "
echo "Number of HTH  in $num flips: $HTH "
echo "Number of THH  in $num flips: $THH "
echo "Number of THT  in $num flips: $THT "
echo "Number of TTH  in $num flips: $TTH "
echo "Number of TTT  in $num flips: $TTT "

HHHPer=$((((100*HHH))/num))
HHTPer=$((((100*HHT))/num))
HTTPer=$((((100*HTT))/num))
HTHPer=$((((100*HTH))/num))
THHPer=$((((100*THH))/num))
THTPer=$((((100*THT))/num))
TTHPer=$((((100*TTH))/num))
TTTPer=$((((100*TTT))/num))

echo "HHH %: $HHHPer"
echo "HHT %: $HHTPer"
echo "HTT %: $HTTPer"
echo "HTH %: $HTHPer"
echo "THH %: $THHPer"
echo "THT %: $THTPer"
echo "TTH %: $TTHPer"
echo "TTT %: $TTTPer" 