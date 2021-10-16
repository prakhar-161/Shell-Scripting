#! /bin/bash

# Logical AND Operators

# -a flag - for using AND operator w/o two square bracket pairs

age=24

# Method - 1
if [ "$age" -gt 18 ] && [ "$age" -lt 30 ]
then 
    echo "valid age"
else
    echo "not a valid age"
fi

# -----------------------------------------------

# Method - 2
if [ "$age" -gt 18 -a "$age" -lt 30 ]
then
    echo "valid age"
else
    echo "not a valid age"
fi

# -----------------------------------------------

# Method - 3
if [[ "$age" -gt 18 && "$age" -lt 30 ]]
then
    echo "valid age"
else
    echo "not a valid age"
fi
