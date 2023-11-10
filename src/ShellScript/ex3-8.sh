#! /bin/sh

name=$1
phone=$2
DB="DB.txt"

if [ ! -f "$DB" ]
then
    touch "$DB"
fi

echo "$name $phone" >> "$DB"

exit 0