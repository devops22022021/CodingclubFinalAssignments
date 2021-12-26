read -p "Enter the number range below 100: " num

j=0
for ((i=1 ; i<=$num ; i++))
	do
	n=$((i%11))
	if [ $n -eq 0 ]
		then
		arr[j]=$i
		j=$((j+1))
	fi
done

echo "Array is ${arr[*]}"
