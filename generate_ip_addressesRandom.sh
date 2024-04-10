#!/bin/bash

# Функция для генерации случайного IP-адреса в сети 192.168.1.0/24
generate_random_ip() {
    network="192.168.1"
    random_octet=$((RANDOM % 254 + 1))
    echo "$network.$random_octet"
}

# Функция для генерации случайной строки из 5 букв
generate_random_letters() {
    letters=({a..z})
    random_string=""
    for ((i=0; i<5; i++)); do
        random_index=$((RANDOM % 26))
        random_string+="${letters[random_index]}"
    done
    echo "$random_string"
}

# Пример использования:
for ((i=1; i<=10; i++)); do
    ip=$(generate_random_ip)
    random_letters=$(generate_random_letters)
    echo "$ip $random_letters" >> file2.txt
done