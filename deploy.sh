#!/bin/sh

# git clone frp-doc
SITE_ROOT=`pwd`
if [ -d "./frp-doc" ]; then
    cd ./frp-doc
    git pull
else
    git clone --recurse-submodules --depth 1 https://github.com/gofrp/frp-doc.git frp-doc
fi

cd $SITE_ROOT
# copy docs to site
rm -rf ./source
cp -rf ./frp-doc ./source
