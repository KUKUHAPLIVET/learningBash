#!/bin/bash
print_section_header() {
    local section_name="$1"
    echo "================================"
    echo "=    Section ${section_name}   ="
    echo "================================"
}

print_section_header "1: Using \$* Variable"
echo "--> Output of \$*: $*"
echo "         Output of \$* inm a for loop:"
for arg in $*; do
    echo "${arg}"
done
echo ' With /""'
for arg in "$*"; do
    echo "${arg}"
done

print_section_header "1: Using \$@ Variable"
echo "--> Output of \$@: $@"
echo "         Output of \$@ inm a for loop:"

for arg in $@; do
    echo "${arg}"
done
echo ' With /""'
sl
for arg in "$@"; do
    echo "${arg}"
done