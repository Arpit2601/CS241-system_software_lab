#! /bin/bash
DIFF=$((20-1+1))
R=$(($(($RANDOM%$DIFF))+1))
echo Random generated number is $R
i=0
while (( i<3 ))
do 
    read -p "User enters a number:" num
    if (( num<R ))
    then
        echo Entered number is SMALLER
    elif (( $num>$R ))
    then
        echo Entered number is LARGER
    else
        echo Entered number is EQUAL
    fi
    i=$(($i+1))
done

# i=$(($i+1)) works
# i=$((i+1)) works
# $i=$(($i+1)) does not work
#(( num<R )) works 
#(( $num<$R )) also works
