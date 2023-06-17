echo "Enter numbers : "
read num1 num2
echo "numbers are : $num1 and $num2"

# Method - 1
echo $(( num1 + num2 ))
echo $(( num1 - num2 ))
echo $(( num1 * num2 ))
echo $(( num1 / num2 ))
echo $(( num1 % num2 ))