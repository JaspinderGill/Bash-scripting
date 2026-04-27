#EXAMPLE - ITERATE OVER THE OUTPUT OF A COMMAND
#!/bin/bash
for item in ./* #the current directory is single directory
do
    if [[ -f $item ]] #checking that variable item is regular file or not
    then #it will display the contents in the current directory
        echo "Displaying the contents of $item"
        sleep 10
        cat $item
        echo "################" 
    fi
done

#EXAMPLE - RENAME ALL THE FILES WITH THE .TXT EXTENSION IN THE CURRENT DIRECTORY BY INSERTING CUSTOM STRING AT THE BEGINING OF THE FILE NAME
#!/bin/bash
for file in *.txt #all text files in the current working directory
do 
    mv "$file" "renamed_by_script_$file" #$1 is file name as old name
done

#EXAMPLE - USING COMMAND SUBSTITUTION TO GENERATE THE LIST IN A FOR LOOP
#!/bin/bash
numbers="3 5 9 10 68"
for n in $(echo $numbers);do
    echo -n "$n " #printing the number at current iteration with space at the end
done

#EXAMPLE - ALTERNATE FORM OF THE FOR LOOP
#!/bin/bash
for (( i=0;i<=20;i++ ))
do
    echo "i=$i"
done