read -p "Enter the day: " day
read -p "Enter the month: " month

if [ $day -eq 0 ]
	then
		echo " Enter valid Date "
else
if [ $month == March ]
	then
        if [[ ( $day -gt 20 ) && ( $day -lt 31 ) ]]
            then
                echo "Date is in given range"
        else
            	echo "Date is not in given range"
        fi
elif [ $month == April ]
	then
	 if [ $day -lt 30 ]	
	  then
       		echo "Date is in given range"
	else
		echo "Date is not in given range"
        fi
elif [ $month == May ]
        then
         if [ $day -lt 31 ]
          then
                echo "Date is in given range"
        else
                echo "Date is not in given range"
	fi
elif [ $month == June ]
        then
         if [ $day -lt 20 ]
          then
                echo "Date is in given range"
        else
                echo "Date is not in given range"
	fi
 else
            echo "Date is not in given range"
fi
fi