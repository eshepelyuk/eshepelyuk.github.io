#/bin/bash
git checkout jekyll
jekyll build
git checkout master
cp -R _site/* .
git push
 

