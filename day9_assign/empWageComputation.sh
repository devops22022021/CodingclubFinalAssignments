echo "Welcome to employee wage computation"

isFulltime=2
isParttime=1
perHourCost=20
logHours=8
salary=0
workingDays=20
totalHours=0
totalDays=0
half=0
full=0
while [[ $totalHours -lt 100 ]] && [[ $totalDays -lt 20 ]]
		do 
		num=$((RANDOM%3))
		case $num in 
			$isFulltime)
				hours=8
				days=1
				fullDay=$((fullDay+1))
			;;
			$isParttime)	
        			hours=4
				days=1
				halfDay=$((halfDay+1))
			;;
			*)
				hours=0
				days=0
			;;
		esac
 		totalHours=$((totalHours+hours))
		totalDays=$((totalDays+days))
		
		
	done
echo "Hours: $totalHours Days: $totalDays"
echo "HalfDay : $halfDay FullDay : $fullDay" 

totalMonthSalary=$((totalHours*20))

echo " DailyWage: 20 TotalWage: $totalMonthSalary "
echo " TotalDays: $totalDays DailyWage: 20 TotalWage: $totalMonthSalary "



