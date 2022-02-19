import random
import string
import hashlib

#hidden password hash


passwordHash = "8b7df143d91c716ecfa5fc1730022f6b421b05cedee8fd52b1fc65a96030ad52"

#What I want to do is use every possible combination to find the hash password.
#I need to set up a search rule 
#I need to put search rule into a variable
#Change variable when there is a failure
#create a for loop

hex_dig= ""

while hex_dig != passwordHash:



    #source =string.ascii_letters + string.digits < This takes a very long time because we are testing for numbers
    #as well as letters
    source =string.ascii_letters #Much quicker.

    #This script works, but I am going to improve on it further by implenting a technique where repeated numbers
    #are not repeated
    #Below is where I create a random number
    result_str = ''.join((random.choice(source) for i in range (4)))
    #I hash every single randomly generated 4 letter combinatation and put the hash through the whilte loop
    hash_object = hashlib.sha256(result_str.encode('utf-8'))
    hex_dig =hash_object.hexdigest()

    print ("Trying password ", result_str, ": ", hex_dig)

else:

    print("Congratulations the cracked password is: ",   result_str )

  #This script works for a small four letter password trying to crack a hash, but for larger words with different 
  #combination another strateghy will need to be implemented.




