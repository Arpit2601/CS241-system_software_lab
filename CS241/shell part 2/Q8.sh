#! /bin/bash
if [ ! -e $1 ]
then 
    echo file to be copied does not exist
fi
if [ -e $2 ]
then
    while read p
    do
        echo $p >> $2
    done < $1
else
    while read p
    do
        echo $p >> $2
    done < $1
fi
