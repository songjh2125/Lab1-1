#! /bin/sh

weight=$1
height=$2

bmi=$(echo "scale=2; $weight / ($height/100 * $height/100)" | bc)

if [ "$(echo "bmi < 18.5" | bc)" -eq 1 ]
then
    result="저체중입니다."
elif [ "$(echo "$bmi >= 18.5 && $bmi < 23" | bc)" -eq 1 ]
then
    result="정상체중입니다."
else
    result="과체중입니다."
fi

echo "BMI: $bmi $result"

exit 0
