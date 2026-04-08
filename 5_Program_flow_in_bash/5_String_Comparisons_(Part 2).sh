#EXAMPLE(STRING RESULTING FROM ANOTHER OPERATION) AND CHECKING THAT STRING VARIABLE IS EMPTY OR NOT
#!/bin/bash
my_str="abc"
if [[ -z "$my_str" ]]
then
    echo "String is zero length"
else
    echo "String is not zero length"
fi

#!/bin/bash
my_str="abc"
if [[ -n "$my_str" ]]
then
    echo "String is not zero length"
else
    echo "String is zero length"
fi