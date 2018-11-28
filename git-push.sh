#!/bin/sh
git status
echo "adding all files to git"
git add .

echo "Enter the commit message"
read commit_msg
git commit -m $"commit_msg"

echo "Enter the branch name"
read branch_name
git push origin $branch_name
