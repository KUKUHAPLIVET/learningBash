#!/bin/bash

declare -a nums=(4 2 0 6 8 1)
echo "Unsorted array: ${nums[@]}"

printf "%s\n" "Sorted array:" $(printf "%s\n" "${nums[@]}" | sort)