#!/bin/bash
PS3="Your choice:"
select ITEM in "Add User" "List all processes" "Kill process" "install Program" "Quit"
do
    if [[ $REPLY -eq 1 ]]
    then    
        read -p "Enter the usename:" username
        output="$(grep -w $username /etc/passwd)"
        if [[ -n "$output" ]]
        then
            echo "The username already exists!"
        else
            sudo useradd -m -s /bin/bash "$username"
            if [[ $? -eq 0 ]]
            then
                echo "The user $username was added successfully!"
                tail -n 1 /etc/passwd
            else
                echo "there was an error adding the user."
            fi
        fi
    elif [[ $REPLY -eq 2 ]]
    then
        echo "Listing all the processes"
        sleep 1
        ps -ef
    elif [[ $REPLY -eq 3 ]]
    then
        read -p "Enter the process to kill: process"
        pkill $process
    elif [[ $REPLY -eq 4 ]]
    then
        echo "Enter the program to install:" app
        sudo apt update && sudo apt intall $app -y
    elif [[ $REPLY -eq 5 ]]
    then
        echo "Qutting..."
        sleep 1
        exit 
    else
        echo "Unvalid menu selection"
    fi
done