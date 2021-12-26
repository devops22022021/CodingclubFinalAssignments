read -p "Enter the Number of flips: " num

unset heads
unset tails
i=0
for (( i=0 ; i<$num ; i++))
    do
    flip1=$((RANDOM%2))
    #singlet loop
    if [ $flip1 -eq 1 ]
        then
	echo yes
        heads=$((heads + 1))
    else
	echo no
        tails=$((tails + 1))
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

