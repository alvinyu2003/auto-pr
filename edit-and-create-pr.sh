#!/bin/bash

git stash
git checkout master
python edit.py
branch_name=alvin/update/$(date -u +"%Y-%m-%dT%H_%M_%SZ")
git checkout -b $branch_name
git status -sb
git add README.md
git status
git diff README.md
git commit -m "README: updated"
git push -u origin $branch_name
hub pull-request -c -F prepared-message.md
