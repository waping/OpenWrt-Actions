#!/bin/bash

# 下载主题
svn co https://github.com/rosywrt/luci-theme-rosy/trunk/luci-theme-rosy package/luci-theme-rosy

# passwall
svn co https://github.com/xiaorouji/openwrt-package/trunk/lienol/luci-app-passwall package/lean/luci-app-passwall
svn co https://github.com/xiaorouji/openwrt-package/trunk/package package/lean/package
