#Functions organize the code in blocks that can be later reused
#Functions keep the code DRY - Don't Repeat Yourself

#SYNTAX - 1
function function_name () {
    #the comments between the curly braces represent the body of the function and are executed when the function is called
    echo "I'm a simple function demo!" #this is function body
}

#SYNTAX - 2
function_name(){
    echo "Hey, I'm displaying!"
}

#CALLING A FUNCTION - TO EXECUTE THE BODY OF THE FUNCTION, WE HAVE TO CALL IT
#TO CALL A FUNCTION, WRITE ITS NAME WITHOUT ANY PARENTHESES
function_name

#the function definition, so the actual fucntion itself must appear in the script before any calls to the function 