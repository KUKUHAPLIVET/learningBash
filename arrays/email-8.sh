#!/bin/bash

declare -A email_addresses=( ["Mark"]="mark@email.com"
["Kriti"]="kriti@email.com"
["Feng"]="feng@email.com"
["Dmitry"]="dmitry@email.com" )

for key in "${!email_addresses[@]}"; do
  echo "${key}'s email is ${email_addresses[${key}]}"
done
