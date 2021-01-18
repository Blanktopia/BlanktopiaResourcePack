#!/bin/bash

shopt -s globstar
for i in **/*.json; do
	jq -c . ${i} | sponge ${i}
done

zip dist/Blanktopia.zip -r assets pack.mcmeta pack.png
mv dist/Blanktopia.zip dist/Blanktopia-$(shasum dist/Blanktopia.zip | cut -d' ' -f1).zip
rsync -iavzhP dist/ root@play.blanktopia.com:~/ubuntu/docker/caddy/files
