#! /bin/sh

folder_name=$1

mkdir "$folder_name"
cd "$folder_name"
for i in 1 2 3 4 5
do
    touch file$i.txt
done
tar -cf "$folder_name.tar" *.txt
ls
mkdir "$folder_name"
mv "$folder_name.tar" "$folder_name/"
cd "$folder_name"
tar -xvf "$folder_name.tar"

exit 0