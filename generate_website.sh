#!/bin/bash

git clone https://github.com/msfroh/lucene-university.git tmp
cd tmp
for f in $(find . -name '*.java'); do 
  mv $f .
done
docco *.java
cd ..
cp -r tmp/docs lucene-university
rm -rf tmp
