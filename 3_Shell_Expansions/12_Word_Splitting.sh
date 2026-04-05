: ' 
- All the results of previous expansions, not occuring within double quotes are subject to word splitting
- It means splitting into individual words the result of unquoted expansions
- Bash uses the IFS(by default contains space, tab and newline) variable to perform word splitting

EXAMPLE
mkdir $dirs => it creates 2 directories
mkdir "$dirs" => it creates 1 directory
'

#Space, tab and newline are considered as invisible characters in IFS variable
echo ${IFS@Q} #result = $' \t\n' and it is a trick to show invisible characters of IFS

#EXAMPLE
#space as IFS variable which is default
dirs="d1 d2 d3"
mkdir $dirs #result = d1 d2 d3 = because the expansion is unquoted, the shell will do word splitting, It basically means breaking the results of these expansions into separate words using the IFS variable as the delimiter d1,d2 and d3
mkdir "$dirs" #result = 'd1 d2 d3' = if we quote the expansion in double quotes, bash will perform word splitting because word splitting is only performed on the result of unquoted expansion. It considered the content of the variable as a single argument and just created one directory as 'd1 d2 d3'

#changing IFS variable to colon(:) and using it
IFS=":"
dirs="d1:d2:d3"
mkdir $dirs
mkdir "$dirs"

#changing IFS variable to newline(\n) and using it
dirs="d1\nd2\nd3"
mkdir $dirs
mkdir "$dirs"