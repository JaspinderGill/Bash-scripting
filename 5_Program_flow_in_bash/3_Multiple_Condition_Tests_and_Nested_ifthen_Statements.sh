# The logical AND and OR operator allow us to use multiple conditions in the same if statement
#logical AND operator = && for [[ test ]] and -a for [ test ]
#logical OR operator = || for [[ test ]] and -o for [ test ]

#EXAMPLE(logical AND operator )
#!/bin/bash
read -p "Enter your age:" age

if [[ $age -lt 18 && $age -ge 0 ]]
then
    echo "You are minor!"
elif [[ $age -eq 18 ]]
then
    echo "Congratulations, you've just become major!"
elif [[ $age -gt 18 && $age -le 100 ]]
then
    echo "You are major!"
else
    echo "Invalid age!"
fi

#SECOND METHOD
#!/bin/bash
read -p "Enter your age:" age

if [$age -lt 18 -a $age -ge 0 ]
then
    echo "You are minor!"
elif [[ $age -eq 18 ]]
then
    echo "Congratulations, you've just become major!"
elif [ $age -gt 18 -a $age -le 100 ]
then
    echo "You are major!"
else
    echo "Invalid age!"
fi

#EXAMPLE(NESTED IF)
#!/bin/bash
if [[ $# -eq 1 ]] #it means number of arguments of the script equals 1
then 
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
else
    echo "This script should be run with an argument!"
fi