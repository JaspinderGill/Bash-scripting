#the continue statement can skips the remaining commands inside the loop for the current iteration and passes program control to the next iteration of the loop

#EXAMPLE - PRINT ALL ODD NUMBERS BETWEEN 1 AND 15
#!/bin/bash
for i in {1..15}
do
    result=$(( i % 2 ))
    if [[ $result -eq 0 ]]
    then
        continue
    fi
    echo $i
done