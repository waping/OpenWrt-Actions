#!/bin/bash

echo "Build Firmware"

git clone https://github.com/tuanqing/mknop.git mknop
cp -r -f dist/*.tar.gz mknop/openwrt/
cd mknop
sudo ./make -d
mv out/*/*.img ../dist/