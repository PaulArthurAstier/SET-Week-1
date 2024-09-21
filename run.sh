#!/bin/bash

file_name="$1"

if [ -z "$file_name" ]; then
    echo "No input recognised, please input a file name"
    read file_name
    if [ -e "$file_name" ]; then
        echo "File found"
    else
        echo "File not found"
        exit 1
    fi
else
    echo "Input recognised"
    if [ -e "$file_name" ]; then
        echo "File found"
    else
        echo "File not found"
        exit 1
    fi
fi

read first_line < $file_name
first_line=$(echo "$first_line" | tr -d ',')

cat+="Categories: "
cat_count=0

for word in $first_line; do
    if [ $cat_count -ne 0 ]; then
        cat+="$word "
    fi
    ((cat_count++))
done

cat_count=$((cat_count - 1))

output=$cat
output+="\n\n"

for 


echo -e "$output"
echo -e "\n $cat_count"


