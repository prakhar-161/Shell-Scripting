#! /bin/bash

# FUNCTIONS

# Method - 1
# function name() {
#     commands
# }

# ----------------------------------------------------------------------------

# Method - 2
# name () {
#     commands
# }

# ----------------------------------------------------------------------------

function print() {
    echo $1 $2
}

quit() {
    exit
}

print hail messi

echo "ayooo"
quit
