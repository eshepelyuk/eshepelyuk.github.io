#/bin/bash
set -e
jekyll build
git checkout -B master
cp -R _site/* .
git push
 