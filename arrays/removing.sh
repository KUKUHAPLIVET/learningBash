#!/bin/bash
declare -a servers=("server1" "server2" "server3")

unset servers[1]
echo "${servers[@]}"