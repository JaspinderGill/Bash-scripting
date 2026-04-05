: ' 
- It is performed after word splitting

GLOBBING CHARACTERS
1. * => matches any string, including emptiness. It is most commonly used and matches zero or any number of characters
2. ? => matches any single character
3. [] => matches a single character from within a range

NOTE = If one of these characters appears and is not quotted, then it is considered a pattern and replaced with a list of filenames
       matching the pattern
'

# "*"  CHARACTER
#filename expansion is performed only if the special character, star in this case, is unquoted
#file names starting with dot(ex - .filename.txt) are not matched by the asterick as these are hidden files
ls * #list all the files

touch f{a..c}{1..10}.txt
touch f
ls f* #it will list all the files started with "f"
ls fa*.txt #it will list all the files started with "fa" and ending with ".txt"
ls "fa*.txt" #it will not perform the expansion, but rather try to list a file "fa*.txt"
ls .a* #to show hidden files starting with dot

# "?" CHARACTER
#it will match any single character
#we can use question mark multiple times for matching the mutliple characters
ls fa?.txt #we read the pattern as "fa" then any single character on place of "?" and then ".txt" and we got all the files that exactly one character between a and .txt
ls fa??.txt #any 2 characters between fa and .txt

# "[]" CHARACTER
#used to match a single character within a range
#even though there are more characters inside square brackets it matches only a single character
#square bracket allows us to use ranges of characters or digits
ls fa[123].txt #It matched all the filenames starting with "fa" then having a single character which is "1,2,3" and ending with ".txt"
ls f[ab]*.txt #It is interpreted as "f" then a single character which should be "a or b" and then zero or any number and then .txt
ls f[a-c][3-7].txt #It should be interpreted as "f" then single character between "a and c" and "3 and 7" and then .txt
ls [f-h][a-zA-Z0-9]*.txt #this will expand to filenames starting with a lowercase letter between "f and h" and then having a single lowercase or uppercase letter between "a or z" or having a single digit between "0 and 9" and then ending in any number of characters

#TO NEGATE A PATTERN EXPRESSION
#we can negate an exression using the exclamation point or the caret symbol
ls f[^ab]* / ls f[~ab]* #it will make sure that filenames starting with either a or b and then zero or any number of characters, but adding a caret or an exclamation mark after the opening square bracket will negate the single character in square brackets
                        #this means f followed by any single character that is not a and b and then zero or any number of characters and it will not show the files starting with a and b
ls f[ab^]* / ls f[ab~]* #it will not show the files ending with the a and b
rm f[a-z][0-9].txt 

#after all these steps, next step is code removal