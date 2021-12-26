read -p "enter the num : " num

if [ $num -eq 7 ]
then
	echo "$num : Sunday"
elif [ $num -eq 1 ]
then
	echo "$num : Monday"
elif [ $num -eq 2 ]
then
        echo "$num : Tuesday"
elif [ $num -eq 3 ]
then
        echo "$num : Wednesday"
elif [ $num -eq 4 ]
then
        echo "$num : Thrusday"
elif [ $num -eq 5 ]
then
        echo "$num : Friday"
elif [ $num -eq 6 ]
then
	echo "$num: Saturday"
else
	echo "Enter the vaild number"
fi


