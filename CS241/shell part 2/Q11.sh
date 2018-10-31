#! /bin/bash
for((i=1;i<1000;i++))
do
	sum=0
	p=$i
    array=0
    j=0
	while [ $p -ne 0 ]
	do
		tmp=`expr $p \% 10`
        array[$((j++))]=$tmp
		q=`expr $tmp \* $tmp \* $tmp`
		p=`expr $p \/ 10`
		sum=`expr $sum + $q`
	done
	if [ $i -eq $sum ]
	then
		echo -n $i ${array[@]}
        echo
	fi
done