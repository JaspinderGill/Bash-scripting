#in many cases, scripts or programs require argument values to be provided as inputs. The arguments are the values provided after the script name when running it
#EXAMPLE
apt install nginx #apt is the program name, install is the first argument of the script or program, nginx is the second argument of the script of apt\
#the name of the script and the arguments are separated by spaces which is by default is known as Internal Field Separator(IFS)

: ' 
Predefined or Postional Parameters that store the arguments of script

- Parameters referenced by a name are called variables
- Parameters referenced by a numbers are called positional parameters and reflect the arguments given to the script
- Parameters referenced by special symbol are called auto-set parameters
'

: ' 
Scripts arguments are stored in positional parameters denoted by one or more digits
EXAMPLE - ./script.sh filename.txt directory1 10.0.0.1
$0 - the name of the script itself(script.sh)
$1 - the first positional parameter(filename.txt)
$2 - the second positional parameter(dir1)
$3 - the last positional parameter(10.0.0.1)
$9 would be the ninth argument and ${10} the tenth
after ninth positional parameter, the arguments must be enclosed in curly braces
'

#EXAMPLE SCRIPT
#we can also provide default value to a positional parameter so that if scriptis run without the parameter it doesn't crash
#!/bin/bash
echo "1st script's argument (\$1) is $1"
echo "2nd script's argument (\$2) is $2"
echo "3rd script's argument (\$3) is $3"
#...
echo "10th script's argument (\${10}) is ${10}"
echo "11th script's argument (\${11}) is ${11}"

echo "Script name (\$0) is $0"

#we can also provide default value to a positional parameter so that if scriptis run without the parameter it doesn't crash
#to do this write the digit that represents the positional parameter between curly braces and add the colon after the digit and then the default value
echo "1st script's argument (\$1) is ${1:-abc}"
echo "2nd script's argument (\$2) is $2"
echo "3rd script's argument (\$3) is $3"
#...
echo "10th script's argument (\${10}) is ${10}"
echo "11th script's argument (\${11}) is ${11}"

#SCRIPT THAT TAKES A FILE AS AN ARGUMENT, DISPLAYS ITS CONTENTS AND CREATES A COMPRESSED COPY OF IT

#!/bin/bash
echo "Displaying the contents of $1 ..."
sleep 2
cat "$1"
echo
echo "Compressing $1 ..."
sleep 2
tar -cjvf "$1.tar.gz" $1

./display_and_compress.sh block_ip.sh #execution of script