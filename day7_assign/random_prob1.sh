MAXCOUNT=10
count=0

while [ "$count" -le $MAXCOUNT ]; do
 number[$count]=$((RANDOM%900+100))
 let "count += 1"
done

echo "${number[*]}"

i=1
min2=0
max2=0
for item in "${number[@]}"
    do
        if [ $i -eq 1 ]
            then
            max1=$item
        elif [ $max1 -lt $item ]
            then
            max2=$max1
            max1=$item
        elif [ $max2 -lt $item ]
            then
            max2=$item
        fi
        if [ $i -eq 1 ]
            then
            min1=$item
        elif [ $min1 -gt $item ]
            then
            min2=$min1
            min1=$item
        elif [ $min2 -gt $item ]
            then
            min2=$min1
        fi
        i=$(($i+1))
    done

#echo "MAX: $max1 MAX2: $max2 MIN: $min1 MIN2: $min2"
echo "2nd largest: $max2 2nd smalest: $min2"
