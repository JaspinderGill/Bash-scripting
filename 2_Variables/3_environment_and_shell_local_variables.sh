: '
Each time we launch a terminal window and start a shell, a collection of predefined variables are set with some dynamic 
values and are used to customize the way the system works and behaves

2 classes of such variables
1. Environment variables - Defined for current shell and inherited by any child shells or processes. Used to pass information to 
    processes that are spawned from the current shell. These are also called exported variables. Displayed using env or printenv
2. Shell local variables - contained exclusively within the shell in which they were set. Displayed using set

User configuration file - ~/.bashrc
System-wide configuration file - /etc/bash.bashrc and /etc/profile
'

#EXAMPLE
echo $PATH #both environment and shell local variables that are already defined are written by convention in uppercase letters
env #shows all the environment variables
env | less
env | grep USER
env | grep HOME
printenv #list the environment variables but also the value of a specific variable and running it without any argument will print out all environment variables and giving a variable as an argument will print out the value og that variable
printenv HOME
printenv SHELL LC_TIME PWD #we can pass mutliple arguments

set #to display all available variables, enviroment, shell and those created by users
set | grep abc
set -o posix #and then again run set command #to operate in posix mode so it won't print shell functions and it will display only environment and shell local variables

: ' 
PRE DEFINED LOCAL SHELL VARIABLES(shown only by set command)
set | grep HIST(represents name of the file where the command history is saved)
set | grep 
'

#environment variable can be useful when we have to change the default settings of our system
#to create a new environment variable we have to export it using the export command before the variable name
export MYVAR="value"
#if we want to create a system wide variable from user variable available for all users declare the variable in a /etc/profile or /etc/bash.bashrc
/etc/enviroment #specifies the system wide environment variables to be set