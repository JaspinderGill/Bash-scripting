#variable expansiom means replacing the name of the variable with its value
#ASSIGNING AND REFFERENCING
: ' 
Assignig value to variable - 
version=10 #no spaces around the equals sign

Referencing the value of a variable - 
The '$' character introduces parameter expansion, command substitution, or arithmetic expansion\

to access the value of a variable proceed the name of the variable with a dollar sign
echo $version
'

#Giving a value to variable is known as assigning a value to variable

#Getting the value stored in variable is known as referencing the value of a variable

#EXAMPLE
age=30
os="Kali Linux"
echo $age
echo $os

# $variable is simplified form of ${variable}, we cn also write ${variable}

#if we want to append to the variable we should use ${variable}, Example - 
OS=windows
echo ${OS11} #result = windows11, 11 is appended to value of the variable

#QUOTING
: '
Quoting is used to remove the special meaning of certain characters or words

It can be used to disable special treatment for special characters, to prevent reserved words from being recognized as such, and to
prevent variable or parameter expansion

Bash Quoting methods
1. Single Quotes = ' '
2. Double quotes = " "
3. The escape character = \
'

#SINGLE QUOTES
#Enclosing characters in single quotes preserves the literal value of each character within the quotes. EXAMPLE - 
echo 'I am learning $os and I am $age years old' #result - I am learning $os and I am $age years old

#Single quote may not occur between single quotes even when preceded by a backslash. EXAMPLE - 
# 'I'm learning $os and I am $age years old'
# 'I\'m learning $os and I am $age years old'

#DOUBLE QUOTES
#Enclosing characters in double quotes preserves the literal value of all characters within the quotes with the exception of dollars, backticks and backslashes
#Backslashes retain their special meaning only when followed by a special character
#Double quotes preceding characters without a special meaning are left unmodified
#EXAMPLE
echo "I am learning $os and I am $age years old" #result - I am learning windows and I am 30 years old

#we can have single quotes inside double quotes and even double quotes inside double quotes of we precede the double quote by a backslash.
#EXAMPLE
echo "I'm learning $os and I am $age years old"
echo "I'm \"learning $os and I am $age years old"

#BACKSLASH
#It simply preserves the literal value of the character that follows with the exception of a new line
#EXAMPLE
echo 'I am learning \$os and I am \$age years old' #result - I am learning $os and I am $age years old
echo C:\\Windows #double backslash before the existing one to preserve the literal value of next character that follows which is backslash and result is C:\Windows
echo "C:\Windows" #result is C:\Windows