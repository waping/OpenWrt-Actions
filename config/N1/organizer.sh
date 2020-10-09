#!/bin/bash

echo "Build Firmware"

git clone https://github.com/ylqjgm/mknop.git mknop
cp -r -f dist/openwrt-armvirt-64-default-rootfs.tar.gz mknop/openwrt/
cd mknop
sudo ./gen_openwrt -d -k 5.4.69 -m phicomm-n1
mv out/*/*.img ../dist/