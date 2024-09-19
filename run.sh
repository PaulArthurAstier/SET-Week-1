#!/bin/bash

argument="$1"

string=$(echo -n "$argument" | wc -c)

echo "The number of characters in the string is $string"

string=$(echo -n "$argument" | wc -w)

echo "The number of words in the string is $string"