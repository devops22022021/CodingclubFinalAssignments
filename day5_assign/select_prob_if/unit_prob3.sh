read -p "enter the number : " num

if [ $num -lt 10 ]
then
	echo "$num : unit"
elif [ $num -lt 100 ] 
then
	echo "$num : ten"
elif [ $num -lt 1000 ]
then
	echo "$num : Hundered"
elif [ $num -lt 10000 ]
then 
	echo "$num : Thousand"
else 
	echo "Number is big"
fi

