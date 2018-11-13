#! /bin/bash
file=$1
read command
if [ $command="Encode" ]
then
    echo The Encoded file is
    cat $1 | tr abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789 zyxwvutsrqponmlkjihgfedcbaZYXWVUTSRQPONMLKJIHGFEDCBA9876543210
elif [ $command="Decode" ]
then
    echo The Decoded file is
    echo $1 | tr abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789 zyxwvutsrqponmlkjihgfedcbaZYXWVUTSRQPONMLKJIHGFEDCBA9876543210
else 
    echo Wrong command
fi