#the break and continue statements allow us to control the loop execution
#with break, we can exit from a for, while, until, or select loop
#the continue statement can skips the remaining commands inside the loop for the current iteration and passes program control to the next iteration of the loop

#EXAMPLE
#!/bin/bash
i=0
while [[ $1 -lt 7 ]]
do
    echo "i is $i"
    (( i++ ))
    if [[ $i -eq 3 ]]
    then
        echo "i is 3 and I'm exiting the loop..."
        break
    fi
done

#EXAMPLE
while true
do 
    ping -c 1 $1 &> /dev/null
    if [[ $? -eq 0 ]]
    then
        echo "OK"
    else
        echo "I'm existing the while loop ..."
        break
    fi
    sleep 1
done
echo "Ping to $1 is not working, I'm sending an email to the admin."