#!/bin/bash

CURRENTDIR=${PWD##*/}
GITHUBUSER=$("jorgereina1986")

echo $CURRENTDIR

# Get user input
read "REPONAME?New repo name (enter for ${PWD##*/}):"
read "USER?Git Username (enter for ${GITHUBUSER}):"
read "DESCRIPTION?Repo Description:"



echo "Here we go..."

# Curl json to the github API
#curl -u ${USER:-${GITHUBUSER}} https://api.github.com/user/repos -d "{\"name\": \"${REPONAME:-${CURRENTDIR}}\", \"description\": \"${DESCRIPTION}\", \"private\": false, \"has_issues\": true, \"has_downloads\": true, \"has_wiki\": false}"

# Set the freshly created repo to the origin and push
# You'll need to have added your public key to your github account
git remote set-url origin git@github.com:${USER:-${GITHUBUSER}}/${REPONAME:-${CURRENTDIR}}.git
git push --set-upstream origin master

