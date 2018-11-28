#!/bin/sh
git status
echo "Command: 'all' for adding all files 'cm': for adding files one by one "
read cmd
if [ $cmd = "all" ];then
	echo "adding all files to git"
	git add .
elif [ $cmd ="cm" ];then
	while [ $cmd !="end"];do
		echo "give /"end/" to stop adding files"
		echo "Add file name"
		read file
		git add $file
		echo "Enter the commit message"
		read commit_msg
		git commit -m $"commit_msg"
		echo "give end or con"
		read cmd
	done
fi

echo "Enter the branch name"
read branch_name
git push origin $branch_name
