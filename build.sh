#/bin/bash
set -e
jekyll build
rm -rf ../eshepelyuk.github.io.master
git clone --depth=50 --branch=master git://github.com/eshepelyuk/eshepelyuk.github.io.git eshepelyuk/eshepelyuk.github.io ../eshepelyuk.github.io.master
cp -R _site/* ../eshepelyuk.github.io.master

cd ../eshepelyuk.github.io.master
ls -la .
git status
#git push origin master
 