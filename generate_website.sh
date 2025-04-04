#!/bin/bash

if [ -d ../lucene-university ]; then
  cp -r ../lucene-university tmp
else
  git clone https://github.com/msfroh/lucene-university.git tmp
fi
cd tmp
mkdir docs
for f in $(find . -name '*.java'); do 
  mv $f .
done
docco -l parallel *.java
cd ..
cp -r tmp/docs lucene-university
rm -rf tmp
