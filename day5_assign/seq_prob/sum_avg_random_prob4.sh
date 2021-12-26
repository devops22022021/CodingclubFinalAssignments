read -p "Enter the range: " n
sum=0
for i in `seq 1 $n`
do
        R=$(($(($RANDOM%90))+10))
        echo $R
        sum=$((sum+R))
        avg=$((sum/n))

done
        echo "sum of $n numbers: $sum"
        echo "avg of $n numbers: $avg"
