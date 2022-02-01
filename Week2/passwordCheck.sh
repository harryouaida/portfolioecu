#! /bin/bash
#Created by Hashem Ouaida Jan 2022

#Ask the user to enter a secret password that will be hidden from Shoulder Surfers
read -sp 'Please Type a Secret Password : ' password
#Hash password into temp file hash.txt
echo $password | sha256sum >> hash.txt

#Retreiving Hashed password from Secret.txt file and putting into the 'secret' variable
secret=$(cat Secret.txt)
#Retreiving Hashed password from Secret.txt file and putting into the 'hash' variable
hash=$(cat hash.txt)

#comparing the two hashed varbables, and granted or denying access. Also removing the temporary file
if [ "$secret" = "$hash" ]; then
    echo "Access Granted"
    rm hash.txt
    exit 0
else    
    echo "Access Denied"
    rm hash.txt
    exit 1
fi



