#IFS is by default whitespace
: ' 
- Both $@ and $* expand to a string represenrtation of all positional parameters($1, $2, $3) but differ when they are wrapped inside
  double quotes

- $@ - word spitting is performed and $@ = "$1 $2 $3"
- "$@" - word spitting is not performed and "$@" = "$1" "$2" "$3"

- $* is the same as unquoted $@
- "$*" will place the first character of the IFS variable between parameters
'

#EXAMPLE
#!/bin/bash
touch $@ #touch "$1 $2 $3"
touch "$@" #touch "$1" "$2" "$3"

IFS=,
touch "$*"

./special_parameters.sh "my file.pdf" "your report.pdf" "his document.pdf" #executing script 