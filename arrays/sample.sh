#!/bin/bash
declare -a servers=("server1" "server2" "server3")

servers[${#servers[@]}]="server4"

echo "${servers[@]}"