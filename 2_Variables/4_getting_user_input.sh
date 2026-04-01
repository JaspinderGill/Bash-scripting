#to take users input we will use the "read" command
#read will make the program flow stop until the user has given input and has ended the input with return or enter key
#read command reads a single line from the standard input and can split into fields as it does in the case of word splitting
#the first word assigned to the first variable name, second word to the second variable name and so on and with any left over word to the last name
#the default delimiter is given by the IFS variable and is by default a whitespace


#NOTE
#if no variable name is supplied, that line read is stored in a predefined variable called REPLY
#EXAMPLE
read #input - 100
echo $REPLY #Output - 100

#EXAMPLE
read name #a new variable name was created and string john is value, stored in this variable
echo $name

#To show message for input
read -p "Enter the IP Address:" ip #input - 1.1.1.1
echo $ip #output - 1.1.1.1

read NAME AGE CITY #input is John 30 London
echo $NAME #John
echo $AGE #30
echo $CITY #London

#EXAMPLE(SCRIPT that drops specific domain, IP, network address that is given by user)
#sudo iptables -I INPUT -s 8.8.8.8 -j DROP

#!/bin/bash
read -p "Enter the IP address or domain to block:" ip
iptables -I INPUT -s $ip -j DROP

#if we want to enter a pasword or other sensitive information without echoing in the terminal, add the -s option
#EXAMPLE
read -s -p "Enter Password:" password