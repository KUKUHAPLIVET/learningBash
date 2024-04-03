#!/bin/bash
IFS=":"
elements="element1:element2:element3"

for element in ${elements}; do
    echo "${element} is a value"
done