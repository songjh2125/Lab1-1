#! /bin/sh

num1=$1
operator=$2
num2=$3

case "$operator" in
    "+")
        result=$(($num1+$num2));;
    "-")
        result=$(($num1-$num2));;
    *)
        echo "지원하지 않는 연산자입니다."
        exit 1;;
esac

exit 0