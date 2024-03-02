#!/usr/bin/env bash
var="b"

subshell1=$(var="c"; echo "${var}")

echo "${var}"
echo "${subshell1}"
