#! /bin/bash

read num1 num2 num3 num4
# if  !num1 && !num2:
#     echo enter two numbers
sum1=$(($num1+$num2+$num3+$num4))
echo \"The sum of four numbers\" $sum1
#part 2
echo "Please enter two  numbers:"
read get_num get_num1
if [[ ! $get_num =~ ^[0-9]+$ ]] && [[ ! $get_num1 =~ ^[0-9]+$ ]]
then 
    echo "please to numbers" 
elif [[ ! $get_num =~ ^[0-9]+$ ]] && [[  $get_num1  =~ ^[0-9]+$ ]]
then
    echo "enter one more number"
elif [[  $get_num =~ ^[0-9]+$ ]] && [[ ! $get_num1 =~ ^[0-9]+$ ]]    
then
    echo "enter one more number"
else
    echo $(($get_num1+$get_num))
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
