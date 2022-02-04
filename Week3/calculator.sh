#!/bin/bash
#Created by Hashem Ouiaida Feb 2022
#This script will ask user to enter two numbers that will be used to calculate an answer.
#If the user wants to Add the numbers the addition operators should apprear in Blue
#If the user wants to Subtract the numbers the subtraction operators should apprear in Green
#If the user wants to Multiply the numbers the multiplication operators should apprear in Red
#If the user wants to Devid the numbers the division operators should apprear in Purple

echo "***********************************************************************"
echo "*                 Welcome to the Calculator/Colour Script              *"
echo "***********************************************************************"
echo""
#Ask user two enter two numbers.
echo "Please enter the two numbers you would like to Calculate : "
read int1
read int2
#Save numbers into intigers

#Creating a Menu system.
echo "Enter arithemtic expression choice: "
echo "1. Addition (Blue)"
echo "2. Subtractiong (Green)"
echo "3. Multiply (Red)"
echo "4. Divide (Purple)"
#Save the choice for evaluation in the case
read choice
#Case will input number from above and do the calculation and then format the answer according to colour 
#scheme
case $choice in
        1)res=`echo $int1 + $int2 | bc`
        echo -e "Result:\033[34m"${res}"\e[0m"
        ;;
        2)res=`echo $int1 - $int2 | bc`
        echo -e "Result:\033[32m"${res}"\e[0m"
        ;;
        3)res=`echo $int1 \* $int2 | bc`
        echo -e "Result:\033[31m"${res}"\e[0m"
        ;;
        4)res=`echo "scale=2; $int1 / $int2" | bc`
        echo -e "Result:\033[35m"${res}"\e[0m"
        ;;
esac
echo "***********************************************************************"
echo "*       Thank you for using the Calculator/Colour Script              *"
echo "***********************************************************************"
echo""





