#this script creates a new directory in the current directory and file inside it and then lists the contents of directory and file
mkdir -p dir1
echo "Hello Bash World!!" > dir1/file.txt
tree . 
cat dir1/file.txt

#add the execution permission for the owner to execute it
chmod 700 4_Creating_your_first_script_and_changing_the_path.sh

#executing the script
./4_Creating_your_first_script_and_changing_the_path.sh

#each user has its own path
#so add the directory that contains the script to the path or execute the script by ./
#to make the change persistent, even after the system restarts, you need to add the line that modifies the path in enviroment customiztion file such as .bashrc by adding at the last of .bashrc file - export PATH="$PATH:~/scripts"
