#!/bin/bash
#This script was created by Hashem Ouaida in Jan 2022
#Simple sript that reads the user input after being asked to type in a new name for the folder
read -p "Please type the name of the folder you would like to create: " folderName
#The input asking for a name of the new folder will then be done. A linux command for making 
#a directory will be run
mkdir "$folderName"