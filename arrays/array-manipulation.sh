#!/bin/bash
declare -a servers=("server1" "server2" "server3")

servers=( "${servers[@]:0:1} "server1.5" "${servers[@]:1})

echo "${servers[@]}"