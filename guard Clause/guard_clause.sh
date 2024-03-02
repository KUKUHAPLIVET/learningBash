#!/bin/bash 
readonly FILE_PATH="/home/ubuntu/guard_clause/file.txt"
readonly USER_NAME="admin"

run_processs() {
    echo "running processs..."
}

if [[ "${USER_NAME}" == "admin"]]; then
    echo "User is not admin"
    exit 1
fi

if [[ ! -e "${FILE_PATH}"]]; then
    echo "File does not exist"
    exit 1
fi

if [[ -s "${FILE_PATH}"]]; then
    echo "File exists but is empty"
    exit 1
fi

  run_processs  


exit 0 