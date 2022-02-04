#!/bin/bash
#The menu.sh Script was created by Hashem Ouaida Jan 2022
#Calling the password checker script to check if password is correct
./MenuFiles/passwordCheck.sh
#The exist code from the passwordCheck.sh was Exit = 0 if it is correct. If is indeed
#correct hten the If statement will allow it to go through to the remanining code.
if [ $? -eq 0 ]; then
#Creating a Case Condition, where the user has the option selecting from a menu style
    PS3='Select Option: '
    options=("Create Folder" "Copy Folder" "Set a Password" "Calculator" "Create Week Folders" "Check File Names" "Download a File" "Quit")
    select opt in "${options[@]}";

    do 
        case $opt in
#Calling the foldermaker.sh script
            "Create Folder")
                ./MenuFiles/foldermaker.sh
                ;;
#Calling the foldercoper.sh script
            "Copy Folder")
                ./MenuFiles/foldercopier.sh
                ;;
#Calling the setPassword.sh script
            "Set a Password")
               ./MenuFiles/setPassword.sh
                ;;  
#Calling the Calculator script
            "Calculator")
               ./calculator.sh
                ;;  
#Calling the Create Week Folder script
            "Create Week Folders")
               ./megafoldermaker.sh
                ;;  
#Calling the Check Filenames script
            "Check File Names")
               ./filenames.sh
                ;;  
#Calling the Download a File script
            "Download a File")
               ./InternetDownloader.sh
                ;;  
#Once the user has finished they can tyle the number 4 and the program will exist.   
            "Quit")
            echo "Good Bye!"
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
        
        
    