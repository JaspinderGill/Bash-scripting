# IF ELIF AND ELSE STATEMENTS SYNTAX
if [ some_condition_is_true ]
then
    # 1. execute this code
elif [ some_other_condition_is_true ]
then
    # 2. execute this code
else 
    # 3. execute this code
fi

#compound commands start and end with reserved words as there is if and fi
#In bash, true means a return status of zero and false means a return status different from zero
#we can have only one if statement and it is not mandatory to always have elif or else statements
#It is mandatory to have whitespace before and after the square brackets that enclose the testing condition 
#the fi reserved word at the end delimiters the entire if, elif and else programming structure, as it is same to closing curly brace in c or java
# man test = it will show all the testing conditions that can be used
# now double sqaure brackets([[  ]]) are used for testing as they are considered safe as double square brackets prevent word splitting of string variables that contain spaces and we don't need to double quote string variables
#double sqaure brackets also have regular expression matching

#EXAMPLE 1
#script takes a regular file as an argument and displays its contents
#!/bin/bash
if [[ -f "$1" ]] # -f is a test condition that returs true if the value that follows is a regular file
then 
    echo "The argument is a file, displaying its contents ..."
    sleep 1
    cat $1
elif [[ -d "$1" ]]
then 
    echo "The argument is a directory, running ls -l ..."
    sleep 1
    ls -l $1
else
    echo "The argument ($1) is neither a file nor a directory"
fi