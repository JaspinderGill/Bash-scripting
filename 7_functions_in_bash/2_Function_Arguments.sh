#if we want the function to process some data, then we have to send data to the function same as passing command line arguments to a script

#EXAMPLE
create_files(){
    echo "Creating $1" # $1 is the first argument of the function specified when we will call the function
    touch $1
    chmod 400 $1

    echo "Creating $2" # $2 is the second argument of the function specified when we will call the function
    touch $2
    chmod 644 $2
    return 10
}

function lines_in_files(){
    grep -c "$1" "$2"
}
create_files aa.txt bb.txt #calling the function
echo $? #if function executed properly, it will return the value 10

n=$(lines_in_files "usb" "/var/log/dmesg")
echo $n

#Bash function don't allow us to return a value, when doing so using the return keyword we are setting in fact that the status of the last command executed inside the function(by using $?)