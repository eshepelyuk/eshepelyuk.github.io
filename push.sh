#!/bin/sh
git add -A . && git commit -a -m jekyll
git push origin jekyll && git status