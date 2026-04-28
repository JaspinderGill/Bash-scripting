#scope refers to which part of a script, a variable is visible
#variables are by default global(visible everywhere inside the script)

#EXAMPLE(USING GLOBAL SCOPE VARIABLES) - function has access to the variables defined outside its body
var1="AA"
var2="BB"
function func1(){
    echo "Inside func1: var1 is $var1 and var2 is $var2"
}
func1

#EXAMPLE - CHANGING GLOBAL VARIABLE INSIDE FUNCTION
var1="AA"
var2="BB"
function func1(){
    echo "Inside func1: var1 is $var1 and var2 is $var2"
    var1="XX" #variable is changed inside the function and the change is seen outside of the function as well
}
func1
echo "After calling func1: var1 is $var1 and var2 is $var2" #RESULT - var1 is XX

#EXAMPLE - DECLARING LOCAL VARIABLE WITHIN THE FUNCTION BODY, THEN WE WILL USE LOCAL KEYWORD WHICH CAN BE USED ONLY INSIDE FUNCTIONS
var1="AA"
var2="BB"
function func1(){
    echo "Inside func1: var1 is $var1 and var2 is $var2"
    local var1="XX" #var1 is local to the function and its new value is available only within the function's body
    echo "var1 after making it local: $var1"
}
func1
echo "After calling func1: var1 is $var1 and var2 is $var2"
#outside the function var1 is global and has the global variable value, the function didn't change or work on the global variable var1, it worked on copy of it
