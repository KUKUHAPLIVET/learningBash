#!/bin/bash

course_sections[0]="Introduction"
course_sections[1]="Coding Standards"

for section in ${course_sections[@]}; do
    echo "${section}"
done


for section in "${course_sections[@]}"; do
    echo "${section}"
done