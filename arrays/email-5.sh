#!/bin/bash

declare -A email_addresses=( ["Mark"]="mark@email.com"
["Kriti"]="kriti@email.com"
["Feng"]="feng@email.com"
["Dmitry"]="dmitry@email.com" )

echo "${email_addresses[@]}"
unset email_addresses["Kriti"]
echo "${email_addresses[@]}"
unset email_addresses
echo 1
echo "${email_addresses[@]}"