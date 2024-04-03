#!/bin/bash
echo "Number of arguments: $#"
echo "ALL arguments: $*"

for arg in "$*"; do
    echo "Arguments: $arg"
done