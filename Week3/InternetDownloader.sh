#!/bin/bash
#This script was written by Hashem Ouaida Feb 2020



while [[ $URL != EXIT ]] #While this condition is true, the loop will run
#Lets do the loop
do 



read -p 'Please type the website URL to download or type "EXIT" to "QUIT" : ' URL
#Asking the user to enter a URL to download a file

if [[ $URL == EXIT ]]
#If statement to check if the EXIT command is entered. If it is then .......

then
#The program will break and end. 
break

fi
#Asking the user where they would like to save the downloadable content.
read -p "Type the location where you would like to download the file to: " location
#wget command to get the link and the location where the user wants to save the file. 
wget $URL $location



done

exit 2