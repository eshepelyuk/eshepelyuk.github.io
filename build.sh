#/bin/bash
set -e
echo "-------------"
ls -la .
jekyll build
git checkout -B master
git reset --hard
git status
echo "-------------"
ls -la _site
echo "-------------"
ls -la .
#cp -R _site/* .
#git push origin master
 