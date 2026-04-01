#these parameters can only be referenced assigning to them being not allowed
: ' 
$0 - the name of the script itself
$@ and $* - a string representation of all positional parameters
$# - the number of the positional arguments in decimal
$? - the most recent foregroud command exit status
$$ - the process id of the shell and in subshell it expands to the process id of the invoking shell not the subshell
'

#EXAMPLE
echo "1st script's argument (\$1) is ${1:-abc}"
echo "2nd script's argument (\$2) is $2"
echo "3rd script's argument (\$3) is $3"
#...
echo "10th script's argument (\${10}) is ${10}"
echo "11th script's argument (\${11}) is ${11}"
echo "\$# is $#" #stores the number of arguments
echo "\$@ is $@" #expanded to all positional parameters that were given to the script
echo "\$* is $*" #expanded to all positional parameters that were given to the script
echo "\$? is $?" #expanded to the exit status of the last executed command
echo "\$$ is $$" #expanded to process ID of the shell

#In linux, each executed command or script retuns an exit status, where 0 means success and different from 0 means error