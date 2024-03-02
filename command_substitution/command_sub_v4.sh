#!/bin/bash


if [[ -z "${1}" ]]; then
  echo "Please specify a directory."
  exit 1 
fi

dir=${1}

file_count=$(find ${dir} -type f | wc -l)
#echo "${file+count}"

sub_output=$(dir="/some/other/dir"; echo "Dir in subshell: ${dir}")

echo "Dir in parent shell: ${dir}."
echo "${sub_output}"
