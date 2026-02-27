#Different ways of running bash scripts
: '
the most common one is to add the execution permission to the script file 
    chmod +x script.sh
    ./script.sh

Another way to run the script is by name of the program or interpreter that run the script and the script name
Here it is not mandatory that execution permission needs to be set
    bash script.sh
    python3 script.py

By using source command, it does not require execution permission
    source script.sh
    . script.sh
'
