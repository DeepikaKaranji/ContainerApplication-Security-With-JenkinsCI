#!/usr/bin/bash
repo_name=$1
test -z $repo_name && echo "Repo name required." 1>&2 && exit 1
curl -u 'DeepikaKaranji:panamastars#2' https://api.github.com/user/repos -d "{\"name\":\"$repo_name\"}"
git add .
git commit -m "shell commit"
git push 'https://DeepikaKaranji:panamastars#2@myrepository.biz/Container-Security-With-JenkinsCI.git' --all 
