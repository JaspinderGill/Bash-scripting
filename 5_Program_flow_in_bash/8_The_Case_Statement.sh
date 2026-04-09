#the case construct allows us to test strings and numbers and is an elegent way to implement logics in our scripts
#a pattern can contain special characters like asterick or question mark

#SYNTAX
case "$variable" in
pattern1)
    #execute_this_code_1
    ;;
pattern2)
    #execute_this_code_2
    ;;
patternN)
    #execute_this_code_N
    ;;
*)
    #execute_this_default_code #it runs if no pattern matches
    ;;
esac

#EXAMPLE
#!/bin/bash
echo -n "Enter your favorite pet" #-n will not add the new line after the string
read pet
case "$pet" in
"dog") #double quotes are not mandatory as word splitting is not done here
    echo "Your favorite pet is dog."
    ;;
"cat" | "Cat" | "kitty" ) #vertical bar(|) operator seperates multiple patterns
    echo "You like cats."
    ;;
fish | "African turtle") #if a string contains spaces, it should be enclosed in double quotes
    echo "Fish or turtles are great!"
    ;;
*) 
    echo "Your favorite pet is unknown."
    ;;
esac 

#EXAMPLE 2
#!/bin/bash
if [[ $# -ne 2 ]]
then 
    echo "Run the script with 2 arguments : Signal and PID."
    exit 1
fi 

case "$1" in
1)
    echo "Sending the SIGHUP signal to $2"
    kill SIGHUP $2
    ;;
2)
    echo "Sending the SIGINT signal to $2"
    kill SIGINT $2
    ;;
15)
    echo "sending the SIGTERM signal to $2"
    kill -15 $2
    ;;
*)
    echo "Signal no. $1 cannot be delivered"
    ;;
esac 