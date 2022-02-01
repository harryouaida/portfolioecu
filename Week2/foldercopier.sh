#!/bin/bash
#This script was created by Hashem Ouaida Jan 2022
#Ask user for the name of the folder that should be existing now that is to be copied
read -p "Please type the name of the folder you would like to copy: " folderName    

# Testing condition with an If Else condition. 
if [ -d "$folderName" ]; then
# If there eixsts a folder already then we are ok to start the copying procedure
    
#We will copy the existing folder to a new location that will be inputted by the user
    read -p "type the name of the destination folder: " newFolderName

    cp -r "$folderName" "$newFolderName"

#Confirming to the user that s/he has copied an existing folder to a new location.

    echo "Folder $folderName has been copied to $newFolderName"

else

#If the text that the user entered is incorrect (no folder exists) then we will print an error

    echo "I couldn't find that folder"

fi