#!/usr/bin/bash
repo_name=$1
test -z $repo_name && echo "Repo name required." 1>&2 && exit 1
git add .
git commit -m "shell commit test"
git push
