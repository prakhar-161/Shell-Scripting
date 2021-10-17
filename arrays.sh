#! /bin/bash

os=('macOS' 'windows' 'ubuntu' 'kali')

echo "${os[@]}"         # prints the elements of the array

# add elements in array at an index
os[4]="iOS"

echo "${os[@]}"

echo "${os[1]}"         # prints particular element

echo "${!os[@]}"        # prints the indices of the array

echo "${#os[@]}"        # prints the length of the array

# remove element from an array
unset os[4]

echo "${os[@]}"

# string array
string=djebdfkenodwjoijdw
echo "${string[@]}"      # prints the whole string variable

echo "${string[0]}"      # prints the 0th index which is assigned the whole value of variable

echo "${string[1]}"      # prints nothing as it doesn't contain anything and value is already present at 0th index

echo "${#string[@]}"     # prints the length of string array which is 1