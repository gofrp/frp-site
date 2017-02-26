#!/bin/sh

# git clone frp-doc
SITE_ROOT=`pwd`
if [ -d "./frp-doc" ]; then
    cd ./frp-doc
    git pull
else
    git clone https://github.com/fatedier/frp-doc.git frp-doc
fi

cd $SITE_ROOT
# copy docs to site
cp -rf ./frp-doc/zh-cn/* ./source/

hexo generate
