#! /bin/bash

# Appending output to the end of the text file

echo -e "Enter the name of the file : \c"
read file_name

if [ -f $file_name ]
then
    if [ -w $file_name ]
    then
        echo "Type some text"
        cat >> $file_name
    else
        echo "The file doesn't have write permissions :("
    fi
else
    echo "$file_name not exists"
fi