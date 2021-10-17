#! /bin/bash

# Taking input from user and determining the category of input given by the user

echo -e "Enter some character : \c"
read value

case $value in 
    [a-z] )
        echo "User entered $value which is Smallcase letter" ;;
    [A-Z] )
        echo "User entered $value which is Uppercase letter" ;;
    [0-9] )
        echo "User entered $value which is a number" ;;
    ? )
        echo "User entered $value which is a special character" ;;
    * )
        echo "Unknown Input" ;;
esac