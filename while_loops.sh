#! /bin/bash

# While Loops

# SYNTAX - 
# while [condition]
# do 
#     command1
#     command2
#     command3
# done

# Print numbers from 1 to 10 using while loop.

# Method - 1
# n=1
# while [ $n -le 10 ]
# do
#     echo "$n"
#     # n=$(( n+1 ))
#     (( n++ ))
# done

# Method - 2
# n=1
# while (( $n <= 10 ))
# do 
#     echo "$n"
#     (( n++ ))
# done

# ----------------------------------------------------------------------------------------

# Sleep command in while loops
# pausing the while loop by the time given in sleep command in seconds
# n=1
# while [ $n -le 10 ]
# do
#     echo "$n"
#     (( n++ ))
#     sleep 1
# done

