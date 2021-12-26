read -p "Enter the number: " num

units=$((num%10))
tens=$(($((num/10))%10))
huns=$(($((num/100))%10))
thous=$(($((num/1000))%10))

echo "Units=$units Tens=$tens Hundreds=$huns Thousands=$thous"

