#! /bin/bash

# Until Loops

# SYNTAX - 
# until [ condition ]
# do 
#     command1
#     command2 
#     ...
#     ....
#     commandN
# done

# Here in the until loop, if the condition is false, then only the condition is executed

n=1
until [ $n -gt 10 ]
do 
    echo $n
    (( n++ ))
done