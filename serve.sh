#!/bin/bash
rm -rf _site

bundle exec jekyll build --config _config.yml,_config_dev.yml
asciidoctor-pdf *CV.adoc -D _site/

start _site/index.html
