#!/usr/bin/env bash



file_count=$(find . -type f | wc -l)


#file_count='find . -type f | wc -l'
# with '' don't working

echo "${file_count}"

