: '
- After the shell has read its input from the user's terminal or from a file, it will break the input into works and operators 
    obeying the quoting rules. this process is known as tokenization
- A token is a sequence of characters identified as a single unit by the shell
- Bash use metacharacters to break the command line into tokens(words and operators)
- Metacharacters = space, tab, newline, | ; & () <>
- Bash decides when a token starts and ends by looking for special unquoted metacharacters
- A metacharacter is a character that when unquoted separates works
- Alias expansion is performed at this step too

TOKEN TYPES
1. Words(dont contain any unquoted metacharacters)
2. Operators(contain atleast one unquoted metacharacter)

#OPERATORS
- Operators only matter if they are unquoted
- Control Operators(performs a control function) = new line, | , || , & , && , ; , ;; , ;& , ;;& , |& , ()
- Redirection operators(used to redirect data streams connected to a command such as input or output to a file) = >, >>, >|, <>, >&, &>, 
    <, <<, <<<, <&, <<-
'

#EXAMPLE
ls $HOME > home.txt #bash is reading its input from the user's terminal and will go through multi step process to interpret and execute
            the command
