#!/bin/bash

shopt -s globstar

# Minify
for i in **/*.json; do
	jq -c . ${i} | sponge ${i}
done

zip dist/Blanktopia.zip -r assets pack.mcmeta pack.png
mv dist/Blanktopia.zip dist/Blanktopia-$(shasum dist/Blanktopia.zip | cut -d' ' -f1).zip
rsync -iavzhP dist/ weiwen@ssh.piggyp.ink:/opt/nomad/volumes/files/ --rsync-path="sudo rsync"

# Un-minify
for i in **/*.json; do
	jq . ${i} | sponge ${i}
done
