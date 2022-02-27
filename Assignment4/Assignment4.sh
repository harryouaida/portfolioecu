#!/bin/bash
#This script was created by Hashem Ouaida in Feb2022
#Assignment 4 ECU
#This script will scrape the webpage: view-source:https://cybernews.com/security/top-cybersecurity-threats-of-2022-report/
#The program will search for and organise subject matter into categories.
#User will be able to make a seleciton on the cyber security topic they are interested in
#and then be able to get more information.


menu(){
rm hash.txt
#Clean up the documents for security and tidyness
rm clean.txt
rm clean1.txt
rm output.txt
#This Function will set up the Menu system
while :
do

    Introduction="$(awk -F ":" '{ print $1 }' clean.txt)"
    Selection1="$(awk -F ":" '{ print $2 }' clean.txt)"
    Selection2="$(awk -F ":" '{ print $3 }' clean.txt)"
    Selection3="$(awk -F ":" '{ print $4 }' clean.txt)"
    Selection4="$(awk -F ":" '{ print $5 }' clean.txt)"
    Selection5="$(awk -F ":" '{ print $6 }' clean.txt)"
    Selection6="$(awk -F ":" '{ print $7 }' clean.txt)"
    Selection7="$(awk -F ":" '{ print $8 }' clean.txt)"
    clear
    cat<<EOF

    "$Introduction"

    ======================================
     Cyber Security Topics
    --------------------------------------
    Please enter your choice:

    Deekfake synthetic identity fraud (1)
    Fraud-as-a-Service (2)
    Real-time payments fraud(3)
    Fast credit fraud(4)
    Ransomware attacks(5)
    Marketplace scams(6)
    Digital identity verification fraud(7)
    (Q)uit
    --------------------------------------
EOF
    read -n1 -s
    case "$REPLY" in
    "1")  echo "$Selection1" ;;
    "2")  echo "$Selection2" ;;
    "3")  echo "$Selection3" ;;
    "4")  echo "$Selection4" ;;
    "5")  echo "$Selection5" ;;
    "6")  echo "$Selection6" ;;
    "7")  echo "$Selection7" ;;
    "Q")  exit  
    
    esac
    sleep 1


done

}


retrieve(){
#This function will retrieve the web data
curl -o output.txt https://cybernews.com/security/top-cybersecurity-threats-of-2022-report/ 

}

cleanup(){

cat output.txt | grep "<p>" | sed 's/<[^>]*>//g' | sed 's/:/ /' | sed '/^[0-9]/ s/^/:/'  > clean.txt

#This function will clean up the data
cat clean.txt | tr -s '\n' ' ' > clean1.txt

cat clean1.txt > clean.txt 

}


#Ask the user to enter a secret password that will be hidden from Shoulder Surfers

read -sp 'Please enter the password in order to enter this script: ' password

#Hash password into temp file hash.txt

echo $password | sha256sum >> hash.txt



secret="6b3a55e0261b0304143f805a24924d0c1c44524821305f31d9277843b8a10f4e  -"

#Retreiving Hashed password from Secret.txt file and putting into the 'hash' variable

hash=$(cat hash.txt)


#comparing the two hashed varbables, and granted or denying access. Also removing the temporary file


if [ "$secret" = "$hash" ]; then

 
    echo "Access Granted"



#Call the functions
retrieve
cleanup
menu

       

            exit 0

            else    
                echo ""
                echo "Access Denied. Please run the command again and enter the correct Password to get access to this script!"
                #Advising the user that in order to access this script they need the password
                    rm hash.txt
                   

                        exit 1

                        fi