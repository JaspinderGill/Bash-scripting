: ' 
- It generates a contigouos range or sequence of numbers or letters
- We can provide the expansion with increment
- By default increment is 1
- The supplied integers may be prefixed with one or more zeroes to force each term to have the same width
- Values between curly braces must be of the same type
- We can not use variable expansion inside the brace expansion as brace expansion happens before variable expansion
- Brace expansion is performed first

EXAMPLE
echo {1..100} = list from 1 to 100 = 1 2 3 ...... 100
echo {a..l} = a b c d e f g h i j k l
echp {1..20..2} = 1 3 5 7 9 11 13 15 17 19

when either integers begins with a zero, the shell attempts to force all generated terms to contain the same number of 
digits, zero padding where necessary. EXAMPLE - 
echo {01..10} = 01 02 03 04 05 06 07 08 09 10

We can reverse the sequence and shell will expand it accordingly
echo {10..1} = 10 9 8 7 6 5 4 3 2 1
'