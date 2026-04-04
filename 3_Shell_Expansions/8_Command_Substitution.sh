: ' 
- It means saving the output of a command in a variable for later use

SYNTAX
`command` OR $(command)

EXAMPLES 
p="$(ping -c 1 8.8.8.8)"
users="`cut -d: -f1 /etc/passwd`"
echo $users
'

#EXAMPLE(FIRST WAY)
#This is example of command substitution and this date command was executed and its output stored into a new variable called now
#this variable "now" can be used inside a script
#date command was substituted or replaced by its output and because output is a string value, it is better to enclose everything inside double quotes
now=`date`
echo $now

#date command was substituted or replaced by its output and because output is a string value, it is better to enclose everything inside double quotes
now="`date`"
echo $now

#EXAMPLE(SECOND WAY)
users="$(who)" #same as users="`who`"
echo $users

#we can substitute the entire command line which contains more commands piped together
output="$(ps -ef | grep bash)" #substituting the command and storing its output to a variable
echo $output

sudo tar -czf etc-$(date +%F_%H%M).tar.gz /etc/