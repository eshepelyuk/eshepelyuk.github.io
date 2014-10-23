#/bin/bash
set -e
jekyll build

# create folders and clone `master' branch
rm -rf ../eshepelyuk.github.io.master
git clone https://${GH_TOKEN}@github.com/eshepelyuk/eshepelyuk.github.io.git ../eshepelyuk.github.io.master
# copy generated HTML site
cp -R _site/* ../eshepelyuk.github.io.master

cd ../eshepelyuk.github.io.master
ls -la .

#rm -rf Gemfile Gemfile.lock build.sh

# commit and push
git config user.email "eshepelyuk@gmail.com"
git config user.name "Evgeny Shepelyuk"
git add -A .
git commit -a -m "Travis #$TRAVIS_BUILD_NUMBER"
git push origin master
