#/bin/bash
set -e
jekyll build
ls -la _site
git checkout -B master
cp -R _site/* .
ls -la .
#git push origin master
 