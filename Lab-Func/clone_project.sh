#!/bin/bash
# add command line arguments
project=${1}  
branch=${2}
project_dir="$(basename ${project} .git)"

clone_project(){
  if [ ! -d "home/bob/git/${project_dir}" ]; then
    cd /home/bob/git
    git clone ${project}
  fi
}

git_checkout() {
    cd "${project_dir}"
    git checkout "${branch}"
}


#Then change the find command inside the find_files function to use “.” as the search path.
# This is needed because at the moment the find command gets called by the shell script,
# we’re already inside ${project_dir} directory.
find_files(){
  find . -type f | wc -l
}

clone_project
find_files
git_checkout
