#!/bin/bash

readonly WORK_DIR=$(dirname $(radlink -f "$0"))
readonly SCRIPT_NAME="${$0##/*}"

cd "${WORK_DIR}/.."

#Some more commands