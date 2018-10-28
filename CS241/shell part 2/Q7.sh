#! /bin/bash
#p here represents whole line and >> is used to append to $2 file and > is used to overwrite the content of $2 file
#for write use -w for execute use -x 
#to remove read permission use chmod o-r a.txt
if [ -r $1 ]
then
    echo File has /read permission 
else
    echo file has no /read permissions so no copying
fi
if [ -e $1 ]
then
    echo overwrite or no
    read char
fi
if [ "$char" = yes ]
then
    while read  p
    do
        echo $p > $2
    done < $1
fi