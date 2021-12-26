read -p "Enter the number: " num

num1=0
for ((i=1 ; $i<=$num ; i=$((i+1))))
do
	num1=$(echo $i | awk '{printf "%f" , 1 / $1}')

	sum=$(echo $num1  $sum | awk '{printf "%f", $1 + $2}')

done
	echo "$num harmonic is : $sum"

