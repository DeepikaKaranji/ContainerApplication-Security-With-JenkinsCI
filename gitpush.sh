repo_name=$1
test -z $repo_name && echo "Repo name required." 1>&2 && exit 1
curl -u 'DeepikaKaranji:panamastars#2' https://api.github.com/user/repos -d "{\"name\":\"$repo_name\"}"
git init
git add .
git commit -m "shell commit"
git remote add origin "https://github.com/DeepikaKaranji/Container-Security-With-JenkinsCI.git"
git push -u origin master
