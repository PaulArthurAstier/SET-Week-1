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

while IFS= read line || [[ -n $line ]]; do

    cat="What is your favorite "
    cat+=$(echo "$line" | cut -d' ' -f1)
    cat=$(echo "$cat" | tr -d ':')
    cat+="?"

    counter=0

    for word in $line; do
        if [ $counter -ne 0 ]; then
            
            cat+="\n"
            cat+="$counter"
            cat+=") "
            cat+="$word"


        fi
        ((counter++))
    done

    echo -e $cat

    read -p "" user_input < /dev/tty

    answers+="$user_input "

done < "$file_name"

counter=1

while IFS= read line || [[ -n $line ]]; do

    final+="Your favorite "
    final+=$(echo "$line" | cut -d' ' -f1)
    final=$(echo "$final" | tr -d ':')
    final+=" is "

    fav_choice=$(echo "$answers" | cut -d' ' -f$counter)
    ((fav_choice++))
    fav_word=$(echo "$line" | cut -d' ' -f$fav_choice)

    final+="$fav_word "

    ((counter++))

done < "$file_name"

echo -e "$final"