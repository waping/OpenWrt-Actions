#!/bin/bash

# 写入emmc
git clone https://github.com/tuanqing/install-program package/install-program
# 主题
svn co https://github.com/rosywrt/luci-theme-rosy/trunk/luci-theme-rosy package/luci-theme-rosy

# 低调上网
sed -i 's/#src-git helloworld/src-git helloworld/g' feeds.conf.default

svn co https://github.com/xiaorouji/openwrt-package/trunk/lienol/luci-app-passwall package/lean/luci-app-passwall
svn co https://github.com/xiaorouji/openwrt-package/trunk/package package/lean/package