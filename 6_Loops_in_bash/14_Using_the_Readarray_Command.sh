#the read array command converts whatever it read from standard input into an indexed array

#EXAMPLE
readarray months #then enter the input from next line one by one on new line every time after pressing enter and then press ctrl+c to exit
echo ${months[@]} 
#it worked fine but it's not useful as because most of the time we want to generate arrays from the output of commands or the contents of the files

#EXAMPLE OF PROPER USE 
cat months.txt #we want to read the file in an array where each line of the file will be an element of the array
readarray months< <(cat months.txt) #the first less than means input redirection or the contents of what follows will be redirected to read array and next less than is for process substitution(it makes the output of the command like a file means we will redirect the contents of file to readarray)
echo ${months[@]}
echo ${!months[@]}
#a line is delimited by an invisible new line or \n, which even if it's invisible is still there, so normally \n should be part of each element of the array
echo ${months[@]@Q} #also shows the trailing \n 
readarray -t months< <(cat months.txt) #if we don't want the \n to be part of the elements of the array as it will remove the trailing new lines from each line

#EXAMPLE - ARRAY WITH ALL THE USERS IN THE SYSTEM
readarray users< <(cut -d: -f1 /etc/passwd)
echo ${users[@]}

#EXAMPLE - READING INPUT FROM THE OUTPUT OF LS COMMAND 
readarray -t files< <(ls /etc)