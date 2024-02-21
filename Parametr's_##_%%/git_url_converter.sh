#!/bin/bash

git_url="https://github.com/jcroyoaun/kodekloud-lab-sample-nodejs/blob/master/app.js"
raw_url_step1="${git_url/github.com/raw.githubusercontent.com}"

prefix="${raw_url_step1%%blob*}"
suffix="${raw_url_step1#*blob/}"
raw_url="${prefix}${suffix}"
curl "${raw_url}"
# echo "Raw URL: ${raw_url}"
# echo "${prefix}"
# echo "${suffix}"
exit 0