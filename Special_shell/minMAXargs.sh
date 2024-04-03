#!/bin/bash
readonly MIN_ARGS=1
readonly MAX_ARGS=2



if [[ $# -lt "${MIN_ARGS}" || $# -gt "${MAX_ARGS}" ]]; then    #КОД НУЖЕН ДЛЯ ТОГО ЧТОБЫ ПОНЯТЬ СКОЛЬКО ПЕРЕМЕННЫХ у меня  $#
    echo "Expected between ${MIN_ARGS} and ${MAX_ARGS}"
    exit 1
fi

echo "Command Line arguments within expected range."
 exit 0 
