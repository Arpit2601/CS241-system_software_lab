#! /bin/bash
echo enter the two numbers
read num1 num2
echo enter the operation
read oper
case $oper in
    "addition" )
        echo $(($num1+$num2)) ;;
    "subtraction" )
        echo $(($num1 - $num2)) ;;
    "multiplication" )
        echo $(($num1 * $num2)) ;;
    "division" )
        echo $(($num1 / $num2)) ;;
    * )
        echo unknown expression ;;
esac