#!/bin/bash

generate_ip_addresses() {
    network="192.168.1"
    for i in {1..254}; do
        echo "$network.$i" >> file1.txt
    done
}

echo "Все IP-адреса в сети 192.168.1.0/24:"
generate_ip_addresses