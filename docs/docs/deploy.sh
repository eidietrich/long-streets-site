#!/bin/bash
# Script for automating deployment to gh-pages via /docs repo

# bash deploy.sh

jekyll build
rm -rf docs
cp -r _site/ docs/
cp CNAME docs/CNAME
git add -A
git commit -m "Refresh site"
git push origin master