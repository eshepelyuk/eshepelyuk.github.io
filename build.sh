#/bin/bash
set -e
jekyll build
rm -rf ../eshepelyuk.github.io.master
git clone https://${GH_TOKEN}@github.com/eshepelyuk/eshepelyuk.github.io.git ../eshepelyuk.github.io.master
cp -R _site/* ../eshepelyuk.github.io.master
cd ../eshepelyuk.github.io.master
ls -la .
git status
rm -rf Gemfile Gemfile.lock build.sh
ls -la .

git config user.email "eshepelyuk@gmail.com"
git config user.name "Evgeny Shepelyuk"

git add .
git status
git commit -a -m "Travis #$TRAVIS_BUILD_NUMBER"
git push origin master
