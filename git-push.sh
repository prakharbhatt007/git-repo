git status
echo "Enter the name of file you want to add"
read files
if [ "$files" = "all" ];then
	echo "adding all files to git"
	git add .
fi
git add $files
echo "Enter the commit message"
read commit_msg
git commit -m $commit_msg

echo "Enter the branch name"
#read branch_name
#git push origin $branch_name
