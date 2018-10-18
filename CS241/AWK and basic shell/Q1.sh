#! /bin/bash
: '
    Arpit Gupta
    170101012 
    3rd
    Q1.sh
'
echo This the first shell program. Please enter the username
read username
echo \"Username::$username\"    #to print "" use \ in font of them
#end of the program
echo $BASH
echo $BASH_VERSION
name=Arpit_Gupta
echo $name

#to read input in same line as username text
read -p 'Username: ' username1
echo "Username::"$username1