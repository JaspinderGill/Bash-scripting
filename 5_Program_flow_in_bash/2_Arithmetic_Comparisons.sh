: '
COMPARISON OPERATORS IN BASH(works only with integers)
1. Integer1 -eq Integer2 = Integer1 is equal to Integer2
2. Integer1 -ge Integer2 = Integer1 is greater than or equal to Integer2
3. Integer1 -gt Integer2 = Integer1 is greater than Integer2
4. Integer1 -le Integer2 = Integer1 is lesser than or equal to Integer2
5. Integer1 -lt Integer2 = Integer1 is less than Integer2
6. Integer1 -ne Integer2 = Integer1 is not equal to Integer2
'

#EXAMPLE
#!/bin/bash
read -p "Enter your age:" age

if [[ $age -lt 18 ]]
then
    echo "You are minor!"
elif [[ $age -eq 18 ]]
then
    echo "Congratulations, you've just become major!"
else
    echo "You are major!"
fi