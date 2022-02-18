#!/bin/bash
#This Script was written by Hashem Ouaida Feb 2022

echo "###################################################################################"
echo "This is an example of using regex for all sed statements in my portfolio so far"
echo "###################################################################################"
echo " " 

grep -r '\w sed' ~/Documents/scripts/portfolio/



echo " " 
echo "###################################################################################"
echo "This is an example of using regex that display lines that start with the letter M"
echo "###################################################################################"
echo " " 
#This Script displays results with M
grep -r '^m[^1]' ~/Documents/scripts/portfolio/

echo " " 
echo "######################################################################################################"
echo "This is an example of using regex that display lines contain three digit numbers like 333 for example"
echo "######################################################################################################"
echo " " 

#This script returns results for numbers that have three digits
grep -r '\<[0-9]\{3\}\>' ~/Documents/scripts/portfolio/
echo " " 

echo " " 
echo "########################################################################################################"
echo "This is an example of using regex that display lines contain echo statements with at least three words  "
echo "########################################################################################################"
echo " " 

grep -r echo ~/Documents/scripts/portfolio/ >> grepoutput.txt

#Displays lines with three words
grep -r '\<\w\{3\}\>' grepoutput.txt


rm grepoutput.txt

echo " " 

echo " " 
echo "########################################################################################################"
echo "This is an example of using regex to check if there are any words that could be a good password         "
echo "########################################################################################################"
echo " " 


#Displays results for passwords that meet my criteria for complexity. I created a special file that contains a complex password to make sure it works
grep -r -E "((\w*).*[$%*@#]+[A-Za-z0-9]+[{8,10}](\w+))" ~/Documents/scripts/portfolio/



echo " " 
echo "########################################################################################################"
echo "                            Thank you for using my Grep and Regex Script                                "
echo "########################################################################################################"
echo " " 
