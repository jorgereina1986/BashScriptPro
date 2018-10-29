STATUS=$(curl -s -o /dev/null -w '%{http_code}' -u jorgereina1986 https://api.github.com/user/repos)

if [[ $STATUS -eq 200 ]]; then
	#statements
	echo "is 200"
else
	echo "is $STATUS"
fi
echo $STATUS