diceNum1=$((RANDOM%6+1))
echo "first number of dice :$diceNum1"

diceNum2=$((RANDOM%6+1))
echo "second number of dice :$diceNum2"

sum=$((diceNum1 + diceNum2))

echo  "sum of two random dice numbers :$sum" 
