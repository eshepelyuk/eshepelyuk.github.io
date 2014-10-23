#/bin/bash
set -e
jekyll build
rm -rf ../eshepelyuk.github.io.master
git clone git://github.com/eshepelyuk/eshepelyuk.github.io.git ../eshepelyuk.github.io.master
cp -R _site/* ../eshepelyuk.github.io.master
cd ../eshepelyuk.github.io.master
ls -la .
git status
rm -rf Gemfile Gemfile.lock build.sh
ls -la .
git status
git add .
git ci -a -m 'jekyll'
git push

 