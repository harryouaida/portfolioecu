#! /bin/bash
#Created by Hashem Ouaida Jan 2022
#Ask the user to enter a secret password that will be hidden from Shoulder Surfers
read -sp 'Please Type a Secret Password : ' password
#Hash password and send it to the secret file.
echo $password | sha256sum >>Secret.txt


