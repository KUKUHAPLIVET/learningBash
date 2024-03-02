#!/bin/bash

#Check if a file exists
# -e for file or dir   -d for dir -s = true, if the files are not empty    -f for file   THIS IS THE LOGIC MAN 
if [[ -e myfile.txt]]; then
    echo "File exists"
else
    echo "File does not exist"
fi