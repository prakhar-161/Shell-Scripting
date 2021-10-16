#! /bin/bash
# Taking user inputs

echo "Enter name : "
read name1 name2 name3
echo "Entered names are : $name1, $name2, $name3"

# -p allows to read input on same line
# -sp for hidden string(for eg- passwords)
# -a for saving inputs inside array

read -p 'username : ' user_var
read -sp 'password : ' pass_var
echo
echo "username is : $user_var"
echo "password : $pass_var" 

echo "Enter names : "
read -a names
echo "Names : ${names[0]}, ${names[1]}"

# if no variable names after read cmd, then the input gets stored in the system variable called REPLY.
echo "Enter name : "
read
echo "Name : $REPLY"