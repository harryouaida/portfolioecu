#!/bin/bash 
#This script was written by Hashem Ouaida in Feb 2022
#This script will call the ipInfo.sh script, and pass the input into the net_info command
#The script will then use sed to search and output only IP Address information         


#Call the ipInfo.sh script and pass the output into a variable called net_info
net_info=$(./ipInfo.sh) 

#Use sed to filter out anything that is not IP Address related.\
#We use the -n command to ignore everything other than the IP Adress query
# p will print out what we searched
addresses=$(echo "$net_info" | sed -n '/IP Address: / { 

   p
    
    
}')

#Display the result
echo -e "IP addresses on this computer are:\n$addresses" 
