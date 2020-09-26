#!/bin/bash

echo "Build Firmware"

VER=`curl --silent "https://api.github.com/repos/ylqjgm/emmc/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/'`
git clone https://github.com/ylqjgm/emmc.git emmc
cp -r -f dist/openwrt-armvirt-64-default-rootfs.tar.gz emmc/
mkdir -p emmc/imgs
wget -c "https://github.com/ylqjgm/emmc/releases/download/${VER}/Armbian.img.xz" -O emmc/imgs/Armbian.img.xz
cd emmc/imgs
xz -d Armbian.img.xz
cd ../
sudo ./mk_n1_opimg.sh
mv tmp/*.img ../dist/