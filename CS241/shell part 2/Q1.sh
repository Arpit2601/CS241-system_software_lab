#! /bin/bash
: '
HCF 
LCM'
echo Enter the two numbers
read num1 num2
x=$num1
y=$num2
while [ $num1 -ne $num2 ]
do
    if [ $num1 -gt $num2 ]
    then
        num1=$((num1-num2))
    else
        num2=$((num2-num1))
    fi
done
echo The gcd is $num1
num1=$x
num2=$y
while [ $num1 -ne $num2 ]
do 
    if [ $num1 -gt $num2 ]
    then
        num2=$((num2+y))
    else
        num1=$((nunm1+x))
    fi
done
echo LCM is $num1