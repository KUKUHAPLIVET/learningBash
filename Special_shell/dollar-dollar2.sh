#!/bin/bash

subsh_pid=$(echo $$)

echo "The process ID of the first subshell is ${subsh_pid}"
(echo "The process ID of the second subshell is $$")
echo "The process ID of the parent Shell is $$"

