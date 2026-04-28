#!/bi/bash
readarray -t  files< <(ls /etc/*)
for f in "${files[@]}"
do
    if [[ -f $f && -r $f ]] #-f means if it is a file and -r means we have read permission
    then    
        cat $f
    fi
done 