: ' 
#TILED EXPANSION
- After brace exansion the shell will perform tilde expansion
- It expands to home directories, current or previous working directory, directries from the directory stack
EXAMPLES
~ => $HOME of the current user
~USER => User's home directory
~+ => $PWD (holds working directory)
~-  => $OLDPWD (holds old working directory)

echo ~ => /home/student
echo ~root => /root
echo ~+ => /home/student
'

:'
#PARAMETER EXPANSION
- After the tiled expansion, the shell will perform parameter expansion
- $ symbol introduces parameter expansion and the name or the symbol to be expanded can be optionally enclosed in braces
- The braces protect the variable to be expanded from the characters immediately following it that could be interpreted as part of name
SYNTAX
$parameter
${parameter}

EXAMPLE
echo $USER
echo ${HOME}

EXAMPLE
os=Linux
echo $os
echo ${os}

- There are some expansion operators which modify the case of the letters in the expanded text
^^ = change all letters to upper case
,, = change all letters to lower case
echo ${os^^}
echo ${os,,}

- Sometimes variable name is not defined and it can give us a error or break the script, to avoid such errors we can test if a variable
  is unset or null and eventually use a default value for it
example - ping -c 3 ${ip:-1.1.1.1} = in this command, if the variable is not set, the expansion of the string that follows after the dash
          is substituted, otherwise the value of the variable is substituted 
example - ping -c 3 ${ip:=1.1.1.1} = if we use equal instead of dash, it will assign the value of the string to the variable and then
            the value of the variable is substituted, the variable was not only expanded but also assigned
'