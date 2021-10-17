#! /bin/bash

# Read files using while loop

# Method - 1 : By input redirection
while read p
do 
    echo $p
done < test.txt

# -------------------------------------------------------------------------------------

# Method - 2 : Using pipes
cat test.txt | while read p
do
    echo $p 
done

# -------------------------------------------------------------------------------------

# Method - 3 : Using IFS(Internal Field Separator)
# IFS used by the sheel to determine how to use word splitting
# -r : prevents the backslash escape from being interpreted
while IFS=' ' read -r line
do
    echo $line
done < hello.sh