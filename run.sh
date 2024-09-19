#!/bin/bash

file_name="$1"


# Check if a file name is passed as an argument
if [ -z "$file_name" ]; then
    echo "File couldn't be found"
    exit 1
fi

url=$(cat "$file_name")

if [[ -n "$file_name" ]]; then
    url=$(cat "$file_name" )
fi

if [[-n ]]