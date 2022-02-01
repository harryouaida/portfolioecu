#!/bin/bash
#The menu.sh Script was created by Hashem Ouaida Jan 2022
#Calling the password checker script to check if password is correct
./passwordCheck.sh
#The exist code from the passwordCheck.sh was Exit = 0 if it is correct. If is indeed
#correct hten the If statement will allow it to go through to the remanining code.
if [ $? -eq 0 ]; then
#Creating a Case Condition, where the user has the option selecting from a menu style
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
else
#If the Exit code from the passwordCheck.sh script was Exit = 1 then it will fail and the program will close. 
echo "Incorrect Password. Good Bye!"
fi
        
        
    