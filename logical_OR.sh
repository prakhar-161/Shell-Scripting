#! /bin/bash

# Logical OR Opertors

# -o flag - for using OR operator w/o two square bracket pairs

age=30

# Method - 1
if [ "$age" -gt 18 ] || [ "$age" -lt 30 ]
then 
    echo "valid age"
else
    echo "not a valid age"
fi

# -----------------------------------------------

# Method - 2
if [ "$age" -gt 18 -o "$age" -lt 30 ]
then 
    echo "valid age"
else
    echo "not a valid age"
fi

# -----------------------------------------------

# Method - 3
if [[ "$age" -gt 18 || "$age" -lt 30 ]]
then 
    echo "valid age"
else
    echo "not a valid age"
fi