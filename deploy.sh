#!/bin/bash
# Script for automating deployment from development repository

# bash deploy.sh


# New deployment process
# Ref https://gist.github.com/tduarte/eac064b4778711b116bb827f8c9bef7b

# Update _site folder and hold
bundle exec jekyll build
# echo "ericidietrich.com" >> ./_site/CNAME
git add _site
git commit -m "Refresh site"

# Push to "prod" remote
git subtree split --prefix _site -b gh-pages
git push prod gh-pages:master
git branch -D gh-pages

# To do force overwrite of
# git push -f prod gh-pages:master

# To set up "prod" remote
# git remote add prod https://github.com/eidietrich/eidietrich.github.io.git