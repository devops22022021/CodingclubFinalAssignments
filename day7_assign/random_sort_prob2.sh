MAXCOUNT=10
count=0

while [ "$count" -le $MAXCOUNT ]; do
 number[$count]=$((RANDOM%900+100))
 let "count += 1"
done

echo "${number[*]}"
# Performing Bubble sort
for ((i = 0; i<$MAXCOUNT; i++))
do
   
    for((j = 0; j<$MAXCOUNT-i; j++))
    do
        if [ ${number[$j]} -gt ${number[$((j+1))]} ]
        then
            # swap
            temp=${number[j]}
            number[$j]=${number[$((j+1))]}  
            number[$((j+1))]=$temp
        fi
    done
done

echo "Array in sorted order :"
echo ${number[*]}
echo "2nd largest: ${number[$MAXCOUNT-1]} 2nd smalest: ${number[1]}"
