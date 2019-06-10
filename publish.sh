#!/bin/bash

ssh-add
hugo
git clone https://github.com/soloC/soloc.github.io ../my-blog-master
rm ../my-blog-master/* -fr
cp -r public/* ../my-blog-master/
cd ../my-blog-master/
git add .
git commit -m "update master"
git push origin master
