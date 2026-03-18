
#A variable is a name for a memory location where a value(can be manipulated) is stored
#ex - IP="10.0.0.1"

#we can create a variable in script file or directly in shell
#example : 
#os=Linux

#The name of the variable is os and it's value is String Linux

#it is not allowed to use the space before or after the equal sign

#if we add a space after the variabe, it will be considered as command by the shell and all that follows will be its options and 
#arguments

#if the value of a variable is a string that contains spaces then enclose it in double quotes
#ex - distro="Kali Linux"

#when any numeric value is assigned to a variable that will work as an integer and when any text value is assigned to a variable 
#that will be considered as a string
#there will be no floating point numbers, they are considered only as integers

#we can also define a variable that takes its value from an existing variable or number of variables
#ex - 
#disto="Ubuntu"
#my_distro="$os $distro"

#to get the list of all shell variables and functions, run the set command
#ex - set | grep distro
#to undefine or remove a variable, use the unset command
#ex - unset distro

#when we want to make sure that the content of variable doesnt change(it's read only), we will use the declare built in command with -r
#example(declaring constant)
#declare -r LOGDIR=/var/log
#and we can use these variables in our scripts and we can also do not unset or delete the read only variable
#ex - ls $LOGDIR

#VARIABLE NAMING CONVENTIONS
#use lower_case with underscore for variable names
#constants should be written in CAPITALS
#variables names should be descriptive
#variables names can not start with a number and cannot contain spaces or other special character
#all environemt variables or shell variables introduced by the operating system, shell start up scripts or the shell itself are usually in capitals
#ex - $PATH, $USER, $HOME, etc.
#variable name can start with under score and upper and lower case alpha numeric characters
#we can use under score to seperate words for a variable name with more than 1 word