years=(2018 2019 2020 2021 2022)

#adding one or more elements to the end of the array
years+=(2023)
years+=(2024 2025 2026)

#SLICING AN ARRAY
#Slicing operations do not modify the original array
echo ${years[@]:2} #Started at the specific index rather than at index[0] and then continue until the end of the array
echo ${years[@]:2:4} #accessing only a number of elements of the array starting at specific index - result is 2020 2021 2022 2023

#ASSOCIATIVE ARRAY
#it contains key value pairs and are similar to dictionaries, maps or hashes
#it uses a key to map the value instead of index positions and key can be any string
#we have to use declare built in function to create an associative array
#values that we will print will not necessarily be ordered
declare -A userdata
userdata[username]="youradmin"
userdata[password]="fsda4."
userdata[uid]=1010
echo ${userdata[username]} #to auery the value of any key - result is youradmin
echo ${userdata[@]} #to print values of all the keys
echo ${userdata[*]} #to print values of all the keys
echo ${!userdata[*]} #to print all the keys
userdata[login]=$(date --utc +%s) #adding new element to the array by creating new key and value pair
userdata[login]=$(date +%T) #if we try to use the same key that is already present in the array, the value will be overwritten with new value
userdata+=([shell]="Bash" [admin]="False") #we can add one or more elements to the array using the syntax same as indexed array

#DECLARING READ-ONLY ASSOCIATIVE ARRAY
#once the array is initialized we can not add new elements to the array or modify any values within the array
#if we try to change an element we will get an error
declare -r -A SUPERSTARS=( #then we can create the arrays on multiple lines and after creating the arrays type the closing parentheses")" to stop the creation of arrays
echo ${SUPERSTARS[@]}

#REMOVING ITEMS(KEY PAIR VALUE) FROM THE ASSOCIATIVE ARRAY
unset userdata[password]