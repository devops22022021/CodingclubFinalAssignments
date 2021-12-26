read -p "Enter the range: " n
i=1
max=0


for i in `seq 1 $n`
do

        R=$(($(($RANDOM%900))+100))
        echo $R
        if [ $i -eq 1 ]
        then
                max=$R
        else
                if [ $R -gt $max ]
                then
                        max=$R
                fi
        fi
        if [ $i -eq 1 ]
        then
                min=$R
        else
                if [ $R -lt $min ]
                then
                        min=$R
                fi
        fi
        i=$((i + 1))
done
        echo "max of $n numbers: $max"
        echo "min of $n numbers: $min"

