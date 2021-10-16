#! /bin/bash

# Passing arguements to a Bash-script
# $@ refers to all of the shell script's command-line arguements
# $# refers to the number of arguements passed into the script

# Method-1 : 
echo $0 $1 $2 $3 ' > echo $1 $2 $3'

# Method-2 : 
# Pass arguements into script as an array
args=("$@")
echo ${args[0]} ${args[1]} ${args[2]}       #0th index for the first argumnent here

# print all arguements using default var @
echo $@

# print number of arguements passed into the script - use Default variable (#)
echo $#