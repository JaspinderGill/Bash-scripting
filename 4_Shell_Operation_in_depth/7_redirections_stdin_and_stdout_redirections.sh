: '
- After quote removal, the last step of the command line process flow is to perform all necessary redirections
- Every shell has three data streams connected to it
- The number 0,1,2 identify infact file descriptions that are open each time you run the command

DATA STREAMS ATTACHED TO EACH COMMAND AND THESE IDENTIFIED BY NUMBERS 0,1,2
1. STDIN(0) = Standard Input
2. STDOUT(1) = Standard Output
3. STDERR(2) = Standard Error

STDIN(0) - Data fed into the program or the data with which program is working. Symbol is <. By default it is terminal, but it also provides is with an alternative way of giving input to a command aside from using the command line arguments
STDOUT(1) - Output or data printed by the program, by default to the terminal. Symbol is >,>>
STDERR(2) - It is for the error messages the command produces and also default to the terminal. Symbol is >,>>
'

# Many linux commands that will accept file name as a command line argument will also accept input from standard input if no file is given on the command line

#EXAMPLES
tail < /etc/group #tail is getting its input from standard input instead of file

# > = It indicates to the command that we wish the output to be saved to a file instead of being printed on the screen and file has been created automatically if ww have didn't create before
ls -l > ls.txt
#if we redirect to the same file, the content of the files will be overwritten

# >> = to append the new content in the same file without overwritting and removing the old content, this will add or append the content at the end of the file
# it will create the file if it doesn't exist and append at the end of the file if it exists
ls -l >> output.txt
ip address >> output.txt

#Terminal is also treated as file, TTY file represents the terminal
tty #result = /dev/pts/0
ip address > /dev/pts/0 #it is like instant messaging