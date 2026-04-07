#If we place the number before the greater than(>) operator, it will redirect to that stream and if we don't use the number, then it defaults to stream 1, which is standard output
#Same rules of output redirection applied to error redirection
# to redirect to a stream, we will place an ampersand(&) in the front of stream number, ex - 2>&1
# tee = it breaks the output of a program so that it can be both displayed at the terminal and stored to a file, by default it overwrites the file

#EXAMPLES
tail -n 3 /etc/shadow #it will return error
tail -n 3 /etc/shadow 2> error.txt #it will redirect error message to a file
tail -n 3 /etc/shadow 2>> error.txt #it will append the error message to a same or existing file
tail -n 2 /etc/passwd /etc/shadow > output.txt 2> errors.txt #redirects both the standard output and error of the same command if the command produces both normal output and errors
tail -n 2 /etc/passwd /etc/shadow > output_errors.txt 2>&1 #redirecting both stdout and stderr to same file, here we redirect stdout to a file and stderr to stdout
ifconfig | grep ether > mac.txt #combining command redirection with pipes, it filters the mac address and redirects to a file
ifconfig | grep ether | cut -d" " -f10  > mac.txt #mac address without extra strings, cut carves out the fields of the output using a delimiter, which is space in this case
ifconfig | grep ether | tee mac.txt #storing in a file and viewing output output at the screen of a command at the same time
ifconfig | grep ether | tee -a mac.txt #to append the file with tee command
uname -r | tee -a mac.txt kerne.txt #writing output to multiple files