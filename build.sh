#/bin/bash
set -e
jekyll build
git checkout -B master
cp -R _site/* .
ls -la _site
#git push origin master
 