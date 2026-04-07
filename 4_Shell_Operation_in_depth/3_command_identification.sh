: ' 
- After tokenization, the shell will parse and identify the tokens into simple and compound commands 

COMMAND TYPES
1. Simple = A sequence of words separated by blanks and terminated by either a new line or one of the shell's control operators
2. Compound = A command that starts and ends with bash reserved word
'
#SIMPLE COMMAND
#EXAMPLE
touch a.txt b.txt c.txt #the first word touch is the command name and all other words are the arguments of the command and command is terminated by invisible new line which is at the end of the line
touch a.txt b.txt c.txt ls #the shell will tokenize the command line by using unquoted metacharacters to split the command into words and operators, here space is unquoted metacharacter for tokenization and touch will be command name and it will be terminated by a control operator or \n
                        #there are no control operatots here, the command will be interpreted as a single simple command and invisible \n at the end of line will terminate the command
touch a.txt b.txt c.txt; ls #we wanted to run the touch command to create 2 files in the current directory and ls command to see the files, here shell uses unquoted metacharacters to tokenize the command which mean it will split into words and operators, space is the only unquoted metacharacter and it is used to tokenize the command line
                            #now, we have a control operator as a semicolon(;) and invisible \n at the end of the line, shell will break down the command line into 2 simple commands as touch and ls, touch is terminated by semicolon and ls by \n

#COMPOUND COMMAND
#The compound commands are used to create loops, iterations or to run a block of code if some conditions are met
:' 
RESERVED WORDS(that have special meaning for the shell)
These words start a compound command 
if then elif else fi time for in until while do done case esac coproc select function {    } [[   ]] !
'
#EXAMPLE
#in this, reserved word "if" started the compound command and reserved word "fi" ends it
#these can be written on multiple lines and they can contain multiple simple and compound commands inside them
$!/bin/bash
file=/etc/passwd
if [[ -f file]]
then 
        tail -n 3 $file
fi