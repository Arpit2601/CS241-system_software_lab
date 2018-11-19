#! /bin/bash
num_of_lines=$(wc -l "$1")
echo $num_of_lines
##################
word_count(){
sum=0
i=1
cat $1 | while read p
do 
    sum=$((sum+1))
    echo $sum
done
echo $sum
}
word_count
#why is last echo not printing correct sum why zero
#use
awk 'END{print NR}' $1