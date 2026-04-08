: '
Two strings are equal when they have the same length and contain the same sequence of characters in the same order

= for [ ] and == for [[ ]]
-n => the string length is non-zero
-z => the string length is zero
'
#Don't forget to quote the string variables in the if statement to avoid word splitting or globing issues
#white space should be used between operator(=) and operand($str1)
#there is also inequality-operator(!=) that returns true if the strings are not equal

#EXAMPLE(Single square bracket)
#!/bin/bash
read -p "String1:" str1
read -p "String2:" str2
if [ "$str1" = "$str2" ]
then
    echo "The strings are equal!"
else
    echo "The strings are not equal!"
fi

#EXAMPLE(Double square bracket)
#!/bin/bash
read -p "String1:" str1
read -p "String2:" str2
if [[ "$str1" == "$str2" ]]
then
    echo "The strings are equal!"
else
    echo "The strings are not equal!"
fi

if [[ "$str1" != "$str2" ]];then #instead of writing the then keyword on a new line, we can write a semicolon(;) followed by then
    echo "The strings are not equal"
fi

#EXAMPLE(TO CHECK IF A STRING CONTAINS A SUBSTRING)
#!/bin/bash
str1="Nowdays, Linux powers the servers of the internet"
if [[ "$str1" == *"Linux"* ]]
then
    echo "The substring Linux is there"
else
    echo "The substring Linux is not there"
fi