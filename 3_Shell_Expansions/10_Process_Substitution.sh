: '
- It means to reference the output of a process as a file
- This is very useful when we use arrays or loops
- With this we can feed the output of a process or processes into the standard output of another process

SYNTAX
<(command)

EXAMPLES
grep -w "root" <(cat /etc/passwd)
'

#EXAMPLE
#output of the file will appear as a file
<(ls)
#we can use the generated file as input for another command
echo <(ls)
cat <(ls)

#to compare 2 directory files(by using diff command)
diff <(ls dir1) <(ls dir2)