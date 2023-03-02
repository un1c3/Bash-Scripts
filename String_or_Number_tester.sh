#!/bin/bash

set -e

echo
echo "This script demonstrates a peculiarity in bash where if a conditional returns an error, the condition checck returns a flase. We exploit this to see if the user inputs a number or a string"
echo
echo "Begin by entering a number, string, or empty character. Please note that a zero length character will exit the program."

while :
do
    read e
    if [ $e -le 0 ] || [ $e -ge 0 ]
    then
        echo "It is a number. :)"
    elif [ -z $e ]
    then
        echo "Exiting. :("
        exit 0
    else
        echo "It is not a number. >:("
    fi
done 2> /dev/null
