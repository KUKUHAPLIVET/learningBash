#!/usr/bin/env bash

#Initialise counter variable
i=100

#loop 3 times
until [[ $i -eq 0 ]]; do 
# Do something on each iteraion 
    echo "Iteration $i"
    echo "Iteration $i"
    #Decrement counter Varible
    i=$((i-1))
done