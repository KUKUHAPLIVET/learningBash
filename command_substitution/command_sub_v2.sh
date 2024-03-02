#!/usr/bin/env bash

if [[ -z "${1}" ]]; then
  echo "Please specify a directory."
  exit 1 
fi


file_count=$(find ${1} -type f | wc -l)


#file_count='find . -type f | wc -l'
# with '' don't working

echo "${file_count}"

