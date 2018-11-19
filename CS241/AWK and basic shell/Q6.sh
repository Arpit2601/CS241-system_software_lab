#! /bin/bash
echo "enter the string "
read name
name1=$(echo $name | rev)
len=${#name1}
if [ $name = $name1 ]
then
echo "$name is palindrome" Length of string $len
else
echo "$name is not a palindrome"
fi
# num=${#string}
# ${string:$i:1} to get each characte of string
# [ ${string:$i:1} != ${string:$num-$i-1:1} ] to compare string characters