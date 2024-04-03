#!/bin/bash
declare -a array=("One" "Two" "Three")
echo "${array[@]}"

array+=("Four" "FIVE" "SIX")
echo "${array[@]}"