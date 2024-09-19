#!/bin/bash

number=$1

if ((number % 2 == 0)); then
    echo "$number is even"
else 
    echo "$number is odd"
fi 

if ((number < 0)); then
    echo "$number is negative"
else 
    echo "$number is positive"
fi 