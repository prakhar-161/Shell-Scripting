#! /bin/bash

# Syntax of if then statement : 
# if [ condition ]
# then
#     statement           # if condition is true then, it executes the then statement and if false, then print nothing.
# fi

# NUMBER COMPARISONS :  
# ------------------------------------------------------------------------------------------------------------
# -eq  compare if two numbers are equal                                 -> [ "$a" -eq "$b" ]
# -ge  compare if one number is greater than or equal to a number       -> [ "$a" -ge "$b" ]
# -le  compare if one number is less than or equal to a number          -> [ "$a" -le "$b" ]
# -ne  compare if two numbers are not equal                             -> [ "$a" -ne "$b" ]
# -gt  compare if one number is greater than another number             -> [ "$a" -gt "$b" ]
# -lt  compare if one number is less than another number                -> [ "$a" -lt "$b" ]
# <     is less than                                                    -> (("$a" < "$b"))
# <=    is less than or equal to                                        -> (("$a" <= "$b"))
# >     is greater than                                                 -> (("$a" > "$b"))
# >=    is greater than of equal to                                     -> (("$a" >= "$b"))

# Examples : 
# [ n1 -eq n2 ]  (true if n1 same as n2, else false)
# [ n1 -ge n2 ]  (true if n1greater then or equal to n2, else false)
# [ n1 -le n2 ]  (true if n1 less then or equal to n2, else false)
# [ n1 -ne n2 ]  (true if n1 is not same as n2, else false)
# [ n1 -gt n2 ]  (true if n1 greater then n2, else false)
# [ n1 -lt n2 ]  (true if n1 less then n2, else false)

# STRING COMPARISONS :   
# ------------------------------------------------------------------------------------------------------------
# =  compare if two strings are equal
# !=  compare if two strings are not equal
# -n  evaluate if string length is greater than zero
# -z  evaluate if string length is equal to zero 

# Examples :
# [ s1 = s2 ]  (true if s1 same as s2, else false)
# [ s1 != s2 ]  (true if s1 not same as s2, else false)
# [ s1 ]   (true if s1 is not empty, else false)
# [ -n s1 ]   (true if s1 has a length greater then 0, else false)
# [ -z s2 ]   (true if s2 has a length of 0, otherwise false)

count=10
if [ $count -ge 3 ]
then
    echo "condition is true"
fi


word1=abc
if [ $word1 != "abcc" ]
then
    echo "condition is true"
fi

word2=a
if [[ $word2 < "b" ]]
then
    echo "condition is true"
else 
    echo "condition is false"
fi