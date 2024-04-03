#!/bin/bash
declare -a servers=("server1" "server2" "server3" "server1" "server2" "server3")

unset servers[1] servers[0]


echo "${servers[0]}"
echo "${servers[1]}"
echo "${servers[4]}"
echo "${servers[@]}" Lentght: "${#servers[@]}"