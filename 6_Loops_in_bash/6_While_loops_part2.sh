: ' 
we can use a command instead of the while test condition and as long as its return status equals to zero(0), the shell will
execute the block of code between do and done
'

#EXAMPLE - USING COMMAND AS TEST CONDITION
while ping -c 1 8.8.8.8
do
    echo "Ping was successful"
    sleep 3
done

#EXAMPLE
#!/bi/bash
while read line
do
    echo $line
done< /etc/passwd #redirecting the contents of passwd file to the while compound command
# done< $1 - it will display the contents of file that is given in command line argument as the first argument - ./while_read.sh /etc/passwd

#EXAMPLE - <(process) - output of a process will appear as file - PROCESS SUBSTITUTION
#!/bi/bash
while read line
do
    echo $line
done< <(ping -c 3 8.8.8.8) #first less than sign is for input redirection and second less than sign is for process substitution