#/bin/bash
set -e
jekyll build
git checkout -B master
ls -la _site
echo "-------------"
ls -la .
#cp -R _site/* .
#git push origin master
 