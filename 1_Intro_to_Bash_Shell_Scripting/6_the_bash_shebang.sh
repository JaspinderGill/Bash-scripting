#Shebang is a character sequence consisting of hash and an excalamation mark or a bang(#!)
#after the shebang, we will write absolute path to interpreter that will run the script(ex - #!/bin/bash)
#it tells that what program will run the file such as the bash shell, python, php or other interpreters
#if we execute a script without shebang directive, then it will use the default shell which is probably shell
#we will alwayas add shebang to the first line

#EXAMPLE
#! /bin/bash (here space is optional)
mkdir -p dir1
echo "Hello Bash World!!" > dir1/file.txt
tree . 
cat dir1/file.txt