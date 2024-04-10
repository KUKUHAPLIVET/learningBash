#!/bin/bash

# Функция для сравнения IP-адресов
compare_ip_addresses() {
    file1_ips=($(cat "$1"))
    declare -A file2_data

    # Чтение данных из file2.txt и сохранение их в ассоциативный массив
    while IFS= read -r line; do
        ip=$(echo "$line" | awk '{print $1}')
        address=$(echo "$line" | awk '{print $2}')
        file2_data[$ip]=$address
    done < "$2"

    # Поиск совпадений и вывод результатов
    matching_pairs=()
    for ip1 in "${file1_ips[@]}"; do
        for ip2 in "${!file2_data[@]}"; do
            if [[ ${ip1%%.*} == ${ip2%%.*} && ${ip1#*.} == ${ip2#*.} ]]; then
                echo "Ip addr :$ip1. Адрес: ${file2_data[$ip2]}" 
            fi
        done
    done
    
    echo "${matching_pairs[@]}"
}

# Пример использования:
file1="file1.txt"
file2="file2.txt"

if [ ! -e "$file1" ] || [ ! -e "$file2" ]; then
    echo "Один или оба файла не существуют."
    exit 1
fi

# matching_pairs=$(compare_ip_addresses "$file1" "$file2")

# if [ -n "$matching_pairs" ]; then
#     echo "Совпадающие IP-адреса и их соответствующие обычные адреса:"
#     echo "$matching_pairs"
# else
#     echo "Совпадающих IP-адресов не найдено."
# fi
echo $(date) >> file3.txt
compare_ip_addresses "$file1" "$file2" | while read -r line; do
    echo "$line" >> file3.txt
done