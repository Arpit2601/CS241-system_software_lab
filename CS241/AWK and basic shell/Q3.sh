#! /bin/bash

read num1 num2 num3 num4
# if  !num1 && !num2:
#     echo enter two numbers
sum1=$(($num1+$num2+$num3+$num4))
echo \"The sum of four numbers\" $sum1
#part 2
if [ $# -eq 0 ]
then
    echo Enter two number
elif [[ -z $2 ]]
then
    echo Enter second number
else
    echo $(($1+$2))
fi
#part 3
sum=0
for i in $@
do 
    if (( i>10 )) && (( i<20 ))
    then
        sum=$((sum+i))
    fi
done
echo $sum
