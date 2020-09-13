#!/bin/sh

zip dist/Blanktopia.zip -r assets pack.mcmeta pack.png
mv dist/Blanktopia.zip dist/Blanktopia-$(shasum dist/Blanktopia.zip | cut -d' ' -f1).zip
rsync -iavzhP dist/ ubuntu@play.blanktopia.com:~/docker/caddy/files
