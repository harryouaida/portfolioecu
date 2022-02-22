#!/bin/bash
#This script was created by Hashem Ouaida in Feb2022
#Assignment 4 ECU
#This script will scrape the webpage: view-source:https://cybernews.com/security/top-cybersecurity-threats-of-2022-report/
#The program will search for and organise subject matter into categories.
#User will be able to make a seleciton on the cyber security topic they are interested in
#and then be able to get more information.


menu(){

while :
do
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

curl -o output.txt https://cybernews.com/security/top-cybersecurity-threats-of-2022-report/ 

#Time to clean the output. This section will remove everything in the output that we do not need. Anything within the 
#<p> and the </P> is of interest in this webpage and also to remove HTML tags. The script will inert dilimeters before
#numbers within the filtered text to assit in the awk commands later
cat output.txt | grep "<p>" | sed 's/<[^>]*>//g' | sed 's/:/ /' | sed '/^[0-9]/ s/^/:/'  > clean.txt

#The script 
cat clean.txt | tr -s '\n' ' ' > clean1.txt

cat clean1.txt > clean.txt 
#The script will now use Awk commands to put a delimiter in front of numbers to organise rows and columns

Introduction="$(awk -F ":" '{ print $1 }' clean.txt)"
Selection1="$(awk -F ":" '{ print $2 }' clean.txt)"
Selection2="$(awk -F ":" '{ print $3 }' clean.txt)"
Selection3="$(awk -F ":" '{ print $4 }' clean.txt)"
Selection4="$(awk -F ":" '{ print $5 }' clean.txt)"
Selection5="$(awk -F ":" '{ print $6 }' clean.txt)"
Selection6="$(awk -F ":" '{ print $7 }' clean.txt)"
Selection7="$(awk -F ":" '{ print $8 }' clean.txt)"

rm clean.txt
rm clean1.txt
rm output.txt



menu