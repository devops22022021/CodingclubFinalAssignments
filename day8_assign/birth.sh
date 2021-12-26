declare -A month

for ((i=0 ; i < 50 ; i++))
	do
	mon=$((RANDOM%12+1))
	month[$i]=$mon
done

for item in "${month[@]}"
	do 
	if [[ $item -eq 1 ]]
		then
		jan=$((jan+1))
	elif [[ $item -eq 2 ]]
		then
		feb=$((feb+1))
	elif [[ $item -eq 3 ]]
		then
		mar=$((mar+1))
	elif [[ $item -eq 4 ]]
		then
		apr=$((apr+1))
	elif [[ $item -eq 5 ]]
		then
		may=$((may+1))
	elif [[ $item -eq 6 ]]
		then
		jun=$((jun+1))
	elif [[ $item -eq 7 ]]
		then
		jul=$((jul+1))
	elif [[ $item -eq 8 ]]
		then
		aug=$((aug+1))
	elif [[ $item -eq 9 ]]
		then
		sep=$((sep+1))
	elif [[ $item -eq 10 ]]
		then
		oct=$((oct+1))
	elif [[ $item -eq 11 ]]
		then
		nov=$((nov+1))
	else
		dec=$((dec+1))
	fi   

done


echo " Jan: $jan "
		echo " Feb: $feb"
		echo " Mar: $mar"
		echo " Apr: $apr"
		echo " May: $may"
		echo " Jun: $jun"
		echo " Jul: $jul"
		echo " Aug: $aug"
		echo " Sep: $sep"
		echo " Oct: $oct"
		echo " Nov: $nov"
		echo " Dec: $dec"
