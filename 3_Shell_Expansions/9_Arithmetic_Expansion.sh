: '
- It is used to perform mathematical computation
- It allows the evaluation of an arithmetic expression and the substitution of the result

SYNTAX
$((expression))

EXAMPLES
a=$(( 2**10 ))
b=$(( 10*5/2 ))
'

#EXAMPLES
#result is saved in variable x 
#all the tokens in the expression undergo parameter and variable expression, command substitution and quote removal
x=$(( 7*9 ))
echo $x

#Shell allows arithmetic expressions to be evaluated by using the "let" build-in commands as well
let y=2**8
echo $y 

#there is no check for overflow, though division by  zero is flagged as an error
let y=2**128
echo $y #result will be 0 as this is an overflow because result is too big and cannot be saved in y 

#Arithmetic expansion is done only using integers that means it cannot handle floating point numbers

#to do decimal operations, we have to use "bc" command
#we can pipe the arithmetic expression as a string to "bc"
#Even though all numbers are represented internally in "bc" in decimal and all computation is done is decimal, it won't display any fractional part by default
echo "3*7" | bc #result = 21
echo "11/4" | bc #result = 2

#to see the fractional part, we need to specify the scale, which is the total number of decimal digits after the decimal point
echo "scale=2;11/4" | bc #result = 2.75

#other way to use "bc"
bc <<< "scale=2;11/4"

#bash includes the triple less than redirection operator, allowing a string tio be used as the standard input to a command, This is also called a here string

#"bc" also has an interactive mode and we can access it by running "bc" command