echo "Enter the array: "
read -a arr

n=${#arr[*]}
#echo "${array[@]}"
echo $n

high=0
for ((i = 0; i<$n-2; i++))
do
    for((j =$((i+1)); j<$n-1; j++))
    do
        for((k =$((j+1)); j<$n; j++))
        do
           if [ $((arr[$i]+arr[$j]+arr[$k])) -eq 0 ]
               then
               echo "${arr[$i]} ${arr[$j]} ${arr[$k]} are triplets "
               high=1
           fi
        done
    done
done

if [ $high -eq 0 ]
    then
    echo "triplet does not exist"
fi
