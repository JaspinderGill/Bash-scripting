: '
The while loop is used to execute a series of commands as long as a specific condition is true
It is used in situations where the number of loop repetitions is not known in advance

SYNTAX
while CONDITION
do
    RUN_THESE_COMMANDS
done
'

#EXAMPLE
#!/bin/bash
i=0
while [[ $i -lt 10 ]]
do
    echo "i=$i"
    (( i++ )) #double parenthisis performs arithmetic operation and it is same as "let i=i+1"
done

#EXAMPLE(INDEFINITE LOOP)
while [[ 1 -eq 1 ]]
do
    echo "Indefinite loop, press CTRL + C to exit"
done

#EXAMPLE
#!/bin/bash
while : # : is a way to create indefinite loop because colon symbol is a bash built in that always returns true 
# while true - another way to create indefinite loop
do
    output="$(pgrep -l $1)" #the process that will be checked whether it's running or not is the first argument($1)
    if [[ -n "$output" ]]
    then
        echo "The process \"$1\" is running"
    else
        echo "The process \"$1\" is not running"
    fi
    sleep 3 
done

#EXAMPLE - WRITING WHILE LOOP ON SINGLE LINE
while true; do echo "infinite loop"; sleep 1; done