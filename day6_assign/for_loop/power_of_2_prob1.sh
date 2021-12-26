read -p "Enter the number: " num

nu=1

for (( i=0 ; $i<$num ; i=$((i+1))))
do
        if [ $num -eq 0 ]
            then
                echo "2 power of 0 is : 1 "
        else
                nu=$((nu*2))
        fi
        echo $nu
done

