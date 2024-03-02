#!/usr/bin/env bash

#Get the process ID of the parent SHELL
parent_pid=$$

(
subshell_pid=$BASHPID
echo "Inside subshell: subshell_pid=${subshell_pid}"
)

echo "Outside subshell: parent_pid=${parent_pid}"