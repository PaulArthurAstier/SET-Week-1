#!/bin/bash

file_name="$1"


# Check if a file name is passed as an argument
if [ -e "$file_name" ]; then
    echo "File found"
else
    echo "File not found"
    exit 1
fi

url=$(cat "$file_name")

if [[ -n "$file_name" ]]; then
    url=$(cat "$file_name" )
fi

wget -qO- "$url"

