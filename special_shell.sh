#!/usr/bin/env bash
set -e

readonly INVALID_CL_ARG_NUM="155"

terminate() {
    local -r msg="${1}"
    local -r code="${2:-150}"
    echo "${msg}" >&2
    exit "${code}"
}

usage() {

cat <<USAGE
Usage: special-shell.sh [arg]
   This script reads the contents from a file using a filereader binary
   Arguments: 
       filename: An existing non-empty file

USAGE
}

if [[ $# -ne 1 || ! -s "${1}" ]]; then
    usage
    terminate "Pass a single command line argument as a file that exists and is non-empty" "${INVALID_CL_ARG_NUM}"
fi

/usr/local/bin/filereader "${1}"

exit 0