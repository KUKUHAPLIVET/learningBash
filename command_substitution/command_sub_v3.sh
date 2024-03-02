#!/usr/bin/env bash

count_files() {
  local directory="$1"
  find "${directory}" -type f | wc -l
}


if [[ -z "${1}" ]]; then
  echo "Please specify a directory."
  exit 1 
fi

file_count=$(count_files "${1}")
echo "${file_count}"
# Не считает новый файл, так как считает файлы раньше. Нужна функция

#file_count='find . -type f | wc -l'
# with '' don't working
touch samplefile
file_count=$(count_files "${1}")
echo "${file_count}"

