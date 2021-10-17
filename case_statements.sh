#! /bin/bash

# Case Statement - is used to execute statements based on specific values.
# Often used in place of an if statement, if there are a large number of conditions.
# The variable is compared with the values using the shell wildcards ( ? * […] ) , NOT regular expressions.
# All the statements are executed for the first matching value until the ending ;;. If no value matches, then the default *) case is executed, if present.

# It enables to match several values against one value

# SYNTAX - 
# case expression in
#     pattern1 )
#         statements ;;
#     pattern2 )
#         statements ;;
#     ...
# esac

vehicle=$1
case $vehicle in
    "car" )
        echo "Rent of $vehicle is 100$" ;;
    "van" )
        echo "Rent of $vehicle is 80$" ;;
    "bicycle" )
        echo "Rent of $vehicle is 5%" ;;
    "truck" )
        echo "Rent of $vehicle is 150$" ;;
    * )
        echo "Unknown vehicle" ;;
esac