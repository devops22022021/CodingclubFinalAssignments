read -p "Enter 1st number: " a
read -p "Enter 2nd number: " b
read -p "Enter 3rd number: " c


ans1=$((a+$((b*c))))
ans2=$(($((a*b))+c))
ans3=$((c+$((a/b))))
ans4=$((c+((a%b))))

echo ""
echo "Problem a+b*c :$ans1 "
echo "Problem a*b+c:$ans2 "
echo "Problem a/b+c:$ans3 "
echo "Problem a%b+c:$ans4 "
echo ""

declare -a assign1

assign1[0]="$ans1"
assign1[1]="$ans2"
assign1[2]="$ans3"
assign1[3]="$ans4"

declare -a assign1_copy
assign1_copy=("${assign1[@]}")

echo "Echo Dictionary: ${assign1[@]}"
echo ""

for ((i = 0; i<4; i++))
do
    
    for((j = 0; j<4-i-1; j++))
    do
        if [ ${assign1[$j]} -gt ${assign1[$((j+1))]} ]
        then
            # swap
            temp=${assign1[$j]}
	    assign1[$j]=${assign1[$((j+1))]}
            assign1[$((j+1))]=$temp
        fi
    done
done

echo "Array in sorted in assending order :"
echo ${assign1[@]}

for ((i = 0; i<4; i++))
do
    
    for((j = 0; j<4-i-1; j++))
    do
        if [ ${assign1_copy[$j]} -lt ${assign1_copy[$((j+1))]} ]
        then
            # swap
            temp=${assign1_copy[$j]}
	    assign1_copy[$j]=${assign1_copy[$((j+1))]}
            assign1_copy[$((j+1))]=$temp
        fi
    done
done

echo "Array in sorted desending order :"
echo ${assign1_copy[@]}

