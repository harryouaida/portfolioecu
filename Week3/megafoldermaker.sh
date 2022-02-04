
#!/bin/bash
#This Script was written by Hashem Ouaida in Feb 2022
#Asking user for two numbers. The first number asks for the first WEEK folder number
#and the second number asks for the last WEEK folder number

echo "Please enter the starting number for creating WEEK folder:  " 
read num1
echo "Please enter the last number for creating WEEK folder:  " 
read num2


#For every number between the first argument and the last

for ((i = $num1; i <= $num2; i++))

do

    #Create a new folder for that number

    echo "Creating directory number $i"

    mkdir "Week$i"

done
