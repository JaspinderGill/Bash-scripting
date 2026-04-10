#A list is a sequence of one or more commands written on the same line and separated by the one of the following list operartors
#LIST OPERATORS = ; & && ||

# ; OPERATOR
#by this we can run  more than one commands on the same line
#these are executed sequentially, the shell waits for each command to terminate in turn
#retun status is exit status of the last command executed
#command have no connection to each other they are independent
#when we run commands sequnetially bash will wait for a command to finish before moving and executing the next one
#SYNTAX = command1; command2; command3
#EXAMPLE
ls; mkdir project; touch project/a.cpp; tar -czvf project.tar.gz project/
sleep 10; ls

# & OPERATOR
#if command is terminated by the & operator the shell executes the command asynchronously in a sub shell, means command will be executed in background and these are called asynchronous commands
#SYNTAX = command&
#EXAMPLE
sleep 10& ls

# && OPERATOR
#SYNTAX = command1 && command2 = in this case command2 is executed if and only if command1 returns an exit status of 0 which means success
#this is useful when a command depends on the results of the previous command
#we can chain more than 2 commands in this
#EXAMPLE
ls ~ && echo success
tar -cf project.tar project/ && rm -rf project 
tar -cf project.tar project/ && rm -rf project && echo success

# || OPERATOR  
#SYNTAX = command1 || command2
# We DO SOMETHING || IF THERE WAS AN ERROR WE PROCESS THE ERROR
#In this command2 is executed if and only if command1 returns an error which means a non-zero exit status
#EXAMPLE
ls ~ || echo success
ls /root || echo success

#We can use both && and || on the same line
# command1 && command2 ||command3 = this means run command1, if command1 is successful then run command2, but if command1 is not successful then run command3

#return status of AND(&, &&) and OR(||) list operators is the exit status of the last command executed in the list of commands