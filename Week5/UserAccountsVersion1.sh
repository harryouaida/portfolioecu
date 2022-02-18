
#!/bin/bash 
#

cat /etc/passwd > usernamefiles.txt

#sed -i 's/:/: /g' usernamefiles.txt
sed -i 's/x:/: /g' usernamefiles.txt

sed -i 's/:: /:  /g' usernamefiles.txt

sed -i 's/,,,//g' usernamefiles.txt

sed -i 's/::/: /g' usernamefiles.txt

sed -i 's/:/: /g' usernamefiles.txt


#sed -i 's/:/:  /g' usernamefiles.txt

#sed -i 's/\///g' usernamefiles.txt



   
awk 'BEGIN { 

    
      
FS=":"; 
      
print "___________________________________________________________________________________________________"; 
      
print"|  \033[34mUsername\033[0m            |  \033[34mUserID\033[0m  |\033[34mGroupID\033[0m     |\033[34mHome\033[0m                       |\033[34mShell\033[0m                  |";

    
} 
      
{ 


printf("| \033[33m%-20s\033[0m | \033[35m%-8s\033[0m |\033[35m%-11s\033[0m |   \033[35m%-25s\033[0m | \033[35m%-20s\033[0m |\n", $1, $2, $3, $5, $6);


      
} 
      


END { 
      
print("__________________________________________________________________________________________________"); 
      
}' usernamefiles.txt
     
#awk '/bin/bash' usernamefiles.txt

#awk ' {print $6) ' usernamefiles.txt
#awk '{ if ($6 == '/bin/bash') { print } }' usernamefiles.txt



#rm usernamefiles.txt

awk -F: '$7~/\/[b][a-z][a-z]\/[b][a-z][a-z]/' /etc/passwd















                  