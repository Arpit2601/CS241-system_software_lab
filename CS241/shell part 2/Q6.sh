#! /bin/bash
count=0
while read -n 1 p
do
    # echo $p 
    # echo 1
    if [ "$p" = "a" -o "$p" = "e" -o "$p" = "i" -o "$p" = "o" -o "$p" = "u" -o "$p" = "A" -o "$p" = "E" -o "$p" = "I" -o "$p" = "O" -o "$p" = "U" ]
    then
        ((count++))
    fi
done < $1
echo $count