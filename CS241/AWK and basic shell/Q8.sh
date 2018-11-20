#! /bin/bash
cp $1 newfile
# directory=$(echo $(basename $1))
# file=$1
# len1=${#directory}
# len2=${#file}
# final_directory=${file:0:$len2-$len1}
# echo $final_directory
# # directory=$(echo $1 | grep "*/[a-z]+")d
# cd $final_directory
# cp $1 newfile