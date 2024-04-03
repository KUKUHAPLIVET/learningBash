#!/bin/bash

declare -A chest_drawer=( 
["shirts"]="T-Shirts and polo shirts" 
["sports"]="All sorts of Sports Clothiing here" 
["socks"]="Formal and everyday socks" 
["jeans"]="Jeans, and some casual dress shorts" )

echo "${chest_drawer[@]}"