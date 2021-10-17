#! /bin/bash

# For Loops

# SYNTAXES - 

# for VARIABLE in 1 2 3 4 5 .. N
# do 
#     command1
#     command2
#     commandN
# done

# ------------------------------------------------------------------------

# for VARIABLE in file1 file2 file3
# do
#     command1
#     command2
#     commandN
# done

# ------------------------------------------------------------------------

# for OUTPUT in $(Linux-Or-Unix-Command-Here)
# do
#     command1
#     command2
#     commandN
# done

# ------------------------------------------------------------------------

# for (( EXP1; EXP2; EXP3  ))
# do
#     command1
#     command2
#     commandN
# done

# ----------------------------------------------------------------------------------------

# Method - 1
for i in 1 2 3 4 5 
do
    echo $i
done

# Method - 2
for (( i=0; i<5; i++ ))
do 
    echo $i
done

# Method - 3 - FOR Loop for executing linux commands
for command in ls pwd date
do 
    echo "-------------------$command-------------------"
    $command 
done

for item in *
do 
    if [ -f $item ]
    then
        echo $item
    fi
done