#!/usr/bin/env bash
current_directory=$1
action=$2
# fetching the directory where plugins are installed
cd "$current_directory"
repository="$(git remote get-url origin)"
httpRepository=""
if [[ "$repository" == *"git@"* ]]; then
    httpRepository=$(echo $repository | sed -e 's/:/\//g' -e 's/git@/https:\/\//g')
fi
projectName="$(echo $repository | xargs -I{} basename -s .git {})"

if [ "$action" == "rename-window" ]; then
    tmux rename-window "$projectName"
fi

if [ "$action" == "open-repository-browser" ]; then
    xdg-open $httpRepository
fi

if [ "$action" == "git-status" ]; then
    git status
fi
