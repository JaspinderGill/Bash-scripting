: ' 
- It is performed after shell expansion
- After the preceding expansions, all unquoted occurrences of backslashes(\), single quotes(''), and double quotes("") that 
  did not result from expansions from the previous steps are removed
- The quotes are normally used to remove the special meaning of some characters and once the shell has used the quotes for this ]
  purpose it will remove them
'

#EXAMPLE
#suppose we want to print $USER lietrally and we don't want to substitute the variable with it's value
#to do this we will add the backslash before the dollar sign to cancel the special meaning of dollar sign
echo \$USER #result = $USER, backslash was removed during quote removal 
echo '"Linux"' #result = "Linux", single quotes were removed during quote removal but the double quotes are not removed because they were quoted

dir="C:\Windows\System"
echo $dir #result = C:\Windows\System, It won't remove the backslashes because they are result of a variable expansion