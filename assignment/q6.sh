# How will you find the sum of all numbers in a file in Linux?

#! /bin/bash

# SUM=0
# while read LINE
# do
# SUM=`expr $SUM + $LINE`
# done < num.txt
# echo $SUM

SUM=0
for num in $(cat num.txt)
do
    ((SUM+=num))
done
echo $SUM

# length of var
# VAR="welcome"
# echo ${#VAR}
# 7