#!/bin/bash
#This script was written by Hashem Ouaida Feb 2020

#File="filenames.txt"



File="$1"

Lines=$(cat $File)

for Line in $Lines
do  

if [ -d "$Line" ]; then

    echo "$Line - That is a Directory"

elif [[ $Line == *.sh ]];then

    echo "$Line - That is a valid file"

else

    echo "$Line - I dont know what that is."


fi

done