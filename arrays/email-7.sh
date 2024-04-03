#!/bin/bash

declare -A email_addresses=( ["Mark"]="mark@email.com"
["Kriti"]="kriti@email.com"
["Feng"]="feng@email.com"
["Dmitry"]="dmitry@email.com" )

echo "${!email_addresses[@]}"

echo "${email_addresses[@]}"