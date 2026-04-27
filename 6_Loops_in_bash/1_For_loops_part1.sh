#this is a sequence of instructions that is continouosly repeated until a certian condition is reached
: '
A loop is a block of code that iterates a list of commands as long as loop condition is true
EXAMPLE - 
for item in list_of_values
do
    RUN_THESE_COMMANDS
done

item is temporary variable that is created and takes a value from a list of values at each iteration.
'

#EXAMPLE
#!/bin/bash
for os in Ubuntu Pop!_OS Slackware Kali "MS LINUX" #if string element of list contains a space we should enclose it in double quotes, which will prevents word splitting
do
    echo "OS is $os"
done
#RESULT = os is Ubuntu os is Pop!_OS os is Slackware os is Kali os is MS LINUX

#EXAMPLE(ITERATE OVER RANGE OF NUMBERS)
for num in {3..7}
do
    echo "number is $num"
    touch "./$num.txt"
done
#RESULT = 3 4 5 6 7

#EXAMPLE(ITERATE OVER RANGE OF NUMBERS AND INCREMENT IN RANGE)
for num in {3..7..2}
do
    echo "number is $num"
    touch "./$num.txt"
done
#RESULT = 3 5 7