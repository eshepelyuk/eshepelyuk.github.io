#/bin/bash
set -e
jekyll build
git checkout master
cp -R _site/* .
git push
 