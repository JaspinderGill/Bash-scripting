: '
- It is a mechanism by which arbitary strings are generated

- Two types
  String Lists
  Range(Sequence) Lists

SYNTAX
prefix{value1,value2,value3}suffix
NOTE - Prefix and suffix is optional
EXAMPLES
{a..k}
{01..10}
file{01..15}.txt
Day{1..7}

REAL EXAMPLE 
- echo {old,new,current,backup} - result = old new current backup - This shell has expanded the expression into a list of strings
- echo 01-{old,new,current,backup}.txt - result = 01-old.txt 01-new.txt 01-current.txt 01-backup.txt - The prefix was prefixed to each
    string contained within the braces and suffix was appended to each resulting string expanding from the left to right

CREATING FILES RESULTING FROM THE EXPANSION
touch 01-{old,new,current,backup}.txt - files created = 01-old.txt 01-new.txt 01-current.txt 01-backup.txt

REMOVING FILES RESULTING BY THE USE OF BRACES EXPANSION
rm 01-{old,new,current,backup}.txt - files will be removed

BRACE EXPANSIONS CAN BE NESTED
echo 01-{old,new,current,{10,20,30}-backup}.txt - 01-old.txt 01-new.txt 01-current.txt 01-10-backup.txt 01-20-backup.txt 
     01-30-backup.txt

IMPORTANT POINTS
1. We are not allowed to put any spaces before or after the commas in our string list or ot will stop the shell from expanding the
   list and will treat it as normal command after line argument
2. A correctly formed brace expansion must contain unquoted opening and closing braces and atleast one unquoted comma without any
   spaces
'