#varibales can only store one piece of data at a time
#Bash provides one dimensional, indexed and associative arrays
#Arrays can store multiple different levels values at the same time
#there is no maximum limit on the size of an array
#array members don't need to be consecutive or contiguous

#SYNTAX - to create numerical indexed array by specifying the list of elements within the parentheses separated by empty spaces
# @ and * has difference regarding quoting and word splitting
#rules of positional parameters will be apply here too
# if we access an element at an index that does not exist, it will give the blank output
# it works on the based on the integer index values
ages=(20 32 33 67 58)
echo ${ages[@]} #syntax to print numerical indexed array as it starts from index 0
echo ${ages[*]} #syntax to print numerical indexed array as it starts from index 0
echo ${!ages[*]} #syntax to print index nuimbers of numerical indexed array
echo ${#ages[*]} #syntax to print out that how many elements are in the array
echo ${ages[2]} #syntax to print element on specific index number
echo ${ages[-1]} #syntax to access array from the end using the negative indices(-1 for last element)
numbers[0]=100 #indexed array is created automatically if any value is assigned using this syntax, it will create array at zero index with value 100
numbers[1]=200
echo ${!numbers[@]}
numbers[1]=600 #changing value of pre existing array

#SYNTAX - explicitaly declaring array using the built in function
declare -a names
names[0]="Dan"
names[1]="Alina"
names[2]="Diana"
echo ${names[@]}
names[7]="Maya" #It is allowed as array members don't need to be consecutive or contiguous, so gaps in array are OK, Arrays with sparse data are called sparse arrays and these are useful in spreadsheet processing software where there are often gaps
echo ${!names[@]} #result - 0 1 2 7

#SYNTAX - removing element of the array
unset names[1] #removes the element at index one

#index arrays do not update automatically so the previous comment has created gap in the array