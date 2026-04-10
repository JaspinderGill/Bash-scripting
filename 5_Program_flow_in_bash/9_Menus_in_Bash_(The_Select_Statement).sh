: '
The select statement provides us with a drop down menu to select items

SYNTAX
PS3="Select an option:"
select ITEM in LIST_OF_OPTIONS
do
    commands
done
'

#EXAMPLE
#!/bin/bash
PS3="Choose your country:"
select COUNTRY in Germany France USA "United Kingdom" Quit
do
    case $REPLY in
    1)
        echo "You speak German!"
        ;;
    2)
        echo "You speak French!"
        ;;
    3)
        echo "You speak American English!"
        ;;
    4)
        echo "You speak British English!"
        ;;
    5)
        echo "Quitting..."
        sleep 1
        exit
        ;;
    *)
        echo "Invalid option $REPLY"
        ;;
    esac
done

#the select loop will continue to run and prompt for the user input until the break command is executed or the user presses Ctrl+C
#default prompt is #?, we can change it by modifying the pre defined variable PS3