#!/bin/bash
#This script was corrected by Hashem Ouaida in Jan 2022

secret='shhh' #Don't tell anyone!



read -p "Please type the super secret password:  " REPLY

if [ "$secret" = $REPLY ]; then
#if the user types in the correct secret, tell them they got it right!
    echo "You got it right!"
    echo "You have unlocked the secret menu!"


else    echo "You got it wrong :("
        echo "Go Away!" #people who get it wrong need to be told to go away!
        exit 0


fi

#Bonus menu for those who knwo the secret
 PS3='Select Option: '
    options=("Create Folder" "Copy Folder" "Set a Password" "Quit")
    select opt in "${options[@]}";

    do 
        case $opt in
#Calling the foldermaker.sh script
            "Create Folder")
                ./foldermaker.sh
                ;;
#Calling the foldercoper.sh script
            "Copy Folder")
                ./foldercopier.sh
                ;;
#Calling the setPassword.sh script
            "Set a Password")
               ./setPassword.sh
                ;;  
#Once the user has finished they can tyle the number 4 and the program will exist.   
            "Quit")
                break
                ;;  
#If the user selects anything other than, 1, 2,3 or 4 then they will have the chance to try again
            *) echo "Invalid option $REPLY";; 
        esac
    done
