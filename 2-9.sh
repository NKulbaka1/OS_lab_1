#!/bin/bash

if [ "$1" == "-h" ]; then #prompts
    echo ""
    echo "The script has no parameters"
    echo "You must only enter positive numbers"
    echo ""
    exit 0
fi

is_number() {  #checking if the entered value is number
    re='^[0-9]+$'
    if [[ $1 =~ $re ]] ; then
        return 0
    else
        return 1
    fi
}

read -p "Enter width of rectangle : " width  #request for width
while ! is_number $width || (( width <= 0 ))    #checking if the width < 0
do
read -p "Incorrect input! Enter new width of rectangle : " width # if width < 0, offer to enter a new number
done

read -p "Enter length of rectangle : " length  #request for length
while ! is_number $length || (( length <= 0 ))   #checking if the length < 0
do
read -p "Incorrect input! Enter new length of rectangle : " length # if length < 0, offer to enter a new number
done

perimeter=$(((length+width)*2)) # calculating perimeter

echo "Perimeter : $perimeter"  #printing perimeter

exit 0
