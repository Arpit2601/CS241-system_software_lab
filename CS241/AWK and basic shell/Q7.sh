#! /bin/bash
#part 1
echo enter the file to be searched
read file
if [ -e "$1/$file" ]
then 
    echo file exists
else
    echo file does not exists
fi
#part2
len=$(find $1 | wc -l)
len=$(($len-1)) #-1 because find shows current directory also
echo $len
#part3
cd $1
rm *.c
#part 1 with recursive searches
echo enter the file to be searched
read file
list=$(find $1 -name $file)
#echo $list
num=${#list}
#echo $num
if (( num != 0 ))
then
        echo file exists
else
        echo file does not exist
fi
#part 4
find $1 -type f -size 0b -delete    #does recursively
