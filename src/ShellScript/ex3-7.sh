#! /bin/sh

folder_name=$1

mkdir "$folder_name"
cd "$folder_name"
for i in 1 2 3 4 5
do
    file_name=file$in
    touch "$file_name.txt"
    mkdir "$file_name.txt" "$file_name/"
done

exit 0