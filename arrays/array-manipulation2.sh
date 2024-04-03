#!/bin/bash
declare -a servers=("server1" "server2" "server3")
i=4
while [[ $i -le 20 ]]; do

    servers[${#servers[@]}]="server$i"
    i=$((i+1))
done
servers=( "${servers[@]:10:3}" )

echo "${servers[@]}"