
#!/bin/bash

baseUrl="https://github.com/"
username="jorgereina1986"
ext=".git"

echo "Name your project: "

read directoryName
directoryName=${directoryName}

echo "write a description for your repo: (press Enter to skip)  "
read description
description=${description}

#Creates a dir with the name of your project
mkdir $directoryName
#Navigates to the directory creted
cd $directoryName
#Variable that outputs current directory name
# currentDir=${PWD##*/}
#Creates an empty README.md
touch README.md
#Initial git setup
git init
git add .
git commit -m "intitial commit"

#Creating a post request to Github API to create repo
STATUS=$(curl -s -o /dev/null -w '%{http_code}' -u $username https://api.github.com/user/repos -d "{\"name\": \"$directoryName\", \"description\": \"\", \"private\": false, \"has_issues\": true, \"has_downloads\": true, \"has_wiki\": false}")

#If http response is 201 then repo creation was suceessfull
if [[ $STATUS -eq 201 ]]; then
	echo "Repository creation sucessfull"
	#TODO get github url and set commands
	git remote add origin $baseUrl$username/$directoryName$ext
	git push origin master


#If not 
else
	echo "Uh oh! Something went wrong"
	echo "Error: $STATUS"
fi
