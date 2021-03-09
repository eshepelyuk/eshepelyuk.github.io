#!/bin/bash
rm -rf _site
# bundle exec jekyll serve --config _config.yml,_config_dev.yml -D -I

bundle exec jekyll build --config _config.yml,_config_dev.yml
asciidoctor-pdf EvgenyShepelyukCV.adoc -D _site/

start _site/index.html
