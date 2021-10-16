#! /bin/bash

# echo "Enter numbers : "
# read num1 num2
# echo "numbers are : $num1 and $num2"

# Method - 1
# echo $(( num1 + num2 ))
# echo $(( num1 - num2 ))
# echo $(( num1 * num2 ))
# echo $(( num1 / num2 ))
# echo $(( num1 % num2 ))

# ------------------------------------------------

# Method - 2
# echo $(expr $num1 + $num2 )
# echo $(expr $num1 - $num2 )
# echo $(expr $num1 \* $num2 )
# echo $(expr $num1 / $num2 )
# echo $(expr $num1 % $num2 )


# FLOATING POINT MATH OPERATIONS

# echo "20.5+5" | bc
# echo "20.5-5" | bc
# echo "20.5*5" | bc
# echo "scale=2;20.5/5" | bc
# echo "20.5%5" | bc

num1=20.5
num2=5

echo "$num1+$num2" | bc
echo "$num1-$num2" | bc
echo "$num1*$num2" | bc
echo "scale=2;$num1/$num2" | bc
echo "$num1%$num2" | bc

num=27

# sqrt()
echo "scale=2;sqrt($num)" | bc -l                    # -l for calling the math library

# power of
echo "scale=2;3^10" | bc -l
