read -p "Enter 1st number: " a
read -p "Enter 2nd number: " b
read -p "Enter 3rd number: " c


ans1=$((a+$((b*c))))
ans2=$(($((a%b))+c))
ans3=$((c+$((a/b))))
ans4=$((c+((a*b))))

ans_ary=($ans1 $ans2 $ans3 $ans4)
echo ${ans_ary[*]}

i=1
max=0
for item in `echo ${ans_ary[*]}`
    do
    if [ $i -eq 1 ]
        then
            max=$item
    else
        if [ $item -gt $max ]
            then
            max=$item
        fi
     fi
     if [ $i -eq 1 ]
        then
            min=$item
     else
        if [ $item -lt $min ]
            then
            min=$item
        fi
     fi
     i=$((i+1))
done

echo "Maximun of the arrary: $max"
echo "Minmum of the array: $min "
