#!/bin/bash 
readonly FILE_PATH="/home/ubuntu/guard_clause/file.txt"
readonly USER_NAME="admin"

run_processs() {
    echo "running processs..."
}

if [[ "${USER_NAME}" == "admin"]]; then
    if [[ -e "${FILE_PATH}"]]; then
        if [[ -s "${FILE_PATH}"]]; then
            run_processs
        else
            echo "File exists but is empty"
        fi
    else
        echo "File does not exist"
    fi
else
    echo "User is not admin"
fi

exit 0 