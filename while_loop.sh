#!/bin/bash

#Initialize counter variable
i=10

#Loop 3 times
while [[ $i -le 20 ]]; do

    echo "Iteration $i"
    i=$((i+1))
done

for i in {1..3}; do
    echo "Iteration $i"
done
