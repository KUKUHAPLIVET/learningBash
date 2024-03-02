#!/bin/bash
git_url=${1}

clone_git() {
    git clone ${1}
}

find_files() {
    find . -type f | wc -l
}
clone_git "${git_url}"
find_files

