#! /bin/bash
num_of_lines=$(wc -l "$1")
echo $num_of_lines
##################
sum=0
i=1
cat $1 | while read p
do 
    sum=$((sum+1))
    echo $sum
done
echo $sum
#why is last echo not printing correct sum why zero
