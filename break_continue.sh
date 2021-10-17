#! /bin/bash

# Break and Continue statements

# Break keyword
# for (( i=1; i<=10; i++ ))
# do
#     if [ $i -gt 5 ]
#     then
#         break
#     fi
#     echo "$i"
# done

# Continue keyword
for (( i=1; i<10; i++ ))
do
    if [ $i -eq 4 -o $i -eq 8 ]
    then
        continue
    fi
        echo "$i"
done