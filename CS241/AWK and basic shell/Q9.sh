#! /bin/bash
#part1
awk '{print $1}' $1 | while read p
do 
    touch $p.txt
done
#part2
while read num class
do
    if (( num%2 == 1 )) && [ $class="CS241" ]
    then 
        echo \"Roll no:$num Subject:$class\"
    fi
done < $1