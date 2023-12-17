#!/bin/bash
#
# Pull from git repos automagically. Activated via crontab.
#

git_repos="/home/andre/Documents"
DATE=$(date +%Y-%m-%d)

cd $git_repos
echo -e "Today's date is $DATE"

for repo in $(ls $git_repos)
do
	cd $repo
	if [[ $(ls -alF | grep '.git') ]]
	then
		if [[ !$(git status -s) ]]
		then
			echo -e "Pulling changes from repo $repo."
			git pull
		else
			echo -e "Need to commit changes before auto-pulling. Aborting pull of repo $repo"
			exit 1
		fi
		cd ..
	
	fi

done


echo -e "\n\n"
exit 0
