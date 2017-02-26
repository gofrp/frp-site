#!/bin/sh

# git clone frp-doc
SITE_ROOT=`pwd`
cd ../
if [ -d "./frp-doc" ]; then
    cd ./frp-doc
    git pull
else
    git pull https://github.com/fatedier/frp-doc.git
    cd ./frp-doc
fi

cd $SITE_ROOT
# copy docs to site
cp -rf ../frp-doc/zh-cn/* ./source/

hexo clean
hexo generate
