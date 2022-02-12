#!/bin/bash



#This function prints a given error

printError()

{

    echo -e "\033[31mERROR:\033[0m $1"

}

#This Script was created by Hashem Ouaida in Feb 2022
#The script will ask user to enter a number. Function getnumber() will make sure the number is between 1-100
#The script will then call a getGuess() function will take the captured input and compare it to the number 42
#If the user guesses the number 42 then the program will close
#If the user does not guess the number, then within the getGuess() function the user will have an
#opurtunity to guess agaiun until they get the right number.
#The function will give the user hints as to what the number really is. 



getNumber()

{

    read -p "$1: "

    while (( $REPLY < $2 || $REPLY> $3 )); do

        printError "Input must be between $2 and $3"

        read -p "$1: "

    done

}

getGuess() {

 #While Loop
 #The users reply must be on either side of the number 42

    while (( $REPLY < 42 || $REPLY > 42 )); do

#If number is below 42 then the user is advised the number is too low
    if [ $REPLY -lt 42 ]
        
        then

        echo "The Number is too low"
#If number is above 42 then the user is advised the number is too high
    elif [ $REPLY -gt 42 ]

        then

        echo "The Number is too high"      

        fi 

       read -p "Please Guess Again:  "

    done
    
    
}

echo " "
echo "################################"
echo "# Welcome to the Guessing Game #"
echo "################################"
echo " "

#Ask user for a number between 1 and 100
getNumber "Please type a number between 1 and 100" 1 100

#Storing result of number into a variable
GuessedNumber=$REPLY

#Stored Variable sent to teh getGuess function
getGuess $GuessedNumber

#Once the number is finally correctly guessed,  user will be advised and script will end
echo "The Number $REPLY is correct!"

echo " "
echo "################################"
echo "#      Thanks for Playing      #"
echo "################################"
echo " "