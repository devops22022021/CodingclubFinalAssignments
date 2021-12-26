
declare -A dice

while [[ one -lt 10 ]] && [[ two -lt 10 ]] && [[ three -lt 10 ]] && [[ four -lt 10 ]] && [[ five -lt 10 ]] && [[ six -lt 10 ]]
	do
	 num=$((RANDOM%6+1))
	 case $num in
		 1)
			 one=$((one+1))
			 if [ $one -eq 10 ]
			 	then
				echo "1 number reached value 10 "
				break
			 fi
			 ;;
		 2)
			 two=$((two+1))
			 if [ $two -eq 10 ]
			 	then
				echo "2 number reached value 10 "
				break
			 fi
			 ;;
		 3)
			 three=$((three+1))
			 if [ $three -eq 10 ]
			 	then
				echo "3 number reached value 10 "
				break
			 fi
			 ;;
		 4)
			 four=$((four+1))
			 if [ $four -eq 10 ]
			 	then
				echo "4 number reached value 10 "
				break
			 fi
			 ;;
		 5)
			 five=$((five+1))
			 if [ $five -eq 10 ]
			 	then
				echo "5 number reached value 10 "
				break
			 fi
			 ;;
		 6)
			 six=$((six+1))
			 if [ $six -eq 10 ]
			 	then
				echo "6 number reached value 10 "
				break
			 fi
			 ;;
		 *)
			 echo "Not vaild"
			 ;;
	esac

done

dice[0]=$one
dice[1]=$two
dice[2]=$three
dice[3]=$four
dice[4]=$five
dice[5]=$six
echo "${dice[*]}"

i=0
index_high=0
index_low=0
for item in "${dice[@]}"
    do
        if [ $i -eq 0 ]
            then
            max1=$item
        elif [ $max1 -lt $item ]
            then
            max1=$item
	    index_high=$i
        fi
        if [ $i -eq 0 ]
            then
            min1=$item
        elif [ $min1 -gt $item ]
            then
            min1=$item
	    index_low=$i
        fi
        i=$(($i+1))
    done

    echo " Number reached min Times: $((index_low+1)) Min Value:$min1 "
    echo " Number reached Max times: $((index_high+1)) Max Value : $max1 "
