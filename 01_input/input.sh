#!/bin/bash

# takes input from user, check if y/n
echo -n "y or n : "
read option

if [ "$option" == "y" ]
then
    echo "okay $option means y"

elif [ "$option" == "n" ]
then
    echo "okay $option means no"

else
    echo "please input y or n"

fi
