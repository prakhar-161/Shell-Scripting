#! /bin/bash

# -e - checks whether the file exists or not.
# -f - checks if file is an ordinary file as opposed to a directory or special file
# -s - checks if file has size greater than 0
# -x - checks if the file is executable or not
# -w - checks if the file is writable or not
# -r - checks if the file if readable or not
# -d - checks if file is a directory or not
# -b - checks if file is a block special file
# -c - checks if file is a character special file
# -t - checks if file descriptor is open and associated with a terminal
# -p - checks if file is a named pipe

# \c keeps the cursor on the same line
echo -e "Enter the name of the file : \c"
read file_name

# check if the file exists or not
if [ -e $file_name ]
then
    echo "$file_name found"
else
    echo "$file_name not found"
fi